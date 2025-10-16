-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.32-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.11.0.7065
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para locadora
CREATE DATABASE IF NOT EXISTS `locadora` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `locadora`;

-- Copiando estrutura para view locadora.alugueis
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `alugueis` (
	`id` INT(11) NOT NULL,
	`cliente_id` INT(11) NULL,
	`veiculo_id` INT(11) NULL,
	`data_inicio` DATE NULL,
	`data_fim` DATE NULL,
	`preco_total` DECIMAL(10,2) NULL,
	`status` ENUM('Em andamento','Concluído','Cancelado') NULL COLLATE 'utf8mb4_general_ci'
);

-- Copiando estrutura para view locadora.clientes
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `clientes` (
	`id` INT(11) NOT NULL,
	`nome` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_general_ci',
	`data_nascimento` DATE NULL,
	`genero` ENUM('Masculino','Feminino','Outro') NULL COLLATE 'utf8mb4_general_ci',
	`endereco` VARCHAR(1) NULL COLLATE 'utf8mb4_general_ci',
	`telefone` VARCHAR(1) NULL COLLATE 'utf8mb4_general_ci',
	`email` VARCHAR(1) NULL COLLATE 'utf8mb4_general_ci',
	`documento_identidade` VARCHAR(1) NULL COLLATE 'utf8mb4_general_ci',
	`carteira_motorista` VARCHAR(1) NULL COLLATE 'utf8mb4_general_ci',
	`data_registro` DATE NULL
);

-- Copiando estrutura para view locadora.veiculos
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `veiculos` (
	`id` INT(11) NOT NULL,
	`marca` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_general_ci',
	`modelo` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_general_ci',
	`ano_fabricacao` YEAR NULL,
	`placa` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_general_ci',
	`cor` VARCHAR(1) NULL COLLATE 'utf8mb4_general_ci',
	`categoria` ENUM('Compacto','Sedan','SUV','Caminhonete','Van') NULL COLLATE 'utf8mb4_general_ci',
	`preco_diaria` DECIMAL(10,2) NOT NULL,
	`status` ENUM('Disponível','Alugado','Manutenção') NULL COLLATE 'utf8mb4_general_ci',
	`quilometragem` INT(11) NULL,
	`data_aquisicao` DATE NULL
);

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `alugueis`;

;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `clientes`;

;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `veiculos`;

;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
