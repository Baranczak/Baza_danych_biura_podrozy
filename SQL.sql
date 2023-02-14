
CREATE TABLE atrakcje (
    id_atrakcji    INTEGER NOT NULL,
    nazwa_atrakcji VARCHAR2(16 CHAR),
    opis_atrakcji  VARCHAR2(128 CHAR)
);

ALTER TABLE atrakcje ADD CONSTRAINT atrakcje_pk PRIMARY KEY ( id_atrakcji );

CREATE TABLE atrakcje_rez (
    miejsca              VARCHAR2(16 CHAR),
    id_atrakcji          INTEGER NOT NULL,
    id_rezerwacji        INTEGER NOT NULL
);

ALTER TABLE atrakcje_rez ADD CONSTRAINT atrakcje_rezerwacji_pk PRIMARY KEY ( id_atrakcji,
                                                                             id_rezerwacji );

CREATE TABLE atrakcje_wyc (
    ilosc_miejsc         INTEGER,
    miejsca_zajete       INTEGER,
    cena                 INTEGER,
    id_wycieczki         INTEGER NOT NULL,
    id_atrakcji          INTEGER NOT NULL
);

ALTER TABLE atrakcje_wyc ADD CONSTRAINT atrakcje_wycieczki_pk PRIMARY KEY ( id_wycieczki,
                                                                            id_atrakcji );

CREATE TABLE atrakcje_zam (
    id_zamowienia     INTEGER NOT NULL,
    id_klienta INTEGER NOT NULL,
    id_wycieczki  INTEGER NOT NULL,
    id_atrakcji           INTEGER NOT NULL
);

ALTER TABLE atrakcje_zam
    ADD CONSTRAINT atrakcje_zamowienia_pk PRIMARY KEY ( id_zamowienia,
                                                        id_klienta,
                                                        id_wycieczki,
                                                        id_atrakcji );

CREATE TABLE hotele (
    id_hotelu                  INTEGER NOT NULL,
    nazwa                      VARCHAR2(16 CHAR),
    ilosc_gwiazdek             INTEGER,
    nr_tel                     VARCHAR2(16 CHAR),
    strona                     VARCHAR2(32 CHAR),
    opis_hotelu                VARCHAR2(128 CHAR),
    id_lokalizacji 	       INTEGER NOT NULL
);


ALTER TABLE hotele ADD CONSTRAINT hotele_pk PRIMARY KEY ( id_hotelu );
ALTER TABLE hotele ADD CONSTRAINT lokalizacja_fk FOREIGN KEY (id_lokalizacji) REFERENCES lokalizacja (id_lokalizacji);

CREATE TABLE hotele_wyc (
    data_przybycia   DATE,
    data_odjazdu     DATE,
    id_wycieczki     INTEGER NOT NULL,
    id_hotelu        INTEGER NOT NULL
);

ALTER TABLE hotele_wyc ADD CONSTRAINT hotele_wycieczki_pk PRIMARY KEY ( id_wycieczki,
                                                                        id_hotelu );

CREATE TABLE klient (
    id_klienta INTEGER NOT NULL,
    imie       VARCHAR2(32 CHAR),
    nazwisko   VARCHAR2(32 CHAR),
    nr_tel     VARCHAR2(16 CHAR),
    "E-mail"   VARCHAR2(32 CHAR),
    nip        VARCHAR2(10 CHAR)
);

ALTER TABLE klient ADD CONSTRAINT klient_pk PRIMARY KEY ( id_klienta );

CREATE TABLE lokalizacja (
    id_lokalizacji   INTEGER NOT NULL,
    ulica            VARCHAR2(16 CHAR),
    kod_pocztowy     VARCHAR2(12 CHAR),
    miejscowosc      VARCHAR2(32 CHAR),
    kraj             VARCHAR2(32 CHAR),
    id_hotelu        INTEGER NOT NULL
);

ALTER TABLE lokalizacja ADD CONSTRAINT lokalizacja_pk PRIMARY KEY ( id_lokalizacji );

CREATE TABLE pracownik (
    id_pracownika INTEGER NOT NULL,
    imie          VARCHAR2(16 CHAR),
    nazwisko      VARCHAR2(16 CHAR),
    stanowisko    VARCHAR2(16 CHAR),
    nr_telefonu   VARCHAR2(16 CHAR),
    e_mail        VARCHAR2(32 CHAR)
);

