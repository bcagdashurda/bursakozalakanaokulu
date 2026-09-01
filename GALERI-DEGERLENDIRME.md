# GÖRSEL DENETİMİ — sitedeki 17 fotoğrafın tamamı

Hepsi tek tek açılıp incelendi. **6'sı kullanılabilir, 5'i yeniden üretilmeli,
6'sı gerçek fotoğrafla değişmeli.**

---

## 🎨 ÖNCE SANAT YÖNÜ — "renkli anaokulu" meselesi

Haklısın, set fazla sakin duruyor. Sebebi şu: seçilen palet (çam yeşili + terrakota)
zaten sakin bir palet, üstüne bir de fotoğrafları sakin seçince sayfa "butik kafe"
gibi duruyor, anaokulu gibi değil.

**Doğru kural: renk fotoğraftan gelsin, arayüzden değil.**
Sayfanın çerçevesi (zeminler, butonlar, yazılar) müşterinin seçtiği sakin palette
kalır; **renk patlaması çocukların kıyafetlerinden, boyalardan, bloklardan gelir.**
`aktif-ogrenme.jpg` ve `ahsap-bloklar.jpg` bunu doğru yapıyor. `waldorf.jpg` yapmıyor.

Aşağıdaki yeni promptların hepsi bu kurala göre yazıldı.

---

## 📋 TOPLU KARAR TABLOSU

| Bölüm | Dosya | Karar |
|---|---|---|
| **Hero polaroid 1** | `boya-eller.jpg` | ❌ Gerçek fotoğraf |
| **Hero polaroid 2** | `cizme-bahce.jpg` | ⚠️ Kalabilir ama **2 yerde tekrar ediyor** |
| **Hero polaroid 3** | `kule.jpg` | ✅ Kalabilir |
| **Hero polaroid 4** | `cember.jpg` | ❌❌ **Acil kaldır** |
| Felsefe 1 | `sinif-genel.jpg` | ❌ Gerçek fotoğraf |
| Felsefe 2 | `cizme-bahce.jpg` | ⚠️ tekrar |
| Felsefe 3 | `zipla.jpg` | ❌❌ **Acil kaldır** |
| Yaş — Tohumlar | `ahsap-bloklar.jpg` | ✅ Kalabilir |
| Yaş — Filizler | `serbest-oyun.jpg` | ⚠️ İdare eder |
| Yaş — Fidanlar | `sanat-atolye.jpg` | ❌ Fransızca kitap görünüyor |
| Yaş — Kozalaklar | `montessori-masa.jpg` | ⚠️ İngilizce + Play-Doh markası |
| Galeri 1 | `montessori.jpg` | ✅ **Kullan** |
| Galeri 2 | `reggio.jpg` | ❌ Yeniden üret |
| Galeri 3 | `waldorf.jpg` | ❌ Yeniden üret (renk/canlılık) |
| Galeri 4 | `coklu-zeka.jpg` | ❌ Yeniden üret |
| Galeri 5 | `aktif-ogrenme.jpg` | ✅ **Setin en iyisi** |
| Galeri 6 | `sanat-atolye.jpg` | ❌ tekrar + Fransızca |

---

## 🚨 ACİL KALDIRILMASI GEREKEN İKİ GÖRSEL

### `cember.jpg` — hero polaroidi "Sabah çemberi"

Bu bir **Amerikan ilkokulu** fotoğrafı:
- Duvarda **İngilizce alfabe panosu** ("Nn" görünüyor)
- Bir çocuğun tişörtünde **"Lawson"** yazıyor
- Çocuklar **6–10 yaş**, anaokulu değil (site 2–6 yaş diyor)
- Onlarca **tanınabilir çocuk yüzü** — hiçbiri bu okulun öğrencisi değil
- Jaluzi, floresan aydınlatma — tipik ABD sınıfı

Hero'da, yani sayfanın en üstünde duruyor. Bir veli bunu fark ederse güven biter.

### `zipla.jpg` — felsefe bölümü

Çocuk **boş bir çöl otoyolunun ortasında** zıplıyor. Anaokuluyla hiçbir ilgisi yok,
üstelik "çocuk tek başına yolda" görüntüsü bir anaokulu için **yanlış güvenlik mesajı**
veriyor. Tişörtünde de İngilizce yazı var.

---

## ❌ YENİDEN ÜRETİLECEK 3 GÖRSEL

Üçünde de stil çıpası + negatif prompt eklenecek (bkz. `GALERI-PROMPTLARI.md`),
ama **stil çıpasındaki "muted palette" ifadesini şununla değiştir:**

```
Colour comes from the children's clothing and the materials — warm reds, mustard,
teal, coral — against calm natural wood and cream surroundings. Cheerful and alive,
never washed out.
```

### `reggio.jpg` — neden olmadı
Ön plandaki çocuğun **yüzü ezilmiş/bulanmış** (üretim hatası, sansür gibi duruyor),
dokümantasyon panosunda **okunamayan sahte el yazısı**, panodaki fotoğraflarda
**çocuk yüzleri**.

```
A Reggio Emilia atelier corner photographed from a high angle, empty of people except
two pairs of small hands entering from the right edge, sleeves in bright mustard and
teal. Centre: a glowing light table where those hands arrange translucent coloured
glass pebbles in red, amber, blue and green, thin cross-cut wood slices and dried leaf
skeletons into a radiating mandala. Left: a worn wooden bench with open wicker baskets
of pinecones, acorns, chestnuts, copper wire spools and stacked wool felt squares in
saturated colours. Right: unfired clay pinch pots in progress. Background: a large
sheet of plain unmarked kraft paper pinned flat, completely blank — no writing, no
photographs — beside a simple wooden mirror. Soft daylight from a tall window.
No faces, no people beyond the two pairs of hands, no text anywhere.
```
**Negatife ekle:** `handwriting, written notes, pinned photographs, faces, distorted face, smudged face`

