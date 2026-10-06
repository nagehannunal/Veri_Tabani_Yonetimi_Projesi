use RestoranOtomasyonDB;
go

insert into kategoriler (kategoriAdi, aciklama) values 
('Pizzalar', 'Özel soslu ve zengin içerikli çıtır pizza çeşitleri'),
('Atıştırmalıklar', 'Çıtır lezzetler ve başlangıç tabakları'),
('Tatlılar', 'Fırın ve çikolatalı tatlı çeşitleri'),
('İçecekler', 'Soğuk içecek çeşitleri');
go

insert into urunler (kategoriID, urunAdi, fiyat, aciklama, fotoUrl) values 
-- Pizzalar
(1, 'Karışık Pizza', 440.00, 'mozzarella, pizza sosu, mısır, mantar, sucuk, salam, biber, zeytin', 'karisik-pizza.jpg'),
(1, '4 Peynirli Pizza', 549.00, 'mozzarella, eski kars kaşarı, salamura peynir, gorgonzola', 'pizza-4peynirli.jpg'),
(1, 'Barbekü Pizza', 480.00, 'mozzarella, barbekü sos, mantar, küp tavuk, biber, mısır, soğan', 'pizza-barbeku.jpg'),
(1, 'Deniz Ürünleri Pizza', 590.00, 'mozzarella, deniz ürünleri karışımı, mısır, zeytin', 'pizza-denizuurnleri.jpg'),
(1, 'Hawaii Pizza', 460.00, 'mozzarella, pizza sosu, ananas, jambon', 'pizza-hawaii.jpg'),
(1, 'Ispanaklı Pizza', 450.00, 'mozzarella, pizza sosu, taze ıspanak, yumurta', 'pizza-ispanakli.jpg'),
(1, 'Margherita Pizza', 380.00, 'mozzarella peyniri, pizza sosu', 'pizza-margarita.jpg'),
(1, 'Pastırmalı & Salamlı & Sucuklu Pizza', 649.00, 'mozzarella peyniri, pizza sosu, pastırma, salam, sucuk', 'pizza-pastirma+salam+sucuk.jpg'),
(1, 'Salamlı Pizza', 490.00, 'mozzarella peyniri, pizza sosu, salam dilimleri', 'pizza-salam.jpg'),
(1, 'Vejetaryen Pizza', 420.00, 'mozzarella peyniri, pizza sosu, mantar, mısır, biber, zeytin, soğan', 'vejeteryan-pizza.jpg'),

-- Atıştırmalıklar 
(2, 'Çıtır Tavuk Topları', 100.00, 'Özel baharatlı çıtır tavuk atıştırmalığı', 'citir-tavuk-toplari.jpg'),
(2, 'Karışık Atıştırmalık', 180.00, 'Özel soslar eşliğinde karışık atıştırmalık tabağı', 'karisik-atistirmalik.jpg'),
(2, 'Nuggets', 90.00, 'Çıtır tavuk nuggets parçaları', 'nugget.jpg'),
(2, 'Patates Kızartması', 90.00, 'Altın sarısı çıtır patates kızartması', 'patates-kizartmasi.jpg'),
(2, 'Soğan Halkası', 90.00, 'Çıtır kaplamalı lezzetli soğan halkaları', 'sogan-halkasi.jpg'),

-- Tatlılar
(3, 'Çikolatalı Sufle', 140.00, 'İçi akışkan sıcak çikolatalı kek ve dondurma ile', 'cikolatali-sufle.jpg'),
(3, 'Tiramisu', 150.00, 'Mascarpone peynirli ve kahve aromalı geleneksel İtalyan tatlısı', 'tiramisu.jpg'),
(3, 'Waffle', 180.00, 'Taze meyveler, çikolata sos ve özel waffle hamuru ile', 'waffle.jpg'),

-- İçecekler 
(4, 'Ayran', 40.00, 'Taze yayık ayranı', 'ayran.jpg'),
(4, 'Çay', 30.00, 'Demli geleneksel Türk çayı', 'cay.jpg'),
(4, 'Soğuk Çay (Ice Tea)', 65.00, 'Ferahlatıcı soğuk çay çeşitleri', 'ice-tea.jpg'),
(4, 'Kola', 70.00, 'Soğuk kutu kola 330ml', 'kola.jpg'),
(4, 'Meyve Suyu', 60.00, 'Karışık kutu meyve suyu', 'meyve-suyu.jpg'),
(4, 'Sade Soda', 35.00, 'Doğal maden suyu', 'sade-soda.jpg'),
(4, 'Su', 20.00, 'Doğal kaynak suyu 500ml', 'su.jpg'),
(4, 'Türk Kahvesi', 60.00, 'Közde pişmiş köpüklü kahve', 'Turk-kahvesi.jpg');
go

insert into masalar (masaNo, kapasite, durum, qrKod) values 
(1, 2, 'Bos', 'QR_MASA_1'),
(2, 2, 'Bos', 'QR_MASA_2'),
(3, 4, 'Bos', 'QR_MASA_3'),
(4, 4, 'Bos', 'QR_MASA_4'),
(5, 6, 'Bos', 'QR_MASA_5'),
(6, 6, 'Bos', 'QR_MASA_6');
go

insert into kullanicilar (adSoyad, kullaniciAdi, sifre, rol) values 
('Sistem Yöneticisi', 'admin', 'Y111', 'Admin'),
('Kasa Personeli', 'kasiyer', 'K222', 'Kasa'),
('Mutfak Ekibi', 'mutfak', 'M333', 'Mutfak');
go