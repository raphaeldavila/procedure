-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 26-Abr-2018 às 21:41
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `Selecionando` (IN `identificador` INT, IN `apelido` VARCHAR(100))  BEGIN

	IF (identificador = 1)
	THEN
	 	
	 	UPDATE testando SET idade = identdicador WHERE nome = apelido; 
	    SELECT * FROM testando;

	ELSEIF (identificador = 2)
		THEN

		DELETE FROM testando WHERE nome = apelido;
	    SELECT * FROM testando;	

	ELSEIF (identificador = 3)		
		THEN

		INSERT INTO testando (nome, idade) VALUES (apelido, identificador);
	    SELECT * FROM testando;	

	ELSE

		SELECT * FROM testando;

	END IF;

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `testando`
--

CREATE TABLE `testando` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `idade` int(11) NOT NULL,
  `cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `testando`
--

INSERT INTO `testando` (`id`, `nome`, `idade`, `cadastro`) VALUES
(22, 'Raphael', 25, '2018-04-26 17:46:24'),
(23, 'Eduardo', 24, '2018-04-26 17:46:24'),
(27, 'Gustavo', 3, '2018-04-26 18:01:05'),
(29, 'Joseph', 3, '2018-04-26 19:33:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `testando`
--
ALTER TABLE `testando`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `testando`
--
ALTER TABLE `testando`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
