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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games_info (
    game_id integer NOT NULL,
    name character varying(30),
    no_guess integer
);


ALTER TABLE public.games_info OWNER TO freecodecamp;

--
-- Name: games_info_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_info_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_info_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_info_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_info_game_id_seq OWNED BY public.games_info.game_id;


--
-- Name: games_info game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games_info ALTER COLUMN game_id SET DEFAULT nextval('public.games_info_game_id_seq'::regclass);


--
-- Data for Name: games_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games_info VALUES (16, 'user_1665881250920', 766);
INSERT INTO public.games_info VALUES (17, 'user_1665881250920', 409);
INSERT INTO public.games_info VALUES (18, 'user_1665881250919', 997);
INSERT INTO public.games_info VALUES (19, 'user_1665881250919', 269);
INSERT INTO public.games_info VALUES (20, 'user_1665881250920', 802);
INSERT INTO public.games_info VALUES (21, 'user_1665881250920', 491);
INSERT INTO public.games_info VALUES (22, 'user_1665881250920', 151);
INSERT INTO public.games_info VALUES (23, 'Alin', 6);
INSERT INTO public.games_info VALUES (24, 'user_1665881345978', 450);
INSERT INTO public.games_info VALUES (25, 'user_1665881345978', 841);
INSERT INTO public.games_info VALUES (26, 'user_1665881345977', 685);
INSERT INTO public.games_info VALUES (27, 'user_1665881345977', 888);
INSERT INTO public.games_info VALUES (28, 'user_1665881345978', 402);
INSERT INTO public.games_info VALUES (29, 'user_1665881345978', 899);
INSERT INTO public.games_info VALUES (30, 'user_1665881345978', 68);


--
-- Name: games_info_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_info_game_id_seq', 30, true);


--
-- Name: games_info games_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games_info
    ADD CONSTRAINT games_info_pkey PRIMARY KEY (game_id);


--
-- PostgreSQL database dump complete
--

