---
name: Yapılacaklar
description: Ofis duvarındaki koparmalı günlük takvimin bugünkü yaprağı olarak kişisel iş listesi.
colors:
  wall: "#d9dadc"
  leaf: "#ffffff"
  ink: "#111111"
  muted: "#5c5c5c"
  line: "#b4b4b4"
  field: "#f3f3f3"
  red: "#c8102e"
  red-bg: "#c8102e"
  on-red: "#ffffff"
  strip: "#111111"
typography:
  display:
    fontFamily: "Anton, Archivo, sans-serif"
    fontSize: "clamp(160px, 22vw, 272px)"
    fontWeight: 400
    lineHeight: 0.88
    fontFeature: "tnum"
  headline:
    fontFamily: "Anton, Archivo, sans-serif"
    fontSize: "46px"
    fontWeight: 400
    lineHeight: 1.05
    letterSpacing: "0.03em"
  numeral:
    fontFamily: "Anton, Archivo, sans-serif"
    fontSize: "44px"
    fontWeight: 400
    lineHeight: 1
    fontFeature: "tnum"
  title:
    fontFamily: "Archivo, system-ui, sans-serif"
    fontSize: "30px"
    fontWeight: 700
    letterSpacing: "-0.01em"
  body-lg:
    fontFamily: "Archivo, system-ui, sans-serif"
    fontSize: "19px"
    fontWeight: 400
    lineHeight: 1.45
  body:
    fontFamily: "Archivo, system-ui, sans-serif"
    fontSize: "17px"
    fontWeight: 400
    lineHeight: 1.45
  label:
    fontFamily: "Archivo, system-ui, sans-serif"
    fontSize: "15px"
    fontWeight: 400
    lineHeight: 1.45
rounded:
  none: "0px"
  hole: "50%"
spacing:
  xs: "8px"
  sm: "16px"
  md: "28px"
  lg: "48px"
  leaf-top: "74px"
components:
  button-primary:
    backgroundColor: "{colors.red-bg}"
    textColor: "{colors.on-red}"
    typography: "{typography.body}"
    rounded: "{rounded.none}"
    padding: "0 28px"
    height: "54px"
  tab:
    backgroundColor: "transparent"
    textColor: "{colors.ink}"
    typography: "{typography.label}"
    rounded: "{rounded.none}"
    padding: "8px 16px"
  tab-hover:
    backgroundColor: "{colors.field}"
  tab-active:
    backgroundColor: "{colors.ink}"
    textColor: "{colors.leaf}"
  input:
    backgroundColor: "{colors.leaf}"
    textColor: "{colors.ink}"
    rounded: "{rounded.none}"
    padding: "0 16px"
    height: "54px"
  checkbox:
    backgroundColor: "{colors.leaf}"
    rounded: "{rounded.none}"
    size: "24px"
  checkbox-checked:
    backgroundColor: "{colors.ink}"
  task-row:
    backgroundColor: "{colors.leaf}"
    textColor: "{colors.ink}"
    typography: "{typography.body-lg}"
    padding: "10px 0"
    height: "64px"
  icon-button:
    textColor: "{colors.muted}"
    size: "40px"
  tear-off-action:
    textColor: "{colors.red}"
    typography: "{typography.label}"
    padding: "8px 0"
---

# Design System: Yapılacaklar

## Overview

**Creative North Star: "Takvim Yaprağı"**

Arayüz, ofis duvarına asılı koparmalı günlük takvimin bugünkü yaprağıdır. Gri bir duvarın üstünde ince, beyaz bir kâğıt yaprak durur; tepesinde siyah ciltleme şeridi ve üç delik, altında üst üste binmiş yarınki yaprakların ince kenarları görünür. Yaprak iki renkle basılmıştır: siyah mürekkep ve takvim kırmızısı. Başka renk yoktur; hiyerarşi ölçek, ağırlık ve bu iki mürekkep arasındaki seçimle kurulur.

Yaprak ikiye bölünür: solda takvimin kendisi (ay, dev kırmızı gün numarası, gün adı, kalan/biten sayaçları, yaprağın sahibi), sağda günün işleri. Ayraçlar kesik çizgilidir, kâğıttaki delikli koparma hattını taşır. Köşeler keskindir, yüzeyler düzdür; tek derinlik takvim bloğunun kendisidir. İmza hareketi "Tamamlananları kopar": biten satırlar delikli çizgiden yırtılıp aşağı düşer.

