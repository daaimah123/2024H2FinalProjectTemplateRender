--
-- PostgreSQL database dump
--

-- Dumped from database version 14.11 (Homebrew)
-- Dumped by pg_dump version 14.11 (Homebrew)

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
-- Name: students; Type: TABLE; Schema: public; Owner: daaimahtibrey
--

CREATE TABLE public.students (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    is_current boolean
);


ALTER TABLE public.students OWNER TO daaimahtibrey;

--
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: daaimahtibrey
--

CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_id_seq OWNER TO daaimahtibrey;

--
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: daaimahtibrey
--

ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;


--
-- Name: students id; Type: DEFAULT; Schema: public; Owner: daaimahtibrey
--

ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: daaimahtibrey
--

INSERT INTO public.students (id, firstname, lastname, is_current) VALUES (1, 'Alice', 'Smith', true);
INSERT INTO public.students (id, firstname, lastname, is_current) VALUES (2, 'Bob', 'Johnson', false);
INSERT INTO public.students (id, firstname, lastname, is_current) VALUES (3, 'Charlie', 'Brown', true);
INSERT INTO public.students (id, firstname, lastname, is_current) VALUES (4, 'test_first', 'test_last', NULL);
INSERT INTO public.students (id, firstname, lastname, is_current) VALUES (5, 'another_first', 'another_last', NULL);


--
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: daaimahtibrey
--

SELECT pg_catalog.setval('public.students_id_seq', 5, true);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: daaimahtibrey
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

