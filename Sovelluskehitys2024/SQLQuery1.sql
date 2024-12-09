CREATE TABLE tuotteet (id INTEGER IDENTITY(1,1) PRIMARY KEY, nimi VARCHAR(50), hinta INTEGER);

CREATE TABLE asiakkaat (id INTEGER IDENTITY(1,1) PRIMARY KEY, nimi VARCHAR(50), osoite VARCHAR(150), puhelin VARCHAR(50));

CREATE TABLE herkkutilaus (id INTEGER IDENTITY(1,1) PRIMARY KEY, asiakas_id INTEGER REFERENCES asiakkaat ON DELETE CASCADE, tuote_id INTEGER REFERENCES herkut ON DELETE CASCADE, toimitettu BIT DEFAULT 0);

CREATE TABLE salit (id INTEGER IDENTITY (1,1) PRIMARY KEY, sali_nimi VARCHAR(50));

CREATE TABLE elokuvat (id INTEGER IDENTITY(1,1) PRIMARY KEY, title VARCHAR(50), sali_id INTEGER REFERENCES salit);

CREATE TABLE varaukset (id INTEGER IDENTITY(1,1) PRIMARY KEY, asiakas_id INTEGER REFERENCES asiakkaat, sali_id INTEGER REFERENCES salit, elokuva_id INTEGER REFERENCES elokuvat, herkkutilaus_id INTEGER REFERENCES herkkutilaus);


INSERT INTO salit (sali_nimi) VALUES ('Alfa');
INSERT INTO salit (sali_nimi) VALUES ('Bravo');
INSERT INTO salit (sali_nimi) VALUES ('Charlie');

SELECT * FROM salit;
SELECT * FROM tuotteet ;
SELECT * FROM asiakkaat;
SELECT * FROM herkkutilaus;

UPDATE tilaukset SET toimitettu=1 WHERE id=1

SELECT ti.id as id, a.nimi as asiakas, tu.nimi as tuote FROM tilaukset ti, asiakkaat a, tuotteet tu WHERE a.id=ti.asiakas_id AND tu.id=ti.tuote_id

DELETE FROM tuotteet WHERE nimi="kinkku";

