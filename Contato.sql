CREATE TABLE `contato` (
  `id` int(11) NOT NULL,
  `ativo` bit(1) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `sexo` char(1) NOT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;