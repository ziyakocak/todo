---
version: 1
slug: "index-html"
primary_target: "index.html"
related_targets: []
---

# Surface brief: index.html (giriş + kişisel liste)

Scope: tek sayfa uygulama, giriş/kayıt ekranı ve kullanıcının görev listesi. Mode: Operate.
Audience/job: aynı işletmedeki küçük ekip; masaüstünde gün boyu açık sekme, telefonda sahada hızlı ekle/işaretle.
Constraints: sistem açık/koyu temasına uyum zorunlu; Türkçe; tek dosya statik sayfa, Supabase.
Memorable moment: "Tamamlananları kopar" ile biten işler takvim yaprağı gibi koparılıp düşer.

## Direction contract

THESIS: Liste, ofis duvarındaki koparmalı günlük takvimin bugünkü yaprağıdır; ortada bir kart, gri zemin, mavi vurgu ve küçük başlıklı kategori düzenini reddeder.
OWN-WORLD: Gri duvar üstünde beyaz ince yaprak, üstte siyah ciltleme şeridi ve delikler, iki renk baskı: siyah mürekkep ve takvim kırmızısı (#c8102e). Anton dar kalın rakamlar, Archivo gövde. Kesik çizgili delikli ayraçlar. Koyu temada yaprak kömür grisine, kırmızı daha açık tona çevrilir.
STORY: Kullanıcı bugünün tarihini ve kalan iş sayısını bir bakışta görür, işini ekler, işaretler, gün sonunda bitenleri koparır.
FIRST VIEWPORT: Masaüstünde tek yaprak: solda 420px tarih sütunu (ay, dev kırmızı gün numarası, gün adı, kalan/biten sayaçları, en altta yaprağın sahibi ve çıkış); sağda "Bugünün işleri" başlığı ve filtre sekmeleri, altında ekleme alanı ve kırmızı Ekle düğmesi, delikli çizgilerle ayrılmış görev satırları, en altta "Tamamlananları kopar". Telefonda tarih üstte yatay şerit olur.
FORM: Takvim Yaprağı, sıralı listemde 1. aday (IMPECCABLE'S PICK). seed:8fd9e8b3ec7ec8a5
SIGNATURE: Tamamlananları kopar: biten satırlar delikli çizgiden yırtılıp aşağı düşer, sonra silinir.
FINISH: unreviewed and undocumented is unfinished; this build ends with the finish review, the verdict, DESIGN.md, and every shipping raster carrying its provenance
