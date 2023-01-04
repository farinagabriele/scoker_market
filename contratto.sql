create table Contratto(
    codice_contratto int,
    data_inizio date NOT NULL,
    data_scadenza date NOT NULL,
    stipendio_annuale int NOT NULL,
    precentuale_possesso float,
    numero_maglia int,
    codice_giocatore int,
    partita_iva char(11),
    primary key(codice_contratto),
    foreign key(codice_giocatore) references giocatore(Codice_Giocatore),
    foreign key(partita_iva) references squadra(Partita_IVA)
)
