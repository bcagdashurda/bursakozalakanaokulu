<#
  Bursa Kozalak — demo paketini yayina hazir statik siteye cevirir.

  Kullanim:
    powershell -NoProfile -ExecutionPolicy Bypass -File .\yayina-al.ps1 -Tasarim 3 -Domain bursakozalak.com

  Yaptiklari:
    1. Dokunulmamis 6 tasarimi ~/.claude/vendor/kozalak-demo-orijinal/ altina yedekler
    2. Secilen tasarimi index.html yapar, digerlerini siler
    3. Demo sunum cubugunu (script etiketi + js dosyasi) kaldirir
    4. /kozalak-demo/... mutlak yollarini /... yapar
    5. rodimedya.com canonical / og:url / og:image degerlerini yeni domaine cevirir
    6. robots.txt + sitemap.xml + vercel.json yazar

  Idempotent degildir - bir kez calistirilir. Geri almak icin yedekten kopyalayin.
#>
[CmdletBinding()]
param(
  [Parameter(Mandatory)][ValidateRange(1,6)][int]$Tasarim,
  [Parameter(Mandatory)][ValidatePattern('^[a-z0-9.-]+\.[a-z]{2,}$')][string]$Domain,
  [switch]$WwwYok
)
$ErrorActionPreference = 'Stop'
$root = $PSScriptRoot
$host_ = if ($WwwYok) { $Domain } else { "www.$Domain" }
$base  = "https://$host_"

# --- 1. Yedek -------------------------------------------------------------
$backup = "$env:USERPROFILE\.claude\vendor\kozalak-demo-orijinal"
if (-not (Test-Path $backup)) {
  New-Item -ItemType Directory -Force $backup | Out-Null
  Copy-Item "$root\*" -Destination $backup -Recurse -Force -Exclude 'yayina-al.ps1'
  "Yedek alindi -> $backup"
} else {
  "Yedek zaten var, atlandi -> $backup"
}

# --- 2. Tasarim secimi ----------------------------------------------------
$secilen = if ($Tasarim -eq 1) { 'index.html' } else { "tasarim-$Tasarim.html" }
if (-not (Test-Path "$root\$secilen")) { throw "Tasarim dosyasi bulunamadi: $secilen" }

if ($Tasarim -ne 1) {
  Remove-Item "$root\index.html" -Force
  Rename-Item "$root\$secilen" 'index.html'
}
Get-ChildItem $root -Filter 'tasarim-*.html' | Remove-Item -Force
"Secilen tasarim: $secilen -> index.html"

# --- 3-5. index.html temizligi -------------------------------------------
$f = "$root\index.html"
$c = Get-Content $f -Raw -Encoding UTF8

# demo sunum cubugu
$c = $c -replace '(?m)^\s*<script src="[^"]*sunum-cubugu\.js"></script>\r?\n', ''
Remove-Item "$root\ortak\sunum-cubugu.js" -Force -ErrorAction SilentlyContinue

# rodimedya mutlak URL'leri (once, cunku /kozalak-demo/ icerirler)
$c = $c -replace 'https://www\.rodimedya\.com/kozalak-demo/', "$base/"

# kalan site-koku mutlak yollari
$c = $c -replace '/kozalak-demo/', '/'

Set-Content $f -Value $c -Encoding utf8 -NoNewline
"index.html temizlendi"

# --- 6. Deploy dosyalari --------------------------------------------------
Set-Content "$root\robots.txt" -Encoding utf8 -Value @"
User-agent: *
Allow: /

Sitemap: $base/sitemap.xml
"@

$bugun = Get-Date -Format 'yyyy-MM-dd'
Set-Content "$root\sitemap.xml" -Encoding utf8 -Value @"
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <url>
    <loc>$base/</loc>
    <lastmod>$bugun</lastmod>
    <changefreq>weekly</changefreq>
    <priority>1.0</priority>
  </url>
</urlset>
"@

Set-Content "$root\vercel.json" -Encoding utf8 -Value @"
{
  "version": 2,
  "cleanUrls": true,
  "headers": [
    {
      "source": "/ortak/(.*)",
      "headers": [
        { "key": "Cache-Control", "value": "public, max-age=31536000, immutable" }
      ]
    },
    {
      "source": "/(.*)",
      "headers": [
        { "key": "X-Content-Type-Options", "value": "nosniff" },
        { "key": "X-Frame-Options", "value": "DENY" },
        { "key": "Referrer-Policy", "value": "strict-origin-when-cross-origin" }
      ]
    }
  ]
}
"@
"robots.txt + sitemap.xml + vercel.json yazildi ($base)"

# --- Dogrulama ------------------------------------------------------------
''
'--- DOGRULAMA ---'
$c = Get-Content $f -Raw -Encoding UTF8
"kalan '/kozalak-demo/' : $(([regex]::Matches($c,'/kozalak-demo/')).Count)  (0 olmali)"
"kalan 'rodimedya'      : $(([regex]::Matches($c,'rodimedya')).Count)  (0 olmali)"
"kalan 'sunum-cubugu'   : $(([regex]::Matches($c,'sunum-cubugu')).Count)  (0 olmali)"

$eksik = @()
foreach ($m in [regex]::Matches($c, '(?:src|href)="(/[^"]*)"')) {
  $p = $m.Groups[1].Value -replace '\?.*$',''
  if (-not (Test-Path (Join-Path $root $p.TrimStart('/')))) { $eksik += $p }
}
if ($eksik.Count) { "KIRIK YOL ($($eksik.Count)):`n" + (($eksik | Select-Object -Unique) -join "`n") }
else { 'Tum yerel asset yollari cozuluyor' }
