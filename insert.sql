SET datestyle TO "ISO, DMY"; --Define day-month-year
-- a) i.

INSERT INTO modelo(Marca,Modelo,NLugares,Consumo)
VALUES
   (
      'Renault',
      'Escape',
      '7',
      '7'
   );

INSERT INTO taxi(Modelo,Ano,Kms,Matricula)
VALUES
   (
      'Escape',
      '2015',
      '123098',
      '22-AA-22'
   );

-- a) ii.

INSERT INTO modelo(Marca,Modelo,NLugares,Consumo)
VALUES
   (
      'Mercedes',
      'CLK',
      '7',
      '9'
   );

INSERT INTO taxi(Modelo,Ano,Kms,Matricula)
VALUES
   (
      'CLK',
      '2014',
      '234554',
      '21-AA-22'
   );

-- a) iii.

INSERT INTO modelo(Marca,Modelo,NLugares,Consumo)
VALUES
   (
      'Honda',
      'Civic',
      '5',
      '5'
   );

INSERT INTO taxi(Modelo,Ano,Kms,Matricula)
VALUES
   (
      'Civic',
      '2012',
      '8976',
      '20-AA-22'
   );

-- a) iv.

INSERT INTO modelo(Marca,Modelo,NLugares,Consumo)
VALUES
   (
      'Mercedes-Benz',
      'Classe S',
      '5',
      '6.5'
   );

INSERT INTO taxi(Modelo,Ano,Kms,Matricula)
VALUES
   (
      'Classe S',
      '2015',
      '79744',
      '19-AA-22'
   );

------------------------

-- b) i.
INSERT INTO motorista(Nome,NCartaCond,DataNasc,Nbi)
VALUES
   (
      'Manuel Duarte',
      'L-123',
      '14/1/1976',
      '1234'
   );

INSERT INTO telefone(Nbi,Telefone)
VALUES
   (
      '1234',
      '266262626, 939393939'
   );

-- b) ii.
INSERT INTO motorista(Nome,NCartaCond,DataNasc,Nbi)
VALUES
   (
      'Fernando Nobre',
      'L-124',
      '14/1/1977',
      '1235'
   );

INSERT INTO telefone(Nbi,Telefone)
VALUES
   (
      '1235',
      '266 262627, 939393940'
   );

-- b) iii.
INSERT INTO motorista(Nome,NCartaCond,DataNasc,Nbi)
VALUES
   (
      'Anibal Silva',
      'L-125',
      '14/1/1978',
      '1236'
   );

INSERT INTO telefone(Nbi,Telefone)
VALUES
   (
      '1236',
      '266 262628, 939393941'
   );

-- b) iv.
INSERT INTO motorista(Nome,NCartaCond,DataNasc,Nbi)
VALUES
   (
      'Francisco Lopes',
      'L-126',
      '14/1/1979',
      '1237'
   );

INSERT INTO telefone(Nbi,Telefone)
VALUES
   (
      '1236',
      '266 262629'
   );


------------------------

-- c) i.
INSERT INTO cliente(Nome,Morada,CodigoPostal,Nif)
VALUES
   (
      'José Silva',
      'Rua António Silva 23',
      '7100-434 Évora',
      '600700800900'
   );

-- c) ii.
INSERT INTO cliente(Nome,Morada,CodigoPostal,Nif)
VALUES
   (
      'Franscisco Passos',
      'Rua Manuel Passos 12',
      '7000-131 Évora',
      '600700800901'
   );

-- c) iii.
INSERT INTO cliente(Nome,Morada,CodigoPostal,Nif)
VALUES
   (
      'Pedro Sousa',
      'Rua Joaquim Sousa 21',
      '7500-313 Évora',
      '600700800902'
   );

------------------------

-- d) i.
INSERT INTO pedido(Nif,MoradaInicio, CodigoPostalInicio, DataPedido, Matricula, DataInicio)
VALUES
   (
      '600700800900',
      'Rua Silva Pais 33',
      '7120-212 Évora',
      '2/1/2016 às 9:00',
      '19-AA-22',
      '2/1/2016 às 8:43'
   );

