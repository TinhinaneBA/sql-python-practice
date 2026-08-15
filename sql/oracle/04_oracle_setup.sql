
-- DROP TABLE releves_pollution;
-- DROP TABLE communes;
-- DROP SEQUENCE releve_seq;

CREATE TABLE communes (
    commune_id     NUMBER PRIMARY KEY,
    nom            VARCHAR2(50) NOT NULL,
    region         VARCHAR2(50) NOT NULL,
    population     NUMBER,
    score_je       NUMBER(6,4),
    taux_pauvrete  NUMBER(5,2)
);

INSERT INTO communes VALUES (1, 'Le Havre', 'Seine-Maritime', 170000, 0.9041, 21.4);
INSERT INTO communes VALUES (2, 'Rouen', 'Seine-Maritime', 110000, 0.5451, 15.2);
INSERT INTO communes VALUES (3, 'Dieppe', 'Seine-Maritime', 30000, 0.55, 16.7);
INSERT INTO communes VALUES (4, 'Caen', 'Calvados', 105000, 0.1771, 9.8);
INSERT INTO communes VALUES (5, 'Evreux', 'Eure', 48000, 0.42, 13.1);
INSERT INTO communes VALUES (6, 'Cherbourg', 'Manche', 78000, 0.31, 11.0);

CREATE SEQUENCE releve_seq START WITH 1 INCREMENT BY 1;

CREATE TABLE releves_pollution (
    releve_id     NUMBER PRIMARY KEY,
    commune_id    NUMBER,
    mois          VARCHAR2(7),
    no2           NUMBER(5,1),
    CONSTRAINT fk_commune FOREIGN KEY (commune_id) REFERENCES communes(commune_id)
);

INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 1, '2025-01', 44.9);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 1, '2025-02', 43.2);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 1, '2025-03', 42.2);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 1, '2025-04', 40.5);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 1, '2025-05', 34.8);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 1, '2025-06', 32.7);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 1, '2025-07', 34.6);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 1, '2025-08', 34.2);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 1, '2025-09', 34.5);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 1, '2025-10', 39.0);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 1, '2025-11', 40.5);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 1, '2025-12', 42.7);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 2, '2025-01', 33.9);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 2, '2025-02', 29.8);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 2, '2025-03', 27.9);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 2, '2025-04', 26.7);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 2, '2025-05', 23.0);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 2, '2025-06', 22.8);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 2, '2025-07', 20.1);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 2, '2025-08', 20.2);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 2, '2025-09', 26.7);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 2, '2025-10', 27.2);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 2, '2025-11', 30.6);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 2, '2025-12', 30.6);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 3, '2025-01', 31.1);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 3, '2025-02', 31.3);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 3, '2025-03', 27.2);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 3, '2025-04', 26.5);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 3, '2025-05', 22.0);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 3, '2025-06', 20.3);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 3, '2025-07', 19.0);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 3, '2025-08', 23.5);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 3, '2025-09', 22.9);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 3, '2025-10', 24.3);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 3, '2025-11', 30.1);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 3, '2025-12', 29.3);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 4, '2025-01', 20.4);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 4, '2025-02', 16.4);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 4, '2025-03', 15.1);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 4, '2025-04', 14.4);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 4, '2025-05', 12.2);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 4, '2025-06', 9.2);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 4, '2025-07', 7.9);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 4, '2025-08', 8.5);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 4, '2025-09', 8.9);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 4, '2025-10', 13.0);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 4, '2025-11', 16.4);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 4, '2025-12', 20.9);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 5, '2025-01', 28.5);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 5, '2025-02', 24.6);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 5, '2025-03', 25.5);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 5, '2025-04', 21.4);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 5, '2025-05', 18.0);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 5, '2025-06', 17.7);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 5, '2025-07', 17.5);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 5, '2025-08', 18.2);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 5, '2025-09', 17.7);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 5, '2025-10', 21.5);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 5, '2025-11', 25.5);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 5, '2025-12', 28.7);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 6, '2025-01', 23.7);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 6, '2025-02', 23.3);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 6, '2025-03', 19.7);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 6, '2025-04', 16.6);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 6, '2025-05', 16.6);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 6, '2025-06', 15.2);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 6, '2025-07', 12.3);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 6, '2025-08', 14.7);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 6, '2025-09', 15.9);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 6, '2025-10', 17.4);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 6, '2025-11', 21.9);
INSERT INTO releves_pollution VALUES (releve_seq.NEXTVAL, 6, '2025-12', 25.9);