Yoğunluk sakindir: gün boyu açık kalan bir sekmede göz yormayan geniş satırlar (64px), büyük dokunma hedefleri, süs yok. Açık/koyu tema zorunludur; koyu temada duvar neredeyse siyaha, yaprak kömür grisine döner, kırmızı daha açık bir tona çekilir.

**Key Characteristics:**
- İki mürekkep baskı: siyah ve takvim kırmızısı; üçüncü renk yok.
- Anton dar kalın rakamlar takvimin sesi, Archivo işlerin sesi.
- Sıfır köşe yarıçapı; yalnızca cilt delikleri yuvarlaktır.
- Kesik çizgili (delikli) ayraçlar satırları ve sütunları ayırır.
- Derinlik yalnızca yaprak bloğundan gelir; bileşenler düzdür.
- Hareket kâğıt fiziğidir: yırtılma ve düşme.

## Colors

Kâğıt ve iki baskı mürekkebi: nötr gri duvar, beyaz yaprak, siyah mürekkep ve tek vurgu olarak takvim kırmızısı. Her rengin koyu tema karşılığı `prefers-color-scheme: dark` altında aynı adla tanımlıdır (bkz. `.impeccable/design.json`).

### Primary
- **Takvim Kırmızısı** (`red`): Gün numarası, odak halkası, odaktaki alanın çerçevesi, hata metni, imleç rengi, silme ikonunun üzerine gelme hali ve "Tamamlananları kopar" eylemi. Koyu temada metin olarak okunabilsin diye açılır.
- **Kırmızı Baskı Zemini** (`red-bg`): Dolgu olarak kırmızı: birincil düğme ve metin seçimi. Açık temada `red` ile aynıdır; koyu temada beyaz yazıyı taşıyabilmek için `red`den daha koyu tutulur. Üstündeki yazı her zaman `on-red`.

### Neutral
- **Duvar Grisi** (`wall`): Sayfa zemini, yaprağın asılı olduğu duvar. Cilt deliklerinin içinden de görünür.
- **Yaprak Beyazı** (`leaf`): Takvim yaprağı ve üstündeki her yüzey (alan, satır, onay kutusu zemini).
- **Mürekkep** (`ink`): Ana metin, alan ve sekme çerçeveleri, işaretli onay kutusu, sahip bölümünün üst çizgisi.
- **Soluk Mürekkep** (`muted`): Künye, sayaç etiketleri, yer tutucu, ipucu, biten görev metni, ikonların dinlenme hali.
- **Delik Çizgisi** (`line`): Kesik çizgili ayraçlar ve takvim bloğundaki alt yaprak kenarları.
- **Kâğıt Gölgesi** (`field`): Sekme üzerine gelme zemini, cilde takılı kalmış dünkü yaprağın yırtık artığı ve koparılan şeridin rengi.
- **Cilt Siyahı** (`strip`): Yaprağın tepesindeki ciltleme şeridi.

### Named Rules
**İki Mürekkep Kuralı.** Yaprakta yalnızca `ink` ve `red` basılır; renk ile hiyerarşi kurulmaz, ikinci bir vurgu rengi eklenmez.
**Kırmızı Takvimindir Kuralı.** Kırmızı günün kendisi (gün numarası), birincil eylem, odak ve hata içindir. Görev metni, başlık ve sayaçlar mürekkeptir.

## Typography

**Display Font:** Anton (Archivo, sans-serif yedeğiyle)
**Body Font:** Archivo (system-ui, sans-serif yedeğiyle); 400, 500 ve 700 ağırlıkları yüklenir.

**Character:** Anton takvim matbaasının dar, kalın rakam ve büyük harf sesidir; yalnızca takvim bilgisini taşır. Archivo işlerin, formların ve düğmelerin sakin, okunur sesidir.

### Hierarchy
- **Display** (Anton 400, clamp(160px, 22vw, 272px), satır yüksekliği 0.88, tabular rakam): Yalnızca kırmızı gün numarası. Telefonda 112px.
- **Headline** (Anton 400, 46px, 1.05, +0.03em): Büyük harfli gün adı. Ay ve yıl satırı aynı yüzde 36px (telefonda 24px), her ikisi Türkçe büyük harfe çevrilir.
- **Numeral** (Anton 400, 44px, 1, tabular): Kalan/biten sayaçlarının rakamları; telefonda 30px.
- **Title** (Archivo 700, 30px, -0.01em): Sağ sütun başlığı ("Bugünün işleri", "Giriş yap"); telefonda 24px.
- **Body Large** (Archivo 400, 19px): Görev satırı metni ve düzenleme alanı; telefonda 17px. Ekleme alanı 18px.
- **Body** (Archivo 400, 17px, 1.45): Gövde, birincil düğme (700), boş durum metni; açıklama metni 16px ve en çok 46ch.
- **Label** (Archivo 400, 15px): Sekmeler, sayaç etiketleri, bağlantılar, alt bilgi, hata metni. Künye 14px ve tabular rakam.