### `waldorf.jpg` — neden olmadı
Teknik olarak güzel ama **natürmort**: kadroda oynayan çocuk yok, renk yok, fazla sakin.
Anaokulu değil, dekorasyon dergisi gibi duruyor. Yeni promptta çocukları işin içine
soktum ve rengi yükselttim.

```
A warm Waldorf kindergarten play corner, mid-activity. Three children seen from behind
and from the side with faces out of frame, wearing hand-knitted jumpers in mustard,
rust red and forest green. Two of them drape brightly coloured silk play cloths —
crimson, turquoise, sunflower yellow — over a wooden clothes-horse to build a den,
the silks catching the light and glowing. The third child's hands shape golden beeswax
at a low wooden table beside a finished wet-on-wet watercolour in vivid blue and rose.
Behind them a seasonal nature table with a green silk hill, wooden peg dolls in bright
felt hats, pinecones and chestnuts. Walls in soft lazure peach. Late afternoon light,
warm and cheerful. No candles, no open flame. No faces, no text.
```
**Negatife ekle:** `still life, empty room, no people, candle, open flame, faces, muted, desaturated`

### `coklu-zeka.jpg` — neden olmadı
Kadroda **7 çocuk** var, en az **4'ünün yüzü erimiş/deforme**. Duvar posterinde ve
kitap sırtlarında **sahte yazı**. Kök sebep kalabalık — model kalabalıkta yüz tutturamıyor.
Çocuk sayısını 3'e indirip hepsini sırtı dönük yaptım.

```
Elevated wide view of a bright, warm preschool classroom with four learning stations
active at once. Exactly three children, all strictly from behind with backs fully to
the camera, no faces visible at any angle, wearing colourful jumpers in coral, mustard
and teal. Left: a child at a wooden xylophone and hand drum, mallet mid-air. Centre:
a child at a low table with a wooden balance scale, number rods and bright felt
counters. Right: a child holding a magnifying glass over a tray of leaves, seed pods
and stones beside a glass terrarium. Background, empty of people: a reading nook with
colourful cushions and a basket of books turned spine-inward so no titles are readable,
and a pale movement path taped on the wooden floor. Warm oak furniture, sage cabinets,
tall windows. Walls completely bare — no posters, no charts, no writing anywhere.
```
**Negatife ekle:** `faces, profile view, distorted face, melted features, crowd, many children, posters, book titles, wall charts, text`

---

## 📷 İŞLETMEDEN İSTENECEK GERÇEK FOTOĞRAFLAR

Havva Hanım'a iletilecek liste. **Öncelik sırasına göre:**

### 1. Öncelik — hero polaroidleri (kare 1:1, sayfanın en üstü)

| Slot | Şu anki başlık | İstenecek kare |
|---|---|---|
| 1 | Sanat atölyesi | Boya/kolaj çalışması — masa üstü, çocuk elleri, renkli malzeme |
| 4 | **Sabah çemberi** | **Kendi sabah çemberleri, arkadan çekilmiş** ← en acil |

### 2. Öncelik — bölüm görselleri

- **Sınıf genel görünümü** → `sinif-genel.jpg` yerine. Boş sınıf da olur, izin sorunu çıkmaz.
- **Sanat/atölye köşesi** → `sanat-atolye.jpg` yerine (şu an Fransızca kitaplı ve iki yerde tekrar ediyor)
- **Bahçe / oyun alanı** → `zipla.jpg` yerine. Okulun kendi bahçesi.

### 3. Öncelik — sitede hiç olmayan ama olması gereken

- **Bina dış cephesi + tabela** — veli "burası mı?" derken en çok aradığı kare.
  Şu an sitede okulun binasından **tek bir fotoğraf yok.**
- **Yemekhane veya yemek masası** — "yemekler okulda hazırlanıyor" iddiasını görsel destekler
- **Öğretmen kadrosu** (isterlerse) — güven veren en güçlü kare

### Fotoğraf isterken söylenecekler

- **Yatay çekim**, en az **1600px** uzun kenar
- Galeri kartları **4:3**, hero polaroidleri **kare** — dikey çekimlerin kenarları kırpılır
- **Flaş kullanılmasın**, gündüz pencere ışığı en iyisi
- **Çocuk yüzü görünüyorsa o velilerden yazılı izin şart** (KVKK — çocuk görseli açık rıza gerektirir).
  İzin yoksa: eller, arkadan, omuz üstü kareler seçilsin.
- Düşük çözünürlüklü gerçek fotoğraf, mükemmel yapay görselden **daha iyidir.**
  Veli gerçek mekânı tanır.

---

## ⚠️ DİĞER TESPİTLER

**Tekrar eden görseller** — aynı fotoğraf iki yerde:
- `cizme-bahce.jpg` → hero polaroidi + felsefe bölümü
- `sanat-atolye.jpg` → yaş kartı + galeri

İkisi de göze batıyor, biri değişmeli.

**Dosya boyutu** — üretilen 5 görsel 730–986 KB, olması gereken ~200 KB.
Beşi toplam **4,2 MB**; mobil veride LCP'yi düşürür. Görseller kesinleşince
hepsini kalite 82'de yeniden kodlayacağım, gözle fark edilmez.

**`montessori.jpg`** kalabilir ama çocuk Kuzey Avrupalı okunuyor. Bursa'da bir okul
için hafif yabancı duruyor — kritik değil, ama gerçek fotoğraf gelirse o tercih edilsin.
