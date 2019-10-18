select matricula from taxi,Modelo
where taxi.Modelo=modelo.Modelo and marca='Mercedes'


select Nome A from autor
Except
select NomeA from autor, autoria, livro
where autor.CodA= autoria.CodA and autoria.ISBN=livro.ISBN and titulo like 'aaa'