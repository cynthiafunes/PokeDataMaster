-- CRUD entrenadores
INSERT INTO entrenadores (nombre, edad)
VALUES ('Mallow', '10');
SELECT * FROM entrenadores
	
SELECT * FROM entrenadores
WHERE id_entrenador = 58;

UPDATE entrenadores
SET nombre = 'Mallow', edad = '15'
WHERE id_entrenador = 58;
SELECT * FROM entrenadores
	
DELETE FROM entrenadores
WHERE id_entrenador = 58;
SELECT * FROM entrenadores

--CRUD pokemones
INSERT INTO pokemones (nombre, tipo, habilidad, estadisticas)
VALUES ('Blissey', 'Volador', 'cura natural', 'ataque: 10, defensa: 10, velocidad: 55');
SELECT * FROM pokemones

SELECT * FROM pokemones
WHERE id_pokemon = 43;

UPDATE pokemones
SET nombre = 'Blissey', tipo = 'normal', habilidad = 'cura natural', estadisticas = 'ataque: 10, defensa: 10, velocidad: 55'
WHERE id_pokemon = 43;
SELECT * FROM pokemones

DELETE FROM pokemones
WHERE id_pokemon = 43;
SELECT * FROM pokemones

--CRUD entrenadores_pokemones
INSERT INTO entrenadores_pokemones (id_entrenador, id_pokemon)
VALUES (58, 43);
SELECT * FROM entrenadores_pokemones

SELECT * FROM entrenadores_pokemones
WHERE id_entrenador = 58 AND id_pokemon = 43;

UPDATE entrenadores_pokemones
SET id_entrenador = 58, id_pokemon = 40
WHERE id_entrenador = 58 AND id_pokemon = 43;
SELECT * FROM entrenadores_pokemones

DELETE FROM entrenadores_pokemones
WHERE id_entrenador = 58 AND id_pokemon = 40;
SELECT * FROM entrenadores_pokemones


--CRUD batallas
INSERT INTO batallas (id_entrenador1, id_entrenador2, id_pokemon1, id_pokemon2, fecha, resultado)
VALUES (58, 52, 40, 41, '2024-07-18', 'Ganador: Serena ');
SELECT * FROM batallas
	
SELECT * FROM batallas
WHERE id_batalla = 8;

UPDATE batallas
SET id_entrenador1 = 58, id_entrenador2 = 52, id_pokemon1 = 40, id_pokemon2 = 41, fecha = '2024-07-15', resultado = 'Ganador: Serena'
WHERE id_batalla = 8;
SELECT * FROM batallas

DELETE FROM batallas
WHERE id_batalla = 8;
SELECT * FROM batallas



