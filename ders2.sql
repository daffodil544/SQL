create table proje1.person(
id int not null,
adi varchar(45),
soyAdi varchar(45),
yas int,
primary key(id)
);

insert into proje1.person values(1,"Ali","Korkmaz",17);
insert into proje1.person values(2,"Ahmet","Coban",12);

select * from proje1.person;


create table proje1.student(
id int not null,
ad varchar(45) not null,
not_ort double,
kayit_tarihi date,
primary key(id)
);

insert into proje1.student values(1,"Ali",85.85,curdate());

select * from proje1.student;

create table proje1.siniflar(
id int not null,
sinif_adi varchar(4) not null unique,
kayit_zamani datetime,
primary key(id)
);
insert into proje1.siniflar values(1,"2/A",now());
insert into proje1.siniflar values(2,"3/A","2023-03-08 20:10:15");
select * from proje1.siniflar;

create table proje1.kisiler(
id int not null auto_increment,
adi varchar(45),
primary key(id)
);

insert into proje1.kisiler(adi) values("Ali"); 
insert into proje1.kisiler(adi) values("Sena"); 
select * from proje1.kisiler; 

create table proje1.persons(
id int not null,
adi varchar(45),
yas int,
check(yas>18),
primary key(id)
);
insert into proje1.persons values(1, "Asya",20);
insert into proje1.persons values(2, "Can",18);


create table proje1.Orders(
id int not null,
price double,
orderDate datetime default now(), 
primary key(id)
);


insert into proje1.Orders(id, price) values(1, 35.55);
select * from proje1.Orders;

create table proje1.Orders2(
id int not null,
price double default 0,
orderDate datetime default now(),
primary key(id)
);
insert into proje1.Orders2(id) values(1);
select * from proje1.Orders2;

create table proje1.product(
id int auto_increment,
adi varchar(45) not null,
fiyat double,
check(fiyat>0),
adet int default 0,
num int not null unique,
kayit_tarihi datetime default now(),
primary key(id)
);
insert into proje1.product(adi,fiyat,adet,num) values("kitap",10,1,"2"); 
insert into proje1.product(adi,fiyat,adet,num) values("kalem",2,2,"4");
select * from proje1.product;


create table proje1.customer(
id int not null auto_increment,
adi varchar(45) not null,
adres varchar(50) not null ,
kayit_tarihi datetime default now(),
yas int not null,
check(yas>18),
primary key(id)
);
insert into proje1.customer(adi,adres,yas) values("Betul","Berlin",23); 
insert into proje1.customer(adi,adres,yas) values("Ceyda","Istanbul",23);
select * from proje1.customer;



