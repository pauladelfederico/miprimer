CREATE DATABASE ejercicio_final;
USE ejercicio_final;

CREATE TABLE `ejercicio_final`.`Dueno` (
  `DNI` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellido` VARCHAR(45) NOT NULL,
  `Teléfono` INT NOT NULL,
  `Dirección` VARCHAR(90) NOT NULL,
  PRIMARY KEY (`DNI`));

CREATE TABLE `ejercicio_final`.`Perro` (
  `ID_Perro` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Fecha_nac` DATE NOT NULL,
  `Sexo` CHAR(1) NOT NULL,
  `DNI_dueno` INT NOT NULL,
  PRIMARY KEY (`ID_Perro`),
  INDEX `DNI_dueno_idx` (`DNI_dueno` ASC) VISIBLE,
  CONSTRAINT `DNI_dueno`
    FOREIGN KEY (`DNI_dueno`)
    REFERENCES `ejercicio_final`.`dueno` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
CREATE TABLE `ejercicio_final`.`Historial` (
  `ID_Historial` INT NOT NULL AUTO_INCREMENT,
  `Fecha` DATE NOT NULL,
  `Perro` INT NOT NULL,
  `Descripción` VARCHAR(90) NOT NULL,
  `Monto` INT NOT NULL,
  PRIMARY KEY (`ID_Historial`),
  INDEX `Perro_idx` (`Perro` ASC) VISIBLE,
  CONSTRAINT `Perro`
    FOREIGN KEY (`Perro`)
    REFERENCES `ejercicio_final`.`Perro` (`ID_Perro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `ejercicio_final`.`Dueno` VALUES
(36426901, "Sergio", "Bianco", 1130545137, "Tte. Gral Juan Perón 1946"),
(22175572, "Jose", "Aldo", 5491112345678, "Brasil 123"),
(12635932, "Raúl", "García", 112345678, "Tucumán 3532"),
(40347123, "Ricarda", "Lopez", 1135723456, "Pasaje 34 123"),
(34853123, "Jorge", "Espósito", 34522156, "Ayacucho 30");

INSERT INTO `ejercicio_final`.`Perro` (Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES
("Floki", "2016-01-01", "M", 36426901),
("Mocho", "2012-09-15", "M", 12635932),
("Adentro", "2015-04-20", "M", 40347123),
("Capitán", "2021-06-06", "M", 34853123);

INSERT INTO `ejercicio_final`.`Historial` (Fecha, Perro, Descripción, Monto) VALUES
("2022-08-14", 2, "Corte, baño y uñas", 3500),
("2022-06-16", 1, "Cepillado", 300),
("2021-03-23", 1, "Corte y baño", 3300),
("2022-07-25", 4, "Peinado para competencia", 1000);

UPDATE Dueno
SET dirección = 'Batalla de Cepeda 1234'
WHERE DNI = 36426901;
