

	select j.id_jardim, ji.nome, l.pais, f.nome 
	from
	jardim.jardim as j, jardim.jardim_info as ji, 
	jardim.localizacao as l, jardim.flor as f
	where
	j.id_jardim_info = ji.id_jardim_info
	and j.id_localizacao = l.id_localizacao
	and j.id_flor = f.id_flor
	and l.pais = 'Brasil'
	
	--Consulta o id, nome, pa�s e nome das flores que existem nos jardins do Brasil
	
	select l.continente, f.nome, sum(f.quantidade) 
	from
	jardim.jardim as j, jardim.jardim_info as ji, 
	jardim.localizacao as l, jardim.flor as f
	where
	j.id_jardim_info = ji.id_jardim_info
	and j.id_localizacao = l.id_localizacao
	and j.id_flor = f.id_flor
	group by
	l.continente, f.nome
	order by
	l.continente
	
	--Consulta a soma da quantidade de flores de cada esp�cie por continente
	
	
	select f.nome, avg(f.quantidade) 
	from
	jardim.jardim as j, jardim.jardim_info as ji, 
	jardim.localizacao as l, jardim.flor as f
	where
	j.id_jardim_info = ji.id_jardim_info
	and j.id_localizacao = l.id_localizacao
	and j.id_flor = f.id_flor
	group by
	f.nome
	
	--Consulta a m�dia da quantidade de flores por esp�cie nos jardins existentes na base de dados
	
	select f.nome, l.pais, max(f.quantidade) as maior_quantidade
	from
	jardim.jardim as j, jardim.jardim_info as ji, 
	jardim.localizacao as l, jardim.flor as f
	where
	j.id_jardim_info = ji.id_jardim_info
	and j.id_localizacao = l.id_localizacao
	and j.id_flor = f.id_flor
	and f.nome in ('bluebell','buttercup','iris','daffodil','crocus')
	group by
	f.nome, l.pais
	order by
	f.nome, maior_quantidade desc
	
	--Consulta a maior quantidade de flores por esp�cie e pa�s, dada as esp�cies bluebell, buttercup, �ris, daffdil e crocus.