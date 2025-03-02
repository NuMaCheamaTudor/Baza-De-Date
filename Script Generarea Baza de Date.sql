-- Organizator
CREATE TABLE Organizator (
    admin_id INT PRIMARY KEY,
    nume_organizator VARCHAR(50),
    prenume_organizator VARCHAR(50),
    numar_de_telefon VARCHAR(15),
    email_organizator VARCHAR(100)
);

-- Participant
CREATE TABLE Participant (
    participant_id INT PRIMARY KEY,
    nume_participant VARCHAR(50),
    prenume_participant VARCHAR(50),
    email_participant VARCHAR(100),
    data_nasterii DATE
);

-- Bilet
CREATE TABLE Bilet (
    bilet_id INT PRIMARY KEY,
    categorie VARCHAR2(50) CHECK (categorie IN ('Standard', 'VIP', 'Extreme')),
    pret NUMBER(10,2),
    metoda_plata VARCHAR2(50) CHECK (metoda_plata IN ('Card', 'Transfer bancar', 'Cash')),
    status_plata VARCHAR2(20),
    status_bilet VARCHAR2(20),
    participant_id INT,
    CONSTRAINT fk_bilet_participant FOREIGN KEY (participant_id)
        REFERENCES Participant(participant_id),
    CONSTRAINT chk_pret CHECK (pret IN (50, 100, 150))
);

-- Scena
CREATE TABLE Scena (
    scena_id INT PRIMARY KEY,
    suprafata NUMBER(10,2),
    nume_scena VARCHAR(50),
    dotari VARCHAR(255)
);

-- Artist
CREATE TABLE Artist (
    artist_id INT PRIMARY KEY,
    nume_artist VARCHAR(50),
    gen_muzical VARCHAR(50),
    tara_provenienta VARCHAR(50),
    tip_artist VARCHAR(50) CHECK (tip_artist IN ('Solo', 'Trupa')),
    onorariu NUMBER(10,2)
);

-- Spectacol 
CREATE TABLE Spectacol (
    spectacol_id INT PRIMARY KEY,
    ora_inceput TIMESTAMP,
    ora_sfarsit TIMESTAMP,
    ziua_concert DATE
);

-- Sponsor
CREATE TABLE Sponsor (
    sponsor_id INT PRIMARY KEY,
    suma_sponsorizare NUMBER(15,2),
    nume_sponsor VARCHAR(100),
    site VARCHAR(255),
    tara_origine VARCHAR(50)
);

-- Administreaza 
CREATE TABLE Administreaza (
    admin_id INT,
    scena_id INT,
    PRIMARY KEY (admin_id, scena_id),
    CONSTRAINT fk_administreaza_organizator FOREIGN KEY (admin_id)
        REFERENCES Organizator(admin_id),
    CONSTRAINT fk_administreaza_scena FOREIGN KEY (scena_id)
        REFERENCES Scena(scena_id)
);

-- Se_Desfasoara 
CREATE TABLE Se_Desfasoara (
    spectacol_id INT,
    scena_id INT,
    PRIMARY KEY (spectacol_id, scena_id),
    CONSTRAINT fk_se_desfasoara_spectacol FOREIGN KEY (spectacol_id)
        REFERENCES Spectacol(spectacol_id),
    CONSTRAINT fk_se_desfasoara_scena FOREIGN KEY (scena_id)
        REFERENCES Scena(scena_id)
);

-- Emite 
CREATE TABLE Emite (
    admin_id INT,
    bilet_id INT,
    PRIMARY KEY (admin_id, bilet_id),
    CONSTRAINT fk_emite_organizator FOREIGN KEY (admin_id)
        REFERENCES Organizator(admin_id),
    CONSTRAINT fk_emite_bilet FOREIGN KEY (bilet_id)
        REFERENCES Bilet(bilet_id)
);

-- Sustine 
CREATE TABLE Sustine (
    artist_id INT,
    spectacol_id INT,
    PRIMARY KEY (artist_id, spectacol_id),
    CONSTRAINT fk_sustine_artist FOREIGN KEY (artist_id)
        REFERENCES Artist(artist_id),
    CONSTRAINT fk_sustine_spectacol FOREIGN KEY (spectacol_id)
        REFERENCES Spectacol(spectacol_id)
);

-- Sponsorizeaza 
CREATE TABLE Sponsorizeaza (
    sponsor_id INT,
    spectacol_id INT,
    suma_sponsorizare NUMBER(15,2),
    PRIMARY KEY (sponsor_id, spectacol_id),
    CONSTRAINT fk_sponsorizeaza_sponsor FOREIGN KEY (sponsor_id)
        REFERENCES Sponsor(sponsor_id),
    CONSTRAINT fk_sponsorizeaza_spectacol FOREIGN KEY (spectacol_id)
        REFERENCES Spectacol(spectacol_id)
);
--Ex e "On delete cascade"
ALTER TABLE Se_Desfasoara 
DROP CONSTRAINT fk_se_desfasoara_spectacol;

ALTER TABLE Se_Desfasoara 
ADD CONSTRAINT fk_se_desfasoara_spectacol 
FOREIGN KEY (spectacol_id) 
REFERENCES Spectacol(spectacol_id) 
ON DELETE CASCADE;

ALTER TABLE Sustine 
DROP CONSTRAINT fk_sustine_spectacol;

ALTER TABLE Sustine 
ADD CONSTRAINT fk_sustine_spectacol 
FOREIGN KEY (spectacol_id) 
REFERENCES Spectacol(spectacol_id) 
ON DELETE CASCADE;



--Inserare date
--Organizator
INSERT INTO Organizator (admin_id, nume_organizator, prenume_organizator, numar_de_telefon, email_organizator)
VALUES (1, 'Blidaru', 'Tudor', '0738657199', 'tudorblidaru@gmail.com');
INSERT INTO Organizator (admin_id, nume_organizator, prenume_organizator, numar_de_telefon, email_organizator)
VALUES (2, 'Serban', 'Alexandru', '0723451985', 'alexserban@yahoo.com');
INSERT INTO Organizator (admin_id, nume_organizator, prenume_organizator, numar_de_telefon, email_organizator)
VALUES (3, 'Popescu', 'Dorin', '073432589', 'dorin@hotmail.uk');
INSERT INTO Organizator (admin_id, nume_organizator, prenume_organizator, numar_de_telefon, email_organizator)
VALUES (4, 'Radu', 'David', '0732974201', 'davidba$$@yandex.ru');
INSERT INTO Organizator (admin_id, nume_organizator, prenume_organizator, numar_de_telefon, email_organizator)
VALUES (5, 'Vasilescu', 'Elena', '0753123456', 'elena.vasilescu@gmail.com');
INSERT INTO Organizator (admin_id, nume_organizator, prenume_organizator, numar_de_telefon, email_organizator)
VALUES (7, 'Stan', 'Ioana', '0775123456', 'ioana.stan@yahoo.com');
INSERT INTO Organizator (admin_id, nume_organizator, prenume_organizator, numar_de_telefon, email_organizator)
VALUES (8, 'Enica' , 'David' , '0745760983' , 'davie@yahoo.com');
INSERT INTO Organizator (admin_id, nume_organizator, prenume_organizator, numar_de_telefon, email_organizator)
VALUES (9, 'Constantin' , 'Toma' , '0745768253' , 'primarbuzau@buzau.com');
INSERT INTO Organizator (admin_id, nume_organizator, prenume_organizator, numar_de_telefon, email_organizator)
VALUES (10, 'Ionescu' , 'Marian' , '0746897396' , 'marianadutelefonu@gmail.com');

