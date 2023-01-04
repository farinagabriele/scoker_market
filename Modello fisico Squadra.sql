CREATE TABLE Squadra(
    Partita_IVA char(11) Primary key ,
    Denominazione char(15) NOT NULL,
    Anno_fondazione int,
    Sede_indirizzo varchar(30),
    Sede_citta varchar(30),
    Email varchar(40),
    Telefono char(10),
)