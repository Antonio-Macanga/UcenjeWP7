use master;
go
drop database if exists vjezba1;
go
create database vjezba1;
go
use vjezba1;
go

create table ispitniRok(
sifra int not null primary key identity(1,1),
predmet varchar(50) not null,
vrstaIspita varchar(25) not null,
datum datetime,
pristupio varchar(20) not null
);

create table pristupnici(
ispitniRok int references ispitniRok(sifra) not null,
student varchar(50) not null,
brojBodova int not null,
ocjena int not null
);