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
    name character varying(30),
    galaxy_id integer NOT NULL,
    galaxy_types character varying(50) NOT NULL,
    decription text NOT NULL,
    distance_from_earth numeric NOT NULL,
    age_in_millions_of_years integer NOT NULL
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
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    which_planet character varying(50) NOT NULL,
    decription text NOT NULL,
    has_life boolean NOT NULL,
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
    name character varying(30),
    planet_id integer NOT NULL,
    which_star character varying(50) NOT NULL,
    planet_types character varying(50) NOT NULL,
    decription text NOT NULL,
    has_life boolean NOT NULL,
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
    name character varying(30),
    star_id integer NOT NULL,
    which_galaxy character varying(50) NOT NULL,
    decription text NOT NULL,
    distance_from_earth numeric NOT NULL,
    age_in_millions_of_years integer NOT NULL,
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
-- Name: starwars; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.starwars (
    name character varying(30) NOT NULL,
    starwars_id integer NOT NULL,
    ship character varying(30) NOT NULL,
    planet character varying(30)
);


ALTER TABLE public.starwars OWNER TO freecodecamp;

--
-- Name: starwars_starwars_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.starwars_starwars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.starwars_starwars_id_seq OWNER TO freecodecamp;

--
-- Name: starwars_starwars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.starwars_starwars_id_seq OWNED BY public.starwars.starwars_id;


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
-- Name: starwars starwars_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starwars ALTER COLUMN starwars_id SET DEFAULT nextval('public.starwars_starwars_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Andromeda', 1, 'Spiral', 'The closest large spiral galaxy to the Milky Way.', 2.537, 10000);
INSERT INTO public.galaxy VALUES ('Triangulum', 2, 'Spiral', 'A member of the Local Group, known for its active star formation.', 3.0, 8000);
INSERT INTO public.galaxy VALUES ('Centaurus A', 3, 'Elliptical', 'A peculiar galaxy with an active galactic nucleus.', 12.0, 13000);
INSERT INTO public.galaxy VALUES ('Whirlpool Galaxy', 4, 'Spiral', 'A classic interacting grand-design spiral galaxy.', 23.0, 9000);
INSERT INTO public.galaxy VALUES ('Sombrero Galaxy', 5, 'Spiral', 'Famous for its prominent dust lane and bright nucleus.', 29.3, 11000);
INSERT INTO public.galaxy VALUES ('Large Magellanic Cloud', 6, 'Irregular', 'A satellite galaxy of the Milky Way, visible from the Southern Hemisphere.', 0.163, 2000);
INSERT INTO public.galaxy VALUES ('Milky Way', 7, 'Spiral', 'Our home galaxy, containing the Solar System.', 0.0, 13600);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 1, 'Earth', 'Earths only natural satellite, the fifth largest moon in the Solar System.', false, 3);
INSERT INTO public.moon VALUES ('Phobos', 2, 'Mars', 'Innermost and larger of the two moons of Mars, with a very irregular shape.', false, 3);
INSERT INTO public.moon VALUES ('Deimos', 3, 'Mars', 'Smaller and outermost of the two moons of Mars, with a relatively smooth surface.', false, 3);
INSERT INTO public.moon VALUES ('Io', 4, 'Jupiter', 'Innermost of the four Galilean moons of Jupiter, known for its intense volcanic activity.', false, 3);
INSERT INTO public.moon VALUES ('Europa', 5, 'Jupiter', 'One of Jupiters Galilean moons, believed to harbor a subsurface ocean.', false, 3);
INSERT INTO public.moon VALUES ('Ganymede', 6, 'Jupiter', 'The largest moon in the Solar System and the only one known to have its own magnetic field.', false, 3);
INSERT INTO public.moon VALUES ('Callisto', 7, 'Jupiter', 'Another of Jupiters Galilean moons, heavily cratered and geologically dead.', false, 3);
INSERT INTO public.moon VALUES ('Mimas', 8, 'Saturn', 'Smallest and innermost of Saturns major moons, famous for its large Herschel crater.', false, 3);
INSERT INTO public.moon VALUES ('Enceladus', 9, 'Saturn', 'A small, icy moon of Saturn, known for its geysers erupting from its south polar region.', false, 3);
INSERT INTO public.moon VALUES ('Tethys', 10, 'Saturn', 'A medium-sized icy moon of Saturn, with a prominent impact crater Odysseus.', false, 3);
INSERT INTO public.moon VALUES ('Dione', 11, 'Saturn', 'A medium-sized icy moon of Saturn, with a heavily cratered trailing hemisphere.', false, 3);
INSERT INTO public.moon VALUES ('Rhea', 12, 'Saturn', 'Second largest moon of Saturn, with a heavily cratered surface.', false, 3);
INSERT INTO public.moon VALUES ('Titan', 13, 'Saturn', 'Saturns largest moon, the only moon in the Solar System with a dense atmosphere and stable bodies of liquid on its surface.', false, 3);
INSERT INTO public.moon VALUES ('Iapetus', 14, 'Saturn', 'A two-toned moon of Saturn, with one hemisphere much darker than the other.', false, 3);
INSERT INTO public.moon VALUES ('Miranda', 15, 'Uranus', 'One of Uranuss major moons, known for its bizarre and varied surface features.', false, 3);
INSERT INTO public.moon VALUES ('Ariel', 16, 'Uranus', 'Brightest of Uranuss moons, with a relatively young and varied surface.', false, 3);
INSERT INTO public.moon VALUES ('Umbriel', 17, 'Uranus', 'Dark and heavily cratered moon of Uranus.', false, 3);
INSERT INTO public.moon VALUES ('Titania', 18, 'Uranus', 'Largest of Uranuss moons, with a complex surface showing faulting and canyons.', false, 3);
INSERT INTO public.moon VALUES ('Oberon', 19, 'Uranus', 'Second largest moon of Uranus, heavily cratered with some bright rays.', false, 3);
INSERT INTO public.moon VALUES ('Triton', 20, 'Neptune', 'Neptunes largest moon, unique for its retrograde orbit and active geysers.', false, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 1, 'Sun', 'Terrestrial', 'Smallest planet in our solar system, closest to the Sun.', false, 1);
INSERT INTO public.planet VALUES ('Venus', 2, 'Sun', 'Terrestrial', 'Second planet from the Sun, known for its extreme heat and volcanic activity.', false, 1);
INSERT INTO public.planet VALUES ('Earth', 3, 'Sun', 'Terrestrial', 'Our home planet, third from the Sun, unique for its liquid water and diverse life.', true, 1);
INSERT INTO public.planet VALUES ('Mars', 4, 'Sun', 'Terrestrial', 'The Red Planet, fourth from the Sun, with polar ice caps and potential for past life.', false, 1);
INSERT INTO public.planet VALUES ('Jupiter', 5, 'Sun', 'Gas Giant', 'Largest planet in our solar system, famous for its Great Red Spot.', false, 1);
INSERT INTO public.planet VALUES ('Saturn', 6, 'Sun', 'Gas Giant', 'Second largest planet, renowned for its spectacular ring system.', false, 1);
INSERT INTO public.planet VALUES ('Uranus', 7, 'Sun', 'Ice Giant', 'Seventh planet from the Sun, rotates on its side.', false, 1);
INSERT INTO public.planet VALUES ('Neptune', 8, 'Sun', 'Ice Giant', 'Farthest known planet from the Sun, cold and windy.', false, 1);
INSERT INTO public.planet VALUES ('Proxima Centauri b', 9, 'Proxima Centauri', 'Exoplanet', 'Potentially habitable exoplanet orbiting Proxima Centauri.', false, 1);
INSERT INTO public.planet VALUES ('Proxima Centauri c', 10, 'Proxima Centauri', 'Exoplanet', 'A super-Earth exoplanet, likely too cold to be habitable.', false, 1);
INSERT INTO public.planet VALUES ('Sirius b', 11, 'Sirius A', 'White Dwarf', 'A companion white dwarf star, very dense and hot.', false, 1);
INSERT INTO public.planet VALUES ('Rigel III', 12, 'Rigel', 'Gas Giant', 'A hypothetical gas giant orbiting the supergiant star Rigel.', false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1, 'Milky Way', 'Our local star, a main-sequence yellow dwarf.', 0.000015813, 4600, 7);
INSERT INTO public.star VALUES ('Proxima Centauri', 2, 'Milky Way', 'The closest red dwarf to the Sun.', 4.24, 4850, 7);
INSERT INTO public.star VALUES ('Sirius A', 3, 'Milky Way', 'The brightest star in the night sky.', 8.6, 250, 7);
INSERT INTO public.star VALUES ('Betelgeuse', 4, 'Milky Way', 'A massive red supergiant in the constellation Orion.', 642.5, 10, 7);
INSERT INTO public.star VALUES ('Rigel', 5, 'Milky Way', 'An extremely luminous blue supergiant.', 863.0, 8, 7);
INSERT INTO public.star VALUES ('Alpha Centauri A', 6, 'Milky Way', 'A Sun-like star, part of the Alpha Centauri system.', 4.37, 6000, 7);


