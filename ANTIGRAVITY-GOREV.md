# GÖRSEL ÜRETİM YÖNERGESİ v3 — Özel Bursa Kozalak Anaokulu

**Teslim:** 3 adet JPG · **Klasör:** `ortak/gorseller/` · **Kapsam:** yalnızca görsel üretimi

> **Neden v3:** v1 teknik olarak kusursuzdu ama fazla sakin/İskandinav çıktı.
> v2'de yön düzeltildi. v3, okulun **kendi fotoğraflarından ölçülerek çıkarılmış**
> renk sistemi ve katmanlı prompt yapısıyla bunu tekrarlanabilir hale getiriyor.

---

## 1. MARKA RENK SİSTEMİ

Aşağıdaki değerler tahmin değil — okulun logosundan ve gerçek fotoğraflarından
piksel örneklemesiyle çıkarıldı. **Promptlarda bu kodları kullan.**

### 1.1 Logo ailesi (kozalak markası)
| Rol | HEX | Nerede |
|---|---|---|
| Logo kırmızı | `#F00606` | Kozalak logosunun ana rengi |
| Logo turuncu | `#D24F02` | Logo gövde tonu |
| Logo amber | `#F7920F` | Logo üst ışık tonu |

### 1.2 Site paleti — "Kozalak Ormanı" (müşteri onaylı)
| Rol | HEX | Not |
|---|---|---|
| Çam yeşili | `#1F3D2B` | Ana koyu |
| Orta yeşil | `#4A7C59` | |
| Ahşap | `#C08A54` | |
| Terrakota | `#D2694A` | Logo turuncusuyla akraba |
| Adaçayı | `#9DBCA8` | Bölüm zemini |
| Krem | `#FAF7F2` | Sayfa zemini |

### 1.3 El işi renkleri — okulun duvar panolarından ölçüldü
Okul, siyah kumaş fon + çuval bezi üzerine **kırışık kâğıt/yün** panolar yapıyor.
Görsellerdeki renk enerjisi buradan gelmeli:

| Renk | HEX |
|---|---|
| Kobalt mavi | `#0F2E8F` |
| Fuşya | `#E8317F` |
| Sarı | `#F2C230` |
| Yeşil | `#3FA65A` |
| Turuncu | `#F06A1E` |
| Çuval bezi / kraft | `#967866` |
| Suni çim | `#78894A` |

---

## 2. GÖRSEL İLKELERİ — MARKAYA UYGUN / UYGUN DEĞİL

| ✅ Markaya uygun | ❌ Markaya aykırı |
|---|---|
| Parlak, düz gün ışığı; her yer net | Loş, atmosferik, sinematik ışık |
| Doygun renk; kalabalık, dolu kadraj | Soluk, bej, minimal, boş kadraj |
| Duvarlarda el yapımı çocuk işi | Çıplak/dekorsuz galeri duvarı |
| Sarı/kırmızı plastik çocuk sandalyesi, kilim | Tasarım mobilya, İskandinav sadeliği |
| Yaşanmış, biraz dağınık, gerçek | Kataloğa hazır, steril showroom |
| Alan derinliği geniş — mekân okunuyor | Sığ bokeh, arka plan eriyip gitmiş |

**Tek cümlelik kural:** *Bu bir Bursa mahallesindeki gerçek anaokulu; Kopenhag'da
bir konsept mağaza değil.*

### 2.1 Referans dosyalar — üretimden ÖNCE aç ve incele
Aynı klasörde, rakamla başlayan dosyalar okulun **gerçek fotoğrafları.**

| Dosya | Neyi gösteriyor |
|---|---|
| `601454066_*.jpg` | Sınıf: siyah fon + çuval bezi, elle yapılmış kırışık kâğıt Türkiye haritası (`#F2C230` `#E8317F` `#0F2E8F` `#3FA65A` `#F06A1E`), önünde bakır cezve ve davulla yöresel masa |
| `702094719_*.jpg` | Bahçe: suni çim `#78894A`, bayrak ve Kozalak flaması, dinozor kaydırak, **sarı plastik sandalyeler**, 12 çocuk pastel boyayla çalışıyor |
| `480291776_*.jpg` | Kapalı oyun alanı: cephe maketleri, neon sarı Kozalak yelekleri, lego masası |

**Bu üçü hedefin ta kendisi.**

---

## 3. TEKNİK ŞARTNAME