COMMIT;

-- SECTION 01 : TEST
SELECT COUNT(*) FROM communes; --6
SELECT COUNT(*) FROM releves_pollution; --72

SELECT 1 + 1 FROM DUAL; -- 2
SELECT SYSDATE FROM DUAL; -- 2026-08-13 11:03:43
SELECT UPPER('le havre') FROM DUAL; -- LE HAVRE


-- SECTION 02 : ROWNUM vs FETCH FIRST
-- La version piégée
SELECT nom, score_je
FROM communes
WHERE ROWNUM <= 3
ORDER BY score_je DESC;

-- La correction avec sous-requete
SELECT * FROM (
    SELECT nom, score_je
    FROM communes
    ORDER BY score_je DESC
              )
WHERE ROWNUM <= 3;

-- Syntaxe moderne
SELECT nom, score_je
FROM communes
ORDER BY score_je DESC
FETCH FIRST 3 ROWS ONLY ;

-- Version piégée avec ROWNUM <= 4
SELECT nom, score_je
FROM communes
WHERE ROWNUM <= 4
ORDER BY score_je DESC;

-- Version correcte avec FETCH FIRST
SELECT nom, score_je
FROM communes
ORDER BY score_je DESC
FETCH FIRST 4 ROWS ONLY;

-- SECTION 03 :
-- Observer la séquence déjà créée
SELECT releve_seq.NEXTVAL FROM DUAL; -- 81
SELECT releve_seq.CURRVAL FROM DUAL; -- 81

-- Insérer le relevé janvier 2026
INSERT INTO releves_pollution ( releve_id, commune_id, mois, no2)
VALUES (releve_seq.nextval, 1, '2026-01', 41.3);

COMMIT ;

SELECT * FROM releves_pollution WHERE mois = '2026-01';

-- SECTION 04 : PL/SQL — les blocs anonymes

DECLARE
    v_nom    communes.nom%TYPE;
    v_score  communes.score_je%TYPE;
BEGIN
    SELECT nom, score_je
    INTO v_nom, v_score
    FROM communes
    WHERE commune_id = 1;

    DBMS_OUTPUT.PUT_LINE('Commune : ' || v_nom || ' - Score JE : ' || v_score);
END;
/

DECLARE
    CURSOR c_communes IS
        SELECT nom, score_je
        FROM communes
        ORDER BY score_je DESC;

    v_nom    communes.nom%TYPE;
    v_score  communes.score_je%TYPE;
BEGIN
    OPEN c_communes;
    LOOP
        FETCH c_communes INTO v_nom, v_score;
        EXIT WHEN c_communes%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(v_nom || ' : ' || v_score);
    END LOOP;
    CLOSE c_communes;
END;
/

-- Fonction stockée

CREATE OR REPLACE FUNCTION categoriser_severite (p_score IN NUMBER)
RETURN VARCHAR2
IS
BEGIN
    IF p_score >= 0.7 THEN
        RETURN 'CRITIQUE';
    ELSIF p_score >= 0.35 THEN
        RETURN 'MODÉRÉ';
    ELSE
        RETURN 'BON';
    END IF;
END;
/

SELECT nom, score_je, categoriser_severite(score_je) AS severite
FROM communes
ORDER BY score_je DESC;

-- Procédure stockée (paramètres IN/OUT)
CREATE OR REPLACE PROCEDURE stats_region (
    p_region        IN  communes.region%TYPE,
    p_moyenne       OUT NUMBER,
    p_nb_communes   OUT NUMBER
)
IS
BEGIN
    SELECT AVG(score_je), COUNT(*)
    INTO p_moyenne, p_nb_communes
    FROM communes
    WHERE region = p_region;
END;
/

DECLARE
    v_moy NUMBER;
    v_nb  NUMBER;
BEGIN
    stats_region('Seine-Maritime', v_moy, v_nb);
    DBMS_OUTPUT.PUT_LINE('Moyenne : ' || ROUND(v_moy, 3) || ' sur ' || v_nb || ' communes');
END;
/

-- Gestion des exceptions
DECLARE
    v_score communes.score_je%TYPE;
BEGIN
    SELECT score_je INTO v_score
    FROM communes
    WHERE commune_id = 999;   -- cet ID n'existe pas

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Aucune commune trouvée avec cet ID.');
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('Plusieurs lignes trouvées, SELECT INTO en attend une seule.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Erreur inattendue : ' || SQLERRM);
END;
/