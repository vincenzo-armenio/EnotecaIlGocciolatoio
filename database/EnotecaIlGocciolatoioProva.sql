create database EnotecaIlGocciolatoioProva;

use EnotecaIlGocciolatoioProva;

CREATE TABLE utente(
	id int auto_increment primary key,
	email varchar(30),
    username varchar(30),
    pass varchar(70),
    ruolo varchar(70),
    citta varchar(40),
    cap int,
    via varchar(70),
    ncivico int
    );
 
 insert into utente(email,username,pass,ruolo)
values('pepcachitarr@gmail.com','pep','pep0','amministratore');

create table ordine(
	id int auto_increment primary key,
    id_utente int references utente(id)
);    

create table prodotto( 
	id int not null auto_increment primary key,
    nome varchar(40) not null,
    tipo varchar(50),
    descrizione varchar(300) ,
    prezzo double,
    sconto double,
    immagine varchar(50),
    anno int,
    regione varchar(30),
    gradazione int,
    formato int,
    quantita_magazzino int not null,
    nome_categoria varchar(20) references categoria(nome)
);

insert into prodotto(nome,descrizione,prezzo,immagine,anno,regione,gradazione,formato, quantita_magazzino, nome_categoria)
values('Brunello di Montalcino','Rubino intenso, bouquet complesso, con sentori di rosa appassita.', 129, './img/brunello.jpg', 2013, 'Toscana', 13,75,10,'Vino' );

insert into prodotto(nome,descrizione,prezzo,immagine,anno,regione,gradazione,formato, quantita_magazzino, nome_categoria)
values('Montepulciano D Abruzzo NEGUS','Cascina del Colle, vino rosso. ', 36, './img/montepulciano.jpg', 2013, 'Abruzzo', 16,75,10,'Vino' );

insert into prodotto(nome,descrizione,prezzo,immagine,anno,regione,gradazione,formato, quantita_magazzino, nome_categoria)
values('Doppio Magnum','Doppio Magnum 3 Litri Montepulciano d Abruzzo RISERVA in Cassa Legno Fattoria Giuseppe Savini ', 36, './img/doppiomagnum.jpg', 2012, 'Abruzzo', 14,300,10,'Vino' );

insert into prodotto(nome,descrizione,prezzo,immagine,anno,regione,gradazione,formato, quantita_magazzino, nome_categoria)
values('Champagne Brut Cristal','Uno Champagne che è pregevole se sorseggiato in meditazione. Ottimo anche in abbinamento a cibi delicati e pregiati come il caviale, il pesce, i molluschi e i crostacei tipo l’aragosta, l’astice, e le ostriche. Va servito alla temperatura di 8° C.', 225, './img/brutcristal.jpg', 2012, 'Francia', 12,75,10,'Champagne' );

insert into prodotto(nome,descrizione,prezzo,immagine,regione,gradazione,formato, quantita_magazzino, nome_categoria)
values('Champagne Cuvèe Rosè','La finitura di questo fantastico vino è luminosamente brillante, rosso e riccamente ornamentato da bollicine fresche e vivaci che animano il vino nel bicchiere. Al naso emerge a livello olfattivo con pieni sentori di piccoli frutti rossi selvatici come la fragola di bosco e l’uva spina.', 48, './img/cuveerose.jpg', 'Francia', 12,75,10,'Champagne' );

insert into prodotto(nome,descrizione,prezzo,immagine,anno,regione,gradazione,formato, quantita_magazzino, nome_categoria)
values('Champagne BELLE EPOQUE','Col tempo, quest’assemblaggio complesso ha sviluppato una ricchezza aromatica eccezionale, armoniosa ed equilibrata. All’inizio ritroviamo aromi di frutta bianca con cenni di ananas e fiori bianchi primaverili. ', 158, './img/belleepoque.jpg', 2012, 'Francia', 12,75,10,'Champagne' );

insert into prodotto(nome,descrizione,prezzo,immagine,regione,gradazione,formato, quantita_magazzino, nome_categoria)
values('Daarbulah 6X','Realizzata con una miscela di malti torrefatti e caramellati, aggiunta di avena e zucchero di canna grezzo, Daarbulah del birrificio Hammer è una birra in stile Imperial Stout dal colore scuro.', 132, './img/daarbulah.jpg', 'Francia', 25,33,10,'Birra' );

insert into prodotto(nome,descrizione,prezzo,immagine,regione,gradazione,formato, quantita_magazzino, nome_categoria)
values('Xocoveza 12X','Birra in stile Imperial Stout prodotta con aggiunta di caffè, vaniglia, cacao, peperoncino, noce moscata e cannella.', 99, './img/xocoveza.jpg', 'USA', 9,33,10,'Birra' );

create table categoria(
	id int not null,
    nome varchar(25) primary key,
    descrizione varchar(300)
);

create table productordered(
	product_id int not null,
    nome varchar(70),
    quantita int,
    order_id int references ordine(id)
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
