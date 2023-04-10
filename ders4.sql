create table proje1.personel(
id int  not null primary key,
ad varchar(50),
bolum varchar(50),
yas int,
maas double
);


insert into proje1.personel values(1, "Yunus", "Bakim", 16, 4800.50);
insert into proje1.personel values(2, "Sena", "Personel", 15, 4250.25);
insert into proje1.personel values(3, "Ali", "Personel", 17, 5000.25);
insert into proje1.personel values(4, "Ahmet", "Yonetim", 14, 7000.50);
insert into proje1.personel values(5, "Zafer", "Yonetim", 16, 8000.50);
insert into proje1.personel values(6, "Tugrul", "Yonetim", 25, 25000.50);
insert into proje1.personel values(7, "Huzeyfe", "Tesis", 15, 5000.50);
insert into proje1.personel values(8, "Huzeyfe", "Bakim", 15, 8000.50);


-- count kullanimi =>Bize yaptigimiz sorgulama sonucunda kac tane kayit oldugunu verir  

select count(id) as personel_sayisi from proje1.personel;


-- yasi 15 ten fazla olanlarin sayisini listeleyelim
select count(id) as yasi_15_buyuk from proje1.personel where yas>15;

-- ismi Huzeyfe olanlarin sayisini listeleyelim

select count(id) as huzeyfe from proje1.personel where ad="Huzeyfe";


select count(ad) as kisi_sayisi from proje1.personel;

-- ismi farkli olanlarin sayisini listeleyelim

select count(distinct(ad)) as farkli_isim_kisi_sayisi from proje1.personel;


-- sum kullanimi => belirtilen kolondaki verilerin toplamini bize verir

select sum(maas) as toplam_maas from proje1.personel;

-- yonetim bolumune ne kadar maas veriyoruz

select sum(maas) as yonetim_maasi from proje1.personel where bolum="Yonetim";

-- yasi 16 dan fazla ve bolumu yonetim olanlarin toplam maasi 

select sum(maas) as yonetim_yasi_16danbuyuk from proje1.personel where yas>16 and bolum="Yonetim";


-- ismi Huzeyfe olanlarin yaslari toplami 

 select sum(yas) as huzeyfe_yas_toplami from proje1.personel where ad="Huzeyfe";
 
 
 -- Max kullanimi => bir kolondaki maximum degeri verir
 
 select max(maas) as max_maas from proje1.personel;
 
 -- yasi en buyuk olani listeleyelim
 
 select max(yas) as enBuyuk from proje1.personel;
 
 -- yasi en buyuk olanin tum bilgilerini getiriniz
 
 select * from proje1.personel where yas=(select max(yas) from proje1.personel);
 
 select * from proje1.personel where yas=25;
 
 -- min kullanimi => belirtilen kolondaki en dusuk elemani verir
 
 
 select min(maas) as min_maas from proje1.personel;
 
 -- en kucuk personelin yasini listeleyelim
 
 select min(yas) as en_kucuk from proje1.personel;
 
 -- en kucuk personelin ismini listeleyiniz
 
 select ad from proje1.personel where yas=(select min(yas) as en_kucuk from proje1.personel);
 
 -- maasi en dusuk veya isminde a harfi bulunanlarin tum bilgilerini listele
 select * from proje1.personel where ad like "%a%" or maas=(select min(maas) from proje1.personel);
 
 -- avg kullanimi=> Verilen kolondaki ortalayi hesaplar
 
select avg(maas) as ortalama_maas from proje1.personel;

-- yas ortalamasini hesaplayalim

