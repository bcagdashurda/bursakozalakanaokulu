# Özel Bursa Kozalak Anaokulu — Web Sitesi

Bursa Yıldırım'da 2–6 yaş özel anaokulu ve kreş için tek sayfalık statik web sitesi.

**Canlı:** https://bursaozelkozalakanaokulu.com
**Tasarım & yapım:** [Rodi Medya](https://www.rodimedya.com)

---

## Teknik

Bağımlılık yok, derleme adımı yok. Tek bir `index.html` içinde HTML + CSS + JS.
Dışarıdan yalnızca Google Fonts (Space Grotesk) ve GSAP (CDN) çekiliyor.

| | |
|---|---|
| Tasarım | "Atölye" — 3px kontur, sert kaydırılmış gölge, bantlı polaroid kolaj |
| Palet | Kozalak Ormanı — çam yeşili `#1F3D2B`, terrakota `#D2694A` |
| Tipografi | Space Grotesk (500 / 600 / 700) |
| Kırılımlar | ≤640 mobil · 641–1040 tablet · >1040 masaüstü |
| Erişilebilirlik | WCAG 2.2 AA — kontrast ve dokunma hedefleri doğrulandı |

## Dosya yapısı

```
index.html              tüm site
ortak/logo.png          okul logosu
ortak/ikon/             favicon seti + og görseli
ortak/gorseller/        fotoğraflar (20 dosya, ~4,4 MB)
robots.txt · sitemap.xml · vercel.json
```

`.vercelignore` çalışma dokümanlarını (`*.md`) deploy dışında bırakır —
repoda dururlar ama site üzerinden erişilemezler.

## Yerelde çalıştırma

```bash
python -m http.server 8899
# http://127.0.0.1:8899
```

> Mutlak yollar (`/ortak/...`) kullanıldığı için `index.html` dosyasını
> doğrudan çift tıklayarak açmak görselleri kırar; HTTP sunucusu gerekir.

## Deploy

Vercel'e bağlı; `main` dalına yapılan her push otomatik yayınlanır.
`vercel.json` güvenlik başlıklarını ve `ortak/` altındaki varlıklar için
uzun süreli önbelleklemeyi ayarlar.

## Bakım notları

- **Ön kayıt formu** sunucusuz çalışır; bilgileri biçimlendirilmiş bir
  WhatsApp mesajına çevirip `0553 471 56 78` hattına yönlendirir.
- **Galeri** 12 kareden 6'sını gösterir, "Tümünü gör" kalanları açar.
  Işık kutusu klavyeyle kullanılabilir (← → gezinme, Esc kapatma) ve
  hiçbir görseli doğal çözünürlüğünün üstüne büyütmez.
- **Google puanı** (`4,8 · 42 yorum`) elle yazılmıştır. Üç ayda bir
  Google İşletme Profili'nden kontrol edilmelidir.
