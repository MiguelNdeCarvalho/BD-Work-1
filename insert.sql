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