ALTER TABLE pracownik ADD CONSTRAINT pracownik_pk PRIMARY KEY ( id_pracownika );

CREATE TABLE rez (
    id_rezerwacji           INTEGER NOT NULL,
    imie                    VARCHAR2(16 CHAR),
    nazwisko                VARCHAR2(16 CHAR),
    data_platnosci          DATE,
    typ_platnosci           VARCHAR2(16 CHAR),
    miejsca                 VARCHAR2(32 CHAR),
    id_pracownika           INTEGER NOT NULL
);

ALTER TABLE rez ADD CONSTRAINT rezerwacja_pk PRIMARY KEY ( id_rezerwacji );

CREATE TABLE uczestnicy (
    id_uczestnika     INTEGER NOT NULL,
    imie              VARCHAR2(32 CHAR),
    nazwisko          VARCHAR2(32 CHAR),
    ulica             VARCHAR2(32 CHAR),
    kod_pocztowy      VARCHAR2(12 CHAR),
    miejscowosc       VARCHAR2(32 CHAR),
    kraj              VARCHAR2(32 CHAR),
    telefon           VARCHAR2(16 CHAR),
    id_klienta 	      INTEGER NOT NULL
);

ALTER TABLE uczestnicy ADD CONSTRAINT uczestnicy_pkv1 PRIMARY KEY ( id_uczestnika );

CREATE TABLE uslugi (
    id_uslugi   INTEGER NOT NULL,
    nazwa       VARCHAR2(32 CHAR),
    opis_uslugi VARCHAR2(128 CHAR)
);

ALTER TABLE uslugi ADD CONSTRAINT uslugi_pk PRIMARY KEY ( id_uslugi );

CREATE TABLE uslugi_rez (
    ilosc_miejsc      INTEGER,
    id_uslugi         INTEGER NOT NULL,
    id_rezerwacji     INTEGER NOT NULL
);

ALTER TABLE uslugi_rez ADD CONSTRAINT uslugi_rezerwacji_pk PRIMARY KEY ( id_uslugi,
                                                                         id_rezerwacji );

CREATE TABLE uslugi_wyc (
    ilosc_miejsc     INTEGER,
    miejsca_zajete   INTEGER,
    cena             VARCHAR2(16 CHAR),
    id_uslugi        INTEGER NOT NULL,
    id_wycieczki     INTEGER NOT NULL
);

ALTER TABLE uslugi_wyc ADD CONSTRAINT uslugi_wycieczki_pk PRIMARY KEY ( id_uslugi,
                                                                        id_wycieczki );

CREATE TABLE uslugi_zam (
    id_zamowienia     INTEGER NOT NULL,
    id_klienta        INTEGER NOT NULL,
    id_wycieczki      INTEGER NOT NULL,
    id_uslugi         INTEGER NOT NULL
);

ALTER TABLE uslugi_zam
    ADD CONSTRAINT uslugi_zamowienia_pk PRIMARY KEY ( id_zamowienia,
                                                      id_klienta,
                                                      id_wycieczki );

CREATE TABLE wyc (
    id_wycieczki  INTEGER NOT NULL,
    ilosc_miejsc  INTEGER,
    cena_na_osoby INTEGER,
    kraj          VARCHAR2(32 CHAR),
    miasto        VARCHAR2(32 CHAR),
    opis          VARCHAR2(128 CHAR)
);

ALTER TABLE wyc ADD CONSTRAINT wycieczki_pk PRIMARY KEY ( id_wycieczki );

CREATE TABLE zam (
    id_zamowienia           INTEGER NOT NULL,
    miejsca                 VARCHAR2(64 CHAR),
    data_umowy              DATE,
    data_platnosci          DATE,
    rodzaj_platnosci        VARCHAR2(64 CHAR),
    id_klienta              INTEGER NOT NULL,
    id_wycieczki            INTEGER NOT NULL,
    id_pracownika           INTEGER NOT NULL
);

ALTER TABLE zam
    ADD CONSTRAINT zamowienia_pk PRIMARY KEY ( id_zamowienia,
                                               id_klienta,
                                               id_wycieczki );

ALTER TABLE atrakcje_rez
    ADD CONSTRAINT atrakcje_rez_atrakcje_fk FOREIGN KEY ( id_atrakcji )
        REFERENCES atrakcje ( id_atrakcji );

