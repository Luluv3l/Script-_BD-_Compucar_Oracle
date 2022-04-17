                                       --CREACION DE TABLAS---

CREATE TABLE Personas (
    Identificacion VARCHAR(15) NOT NULL,
    Nombre VARCHAR(30) NOT NULL,
    Apellido1 VARCHAR(20) NOT NULL,
    Apellido2 VARCHAR(20) NOT NULL,
    Fk_Genero NUMBER(3) NOT NULL,
    Telefono VARCHAR(8) NOT NULL,
    CorreoElectronico VARCHAR(60) NOT NULL,
    PRIMARY KEY (Identificacion)); 

CREATE TABLE Instructores (
    IdInstructor  NUMBER(3) NOT NULL,
    Fk_Persona VARCHAR(15) NOT NULL,
    Fk_Estado NUMBER(2) NOT NULL,
    PRIMARY KEY (IdInstructor));

CREATE TABLE Estudiantes (
    IdEstudiante NUMBER(3) NOT NULL,
    Fk_Persona VARCHAR(15) NOT NULL,
    Fk_Estado NUMBER(3) NOT NULL,
    PRIMARY KEY (IdEstudiante));
    
CREATE TABLE Generos (
    IdGenero NUMBER(3) NOT NULL ,
    Descripcion VARCHAR(15) NOT NULL,
    PRIMARY KEY (IdGenero));
-----------------------------------------

CREATE TABLE Vehiculos (
    Placa VARCHAR(10) NOT NULL,
    Fk_Color NUMBER(3) NOT NULL,
    Fk_Marca NUMBER(3) NOT NULL,
    Fk_Tipo NUMBER(3) NOT NULL,
    Anno TIMESTAMP(4) NOT NULL,
    Fk_Estado NUMBER(3) NOT NULL,
    PRIMARY KEY (Placa));

CREATE TABLE Vehiculos_Marcas (
    IdMarca NUMBER(3) NOT NULL,
    Descripcion VARCHAR(15) NOT NULL,
    Fk_Estado NUMBER(3) NOT NULL,
    PRIMARY KEY (IdMarca));

CREATE TABLE Vehiculos_Colores (
    IdColor NUMBER(3) NOT NULL ,
    Descripcion VARCHAR(15) NOT NULL,
    Fk_Estado NUMBER(3) NOT NULL,
    PRIMARY KEY (IdColor));
 
CREATE TABLE Vehiculos_Tipos (
    IdTipo NUMBER(3) NOT NULL ,
    Descripcion VARCHAR(15) NOT NULL,
    Fk_Estado NUMBER(3) NOT NULL,
    PRIMARY KEY (IdTipo));
 
 ----------------------------------
CREATE TABLE Cursos (
    IdCurso NUMBER(3) NOT NULL,
    Fk_Tipo NUMBER(1) NOT NULL,
    Fk_Nivel NUMBER(1) NOT NULL,
    Fk_Modalidad NUMBER(1) NOT NULL,
    FechaInicio DATE NOT NULL,
    FechaTermina DATE NOT NULL,
    CantidadHoras NUMBER(2) NOT NULL,
    Detalle VARCHAR(120),
    Fk_Estado NUMBER(3) NOT NULL,
    PRIMARY KEY (IdCurso)); 
    
    CREATE TABLE CursoModalidades (
    IdModalidades NUMBER(1) NOT NULL ,
    Descripcion VARCHAR(15) NOT NULL,
    Fk_Estado NUMBER(3) NOT NULL,  
    PRIMARY KEY (IdModalidades));
  
CREATE TABLE CursoNiveles (
    IdNiveles NUMBER(1) NOT NULL ,
    Descripcion VARCHAR(15) NOT NULL,
    Fk_Estado NUMBER(3) NOT NULL,
    PRIMARY KEY (IdNiveles));
  
CREATE TABLE CursoTipos (
    IdTipo NUMBER(1) NOT NULL ,
    Descripcion VARCHAR(15) NOT NULL,
    Fk_Estado NUMBER(3) NOT NULL,
    PRIMARY KEY (IdTipo));
-------------------------------------

CREATE TABLE Matricula (
    IdMatricula NUMBER(3) NOT NULL,
    Fk_Estudiante NUMBER(3) NOT NULL,
    Fk_Estado NUMBER(3) NOT NULL,
    Fk_Periodo NUMBER(3) NOT NULL,
    TipoTransmision CHAR(1) NOT NULL,
    Periodo VARCHAR(10) NOT NULL,
    CHECK(TipoTransmision IN('A','M')),
    FechaMatricula TIMESTAMP NOT NULL,
    PRIMARY KEY (IdMatricula));
    
CREATE TABLE Matricula_Detalle (
    Pk_Fk_Matricula NUMBER(3) NOT NULL,
    Fk_Curso NUMBER(3) NOT NULL,
    Fk_Estado NUMBER(3) NOT NULL,
    Saldo NUMBER(2) NOT NULL,
    PRIMARY KEY (Pk_Fk_Matricula));

--------------------------------------
CREATE TABLE Matricula (
    IdMatricula NUMBER(3) NOT NULL,
    Fk_Estudiante NUMBER(3) NOT NULL,  
    TipoTransmision CHAR(1) NOT NULL,
    Periodo VARCHAR(10) NOT NULL,
    CHECK(TipoTransmision IN('A','M')),
    FechaMatricula TIMESTAMP NOT NULL,
    Fk_Estado NUMBER(3) NOT NULL,
    PRIMARY KEY (IdMatricula));
    
CREATE TABLE Matricula_Detalle (
    Pk_Fk_Matricula NUMBER(3) NOT NULL,
    Fk_Curso NUMBER(3) NOT NULL,
    Fk_Estado NUMBER(3) NOT NULL,
    Saldo NUMBER(2) NOT NULL,
    PRIMARY KEY (Pk_Fk_Matricula));