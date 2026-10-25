-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2026 at 12:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cardapio`
--

-- --------------------------------------------------------

--
-- Table structure for table `adicionais`
--

CREATE TABLE `adicionais` (
  `id` int(11) NOT NULL,
  `Nome_pedido` varchar(48) DEFAULT NULL,
  `Preco` decimal(10,2) NOT NULL,
  `Observacao` varchar(60) DEFAULT NULL,
  `categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adicionais`
--

INSERT INTO `adicionais` (`id`, `Nome_pedido`, `Preco`, `Observacao`, `categoria`) VALUES
(1, 'Queijo', 6.00, '(1 fatia)', NULL),
(2, 'Presunto', 6.00, '(1 fatia)', NULL),
(3, 'Ovo', 6.00, NULL, NULL),
(4, 'Carne de Sol', 6.00, '(80g)', NULL),
(5, 'Goiabada', 6.00, NULL, NULL),
(6, 'Frango', 6.00, '(80g)', NULL),
(7, 'Calabresa', 6.00, '(80g)', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bebidas`
--

CREATE TABLE `bebidas` (
  `id` int(11) NOT NULL,
  `Nome_pedido` varchar(48) DEFAULT NULL,
  `Preco` decimal(10,2) NOT NULL,
  `Observacao` varchar(60) DEFAULT NULL,
  `categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bebidas`
--

INSERT INTO `bebidas` (`id`, `Nome_pedido`, `Preco`, `Observacao`, `categoria`) VALUES
(1, 'Achocolatado Nescau', 6.00, NULL, NULL),
(2, 'Achocolatado', 9.00, '(Tipo Nescau com borda de Chocolate)', NULL),
(3, 'Chocolate quente cremosa com borda', 12.00, NULL, NULL),
(4, 'Café cremoso', 10.00, NULL, NULL),
(5, 'Café puro', 3.00, NULL, NULL),
(6, 'Café com leite', 4.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`id`, `nome`) VALUES
(1, 'tapioca'),
(2, 'omeletes'),
(3, 'misto'),
(4, 'pao_italiano'),
(5, 'sucos'),
(6, 'vitaminas'),
(7, 'bebidas'),
(8, 'adicionais');

-- --------------------------------------------------------

--
-- Table structure for table `misto_pao`
--

CREATE TABLE `misto_pao` (
  `id` int(11) NOT NULL,
  `Nome_pedido` varchar(48) DEFAULT NULL,
  `Preco` decimal(10,2) NOT NULL,
  `Observacao` varchar(60) DEFAULT NULL,
  `categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `misto_pao`
--

INSERT INTO `misto_pao` (`id`, `Nome_pedido`, `Preco`, `Observacao`, `categoria`) VALUES
(1, 'Pão com Margarina sem chapa', 1.50, NULL, NULL),
(2, 'Pão com Margarina na chapa', 2.50, NULL, NULL),
(3, 'Pão com Ovo sem chapa', 5.00, NULL, NULL),
(4, 'Pão com Ovo na chapa', 6.00, NULL, NULL),
(5, 'Misto Pão fina ou grossa', 6.00, '(Pão, queijo, presunto na chapa)', NULL),
(6, 'Misto Completo', 7.50, '(Pão, queijo, presunto e ovo na chapa)', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `omeletes`
--

CREATE TABLE `omeletes` (
  `id` int(11) NOT NULL,
  `Nome_pedido` varchar(48) DEFAULT NULL,
  `Preco` decimal(10,2) NOT NULL,
  `Observacao` varchar(60) DEFAULT NULL,
  `categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `omeletes`
--

INSERT INTO `omeletes` (`id`, `Nome_pedido`, `Preco`, `Observacao`, `categoria`) VALUES
(1, 'Omelete Tradicional', 10.00, '(Ovo, queijo e presunto)', NULL),
(2, 'Omelete Carne Moída', 12.00, '(Carne moída, queijo, presunto e cheiro verde)', NULL),
(3, 'Omelete Carne de Sol', 15.00, '(Carne de sol, ovo, queijo, presunto e cheiro verde)', NULL),
(4, 'Omelete Frango', 15.00, '(Frango, ovo, queijo, presunto e cheiro verde)', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pao_italiano`
--

CREATE TABLE `pao_italiano` (
  `id` int(11) NOT NULL,
  `Nome_pedido` varchar(48) DEFAULT NULL,
  `Preco` decimal(10,2) NOT NULL,
  `Observacao` varchar(60) DEFAULT NULL,
  `categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pao_italiano`
--

INSERT INTO `pao_italiano` (`id`, `Nome_pedido`, `Preco`, `Observacao`, `categoria`) VALUES
(1, 'Pão Italiano com Manteiga', 3.50, '(Sem chapa)', NULL),
(2, 'Pão Italiano com Manteiga', 5.00, '(Na chapa)', NULL),
(3, 'Pão Italiano com Ovo', 7.00, '(Sem chapa)', NULL),
(4, 'Pão Italiano com Ovo', 7.50, '(Na chapa)', NULL),
(5, 'Pão Italiano Queijo e Presunto', 8.00, NULL, NULL),
(6, 'Pão Italiano Queijo, Presunto e Ovo', 9.50, '(Na chapa)', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sucos`
--

CREATE TABLE `sucos` (
  `id` int(11) NOT NULL,
  `Nome_pedido` varchar(48) DEFAULT NULL,
  `Preco` decimal(10,2) NOT NULL,
  `Observacao` varchar(60) DEFAULT NULL,
  `categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sucos`
--

INSERT INTO `sucos` (`id`, `Nome_pedido`, `Preco`, `Observacao`, `categoria`) VALUES
(1, 'Suco Tradicional sem Leite', 7.00, '(Goiaba, Murici, Cajá, Tamarino, Caju, Manga e Acerola)', NULL),
(2, 'Suco Tradicional com Leite', 8.00, '(Goiaba, Murici, Cajá, Tamarino, Caju, Manga e Acerola)', NULL),
(3, 'Suco Especial sem Leite', 9.00, '(Cupuaçu, Bacuri, Maracujá, Uva, Graviola, Laranja e Abacaxi', NULL),
(4, 'Suco Especial com Leite', 10.00, '(Cupuaçu, Bacuri, Maracujá, Uva, Graviola e Abacaxi)', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tapioca`
--

CREATE TABLE `tapioca` (
  `id` int(11) NOT NULL,
  `Nome_pedido` varchar(48) DEFAULT NULL,
  `Preco` decimal(10,2) NOT NULL,
  `Observacao` varchar(65) DEFAULT NULL,
  `categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tapioca`
--

INSERT INTO `tapioca` (`id`, `Nome_pedido`, `Preco`, `Observacao`, `categoria`) VALUES
(1, 'Tapioca com Manteiga', 6.50, NULL, NULL),
(2, 'Tapioca com Ovo', 9.00, NULL, NULL),
(3, 'Tapioca com Queijo e Ovo', 13.00, NULL, NULL),
(4, 'Tapioca com Queijo e Presunto', 10.00, NULL, NULL),
(5, 'Tapioca com Calabresa', 12.00, NULL, NULL),
(6, 'Tapioca Romeu e Julieta', 12.00, '(Queijo e Goiabada)', NULL),
(7, 'Tapioca com Frango', 10.00, NULL, NULL),
(8, 'Tapioca com Frango e Queijo', 12.00, NULL, NULL),
(9, 'Tapioca com Frango, Queijo, Presunto e Ovo', 15.00, NULL, NULL),
(10, 'Tapioca com Carne de Sol', 13.00, NULL, NULL),
(11, 'Tapioca com Carne de Sol e Ovo', 14.00, NULL, NULL),
(12, 'Tapioca com Carne de Sol e Queijo', 14.00, NULL, NULL),
(13, 'Tapioca com Carne de Sol, Queijo e Presunto', 15.00, NULL, NULL),
(14, 'Tapioca com Carne de Sol, Queijo, Presunto e Ovo', 17.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `senha` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vitaminas`
--

CREATE TABLE `vitaminas` (
  `id` int(11) NOT NULL,
  `Nome_pedido` varchar(48) DEFAULT NULL,
  `Preco` decimal(10,2) NOT NULL,
  `Observacao` varchar(60) DEFAULT NULL,
  `categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vitaminas`
--

INSERT INTO `vitaminas` (`id`, `Nome_pedido`, `Preco`, `Observacao`, `categoria`) VALUES
(1, 'Vitamina de Abacate', 12.00, NULL, NULL),
(2, 'Vitamina de Mamão', 12.00, NULL, NULL),
(3, 'Vitamina de Banana', 12.00, NULL, NULL),
(4, 'Vitamina de Mista', 12.00, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adicionais`
--
ALTER TABLE `adicionais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bebidas`
--
ALTER TABLE `bebidas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `misto_pao`
--
ALTER TABLE `misto_pao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `omeletes`
--
ALTER TABLE `omeletes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pao_italiano`
--
ALTER TABLE `pao_italiano`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sucos`
--
ALTER TABLE `sucos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tapioca`
--
ALTER TABLE `tapioca`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vitaminas`
--
ALTER TABLE `vitaminas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adicionais`
--
ALTER TABLE `adicionais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bebidas`
--
ALTER TABLE `bebidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `misto_pao`
--
ALTER TABLE `misto_pao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `omeletes`
--
ALTER TABLE `omeletes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pao_italiano`
--
ALTER TABLE `pao_italiano`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sucos`
--
ALTER TABLE `sucos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tapioca`
--
ALTER TABLE `tapioca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vitaminas`
--
ALTER TABLE `vitaminas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
