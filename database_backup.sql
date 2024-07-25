--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: batallas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.batallas (
    id_batalla integer NOT NULL,
    id_entrenador1 integer NOT NULL,
    id_entrenador2 integer NOT NULL,
    id_pokemon1 integer NOT NULL,
    id_pokemon2 integer NOT NULL,
    fecha date NOT NULL,
    resultado character varying(100) NOT NULL
);


ALTER TABLE public.batallas OWNER TO postgres;

--
-- Name: batallas_id_batalla_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.batallas_id_batalla_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.batallas_id_batalla_seq OWNER TO postgres;

--
-- Name: batallas_id_batalla_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.batallas_id_batalla_seq OWNED BY public.batallas.id_batalla;


--
-- Name: entrenadores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.entrenadores (
    id_entrenador integer NOT NULL,
    nombre character varying(100) NOT NULL,
    edad character varying(100) NOT NULL
);


ALTER TABLE public.entrenadores OWNER TO postgres;

--
-- Name: entrenadores_id_entrenador_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.entrenadores_id_entrenador_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.entrenadores_id_entrenador_seq OWNER TO postgres;

--
-- Name: entrenadores_id_entrenador_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.entrenadores_id_entrenador_seq OWNED BY public.entrenadores.id_entrenador;


--
-- Name: entrenadores_pokemones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.entrenadores_pokemones (
    id_entrenador integer NOT NULL,
    id_pokemon integer NOT NULL
);


ALTER TABLE public.entrenadores_pokemones OWNER TO postgres;

--
-- Name: pokemones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pokemones (
    id_pokemon integer NOT NULL,
    nombre character varying(100) NOT NULL,
    tipo character varying(100) NOT NULL,
    habilidad character varying(100) NOT NULL,
    estadisticas character varying(100) NOT NULL
);


ALTER TABLE public.pokemones OWNER TO postgres;

--
-- Name: pokemones_id_pokemon_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pokemones_id_pokemon_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pokemones_id_pokemon_seq OWNER TO postgres;

--
-- Name: pokemones_id_pokemon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pokemones_id_pokemon_seq OWNED BY public.pokemones.id_pokemon;


--
-- Name: batallas id_batalla; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.batallas ALTER COLUMN id_batalla SET DEFAULT nextval('public.batallas_id_batalla_seq'::regclass);


--
-- Name: entrenadores id_entrenador; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entrenadores ALTER COLUMN id_entrenador SET DEFAULT nextval('public.entrenadores_id_entrenador_seq'::regclass);


--
-- Name: pokemones id_pokemon; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemones ALTER COLUMN id_pokemon SET DEFAULT nextval('public.pokemones_id_pokemon_seq'::regclass);


--
-- Data for Name: batallas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.batallas (id_batalla, id_entrenador1, id_entrenador2, id_pokemon1, id_pokemon2, fecha, resultado) FROM stdin;
2	37	38	26	30	2024-07-24	Ganador: Ash 
3	40	46	28	32	2024-07-24	Ganador: Iris
5	38	49	28	35	2024-07-18	Ganador: Sophocles
6	37	40	26	28	2024-07-17	Ganador: Ash Ketchum
7	40	52	28	41	2024-07-22	Ganador: Serena
\.


--
-- Data for Name: entrenadores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.entrenadores (id_entrenador, nombre, edad) FROM stdin;
37	Ash Ketchum	16
38	Misty	12
39	Brock	15
40	Gary Oak	16
41	May	12
45	Cilan	15
46	Iris	16
47	Bonnie	14
48	Dawn	17
49	Sophocles	15
50	Tracey Sketchit	15
51	Max	7
52	Serena	10
53	Clemont	15
54	Lillie	11
55	Kiawe	15
57	Lana	10
\.


--
-- Data for Name: entrenadores_pokemones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.entrenadores_pokemones (id_entrenador, id_pokemon) FROM stdin;
37	26
38	29
38	30
37	27
40	28
46	32
46	33
50	35
50	36
50	37
52	41
\.


