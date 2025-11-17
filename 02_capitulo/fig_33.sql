-- Especificación de tablas
CREATE TABLE pais (
    id_pais BIGINT NOT NULL AUTO_INCREMENT,
    nombre  VARCHAR(20) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE ciudad (
    id_pais BIGINT NOT NULL AUTO_INCREMENT,
    nombre  VARCHAR(20) NOT NULL,
    id_ciudad BIGINT NOT NULL
) ENGINE=InnoDB;

-- Especificación de claves primarias
ALTER TABLE pais
  ADD CONSTRAINT pk_pais PRIMARY KEY (id_pais);
ALTER TABLE ciudad
  ADD CONSTRAINT pk_ciudad PRIMARY KEY (id_ciudad);

-- Especificación de claves foráneas
ALTER TABLE ciudad
  ADD CONSTRAINT fk_ciudad_pais
  FOREIGN KEY (id_pais)
  REFERENCES pais(id_pais);

