# Calcio Mercato
Analisi, progettazione e realizzazione di un database contenente i dati relativi ai calciatori, le squadre in cui giocano ed i loro contratti. Implementazione di un sito web che potrebbe interfacciarsi con il database.
## Autori
Farina Gabriele, Alessio Mercia, Mannoni Francesco, Savo Valerio.
### Corso 
ITIS Armellini classe V I
## Struttura cartelle
### Database
Contiene il database _gestionecalciomercato.sql_ di cui è stato realizzato il modello fisico con i comandi del modulo **DDL** ed il popolamento, realizzato attraverso i comandi del modulo **DML**.
### Popolamento
Contiene i file _.sql_ per la query di **INSERT**:
1. _popolamento_contratto.sql_ -> contiene 5 query per l'inserimento di 5 
                                  record nella relazione **contratto**.
2. _popolamento_squadra.sql_ -> contiene 5 query per l'inserimento di 5 
                                  record nella relazione **squadra**.
3. _popolamento_giocatore.sql_ -> contiene 5 query per l'inserimento di 5 
                                  record nella relazione **giocatore**.
### Struttura tabelle
Contiene i file _.sql_ per la **CREATE** delle tabelle:
1. _contratto.sql_ -> Contiene la creazione e struttura della relazione 
                      **contratto**.
2. _giocatore.sql_ -> Contiene la creazione e struttura della relazione 
                      **giocatore**.
3. _squadra.sql_ -> Contiene la creazione e struttura della relazione 
                      **squadra**.
### htdocs
Contiene i file _.html_ e _.css_ per l'implementazione di un sito web che potrebbe interfacciarsi con il database:
1. _tema.html_ -> è il tema che utilizziamo in tutte le altre pagine.
2. _index.html_ -> è l'homepage del sito web.
3. _nuovo_calciatore.html_ -> Contiene un form per l'inserimento dei campi   
                              per la Query B
4. _calciatori_svincolati.html_ -> Contiene una tabella per il report della 
                                   Query B.
5. _style.css_ -> Contiene lo **style** applicato a tutte le pagine del sito 
                  web.
### images
Contiene il _logo.png_, l'immagine utilizzata come logo del sito web.