------------------------

-- e) i.
INSERT INTO turno(DataInicio, DataFim, KmInicio, KmFim, Matricula, Nbi)
VALUES
   (
      '2/1/2016 às 8:00',
      '2/1/2016 às 17:00',
      '79744',
      '79944',
      '19-AA-22',
      '1234'
   );

-- e) ii.
INSERT INTO turno(DataInicio, DataFim, KmInicio, KmFim, Matricula, Nbi)
VALUES
   (
      '2/1/2016 às 8:00',
      '2/1/2016 às 17:00',
      '89764',
      '89964',
      '20-AA-22',
      '1235'
   );

-- e) iii.
INSERT INTO turno(DataInicio, DataFim, KmInicio, KmFim, Matricula, Nbi)
VALUES
   (
      '3/1/2016 às 8:00',
      '3/1/2016 às 17:00',
      '234554',
      '234954',
      '21-AA-22',
      '1236'
   );

-- e) iv.
INSERT INTO turno(DataInicio, DataFim, KmInicio, KmFim, Matricula, Nbi)
VALUES
   (
      '3/1/2016 às 8:00',
      '3/1/2016 às 17:00',
      '123098',
      '123498',
      '22-AA-22',
      '1237'
   );

------------------------
-- f) i.
INSERT INTO servico(DataInicio,DataFim,Kms,Valor,Matricula,CoordGPSInic,CoordGPSFin)
VALUES
   (
       NULL,
       NULL,
       NULL,
       NULL,
       NULL,
       NULL,
       NULL
   );

-- f) ii.
INSERT INTO servico(DataInicio,DataFim,Kms,Valor,Matricula,CoordGPSInic,CoordGPSFin)
VALUES
   (
       '2/1/2016 às 8:12',
       '2/1/2016 às 8:32',
       '12',
       '5.25',
       '19-AA-22',
       '0,75',
       '0,76'
   );

-- f) iii.
INSERT INTO servico(DataInicio,DataFim,Kms,Valor,Matricula,CoordGPSInic,CoordGPSFin)
VALUES
   (
       '2/1/2016 às 8:43',
       '2/1/2016 às 8:52',
       '7',
       '3.25',
       '19-AA-22',
       '0,75',
       '0,76'
   );

-- f) iv.
INSERT INTO servico(DataInicio,DataFim,Kms,Valor,Matricula,CoordGPSInic,CoordGPSFin)
VALUES
   (
       '2/1/2016 às 8:53',
       '2/1/2016 às 9:59',
       '98',
       '53.25',
       '19-AA-22',
       '0,50',
       '0,80'
   );

-- f) v.
INSERT INTO servico(DataInicio,DataFim,Kms,Valor,Matricula,CoordGPSInic,CoordGPSFin)
VALUES
   (
       '2/1/2016 às 10:13',
       '2/1/2016 às 10:29',
       '18',
       '19.25',
       '19-AA-22',
       '0,30',
       '0,47'
   );

-- f) vi.
INSERT INTO servico(DataInicio,DataFim,Kms,Valor,Matricula,CoordGPSInic,CoordGPSFin)
VALUES
   (
       '2/1/2016 às 11:10' ,
       '2/1/2016 às 11:39',
       '23',
       '22.25',
       '19-AA-22',
       '0.07',
       '0,24'
   );

-- f) vii.
INSERT INTO servico(DataInicio,DataFim,Kms,Valor,Matricula,CoordGPSInic,CoordGPSFin)
VALUES
   (
       '2/1/2016 às 12:00' ,
       '2/1/2016 às 13:39',
       '21',
       '42.25',
       '19-AA-22',
       '0,02',
       '0,38'
   );

-- f) viii.
INSERT INTO servico(DataInicio,DataFim,Kms,Valor,Matricula,CoordGPSInic,CoordGPSFin)
VALUES
   (
       '2/1/2016 às 15:20' ,
       ' 2/1/2016 às 15:39',
       '9',
       '12.25',
       '19-AA-22',
       '0,06',
       '0,30'
   );

