--
-- PostgreSQL database dump
--

\restrict BXXXaZRUbP332XXXr33hDql4duMziNDdayMihP6wlWlGXBhXaKZpw74Tw39cZnl

-- Dumped from database version 17.12 (Debian 17.12-0+deb13u1)
-- Dumped by pg_dump version 17.12 (Debian 17.12-0+deb13u1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: testi; Type: TABLE; Schema: public; Owner: tuukka
--

CREATE TABLE public.testi (
    id integer NOT NULL,
    name character varying(200)
);


ALTER TABLE public.testi OWNER TO tuukka;

--
-- Name: testi_id_seq; Type: SEQUENCE; Schema: public; Owner: tuukka
--

CREATE SEQUENCE public.testi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.testi_id_seq OWNER TO tuukka;

--
-- Name: testi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tuukka
--

ALTER SEQUENCE public.testi_id_seq OWNED BY public.testi.id;


--
-- Name: testi id; Type: DEFAULT; Schema: public; Owner: tuukka
--

ALTER TABLE ONLY public.testi ALTER COLUMN id SET DEFAULT nextval('public.testi_id_seq'::regclass);


--
-- Data for Name: testi; Type: TABLE DATA; Schema: public; Owner: tuukka
--

COPY public.testi (id, name) FROM stdin;
\.


--
-- Name: testi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tuukka
--

SELECT pg_catalog.setval('public.testi_id_seq', 1, false);


--
-- Name: testi testi_pkey; Type: CONSTRAINT; Schema: public; Owner: tuukka
--

ALTER TABLE ONLY public.testi
    ADD CONSTRAINT testi_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict BXXXaZRUbP332XXXr33hDql4duMziNDdayMihP6wlWlGXBhXaKZpw74Tw39cZnl

