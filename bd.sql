Create table motorista(
    Nome VARCHAR(10),
    NCartCond CHAR(5),
    DataNasc CHAR(10),
    Nbi INTEGER,
    PRIMARY KEY (Nbi, NCartCond),
    UNIQUE (Nbi)
);

Create table telefone(
    Nbi INTEGER,
	Telefone INTEGER,
    foreign key (Nbi) references motorista(Nbi) on delete cascade
);

Create table modelo(
    Marca VARCHAR(20),
    Modelo VARCHAR(20) PRIMARY KEY,
    NLugares INTEGER,
    Consumo INTEGER,
    UNIQUE (Modelo)
);

Create table taxi(
    Modelo VARCHAR(20),
    Ano INTEGER,
    Kms INTEGER,
    Matricula CHAR(8),
    PRIMARY KEY (Modelo,Matricula),
    foreign key (Modelo) references modelo(Modelo) on delete cascade,
    UNIQUE(Matricula)
);

Create table servico(
    DataInicio CHAR(20),
    DataFim CHAR(20),
    Kms INTEGER,
    Valor INTEGER,
    Matricula CHAR(8),
    CoordGPSInic CHAR(4),
    CoordGPSFin CHAR(4),
    foreign key (Matricula) references taxi(Matricula) on delete cascade
);

Create table turno(
    DataInicio CHAR(20),
    DataFim CHAR(20),
    KmInicio INTEGER,
    KmFim INTEGER,
    Matricula CHAR(8),
    Nbi INTEGER,
    foreign key (Matricula) references taxi(Matricula) on delete cascade,
    foreign key (Nbi) references motorista(Nbi) on delete cascade
);


Create table cliente(
    Nome VARCHAR(20),
    Morada VARCHAR(40),
    CodigoPostal VARCHAR(20),
    Nif INTEGER,
    UNIQUE(Nif)
);

Create table pedido(
    Nif INTEGER,
    MoradaInicio VARCHAR(50),
    CodigoPostalInicio VARCHAR(20),
    DataPedido CHAR(20),
    Matricula CHAR(8),
    DataInicio CHAR(20),
    foreign key (Nif) references cliente(Nif) on delete cascade,
    foreign key (Matricula) references taxi(Matricula) on delete cascade    
);