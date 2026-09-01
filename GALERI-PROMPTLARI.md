# BURSA KOZALAK — GALERİ GÖRSEL PROMPTLARI

Beş eğitim yaklaşımı için AI görsel promptları. Palet: **Kozalak Ormanı**
(çam yeşili `#1F3D2B` · terrakota `#D2694A` · adaçayı `#9DBCA8` · ahşap `#C08A54` · krem `#FAF7F2`).

---

## ⚙️ KULLANIM

**Çözünürlük:** En az **2400px** uzun kenar. Galeri kartı ekranda ~400px görünür ama
retina + gelecekteki `srcset` için büyük üret.

**Oran:** Galeri kartları **4:3** (`.gk img{aspect-ratio:4/3}`). Hero polaroidleri **1:1**.
Yanlış oranda üretirsen `object-fit:cover` kenarlardan kırpar — kompozisyonun merkezi
güvenli bölgede kalsın.

**Dosya adları:** Promptun başındaki yolu **birebir** kullan. HTML bu yollara göre yazılacak.

**Format:** JPG, kalite 82–88. 2400px'te ~400–600KB olmalı. Şu an galeri 24 görselle
7 MB — büyütmeyelim.

---

## ⚠️ ÇOCUK YÜZÜ KURALI — PAZARLIK YOK

Promptların hiçbirinde **tanınabilir çocuk yüzü yok**. Üç sebep:

1. **KVKK** — çocuk fotoğrafı özel nitelikli işleme sayılır, her veli için ayrı açık rıza gerekir.
2. **AI görselinde uydurma çocuk yüzü** — okulda olmayan bir çocuğu varmış gibi göstermek olur.
3. Yüzsüz kompozisyon (eller, omuz üstü, arkadan, sığ alan derinliği) zaten **daha profesyonel**
   duruyor — editoryal eğitim fotoğrafçılığının standardı budur.

Gerçek Instagram fotoğraflarını kullanırken de aynı kural: yüz görünüyorsa o veliden
yazılı rıza olmalı, yoksa o kareyi alma.

---

## 🎯 STİL ÇIPASI — HER PROMPTUN SONUNA EKLE

Beş görselin tek bir sistem gibi durmasını sağlar. **Kopyala, her promptun sonuna yapıştır:**

```
STYLE: soft directional north-facing window light, gentle falloff, no harsh flash.
Documentary early-childhood photography, shot on 35mm at f/2.0, shallow depth of field,
authentic unstaged moment. Natural material texture is the hero: raw wood grain, wool felt,
cotton, clay, paper fibre. Muted warm palette — deep pine green, terracotta, sage, ochre wood,
warm cream. Slight film grain, natural colour, NOT oversaturated. Real Turkish preschool
interior, lived-in and slightly imperfect, not a showroom. NO text, NO letters, NO numbers,
NO logos, NO watermarks, NO recognisable faces, NO direct eye contact with camera.
```

**Negatif prompt:**
```
recognisable face, direct eye contact, portrait, text, letters, words, numbers, logo,
watermark, signature, plastic toys, primary-colour plastic, fluorescent lighting, stock photo
cliché, oversaturated, HDR, 3d render, cartoon, illustration, neon, purple, blurry, low quality
```

---

# BEŞ YAKLAŞIM

### 01 — Montessori · `/ortak/gorseller/montessori.jpg` · 4:3

> **İmza:** düzen, gerçek ahşap, tek çocuğun derin konsantrasyonu, izole edilmiş nitelik.

```
Close-up of a small child's hands, seen from above and slightly behind the shoulder, carefully
placing the final cube on a Montessori pink tower on a woven work mat on a wooden floor.
Only hands and forearms visible, face out of frame. Behind, softly out of focus, a low open
shelf with knobbed cylinder blocks, golden bead material and a small ceramic pitcher, each
item spaced with deliberate order. Warm morning light from a window on the left. Solid wood,
natural fibre, zero plastic. The mood is quiet, absorbed, unhurried.
```
**Başlık:** `Montessori çalışması` · **Alt:** `Ahşap Montessori pembe kulesini dizen çocuk elleri`

---

### 02 — Reggio Emilia · `/ortak/gorseller/reggio.jpg` · 4:3

> **İmza:** atölye, ışık masası, doğal koleksiyonlar (kozalak!), duvarda dokümantasyon.

