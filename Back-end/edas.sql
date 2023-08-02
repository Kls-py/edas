-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/07/2023 às 00:41
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

DROP DATABASE IF EXISTS edas;
CREATE DATABASE edas;
USE edas;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `edas`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `curso`
--

CREATE TABLE `curso` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `curso`
--

INSERT INTO `curso` (`id`, `nome`, `createdAt`, `updatedAt`) VALUES
(1, 'Curso Técnico em Administração', '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(2, 'Curso Técnico em Informática', '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(3, 'Curso Técnico em Meio Ambiente', '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(4, 'Curso Técnico em Química', '2023-07-10 15:07:35', '2023-07-10 15:07:35');

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `ano` int(11) NOT NULL,
  `curso` int(11) NOT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `disciplina`
--

INSERT INTO `disciplina` (`id`, `nome`, `ano`, `curso`, `createdAt`, `updatedAt`) VALUES
(1, 'Biologia', 1, 1, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(2, 'Contabilidade', 1, 1, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(3, 'Educação Física', 1, 1, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(4, 'Filosofia', 1, 1, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(5, 'Fundamentos da Administração', 1, 1, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(6, 'Geografia', 1, 1, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(7, 'Informática Instrumental', 1, 1, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(8, 'Língua Inglesa', 1, 1, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(9, 'Matemática', 1, 1, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(10, 'Português e Literatura', 1, 1, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(11, 'Projeto Científico e Integrador', 1, 1, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(12, 'Química', 1, 1, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(13, 'Programação', 1, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(14, 'Prática H&S', 1, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(15, 'Língua Inglesa', 1, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(16, 'Informática Instrumental', 1, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(17, 'Educação Física', 1, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(18, 'Matemática', 1, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(19, 'Português e Literatura', 1, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(20, 'Filosofia', 1, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(21, 'Sociologia', 1, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(22, 'Geografia', 1, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(23, 'Artes', 1, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(24, 'Fundamentos da Computação', 1, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(25, 'Programação', 2, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(26, 'Prática H&S', 2, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(27, 'Língua Inglesa', 2, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(28, 'Redes de Computadores', 2, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(29, 'Educação Física', 2, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(30, 'Matemática', 2, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(31, 'Português e Literatura', 2, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(32, 'Filosofia', 2, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(33, 'Sociologia', 2, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(34, 'Biologia', 2, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(35, 'Química', 2, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(36, 'Termofísica, Óptica e Ondas', 2, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(37, 'Programação', 3, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(38, 'Análise e Projeto de Sistemas', 3, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(39, 'Inglês Instrumental', 3, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(40, 'Banco de Dados', 3, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(41, 'Educação Física', 3, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(42, 'Matemática', 3, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(43, 'Português e Literatura', 3, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(44, 'História', 3, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(45, 'Eletricidade Aplicada', 3, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(46, 'Biologia', 3, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(47, 'Química', 3, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(48, 'Redação Técnica', 4, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(49, 'História', 4, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(50, 'Programação', 4, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(51, 'Matemática Aplicada', 4, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(52, 'Espanhol LEM', 4, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(53, 'Mecânica', 4, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(54, 'Geografia', 4, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(55, 'Matemática', 4, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(56, 'Português e Literatura', 4, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(57, 'Filosofia', 4, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(58, 'Sociologia', 4, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(59, 'Biologia', 4, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(60, 'Química', 4, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(61, 'Tópicos Avançados em Informática', 4, 2, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(62, 'Biologia', 1, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(63, 'Controle Ambiental', 1, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(64, 'Educação Ambiental', 1, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(65, 'Educação Física', 1, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(66, 'Filosofia', 1, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(67, 'Geografia', 1, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(68, 'Informática Instrumental', 1, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(69, 'Introdução ao Meio Ambiente', 1, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(70, 'Língua Inglesa', 1, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(71, 'Matemática', 1, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(72, 'Português e Literatura', 1, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(73, 'Química', 1, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(74, 'Sociologia', 1, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(75, 'Biologia', 2, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(76, 'Controle Ambiental', 2, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(77, 'Direito, Cidadania e Meio Ambiente', 2, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(78, 'Educação Física', 2, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(79, 'Filosofia', 2, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(80, 'Geografia Aplicada', 2, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(81, 'Língua Inglesa', 2, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(82, 'Matemática', 2, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(83, 'Português e Literatura', 2, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(84, 'Química', 2, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(85, 'Sistema de Gestão Ambiental', 2, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(86, 'Sociologia', 2, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(87, 'termofísica, Óptica e Ondas', 2, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(88, 'Artes e Sustentabilidade', 3, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(89, 'Bioindicadores Ambientais', 3, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(90, 'Educação Física', 3, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(91, 'Eletricidade Aplicada', 3, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(92, 'Filosofia', 3, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(93, 'História', 3, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(94, 'Inglês Instrumental', 3, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(95, 'Licenciamento Ambiental', 3, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(96, 'Matemática', 3, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(97, 'Português e Literatura', 3, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(98, 'Química', 3, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(99, 'Mecânica', 4, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(100, 'Língua Espanhola', 4, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(101, 'Redação Técnica', 4, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(102, 'Química Analítica Instrumental Aplicada ao Meio Ambiente', 4, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(103, 'Gestão e Empreendedorismo', 4, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(104, 'Matemática', 4, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(105, 'Português e Literatura', 4, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(106, 'História', 4, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(107, 'Sociologia', 4, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(108, 'Biologia', 4, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(109, 'Ecologia e Botânica', 4, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(110, 'Matemática Aplicada', 4, 3, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(111, 'Artes', 1, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(112, 'Biologia', 1, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(113, 'Educação Física', 1, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(114, 'Geografia', 1, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(115, 'Informática Instrumental', 1, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(116, 'Língua Inglesa', 1, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(117, 'Matemática', 1, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(118, 'Português e Literatura', 1, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(119, 'Química', 1, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(120, 'Química Inorgânica', 1, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(121, 'S&S Lab. Quím.', 1, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(122, 'Sociologia', 1, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(123, 'Biologia', 2, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(124, 'Educação Física', 2, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(125, 'Filosofia', 2, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(126, 'Língua Inglesa', 2, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(127, 'Matemática', 2, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(128, 'Português e Literatura', 2, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(129, 'Química', 2, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(130, 'Química Orgânica', 2, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(131, 'Química Geral Experimental', 2, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(132, 'Sociologia', 2, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(133, 'Termofísica, Óptica e Ondas', 2, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(134, 'Biologia', 3, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(135, 'Ciência e Tecnologia de Materiais', 3, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(136, 'Educação Física', 3, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(137, 'Eletricidade Aplicada', 3, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(138, 'Filosofia', 3, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(139, 'Físico-Químico', 3, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(140, 'História', 3, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(141, 'Matemática', 3, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(142, 'Microbiologia', 3, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(143, 'Português e Literatura', 3, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(144, 'Processos Industriais', 3, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(145, 'Química Analítica', 3, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(146, 'Filosofia', 4, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(147, 'Geografia', 4, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(148, 'História', 4, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(149, 'Língua Espanhola', 4, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(150, 'Matemática Aplicada', 4, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(151, 'Matemática', 4, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(152, 'Mecânica', 4, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(153, 'Operações Unitárias', 4, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(154, 'Português e Literatura', 4, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(155, 'Química Ambiental', 4, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(156, 'Química Analítica', 4, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(157, 'Redação Técnica', 4, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(158, 'Sociologia', 4, 4, '2023-07-10 15:07:35', '2023-07-10 15:07:35');

-- --------------------------------------------------------

--
-- Estrutura para tabela `prova`
--

CREATE TABLE `prova` (
  `id` int(11) NOT NULL,
  `curso` int(11) NOT NULL,
  `ano` int(11) NOT NULL,
  `turma` int(11) NOT NULL,
  `disciplina` int(11) NOT NULL,
  `dia` date NOT NULL,
  `horario` time NOT NULL,
  `usuario` int(11) NOT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `turma`
--

CREATE TABLE `turma` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `turma`
--

INSERT INTO `turma` (`id`, `nome`, `createdAt`, `updatedAt`) VALUES
(1, 'Sem divisões', '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(2, 'Turma A', '2023-07-10 15:07:35', '2023-07-10 15:07:35'),
(3, 'Turma B', '2023-07-10 15:07:35', '2023-07-10 15:07:35');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `curso` int(11) NOT NULL,
  `ano` int(11) NOT NULL,
  `turma` int(11) NOT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`id`),
  ADD KEY `curso` (`curso`);

--
-- Índices de tabela `prova`
--
ALTER TABLE `prova`
  ADD PRIMARY KEY (`id`),
  ADD KEY `curso` (`curso`),
  ADD KEY `turma` (`turma`),
  ADD KEY `disciplina` (`disciplina`),
  ADD KEY `usuario` (`usuario`);

--
-- Índices de tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `curso` (`curso`),
  ADD KEY `turma` (`turma`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `curso`
--
ALTER TABLE `curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT de tabela `prova`
--
ALTER TABLE `prova`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `disciplina`
--
ALTER TABLE `disciplina`
  ADD CONSTRAINT `disciplina_ibfk_1` FOREIGN KEY (`curso`) REFERENCES `curso` (`id`);

--
-- Restrições para tabelas `prova`
--
ALTER TABLE `prova`
  ADD CONSTRAINT `prova_ibfk_1` FOREIGN KEY (`curso`) REFERENCES `curso` (`id`),
  ADD CONSTRAINT `prova_ibfk_2` FOREIGN KEY (`turma`) REFERENCES `turma` (`id`),
  ADD CONSTRAINT `prova_ibfk_3` FOREIGN KEY (`disciplina`) REFERENCES `disciplina` (`id`),
  ADD CONSTRAINT `prova_ibfk_4` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id`);

--
-- Restrições para tabelas `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`curso`) REFERENCES `curso` (`id`),
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`turma`) REFERENCES `turma` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