select avg(yas) as yas_ortalama from proje1.personel;

 -- yaslari yas ortalamasinin uzerinde olanlarin maaslari ortalamasini listeleyiniz
 
 select avg(maas) as yaslilarin_maas_ort from proje1.personel where yas>(select avg(yas) from proje1.personel);
 
 
 -- Upper yada ucase kullanimi => String olan kolonlari buyuk harfe ceviriyor
 select ad,yas,upper(ad) as buyuk_harfli from proje1.personel;
 
  select ad,yas,ucase(ad) as buyuk_harfli from proje1.personel;
 
 -- bolum isimlerini buyuk harfe ceviriniz-- 
 
 select upper(bolum) as bolumler from proje1.personel;
 
 -- lower yada lcase=> belirtilen kolondaki Stringleri kucuk harfe cevirir
 select ad, lower(ad) as kucukharfli_ad from proje1.personel;
 
  -- bolum isimlerini kucuk harfe ceviriniz-- 
 select lcase(bolum) as bolum_kucuk_harfli from proje1.personel;
 
 
 -- length kullanimi => length ile istenilen kolondaki Stringlerin uzunlugu elde edilir
select ad, length(ad) as uzunluk from proje1.personel;
select bolum, length(bolum) as uzunluk from proje1.personel;
-- substr kullanimi =>substring ile ayni mantikta calisir

-- substr(kolon, kacinci karakter den baslayacak , kac karakter gidecek)
-- 3. karakterden baslacak sonuna kadar gidecek

select ad, substr(ad, 3) as parcali_isim from proje1.personel;
-- 3. karakterden baslayacak 2 karakter gidecek
select ad, substr(ad, 3,2) as parcali_isim from proje1.personel;

select ad, substr(ad, 1,1) as parcali_isim from proje1.personel;

-- bolumler icinde 2 karakterden baslayip 2 karakter sonrasina kadar kismi yazdiriniz

select substr(bolum, 2,2) as parcali_bolum from proje1.personel;

-- round kullanimi -> ondalikli sayilari yuvarlamak icin kullanilir
select round(maas,1) as yuvarlanmis_maas from proje1.personel;

-- maas ortalamasini virgulden sonra 2 basamak olacak sekilde yazdiriniz
select round(avg(maas),2) as maas_ort from proje1.personel;

-- limit kullanimi-> istenilen sayi kadar elemanlari listelemek icin kullanilir
select * from proje1.personel limit 2;
                                 -- limit atlama sayisi,getirilen kayit sayisi
select * from proje1.personel limit 3,2;      

-- order by =>siralama yapmak icin kullanilir
-- desc buyukten kucuge , asc yada hicbir sey yazmazsak kucukten buyuge
select * from proje1.personel order by maas;
select * from proje1.personel order by maas desc;
select * from proje1.personel order by maas asc;

-- maasa gore siralayip maasi en buyuk olan kisinin bilgilerini yazdiriniz
select * from proje1.personel order by maas desc limit 1;

select yas from proje1.personel where bolum in("Yonetim","Bakim") and yas>15 order by yas asc limit 1;

select * from proje1.personel where yas=(select yas from proje1.personel where bolum in("Yonetim", "Bakim")and yas>15 order by yas asc limit 1)and bolum in("Bakim", "Yonetim");  

select * from proje1.personel where ad like "%a%" order by ad;  

select maas from proje1.personel where maas>(select avg(maas) from proje1.personel) order by maas limit 1;

-- yas oratalamasinin uzerinde olanlardan en dusuk maas alanin tum bilgilerini getirelim

select * from proje1.personel where maas=(select maas from proje1.personel where yas>(select avg(yas) from proje1.personel) order by maas limit 1);
select * from proje1.personel where maas=(select min(maas) from proje1.personel where yas>(select avg(yas) from proje1.personel));

delete from proje1.personel where id=1;
set sql_safe_updates=0;
-- tum tabloyu silme
delete from proje1.personel;
-- yonetim bolumundeki tum kisiler
delete from proje1.personel where bolum="Yonetim";
-- maasi ortalamanin uzerinde olan maasi en dusuk olan kisiyi siliniz
delete from proje1.personel where maas>(select avg(maas) from proje1.personel order by maas limit 1);

start transaction;

savepoint asd;

delete from proje1.personel where id=1;
rollback to asd;


select * from proje1.personel;