| Özellik | Değer |
|---|---|
| Oran | **4:3 kesin** (CSS `aspect-ratio:4/3`, sapma kırpılır) |
| Boyut | **1600 × 1200 px** |
| Format / kalite | JPG, q≈82, **≤ 250 KB** |
| Kadraj | Ana özne merkezde, dört kenarda %8 pay |

---

## 4. ORTAK PROMPT BLOKLARI

Aşağıdaki iki bloğu **her promptun sonuna aynen** ekle.

### 4.1 STİL BLOĞU
```
LIGHT: bright, even, high-key daylight from large windows; deep depth of field so the
whole room reads; no moody shadows, no shallow-bokeh background melt.
CAMERA: modern smartphone rendering — crisp, contrasty, saturated; wide-ish lens,
slightly elevated eye level.
COLOUR: vivid craft palette — yellow #F2C230, hot pink #E8317F, cobalt #0F2E8F,
green #3FA65A, orange #F06A1E — set against burlap #967866 and warm cream #FAF7F2.
SETTING: a real Turkish private preschool: handmade crumpled-tissue-paper and felt
wall art on burlap, paper bunting, moulded plastic child chairs in yellow and red,
low pine tables, woven kilim rugs, warm laminate or astroturf floor.
MOOD: busy, joyful, lived-in, every surface in use — never sparse or sterile.
```

### 4.2 NEGATİF BLOK
```
recognisable face, direct eye contact, portrait, distorted face, melted features,
smudged face, extra fingers, text, letters, words, numbers, handwriting, logo,
watermark, muted palette, desaturated, beige, minimalist, Scandinavian interior,
concept store, showroom, moody lighting, dark, empty room, still life, sparse,
shallow depth of field, heavy bokeh, film grain, vignette, stock photo cliché,
HDR, 3d render, cartoon, illustration, blurry, low quality
```

---

## 5. İKİ DEĞİŞMEZ KURAL

**K1 — Görselde hiç yazı yok.** Harf, rakam, tabela, pano yazısı, kitap sırtı.
Tüm metinler HTML'den geliyor (SEO + erişilebilirlik + mobil).
*v1'de bu tutturuldu, korunacak.*

**K2 — Tanınabilir çocuk yüzü yok.** Sırtı dönük, yandan, eller, başı eğik.
*v1'de `waldorf` görselinde masadaki çocuğun yüzü göründü — tekrarlanmayacak.*

> Sitedeki gerçek fotoğraflarda çocuk yüzleri var; onlar velilerinden izinli gerçek
> öğrenciler. Yapay üretilen bir çocuğu okulun öğrencisiymiş gibi göstermek ayrı bir
> mesele — o yüzden AI görsellerinde yüz kuralı sürüyor.

---

# 6. ÜRETİLECEK GÖRSELLER

Her prompt katmanlı: **SUBJECT → ACTION → ENVIRONMENT → DETAIL → CONSTRAINT**,
ardından §4.1 stil bloğu ve §4.2 negatif blok.

---

## 6.1 · `reggio.jpg` — Reggio Emilia atölyesi

```
SUBJECT: three pairs of children's hands and forearms only, sleeves in mustard
#F2C230, hot pink #E8317F and teal, entering the frame from the right and bottom.

ACTION: arranging translucent coloured glass pebbles, thin wood slices and pressed
leaves into a large radiating mandala on a softly glowing light table.

ENVIRONMENT: a busy Reggio Emilia atelier in a Turkish preschool. The full back wall
is covered in handmade children's craft — a large crumpled tissue-paper collage in
yellow #F2C230, hot pink #E8317F, cobalt #0F2E8F, green #3FA65A and orange #F06A1E,
mounted on burlap #967866 — framed by felt shapes and paper bunting.

DETAIL: open wicker baskets crammed with pinecones, acorns, chestnuts, copper wire
spools, wool felt squares and jars of buttons on a worn pine bench; unfired clay
pinch pots drying on a board in the right foreground; yellow plastic child chairs
tucked around a low table; a woven kilim rug underfoot.

CONSTRAINT: no faces anywhere, no people beyond hands and forearms, no readable text
on the wall art or anywhere in frame.
```

## 6.2 · `waldorf.jpg` — Waldorf oyun köşesi

