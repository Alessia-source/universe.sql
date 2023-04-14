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
    galaxy_id integer NOT NULL,
    name character varying,
    type integer NOT NULL,
    description text,
    belongs_to integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying,
    belongs_to integer,
    type integer NOT NULL,
    distance_from_earth boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying,
    belongs_to integer,
    type integer NOT NULL,
    distance_from_earth boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying,
    type integer NOT NULL,
    belongs_to integer,
    distance_from_earth boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: terra; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.terra (
    terra_id integer NOT NULL,
    name character varying,
    belongs_to integer,
    type integer NOT NULL,
    how_many_humans numeric
);


ALTER TABLE public.terra OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (0, 'Elliptical', 1, NULL, NULL);
INSERT INTO public.galaxy VALUES (1, 'Spiral', 2, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Irregular', 3, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Gruppo_locale_I', 4, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Gruppo_locale_II', 5, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Gruppo_locale_III', 6, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (0, 'not_detected', NULL, 1, NULL);
INSERT INTO public.moon VALUES (1, 'not_detected', NULL, 2, NULL);
INSERT INTO public.moon VALUES (2, 'luna', NULL, 3, NULL);
INSERT INTO public.moon VALUES (3, 'Fobos', NULL, 4, NULL);
INSERT INTO public.moon VALUES (4, 'Gianimede', NULL, 5, NULL);
INSERT INTO public.moon VALUES (5, 'Titano', NULL, 6, NULL);
INSERT INTO public.moon VALUES (6, 'Ariel', NULL, 7, NULL);
INSERT INTO public.moon VALUES (7, 'Proteo', NULL, 8, NULL);
INSERT INTO public.moon VALUES (8, 'not_detected', NULL, 9, NULL);
INSERT INTO public.moon VALUES (9, 'Caronte', NULL, 10, NULL);
INSERT INTO public.moon VALUES (10, 'Namaka', NULL, 11, NULL);
INSERT INTO public.moon VALUES (11, 'not_detected', NULL, 12, NULL);
INSERT INTO public.moon VALUES (12, 'Rea', NULL, 5, NULL);
INSERT INTO public.moon VALUES (13, 'Dione', NULL, 5, NULL);
INSERT INTO public.moon VALUES (14, 'Miranda', NULL, 6, NULL);
INSERT INTO public.moon VALUES (15, 'Puck', NULL, 6, NULL);
INSERT INTO public.moon VALUES (16, 'Nereide', NULL, 7, NULL);
INSERT INTO public.moon VALUES (17, 'Larissa', NULL, 7, NULL);
INSERT INTO public.moon VALUES (18, 'Amaltea', NULL, 4, NULL);
INSERT INTO public.moon VALUES (19, 'Leda', NULL, 4, NULL);
INSERT INTO public.moon VALUES (20, 'Ofelia', NULL, 6, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (0, 'Mercurio', NULL, 1, NULL);
INSERT INTO public.planet VALUES (1, 'Venere', NULL, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Terra', NULL, 1, NULL);
INSERT INTO public.planet VALUES (3, 'Marte', NULL, 1, NULL);
INSERT INTO public.planet VALUES (4, 'Giove', NULL, 1, NULL);
INSERT INTO public.planet VALUES (5, 'Saturno', NULL, 1, NULL);
INSERT INTO public.planet VALUES (6, 'Urano', NULL, 1, NULL);
INSERT INTO public.planet VALUES (7, 'Nettuno', NULL, 1, NULL);
INSERT INTO public.planet VALUES (8, 'Cerere', NULL, 2, NULL);
INSERT INTO public.planet VALUES (9, 'Plutone', NULL, 2, NULL);
INSERT INTO public.planet VALUES (10, 'Haumea', NULL, 2, NULL);
INSERT INTO public.planet VALUES (11, 'Makemake', NULL, 2, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (0, 'VY_Canis', 1, NULL, NULL);
INSERT INTO public.star VALUES (1, 'KY_Cygni', 2, NULL, NULL);
INSERT INTO public.star VALUES (2, 'VX_Sagittarii', 3, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Westerlund', 4, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Stephenson', 5, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Mirach', 6, NULL, NULL);


--
-- Data for Name: terra; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.terra VALUES (0, 'Asia', NULL, 0, 4.519);
INSERT INTO public.terra VALUES (1, 'America', NULL, 1, 982.8);
INSERT INTO public.terra VALUES (2, 'Africa', NULL, 2, 1.277);
INSERT INTO public.terra VALUES (3, 'Europa', NULL, 3, 739.4);
INSERT INTO public.terra VALUES (4, 'Oceania', NULL, 4, 41.027);


--
-- Name: galaxy galaxy_belongs_to_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_belongs_to_key UNIQUE (belongs_to);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_belongs_to_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_belongs_to_key UNIQUE (belongs_to);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_belongs_to_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_belongs_to_key UNIQUE (belongs_to);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_belongs_to_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_belongs_to_key UNIQUE (belongs_to);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: terra terra_belongs_to_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.terra
    ADD CONSTRAINT terra_belongs_to_key UNIQUE (belongs_to);


--
-- Name: terra terra_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.terra
    ADD CONSTRAINT terra_pkey PRIMARY KEY (terra_id);


--
-- Name: moon moon_belongs_to_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_belongs_to_fkey FOREIGN KEY (belongs_to) REFERENCES public.planet(belongs_to);


--
-- Name: planet planet_belongs_to_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_belongs_to_fkey FOREIGN KEY (belongs_to) REFERENCES public.star(belongs_to);


--
-- Name: star star_belongs_to_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_belongs_to_fkey FOREIGN KEY (belongs_to) REFERENCES public.galaxy(belongs_to);


--
-- Name: terra terra_belongs_to_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.terra
    ADD CONSTRAINT terra_belongs_to_fkey FOREIGN KEY (belongs_to) REFERENCES public.moon(belongs_to);


--
-- PostgreSQL database dump complete
--

