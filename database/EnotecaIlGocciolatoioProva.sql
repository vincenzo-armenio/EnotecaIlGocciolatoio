create database EnotecaIlGocciolatoioProva;

use EnotecaIlGocciolatoioProva;

CREATE TABLE utente (
	id int auto_increment primary key,
	email varchar(30),
    username varchar(30),
    pass varchar(20),
    ruolo boolean
    );
 alter table utente ADD COLUMN accesso boolean;   
 
    
create table ordine(
	id int auto_increment primary key,
    id_utente int references utente(id)
);    

create table prodotto( 
	id int not null auto_increment primary key,
    nome varchar(40),
    descrizione varchar(300),
    prezzo double,
    immagine varchar(50),
    nome_categoria varchar(20) references categoria(nome)
);
alter table prodotto ADD COLUMN anno int not null; 
alter table prodotto ADD COLUMN regione varchar(30) not null;
alter table prodotto ADD COLUMN gradazione double not null;
alter table prodotto ADD COLUMN formato int not null;
    
create table categoria(
	id int not null,
    nome varchar(25) primary key,
    descrizione varchar(300)
);

insert into categoria
values (1,'Vino','bevanda alcolica, ottenuta dalla fermentazione (totale o parziale) del frutto della vite, l uva (sia essa pigiata o meno), o del mosto.' );

insert into categoria
values (2,'Spumanti','Il vino spumante è un vino caratterizzato da rilevante effervescenza, dovuta ad anidride carbonica disciolta. Il termine "spumante" si riferisce allo sviluppo di spuma che è una manifestazione della effervescenza. Lo spumante è un vino speciale come i liquorosi e gli aromatizzati.' );

insert into categoria
values (3,'Birra','bevanda alcolica ottenuta tipicamente dalla fermentazione di mosto a base di malto d orzo, aromatizzata e amaricata con luppolo.' );

insert into categoria
values (4,'Champagne','Lo champagne è un vino spumante francese ad appellation di origine contrôlée prodotto con metodo classico, famoso in tutto il mondo e comunemente associato ai concetti di lusso e festa.' );

insert into categoria
values (5,'Superalcolici','Gin, Grappe, Rhum, Vodka, Whisky e tanto altro.' );

insert into categoria
values (6,'Amari','Uno amaro, o bitter, è una bevanda spiritosa dal gusto prevalentemente amaro, ottenuta da varie droghe vegetali, e usata, per le sue proprietà eupeptiche, come aperitivo o anche, se più ricca di alcol, come digestivo.' );

insert into categoria
values (7,'Confetture','Dai uno sguardo alle nostre confetture, vari tipi di creme e una vasta selezione di miele.' );

insert into categoria
values (8,'Cibo','Scopri i nostri prodotti di alimentari come pasta, tavolette di cioccolato e biscotti.' );



    