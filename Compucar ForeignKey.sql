 -- Creacion de Foreign Keys--

ALTER TABLE Personas
    ADD CONSTRAINT fk_personas_generos
    FOREIGN KEY ( Fk_Genero) 
    REFERENCES generos(IdGenero);
    
ALTER TABLE Instructores
    ADD CONSTRAINT fk_instructores_personas
    FOREIGN KEY (Fk_Persona) 
    REFERENCES Personas(Identificacion);    
    
ALTER TABLE Estudiantes
    ADD CONSTRAINT fk_estudiantes_personas
    FOREIGN KEY (Fk_Persona) 
    REFERENCES Personas(Identificacion);        
---------------------------------------    
ALTER TABLE Vehiculos
    ADD CONSTRAINT fk_vehiculos_colores
    FOREIGN KEY (Fk_Color) 
    REFERENCES Vehiculos_Colores(IdColor);

ALTER TABLE Vehiculos
    ADD CONSTRAINT fk_vehiculos_marcas
    FOREIGN KEY (Fk_Marca) 
    REFERENCES Vehiculos_Marcas(IdMarca);    
        
ALTER TABLE Vehiculos
    ADD CONSTRAINT fk_vehiculos_tipos
    FOREIGN KEY (Fk_Tipo) 
    REFERENCES Vehiculos_Tipos(IdTipo);   
    
-----------------------------------------
ALTER TABLE Cursos
    ADD CONSTRAINT fk_cursos_modalidades
    FOREIGN KEY (Fk_Modalidad) 
    REFERENCES CursoModalidades(IdModalidades);
        
ALTER TABLE Cursos
    ADD CONSTRAINT fk_cursos_tipos
    FOREIGN KEY (Fk_Nivel) 
    REFERENCES CursoTipos(IdTipo);
    
ALTER TABLE Cursos
    ADD CONSTRAINT fk_cursos_niveles
    FOREIGN KEY (Fk_Tipo) 
    REFERENCES CursoNiveles(IdNiveles);
----------------------------------------------

   
ALTER TABLE Matricula
    ADD CONSTRAINT fk_matricula_estudiantes
    FOREIGN KEY (FK_ESTUDIANTE)
    REFERENCES Estudiantes(IdEstudiante);

   
ALTER TABLE Matricula_Detalle
    ADD CONSTRAINT fk_matriculadetalle_matriculas
    FOREIGN KEY (Pk_Fk_Matricula) 
    REFERENCES Matricula(IdMatricula);        
     
ALTER TABLE Matricula_Detalle
    ADD CONSTRAINT fk_matriculadetalle_curso
    FOREIGN KEY (Fk_Curso) 
    REFERENCES Cursos(IdCurso);       
    
    