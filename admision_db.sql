CREATE TABLE resultado_final (
                id_result_final INTEGER NOT NULL,
                id_postulante INTEGER NOT NULL,
                id_periodo INTEGER NOT NULL,
                id_carrera INTEGER NOT NULL,
                dni VARCHAR(8) NOT NULL,
                punto_conocimiento DOUBLE NOT NULL,
                punto_entrevista DOUBLE NOT NULL,
                eval_psicologica INTEGER NOT NULL,
                CONSTRAINT resultado_final_pk PRIMARY KEY (id_result_final AUTOINCREMENT)
);

CREATE TABLE usuario (
                id_usuario INTEGER NOT NULL,
                user VARCHAR(20) NOT NULL,
                clave VARCHAR(60) NOT NULL,
                estado VARCHAR(10) NOT NULL,
                perfil VARCHAR(16) NOT NULL,
                CONSTRAINT usuario_pk PRIMARY KEY (id_usuario AUTOINCREMENT)
);


CREATE TABLE areas (
                id_area INTEGER NOT NULL,
                nombrearea VARCHAR(30) NOT NULL,
                siglas VARCHAR(8) NOT NULL,
                CONSTRAINT areas_pk PRIMARY KEY (id_area AUTOINCREMENT)
);


CREATE TABLE banco_preguntas (
                id_bp INTEGER NOT NULL,
                id_area INTEGER NOT NULL,
                pregunta VARCHAR(200) NOT NULL,
                CONSTRAINT banco_preguntas_pk PRIMARY KEY (id_bp AUTOINCREMENT),
				FOREIGN KEY (id_area) REFERENCES areas (id_area) ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE
);


CREATE TABLE periodo (
                id_periodo INTEGER NOT NULL,
                nombre VARCHAR(20) NOT NULL,
                estado VARCHAR(6) NOT NULL,
                CONSTRAINT periodo_pk PRIMARY KEY (id_periodo AUTOINCREMENT)
);


CREATE TABLE preguntas (
                id_pregunta INTEGER NOT NULL,
                id_bp INTEGER NOT NULL,
                id_area_periodo INTEGER NOT NULL,
                resultado VARCHAR(5) NOT NULL,
                numero INTEGER NOT NULL,
                CONSTRAINT preguntas_pk PRIMARY KEY (id_pregunta AUTOINCREMENT),
				FOREIGN KEY (id_bp) REFERENCES banco_preguntas (id_bp) ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE,
				FOREIGN KEY (id_area_periodo) REFERENCES area_periodo (id_area_periodo) ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE
);


CREATE TABLE area_examen (
                id_area_examen INTEGER NOT NULL,
                nombreae VARCHAR(30) NOT NULL,
                CONSTRAINT area_examen_pk PRIMARY KEY (id_area_examen AUTOINCREMENT)
);


CREATE TABLE area_periodo_result (
                id_area_periodo_result INTEGER NOT NULL,
                id_area_periodo INTEGER NOT NULL,
                id_area_examen INTEGER NOT NULL,
                porcentaje DOUBLE NOT NULL,
                CONSTRAINT area_periodo_result_pk PRIMARY KEY (id_area_periodo_result AUTOINCREMENT),
				FOREIGN KEY (id_area_periodo) REFERENCES area_periodo (id_area_periodo) ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE,
				FOREIGN KEY (id_area_examen) REFERENCES area_examen (id_area_examen) ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE
);


CREATE TABLE facultad (
                id_facultad INTEGER NOT NULL,
                nombrefacultad VARCHAR(40) NOT NULL,
                CONSTRAINT facultad_pk PRIMARY KEY (id_facultad AUTOINCREMENT)
);


CREATE TABLE carrera (
                id_carrera INTEGER NOT NULL,
                id_facultad INTEGER NOT NULL,
                id_area_examen INTEGER NOT NULL,
                nombrecarrera VARCHAR(40) NOT NULL,
                CONSTRAINT carrera_pk PRIMARY KEY (id_carrera AUTOINCREMENT),
				FOREIGN KEY (id_area_examen) REFERENCES area_examen (id_area_examen) ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE,
				FOREIGN KEY (id_facultad) REFERENCES facultad (id_facultad) ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE
);


CREATE TABLE postulante (
                id_postulante INTEGER NOT NULL,
                id_carrera INTEGER NOT NULL,
                id_periodo INTEGER NOT NULL,
                dni VARCHAR(8) NOT NULL,
                nombre VARCHAR(60) NOT NULL,
                apellido_pat VARCHAR(40) NOT NULL,
                apellido_mat VARCHAR(40) NOT NULL,
                modalidad VARCHAR(20) NOT NULL,
                estado VARCHAR(6) NOT NULL,
                CONSTRAINT postulante_pk PRIMARY KEY (id_postulante AUTOINCREMENT),
				FOREIGN KEY (id_periodo) REFERENCES periodo (id_periodo) ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE,
				FOREIGN KEY (id_carrera) REFERENCES carrera (id_carrera) ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE
);


CREATE TABLE resultado (
                id_resultado INTEGER NOT NULL,
                id_pregunta INTEGER NOT NULL,
                id_postulante INTEGER NOT NULL,
                respuesta VARCHAR(5) NOT NULL,
                punto INTEGER NOT NULL,
                id_area_periodo INTEGER NOT NULL,
                CONSTRAINT resultado_pk PRIMARY KEY (id_resultado AUTOINCREMENT),
				FOREIGN KEY (id_pregunta) REFERENCES preguntas (id_pregunta) ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE,
				FOREIGN KEY (id_postulante) REFERENCES postulante (id_postulante) ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE
);



CREATE TABLE area_periodo (
                id_area_periodo INTEGER NOT NULL,
                id_area INTEGER NOT NULL,
                id_periodo INTEGER NOT NULL,
                CONSTRAINT area_periodo_pk PRIMARY KEY (id_area_periodo AUTOINCREMENT),
				FOREIGN KEY (id_area) REFERENCES areas (id_area) ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE,
				FOREIGN KEY (id_periodo) REFERENCES periodo (id_periodo) ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE
);
