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
select taxi.Matricula from taxi,turno,motorista
where turno.Matricula=taxi.Matricula and turno.Nbi=motorista.Nbi and motorista.Nome='Anibal Silva'

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


select motorista.Nome from motorista
where not exists ()

--nao tou capaz


--h
select Nome, sum(Valor) from servico,turno,taxi,motorista
where turno.Nbi=motorista.Nbi and turno.Matricula=taxi.Matricula and servico.Matricula=turno.Matricula and turno.Nbi=motorista.Nbi group by Nome

--i
select Nome, count(Valor) from servico,turno,motorista
where turno.Nbi=motorista.Nbi and servico.Matricula=turno.Matricula and turno.Nbi=motorista.Nbi group by Nome


--j

--k

--l

select avg(servico.DataInicio-pedido.DataInicio)


--nao tou capaz



--m

--n
select taxi.Matricula,taxi.Modelo,Marca,max(servico.Valor/servico.Kms)
from (
select taxi.Matricula,taxi.Modelo,Marca,servico.Valor/servico.Kms
from taxi,servico,modelo
where taxi.Matricula=Matricula and taxi.Modelo=modelo.Modelo ) as x

--nao tou capaz


--o

--p

