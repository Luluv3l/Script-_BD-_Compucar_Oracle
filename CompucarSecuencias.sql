                                            -- Creacion de Sequences (AutoIncrementales)--
                                            
CREATE SEQUENCE generos_sequence;
CREATE OR REPLACE TRIGGER generos_en_insert
  BEFORE INSERT ON generos
  FOR EACH ROW
BEGIN
  SELECT generos_sequence.nextval
  INTO :new.IdGenero
  FROM dual;
END;

-----------------------------------------
CREATE SEQUENCE estu_sequence;
CREATE OR REPLACE TRIGGER estu_en_insert
  BEFORE INSERT ON estudiantes
  FOR EACH ROW
BEGIN
  SELECT estu_sequence.nextval
  INTO :new.IdEstudiante
  FROM dual;
END;

-----------------------------------------

CREATE SEQUENCE veMarcas_sequence;
CREATE OR REPLACE TRIGGER veMarcas_on_insert
  BEFORE INSERT ON vehiculos_marcas
  FOR EACH ROW
BEGIN
  SELECT veMarcas_sequence.nextval
  INTO :new.IdMarca
  FROM dual;
END;

CREATE SEQUENCE veTipos_sequence;
CREATE OR REPLACE TRIGGER veTipos_on_insert
  BEFORE INSERT ON vehiculos_tipos
  FOR EACH ROW
BEGIN
  SELECT veTipos_sequence.nextval
  INTO :new.IdTipo
  FROM dual;
END;

CREATE SEQUENCE veColores_sequence;
CREATE OR REPLACE TRIGGER veColores_on_insert
  BEFORE INSERT ON vehiculos_colores
  FOR EACH ROW
BEGIN
  SELECT veColores_sequence.nextval
  INTO :new.IdColor
  FROM dual;
END;



---------------------------------------
CREATE SEQUENCE Cursos_sequence;
CREATE OR REPLACE TRIGGER Cursos_en_insert
  BEFORE INSERT ON Cursos
  FOR EACH ROW
BEGIN
  SELECT Cursos_sequence.nextval
  INTO :new.IdCurso
  FROM dual;
END;

CREATE SEQUENCE curMol_sequence;
CREATE OR REPLACE TRIGGER curMol_en_insert
  BEFORE INSERT ON CursoModalidades
  FOR EACH ROW
BEGIN
  SELECT curMol_sequence.nextval
  INTO :new.IdModalidades
  FROM dual;
END;

CREATE SEQUENCE curTipo_sequence;
CREATE OR REPLACE TRIGGER curTipo_en_insert
  BEFORE INSERT ON CursoTipos
  FOR EACH ROW
BEGIN
  SELECT curTipo_sequence.nextval
  INTO :new.IdTipo
  FROM dual;
END;

CREATE SEQUENCE curNiveles_sequence;
CREATE OR REPLACE TRIGGER curNiveles_en_insert
  BEFORE INSERT ON CursoNiveles
  FOR EACH ROW
BEGIN
  SELECT curNiveles_sequence.nextval
  INTO :new.IdNiveles
  FROM dual;
END;


CREATE SEQUENCE matri_sequence;
CREATE OR REPLACE TRIGGER matri_en_insert
  BEFORE INSERT ON Matricula
  FOR EACH ROW
BEGIN
  SELECT  matri_sequence.nextval
  INTO :new.IdMatricula
  FROM dual;
END;


