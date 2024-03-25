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
    name character varying(60) NOT NULL,
    stars_quantity integer,
    planet_quantity numeric,
    galaxy_describe text,
    has_moon boolean
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
    name character varying(60) NOT NULL,
    planet_id integer,
    color character varying(20),
    size integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    star_id integer,
    color character varying(20),
    size integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying(60) NOT NULL,
    planet_id integer
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellite_id_seq OWNED BY public.satellite.satellite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    star_size integer,
    common_star boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: satellite satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Oros', 111111111, 321, 'colossal Orus, the wonderfull blue giant', true);
INSERT INTO public.galaxy VALUES (2, 'Arast', 222222222, 210, 'Arast, the wonderfull yellow brigthness', true);
INSERT INTO public.galaxy VALUES (3, 'Falask', 333333333, 124, 'Falask, The Golias Galaxy', false);
INSERT INTO public.galaxy VALUES (4, 'Macran', 444444444, 258, 'Macran, a hypnosis galaxy', true);
INSERT INTO public.galaxy VALUES (5, 'Avaslan', 555555555, 451, 'Avaslan, the whit avalanche', true);
INSERT INTO public.galaxy VALUES (6, 'Firema', 666666666, 367, 'Firema, the great lava galaxy', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'GreenMoon', 1, 'Green', 123456);
INSERT INTO public.moon VALUES (2, 'FireMoon', 2, 'Red', 215478);
INSERT INTO public.moon VALUES (3, 'GrayMoon', 3, 'Gray', 189652);
INSERT INTO public.moon VALUES (4, 'M4', 4, 'D', 65486);
INSERT INTO public.moon VALUES (5, 'M5', 5, 'E', 65421);
INSERT INTO public.moon VALUES (6, 'M6', 6, 'F', 63212);
INSERT INTO public.moon VALUES (7, 'M7', 7, 'G', 11111);
INSERT INTO public.moon VALUES (8, 'M8', 8, 'H', 2525);
INSERT INTO public.moon VALUES (9, 'M9', 9, 'I', 44433);
INSERT INTO public.moon VALUES (10, 'M10', 10, 'J', 69858);
INSERT INTO public.moon VALUES (11, 'M11', 11, 'K', 356412);
INSERT INTO public.moon VALUES (12, 'M12', 12, 'L', 214243);
INSERT INTO public.moon VALUES (13, 'M13', 4, 'M', 52524);
INSERT INTO public.moon VALUES (14, 'M14', 5, 'N', 42100);
INSERT INTO public.moon VALUES (15, 'M15', 6, 'O', 663320);
INSERT INTO public.moon VALUES (16, 'M16', 7, 'P', 57888);
INSERT INTO public.moon VALUES (17, 'M17', 8, 'Q', 33305);
INSERT INTO public.moon VALUES (18, 'M18', 9, 'R', 114424);
INSERT INTO public.moon VALUES (19, 'M19', 10, 'S', 335252);
INSERT INTO public.moon VALUES (20, 'M20', 11, 'T', 55661);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planant', 1, 'Green', 156846548);
INSERT INTO public.planet VALUES (2, 'Planfirie', 2, 'Red', 215645684);
INSERT INTO public.planet VALUES (3, 'Planrockar', 3, 'Gray', 23669988);
INSERT INTO public.planet VALUES (4, 'Planeta4', 4, 'Blue', 546546);
INSERT INTO public.planet VALUES (5, 'Planeta5', 5, 'A', 654646);
INSERT INTO public.planet VALUES (6, 'Planeta6', 6, 'F', 684654);
INSERT INTO public.planet VALUES (7, 'Planeta7', 13, 'T', 6548654);
INSERT INTO public.planet VALUES (8, 'Planeta8', 14, 'U', 32548);
INSERT INTO public.planet VALUES (9, 'Planeta9', 15, 'W', 67425);
INSERT INTO public.planet VALUES (10, 'Planeta10', 16, 'Y', 112255);
INSERT INTO public.planet VALUES (11, 'Planeta11', 17, 'J', 333222);
INSERT INTO public.planet VALUES (12, 'Planeta12', 18, 'K', 105745);


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, 'Sat486', 1);
INSERT INTO public.satellite VALUES (2, 'Sat564', 2);
INSERT INTO public.satellite VALUES (3, 'Sat985', 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'ER324', 154795, true, 1);
INSERT INTO public.star VALUES (2, 'ERC142', 6548654, true, 2);
INSERT INTO public.star VALUES (3, 'TFD198', 4725345, true, 3);
INSERT INTO public.star VALUES (4, 'GH436', 575321, true, 4);
INSERT INTO public.star VALUES (5, 'Big Blue', 8965578, false, 5);
INSERT INTO public.star VALUES (6, 'Great Dark', 96548565, false, 6);
INSERT INTO public.star VALUES (13, 'EW124', 154795, true, 1);
INSERT INTO public.star VALUES (14, 'EC146', 6548654, true, 2);
INSERT INTO public.star VALUES (15, 'TD168', 4725345, true, 3);
INSERT INTO public.star VALUES (16, 'GHA492', 575321, true, 4);
INSERT INTO public.star VALUES (17, 'Giant Polo', 8965578, false, 5);
INSERT INTO public.star VALUES (18, 'Godnness Light', 106548565, false, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellite_id_seq', 3, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 18, true);


--
-- Name: galaxy galaxy_primary_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_primary_key PRIMARY KEY (galaxy_id);


--
-- Name: galaxy id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT id_unique UNIQUE (galaxy_id);


--
-- Name: moon id_unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT id_unique_moon UNIQUE (moon_id);


--
-- Name: planet id_unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT id_unique_planet UNIQUE (planet_id);


--
-- Name: star id_unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT id_unique_star UNIQUE (star_id);


--
-- Name: moon pk_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT pk_moon PRIMARY KEY (moon_id);


--
-- Name: planet pk_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT pk_planet PRIMARY KEY (planet_id);


--
-- Name: satellite pk_satellite; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT pk_satellite PRIMARY KEY (satellite_id);


--
-- Name: star star_primary_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_primary_key PRIMARY KEY (star_id);


--
-- Name: satellite unique_id_satellite; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT unique_id_satellite UNIQUE (satellite_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: satellite fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

