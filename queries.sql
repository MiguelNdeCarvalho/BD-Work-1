--5


--a
select matricula from taxi,Modelo
where taxi.Modelo=modelo.Modelo and marca='Mercedes'


--b
select Nome from turno,motorista,taxi,modelo
where turno.Nbi=motorista.Nbi and turno.Matricula=taxi.Matricula and taxi.Modelo=modelo.Modelo and marca='Mercedes'

--c
select Telefone from telefone,pedido,turno,motorista 
where pedido.Matricula=turno.Matricula and turno.Nbi=motorista.Nbi and telefone.Nbi=motorista.Nbi and Nif=600700800900

--d
select Matricula from taxi NATURAL JOIN turno NATURAL JOIN motorista
where Nome='Anibal Silva'

--e
select motorista.Nome from motorista
except
select motorista.Nome from turno,motorista,pedido,cliente
where cliente.Nif=pedido.Nif and turno.Nbi=motorista.Nbi and pedido.Matricula=turno.Matricula and cliente.Nome='José Silva'

--f
select motorista.Nome from motorista
except
select motorista.Nome from motorista,taxi,turno,modelo
where turno.Nbi=motorista.Nbi and turno.Matricula=taxi.Matricula and taxi.Modelo=modelo.Modelo and marca='Mercedes'

--g 

select distinct s.Nome
from motorista as s, taxi, servico, modelo
Except (
	select Nome
	from turno, motorista
	where turno.Nbi = motorista.Nbi and turno.Matricula = ALL(
		select distinct matricula
		from taxi
	)
)


--h
select Nome, count(Valor) from servico,turno,motorista
where turno.Nbi=motorista.Nbi and servico.Matricula=turno.Matricula and turno.Nbi=motorista.Nbi group by Nome

--i
select Nome, sum(Valor) from servico,turno,taxi,motorista
where turno.Nbi=motorista.Nbi and turno.Matricula=taxi.Matricula and servico.Matricula=turno.Matricula and turno.Nbi=motorista.Nbi group by Nome


--j 

WITH x as (SELECT motorista.Nome, turno.DataInicio as T_Inicio, turno.DataFim as T_Fim,servico.DataInicio as S_Inicio, servico.DataFim as S_Fim, servico.Valor FROM motorista, turno, servico,taxi 
    WHERE servico.Matricula=turno.Matricula and turno.Nbi=motorista.Nbi and servico.Matricula = taxi.Matricula),

y as (SELECT x.Nome,sum(valor) as valor FROM x GROUP BY  x.Nome)

SELECT
    y.Nome, y.Valor
FROM
    y
WHERE
    y.Valor=(SELECT max(y.Valor) FROM y)


--k 
WITH x as (SELECT taxi.Matricula, modelo.Marca, taxi.Modelo, (turno.KmFim - turno.KmInicio) as Distance from turno, taxi, modelo
    WHERE turno.Matricula = taxi.Matricula and taxi.Modelo=modelo.Modelo)
SELECT 
    matricula, marca, modelo,distance
FROM
    x
WHERE
    Distance=(SELECT max(Distance) FROM x)


--l                                                           
select avg(servico.DataInicio-pedido.DataInicio)
from servico, pedido

--m
WITH x as (select cliente.Nome,count(pedido.Nif) as n_pedidos from cliente,pedido
    where cliente.Nif=pedido.Nif group by Nome)
SELECT 
    nome,n_pedidos
FROM
    x
WHERE
    n_pedidos=(SELECT max(n_pedidos) FROM x)


--n 
WITH x as (select taxi.Matricula,taxi.Modelo,Marca,(servico.Valor/servico.Kms) as VporKm from taxi,servico,modelo
    where taxi.Matricula=servico.Matricula and taxi.Modelo=modelo.Modelo)
SELECT 
    matricula,modelo,marca,VporKm
FROM
    x
WHERE
    VporKM=(SELECT max(VporKm) FROM x)


--o
WITH x as (SELECT motorista.Nome, servico.Kms,turno.DataInicio ,(turno.KmFim - turno.KmInicio) as t_Kms FROM motorista, servico, taxi, turno WHERE motorista.Nbi=turno.Nbi and taxi.Matricula=servico.Matricula and taxi.Matricula=turno.Matricula),

y as (SELECT x.Nome,x.DataInicio, sum(x.Kms) as tot_serv FROM x GROUP BY  x.Nome,x.DataInicio)

SELECT 
	DISTINCT x.Nome, x.t_Kms-y.tot_serv
FROM 
    y NATURAL JOIN x



--p

WITH y as (SELECT EXTRACT(epoch FROM (servico.DataFim-servico.DataInicio)) FROM servico), 

x as (SELECT motorista.Nome, servico.Kms, (servico.Kms / y.date_part) as racio FROM motorista, servico, taxi, turno, y WHERE taxi.Matricula=servico.Matricula and motorista.Nbi = turno.Nbi and turno.Matricula=servico.Matricula and turno.Matricula=taxi.Matricula)

SELECT
    DISTINCT x.Nome, x.racio   
FROM
	x NATURAL JOIN y
WHERE 
	racio = (SELECT MAX (x.racio) FROM X)