--Participant
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (1, 'Popescu', 'Andrei', 'andrei.popescu@gmail.com', TO_DATE('1990-05-12', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (2, 'Ionescu', 'Maria', 'maria.ionescu@yahoo.com', TO_DATE('1985-07-23', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (3, 'Georgescu', 'Daniel', 'daniel.georgescu@hotmail.com', TO_DATE('1992-09-15', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (4, 'Dumitrescu', 'Ioana', 'ioana.dumitrescu@live.com', TO_DATE('1995-01-30', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (5, 'Vasilescu', 'Elena', 'elena.vasilescu@gmail.com', TO_DATE('1988-03-17', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (6, 'Stan', 'Gabriel', 'gabriel.stan@yahoo.com', TO_DATE('1993-06-21', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (7, 'Enescu', 'Raluca', 'raluca.enescu@gmail.com', TO_DATE('1991-12-05', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (8, 'Marinescu', 'Bogdan', 'bogdan.marinescu@yahoo.com', TO_DATE('1987-10-10', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (9, 'Iliescu', 'Anca', 'anca.iliescu@ymail.com', TO_DATE('1990-04-28', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (10, 'Tudor', 'Cristian', 'cristian.tudor@hotmail.com', TO_DATE('1994-11-03', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (11, 'Popa', 'Alexandru', 'alex.popa@example.com', TO_DATE('1989-08-15', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (12, 'Dragomir', 'Ioana', 'ioana.dragomir@example.com', TO_DATE('1996-04-02', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (13, 'Barbu', 'Cristian', 'cristian.barbu@example.com', TO_DATE('1993-09-10', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (14, 'Luca', 'Gabriela', 'gabriela.luca@example.com', TO_DATE('1987-12-24', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (15, 'Iacob', 'Raluca', 'raluca.iacob@example.com', TO_DATE('1991-06-18', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (16, 'Diaconu', 'Andreea', 'andreea.diaconu@example.com', TO_DATE('1990-10-30', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (17, 'Stoian', 'Vlad', 'vlad.stoian@example.com', TO_DATE('1994-03-22', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (18, 'Munteanu', 'Daniela', 'daniela.munteanu@example.com', TO_DATE('1992-11-15', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (19, 'Grigore', 'Adrian', 'adrian.grigore@example.com', TO_DATE('1988-01-12', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (20, 'Constantinescu', 'Florin', 'florin.constantinescu@example.com', TO_DATE('1985-07-09', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (21, 'Yamamoto', 'Hikaru', 'hikaru.yamamoto@example.jp', TO_DATE('1992-05-14', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (22, 'Nguyen', 'Thi', 'thi.nguyen@example.vn', TO_DATE('1989-12-01', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (23, 'Fernandez', 'Carlos', 'carlos.fernandez@example.es', TO_DATE('1985-07-20', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (24, 'Kowalski', 'Anna', 'anna.kowalski@example.pl', TO_DATE('1993-03-03', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (25, 'Singh', 'Raj', 'raj.singh@example.in', TO_DATE('1990-08-08', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (26, 'Jónsdóttir', 'Edda', 'edda.jonsdottir@example.is', TO_DATE('1995-11-18', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (27, 'Adebayo', 'Tunde', 'tunde.adebayo@example.ng', TO_DATE('1991-06-25', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (28, 'Chen', 'Mei', 'mei.chen@example.cn', TO_DATE('1988-02-15', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (29, 'Kuznetsov', 'Ivan', 'ivan.kuznetsov@example.ru', TO_DATE('1994-10-05', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (30, 'Garcia', 'Sofia', 'sofia.garcia@example.mx', TO_DATE('1996-04-12', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (31, 'O’Connor', 'Sean', 'sean.oconnor@example.ie', TO_DATE('1992-07-30', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (32, 'Schmidt', 'Hans', 'hans.schmidt@example.de', TO_DATE('1987-01-22', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (33, 'Lee', 'Min', 'min.lee@example.kr', TO_DATE('1991-09-17', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (34, 'Ahmed', 'Fatima', 'fatima.ahmed@example.eg', TO_DATE('1986-12-28', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (35, 'Hernandez', 'Luis', 'luis.hernandez@example.cl', TO_DATE('1990-11-05', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (36, 'Ali', 'Aisha', 'aisha.ali@example.sa', TO_DATE('1994-02-03', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (37, 'Tanaka', 'Kenji', 'kenji.tanaka@example.jp', TO_DATE('1993-03-11', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (38, 'Bose', 'Ananya', 'ananya.bose@example.in', TO_DATE('1992-08-27', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (39, 'Ivanov', 'Natalia', 'natalia.ivanov@example.ru', TO_DATE('1990-09-16', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (40, 'Lopez', 'Miguel', 'miguel.lopez@example.ar', TO_DATE('1989-04-01', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (41, 'Kim', 'Jisoo', 'jisoo.kim@example.kr', TO_DATE('1991-11-23', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (42, 'Smith', 'Emma', 'emma.smith@example.us', TO_DATE('1995-12-15', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (43, 'Da Silva', 'Pedro', 'pedro.dasilva@example.br', TO_DATE('1987-07-06', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (44, 'Sharma', 'Priya', 'priya.sharma@example.in', TO_DATE('1990-01-13', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (45, 'Moreau', 'Juliette', 'juliette.moreau@example.fr', TO_DATE('1988-05-20', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (46, 'Okafor', 'Chinwe', 'chinwe.okafor@example.ng', TO_DATE('1996-03-19', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (47, 'Abdullah', 'Omar', 'omar.abdullah@example.pk', TO_DATE('1986-10-21', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (48, 'Zhang', 'Wei', 'wei.zhang@example.cn', TO_DATE('1992-06-04', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (49, 'Takahashi', 'Haruto', 'haruto.takahashi@example.jp', TO_DATE('1989-09-29', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (50, 'Gonzalez', 'Camila', 'camila.gonzalez@example.mx', TO_DATE('1994-02-12', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (51, 'Chowdhury', 'Rahim', 'rahim.chowdhury@example.bd', TO_DATE('1988-01-31', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (52, 'Williams', 'Sophia', 'sophia.williams@example.uk', TO_DATE('1990-08-02', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (53, 'Aliyev', 'Leyla', 'leyla.aliyev@example.az', TO_DATE('1995-10-07', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (54, 'Huang', 'Liang', 'liang.huang@example.tw', TO_DATE('1991-04-09', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (55, 'Korhonen', 'Noora', 'noora.korhonen@example.fi', TO_DATE('1993-12-11', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (56, 'Mendoza', 'Javier', 'javier.mendoza@example.co', TO_DATE('1985-11-22', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (57, 'Ng', 'Kai', 'kai.ng@example.hk', TO_DATE('1989-03-15', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (58, 'Ozawa', 'Aiko', 'aiko.ozawa@example.jp', TO_DATE('1992-07-05', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (59, 'Patel', 'Ravi', 'ravi.patel@example.in', TO_DATE('1996-01-25', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (60, 'Ebrahim', 'Zara', 'zara.ebrahim@example.za', TO_DATE('1987-02-10', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (61, 'Torres', 'Mariana', 'mariana.torres@example.pe', TO_DATE('1994-05-19', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (62, 'Rahman', 'Amin', 'amin.rahman@example.my', TO_DATE('1993-06-16', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (63, 'Nieminen', 'Mika', 'mika.nieminen@example.fi', TO_DATE('1991-12-24', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (64, 'Johansson', 'Elsa', 'elsa.johansson@example.se', TO_DATE('1990-11-04', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (65, 'Chung', 'Hana', 'hana.chung@example.sg', TO_DATE('1988-07-02', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (66, 'Ben Salah', 'Youssef', 'youssef.bensalah@example.tn', TO_DATE('1995-09-13', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (67, 'Rosales', 'Lucia', 'lucia.rosales@example.cr', TO_DATE('1992-03-07', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (68, 'Nguyen', 'Bao', 'bao.nguyen@example.vn', TO_DATE('1994-11-29', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (69, 'Ivanova', 'Anastasia', 'anastasia.ivanova@example.by', TO_DATE('1986-10-14', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (70, 'Hassan', 'Mariam', 'mariam.hassan@example.ke', TO_DATE('1991-02-22', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (71, 'Popescu', 'Ion', 'ion.popescu@example.com', TO_DATE('1985-03-10', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (72, 'Ionescu', 'Mihai', 'mihai.ionescu@example.com', TO_DATE('1991-05-21', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (73, 'Dumitru', 'Andrei', 'andrei.dumitru@example.com', TO_DATE('1989-07-15', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (74, 'Stan', 'George', 'george.stan@example.com', TO_DATE('1994-01-18', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (75, 'Vasilescu', 'Alexandra', 'alexandra.vasilescu@example.com', TO_DATE('1990-10-30', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (76, 'Radu', 'Cristina', 'cristina.radu@example.com', TO_DATE('1988-02-25', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (77, 'Popa', 'Maria', 'maria.popa@example.com', TO_DATE('1993-06-05', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (78, 'Călin', 'Florin', 'florin.calin@example.com', TO_DATE('1992-08-14', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (79, 'Ilie', 'Gabriela', 'gabriela.ilie@example.com', TO_DATE('1995-04-21', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (80, 'Matei', 'Marius', 'marius.matei@example.com', TO_DATE('1987-12-03', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (81, 'Toma', 'Daniel', 'daniel.toma@example.com', TO_DATE('1989-01-09', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (82, 'Mihăescu', 'Anca', 'anca.mihăescu@example.com', TO_DATE('1993-05-11', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (83, 'Marin', 'Paul', 'paul.marin@example.com', TO_DATE('1986-08-22', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (84, 'Bălan', 'Diana', 'diana.bălan@example.com', TO_DATE('1992-02-17', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (85, 'Pătrașcu', 'Lucian', 'lucian.pătrașcu@example.com', TO_DATE('1989-11-05', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (86, 'Sârbu', 'Elena', 'elena.sârbu@example.com', TO_DATE('1994-09-21', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (87, 'Botez', 'Stefan', 'stefan.botez@example.com', TO_DATE('1988-04-19', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (88, 'Nistor', 'Vasile', 'vasile.nistor@example.com', TO_DATE('1991-10-15', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (89, 'Ciobanu', 'Irina', 'irina.ciobanu@example.com', TO_DATE('1995-03-30', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (90, 'Dobre', 'Florentina', 'florentina.dobre@example.com', TO_DATE('1992-12-10', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (91, 'Petrescu', 'Vlad', 'vlad.petrescu@example.com', TO_DATE('1990-06-17', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (92, 'Tudor', 'Andreea', 'andreea.tudor@example.com', TO_DATE('1988-01-22', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (93, 'Bucur', 'Robert', 'robert.bucur@example.com', TO_DATE('1989-09-04', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (94, 'Ilinca', 'Cosmin', 'cosmin.ilinca@example.com', TO_DATE('1993-05-13', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (95, 'Zaharia', 'Iulia', 'iulia.zaharia@example.com', TO_DATE('1992-07-28', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (96, 'Biris', 'Ioana', 'ioana.biris@example.com', TO_DATE('1986-06-05', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (97, 'Puiu', 'Mihail', 'mihail.puiu@example.com', TO_DATE('1991-08-30', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (98, 'Vlad', 'Constantin', 'constantin.vlad@example.com', TO_DATE('1993-11-09', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (99, 'Firu', 'Alexandru', 'alexandru.firu@example.com', TO_DATE('1994-02-02', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (100, 'Neagu', 'Georgiana', 'georgiana.neagu@example.com', TO_DATE('1992-04-23', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (101, 'Munteanu', 'Lavinia', 'lavinia.munteanu@example.com', TO_DATE('2010-06-10', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (102, 'Iordache', 'Vlad', 'vlad.iordache@example.com', TO_DATE('2009-08-24', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (103, 'Petcu', 'Elena', 'elena.petcu@example.com', TO_DATE('2010-12-05', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (104, 'Lazar', 'Mihail', 'mihail.lazar@example.com', TO_DATE('2008-11-30', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (105, 'Stoica', 'Ana', 'ana.stoica@example.com', TO_DATE('2011-02-17', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (106, 'Vasile', 'Radu', 'radu.vasile@example.com', TO_DATE('2009-07-10', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (107, 'Cucu', 'Sofia', 'sofia.cucu@example.com', TO_DATE('2010-05-01', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (108, 'Ilie', 'Andreea', 'andreea.ilie@example.com', TO_DATE('2008-03-15', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (109, 'Tănase', 'Florin', 'florin.tanase@example.com', TO_DATE('2008-10-04', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (110, 'Sava', 'Ioana', 'ioana.sava@example.com', TO_DATE('2011-09-25', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (111, 'Bădescu', 'Gabriel', 'gabriel.badescu@example.com', TO_DATE('2009-05-16', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (112, 'Dinu', 'Diana', 'diana.dinu@example.com', TO_DATE('2008-02-22', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (113, 'Bălan', 'Roxana', 'roxana.balan@example.com', TO_DATE('2009-06-09', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (114, 'Popa', 'Andrei', 'andrei.popa@example.com', TO_DATE('2008-04-03', 'YYYY-MM-DD'));
INSERT INTO Participant (participant_id, nume_participant, prenume_participant, email_participant, data_nasterii)
VALUES (115, 'Mihăilescu', 'Cătălina', 'catalina.mihailescu@example.com', TO_DATE('2011-07-19', 'YYYY-MM-DD'));

--Bilet
INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (1, 'Standard', 50.00, 'Card', 'Platit', 'Confirmat', 1);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (2, 'VIP', 100.00, 'Transfer bancar', 'Neplatit', 'In asteptare', 2);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (3, 'Extreme', 150.00, 'Cash', 'Platit', 'Confirmat', 3);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (4, 'Standard', 50.00, 'Card', 'Platit', 'Confirmat', 1);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (5, 'VIP', 100.00, 'Transfer bancar', 'Neplatit', 'In asteptare', 3);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (6, 'Standard', 50.00, 'Cash', 'Platit', 'Confirmat', 4);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (7, 'Extreme', 150.00, 'Card', 'Neplatit', 'In asteptare', 2);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (8, 'VIP', 100.00, 'Transfer bancar', 'Platit', 'Confirmat', 5);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (9, 'Standard', 50.00, 'Cash', 'Platit', 'Confirmat', 6);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (10, 'Extreme', 150.00, 'Card', 'Neplatit', 'In asteptare', 1);
INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (11, 'Standard', 50.00, 'Card', 'Platit', 'Confirmat', 7);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (12, 'VIP', 100.00, 'Transfer bancar', 'Neplatit', 'In asteptare', 8);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (13, 'Extreme', 150.00, 'Cash', 'Platit', 'Confirmat', 9);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (14, 'Standard', 50.00, 'Card', 'Neplatit', 'In asteptare', 10);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (15, 'VIP', 100.00, 'Cash', 'Platit', 'Confirmat', 11);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (16, 'Extreme', 150.00, 'Transfer bancar', 'Neplatit', 'In asteptare', 12);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (17, 'Standard', 50.00, 'Cash', 'Platit', 'Confirmat', 13);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (18, 'VIP', 100.00, 'Card', 'Neplatit', 'In asteptare', 14);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (19, 'Extreme', 150.00, 'Transfer bancar', 'Platit', 'Confirmat', 15);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (20, 'Standard', 50.00, 'Cash', 'Platit', 'Confirmat', 16);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (21, 'VIP', 100.00, 'Card', 'Platit', 'Confirmat', 17);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (22, 'Extreme', 150.00, 'Transfer bancar', 'Neplatit', 'In asteptare', 18);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (23, 'Standard', 50.00, 'Cash', 'Platit', 'Confirmat', 19);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (24, 'VIP', 100.00, 'Transfer bancar', 'Neplatit', 'In asteptare', 20);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (25, 'Extreme', 150.00, 'Card', 'Platit', 'Confirmat', 21);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (26, 'Standard', 50.00, 'Cash', 'Platit', 'Confirmat', 22);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (27, 'VIP', 100.00, 'Transfer bancar', 'Neplatit', 'In asteptare', 23);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (28, 'Extreme', 150.00, 'Card', 'Platit', 'Confirmat', 24);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (29, 'Standard', 50.00, 'Cash', 'Platit', 'Confirmat', 25);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (30, 'VIP', 100.00, 'Transfer bancar', 'Neplatit', 'In asteptare', 26);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (31, 'Standard', 50.00, 'Card', 'Platit', 'Confirmat', 27);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (32, 'Extreme', 150.00, 'Cash', 'Platit', 'Confirmat', 28);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (33, 'VIP', 100.00, 'Transfer bancar', 'Platit', 'Confirmat', 29);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (34, 'Standard', 50.00, 'Card', 'Platit', 'Confirmat', 30);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (35, 'Extreme', 150.00, 'Cash', 'Platit', 'Confirmat', 31);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (36, 'VIP', 100.00, 'Transfer bancar', 'Neplatit', 'In asteptare', 32);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (37, 'Standard', 50.00, 'Card', 'Platit', 'Confirmat', 33);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (38, 'Extreme', 150.00, 'Cash', 'Platit', 'Confirmat', 34);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (39, 'VIP', 100.00, 'Transfer bancar', 'Neplatit', 'In asteptare', 35);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (40, 'Standard', 50.00, 'Card', 'Platit', 'Confirmat', 36);
INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (41, 'Standard', 50.00, 'Card', 'Platit', 'Confirmat', 37);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (42, 'VIP', 100.00, 'Cash', 'Neplatit', 'In asteptare', 38);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (43, 'Extreme', 150.00, 'Transfer bancar', 'Platit', 'Confirmat', 39);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (44, 'Standard', 50.00, 'Card', 'Platit', 'Confirmat', 40);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (45, 'VIP', 100.00, 'Transfer bancar', 'Platit', 'Confirmat', 41);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (46, 'Extreme', 150.00, 'Cash', 'Neplatit', 'In asteptare', 42);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (47, 'Standard', 50.00, 'Card', 'Platit', 'Confirmat', 43);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (48, 'VIP', 100.00, 'Transfer bancar', 'Platit', 'Confirmat', 44);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (49, 'Extreme', 150.00, 'Cash', 'Platit', 'Confirmat', 45);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (50, 'Standard', 50.00, 'Card', 'Platit', 'Confirmat', 46);
INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (51, 'Standard', 50.00, 'Card', 'Platit', 'Confirmat', 37);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (52, 'VIP', 100.00, 'Transfer bancar', 'Neplatit', 'In asteptare', 38);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (53, 'Extreme', 150.00, 'Cash', 'Platit', 'Confirmat', 39);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (54, 'Standard', 50.00, 'Card', 'Neplatit', 'In asteptare', 40);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (55, 'VIP', 100.00, 'Cash', 'Platit', 'Confirmat', 41);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (56, 'Extreme', 150.00, 'Transfer bancar', 'Neplatit', 'In asteptare', 42);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (57, 'Standard', 50.00, 'Cash', 'Platit', 'Confirmat', 43);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (58, 'VIP', 100.00, 'Card', 'Neplatit', 'In asteptare', 44);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (59, 'Extreme', 150.00, 'Transfer bancar', 'Platit', 'Confirmat', 45);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (60, 'Standard', 50.00, 'Cash', 'Platit', 'Confirmat', 46);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (61, 'VIP', 100.00, 'Card', 'Platit', 'Confirmat', 47);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (62, 'Extreme', 150.00, 'Transfer bancar', 'Neplatit', 'In asteptare', 48);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (63, 'Standard', 50.00, 'Cash', 'Platit', 'Confirmat', 49);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (64, 'VIP', 100.00, 'Transfer bancar', 'Neplatit', 'In asteptare', 50);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (65, 'Extreme', 150.00, 'Card', 'Platit', 'Confirmat', 51);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (66, 'Standard', 50.00, 'Cash', 'Platit', 'Confirmat', 52);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (67, 'VIP', 100.00, 'Transfer bancar', 'Neplatit', 'In asteptare', 53);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (68, 'Extreme', 150.00, 'Card', 'Platit', 'Confirmat', 54);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (69, 'Standard', 50.00, 'Cash', 'Platit', 'Confirmat', 55);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (70, 'VIP', 100.00, 'Transfer bancar', 'Neplatit', 'In asteptare', 56);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (71, 'Standard', 50.00, 'Card', 'Platit', 'Confirmat', 57);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (72, 'Extreme', 150.00, 'Cash', 'Platit', 'Confirmat', 58);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (73, 'VIP', 100.00, 'Transfer bancar', 'Platit', 'Confirmat', 59);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (74, 'Standard', 50.00, 'Card', 'Platit', 'Confirmat', 60);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (75, 'Extreme', 150.00, 'Cash', 'Platit', 'Confirmat', 61);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (76, 'VIP', 100.00, 'Transfer bancar', 'Neplatit', 'In asteptare', 62);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (77, 'Standard', 50.00, 'Card', 'Platit', 'Confirmat', 63);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (78, 'Extreme', 150.00, 'Cash', 'Platit', 'Confirmat', 64);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (79, 'VIP', 100.00, 'Transfer bancar', 'Neplatit', 'In asteptare', 65);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (80, 'Standard', 50.00, 'Card', 'Platit', 'Confirmat', 66);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (81, 'VIP', 100.00, 'Cash', 'Platit', 'Confirmat', 67);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (82, 'Extreme', 150.00, 'Transfer bancar', 'Platit', 'Confirmat', 68);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (83, 'Standard', 50.00, 'Cash', 'Platit', 'Confirmat', 69);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (84, 'VIP', 100.00, 'Card', 'Platit', 'Confirmat', 70);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (85, 'Extreme', 150.00, 'Cash', 'Platit', 'Confirmat', 71);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (86, 'Standard', 50.00, 'Transfer bancar', 'Platit', 'Confirmat', 72);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (87, 'VIP', 100.00, 'Card', 'Platit', 'Confirmat', 73);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (88, 'Extreme', 150.00, 'Cash', 'Platit', 'Confirmat', 74);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (89, 'Standard', 50.00, 'Card', 'Platit', 'Confirmat', 75);
INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (91, 'Standard', 50.00, 'Card', 'Platit', 'Confirmat', 75);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (92, 'VIP', 100.00, 'Cash', 'Platit', 'Confirmat', 76);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (93, 'Extreme', 150.00, 'Transfer bancar', 'Platit', 'Confirmat', 77);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (94, 'Standard', 50.00, 'Cash', 'Platit', 'Confirmat', 78);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (95, 'VIP', 100.00, 'Card', 'Neplatit', 'In asteptare', 75);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (96, 'Extreme', 150.00, 'Transfer bancar', 'Platit', 'Confirmat', 76);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (97, 'Standard', 50.00, 'Cash', 'Platit', 'Confirmat', 77);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (98, 'VIP', 100.00, 'Card', 'Platit', 'Confirmat', 78);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (99, 'Extreme', 150.00, 'Transfer bancar', 'Neplatit', 'In asteptare', 75);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (100, 'Standard', 50.00, 'Cash', 'Platit', 'Confirmat', 76);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (101, 'VIP', 100.00, 'Card', 'Platit', 'Confirmat', 77);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (102, 'Extreme', 150.00, 'Cash', 'Platit', 'Confirmat', 78);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (103, 'Standard', 50.00, 'Transfer bancar', 'Neplatit', 'In asteptare', 75);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (104, 'VIP', 100.00, 'Card', 'Platit', 'Confirmat', 76);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (105, 'Extreme', 150.00, 'Cash', 'Platit', 'Confirmat', 77);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (106, 'Standard', 50.00, 'Card', 'Platit', 'Confirmat', 78);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (107, 'VIP', 100.00, 'Transfer bancar', 'Platit', 'Confirmat', 75);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (108, 'Extreme', 150.00, 'Cash', 'Platit', 'Confirmat', 76);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (109, 'Standard', 50.00, 'Card', 'Platit', 'Confirmat', 77);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (110, 'VIP', 100.00, 'Cash', 'Platit', 'Confirmat', 78);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (111, 'Extreme', 150.00, 'Transfer bancar', 'Platit', 'Confirmat', 75);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (112, 'Standard', 50.00, 'Cash', 'Platit', 'Confirmat', 76);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (113, 'VIP', 100.00, 'Card', 'Platit', 'Confirmat', 77);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (114, 'Extreme', 150.00, 'Cash', 'Platit', 'Confirmat', 78);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (115, 'Standard', 50.00, 'Card', 'Platit', 'Confirmat', 75);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (116, 'VIP', 100.00, 'Transfer bancar', 'Platit', 'Confirmat', 76);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (117, 'Extreme', 150.00, 'Cash', 'Platit', 'Confirmat', 77);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (118, 'Standard', 50.00, 'Card', 'Platit', 'Confirmat', 78);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (119, 'VIP', 100.00, 'Cash', 'Platit', 'Confirmat', 75);

INSERT INTO Bilet (bilet_id, categorie, pret, metoda_plata, status_plata, status_bilet, participant_id)
VALUES (120, 'Extreme', 150.00, 'Transfer bancar', 'Platit', 'Confirmat', 76);

--Artist
INSERT INTO Artist (artist_id, nume_artist, gen_muzical, tara_provenienta, tip_artist, onorariu)
VALUES (1, 'Sepultura', 'Metal', 'Brazilia', 'Trupa', 8000.00);

INSERT INTO Artist (artist_id, nume_artist, gen_muzical, tara_provenienta, tip_artist, onorariu)
VALUES (2, 'Gojira', 'Metal', 'Franta', 'Trupa', 7500.00);

INSERT INTO Artist (artist_id, nume_artist, gen_muzical, tara_provenienta, tip_artist, onorariu)
VALUES (3, 'Dambu', 'Rock', 'Romania', 'Trupa', 3000.00);

INSERT INTO Artist (artist_id, nume_artist, gen_muzical, tara_provenienta, tip_artist, onorariu)
VALUES (4, 'Rock Forjat', 'Metal', 'Romania', 'Trupa', 3500.00);

INSERT INTO Artist (artist_id, nume_artist, gen_muzical, tara_provenienta, tip_artist, onorariu)
VALUES (5, 'Bullet For My Valentine', 'Metalcore', 'Marea Britanie', 'Trupa', 9000.00);

INSERT INTO Artist (artist_id, nume_artist, gen_muzical, tara_provenienta, tip_artist, onorariu)
VALUES (6, 'Metallica', 'Thrash Metal', 'Statele Unite', 'Trupa', 20000.00);

INSERT INTO Artist (artist_id, nume_artist, gen_muzical, tara_provenienta, tip_artist, onorariu)
VALUES (7, 'Iron Maiden', 'Heavy Metal', 'Marea Britanie', 'Trupa', 25000.00);

INSERT INTO Artist (artist_id, nume_artist, gen_muzical, tara_provenienta, tip_artist, onorariu)
VALUES (8, 'Slayer', 'Thrash Metal', 'Statele Unite', 'Trupa', 18000.00);

INSERT INTO Artist (artist_id, nume_artist, gen_muzical, tara_provenienta, tip_artist, onorariu)
VALUES (9, 'Megadeth', 'Thrash Metal', 'Statele Unite', 'Trupa', 17000.00);

INSERT INTO Artist (artist_id, nume_artist, gen_muzical, tara_provenienta, tip_artist, onorariu)
VALUES (10, 'Judas Priest', 'Heavy Metal', 'Marea Britanie', 'Trupa', 22000.00);

INSERT INTO Artist (artist_id, nume_artist, gen_muzical, tara_provenienta, tip_artist, onorariu)
VALUES (11, 'Amon Amarth', 'Death Metal', 'Suedia', 'Trupa', 6500.00);

INSERT INTO Artist (artist_id, nume_artist, gen_muzical, tara_provenienta, tip_artist, onorariu)
VALUES (12, 'Rammstein', 'Industrial Metal', 'Germania', 'Trupa', 23000.00);

INSERT INTO Artist (artist_id, nume_artist, gen_muzical, tara_provenienta, tip_artist, onorariu)
VALUES (13, 'Black Sabbath', 'Heavy Metal', 'Marea Britanie', 'Trupa', 24000.00);

INSERT INTO Artist (artist_id, nume_artist, gen_muzical, tara_provenienta, tip_artist, onorariu)
VALUES (14, 'Trivium', 'Metalcore', 'Statele Unite', 'Trupa', 10000.00);

INSERT INTO Artist (artist_id, nume_artist, gen_muzical, tara_provenienta, tip_artist, onorariu)
VALUES (15, 'Architects', 'Metalcore', 'Marea Britanie', 'Trupa', 11000.00);
INSERT INTO Artist (artist_id, nume_artist, gen_muzical, tara_provenienta, tip_artist, onorariu)
VALUES (16, 'Pantera', 'Groove Metal', 'Statele Unite', 'Trupa', 15000.00);

INSERT INTO Artist (artist_id, nume_artist, gen_muzical, tara_provenienta, tip_artist, onorariu)
VALUES (17, 'Slipknot', 'Nu Metal', 'Statele Unite', 'Trupa', 22000.00);

INSERT INTO Artist (artist_id, nume_artist, gen_muzical, tara_provenienta, tip_artist, onorariu)
VALUES (18, 'Lamb of God', 'Groove Metal', 'Statele Unite', 'Trupa', 18000.00);

INSERT INTO Artist (artist_id, nume_artist, gen_muzical, tara_provenienta, tip_artist, onorariu)
VALUES (19, 'Nightwish', 'Symphonic Metal', 'Finlanda', 'Trupa', 16000.00);

INSERT INTO Artist (artist_id, nume_artist, gen_muzical, tara_provenienta, tip_artist, onorariu)
VALUES (20, 'Within Temptation', 'Symphonic Metal', 'Olanda', 'Trupa', 14000.00);

INSERT INTO Artist (artist_id, nume_artist, gen_muzical, tara_provenienta, tip_artist, onorariu)
VALUES (21, 'Disturbed', 'Alternative Metal', 'Statele Unite', 'Trupa', 17000.00);

INSERT INTO Artist (artist_id, nume_artist, gen_muzical, tara_provenienta, tip_artist, onorariu)
VALUES (22, 'Killswitch Engage', 'Metalcore', 'Statele Unite', 'Trupa', 12000.00);

INSERT INTO Artist (artist_id, nume_artist, gen_muzical, tara_provenienta, tip_artist, onorariu)
VALUES (23, 'System of a Down', 'Alternative Metal', 'Statele Unite', 'Trupa', 19000.00);

INSERT INTO Artist (artist_id, nume_artist, gen_muzical, tara_provenienta, tip_artist, onorariu)
VALUES (24, 'Testament', 'Thrash Metal', 'Statele Unite', 'Trupa', 15000.00);

INSERT INTO Artist (artist_id, nume_artist, gen_muzical, tara_provenienta, tip_artist, onorariu)
VALUES (25, 'Behemoth', 'Blackened Death Metal', 'Polonia', 'Trupa', 14000.00);

--Scena
INSERT INTO Scena (scena_id, suprafata, nume_scena, dotari)
VALUES (1, 500.00, 'Main', 'Sistem de sunet profesional, lumini LED, ecran mare');

INSERT INTO Scena (scena_id, suprafata, nume_scena, dotari)
VALUES (2, 300.00, 'Upcoming', 'Sistem de sunet mediu, lumini RGB, ecran LED');

INSERT INTO Scena (scena_id, suprafata, nume_scena, dotari)
VALUES (3, 450.00, 'Legends', 'Sistem de sunet de inalta calitate, lumini interactive, ecran 4K');

--Spectacol

INSERT INTO Spectacol (spectacol_id, ora_inceput, ora_sfarsit, ziua_concert)
VALUES (1, TO_TIMESTAMP('2025-07-08 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-07-08 22:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-07-08', 'YYYY-MM-DD'));

INSERT INTO Spectacol (spectacol_id, ora_inceput, ora_sfarsit, ziua_concert)
VALUES (2, TO_TIMESTAMP('2025-07-08 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-07-08 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-07-08', 'YYYY-MM-DD'));

INSERT INTO Spectacol (spectacol_id, ora_inceput, ora_sfarsit, ziua_concert)
VALUES (3, TO_TIMESTAMP('2025-07-08 22:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-07-08 23:59:59', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-07-08', 'YYYY-MM-DD'));

INSERT INTO Spectacol (spectacol_id, ora_inceput, ora_sfarsit, ziua_concert)
VALUES (4, TO_TIMESTAMP('2025-07-09 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-07-09 21:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-07-09', 'YYYY-MM-DD'));

INSERT INTO Spectacol (spectacol_id, ora_inceput, ora_sfarsit, ziua_concert)
VALUES (5, TO_TIMESTAMP('2025-07-09 20:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-07-09 22:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-07-09', 'YYYY-MM-DD'));

INSERT INTO Spectacol (spectacol_id, ora_inceput, ora_sfarsit, ziua_concert)
VALUES (6, TO_TIMESTAMP('2025-07-09 21:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-07-09 23:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-07-09', 'YYYY-MM-DD'));

INSERT INTO Spectacol (spectacol_id, ora_inceput, ora_sfarsit, ziua_concert)
VALUES (7, TO_TIMESTAMP('2025-07-10 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-07-10 20:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-07-10', 'YYYY-MM-DD'));

INSERT INTO Spectacol (spectacol_id, ora_inceput, ora_sfarsit, ziua_concert)
VALUES (8, TO_TIMESTAMP('2025-07-10 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-07-10 21:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-07-10', 'YYYY-MM-DD'));

INSERT INTO Spectacol (spectacol_id, ora_inceput, ora_sfarsit, ziua_concert)
VALUES (9, TO_TIMESTAMP('2025-07-10 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-07-10 22:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-07-10', 'YYYY-MM-DD'));

INSERT INTO Spectacol (spectacol_id, ora_inceput, ora_sfarsit, ziua_concert)
VALUES (10, TO_TIMESTAMP('2025-07-11 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-07-11 21:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-07-11', 'YYYY-MM-DD'));

INSERT INTO Spectacol (spectacol_id, ora_inceput, ora_sfarsit, ziua_concert)
VALUES (11, TO_TIMESTAMP('2025-07-11 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-07-11 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-07-11', 'YYYY-MM-DD'));

INSERT INTO Spectacol (spectacol_id, ora_inceput, ora_sfarsit, ziua_concert)
VALUES (12, TO_TIMESTAMP('2025-07-11 22:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-07-11 23:59:59', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-07-11', 'YYYY-MM-DD'));

INSERT INTO Spectacol (spectacol_id, ora_inceput, ora_sfarsit, ziua_concert)
VALUES (13, TO_TIMESTAMP('2025-07-12 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-07-12 22:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-07-12', 'YYYY-MM-DD'));

INSERT INTO Spectacol (spectacol_id, ora_inceput, ora_sfarsit, ziua_concert)
VALUES (14, TO_TIMESTAMP('2025-07-12 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-07-12 21:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-07-12', 'YYYY-MM-DD'));

INSERT INTO Spectacol (spectacol_id, ora_inceput, ora_sfarsit, ziua_concert)
VALUES (15, TO_TIMESTAMP('2025-07-12 22:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-07-12 23:59:59', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-07-12', 'YYYY-MM-DD'));

INSERT INTO Spectacol (spectacol_id, ora_inceput, ora_sfarsit, ziua_concert)
VALUES (16, TO_TIMESTAMP('2025-07-13 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-07-13 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-07-13', 'YYYY-MM-DD'));

INSERT INTO Spectacol (spectacol_id, ora_inceput, ora_sfarsit, ziua_concert)
VALUES (17, TO_TIMESTAMP('2025-07-13 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-07-13 21:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-07-13', 'YYYY-MM-DD'));

INSERT INTO Spectacol (spectacol_id, ora_inceput, ora_sfarsit, ziua_concert)
VALUES (18, TO_TIMESTAMP('2025-07-13 20:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-07-13 22:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-07-13', 'YYYY-MM-DD'));

INSERT INTO Spectacol (spectacol_id, ora_inceput, ora_sfarsit, ziua_concert)
VALUES (19, TO_TIMESTAMP('2025-07-13 22:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-07-13 23:59:59', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-07-13', 'YYYY-MM-DD'));

INSERT INTO Spectacol (spectacol_id, ora_inceput, ora_sfarsit, ziua_concert)
VALUES (20, TO_TIMESTAMP('2025-07-13 21:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-07-13 23:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-07-13', 'YYYY-MM-DD'));
INSERT INTO Spectacol (spectacol_id, ora_inceput, ora_sfarsit, ziua_concert)
VALUES (21, TO_TIMESTAMP('2025-07-14 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-07-14 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-07-14', 'YYYY-MM-DD'));

INSERT INTO Spectacol (spectacol_id, ora_inceput, ora_sfarsit, ziua_concert)
VALUES (22, TO_TIMESTAMP('2025-07-14 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-07-14 21:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-07-14', 'YYYY-MM-DD'));

INSERT INTO Spectacol (spectacol_id, ora_inceput, ora_sfarsit, ziua_concert)
VALUES (23, TO_TIMESTAMP('2025-07-14 22:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-07-14 23:59:59', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-07-14', 'YYYY-MM-DD'));

INSERT INTO Spectacol (spectacol_id, ora_inceput, ora_sfarsit, ziua_concert)
VALUES (24, TO_TIMESTAMP('2025-07-15 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-07-15 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-07-15', 'YYYY-MM-DD'));

INSERT INTO Spectacol (spectacol_id, ora_inceput, ora_sfarsit, ziua_concert)
VALUES (25, TO_TIMESTAMP('2025-07-15 20:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-07-15 22:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-07-15', 'YYYY-MM-DD'));




--Se Desfasoara
INSERT INTO Se_Desfasoara (spectacol_id, scena_id) VALUES (1, 1);
INSERT INTO Se_Desfasoara (spectacol_id, scena_id) VALUES (2, 2);
INSERT INTO Se_Desfasoara (spectacol_id, scena_id) VALUES (3, 3);
INSERT INTO Se_Desfasoara (spectacol_id, scena_id) VALUES (4, 1);
INSERT INTO Se_Desfasoara (spectacol_id, scena_id) VALUES (5, 2);
INSERT INTO Se_Desfasoara (spectacol_id, scena_id) VALUES (6, 3);
INSERT INTO Se_Desfasoara (spectacol_id, scena_id) VALUES (7, 1);
INSERT INTO Se_Desfasoara (spectacol_id, scena_id) VALUES (8, 2);
INSERT INTO Se_Desfasoara (spectacol_id, scena_id) VALUES (9, 3);
INSERT INTO Se_Desfasoara (spectacol_id, scena_id) VALUES (10, 1);
INSERT INTO Se_Desfasoara (spectacol_id, scena_id) VALUES (11, 2);
INSERT INTO Se_Desfasoara (spectacol_id, scena_id) VALUES (12, 3);
INSERT INTO Se_Desfasoara (spectacol_id, scena_id) VALUES (13, 1);
INSERT INTO Se_Desfasoara (spectacol_id, scena_id) VALUES (14, 2);
INSERT INTO Se_Desfasoara (spectacol_id, scena_id) VALUES (15, 3);
INSERT INTO Se_Desfasoara (spectacol_id, scena_id) VALUES (16, 1);
INSERT INTO Se_Desfasoara (spectacol_id, scena_id) VALUES (17, 2);
INSERT INTO Se_Desfasoara (spectacol_id, scena_id) VALUES (18, 3);
INSERT INTO Se_Desfasoara (spectacol_id, scena_id) VALUES (19, 1);
INSERT INTO Se_Desfasoara (spectacol_id, scena_id) VALUES (20, 2);
INSERT INTO Se_Desfasoara (spectacol_id, scena_id) VALUES (21, 3);
INSERT INTO Se_Desfasoara (spectacol_id, scena_id) VALUES (22, 1);
INSERT INTO Se_Desfasoara (spectacol_id, scena_id) VALUES (23, 2);
INSERT INTO Se_Desfasoara (spectacol_id, scena_id) VALUES (24, 3);
INSERT INTO Se_Desfasoara (spectacol_id, scena_id) VALUES (25, 1);


--Sustine
INSERT INTO Sustine (artist_id, spectacol_id) VALUES (1, 1);
INSERT INTO Sustine (artist_id, spectacol_id) VALUES (2, 2);
INSERT INTO Sustine (artist_id, spectacol_id) VALUES (3, 3);
INSERT INTO Sustine (artist_id, spectacol_id) VALUES (4, 4);
INSERT INTO Sustine (artist_id, spectacol_id) VALUES (5, 5);
INSERT INTO Sustine (artist_id, spectacol_id) VALUES (6, 6);
INSERT INTO Sustine (artist_id, spectacol_id) VALUES (7, 7);
INSERT INTO Sustine (artist_id, spectacol_id) VALUES (8, 8);
INSERT INTO Sustine (artist_id, spectacol_id) VALUES (9, 9);
INSERT INTO Sustine (artist_id, spectacol_id) VALUES (10, 10);
INSERT INTO Sustine (artist_id, spectacol_id) VALUES (11, 11);
INSERT INTO Sustine (artist_id, spectacol_id) VALUES (12, 12);
INSERT INTO Sustine (artist_id, spectacol_id) VALUES (13, 13);
INSERT INTO Sustine (artist_id, spectacol_id) VALUES (14, 14);
INSERT INTO Sustine (artist_id, spectacol_id) VALUES (15, 15);
INSERT INTO Sustine (artist_id, spectacol_id) VALUES (16, 16);
INSERT INTO Sustine (artist_id, spectacol_id) VALUES (17, 17);
INSERT INTO Sustine (artist_id, spectacol_id) VALUES (18, 18);
INSERT INTO Sustine (artist_id, spectacol_id) VALUES (19, 19);
INSERT INTO Sustine (artist_id, spectacol_id) VALUES (20, 20);
INSERT INTO Sustine (artist_id, spectacol_id) VALUES (21, 21);
INSERT INTO Sustine (artist_id, spectacol_id) VALUES (22, 22);
INSERT INTO Sustine (artist_id, spectacol_id) VALUES (23, 23);
INSERT INTO Sustine (artist_id, spectacol_id) VALUES (24, 24);
INSERT INTO Sustine (artist_id, spectacol_id) VALUES (25, 25);

--Administreaza

INSERT INTO Administreaza (admin_id, scena_id) VALUES (1, 1);
INSERT INTO Administreaza (admin_id, scena_id) VALUES (2, 2);
INSERT INTO Administreaza (admin_id, scena_id) VALUES (3, 3);

--Emite
INSERT INTO Emite (admin_id, bilet_id) VALUES (4, 1);
INSERT INTO Emite (admin_id, bilet_id) VALUES (5, 2);
INSERT INTO Emite (admin_id, bilet_id) VALUES (7, 4);
INSERT INTO Emite (admin_id, bilet_id) VALUES (8, 5);
INSERT INTO Emite (admin_id, bilet_id) VALUES (9, 6);
INSERT INTO Emite (admin_id, bilet_id) VALUES (10, 7);



--Sponsor

INSERT INTO Sponsor (sponsor_id, suma_sponsorizare, nume_sponsor, site, tara_origine)
VALUES (1, 50000.00, 'Primaria Cluj-Napoca', 'https://www.primariaclujnapoca.ro', 'Romania');

INSERT INTO Sponsor (sponsor_id, suma_sponsorizare, nume_sponsor, site, tara_origine)
VALUES (2, 100000.00, 'Red Bull', 'https://www.redbull.ro', 'Austria');

INSERT INTO Sponsor (sponsor_id, suma_sponsorizare, nume_sponsor, site, tara_origine)
VALUES (3, 120000.00, 'Monster Energy', 'https://www.monsterenergy.com', 'Statele Unite');

INSERT INTO Sponsor (sponsor_id, suma_sponsorizare, nume_sponsor, site, tara_origine)
VALUES (4, 80000.00, 'Carlsberg Romania', 'https://www.carlsberg.com', 'Romania');

INSERT INTO Sponsor (sponsor_id, suma_sponsorizare, nume_sponsor, site, tara_origine)
VALUES (5, 150000.00, 'Digi Communications', 'https://www.digi.ro', 'Romania');

INSERT INTO Sponsor (sponsor_id, suma_sponsorizare, nume_sponsor, site, tara_origine)
VALUES (6, 90000.00, 'Coca-Cola HBC Romania', 'https://www.cokecolafrost.ro', 'Romania');

INSERT INTO Sponsor (sponsor_id, suma_sponsorizare, nume_sponsor, site, tara_origine)
VALUES (7, 110000.00, 'Rock FM', 'https://www.rockfm.ro', 'Romania');

INSERT INTO Sponsor (sponsor_id, suma_sponsorizare, nume_sponsor, site, tara_origine)
VALUES (8, 100000.00, 'Heineken Romania', 'https://www.heinekenromania.ro', 'Romania');

--Sponsorizeaza
INSERT INTO Sponsorizeaza (sponsor_id, spectacol_id, suma_sponsorizare) VALUES (1, 5, 50000.00);
INSERT INTO Sponsorizeaza (sponsor_id, spectacol_id, suma_sponsorizare) VALUES (2, 10, 75000.00);
INSERT INTO Sponsorizeaza (sponsor_id, spectacol_id, suma_sponsorizare) VALUES (3, 15, 60000.00);




-- Stergere tabelele asociative
DROP TABLE Se_Defasoara;
DROP TABLE Sustine;
DROP TABLE Emite;
DROP TABLE Administreaza;
DROP TABLE Sponsorizeaza;

-- Sterge tabelele dependente de cele asociative
DROP TABLE Bilet;
DROP TABLE Spectacol;
DROP TABLE Scena;
DROP TABLE Artist;
DROP TABLE Sponsor;

-- Stergere tabele fara dependente
DROP TABLE Participant;
DROP TABLE Organizator;
