ALTER SESSION set NLS_DATE_FORMAT='YYYY-MM-DD';

BEGIN
INSERT INTO Klient VALUES ('1','Julian','Kwiatkowski','754932872','jul.kwiatkowski@gmail.com','1112223344');
INSERT INTO Klient VALUES ('2','Emil','Mróz','658742198','em.mroz@gmail.com','1657942684');
INSERT INTO Klient VALUES ('3','Alfred','Szczepański','349755189','alf.szczepanski@gmail.com','3289467211');
INSERT INTO Klient VALUES ('4','Roman','Piotrowski','664982711','rom.piotrowski@gmail.com','6674993281');
INSERT INTO Klient VALUES ('5','Hubert','Sokołowski','448519687','hub.sokolowski@gmail.com','6647781597');
INSERT INTO Klient VALUES ('6','Rafał','Szymański','996574281','raf.szymanski@gmail.com','3284197548');
INSERT INTO Klient VALUES ('7','Dobromił','Jankowski','234819759','dob.jankowski@gmail.com','9485721864');
INSERT INTO Klient VALUES ('8','Norbert','Michalak','948571685','norb.michalak@gmail.com','6587428419');
INSERT INTO Klient VALUES ('9','Henryk','Malinowski','458217635','hen.malinowski@gmail.com','5721857359');
INSERT INTO Klient VALUES ('10','Przemysław','Czarnecki','165728439','przem.czarnecki@gmail.com','6572189648');
INSERT INTO Klient VALUES ('11','Felicja','Pawlak','655482197','fel.pawlak@gmail.com','7549632158');
INSERT INTO Klient VALUES ('12','Joanna','Kamińska','224869376','asia.kaminska@gmail.com','6648221973');
INSERT INTO Klient VALUES ('13','Barbara','Wójcik','642881937','barbara.wojcik@gmail.com','4822731968');
INSERT INTO Klient VALUES ('14','Teresa','Ostrowska','655711193','teresa.ostrowska@gmail.com','4457663289');
INSERT INTO Klient VALUES ('15','Franciszka','Zalewska','458229618','fran.zalewska@gmail.com','2217469328');
END;

/

BEGIN
INSERT INTO Atrakcje VALUES ('1','Siłownia','Otwarta 24/7');
INSERT INTO Atrakcje VALUES ('2','Pole golfowe','Powierzchnia: 5km^2');
INSERT INTO Atrakcje VALUES ('3','Tenis', 'W ośrodku zlokalizowanych jest kilka boisk do tenisa ziemnego');
INSERT INTO Atrakcje VALUES ('4','Basen kryty','Posiada kilka stref odpowiednich dla wieku');
INSERT INTO Atrakcje VALUES ('5','Kompleks wodny ','Posiada kilka stref odpowiednich dla wieku');
INSERT INTO Atrakcje VALUES ('6','Windsurfing','Byli zawodowcy w roli opiekunów');
INSERT INTO Atrakcje VALUES ('7','Zjeżdżalnie','10 różnych typów zjężdżalni');
INSERT INTO Atrakcje VALUES ('8','Plac zabaw', 'Nowoczesny plac zabaw stawiający na rozwój poprzez zabawę');
INSERT INTO Atrakcje VALUES ('9','Drink bar','Wykwalifikowani barmani, drinki z każdego zakątka świata');
INSERT INTO Atrakcje VALUES ('10','SPA','Najlepsi masażyści i masażystki z całego świata');
END;

/
BEGIN
INSERT INTO Pracownik VALUES ('1','Helena','Sikora','Menadżer','954281963','helena.sikorska@gmail.com');
INSERT INTO Pracownik VALUES ('2','Gabriela','Sawicka','Obsługa Klienta','218243958','gab.sawicka@gmail.com');
INSERT INTO Pracownik VALUES ('3','Emilia','Rutkowska','Księgowy','954281963','e.rutkowska@gmail.com');
INSERT INTO Pracownik VALUES ('4','Kinga','Sobczak','Kierownik biura','482186357','kinga.sobczak@gmail.com');
INSERT INTO Pracownik VALUES ('5','Nikola','Krawczyk','Księgowy','682557196','nikola.krawczyk@gmail.com');
INSERT INTO Pracownik VALUES ('6','Janusz','Witkowski','Obsługa Klienta','4218885739','janusz.witkowski@gmail.com');
INSERT INTO Pracownik VALUES ('7','Eustachy','Andrzejewski','Menadżer','662549358','eust.andrzejewski@gmail.com');
INSERT INTO Pracownik VALUES ('8','Aureliusz','Lis','Księgowy','257934821','aureliusz.lis@gmail.com');
INSERT INTO Pracownik VALUES ('9','Patrzk','Andrzejewski','Właściciel','648219379','pat.andrzejewski@gmail.com');
INSERT INTO Pracownik VALUES ('10','Miron','Kamiński','Obsługa Klienta','518324972','miron.kaminski@gmail.com');
END;

