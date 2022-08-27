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
SET default_with_oids = false;

CREATE TABLE public.user (
    id serial primary key,
    username character varying,
    mail character varying,
    password character varying,
    last_connection timestamp without time zone
);
ALTER TABLE public.user OWNER TO postgres;

CREATE TABLE public.session (
    id serial primary key,
    user_id int,
    token character varying,
    valid bool
);
ALTER TABLE public.session OWNER TO postgres;