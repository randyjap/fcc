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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    game_id integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    name character varying NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (2018, 'Final', 4, 2, 67, 144, 145);
INSERT INTO public.games VALUES (2018, 'Third Place', 2, 0, 68, 146, 147);
INSERT INTO public.games VALUES (2018, 'Semi-Final', 2, 1, 69, 145, 147);
INSERT INTO public.games VALUES (2018, 'Semi-Final', 1, 0, 70, 144, 146);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 3, 2, 71, 145, 148);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 2, 0, 72, 147, 149);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 2, 1, 73, 146, 150);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 2, 0, 74, 144, 151);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 2, 1, 75, 147, 152);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 1, 0, 76, 149, 153);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 3, 2, 77, 146, 154);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 2, 0, 78, 150, 155);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 2, 1, 79, 145, 156);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 2, 1, 80, 148, 157);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 2, 1, 81, 151, 158);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 4, 3, 82, 144, 159);
INSERT INTO public.games VALUES (2014, 'Final', 1, 0, 83, 160, 159);
INSERT INTO public.games VALUES (2014, 'Third Place', 3, 0, 84, 161, 150);
INSERT INTO public.games VALUES (2014, 'Semi-Final', 1, 0, 85, 159, 161);
INSERT INTO public.games VALUES (2014, 'Semi-Final', 7, 1, 86, 160, 150);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 1, 0, 87, 161, 162);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 1, 0, 88, 159, 146);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 2, 1, 89, 150, 152);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 1, 0, 90, 160, 144);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 1, 91, 150, 163);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 0, 92, 152, 151);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 0, 93, 144, 164);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 1, 94, 160, 165);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 1, 95, 161, 155);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 1, 96, 162, 166);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 1, 0, 97, 159, 153);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 1, 98, 146, 167);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 144);
INSERT INTO public.teams VALUES ('Croatia', 145);
INSERT INTO public.teams VALUES ('Belgium', 146);
INSERT INTO public.teams VALUES ('England', 147);
INSERT INTO public.teams VALUES ('Russia', 148);
INSERT INTO public.teams VALUES ('Sweden', 149);
INSERT INTO public.teams VALUES ('Brazil', 150);
INSERT INTO public.teams VALUES ('Uruguay', 151);
INSERT INTO public.teams VALUES ('Colombia', 152);
INSERT INTO public.teams VALUES ('Switzerland', 153);
INSERT INTO public.teams VALUES ('Japan', 154);
INSERT INTO public.teams VALUES ('Mexico', 155);
INSERT INTO public.teams VALUES ('Denmark', 156);
INSERT INTO public.teams VALUES ('Spain', 157);
INSERT INTO public.teams VALUES ('Portugal', 158);
INSERT INTO public.teams VALUES ('Argentina', 159);
INSERT INTO public.teams VALUES ('Germany', 160);
INSERT INTO public.teams VALUES ('Netherlands', 161);
INSERT INTO public.teams VALUES ('Costa Rica', 162);
INSERT INTO public.teams VALUES ('Chile', 163);
INSERT INTO public.teams VALUES ('Nigeria', 164);
INSERT INTO public.teams VALUES ('Algeria', 165);
INSERT INTO public.teams VALUES ('Greece', 166);
INSERT INTO public.teams VALUES ('United States', 167);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 98, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 167, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

