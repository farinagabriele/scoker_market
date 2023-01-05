CREATE TABLE Giocatore(
     Codice_Giocatore char(11) Primary Key,
     Nome char(40) NOT NULL,
     Cognome char(40) NOT NULL,
     Ruolo char(4),
     Data_Nascita date,
     Citta_Provenienza char(20)
)
