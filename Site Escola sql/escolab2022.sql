-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20-Maio-2022 às 16:37
-- Versão do servidor: 10.1.26-MariaDB
-- PHP Version: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `escolab2022`
--
CREATE DATABASE IF NOT EXISTS `escolab2022` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `escolab2022`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `matricula` varchar(5) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `codcurso` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`matricula`, `nome`, `endereco`, `cidade`, `codcurso`) VALUES
('10', 'Felipe', 'Manfredo Barbi', 'Leme', 1),
('11', 'John', 'Santa Marta', 'Leme', 2),
('12', 'Luiz Henrique', 'Subway', 'LancheLand', 3),
('13', 'Gabriel Mendes', 'Academia Fordo', 'Baitolandia', 4),
('14', 'Eduardo', 'Sim', 'Talvez', 5),
('15', 'Daniel', 'GrandLine', 'Alabasta', 6),
('16', 'Vitor', 'Bernardo', 'Piracicaba', 7),
('17', 'Gabriel Victorino', 'Lar dos Anjos', 'Ceu', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `codigo` int(4) NOT NULL,
  `nome` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`codigo`, `nome`) VALUES
(1, 'Desenvolvimento de Sistemas'),
(2, 'Administracao'),
(3, 'Quimica'),
(4, 'Comunicacao Visual'),
(5, 'Desing Grafico'),
(6, 'Farmacia'),
(7, 'Fotografia'),
(8, 'RH');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `codigo` int(4) NOT NULL,
  `disciplina` varchar(30) NOT NULL,
  `cargahoraria` varchar(2) NOT NULL,
  `codcurso` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `disciplinas`
--

INSERT INTO `disciplinas` (`codigo`, `disciplina`, `cargahoraria`, `codcurso`) VALUES
(10, 'Matematica', '10', 1),
(11, 'Portugues', '12', 2),
(12, 'Geografia', '5', 3),
(13, 'Filosofia', '3', 4),
(14, 'Historia', '5', 5),
(15, 'Fisica', '2', 6),
(16, 'Ingles', '1', 7),
(17, 'Biologia', '4', 8);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