/
BEGIN
INSERT INTO Uslugi VALUES ('1','Kurs windsurfingu', 'Zajęcia prowadzone przez zawodowców');
INSERT INTO Uslugi VALUES ('2','Kurs tańca', 'Zajęcia prowadzone przez zawodowców');
INSERT INTO Uslugi VALUES ('3','Kurs pływania i nurkowania', 'Zajęcia prowadzone przez zawodowców');
INSERT INTO Uslugi VALUES ('4','Oprowadzanie z przewodnikiem', 'Przewodnik oprowadzi Państwa po najciekawszych miejscach w okolicy');
INSERT INTO Uslugi VALUES ('5','Masaż tajski', ' Wykonywany przez doświadczonych masażystów');
INSERT INTO Uslugi VALUES ('6','Wynajem samochodu', 'Samochody przystosowane do terenu');
INSERT INTO Uslugi VALUES ('7','Wypożyczalnia rowerów,hulajnóg', 'Zapoewniają swobodę ruchu przy zwiedzaniu okolicy');
INSERT INTO Uslugi VALUES ('8','Wynajem sprzetu,wózków golfowych', 'Zajęcia prowadzone przez zawodowców');
INSERT INTO Uslugi VALUES ('9','Organizacja imprez i wydarzeń','Wynajem sali wraz z obsługą');
INSERT INTO Uslugi VALUES ('10','Kurs gry w golfa', 'Zajęcia prowadzone przez zawodowców');
END;

/
BEGIN
INSERT INTO REZ VALUES ('1','Emil','Mróz','2019-07-10','Gotówka','4',6);
INSERT INTO REZ VALUES ('2','Julian','Kwiatkowski','2017-05-24','Przelew','2',6);
INSERT INTO REZ VALUES ('3','Dobromił','Jankowski','2018-02-05','Karta','3',2);
INSERT INTO REZ VALUES ('4','Barbara','Wójcik','2020-05-15','Gotówka','5',10);
INSERT INTO REZ VALUES ('5','Teresa','Ostrowska','2021-10-01','Karta','2',10);
INSERT INTO REZ VALUES ('6','Rafał','Szymański','2015-12-31','Gotówka','2',2);
INSERT INTO REZ VALUES ('7','Alfred','Szczepański','2017-09-17','Karta','1',6);
INSERT INTO REZ VALUES ('8','Felicja','Pawlak','2019-07-10','Przelew','4',2);
INSERT INTO REZ VALUES ('9','Emil','Mróz','2021-03-14','Gotówka','3',6);
INSERT INTO REZ VALUES ('10','Norbert','Michalak','2015-11-26','Przelew','2',10);
END;

/
BEGIN
INSERT INTO Wyc VALUES ('1','30','400','Egipt','Kair','Wycieczka do Stolicy Egiptu');
INSERT INTO Wyc VALUES ('2','35','320','Hiszpania','Barcelona','Zwiedzanie i obejrzenie stadionu Camp Nou słynnego klubu FC Barcelona');
INSERT INTO Wyc VALUES ('3','20','480','Francja','Paryż','Wjazd na szczyt wieży Eiffla i oglądanie dzieł sztuki Luwrze');
INSERT INTO Wyc VALUES ('4','45','280','Ukraina','Lwów','Zwiedzanie i oglądanie dziedzictwa kulturowego');
INSERT INTO Wyc VALUES ('5','34','340','Włochy','Rzym','Wejście i zwiedzanie Koloseum');
INSERT INTO Wyc VALUES ('6','28','550','USA','New York','Oglądanie Statuły Wolności, zwiedzanie Mannhatanu');
INSERT INTO Wyc VALUES ('7','38','300','Chińska Republika Ludowa','Pekin','Zwiedzanie Zakazanego Miasta');
INSERT INTO Wyc VALUES ('8','55','250','Czechy','Praga','Zwiedzaniu Placu Wacława');
INSERT INTO Wyc VALUES ('9','15','1000','Zjednoczone Emiraty Arabskie','Dubaj','Jedno z najbardziej eksluzywnych miast świata');
INSERT INTO Wyc VALUES ('10','70','400','Polska','Warszawa','Wjazd na szczyt Pałacu Kultury, pobyt w Centrum Nauki im.Kopernika');
END;

