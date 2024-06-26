-- MySQL Script generated by MySQL Workbench
-- Sat Jun  8 21:14:46 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema proyecto_app_canchas
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema proyecto_app_canchas
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `proyecto_app_canchas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `proyecto_app_canchas` ;

-- -----------------------------------------------------
-- Table `proyecto_app_canchas`.`calendario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto_app_canchas`.`calendario` (
  `Fecha` DATE NOT NULL,
  `Dia_nombre` VARCHAR(10) NULL DEFAULT NULL,
  `mes` VARCHAR(10) NULL DEFAULT NULL,
  `Año` INT NULL DEFAULT NULL,
  `Habil` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Fecha`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proyecto_app_canchas`.`canchas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto_app_canchas`.`canchas` (
  `Id_cancha` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(20) NULL DEFAULT NULL,
  `capacidad` INT NULL DEFAULT NULL,
  `precio_alquiler` FLOAT NULL DEFAULT NULL,
  PRIMARY KEY (`Id_cancha`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proyecto_app_canchas`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto_app_canchas`.`usuarios` (
  `ID_usuario` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(50) NULL DEFAULT NULL,
  `Apellido` VARCHAR(50) NULL DEFAULT NULL,
  `Tel_Usuario` VARCHAR(50) NULL DEFAULT NULL,
  `DNI` INT NULL DEFAULT NULL,
  `Fecha_Nac` DATE NULL DEFAULT NULL,
  `Mail` VARCHAR(100) NULL DEFAULT NULL,
  `Nombre_Usuario` VARCHAR(100) NULL DEFAULT NULL,
  `pass` VARCHAR(100) NULL DEFAULT NULL,
  `Precio_alquiler` FLOAT NULL DEFAULT NULL,
  PRIMARY KEY (`ID_usuario`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proyecto_app_canchas`.`turnos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto_app_canchas`.`turnos` (
  `Id_turno` INT NOT NULL AUTO_INCREMENT,
  `Turno` VARCHAR(20) NULL DEFAULT NULL,
  `Hora_desde` VARCHAR(10) NULL DEFAULT NULL,
  `Hora_Hasta` VARCHAR(10) NULL DEFAULT NULL,
  PRIMARY KEY (`Id_turno`))
ENGINE = InnoDB
AUTO_INCREMENT = 15
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proyecto_app_canchas`.`partido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto_app_canchas`.`partido` (
  `Id_partido` INT NOT NULL AUTO_INCREMENT,
  `Fecha` DATE NULL DEFAULT NULL,
  `Id_turno` INT NULL DEFAULT NULL,
  `id_usuario` INT NULL DEFAULT NULL,
  `Id_cancha` INT NULL DEFAULT NULL,
  `Equipo_completo` VARCHAR(2) NULL DEFAULT NULL,
  `Sumar_Jugador` VARCHAR(2) NULL DEFAULT NULL,
  `Q_Faltan` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Id_partido`),
  INDEX `fk_partido_usuarios_idx` (`Id_cancha` ASC) VISIBLE,
  INDEX `fk_partido_turnos1_idx` (`Id_turno` ASC) VISIBLE,
  INDEX `fk_partido_calendario1_idx` (`Fecha` ASC) VISIBLE,
  CONSTRAINT `fk_partido_usuarios`
    FOREIGN KEY (`Id_cancha`)
    REFERENCES `proyecto_app_canchas`.`usuarios` (`ID_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_partido_turnos1`
    FOREIGN KEY (`Id_turno`)
    REFERENCES `proyecto_app_canchas`.`turnos` (`Id_turno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_partido_calendario1`
    FOREIGN KEY (`Fecha`)
    REFERENCES `proyecto_app_canchas`.`calendario` (`Fecha`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_partido_canchas1`
    FOREIGN KEY (`Id_cancha`)
    REFERENCES `proyecto_app_canchas`.`canchas` (`Id_cancha`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proyecto_app_canchas`.`jugadores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto_app_canchas`.`jugadores` (
  `Id_registro` INT NOT NULL AUTO_INCREMENT,
  `id_partido` INT NULL DEFAULT NULL,
  `id_Usuario` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Id_registro`),
  INDEX `fk_jugadores_partido1_idx` (`id_partido` ASC) VISIBLE,
  INDEX `fk_jugadores_usuarios1_idx` (`id_Usuario` ASC) VISIBLE,
  CONSTRAINT `fk_jugadores_partido1`
    FOREIGN KEY (`id_partido`)
    REFERENCES `proyecto_app_canchas`.`partido` (`Id_partido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_jugadores_usuarios1`
    FOREIGN KEY (`id_Usuario`)
    REFERENCES `proyecto_app_canchas`.`usuarios` (`ID_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proyecto_app_canchas`.`periodo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto_app_canchas`.`periodo` (
  `Id_Periodo` INT NOT NULL AUTO_INCREMENT,
  `Periodo` CHAR(20) NULL DEFAULT NULL,
  `Fecha_desde` DATE NULL DEFAULT NULL,
  `Fecha_hasta` DATE NULL DEFAULT NULL,
  `Activo` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Id_Periodo`))
ENGINE = InnoDB
AUTO_INCREMENT = 13
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proyecto_app_canchas`.`Administradores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto_app_canchas`.`Administradores` (
  `Id_Administrador` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Apellido` VARCHAR(45) NULL,
  `Usuario` VARCHAR(45) NULL,
  PRIMARY KEY (`Id_Administrador`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