### Named Rules
**Anton Takvimi Basar Kuralı.** Anton yalnızca tarih ve sayılar içindir (ay, gün numarası, gün adı, sayaçlar). Başlık, düğme ve görev metni Archivo'dur.
**Rakamlar Hizalı Kuralı.** Gün numarası, sayaçlar ve künye `font-variant-numeric: tabular-nums` kullanır; sayılar değişirken yaprak oynamaz.

## Layout

Gri duvar üstünde ortalanmış tek yaprak: en çok 1120px genişlik, en az 720px yükseklik, sayfa dolgusu 48px / 24px. Yaprak iki sütunlu bir ızgaradır: solda tarih sütunu (minmax(300px, 400px)), sağda iş sütunu (1fr); ikisi arasında 1px kesik çizgi. Her iki sütun da cilt şeridinin altından 74px üst boşlukla başlar (tarih 40px, iş 48px yan dolgu). Sütunlar dikey esnek kutudur; sahip bölümü ve alt bilgi `margin-top: auto` ile yaprağın dibine oturur.

Ritim 8 / 16 / 28 / 48px adımlarıyla kurulur: başlıktan ekleme alanına 28px, sayaçlar arası 32px, satır içi boşluk 16px. Görev satırları en az 64px yüksekliktedir ve aralarında kesik çizgi vardır.

**Telefon (≤760px):** Sayfa dolgusu 12px, yaprak ekran yüksekliğini doldurur, ızgara tek sütuna iner. Tarih sütunu üstte yatay bir şerit olur: kendi içinde iki sütunlu ızgara, solda 112px gün numarası, sağda gün adı, künye ve sayaçlar; altında kesik çizgi. Sekmeler tam genişliğe eşit bölünür, satırlar 58px'e iner. Telefonda öğeler gizlenmez, yeniden düzenlenir.

## Elevation & Depth

Bileşenler düzdür; gölge yoktur. Tek derinlik takvim bloğunun kendisidir: yaprağın altında üst üste duran sonraki günlerin ince kenarları, bulanıklığı sıfır, her biri bir piksel daralan dikey katmanlarla çizilir ve tüm blok duvara yumuşak bir gölge düşürür. Bu, kâğıt destesinin resmidir, bir yükseklik ölçeği değildir.

### Shadow Vocabulary
- **Takvim bloğu** (`box-shadow: 0 1px 0 var(--line), 0 4px 0 -1px var(--leaf), 0 5px 0 -1px var(--line), 0 8px 0 -2px var(--leaf), 0 9px 0 -2px var(--line), 0 12px 0 -3px var(--leaf), 0 13px 0 -3px var(--line), 0 26px 40px -18px rgb(0 0 0 / .4)`): Yalnızca yaprağın kendisi.

### Named Rules
**Tek Deste Kuralı.** Gölge yalnızca takvim yaprağında bulunur. Düğme, alan, satır ve sekmeler düz kalır; durum renk ve çerçeveyle gösterilir.

## Shapes

Köşeler sıfırdır: yaprak, alanlar, düğmeler, sekmeler ve onay kutusu keskin dikdörtgendir. Tek yuvarlak biçim cilt şeridindeki deliklerdir (13px daire, telefonda 10px, duvar renginde). Çizgi dili ikiye ayrılır: yapı çizgileri düz ve mürekkeptir (alan ve sekme çerçevesi 1-2px, sahip bölümünün 2px üst çizgisi); ayraçlar kesik ve `line` rengindedir. Kâğıt kenarları testere dişli maskelerle yırtık çizilir: cilde takılı dünkü yaprağın artığı (7px, 9px diş) ve koparılan satırın üst/alt kenarı (5px diş).

## Components

### Buttons
- **Shape:** Keskin köşe (0px).
- **Primary (Kırmızı):** `red-bg` dolgu, `on-red` yazı, Archivo 700 17px, 0 28px dolgu, en az 54px yükseklik; ekleme alanının sağına yapışık durur.
- **Hover / Focus:** Üzerine gelince `brightness(1.08)`; odakta 2px kırmızı dış çizgi, 3px boşluk. Devre dışıyken 0.5 opaklık.
- **Bağlantı düğmesi:** Soluk mürekkep, altı çizili (3px boşluk), üzerine gelince mürekkebe döner ("Çıkış yap"). Form geçişindeki bağlantı mürekkep ve 700'dür.
- **İkon düğmesi:** 40px kare, 20px çizgi SVG, soluk mürekkep; üzerine gelince mürekkep, silmede kırmızı. Masaüstünde satıra gelince veya odakta belirir (0.15s), dokunmatikte hep görünür.

