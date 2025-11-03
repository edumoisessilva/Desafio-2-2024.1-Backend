
CREATE SCHEMA IF NOT EXISTS `detran` ;
USE `detran` ;

-- -----------------------------------------------------
-- Table `detran`.`categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `detran`.`categoria` (
  `id_categoria` INT(2) NOT NULL,
  `nome_categoria` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_categoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `detran`.`modelo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `detran`.`modelo` (
  `id_modelo` INT(6) NOT NULL,
  `nome_modelo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_modelo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `detran`.`proprietario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `detran`.`proprietario` (
  `cpf` VARCHAR(11) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `endereco` VARCHAR(45) NOT NULL,
  `bairro` VARCHAR(45) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `estado` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  `sexo` CHAR(1) NOT NULL,
  `data_nascimento` DATE NOT NULL,
  `idade` INT NOT NULL,
  PRIMARY KEY (`cpf`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `detran`.`veiculo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `detran`.`veiculo` (
  `placa` VARCHAR(7) NOT NULL,
  `chassi` VARCHAR(17) NOT NULL,
  `cor` VARCHAR(20) NOT NULL,
  `ano` DATE NOT NULL,
  `categoria_id_categoria` INT NOT NULL,
  `modelo_id_modelo` INT NOT NULL,
  `proprietario_cpf` VARCHAR(11) NOT NULL,
  PRIMARY KEY (`placa`, `categoria_id_categoria`, `modelo_id_modelo`, `proprietario_cpf`),
  INDEX `fk_veiculo_categoria_idx` (`categoria_id_categoria`),
  INDEX `fk_veiculo_modelo1_idx` (`modelo_id_modelo`),
  INDEX `fk_veiculo_proprietario1_idx` (`proprietario_cpf`),
  CONSTRAINT `fk_veiculo_categoria`
    FOREIGN KEY (`categoria_id_categoria`)
    REFERENCES `detran`.`categoria` (`id_categoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_veiculo_modelo1`
    FOREIGN KEY (`modelo_id_modelo`)
    REFERENCES `detran`.`modelo` (`id_modelo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_veiculo_proprietario1`
    FOREIGN KEY (`proprietario_cpf`)
    REFERENCES `detran`.`proprietario` (`cpf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `detran`.`local`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `detran`.`local` (
  `id_local` INT NOT NULL,
  `latitude` DECIMAL NULL,
  `longitude` DECIMAL NULL,
  `velocidade_permitida` DOUBLE NULL,
  PRIMARY KEY (`id_local`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `detran`.`infracao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `detran`.`infracao` (
  `id_infracao` INT NOT NULL,
  `veiculo_placa` VARCHAR(7) NOT NULL,
  `local_id_local` INT NOT NULL,
  `data_infracao` DATE NOT NULL,
  PRIMARY KEY (`id_infracao`, `veiculo_placa`, `local_id_local`),
  INDEX `fk_infracao_veiculo1_idx` (`veiculo_placa`),
  INDEX `fk_infracao_local1_idx` (`local_id_local`),
  CONSTRAINT `fk_infracao_veiculo1`
    FOREIGN KEY (`veiculo_placa`)
    REFERENCES `detran`.`veiculo` (`placa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_infracao_local1`
    FOREIGN KEY (`local_id_local`)
    REFERENCES `detran`.`local` (`id_local`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB;