```
SUBJECT: four children seen strictly from behind and in profile, faces entirely out
of frame, in hand-knitted jumpers of mustard #F2C230, rust red, forest green #1F3D2B
and teal.

ACTION: two of them stretch large vividly coloured silk play cloths — crimson,
turquoise, sunflower yellow, magenta — over a wooden clothes-horse to build a den,
the silks glowing where daylight passes through; a third child's hands shape golden
beeswax at a low pine table; a fourth reaches into a basket of wooden peg dolls in
bright felt hats.

ENVIRONMENT: a warm, lively Waldorf play corner with peach lazure walls, a seasonal
table draped in green silk holding pinecones and chestnuts, and a wall of handmade
tissue-paper flower collage in yellow #F2C230, pink #E8317F and orange #F06A1E on
burlap #967866.

DETAIL: a finished wet-on-wet watercolour in vivid blue and rose drying on the table;
a woven kilim rug; a basket of wool rovings; late-morning light through a tall window.

CONSTRAINT: no candles and no open flame anywhere; no faces; no readable text.
```

## 6.3 · `coklu-zeka.jpg` — Çoklu zeka istasyonları

```
SUBJECT: exactly four children, all strictly from behind with backs fully to the
camera, faces not visible at any angle, in bright everyday clothes — coral, mustard
#F2C230, teal and red — one wearing a neon yellow high-visibility school vest.

ACTION: four learning stations running at once — left, a child striking a wooden
xylophone beside a basket of tambourines and shakers; centre, a child working a
wooden balance scale with number rods and vivid felt counters; right, a child holding
a magnifying glass over a tray of leaves, seed pods and stones beside a glass
terrarium; background, a fourth child kneeling on a kilim rug in a reading nook.

ENVIRONMENT: a bright, colourful Turkish preschool classroom photographed from a
slightly elevated wide angle. Warm laminate floor with a pale movement path taped on
it, tall windows, yellow and red moulded plastic child chairs, low pine tables.

DETAIL: the back wall carries handmade children's craft in vivid tissue paper and
felt; the reading nook has brightly coloured cushions and a basket of books turned
spine-inward.

CONSTRAINT: exactly four children and no more; no faces; no posters, no wall charts,
no book titles, no letters or numbers anywhere in frame.
```

## 6.4 · `aktif-ogrenme.jpg` — Aktif Öğrenme ⚠️ YENİ EKLENDİ

**Neden değişiyor:** Mevcut görsel (çamur mutfağı, yeşil lastik çizmeler, yüksek
sebze yatağı, ahşap kasalar) bir **İngiliz "forest school"** kurgusu. Türk anaokuluna
benzemiyor. Gerçek Türk anaokulu bahçesinin dili farklı: **suni çim, yeşil yapay çit,
bayrak flaması, renkli plastik çocuk sandalyesi, arkada apartmanlar.**
Referans: `bahcemiz.jpg` ve `bahcede-suluboya.jpg`.

```
SUBJECT: four children seen from behind and in profile, faces entirely out of frame,
wearing neon orange and lime-green painting smocks over everyday clothes — the kind
Turkish preschools use.

ACTION: a hands-on planting activity at a low outdoor table — scooping soil with
small trowels into terracotta pots, pressing seeds in, watering from a little metal
can; one child's soil-covered hands cradle a green seedling.

ENVIRONMENT: a Turkish preschool garden. Bright green astroturf underfoot, a trimmed
artificial green hedge screen along the fence, paper bunting strung overhead, colourful
moulded plastic child chairs in yellow and red, a low table covered with a red cloth,
a small plastic slide soft in the background, mid-rise Turkish apartment buildings
visible beyond the hedge under a clear sky.

DETAIL: burlap mats laid on the turf, a woven basket of small gardening tools, a
watering can, a tray of terracotta pots, scattered soil on the red tablecloth.

CONSTRAINT: no faces; no readable text anywhere — bunting, seed packets and labels
must all be blank.
```

**Negatife ayrıca ekle:** `mud kitchen, wellington boots, raised garden bed, forest
school, English countryside, wooden crates, rustic farm`

## 6.5 · `montessori.jpg` — Montessori ⚠️ YENİ EKLENDİ

**Neden değişiyor:** Bu görsel **v1'den kaldı**, hiç yenilenmedi. v3'te üretilen
`reggio` / `waldorf` / `coklu-zeka` artık Türk anaokulu gibi duruyor — renkli el işi
duvar panoları, kilim, sarı-kırmızı plastik sandalyeler. `montessori.jpg` ise hâlâ
**boş beyaz duvar, sakin İskandinav ahşap, Kuzey Avrupalı çocuk.** Beşi yan yana
konduğunda tek sırıtan o.

