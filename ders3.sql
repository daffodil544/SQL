create table proje1.musteriler(
id int not null auto_increment,
ssn varchar(9) not null unique,
isim varchar(45),
adres varchar(255),
kayitTarihi datetime default now(),
yas int,
primary key(id)
);


insert into proje1.musteriler(ssn, isim, adres,yas) values ("123456780", "Ali", "Mersin",16);
insert into proje1.musteriler(ssn, isim, adres,yas) values ("123456781", "Sena", "Frankfurt",17);
insert into proje1.musteriler(ssn, isim, adres,yas) values ("123456782", "Ahmet", "Ankara",14);
insert into proje1.musteriler(ssn, isim, adres,yas) values ("123456783", "Yunus", "Bukres",25);
insert into proje1.musteriler(ssn, isim, adres,yas) values ("123456784", "Huzeyfe", "Bukres",28);
insert into proje1.musteriler(ssn, isim, adres,yas) values ("123456785", "Zafer", "Izmir",30);
select * from proje1.musteriler;

select isim,adres,yas from proje1.musteriler;

select kayitTarihi,isim from proje1.musteriler;

select * from proje1.musteriler where isim="Ali";
 
 select * from proje1.musteriler where yas>20;
 
 insert into proje1.musteriler(ssn, isim, adres,kayitTarihi,yas) values ("123456725", "Fuad", "Istanbul","2022-02-02 08:15:00",18); 
  select * from proje1.musteriler where kayitTarihi<"2023-01-01 00:00:00"; 
  
  select * from proje1.musteriler where isim="Ahmet" and yas>12; 
  
  select isim from proje1.musteriler where yas>15 and yas<29; 
  select * from proje1.musteriler where (id>= 2 and id<=4) or (yas>20);
  
  select * from proje1.musteriler where yas between 16 and 28;
  select * from proje1.musteriler where id between 2 and 5;
  
  select * from proje1.musteriler where id in(2,6,3);
  select * from proje1.musteriler where id=2 or id=3 or id=6;
  
  select * from proje1.musteriler where adres in("Istanbul","Bukres","Ankara");
  
  -- ilk harfi onemli degil -2. harfi l olsun sonu ne olursa olsun onemli degil
select * from proje1.musteriler where isim like "_l%";

select * from proje1.musteriler where isim like "_u%n%";


select * from proje1.musteriler where isim like "%z%";


select * from proje1.musteriler where isim like "__f%";
  
  select *from proje1.musteriler where ssn like "%82"; 
  
  select*from world.city where name like "com%"; 
  
  select*from proje1.musteriler where isim like "__n%"; 
  
  select*from proje1.musteriler where adres like "%k%";

