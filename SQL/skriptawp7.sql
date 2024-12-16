use master
go

drop database if exists edunovawp7;
go

create database edunovawp7;
go

use edunovawp7;
go

create table smjerovi(
sifra int not null primary key identity(1,1), --primarni kljuc
naziv varchar(50) not null,
trajanje int null, --null se ne mora pisat
cijena decimal(18,2),
vaucer bit, 
izvodiseod datetime
);

create table polaznici(
sifra int not null primary key identity(1,1), 
ime varchar(50) not null,
prezime varchar(50) not null,
oib char(11) null,
email varchar(100) not null
);

create table grupe(
sifra int not null primary key identity(1,1),
naziv varchar(20) not null,
smjer int not null references smjerovi(sifra), --vanjski kljuc
predavac varchar(50)
);

create table clanovi(
grupa int not null references grupe(sifra),
polaznik int not null references polaznici(sifra)
);

insert into smjerovi 
(naziv, trajanje, cijena, vaucer, izvodiseod) values
('Web programiranje',225,1254.99,1,'2024-09-07 17:00:00');

insert into smjerovi(naziv) values
-- 2
('Java programer'),
-- 3
('Serviser'),
-- 4
('Knjigovodstvo');

insert into grupe(naziv, smjer) values
-- 1
('WP6',1),
-- 2
('WP7',1),
-- 3
('JP27',2),
-- 4
('K12',4);

INSERT INTO polaznici (ime, prezime, email) VALUES 
('Ante', 'Janković', 'antejankovic86@gmail.com'),
('Stojan', 'Carić', 'stojancaric8@gmail.com'),
('Željko', 'Lučan', 'lucko1987vk@gmail.com'),
('Petar', 'Gudelj', 'gudelj.petar2005@gmail.com'),
('Krunoslav', 'Popić', 'kpopic@gmail.com'),
('Jurica', 'Ognjenović', 'ognjenovicjurica0610@gmail.com'),
('Lea', 'Bartoš', 'talulea@gmail.com'),
('Tomislav', 'Nađ', 'tomislav.nadj@gmail.com'),
('Martin', 'Galik', 'gale1508@gmail.com'),
('Ivan', 'Mišić', 'ivanmisic983@gmail.com'),
('Mirjam', 'Koški', 'mir.jam975@gmail.com'),
('Željko', 'Koški', 'zeljko.koski@gmail.com'),
('Mirza', 'Delagić', 'mirzadelagic@gmail.com'),
('Bruno', 'Čačić', 'bruno.cacic@gmail.com'),
('David', 'Nađ', 'david08.nadj@gmail.com'),
('Antonio', 'Macanga', 'macanga.antonio@gmail.com'),
('Nina', 'Zrno', 'ninaradakovic1234@icloud.com'),
('Marko', 'Berberović', 'marko.berberovic@skole.hr'),
('Tomislav', 'Nebes', 'tomislav.nebes@gmail.com'),
('Klara', 'Nađ', 'klara.nad@gmail.com'),
('Maja', 'Šteler', 'maja5steler@gmail.com'),
('Milan', 'Drača', 'milan.draca@gmail.com'),
('Marin', 'Vranješ', 'marinvranjes123@gmail.com'),
('Boris', 'Bukovec', 'botaosijek@gmail.com'),
('Luka', 'Jurak', 'jurakluka18@gmail.com'),
('Ivan', 'Strmečki', 'ivan.strmecki8@gmail.com'),
('Bruno', 'Bašić', 'brunobasic031@gmail.com');


insert into clanovi(grupa, polaznik) values
(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),
(2,9),(2,10),(2,11),(2,12),(2,13),(2,14),(2,15),(2,16),
(2,17),(2,18),(2,19),(2,20),(2,21),(2,22),(2,23),(2,24),
(2,25),(2,26),(2,27),

(3,7),(3,17),(3,27);