ALTER TABLE atrakcje_rez
    ADD CONSTRAINT atrakcje_rez_rez_fk FOREIGN KEY ( id_rezerwacji )
        REFERENCES rez ( id_rezerwacji );

ALTER TABLE atrakcje_wyc
    ADD CONSTRAINT atrakcje_wyc_atrakcje_fk FOREIGN KEY ( id_atrakcji )
        REFERENCES atrakcje ( id_atrakcji );

ALTER TABLE atrakcje_wyc
    ADD CONSTRAINT atrakcje_wyc_wyc_fk FOREIGN KEY ( id_wycieczki )
        REFERENCES wyc ( id_wycieczki );

ALTER TABLE atrakcje_zam
    ADD CONSTRAINT atrakcje_zam_atrakcje_fk FOREIGN KEY ( id_atrakcji )
        REFERENCES atrakcje ( id_atrakcji );

ALTER TABLE atrakcje_zam
    ADD CONSTRAINT atrakcje_zam_zam_fk FOREIGN KEY ( id_zamowienia,
                                                     id_klienta,
                                                     id_wycieczki )
        REFERENCES zam ( id_zamowienia,
                         id_klienta,
                         id_wycieczki );

ALTER TABLE hotele
    ADD CONSTRAINT hotele_lokalizacja_fk FOREIGN KEY ( id_lokalizacji )
        REFERENCES lokalizacja ( id_lokalizacji );

ALTER TABLE hotele_wyc
    ADD CONSTRAINT hotele_wyc_hotele_fk FOREIGN KEY ( id_hotelu )
        REFERENCES hotele ( id_hotelu );

ALTER TABLE hotele_wyc
    ADD CONSTRAINT hotele_wyc_wyc_fk FOREIGN KEY ( id_wycieczki )
        REFERENCES wyc ( id_wycieczki );

ALTER TABLE lokalizacja
    ADD CONSTRAINT lokalizacja_hotele_fk FOREIGN KEY ( id_hotelu )
        REFERENCES hotele ( id_hotelu );

ALTER TABLE rez
    ADD CONSTRAINT rez_pracownik_fk FOREIGN KEY ( id_pracownika )
        REFERENCES pracownik ( id_pracownika );

ALTER TABLE uczestnicy
    ADD CONSTRAINT uczestnicy_klient_fk FOREIGN KEY ( id_klienta )
        REFERENCES klient ( id_klienta );

ALTER TABLE uslugi_rez
    ADD CONSTRAINT uslugi_rez_rez_fk FOREIGN KEY ( id_rezerwacji )
        REFERENCES rez ( id_rezerwacji );

ALTER TABLE uslugi_rez
    ADD CONSTRAINT uslugi_rez_uslugi_fk FOREIGN KEY ( id_uslugi )
        REFERENCES uslugi ( id_uslugi );

ALTER TABLE uslugi_wyc
    ADD CONSTRAINT uslugi_wyc_uslugi_fk FOREIGN KEY ( id_uslugi )
        REFERENCES uslugi ( id_uslugi );

ALTER TABLE uslugi_wyc
    ADD CONSTRAINT uslugi_wyc_wyc_fk FOREIGN KEY ( id_wycieczki )
        REFERENCES wyc ( id_wycieczki );

ALTER TABLE uslugi_zam
    ADD CONSTRAINT uslugi_zam_uslugi_fk FOREIGN KEY ( id_uslugi )
        REFERENCES uslugi ( id_uslugi );

ALTER TABLE uslugi_zam
    ADD CONSTRAINT uslugi_zam_zam_fk FOREIGN KEY ( id_zamowienia,
                                                   id_klienta,
                                                   id_wycieczki )
        REFERENCES zam ( id_zamowienia,
                         id_klienta,
                         id_wycieczki );

ALTER TABLE zam
    ADD CONSTRAINT zam_klient_fk FOREIGN KEY ( id_klienta )
        REFERENCES klient ( id_klienta );

ALTER TABLE zam
    ADD CONSTRAINT zam_pracownik_fk FOREIGN KEY ( id_pracownika )
        REFERENCES pracownik ( id_pracownika );

ALTER TABLE zam
    ADD CONSTRAINT zam_wyc_fk FOREIGN KEY ( id_wycieczki )
        REFERENCES wyc ( id_wycieczki );




