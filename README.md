# Veri Tabanı Yönetimi Projesi - Restoran Yönetim ve Sipariş Otomasyon Sistemi
Restoran işletmelerindeki masaların, ürün kategorilerinin, menülerin, siparişlerin ve ödeme süreçlerinin dijital ortamda yönetilebildiği, ilişkisel bir veritabanı altyapısına sahip web tabanlı bir otomasyon sistemidir. 

Amaç:
Günümüz restoran yönetiminde hız ve veri bütünlüğünün öneminden yola çıkarak; müşterilere QR kod tabanlı pratik ve hızlı bir deneyim sunmak, arka planda ise güçlü bir veritabanı mimarisiyle siparişlerin mutfak ve kasa süreçlerini anlık olarak eşzamanlı şekilde yönetmek ve raporlamaktır.

Temel Özellikler:
Müşteri Paneli (QR Menü):
Masaya özel üretilen QR kodlar ile tarayıcı üzerinden hızlı erişim.
Kategorize edilmiş ürün listesi (Çorbalar, Ana Yemekler, Tatlılar vb.).
Kolay sepet yönetimi ve anlık sipariş oluşturma.

Mutfak Paneli:
Masalardan gelen siparişlerin mutfak ekranına anlık olarak düşmesi.
Sipariş durumlarının güncellenmesi (Hazırlanıyor / Hazır).

Yönetici ve Kasa Paneli:
Menü, ürün fiyatları ve kategori yönetimi.
Masa durumlarının takibi (Boş / Dolu).
Günlük ciro, ödeme takibi ve geçmiş sipariş raporlama.

Rezervasyon Yönetimi:
İleri tarihli masa rezervasyonlarının alınması ve takibi.

Veri Tabanı:
Proje veri tabanı 8 tablodan oluşmaktadır.

1.kategoriler: Menüde bulunan ürün kategorilerinin ad ve açıklama bilgilerini tutar.

2.urunler: Restoranda satışa sunulan ürünlerin ad, fiyat, açıklama ve görsel bilgilerini tutar.

3.masalar: Restorandaki masaların numara, kapasite, durum ve QR kod bilgilerini tutar.

4.kullanicilar: Sistemde görev alan kullanıcıların ad, kullanıcı adı, şifre ve rol bilgilerini tutar.

5.siparisler: Masalara ait siparişlerin toplam tutar, durum ve oluşturulma tarihi bilgilerini tutar.

6.siparisdetaylari: Siparişlerde bulunan ürünlerin adet ve birim fiyat bilgilerini tutar.

7.odemeler: Siparişlere ait ödeme tutarı, ödeme türü ve ödeme tarihi bilgilerini tutar.

8.masarezervasyonlari: Masa rezervasyonlarına ait müşteri adı, telefon, rezervasyon tarihi ve kişi sayısı bilgilerini tutar.


ER Diyagramı:
Veritabanındaki tablolar, öznitelikler ve tablolar arasındaki ilişkiler aşağıdaki ER diyagramında gösterilmiştir.

![ER Diyagramı](https://github.com/user-attachments/assets/f2c3b31f-959d-403d-9469-62e8c83a9b69)


