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
    name character varying(100),
    description text NOT NULL,
    age_in_billions_of_years numeric(4,1),
    distance_from_earth integer NOT NULL
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
    moon_id integer NOT NULL,
    name character varying(100),
    age_in_billions_of_years numeric(4,1),
    diameter integer NOT NULL,
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
    name character varying(100),
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
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
-- Name: server; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.server (
    server_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age integer NOT NULL
);


ALTER TABLE public.server OWNER TO freecodecamp;

--
-- Name: server_server_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.server_server_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.server_server_id_seq OWNER TO freecodecamp;

--
-- Name: server_server_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.server_server_id_seq OWNED BY public.server.server_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100),
    temperature numeric(6,2),
    galaxy_id integer NOT NULL,
    luminosity numeric(6,2)
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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: server server_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.server ALTER COLUMN server_id SET DEFAULT nextval('public.server_server_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy A', 'Description of Galaxy A', 12.3, 1500000);
INSERT INTO public.galaxy VALUES (2, 'Galaxy B', 'Description of Galaxy B', 8.5, 2000000);
INSERT INTO public.galaxy VALUES (3, 'Galaxy C', 'Description of Galaxy C', 15.2, 2500000);
INSERT INTO public.galaxy VALUES (4, 'Galaxy D', 'Description of Galaxy D', 10.7, 3000000);
INSERT INTO public.galaxy VALUES (5, 'Galaxy E', 'Description of Galaxy E', 13.4, 3500000);
INSERT INTO public.galaxy VALUES (6, 'Galaxy F', 'Description of Galaxy F', 9.1, 4000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon 1A', 0.1, 1000, 1);
INSERT INTO public.moon VALUES (2, 'Moon 1B', 0.2, 800, 1);
INSERT INTO public.moon VALUES (3, 'Moon 2A', 0.3, 900, 2);
INSERT INTO public.moon VALUES (4, 'Moon 2B', 0.4, 700, 2);
INSERT INTO public.moon VALUES (5, 'Moon 3A', 0.5, 1100, 3);
INSERT INTO public.moon VALUES (6, 'Moon 3B', 0.6, 1200, 3);
INSERT INTO public.moon VALUES (7, 'Moon 4A', 0.7, 1300, 4);
INSERT INTO public.moon VALUES (8, 'Moon 4B', 0.8, 1400, 4);
INSERT INTO public.moon VALUES (9, 'Moon 5A', 0.9, 1500, 5);
INSERT INTO public.moon VALUES (10, 'Moon 5B', 1.0, 1600, 5);
INSERT INTO public.moon VALUES (11, 'Moon 6A', 1.1, 1700, 6);
INSERT INTO public.moon VALUES (12, 'Moon 6B', 1.2, 1800, 6);
INSERT INTO public.moon VALUES (13, 'Moon 7A', 1.3, 1900, 7);
INSERT INTO public.moon VALUES (14, 'Moon 7B', 1.4, 2000, 7);
INSERT INTO public.moon VALUES (15, 'Moon 8A', 1.5, 2100, 8);
INSERT INTO public.moon VALUES (16, 'Moon 8B', 1.6, 2200, 8);
INSERT INTO public.moon VALUES (17, 'Moon 9A', 1.7, 2300, 9);
INSERT INTO public.moon VALUES (18, 'Moon 9B', 1.8, 2400, 9);
INSERT INTO public.moon VALUES (19, 'Moon 10A', 1.9, 2500, 10);
INSERT INTO public.moon VALUES (20, 'Moon 10B', 2.0, 2600, 10);
INSERT INTO public.moon VALUES (21, 'Moon 11A', 2.1, 2700, 11);
INSERT INTO public.moon VALUES (22, 'Moon 11B', 2.2, 2800, 11);
INSERT INTO public.moon VALUES (23, 'Moon 12A', 2.3, 2900, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet A', true, false, 1);
INSERT INTO public.planet VALUES (2, 'Planet B', false, true, 1);
INSERT INTO public.planet VALUES (3, 'Planet C', true, true, 2);
INSERT INTO public.planet VALUES (4, 'Planet D', false, false, 2);
INSERT INTO public.planet VALUES (5, 'Planet E', true, false, 3);
INSERT INTO public.planet VALUES (6, 'Planet F', false, true, 3);
INSERT INTO public.planet VALUES (7, 'Planet G', true, true, 4);
INSERT INTO public.planet VALUES (8, 'Planet H', false, false, 4);
INSERT INTO public.planet VALUES (9, 'Planet I', true, false, 5);
INSERT INTO public.planet VALUES (10, 'Planet J', false, true, 5);
INSERT INTO public.planet VALUES (11, 'Planet K', true, true, 6);
INSERT INTO public.planet VALUES (12, 'Planet L', false, false, 6);


--
-- Data for Name: server; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.server VALUES (1, 'Server A', 5);
INSERT INTO public.server VALUES (2, 'Server B', 10);
INSERT INTO public.server VALUES (3, 'Server C', 15);
INSERT INTO public.server VALUES (4, 'Server D', 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star 1A', 5000.00, 1, 1000.00);
INSERT INTO public.star VALUES (2, 'Star 1B', 6000.00, 1, 1200.00);
INSERT INTO public.star VALUES (3, 'Star 2A', 5500.00, 2, 1100.00);
INSERT INTO public.star VALUES (4, 'Star 2B', 5700.00, 2, 1300.00);
INSERT INTO public.star VALUES (5, 'Star 3A', 5400.00, 3, 1050.00);
INSERT INTO public.star VALUES (6, 'Star 3B', 5800.00, 3, 1250.00);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: server_server_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.server_server_id_seq', 4, true);


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
-- Name: server server_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.server
    ADD CONSTRAINT server_name_key UNIQUE (name);


--
-- Name: server server_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.server
    ADD CONSTRAINT server_pkey PRIMARY KEY (server_id);


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
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

