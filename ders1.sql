SELECT * FROM proje1.ogrenciler;

-- --create schema proje2

create table proje1.dersler(
id int not null,
dersAdi varchar(45),
kont int,
primary key(id)
);
create table proje1.urunler(
urunId int not null,
urunAdi varchar(50),
urunFiyati double,
primary key(urunId)
)