--
-- Data for Name: starwars; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.starwars VALUES ('Luke Skywalker', 1, 'X-wing', 'Tatooine');
INSERT INTO public.starwars VALUES ('Darth Vader', 2, 'TIE Advanced x1', 'Coruscant');
INSERT INTO public.starwars VALUES ('Han Solo', 3, 'Millennium Falcon', 'Corellia');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: starwars_starwars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.starwars_starwars_id_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: starwars starwars_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starwars
    ADD CONSTRAINT starwars_pkey PRIMARY KEY (starwars_id);


--
-- Name: starwars starwars_planet_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starwars
    ADD CONSTRAINT starwars_planet_key UNIQUE (planet);


--
-- Name: galaxy uq_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uq_galaxy_name UNIQUE (name);


--
-- Name: moon uq_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uq_moon_name UNIQUE (name);


--
-- Name: planet uq_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uq_planet_name UNIQUE (name);


--
-- Name: star uq_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uq_star_name UNIQUE (name);


--
-- Name: starwars uq_starwars_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starwars
    ADD CONSTRAINT uq_starwars_id UNIQUE (starwars_id);


--
-- Name: starwars uq_starwars_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starwars
    ADD CONSTRAINT uq_starwars_name UNIQUE (name);


--
-- Name: star fk_galaxy_ref__id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_ref__id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_moon_ref__id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_ref__id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_ref__id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_ref__id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

