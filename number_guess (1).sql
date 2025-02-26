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
    user_id integer,
    number_of_guesses integer,
    secret_number integer
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
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    user_id integer NOT NULL,
    username character varying(30) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: username_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.username_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.username_user_id_seq OWNER TO freecodecamp;

--
-- Name: username_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.username_user_id_seq OWNED BY public.players.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN user_id SET DEFAULT nextval('public.username_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 297, 296);
INSERT INTO public.games VALUES (2, 1, 889, 888);
INSERT INTO public.games VALUES (3, 2, 804, 803);
INSERT INTO public.games VALUES (4, 2, 987, 986);
INSERT INTO public.games VALUES (5, 1, 742, 739);
INSERT INTO public.games VALUES (6, 1, 806, 804);
INSERT INTO public.games VALUES (7, 1, 888, 887);
INSERT INTO public.games VALUES (8, 3, 15, 14);
INSERT INTO public.games VALUES (9, 3, 534, 533);
INSERT INTO public.games VALUES (10, 4, 798, 797);
INSERT INTO public.games VALUES (11, 4, 657, 656);
INSERT INTO public.games VALUES (12, 3, 67, 64);
INSERT INTO public.games VALUES (13, 3, 79, 77);
INSERT INTO public.games VALUES (14, 3, 84, 83);
INSERT INTO public.games VALUES (15, 5, 229, 228);
INSERT INTO public.games VALUES (16, 5, 617, 616);
INSERT INTO public.games VALUES (17, 6, 586, 585);
INSERT INTO public.games VALUES (18, 6, 897, 896);
INSERT INTO public.games VALUES (19, 5, 342, 339);
INSERT INTO public.games VALUES (20, 5, 811, 809);
INSERT INTO public.games VALUES (21, 5, 854, 853);
INSERT INTO public.games VALUES (22, 7, 606, 605);
INSERT INTO public.games VALUES (23, 7, 930, 929);
INSERT INTO public.games VALUES (24, 8, 616, 615);
INSERT INTO public.games VALUES (25, 8, 169, 168);
INSERT INTO public.games VALUES (26, 7, 399, 396);
INSERT INTO public.games VALUES (27, 7, 140, 138);
INSERT INTO public.games VALUES (28, 7, 729, 728);
INSERT INTO public.games VALUES (29, 9, 464, 463);
INSERT INTO public.games VALUES (30, 9, 633, 632);
INSERT INTO public.games VALUES (31, 10, 643, 642);
INSERT INTO public.games VALUES (32, 10, 156, 155);
INSERT INTO public.games VALUES (33, 9, 841, 838);
INSERT INTO public.games VALUES (34, 9, 992, 990);
INSERT INTO public.games VALUES (35, 9, 350, 349);
INSERT INTO public.games VALUES (36, 11, 519, 518);
INSERT INTO public.games VALUES (37, 11, 353, 352);
INSERT INTO public.games VALUES (38, 12, 9, 8);
INSERT INTO public.games VALUES (39, 12, 452, 451);
INSERT INTO public.games VALUES (40, 11, 355, 352);
INSERT INTO public.games VALUES (41, 11, 308, 306);
INSERT INTO public.games VALUES (42, 11, 306, 305);
INSERT INTO public.games VALUES (43, 13, 64, 63);
INSERT INTO public.games VALUES (44, 13, 709, 708);
INSERT INTO public.games VALUES (45, 14, 821, 820);
INSERT INTO public.games VALUES (46, 14, 517, 516);
INSERT INTO public.games VALUES (47, 13, 142, 139);
INSERT INTO public.games VALUES (48, 13, 514, 512);
INSERT INTO public.games VALUES (49, 13, 421, 420);
INSERT INTO public.games VALUES (50, 15, 992, 991);
INSERT INTO public.games VALUES (51, 15, 446, 445);
INSERT INTO public.games VALUES (52, 16, 519, 518);
INSERT INTO public.games VALUES (53, 16, 4, 3);
INSERT INTO public.games VALUES (54, 15, 412, 409);
INSERT INTO public.games VALUES (55, 15, 954, 952);
INSERT INTO public.games VALUES (56, 15, 742, 741);
INSERT INTO public.games VALUES (57, 17, 463, 462);
INSERT INTO public.games VALUES (58, 17, 76, 75);
INSERT INTO public.games VALUES (59, 18, 758, 757);
INSERT INTO public.games VALUES (60, 18, 650, 649);
INSERT INTO public.games VALUES (61, 17, 685, 682);
INSERT INTO public.games VALUES (62, 17, 757, 755);
INSERT INTO public.games VALUES (63, 17, 762, 761);
INSERT INTO public.games VALUES (64, 19, 375, 374);
INSERT INTO public.games VALUES (65, 19, 287, 286);
INSERT INTO public.games VALUES (66, 20, 89, 88);
INSERT INTO public.games VALUES (67, 20, 32, 31);
INSERT INTO public.games VALUES (68, 19, 87, 84);
INSERT INTO public.games VALUES (69, 19, 205, 203);
INSERT INTO public.games VALUES (70, 19, 105, 104);
INSERT INTO public.games VALUES (71, 21, 585, 584);
INSERT INTO public.games VALUES (72, 21, 218, 217);
INSERT INTO public.games VALUES (73, 22, 527, 526);
INSERT INTO public.games VALUES (74, 22, 541, 540);
INSERT INTO public.games VALUES (75, 21, 330, 327);
INSERT INTO public.games VALUES (76, 21, 211, 209);
INSERT INTO public.games VALUES (77, 21, 245, 244);
INSERT INTO public.games VALUES (78, 23, 95, 94);
INSERT INTO public.games VALUES (79, 23, 989, 988);
INSERT INTO public.games VALUES (80, 24, 652, 651);
INSERT INTO public.games VALUES (81, 24, 549, 548);
INSERT INTO public.games VALUES (82, 23, 396, 393);
INSERT INTO public.games VALUES (83, 23, 438, 436);
INSERT INTO public.games VALUES (84, 23, 805, 804);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (1, 'user_1740593347815');
INSERT INTO public.players VALUES (2, 'user_1740593347814');
INSERT INTO public.players VALUES (3, 'user_1740593391349');
INSERT INTO public.players VALUES (4, 'user_1740593391348');
INSERT INTO public.players VALUES (5, 'user_1740593525203');
INSERT INTO public.players VALUES (6, 'user_1740593525202');
INSERT INTO public.players VALUES (7, 'user_1740593705991');
INSERT INTO public.players VALUES (8, 'user_1740593705990');
INSERT INTO public.players VALUES (9, 'user_1740593776927');
INSERT INTO public.players VALUES (10, 'user_1740593776926');
INSERT INTO public.players VALUES (11, 'user_1740593814805');
INSERT INTO public.players VALUES (12, 'user_1740593814804');
INSERT INTO public.players VALUES (13, 'user_1740593827197');
INSERT INTO public.players VALUES (14, 'user_1740593827196');
INSERT INTO public.players VALUES (15, 'user_1740593988475');
INSERT INTO public.players VALUES (16, 'user_1740593988474');
INSERT INTO public.players VALUES (17, 'user_1740594002555');
INSERT INTO public.players VALUES (18, 'user_1740594002554');
INSERT INTO public.players VALUES (19, 'user_1740594052385');
INSERT INTO public.players VALUES (20, 'user_1740594052384');
INSERT INTO public.players VALUES (21, 'user_1740594205655');
INSERT INTO public.players VALUES (22, 'user_1740594205654');
INSERT INTO public.players VALUES (23, 'user_1740594212675');
INSERT INTO public.players VALUES (24, 'user_1740594212674');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 84, true);


--
-- Name: username_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.username_user_id_seq', 24, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players username_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT username_pkey PRIMARY KEY (user_id);


--
-- Name: players username_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT username_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.players(user_id);


--
-- PostgreSQL database dump complete
--

