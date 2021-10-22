
create schema ifc;


CREATE TABLE `vendedor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45),
  `usuario` varchar(45),
  `senha` varchar(45),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;



INSERT INTO `ifc`.`vendedor` (`nome`, `usuario`, `senha`) VALUES ('João', 'joao1012', 'senha12345');
INSERT INTO `ifc`.`vendedor` (`nome`, `usuario`, `senha`) VALUES ('Pedro', 'pedro987', 'p65fc');
INSERT INTO `ifc`.`vendedor` (`nome`, `usuario`, `senha`) VALUES ('Judas', 'jud432ç', 'sW2xc');
INSERT INTO `ifc`.`vendedor` (`nome`, `usuario`, `senha`) VALUES ('Gabriel', '@gab_123', 'gab346');
INSERT INTO `ifc`.`vendedor` (`nome`, `usuario`, `senha`) VALUES ('Beatriz', 'biazinha', 'b645ç');




CREATE TABLE `atleta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45),
  `peso` float,
  `altura` float,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;



INSERT INTO `ifc`.`atleta` (`nome`, `peso`, `altura`) VALUES ('João', '115', '1.83');
INSERT INTO `ifc`.`atleta` (`nome`, `peso`, `altura`) VALUES ('Ana', '67', '1.67');
INSERT INTO `ifc`.`atleta` (`nome`, `peso`, `altura`) VALUES ('Beatriz', '56', '1.74');
INSERT INTO `ifc`.`atleta` (`nome`, `peso`, `altura`) VALUES ('Júlia', '77', '1.56');
INSERT INTO `ifc`.`atleta` (`nome`, `peso`, `altura`) VALUES ('Amanda', '46', '1.45');




CREATE TABLE `pessoa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45),
  `horaEntrada` time,
  `horaSaida` time,
  `idade` int,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;



INSERT INTO `ifc`.`pessoa` (`nome`, `horaEntrada`, `horaSaida`, `idade`) VALUES ('Pedro', '8:30:00', '12:15:00', '19');
INSERT INTO `ifc`.`pessoa` (`nome`, `horaEntrada`, `horaSaida`, `idade`) VALUES ('Gabriela', '13:30:00', '18:45:24', '23');
INSERT INTO `ifc`.`pessoa` (`nome`, `horaEntrada`, `horaSaida`, `idade`) VALUES ('Mauro', '22:30:00', '04:30:00', '34');
INSERT INTO `ifc`.`pessoa` (`nome`, `horaEntrada`, `horaSaida`, `idade`) VALUES ('Lucas', '5:00:00', '09:30', '21');
INSERT INTO `ifc`.`pessoa` (`nome`, `horaEntrada`, `horaSaida`, `idade`) VALUES ('Ana', '12:30:00', '20:30:59', '17');




CREATE TABLE `timetab` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45),
  `cidade` varchar(45),
  `pontos` int,
  `dataFundação` date,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;



INSERT INTO `ifc`.`timetab` (`nome`, `cidade`, `pontos`, `dataFundação`) VALUES ('g', 'ghg', '56', '0000-00-00');
INSERT INTO `ifc`.`timetab` (`nome`, `cidade`, `pontos`, `dataFundação`) VALUES ('g', 'ghg', '56', '0000-00-00');
INSERT INTO `ifc`.`timetab` (`nome`, `cidade`, `pontos`, `dataFundação`) VALUES ('g', 'ghg', '56', '0000-00-00');
INSERT INTO `ifc`.`timetab` (`nome`, `cidade`, `pontos`, `dataFundação`) VALUES ('g', 'ghg', '56', '0000-00-00');
INSERT INTO `ifc`.`timetab` (`nome`, `cidade`, `pontos`, `dataFundação`) VALUES ('g', 'ghg', '56', '0000-00-00');




CREATE TABLE `peca` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45),
  `valor` double,
  `fornecedor` varchar(45),
  `garantia` date,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;



INSERT INTO `ifc`.`peca` (`descricao`, `valor`, `fornecedor`, `garantia`) VALUES ('R7', '1090.76', 'AMD', '2021-07-16');
INSERT INTO `ifc`.`peca` (`descricao`, `valor`, `fornecedor`, `garantia`) VALUES ('RTX-3090', '10000.90', 'NVIDIA', '2021-07-16');
INSERT INTO `ifc`.`peca` (`descricao`, `valor`, `fornecedor`, `garantia`) VALUES ('GT-980', '790.78', 'NVIDIA', '2021-07-16');
INSERT INTO `ifc`.`peca` (`descricao`, `valor`, `fornecedor`, `garantia`) VALUES ('9900XT', '8987', 'AMD', '2021-07-16');
INSERT INTO `ifc`.`peca` (`descricao`, `valor`, `fornecedor`, `garantia`) VALUES ('INTEL-ARK', '9786.97', 'INTEL', '2021-07-16');
