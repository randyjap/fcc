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
    name character varying NOT NULL,
    age numeric NOT NULL,
    description text,
    galaxy_id integer NOT NULL,
    notes1 text NOT NULL
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
    name character varying NOT NULL,
    radius integer NOT NULL,
    habitable boolean,
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    notes1 text NOT NULL
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
-- Name: notes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.notes (
    notes_id integer NOT NULL,
    text text NOT NULL,
    name character varying
);


ALTER TABLE public.notes OWNER TO freecodecamp;

--
-- Name: notes_notes_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.notes_notes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notes_notes_id_seq OWNER TO freecodecamp;

--
-- Name: notes_notes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.notes_notes_id_seq OWNED BY public.notes.notes_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying NOT NULL,
    radius integer NOT NULL,
    habitable boolean,
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    notes1 text NOT NULL
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
    name character varying NOT NULL,
    radius integer NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    notes1 text NOT NULL
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
-- Name: notes notes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.notes ALTER COLUMN notes_id SET DEFAULT nextval('public.notes_notes_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES ('1', 1, NULL, 2, '1');
INSERT INTO public.galaxy VALUES ('2', 2, NULL, 3, '2');
INSERT INTO public.galaxy VALUES ('4', 4, NULL, 4, '4');
INSERT INTO public.galaxy VALUES ('5', 5, NULL, 5, '5');
INSERT INTO public.galaxy VALUES ('6', 6, NULL, 6, '6');
INSERT INTO public.galaxy VALUES ('7', 7, NULL, 7, '7');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('1', 1, NULL, 4, 10, '1');
INSERT INTO public.moon VALUES ('100', 100, NULL, 7, 10, '100');
INSERT INTO public.moon VALUES ('101', 101, NULL, 8, 10, '101');
INSERT INTO public.moon VALUES ('102', 102, NULL, 9, 10, '102');
INSERT INTO public.moon VALUES ('103', 103, NULL, 10, 10, '103');
INSERT INTO public.moon VALUES ('104', 104, NULL, 11, 10, '104');
INSERT INTO public.moon VALUES ('105', 105, NULL, 12, 10, '105');
INSERT INTO public.moon VALUES ('106', 106, NULL, 13, 10, '106');
INSERT INTO public.moon VALUES ('107', 107, NULL, 14, 10, '107');
INSERT INTO public.moon VALUES ('108', 108, NULL, 15, 10, '108');
INSERT INTO public.moon VALUES ('109', 109, NULL, 16, 10, '109');
INSERT INTO public.moon VALUES ('110', 110, NULL, 17, 10, '110');
INSERT INTO public.moon VALUES ('111', 111, NULL, 18, 10, '111');
INSERT INTO public.moon VALUES ('112', 112, NULL, 19, 10, '112');
INSERT INTO public.moon VALUES ('113', 113, NULL, 20, 10, '113');
INSERT INTO public.moon VALUES ('114', 114, NULL, 21, 10, '114');
INSERT INTO public.moon VALUES ('115', 115, NULL, 22, 10, '115');
INSERT INTO public.moon VALUES ('116', 116, NULL, 23, 10, '116');
INSERT INTO public.moon VALUES ('117', 117, NULL, 24, 10, '117');
INSERT INTO public.moon VALUES ('118', 118, NULL, 25, 10, '118');
INSERT INTO public.moon VALUES ('119', 119, NULL, 26, 10, '119');
INSERT INTO public.moon VALUES ('120', 120, NULL, 27, 10, '120');


--
-- Data for Name: notes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.notes VALUES (1, '1', '1');
INSERT INTO public.notes VALUES (2, '2', '2');
INSERT INTO public.notes VALUES (3, '3', '3');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('1', 1, NULL, 5, 5, '1');
INSERT INTO public.planet VALUES ('2', 2, NULL, 6, 5, '2');
INSERT INTO public.planet VALUES ('3', 3, NULL, 7, 5, '3');
INSERT INTO public.planet VALUES ('4', 4, NULL, 8, 5, '4');
INSERT INTO public.planet VALUES ('5', 5, NULL, 9, 5, '5');
INSERT INTO public.planet VALUES ('6', 6, NULL, 10, 5, '6');
INSERT INTO public.planet VALUES ('7', 7, NULL, 11, 5, '7');
INSERT INTO public.planet VALUES ('8', 8, NULL, 12, 5, '8');
INSERT INTO public.planet VALUES ('9', 9, NULL, 13, 5, '9');
INSERT INTO public.planet VALUES ('10', 10, NULL, 14, 5, '10');
INSERT INTO public.planet VALUES ('11', 11, NULL, 15, 5, '11');
INSERT INTO public.planet VALUES ('12', 12, NULL, 16, 5, '12');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('1', 1, 3, 2, '1');
INSERT INTO public.star VALUES ('3', 3, 4, 3, '3');
INSERT INTO public.star VALUES ('4', 4, 5, 4, '4');
INSERT INTO public.star VALUES ('5', 5, 6, 5, '5');
INSERT INTO public.star VALUES ('6', 6, 7, 6, '6');
INSERT INTO public.star VALUES ('7', 7, 9, 6, '7');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 27, true);


--
-- Name: notes_notes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.notes_notes_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_notes1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_notes1_key UNIQUE (notes1);


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
-- Name: moon moon_notes1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_notes1_key UNIQUE (notes1);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: notes notes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.notes
    ADD CONSTRAINT notes_pkey PRIMARY KEY (notes_id);


--
-- Name: notes notes_text_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.notes
    ADD CONSTRAINT notes_text_key UNIQUE (text);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_notes1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_notes1_key UNIQUE (notes1);


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
-- Name: star star_notes1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_notes1_key UNIQUE (notes1);


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

