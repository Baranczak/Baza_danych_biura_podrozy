select * from klient;

select id_hotelu, nazwa, strona, opis_hotelu , ilosc_gwiazdek
from hotele 
where ilosc_gwiazdek >=4;

select kraj, miasto, ilosc_miejsc, opis
from wyc
where cena_na_osoby <=400 and ilosc_miejsc between 25 and 35
order by cena_na_osoby desc;

select * from klient 
where imie like '%a'
order by nazwisko;

select count(id_zamowienia) as "Liczba zamówień dla klienta", nazwisko, rodzaj_platnosci   
from zam z inner join klient on klient.id_klienta=z.id_klienta
where 1>= (select count(id_zamowienia) from zam where z.id_zamowienia=zam.id_zamowienia)
group by nazwisko, rodzaj_platnosci
order by count(id_zamowienia) desc;

select id_uczestnika,uczestnicy.imie as Imię_uczestnika, uczestnicy.nazwisko as Nazwisko_uczestnika, klient.imie as Imię_klienta, klient.nazwisko as Nazwisko_klienta,  zam.data_platnosci
from ((klient inner join uczestnicy on klient.id_klienta=uczestnicy.id_klienta)
inner join zam on klient.id_klienta=zam.id_klienta)
where data_platnosci > '2019-12-31'
order by data_platnosci

select uczestnicy.imie as Imie_uczestnika, klient.imie as Imie_klienta, klient.nazwisko as Nazwisko_klienta, rodzaj_platnosci
from ((klient inner join uczestnicy on klient.id_klienta=uczestnicy.id_klienta)
inner join zam on klient.id_klienta=zam.id_klienta)
where rodzaj_platnosci like ('Karta')

select klient.nazwisko as Nazwisko_klienta, klient.imie as Imie_klienta, wyc.kraj as Kraj, pracownik.imie as Imie_pracownika, pracownik.nazwisko as Nazwisko_pracownika
from (((klient inner join zam on klient.id_klienta=zam.id_klienta)
inner join pracownik on zam.id_pracownika=pracownik.id_pracownika)
inner join wyc on zam.id_wycieczki=wyc.id_wycieczki)

select uslugi.nazwa, uslugi.opis_uslugi, atrakcje.nazwa_atrakcji, atrakcje.opis_atrakcji 
from uslugi,atrakcje 
where length(uslugi.opis_uslugi) < 30 
AND length(atrakcje.opis_atrakcji) >40

select * from klient 
where imie NOT LIKE '%a'
order by nazwisko;

select klient.nazwisko as Nazwisko_klienta, klient.imie as Imie_klienta,  zam.data_platnosci, zam.rodzaj_platnosci, pracownik.imie as Imie_pracownika, pracownik.nazwisko as Nazwisko_pracownika
from ((klient inner join zam on klient.id_klienta=zam.id_klienta)
inner join pracownik on zam.id_pracownika=pracownik.id_pracownika)
where data_platnosci > '2016-12-31'

select 'Na stanowisku ' || pracownik.stanowisko || ' pracuje ' || count(pracownik.stanowisko) || ' pracowników' as "Liczba osób na danym stanowisku"
from pracownik
group by pracownik.stanowisko;

select miejscowosc, count(miejscowosc) as "Liczba uczestników z danego miasta"
from uczestnicy
group by miejscowosc;


select 'Koszt '|| (cena_na_osoby*ilosc_miejsc) || ' dla ' || ilosc_miejsc || ' osób ' as "Całkowity koszt wycieczki", miasto, kraj
from wyc
order by ilosc_miejsc


select klient.imie, klient.nazwisko,  wyc.kraj, (zam.miejsca*wyc.cena_na_osoby) as "Koszt zamówienia klienta"
from ((klient inner join zam on klient.id_klienta=zam.id_klienta)
inner join wyc on zam.id_wycieczki=wyc.id_wycieczki);


select 'Średni koszt wycieczki do Ukrainy, Czech, Włoch wynosi ' || sum(cena_na_osoby)/3  as "Średni koszt do wybranych krajów"
from wyc
where id_wycieczki= 4 OR id_wycieczki= 8 OR id_wycieczki= 5

select hotele.nazwa,lokalizacja.kraj,lokalizacja.miejscowość, DATA_PRZYBYCIA,DATA_ODJAZDU, (DATA_ODJAZDU-DATA_PRZYBYCIA) as "Długość pobytu"
from hotele_wyc,lokalizacja,hotele 
where hotele.ID_lokalizacji=lokalizacja.ID_lokalizacji
AND hotele_wyc.ID_hotelu=hotele.ID_hotelu
AND (DATA_ODJAZDU-DATA_PRZYBYCIA) >=8;

select pracownik.imie, pracownik.nazwisko, count(rez.id_pracownika) as "Liczba dokonanych rezerwacji przez pracownika"
from pracownik inner join rez on pracownik.id_pracownika=rez.id_pracownika
group by pracownik.imie, pracownik.nazwisko
order by count(rez.id_pracownika);


select klient.imie, klient.nazwisko, hotele.nazwa, lokalizacja.ulica, lokalizacja.miejscowość 
from (((((klient inner join zam on klient.id_klienta=zam.id_klienta)
inner join wyc on zam.id_wycieczki=wyc.id_wycieczki)
inner join hotele_wyc on hotele_wyc.id_wycieczki=wyc.id_wycieczki)
inner join hotele on hotele.id_hotelu=hotele_wyc.id_hotelu)
inner join lokalizacja on hotele.id_lokalizacji=lokalizacja.id_lokalizacji)
order by klient.id_klienta

select klient.imie, klient.nazwisko, zam.miejsca, wyc.kraj, (zam.miejsca*wyc.cena_na_osoby) as "Koszt zamówienia klienta", (zam.miejsca*wyc.cena_na_osoby)*0.8 as "Koszt zamówienia po rabacie"
from ((klient inner join zam on klient.id_klienta=zam.id_klienta)
inner join wyc on zam.id_wycieczki=wyc.id_wycieczki)
where zam.miejsca >=4;


select klient.imie, klient.nazwisko, zam.miejsca, wyc.kraj, (zam.miejsca*wyc.cena_na_osoby) as "Koszt zamówienia klienta",
CASE
    WHEN zam.miejsca > 4 THEN 'Rabat wynosi 20%'
    WHEN zam.miejsca = 4 THEN 'Rabat wynosi 15%'
    ELSE 'Rabat nie obowiązuje'
END as "Wysokość rabatu"
from ((klient inner join zam on klient.id_klienta=zam.id_klienta)
inner join wyc on zam.id_wycieczki=wyc.id_wycieczki);
























