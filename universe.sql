--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    age_in_millions_of_years integer,
    has_life integer,
    distance_from_earth numeric,
    description text NOT NULL,
    is_spherical boolean,
    visible_from_earth boolean,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    age_in_millions_of_years integer,
    has_life integer,
    distance_from_earth numeric,
    description text,
    is_spherical boolean,
    visible_from_earth boolean,
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer
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
-- Name: observer; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.observer (
    observer_id integer NOT NULL,
    name character varying(30) NOT NULL,
    job character varying(30)
);


ALTER TABLE public.observer OWNER TO freecodecamp;

--
-- Name: observer_observer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.observer_observer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.observer_observer_id_seq OWNER TO freecodecamp;

--
-- Name: observer_observer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.observer_observer_id_seq OWNED BY public.observer.observer_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    age_in_millions_of_years integer,
    has_life integer,
    distance_from_earth numeric,
    description text,
    is_spherical boolean,
    visible_from_earth boolean,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    star_id integer
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
    age_in_millions_of_years integer,
    has_life integer,
    distance_from_earth numeric,
    description text,
    is_spherical boolean,
    visible_from_earth boolean,
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: observer observer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.observer ALTER COLUMN observer_id SET DEFAULT nextval('public.observer_observer_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, 'de forma eliptica, ubicada a 48 millones de años luz en la constelacion Coma Berenices', NULL, NULL, 'cigarro', 5);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, 'de forma eliptica, ubicada a 48 millones de años luz en la constelacion Coma Berenices', NULL, NULL, 'ojo negro', 6);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, 'de forma eliptica, ubicada a 48 millones de años luz en la constelacion Coma Berenices', NULL, NULL, 'via lactea', 1);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, 'de forma eliptica, ubicada a 48 millones de años luz en la constelacion Coma Berenices', NULL, NULL, 'andromeda', 2);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, 'de forma eliptica, ubicada a 48 millones de años luz en la constelacion Coma Berenices', NULL, NULL, 'triangulo', 3);
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, 'de forma eliptica, ubicada a 48 millones de años luz en la constelacion Coma Berenices', NULL, NULL, 'sombrero', 4);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (NULL, NULL, NULL, '', NULL, NULL, 'europa', 1, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, '', NULL, NULL, 'encelado', 2, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, '', NULL, NULL, 'titan', 3, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, '', NULL, NULL, 'triton', 4, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, '', NULL, NULL, 'calisto', 5, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, '', NULL, NULL, 'io', 6, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, '', NULL, NULL, 'deimos', 7, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, '', NULL, NULL, 'phobos', 8, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, '', NULL, NULL, 'mimas', 9, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, '', NULL, NULL, 'ganimedes', 10, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, '', NULL, NULL, 'miranda', 11, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, '', NULL, NULL, 'dione', 12, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, '', NULL, NULL, 'oberon', 13, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, '', NULL, NULL, 'proteo', 14, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, '', NULL, NULL, 'rhea', 15, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, '', NULL, NULL, 'hyperion', 16, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, '', NULL, NULL, 'ariel', 17, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, '', NULL, NULL, 'amaltea', 19, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, '', NULL, NULL, 'nereida', 20, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, '', NULL, NULL, 'callisto', 18, NULL);


--
-- Data for Name: observer; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.observer VALUES (1, 'Luis', NULL);
INSERT INTO public.observer VALUES (2, 'Juan', NULL);
INSERT INTO public.observer VALUES (3, 'Enrique', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (NULL, NULL, NULL, '', NULL, NULL, 'mercurio', 1, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, '', NULL, NULL, 'venus', 2, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, '', NULL, NULL, 'tierra', 3, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, '', NULL, NULL, 'marte', 4, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, '', NULL, NULL, 'jupiter', 5, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, '', NULL, NULL, 'saturno', 6, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, '', NULL, NULL, 'urano', 7, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, '', NULL, NULL, 'neptuno', 8, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, '', NULL, NULL, 'kepler-22b', 9, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, '', NULL, NULL, 'hd 209458 b', 10, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, '', NULL, NULL, 'wasp-12b', 11, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, '', NULL, NULL, 'gliese 436 b', 12, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (NULL, NULL, NULL, '', NULL, NULL, 'sol', 1, NULL);
INSERT INTO public.star VALUES (NULL, NULL, NULL, '', NULL, NULL, 'sirio', 2, NULL);
INSERT INTO public.star VALUES (NULL, NULL, NULL, '', NULL, NULL, 'alfa centauri', 3, NULL);
INSERT INTO public.star VALUES (NULL, NULL, NULL, '', NULL, NULL, 'betelgeuse', 4, NULL);
INSERT INTO public.star VALUES (NULL, NULL, NULL, '', NULL, NULL, 'antares', 5, NULL);
INSERT INTO public.star VALUES (NULL, NULL, NULL, '', NULL, NULL, 'vega', 6, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: observer_observer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.observer_observer_id_seq', 36, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: observer observer_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.observer
    ADD CONSTRAINT observer_name_key UNIQUE (name);


--
-- Name: observer observer_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.observer
    ADD CONSTRAINT observer_pkey PRIMARY KEY (observer_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