```
A Reggio Emilia atelier corner. In the foreground, a glowing light table where small hands
arrange translucent coloured discs, glass pebbles and thin slices of natural material into a
radiating pattern. Scattered around: baskets of pinecones, acorns, dried leaves and spools of
wire. On the wall behind, softly out of focus, a documentation panel — pinned children's
drawings, photographs and handwritten notes on kraft paper. A large mirror reflects the warm
light. Clay work in progress on a side table. Faces out of frame. Atmosphere of collaborative
investigation, the environment itself teaching.
```
**Başlık:** `Reggio atölyesi` · **Alt:** `Işık masasında doğal materyallerle desen oluşturan çocuklar`

---

### 03 — Waldorf · `/ortak/gorseller/waldorf.jpg` · 4:3

> **İmza:** mevsim masası, ipek örtüler, arı mumu, yumuşak lazur duvar, hiç markalı oyuncak yok.

```
A Waldorf seasonal nature table against a wall painted in soft lazure peach-rose wash. On the
table: a length of green silk cloth draped like a hill, wooden peg dolls, a beeswax candle,
pinecones, chestnuts, a small vase of dried wheat. To one side, a child's hands warming and
shaping golden beeswax modelling clay. A wet-on-wet watercolour painting in soft blues and
yellows dries on a board nearby. Handknitted wool, unfinished wood, undyed cotton. Late
afternoon light, warm and low. Dreamy, gentle, handmade — nothing branded, nothing plastic.
```
**Başlık:** `Waldorf mevsim masası` · **Alt:** `İpek örtü, ahşap bebekler ve kozalaklarla düzenlenmiş mevsim masası`

---

### 04 — Çoklu Zeka · `/ortak/gorseller/coklu-zeka.jpg` · 4:3

> **İmza:** aynı karede eşzamanlı farklı öğrenme türleri — müzik, sayı, doğa, hareket, söz.

```
Wide environmental shot of a bright preschool classroom divided into distinct learning stations,
several active at once. Left: a music corner with Orff instruments — xylophone, hand drum,
wooden claves — small hands mid-strike. Centre: a low table with wooden number rods and a
balance scale. Right: a nature and science nook with a magnifying glass, a terrarium and
pressed leaves. Background: a soft reading nook with cushions and a basket of picture books,
and a taped movement path on the floor. Children seen from behind and in profile, faces not
identifiable, each absorbed in a different kind of task. Natural light, warm wood furniture,
sage green and terracotta accents.
```
**Başlık:** `Çoklu zeka istasyonları` · **Alt:** `Müzik, sayı, doğa ve okuma istasyonlarının aynı anda kullanıldığı sınıf`

---

### 05 — Aktif Öğrenme · `/ortak/gorseller/aktif-ogrenme.jpg` · 4:3

> **İmza:** dışarısı, çamur, gerçek araçlar, süreç görünür — dinleyen değil yapan çocuk.

```
Outdoors in a garden on an overcast bright day. Children's hands and boots at a wooden mud
kitchen — pouring water from a battered metal jug into a bowl of soil, a real whisk and
sieve in use, sleeves pushed up, forearms genuinely muddy. Beside them a magnifying glass
rests on a tray of collected leaves, seed pods and pinecones next to a clipboard with a
child's tally marks. In the soft background, a raised vegetable bed with seedlings and a
stack of loose planks and crates mid-construction. Faces out of frame. Real tools, real dirt,
visible process — investigation rather than instruction.
```
**Başlık:** `Bahçede keşif` · **Alt:** `Çamur mutfağında gerçek araçlarla deney yapan çocuklar`

---

## 🖼️ HERO POLAROİDLERİ (1:1) — İSTEĞE BAĞLI

Hero'da 4 kare polaroid var (`.pol img{aspect-ratio:1/1}`, ekranda 180px).
Yukarıdaki 5 promptu **kare kadraja** çevirip kullanabilirsin — prompta şunu ekle:

```
Square 1:1 composition, subject centred with generous margin on all four sides, tight crop.
```

Öneri dörtlü: `montessori` · `reggio` · `aktif-ogrenme` · (bir gerçek Instagram karesi).

---

## 📋 ÜRETİM SONRASI KONTROL

- [ ] Uzun kenar ≥ 2400px, dosya ≤ 600KB
- [ ] Görselde **hiç yazı/rakam yok** (mobilde bozulur, Google okuyamaz)
- [ ] Tanınabilir yüz yok
- [ ] Beşi yan yana konduğunda **tek bir palet** gibi duruyor
- [ ] Plastik oyuncak / floresan ışık sızmamış
- [ ] Dosya adı promptta yazan yolla birebir aynı