--
-- Data for Name: pokemones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pokemones (id_pokemon, nombre, tipo, habilidad, estadisticas) FROM stdin;
26	Pikachu	Eléctrico	Rayo	ataque: 55, defensa: 40, velocidad: 90
27	Charmander	Fuego	Lanzallamas	ataque: 52, defensa: 43, velocidad: 65
28	Squirtle	Agua	Pistola Agua	ataque: 48, defensa: 65, velocidad: 43
29	Bulbasaur	Planta/Veneno	Latigazo	ataque: 49, defensa: 49, velocidad: 45
30	Jigglypuff	Normal/Hada	Canto	ataque: 45, defensa: 20, velocidad: 20
32	Psyduck	Agua	Humedad	ataque: 52, defensa: 48, velocidad: 55
33	Machop	Lucha	Agallas	ataque: 80, defensa: 50, velocidad: 35
35	Magnemite	Eléctrico/Acero	Imán	ataque: 35, defensa: 70, velocidad: 45
36	Eevee	Normal	Fuga	ataque: 55, defensa: 50, velocidad: 55
37	Vulpix	Fuego	Sequía	ataque: 41, defensa: 40, velocidad: 65
38	Growlithe	Fuego	Intimidación	ataque: 70, defensa: 45, velocidad: 60
39	Poliwag	Agua	Absorbe Agua	ataque: 50, defensa: 40, velocidad: 90
40	Abra	Psíquico	Sincronía	ataque: 20, defensa: 15, velocidad: 90
41	Gastly	Fantasma/Veneno	Levitación	ataque: 35, defensa: 30, velocidad: 80
\.


--
-- Name: batallas_id_batalla_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.batallas_id_batalla_seq', 7, true);


--
-- Name: entrenadores_id_entrenador_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.entrenadores_id_entrenador_seq', 57, true);


--
-- Name: pokemones_id_pokemon_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pokemones_id_pokemon_seq', 42, true);


--
-- Name: batallas batallas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.batallas
    ADD CONSTRAINT batallas_pkey PRIMARY KEY (id_batalla);


--
-- Name: entrenadores entrenadores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entrenadores
    ADD CONSTRAINT entrenadores_pkey PRIMARY KEY (id_entrenador);


--
-- Name: entrenadores_pokemones pk_entrenador_pokemon; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entrenadores_pokemones
    ADD CONSTRAINT pk_entrenador_pokemon PRIMARY KEY (id_entrenador, id_pokemon);


--
-- Name: pokemones pokemones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemones
    ADD CONSTRAINT pokemones_pkey PRIMARY KEY (id_pokemon);


--
-- Name: entrenadores_pokemones unique_pokemon; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entrenadores_pokemones
    ADD CONSTRAINT unique_pokemon UNIQUE (id_pokemon);


--
-- Name: batallas fk_entrenador1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.batallas
    ADD CONSTRAINT fk_entrenador1 FOREIGN KEY (id_entrenador1) REFERENCES public.entrenadores(id_entrenador);


--
-- Name: batallas fk_entrenador2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.batallas
    ADD CONSTRAINT fk_entrenador2 FOREIGN KEY (id_entrenador2) REFERENCES public.entrenadores(id_entrenador);


--
-- Name: entrenadores_pokemones fk_id_entrenador; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entrenadores_pokemones
    ADD CONSTRAINT fk_id_entrenador FOREIGN KEY (id_entrenador) REFERENCES public.entrenadores(id_entrenador);


--
-- Name: entrenadores_pokemones fk_id_pokemon; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entrenadores_pokemones
    ADD CONSTRAINT fk_id_pokemon FOREIGN KEY (id_pokemon) REFERENCES public.pokemones(id_pokemon);


--
-- Name: batallas fk_pokemon1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.batallas
    ADD CONSTRAINT fk_pokemon1 FOREIGN KEY (id_pokemon1) REFERENCES public.pokemones(id_pokemon);


--
-- Name: batallas fk_pokemon2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.batallas
    ADD CONSTRAINT fk_pokemon2 FOREIGN KEY (id_pokemon2) REFERENCES public.pokemones(id_pokemon);


--
-- PostgreSQL database dump complete
--

