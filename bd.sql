Create table motorista(
    Nome VARCHAR(30),
    NCartaCond VARCHAR(10),
    DataNasc DATE,
    Nbi INTEGER,
    PRIMARY KEY (Nbi, NCartaCond),
    UNIQUE (Nbi)
);

Create table telefone(
    Nbi INTEGER,
	Telefone VARCHAR(50),
    foreign key (Nbi) references motorista(Nbi) on delete cascade
);

Create table modelo(
    Marca VARCHAR(20),
    Modelo VARCHAR(20) PRIMARY KEY,
    NLugares INTEGER,
    Consumo FLOAT,
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
    DataInicio TIMESTAMP,
    DataFim TIMESTAMP,
    Kms INTEGER,
    Valor FLOAT,
    Matricula CHAR(8),
    CoordGPSInic CHAR(4),
    CoordGPSFin CHAR(4),
    foreign key (Matricula) references taxi(Matricula) on delete cascade
);

Create table turno(
    DataInicio TIMESTAMP,
    DataFim TIMESTAMP,
    KmInicio INTEGER,
    KmFim INTEGER,
    Matricula CHAR(8),
    Nbi INTEGER,
    foreign key (Matricula) references taxi(Matricula) on delete cascade,
    foreign key (Nbi) references motorista(Nbi) on delete cascade
);


Create table cliente(
    Nome VARCHAR(30),
    Morada VARCHAR(40),
    CodigoPostal VARCHAR(20),
    Nif BIGINT,
    UNIQUE(Nif)
);

Create table pedido(
    Nif BIGINT,
    MoradaInicio VARCHAR(50),
    CodigoPostalInicio VARCHAR(20),
    DataPedido TIMESTAMP,
    Matricula CHAR(8),
    DataInicio TIMESTAMP,
    foreign key (Nif) references cliente(Nif) on delete cascade,
    foreign key (Matricula) references taxi(Matricula) on delete cascade    
);