/
BEGIN
INSERT INTO Zam VALUES ('1','4','2019-07-09','2019-07-10','Gotówka', 2,6,6);
INSERT INTO Zam VALUES ('2','2','2017-05-23','2017-05-24','Przelew', 1,3,6);
INSERT INTO Zam VALUES ('3','3','2018-02-04','2018-02-05','Karta', 7,7,2);
INSERT INTO Zam VALUES ('4','5','2020-05-14','2020-05-15','Gotówka', 13,3,10);
INSERT INTO Zam VALUES ('5','2','2021-09-30','2021-10-01','Karta', 14,9,10);
INSERT INTO Zam VALUES ('6','2','2015-12-20','2015-12-31','Gotówka', 6,1,2);
INSERT INTO Zam VALUES ('7','1','2017-09-15','2017-09-17','Karta', 3,5,6);
INSERT INTO Zam VALUES ('8','4','2019-07-08','2019-07-10','Przelew', 11,2,2);
INSERT INTO Zam VALUES ('9','3','2021-03-13','2021-03-14','Gotówka', 2,7,6);
INSERT INTO Zam VALUES ('10','2','2015-11-25','2015-11-26','Przelew', 8,10,10);
END;

/
BEGIN
INSERT INTO Uczestnicy VALUES ('1','Marianna','Mróz','Kwiatowa 35','23-400','Biłgoraj','Polska','986248195',2);
INSERT INTO Uczestnicy VALUES ('2','Jarosław','Mróz','Kwiatowa 35','23-400','Biłgoraj','Polska','986218195',2);
INSERT INTO Uczestnicy VALUES ('3','Joanna','Mróz','Kwiatowa 35','23-400','Biłgoraj','Polska','842193574',2);
INSERT INTO Uczestnicy VALUES ('4','Alicja','Kwiatkowski','Malinowa 5','35-067','Rzeszów','Polska','255489167',1);
INSERT INTO Uczestnicy VALUES ('5','Marianna','Jankowska','Polna 11','23-400','Biłgoraj','Polska','568462544',7);
INSERT INTO Uczestnicy VALUES ('6','Katarzyna','Jankowska','Polna 11','23-400','Biłgoraj','Polska','561462594',7);
INSERT INTO Uczestnicy VALUES ('7','Katarzyna','Wójcik','Kolorowa 33a','32-084','Rzeszów','Polska','786452446',13);
INSERT INTO Uczestnicy VALUES ('8','Oliwia','Wójcik','Kolorowa 33a','32-084','Rzeszów','Polska','463485645',13);
INSERT INTO Uczestnicy VALUES ('9','Janusz','Wójcik','Kolorowa 33a','32-084','Rzeszów','Polska','551339452',13);
INSERT INTO Uczestnicy VALUES ('10','Jerzy','Wójcik','Kolorowa 33a','32-084','Rzeszów','Polska','782146988',13);
INSERT INTO Uczestnicy VALUES ('11','Małgorzata','Ostrowska','Mickiewicza 3a','32-084','Rzeszów','Polska','786452446',14);
INSERT INTO Uczestnicy VALUES ('12','Aleksander','Szymański','Wilcza 1a','32-084','Rzeszów','Polska','456245687',6);
INSERT INTO Uczestnicy VALUES ('13','Julia','Pawlak','Cicha 111a','23-400','Biłgoraj','Polska','786452446',11);
INSERT INTO Uczestnicy VALUES ('14','Oliwia','Pawlak','Cicha 111a','23-400','Biłgoraj','Polska','786452446',11);
INSERT INTO Uczestnicy VALUES ('15','Konrad','Pawlak','Cicha 111a','23-400','Biłgoraj','Polska','786452446',11);
INSERT INTO Uczestnicy VALUES ('16','Aleksandra','Mróz','Kwiatowa 35','23-400','Biłgoraj','Polska','456456215',2);
INSERT INTO Uczestnicy VALUES ('17','Kamil','Mróz','Kwiatowa 35','23-400','Biłgoraj','Polska','456123488',2);
INSERT INTO Uczestnicy VALUES ('18','Marianna','Michalak','Powstańców 33','02-644','Warszawa','Polska','485642357',8);
END;

/
BEGIN
INSERT INTO Lokalizacja VALUES ('1','Św.Sczepana 56','67-024','Kair','Egipt');
INSERT INTO Lokalizacja VALUES ('2','Jana Pawła 75','52-862','Barcelona','Hiszpania');
INSERT INTO Lokalizacja VALUES ('3','Żabia 42','08-978','Paryż','Francja');
INSERT INTO Lokalizacja VALUES ('4','Lwia 752','12-123','Lwów','Ukraina');
INSERT INTO Lokalizacja VALUES ('5','Makaronowa 758','98-765','Rzym','Włochy');
INSERT INTO Lokalizacja VALUES ('6','Równości 77','52-657','New York','USA');
INSERT INTO Lokalizacja VALUES ('7','Wolności 66','94-423','Pekin','Chińska Republika Ludowa');
INSERT INTO Lokalizacja VALUES ('8','Piwna 52A','34-765','Praga','Czechy');
INSERT INTO Lokalizacja VALUES ('9','Bogata 876','42-856','Dubaj','Zjednoczone Emiraty Arabskie');
INSERT INTO Lokalizacja VALUES ('10','Lipowa 165A','02-067','Warszawa','Polska');
END;