```
SUBJECT: a child's hands and forearms only, seen from above and slightly behind the
shoulder, sleeve in mustard #F2C230; face entirely out of frame.

ACTION: carefully placing the final cube on a Montessori pink tower standing on a
woven work mat on the floor.

ENVIRONMENT: a bright Turkish preschool Montessori corner. Low open wooden shelves
hold knobbed cylinder blocks, golden bead material, a small ceramic pitcher and
baskets of natural materials, each item spaced in deliberate order. Behind the
shelves the wall carries handmade children's craft — crumpled tissue-paper collage
in yellow #F2C230, hot pink #E8317F and cobalt #0F2E8F on burlap #967866 — with paper
bunting above.

DETAIL: a colourful woven kilim rug at the edge of the frame, a yellow plastic child
chair, warm laminate floor, bright daylight from a large window on the left.

CONSTRAINT: no faces, no people beyond the hands, no readable text anywhere.
```

**Negatife ayrıca ekle:** `bare white wall, empty wall, Scandinavian minimalism,
muted, beige, sparse shelf`

---

## 6.6 · `toprakla-temas.jpg` — YENİ DOSYA (felsefe bölümü)

**Neden gerekiyor:** Sitedeki metin *"Ekolojik bahçemizde ekiyor, suluyor, hasat
ediyoruz. Öğrenmek elleri kirletmekle başlar."* diyor. Elimizdeki gerçek fotoğrafların
hiçbirinde **ekim, sulama veya hasat yok.** Metin değişmeyecek, o yüzden görsel gelecek.

**Dosya adı:** `ortak/gorseller/toprakla-temas.jpg` (yeni dosya, üzerine yazma yok)

```
SUBJECT: three children seen from behind and in profile, faces entirely out of frame,
wearing neon orange and lime-green painting smocks over everyday clothes.

ACTION: a planting activity at a low outdoor table — scooping dark soil with small
trowels into terracotta pots, pressing seeds in with a fingertip, watering from a
little metal can; one child's soil-covered hands cradle a green seedling.

ENVIRONMENT: a Turkish preschool garden. Bright green astroturf underfoot, a trimmed
artificial green hedge screen along the fence, paper bunting strung overhead,
colourful moulded plastic child chairs in yellow and red, a low table covered with a
red cloth, mid-rise Turkish apartment buildings visible beyond the hedge under a
clear sky.

DETAIL: burlap mats on the turf, a woven basket of small gardening tools, a watering
can, a tray of terracotta pots, scattered soil on the red tablecloth, muddy fingers.

CONSTRAINT: no faces; no readable text anywhere — bunting, seed packets and pot
labels must all be blank.
```

**Negatife ayrıca ekle:** `mud kitchen, wellington boots, raised garden bed, forest
school, English countryside, wooden crates, rustic farm`

---

# 7. KABUL KRİTERLERİ

Üçü de geçmeden teslim etme.

### Teknik
- [ ] 1600×1200, oran tam 4:3
- [ ] ≤ 250 KB, JPG
- [ ] Dosya adı birebir, `ortak/gorseller/` içine, eskisinin üzerine

### Kural
- [ ] Kadrada **tek bir harf/rakam yok** — duvar panoları dahil
- [ ] **Tanınabilir yüz yok**; ezilmiş/erimiş yüz yok; el ve parmaklar doğru
- [ ] `coklu-zeka`: tam 4 çocuk · `waldorf`: mum yok, çocuklar hareket hâlinde

### Marka
- [ ] Duvarlarda **el yapımı çocuk işi** var, çıplak duvar yok
- [ ] Kadrada §1.3 renklerinden en az **üçü belirgin** olarak görünüyor
- [ ] Işık düz ve parlak; loş/sinematik değil
- [ ] Alan derinliği geniş; arka plan bokeh'te erimemiş
- [ ] Mekân **dolu ve yaşanmış** duruyor, steril değil

### Son test — bunu atlama
Üç yeni görseli `702094719_*.jpg` (okulun gerçek bahçesi) ile yan yana koy.

> **"Bunlar aynı okuldan mı?"**
> Cevap net bir "evet" değilse → reddet, §2 tablosuna dön, yeniden üret.

---

# 8. DOKUNULMAYACAKLAR

- `montessori.jpg`, `aktif-ogrenme.jpg` — onaylandı
- Rakamla başlayan tüm dosyalar — okulun **gerçek fotoğrafları**; referans olarak
  incele, asla değiştirme veya silme
- `index.html`, `*.css` — kod tarafına dokunma
