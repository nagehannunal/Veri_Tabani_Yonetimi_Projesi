create database RestoranOtomasyonDB;
go

use RestoranOtomasyonDB;
go

create table kategoriler(
kategoriID int identity(1,1) primary key,
kategoriAdi varchar(100) not null,
aciklama varchar(300) null
);

create table urunler(
urunID int identity(1,1) primary key,
kategoriID int not null foreign key references kategoriler(kategoriID),
urunAdi varchar(150) not null,
fiyat decimal(10,2) not null,
aciklama varchar(300) null,
fotoUrl varchar(255) NULL
);

create table masalar(
masaID int identity(1,1) primary key,
masaNo int not null unique,
kapasite int not null,
durum varchar(20) not null default 'Bos' check (durum in ('Bos' ,'Dolu','Rezerve')),
qrKod varchar(500) null
);

create table kullanicilar(
kullaniciID int identity(1,1) primary key,
adSoyad varchar(150) not null,
kullaniciAdi varchar(70) not null unique,
sifre varchar(100) not null,
rol varchar(30) not null check (rol in ('Admin', 'Kasa', 'Mutfak') )
);

create table siparisler(
siparisID int identity(1,1) primary key,
masaID int not null foreign key references masalar(masaID),
toplamTutar decimal(10,2) not null default 0.00,
siparisDurumu varchar(30) not null default 'Bekliyor' check (siparisDurumu in('Bekliyor', 'Hazirlaniyor', 'Hazir', 'TeslimEdildi', 'Iptal')),
olusturmaTarihi datetime not null default getdate()
);

create table siparisdetaylari(
detayID int identity(1,1) primary key,
siparisID int not null foreign key references siparisler(siparisID),
urunID int not null foreign key references urunler(urunID),
adet int not null check (adet > 0),
birimfiyat decimal(10,2) not null
);

create table odemeler(
odemeID int identity(1,1) primary key,
siparisID int not null foreign key references siparisler(siparisID),
tutar decimal(10,2) not null,
odemeTuru varchar(30) not null check(odemeTuru in ('Nakit', 'KrediKarti', 'Online')),
odemeTarihi datetime not null default getdate()
);

create table masarezervasyonlari(
rezervasyonID int identity(1,1) primary key,
masaID int not null foreign key references masalar(masaID),
musteriAd varchar(150) not null,
telefon varchar(20) not null,
rezervasyonTarihi datetime not null,
kisiSayisi int not null
);