/
BEGIN
INSERT INTO Hotele VALUES ('1','Jaz Maraya','5','721895487','jaz-maraya.com','Położony w pieknej okolicy, w widokiem na morze',1);
INSERT INTO Hotele VALUES ('2','Los Zocos','3','458219768','los-zocos.com','Plaże położone blisko hotelu, w dzielnicy przepychu',2);
INSERT INTO Hotele VALUES ('3','Paris Opera','4','359428762','paris-op.com','Posiada piękny widok na Wieżę Eiffla oraz miasto nocą',3);
INSERT INTO Hotele VALUES ('4','Dnister','3','952872189','jaz-maraya.com','Słynie ze swojego balansu ceny do jakości',4);
INSERT INTO Hotele VALUES ('5','Artis','4','358217652','artis.com','Restauracja serwuje najsłynniejsze włoskie specjały',5);
INSERT INTO Hotele VALUES ('6','Edison New York','5','952487215','edison-ny.com','Leży w niedalekiej  odległości od słynnego Times Square',6);
INSERT INTO Hotele VALUES ('7','Oriental Culture','3','665821885','oriental-culture.com','Egzotyczne potrawy, niespotykane atrakcje',7);
INSERT INTO Hotele VALUES ('8','Walt Stein','2','935587218','walt-stein.com','Przestronne pokoje, hotel współpracuje z lokalnym browarem',8);
INSERT INTO Hotele VALUES ('9','Address Sky View','5','958874582','sky-view.com','Jeden najwyższych budynków w Dubaju, posiada zapierający dech w piersiach widok',9);
INSERT INTO Hotele VALUES ('10','Hotel Warszawa','4','335241854','h-warszawa.com','Położony w pobliżu starego miasta,z widokiem na rzekę',10);
END;

/
BEGIN
insert into hotele_wyc values ('2019-07-20','2019-07-25',1,1);
insert into hotele_wyc values ( '2019-05-25','2019-05-28',2,2);
insert into hotele_wyc values ( '2018-02-07','2018-02-15',3,3);
insert into hotele_wyc values ( '2020-05-17','2020-05-19',4,4);
insert into hotele_wyc values ( '2021-10-10','2021-10-20',5,5);
insert into hotele_wyc values ( '2016-01-20','2016-01-24',6,6);
insert into hotele_wyc values ( '2017-09-21','2017-09-29',7,7);
insert into hotele_wyc values ( '2019-07-12','2019-07-13',8,8);
insert into hotele_wyc values ( '2021-03-15','2021-03-19',9,9);
insert into hotele_wyc values ( '2015-11-29','2015-11-30',10,10);
END;

/
BEGIN
insert into atrakcje_wyc values ('20','10','200',1,1);
insert into atrakcje_wyc values ('10','5','111',2,2);
insert into atrakcje_wyc values ('5','3','222',3,3);
insert into atrakcje_wyc values ('7','4','213',4,4);
insert into atrakcje_wyc values ('30','20','231',5,5);
insert into atrakcje_wyc values ('15','8','333',6,6);
insert into atrakcje_wyc values ('11','9','412',7,7);
insert into atrakcje_wyc values ('18','10','123',8,8);
insert into atrakcje_wyc values ('12','11','344',9,9);
insert into atrakcje_wyc values ('11','9','521',10,10);
END;

/
BEGIN
insert into atrakcje_rez values('3',1,1);
insert into atrakcje_rez values('1',2,2);
insert into atrakcje_rez values('2',3,3);
insert into atrakcje_rez values('5',4,4);
insert into atrakcje_rez values('2',5,5);
insert into atrakcje_rez values('2',6,6);
insert into atrakcje_rez values('1',7,7);
insert into atrakcje_rez values('3',8,8);
insert into atrakcje_rez values('2',9,9);
insert into atrakcje_rez values('1',10,10);
END;

/
BEGIN
insert into uslugi_wyc values ('17','6','156',1,1);
insert into uslugi_wyc values ('7','3','111',2,2);
insert into uslugi_wyc values ('5','1','611',3,3);
insert into uslugi_wyc values ('2','2','121',4,4);
insert into uslugi_wyc values ('23','11','541',5,5);
insert into uslugi_wyc values ('11','8','123',6,6);
insert into uslugi_wyc values ('7','6','111',7,7);
insert into uslugi_wyc values ('6','3','313',8,8);
insert into uslugi_wyc values ('10','10','111',9,9);
insert into uslugi_wyc values ('11','9','99',10,10);
END;