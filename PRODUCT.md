# Product

<!-- impeccable:product-schema 1 -->

## Platform

web

## Users

Ziya, Emir ve Mehmet: aynı işletmede çalışan küçük bir ekip. Her biri kendi iş görevlerini (müşteri aramaları, teklif kontrolü, sevkiyat planları, araç bakım/vize işleri gibi) takip eder. Kullanım masaüstü ve telefon arasında eşit bölünür: ofiste iş bilgisayarında açık bir sekme, dışarıda (sahada, araçta, müşteride) telefondan hızlı ekleme ve işaretleme.

## Product Purpose

Kişisel iş yapılacaklar listesi. Her kullanıcı kullanıcı adı ve şifreyle kayıt olur/giriş yapar ve sadece kendi görevlerini görür. Başarı: görev eklemek, tamamlamak ve kalan işleri bir bakışta görmek saniyeler sürer; hangi cihazdan girilirse girilsin aynı liste karşısındadır.

## Operating Context

- Gün içinde sık sık bakılır; ofiste sekme sürekli açık kalır, liste 20 saniyede bir ve sekmeye dönünce yenilenir.
- Telefonda hareket halinde, tek elle, kısa süreli kullanım.
- Görev metinleri kısa, Türkçe, iş odaklı (ör. "Bakiyesi olan müşteriler aranacak", "Doblo vize yapılacak").

## Capabilities and Constraints

- Tek dosya statik sayfa (`index.html`), GitHub Pages'te yayında: https://ziyakocak.github.io/todo/
- Veri Supabase'de (`todos` tablosu, RLS ile kullanıcı başına izole). Auth: kullanıcı adı + şifre (arka planda `<ad>@todo.example.com`), e-posta onayı yok, şifre sıfırlama yok.
- Özellikler: kayıt ol / giriş yap / çıkış, görev ekle, tamamla, çift tıklayarak düzenle, sil, Hepsi/Aktif/Tamamlanan filtresi, kalan sayısı, tamamlananları sil.
- Arayüz dili Türkçe.
- Kayıt herkese açık; kullanıcılar birbirinin listesini göremez.

## Brand Commitments

- Sistemin açık/koyu temasına uyum korunmalı.
- Şirket logosu, rengi veya isim yok; görsel dünya serbest.

## Evidence on Hand

- Gerçek görev örnekleri kullanıcıların kendi listelerinde; tasarım örneklerinde bunlara benzer, açıkça örnek olan metinler kullanılabilir.
- Müşteri, rakam veya başarı iddiası yok; uydurulmamalı.

## Product Principles

1. Hız her şeyden önce gelir: ekle, işaretle, çık.
2. Masaüstü ve telefon eşit vatandaştır; hiçbiri diğerinin küçültülmüş hali değildir.
3. Kişisel ve özeldir: kullanıcı yalnızca kendi işini görür.
4. Sakin bir iş aracı: gün boyu açık kalan sekmede göz yormaz.
