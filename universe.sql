--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(25) NOT NULL,
    age_in_millions_of_years integer,
    diameter integer,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: mineral; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.mineral (
    mineral_id integer NOT NULL,
    name character varying(25) NOT NULL,
    density numeric(3,1)
);


ALTER TABLE public.mineral OWNER TO freecodecamp;

--
-- Name: minerals_mineral_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.minerals_mineral_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.minerals_mineral_id_seq OWNER TO freecodecamp;

--
-- Name: minerals_mineral_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.minerals_mineral_id_seq OWNED BY public.mineral.mineral_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(25) NOT NULL,
    age_in_millions_of_years integer,
    diameter integer,
    made_of_cheese boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(25),
    age_in_millions_of_years integer,
    diameter integer,
    lightyears_from_earth numeric(5,1),
    description text,
    has_life boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(25),
    age_in_millions_of_years integer,
    diameter integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: mineral mineral_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mineral ALTER COLUMN mineral_id SET DEFAULT nextval('public.minerals_mineral_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 3000, 500, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 4500, 750, NULL);
INSERT INTO public.galaxy VALUES (3, 'Biggun', 2395, 1789, NULL);
INSERT INTO public.galaxy VALUES (4, 'Swirly Bird', 132, 210, NULL);
INSERT INTO public.galaxy VALUES (5, 'The Hole tm', 2435, 346, NULL);
INSERT INTO public.galaxy VALUES (6, 'Far Far Away', 9102, 367, NULL);
INSERT INTO public.galaxy VALUES (7, 'Milky Way', 3000, 500, NULL);
INSERT INTO public.galaxy VALUES (8, 'Andromeda', 4500, 750, NULL);
INSERT INTO public.galaxy VALUES (9, 'Biggun', 2395, 1789, NULL);
INSERT INTO public.galaxy VALUES (10, 'Swirly Bird', 132, 210, NULL);
INSERT INTO public.galaxy VALUES (11, 'The Hole tm', 2435, 346, NULL);
INSERT INTO public.galaxy VALUES (12, 'Far Far Away', 9102, 367, NULL);
INSERT INTO public.galaxy VALUES (13, 'Milky Way', 3000, 500, NULL);
INSERT INTO public.galaxy VALUES (14, 'Andromeda', 4500, 750, NULL);
INSERT INTO public.galaxy VALUES (15, 'Biggun', 2395, 1789, NULL);
INSERT INTO public.galaxy VALUES (16, 'Swirly Bird', 132, 210, NULL);
INSERT INTO public.galaxy VALUES (17, 'The Hole tm', 2435, 346, NULL);
INSERT INTO public.galaxy VALUES (18, 'Far Far Away', 9102, 367, NULL);


--
-- Data for Name: mineral; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.mineral VALUES (1, 'Carbon', 4.0);
INSERT INTO public.mineral VALUES (2, 'Silicon', 8.0);
INSERT INTO public.mineral VALUES (3, 'Roooooock', 5.0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 12, 5, true, 2);
INSERT INTO public.moon VALUES (2, 'm2', 14, 6, false, 1);
INSERT INTO public.moon VALUES (3, 'no moon', 10, 2, false, 8);
INSERT INTO public.moon VALUES (4, 'm5', 17, 4, true, 3);
INSERT INTO public.moon VALUES (5, 'moooooooon', 10, 8, false, 5);
INSERT INTO public.moon VALUES (6, 'da full one', 12, 5, true, 5);
INSERT INTO public.moon VALUES (7, 'moony', 14, 6, false, 6);
INSERT INTO public.moon VALUES (8, 'anothermoon', 10, 2, false, 7);
INSERT INTO public.moon VALUES (9, 'm5', 17, 4, true, 3);
INSERT INTO public.moon VALUES (10, 'm7', 10, 8, false, 9);
INSERT INTO public.moon VALUES (11, 'wer', 12, 5, true, 9);
INSERT INTO public.moon VALUES (12, 'this is so tedius', 14, 6, false, 12);
INSERT INTO public.moon VALUES (13, 'why so many moons', 10, 2, false, 11);
INSERT INTO public.moon VALUES (14, 'masdf', 17, 4, true, 3);
INSERT INTO public.moon VALUES (15, 'tide maker', 10, 8, false, 10);
INSERT INTO public.moon VALUES (16, 'FINALLY', 12, 5, true, 8);
INSERT INTO public.moon VALUES (17, 'annoyeeeed', 14, 6, false, 5);
INSERT INTO public.moon VALUES (18, 'ughhhhh', 10, 2, false, 9);
INSERT INTO public.moon VALUES (19, 'fsfe', 17, 4, true, 7);
INSERT INTO public.moon VALUES (20, 'Merc', 10, 8, false, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 12, 30, 0.1, 'Closest to sun', false, 1);
INSERT INTO public.planet VALUES (2, 'EARTH', 12, 30, 0.0, 'Our planet', true, 1);
INSERT INTO public.planet VALUES (3, 'Pluto', 12, 30, 0.1, 'He still counts', false, 1);
INSERT INTO public.planet VALUES (4, 'X', 12, 30, 12.0, 'Random text', false, 2);
INSERT INTO public.planet VALUES (5, 'Y', 10, 23, 56.0, 'Describe it', true, 3);
INSERT INTO public.planet VALUES (6, 'Alph', 12, 30, 12.0, 'Random text', false, 4);
INSERT INTO public.planet VALUES (7, 'Z', 10, 23, 56.0, 'Describe it', true, 5);
INSERT INTO public.planet VALUES (8, 'TATOOINE', 12, 30, 12.0, 'Random text', true, 6);
INSERT INTO public.planet VALUES (9, 'Markge', 10, 23, 56.0, 'Describe it', true, 7);
INSERT INTO public.planet VALUES (10, 'Mars', 12, 21, 0.1, 'Red', true, 6);
INSERT INTO public.planet VALUES (11, 'Saturn', 0, 23, 88.0, 'Rings', false, 1);
INSERT INTO public.planet VALUES (12, 'Pay Respects', 12, 21, 0.1, 'Red', true, 3);
INSERT INTO public.planet VALUES (13, 'F', 0, 23, 88.0, 'Rings', false, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 523, 5, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 523, 5, 1);
INSERT INTO public.star VALUES (3, 'North Star', 210, 7, 1);
INSERT INTO public.star VALUES (4, 'Shiny Boy', 152, 9, 3);
INSERT INTO public.star VALUES (5, 'Bright Guy', 216, 6, 2);
INSERT INTO public.star VALUES (6, 'Tattoine 1', 68, 3, 6);
INSERT INTO public.star VALUES (7, 'Tattoine 2', 54, 9, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 18, true);


--
-- Name: minerals_mineral_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.minerals_mineral_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: mineral a; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mineral
    ADD CONSTRAINT a UNIQUE (mineral_id);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: mineral minerals_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mineral
    ADD CONSTRAINT minerals_pkey PRIMARY KEY (mineral_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star x; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT x UNIQUE (star_id);


--
-- Name: moon y; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT y UNIQUE (moon_id);


--
-- Name: planet z; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT z UNIQUE (planet_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