### Chips (Sekmeler)
- **Style:** 1px mürekkep çerçeveli bitişik dikdörtgenler (çerçeveler -1px ile örtüşür), 15px, 8px 16px dolgu.
- **State:** Üzerine gelince `field` zemin; seçili (`aria-pressed="true"`) `ink` zemin, `leaf` yazı. Telefonda tam genişlik, eşit pay.

### Cards / Containers
- **Takvim yaprağı:** Sistemdeki tek kap. `leaf` zemin, 0px köşe, takvim bloğu gölgesi, tepede 34px `strip` cilt şeridi (telefonda 26px) ve üç delik. İç bölümler kart değildir; kesik çizgilerle ayrılır.

### Inputs / Fields
- **Style:** `leaf` zemin, 2px mürekkep çerçeve, 0px köşe, 54px yükseklik (telefonda 52px), 0 16px dolgu, 18px yazı; yer tutucu soluk mürekkep.
- **Focus:** Çerçeve kırmızıya döner; imleç kırmızı.
- **Satır içi düzenleme:** Görev metninin yerine geçen alan, 2px kırmızı çerçeve, satır yazı boyutunu korur.
- **Error:** Alanın altında kırmızı 15px metin, `role="alert"`.

### Onay kutusu
- 24px kare, 2px mürekkep çerçeve, `leaf` zemin; işaretliyken `ink` dolgu ve kare uçlu SVG tik (açık temada beyaz, koyu temada yaprak renginde). Biten görevin metni 2px üstü çizili ve soluk mürekkeptir.

### Görev satırı
- En az 64px, 16px aralıklı yatay dizi: onay kutusu, esneyen metin (19px, uzun sözcükler kırılır), ikon düğmeleri. Altında 1px kesik `line` çizgisi. Boş durum aynı çizgiyle biter: kalın mürekkep başlık (20px) ve soluk açıklama.

### Takvim sütunu (imza)
- Yukarıdan aşağı: ay ve yıl (Anton 36px), kırmızı dev gün numarası (sola -6px taşar), gün adı (Anton 46px), künye (hafta ve yılın günü, 14px soluk), sayaçlar (Anton 44px rakam üstte, 15px soluk etiket altta), dipte 2px mürekkep çizgili sahip satırı.

### Tamamlananları kopar (imza hareketi)
- Alt bilgide kırmızı 700 15px metin ve kesik çizgili 18px SVG; üzerine gelince altı çizilir. Basılınca biten her satır testere dişli kenarlarla maskelenir, `field` rengine döner ve 0.6s `cubic-bezier(.5, 0, .85, .4)` ile önce 3px sarkıp -1.5° döner, sonra 90px düşüp -8° dönerek kaybolur; satırlar 60ms arayla sırayla kopar. Kesik çizgi yaprakta kalır. Azaltılmış harekette süre 0.01s'ye iner.

## Do's and Don'ts

### Do:
- **Do** her yeni yüzeyi yaprağın içinde kur: `leaf` zemin, `wall` duvar, tepede `strip` cilt.
- **Do** satırları ve sütunları 1px kesik `line` çizgisiyle ayır; yapı çerçevelerini düz mürekkeple çiz.
- **Do** tarih ve sayıları Anton, tabular rakamla yaz; diğer her şeyi Archivo ile.
- **Do** kırmızıyı dolgu olarak kullanırken `red-bg` + `on-red`, metin olarak kullanırken `red` seç; koyu temada ikisi ayrışır.
- **Do** her renk için koyu tema değerini aynı token adıyla tanımla.
- **Do** odakta 2px kırmızı dış çizgi ve 3px boşluk kullan.
- **Do** hareketi kâğıt fiziğinde tut (yırtılma, düşme) ve `prefers-reduced-motion` altında kapat.

### Don't:
- **Don't** köşe yarıçapı verme; tek yuvarlak biçim cilt delikleridir.
- **Don't** düğme, alan veya satırlara gölge ekleme; gölge yalnızca takvim bloğundadır.
- **Don't** mavi veya üçüncü bir vurgu rengi ekleme; yaprak iki mürekkeple basılır.
- **Don't** Anton'u başlık, düğme veya görev metni için kullanma.
- **Don't** yaprağın içini ayrı kartlara bölme; bölümler kesik çizgiyle ayrılır.
