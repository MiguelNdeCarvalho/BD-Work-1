Create table motorista(
    NCartCond char(5),
    Nbi integer,
    Nome varchar(10),
    DataNasc char(10),
    primary key (NCartCond, Nbi)
);

Create table telefone(
    Nbi integer,
    Telefone integer,
    foreign key (Nbi) references motorista on delete restrict
);

Create table modelo(
    Modelo varchar(20) primary key,
    Marca varchar(20),
    NLugares integer,
    Consumo integer
);

Create table taxi(
    Modelo varchar(20),
    Ano integer,
    Kms integer,
    Matricula char(8),
    primary key (Modelo,Matricula),
    foreign key (Modelo) references modelo on delete restrict
);

Create table servico(
    DataInicio char(20),
    DataFim char(20),
    Kms integer,
    Valor integer,
    Matricula char(8),
    CoordGPSInic char(4),
    CoordGPSFin char(4),
    foreign key (Matricula) references taxi on delete restrict
);

Create table turno(
    DataInicio char(20),
    DataFim char(20),
    KmInicio integer,
    KmFim integer,
    Matricula char(8),
    Nbi integer,
    foreign key (Matricula) references taxi on delete restrict,
    foreign key (Nbi) references motorista on delete restrict
);


Create table cliente(
    Nome varchar(20),
    Morada varchar(40),
    CodigoPostal varchar(20),
    Nif integer
);

Create table pedido(
    Nif integer,
    Matricula char(8),
    MoradaInicio varchar(50),
    CodigoPostalInicio varchar(20),
    DataPedido char(20),
    DataInicio char(20),
    foreign key (Nif) references cliente on delete restrict,
    foreign key (Matricula) references taxi on delete restrict    
);