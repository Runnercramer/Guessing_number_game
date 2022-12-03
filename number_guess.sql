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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    tries integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(40) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 3);
INSERT INTO public.games VALUES (2, 1, 5);
INSERT INTO public.games VALUES (3, 2, 10);
INSERT INTO public.games VALUES (4, 2, 4);
INSERT INTO public.games VALUES (5, 3, 20);
INSERT INTO public.games VALUES (6, 3, 14);
INSERT INTO public.games VALUES (7, 1, 7);
INSERT INTO public.games VALUES (8, 2, 8);
INSERT INTO public.games VALUES (9, 3, 6);
INSERT INTO public.games VALUES (10, 5, 8);
INSERT INTO public.games VALUES (11, 4, 10);
INSERT INTO public.games VALUES (12, 4, 11);
INSERT INTO public.games VALUES (13, 6, 12);
INSERT INTO public.games VALUES (14, 3, 11);
INSERT INTO public.games VALUES (15, 7, 238);
INSERT INTO public.games VALUES (16, 7, 985);
INSERT INTO public.games VALUES (17, 8, 302);
INSERT INTO public.games VALUES (18, 8, 861);
INSERT INTO public.games VALUES (19, 7, 808);
INSERT INTO public.games VALUES (20, 7, 98);
INSERT INTO public.games VALUES (21, 7, 277);
INSERT INTO public.games VALUES (22, 9, 634);
INSERT INTO public.games VALUES (23, 9, 222);
INSERT INTO public.games VALUES (24, 10, 423);
INSERT INTO public.games VALUES (25, 10, 64);
INSERT INTO public.games VALUES (26, 9, 936);
INSERT INTO public.games VALUES (27, 9, 84);
INSERT INTO public.games VALUES (28, 9, 417);
INSERT INTO public.games VALUES (29, 11, 744);
INSERT INTO public.games VALUES (30, 11, 324);
INSERT INTO public.games VALUES (31, 12, 522);
INSERT INTO public.games VALUES (32, 12, 328);
INSERT INTO public.games VALUES (33, 11, 797);
INSERT INTO public.games VALUES (34, 11, 711);
INSERT INTO public.games VALUES (35, 11, 958);
INSERT INTO public.games VALUES (36, 13, 154);
INSERT INTO public.games VALUES (37, 13, 272);
INSERT INTO public.games VALUES (38, 14, 507);
INSERT INTO public.games VALUES (39, 14, 878);
INSERT INTO public.games VALUES (40, 13, 696);
INSERT INTO public.games VALUES (41, 13, 126);
INSERT INTO public.games VALUES (42, 13, 440);
INSERT INTO public.games VALUES (43, 17, 37);
INSERT INTO public.games VALUES (44, 17, 694);
INSERT INTO public.games VALUES (45, 18, 220);
INSERT INTO public.games VALUES (46, 18, 952);
INSERT INTO public.games VALUES (47, 17, 147);
INSERT INTO public.games VALUES (48, 17, 269);
INSERT INTO public.games VALUES (49, 17, 750);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'bluesky');
INSERT INTO public.users VALUES (2, 'blue');
INSERT INTO public.users VALUES (3, 'sri');
INSERT INTO public.users VALUES (4, 'hrtnisri2016');
INSERT INTO public.users VALUES (5, 'koala');
INSERT INTO public.users VALUES (6, 'young_koala');
INSERT INTO public.users VALUES (7, 'user_1664756488571');
INSERT INTO public.users VALUES (8, 'user_1664756488570');
INSERT INTO public.users VALUES (9, 'user_1664756570352');
INSERT INTO public.users VALUES (10, 'user_1664756570351');
INSERT INTO public.users VALUES (11, 'user_1664756799778');
INSERT INTO public.users VALUES (12, 'user_1664756799777');
INSERT INTO public.users VALUES (13, 'user_1664756858586');
INSERT INTO public.users VALUES (14, 'user_1664756858585');
INSERT INTO public.users VALUES (15, 'user_1670039992721');
INSERT INTO public.users VALUES (16, 'user_1670039992720');
INSERT INTO public.users VALUES (17, 'user_1670040049382');
INSERT INTO public.users VALUES (18, 'user_1670040049381');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 49, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 18, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (name);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

