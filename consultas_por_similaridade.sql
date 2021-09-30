--===========================================================================================
-- CRIANDO FUNÇÕES DE DISTÂNCIA
--===========================================================================================

create or replace function l1(elem1 float[], elem2 float[]) returns float as $$
declare
 size integer;
 somat float;
begin
 select cardinality(caracteristicas) into size from jardim.flor limit 1;
 somat := 0;
 for i in 1..size loop
    somat := somat + ABS(elem1[i] - elem2[i]);
 end loop;
 return somat;
end $$
language plpgsql; 

create or replace function KNN(qc float[], k integer) 
 returns table (id integer, distance float) as $$
 begin
  return query 
      select id_flor, l1(caracteristicas,qc) as distance
      from jardim.flor
      order by l1(caracteristicas,qc) LIMIT k;
 end $$
 language plpgsql; 
 

create or replace function RangeQuery(qc float[], radius float) 
 returns table (id integer, distance float) as $$
 begin
  return query 
      select id_flor, l1(caracteristicas,qc) as distance
      from jardim.flor
      where l1(caracteristicas,qc) <= radius;
 end $$
 language plpgsql; 
 

--===========================================================================================
-- PROCESSANDO DISTÂNCIAS
--===========================================================================================

-- Escolheremos a flor: bluebell
SELECT cast(caracteristicas as  float[]) FROM jardim.flor WHERE id_flor = 1

select id_flor, distance, nome from KNN((SELECT cast(caracteristicas as  float[]) as caracteristicas FROM jardim.flor WHERE id_flor = 1), 5) as caracteristicas
inner join jardim.flor as flor on flor.id_flor = caracteristicas.id;

select id_flor, distance, nome from RangeQuery((SELECT cast(caracteristicas as  float[]) as caracteristicas FROM jardim.flor WHERE id_flor = 1), 5) as caracteristicas
inner join jardim.flor as flor on flor.id_flor = caracteristicas.id;
























