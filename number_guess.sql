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
    secret_number integer,
    username character varying(22),
    score integer
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
-- Name: guesses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.guesses (
    guess_id integer NOT NULL,
    game_id integer,
    username character varying(22),
    guess_number integer NOT NULL
);


ALTER TABLE public.guesses OWNER TO freecodecamp;

--
-- Name: guesses_guess_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.guesses_guess_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guesses_guess_id_seq OWNER TO freecodecamp;

--
-- Name: guesses_guess_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.guesses_guess_id_seq OWNED BY public.guesses.guess_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: guesses guess_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses ALTER COLUMN guess_id SET DEFAULT nextval('public.guesses_guess_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 893, 'sam', 10);
INSERT INTO public.games VALUES (2, 320, 'sam', 19);
INSERT INTO public.games VALUES (3, 559, 'user_1689574983576', 560);
INSERT INTO public.games VALUES (4, 973, 'user_1689574983576', 974);
INSERT INTO public.games VALUES (5, 518, 'user_1689574983575', 519);
INSERT INTO public.games VALUES (6, 321, 'user_1689574983575', 322);
INSERT INTO public.games VALUES (7, 58, 'user_1689574983576', 61);
INSERT INTO public.games VALUES (8, 518, 'user_1689574983576', 519);
INSERT INTO public.games VALUES (9, 282, 'user_1689574983576', 283);
INSERT INTO public.games VALUES (10, 424, 'user_1689575614536', 425);
INSERT INTO public.games VALUES (11, 530, 'user_1689575614536', 531);
INSERT INTO public.games VALUES (12, 869, 'user_1689575614535', 870);
INSERT INTO public.games VALUES (13, 551, 'user_1689575614535', 552);
INSERT INTO public.games VALUES (14, 430, 'user_1689575614536', 433);
INSERT INTO public.games VALUES (15, 444, 'user_1689575614536', 445);
INSERT INTO public.games VALUES (16, 550, 'user_1689575614536', 551);
INSERT INTO public.games VALUES (17, 1000, 'user_1689575741942', 1001);
INSERT INTO public.games VALUES (18, 213, 'user_1689575741942', 214);
INSERT INTO public.games VALUES (19, 171, 'user_1689575741941', 172);
INSERT INTO public.games VALUES (20, 79, 'user_1689575741941', 80);
INSERT INTO public.games VALUES (21, 935, 'user_1689575741942', 938);
INSERT INTO public.games VALUES (22, 868, 'user_1689575741942', 869);
INSERT INTO public.games VALUES (23, 642, 'user_1689575741942', 643);
INSERT INTO public.games VALUES (24, 106, 'user_1689575958728', 107);
INSERT INTO public.games VALUES (25, 444, 'user_1689575958727', 445);
INSERT INTO public.games VALUES (26, 320, 'user_1689575958727', 321);
INSERT INTO public.games VALUES (27, 381, 'user_1689575958728', 384);
INSERT INTO public.games VALUES (28, 845, 'user_1689575958728', 846);
INSERT INTO public.games VALUES (29, 676, 'user_1689575958728', 677);
INSERT INTO public.games VALUES (31, 203, 'user_1689576073291', 204);
INSERT INTO public.games VALUES (32, 634, 'user_1689576073291', 635);
INSERT INTO public.games VALUES (33, 195, 'user_1689576073292', 198);
INSERT INTO public.games VALUES (34, 857, 'user_1689576073292', 858);
INSERT INTO public.games VALUES (35, 216, 'user_1689576073292', 217);


--
-- Data for Name: guesses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('user_1689574111646');
INSERT INTO public.users VALUES ('user_1689574111645');
INSERT INTO public.users VALUES ('sam');
INSERT INTO public.users VALUES ('user_1689574983576');
INSERT INTO public.users VALUES ('user_1689574983575');
INSERT INTO public.users VALUES ('user_1689575614536');
INSERT INTO public.users VALUES ('user_1689575614535');
INSERT INTO public.users VALUES ('user_1689575741942');
INSERT INTO public.users VALUES ('user_1689575741941');
INSERT INTO public.users VALUES ('user_1689575958728');
INSERT INTO public.users VALUES ('user_1689575958727');
INSERT INTO public.users VALUES ('user_1689576073291');
INSERT INTO public.users VALUES ('user_1689576073292');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 35, true);


--
-- Name: guesses_guess_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.guesses_guess_id_seq', 1, false);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: guesses guesses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses
    ADD CONSTRAINT guesses_pkey PRIMARY KEY (guess_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);


--
-- Name: games games_username_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_username_fkey FOREIGN KEY (username) REFERENCES public.users(username);


--
-- Name: guesses guesses_game_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses
    ADD CONSTRAINT guesses_game_id_fkey FOREIGN KEY (game_id) REFERENCES public.games(game_id);


--
-- Name: guesses guesses_username_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses
    ADD CONSTRAINT guesses_username_fkey FOREIGN KEY (username) REFERENCES public.users(username);


--
-- PostgreSQL database dump complete
--

