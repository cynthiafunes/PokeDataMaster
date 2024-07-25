-- Eliminar un Pokémon en una tabla y eliminar todas las referencias
BEGIN;

DELETE FROM entrenadores_pokemones
WHERE id_pokemon IN (
    SELECT id_pokemon
    FROM pokemones
    WHERE nombre = '"Jigglypuff"');

DELETE FROM batallas
WHERE id_pokemon1 IN 
(SELECT id_pokemon
 FROM pokemones
 WHERE nombre = '"Jigglypuff"') 
OR id_pokemon2 IN 
(SELECT id_pokemon
 FROM pokemones
 WHERE nombre = '"Jigglypuff"');

DELETE FROM pokemones
WHERE nombre = '"Jigglypuff"';

COMMIT;

-- Pokemones y sus entrenadores 
SELECT 	entrenadores.nombre, entrenadores.edad, 
		pokemones.nombre, pokemones.tipo, pokemones.habilidad, pokemones.estadisticas
FROM entrenadores
JOIN entrenadores_pokemones ON entrenadores.id_entrenador = entrenadores_pokemones.id_entrenador
JOIN pokemones ON entrenadores_pokemones.id_pokemon = pokemones.id_pokemon;


-- Batallas y entrenadores y pokemones
SELECT batallas.fecha, 
		batallas.resultado,
       	entrenadores.nombre,
		pokemones.nombre,  
       entrenadores2.nombre, 
		pokemones2.nombre
       
FROM batallas
JOIN entrenadores ON batallas.id_entrenador1 = entrenadores.id_entrenador
JOIN pokemones ON batallas.id_pokemon1 = pokemones.id_pokemon
JOIN entrenadores entrenadores2 ON batallas.id_entrenador2 = entrenadores2.id_entrenador
JOIN pokemones pokemones2 ON batallas.id_pokemon2 = pokemones2.id_pokemon;

