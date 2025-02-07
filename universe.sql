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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    othername character varying(255),
    description text,
    age numeric
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    number_of_stars integer,
    type_of_galaxy character varying(255),
    description character varying(255)
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
    name character varying(255) NOT NULL,
    is_spherical boolean,
    description character varying(255),
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    number_of_moons integer,
    has_life boolean,
    description character varying(255),
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
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    number_of_planets integer,
    description character varying(255),
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Comet Swift-Tuttle', 'Periodic Comet 109P', 'A large periodic comet known for its close pass to Earth.', 13000);
INSERT INTO public.comet VALUES (2, 'Halley''s Comet', '1P/Halley', 'A famous periodic comet that is visible from Earth once every 76 years.', 17500);
INSERT INTO public.comet VALUES (3, 'Comet NEOWISE', 'C/2020 F3', 'A bright comet that became visible in the Northern Hemisphere in 2020.', 2000);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 1000000000, 'Spiral', 'A massive spiral galaxy, known to be the closest major galaxy to the Milky Way.');
INSERT INTO public.galaxy VALUES (2, 'Whirlpool', 500000000, 'Spiral', 'A beautiful spiral galaxy located about 23 million light years from Earth.');
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 100000000, 'Elliptical', 'A galaxy known for its distinctive shape that resembles a sombrero hat.');
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 400000000, 'Spiral', 'A smaller spiral galaxy near the Andromeda Galaxy.');
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 200000000, 'Elliptical', 'A giant elliptical galaxy located about 13 million light years away.');
INSERT INTO public.galaxy VALUES (6, 'Milky Way', 300000000, 'Spiral', 'Our very own galaxy, home to the Solar System and Earth.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (18, 'Luna 1', true, 'Earths only natural satellite, known for its craters and phases.', 1);
INSERT INTO public.moon VALUES (19, 'Phobos 2', true, 'The larger of Mars two moons, heavily cratered and irregular in shape.', 2);
INSERT INTO public.moon VALUES (20, 'Deimos 3', true, 'The smaller moon of Mars, with a smooth, irregular surface.', 2);
INSERT INTO public.moon VALUES (21, 'Io 4', true, 'One of Jupiters moons, known for its volcanic activity and colorful surface.', 3);
INSERT INTO public.moon VALUES (22, 'Europa 5', true, 'A moon of Jupiter, with an icy surface and potential subsurface ocean.', 3);
INSERT INTO public.moon VALUES (23, 'Ganymede 6', true, 'The largest moon in the solar system, orbiting Jupiter.', 3);
INSERT INTO public.moon VALUES (24, 'Callisto 7', true, 'A heavily cratered moon of Jupiter, one of the oldest surfaces in the solar system.', 3);
INSERT INTO public.moon VALUES (25, 'Titan 8', true, 'Saturns largest moon, with a thick atmosphere and lakes of liquid methane.', 4);
INSERT INTO public.moon VALUES (26, 'Rhea 9', true, 'A moon of Saturn, characterized by its icy surface and craters.', 4);
INSERT INTO public.moon VALUES (27, 'Iapetus 10', true, 'Saturns moon known for its unique two-tone coloration and equatorial ridge.', 4);
INSERT INTO public.moon VALUES (28, 'Oberon 11', true, 'A moon of Uranus, with a surface covered in craters and ice.', 5);
INSERT INTO public.moon VALUES (29, 'Titania 12', true, 'The largest moon of Uranus, with a mixture of ice and rock.', 5);
INSERT INTO public.moon VALUES (30, 'Miranda 13', true, 'A moon of Uranus known for its extreme geological features and chaotic surface.', 5);
INSERT INTO public.moon VALUES (31, 'Triton 14', true, 'Neptunes largest moon, unique for its retrograde orbit and geysers.', 6);
INSERT INTO public.moon VALUES (32, 'Proteus 15', true, 'A large moon of Neptune, heavily cratered and irregular in shape.', 6);
INSERT INTO public.moon VALUES (33, 'Charon 16', true, 'Plutos largest moon, with a relatively large size compared to its planet.', 7);
INSERT INTO public.moon VALUES (34, 'Europa 17', true, 'A moon of Kepler-22b, speculated to have the potential for life.', 8);
INSERT INTO public.moon VALUES (35, 'Galatea 18', true, 'A moon of Neptune, known for its icy surface and small size.', 6);
INSERT INTO public.moon VALUES (36, 'Mimas 19', true, 'A small moon of Saturn, with a large crater nicknamed the Death Star crater.', 4);
INSERT INTO public.moon VALUES (37, 'Hyperion 20', true, 'A moon of Saturn, known for its irregular shape and low density.', 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, 'The third planet from the Sun, known for sustaining life.', 1);
INSERT INTO public.planet VALUES (2, 'Mars', 2, false, 'A cold, barren planet known for its red surface.', 1);
INSERT INTO public.planet VALUES (3, 'Venus', 0, false, 'The second planet from the Sun, with a thick atmosphere and extreme temperatures.', 2);
INSERT INTO public.planet VALUES (4, 'Jupiter', 79, false, 'The largest planet in the solar system, known for its massive size and stormy atmosphere.', 3);
INSERT INTO public.planet VALUES (5, 'Saturn', 82, false, 'Known for its beautiful ring system, Saturn is a gas giant.', 4);
INSERT INTO public.planet VALUES (6, 'Uranus', 27, false, 'A gas giant with a blue hue, Uranus has a tilted rotational axis.', 5);
INSERT INTO public.planet VALUES (7, 'Neptune', 14, false, 'A blue planet located farthest from the Sun, Neptune has strong winds and storms.', 6);
INSERT INTO public.planet VALUES (8, 'Proxima B', 1, true, 'A potentially habitable exoplanet orbiting Proxima Centauri.', 1);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 0, true, 'An exoplanet in the habitable zone of its star, with conditions that might support life.', 2);
INSERT INTO public.planet VALUES (10, 'Gliese 581g', 0, true, 'A potentially habitable exoplanet orbiting the star Gliese 581.', 3);
INSERT INTO public.planet VALUES (11, 'Trappist-1d', 3, true, 'A rocky exoplanet with three moons, part of the Trappist-1 system.', 4);
INSERT INTO public.planet VALUES (12, 'HD 209458 b', 0, false, 'A hot Jupiter exoplanet with a high temperature and rapid orbital period.', 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha Centauri A', 3, 'A bright star in the Alpha Centauri system, one of the closest star systems to Earth.', 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 5, 'A red supergiant star in the Orion constellation, one of the largest stars visible to the naked eye.', 2);
INSERT INTO public.star VALUES (3, 'Sirius', 2, 'The brightest star in the night sky, part of the Canis Major constellation.', 3);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 1, 'The closest known star to the Sun, located in the Alpha Centauri system.', 4);
INSERT INTO public.star VALUES (5, 'Vega', 4, 'A bright star in the Lyra constellation, often used as a navigation reference in space.', 5);
INSERT INTO public.star VALUES (6, 'Rigel', 6, 'A blue supergiant star in the Orion constellation, known for its intense brightness.', 6);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 37, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key UNIQUE (name);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_name_key UNIQUE (name);


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

