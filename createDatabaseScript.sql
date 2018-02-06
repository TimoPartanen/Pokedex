--
-- PostgreSQL database dump
--

-- Dumped from database version 10.1
-- Dumped by pg_dump version 10.1

-- Started on 2018-01-23 13:39:28

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2807 (class 1262 OID 16393)
-- Name: pokedexDB; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "pokedexDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Finnish_Finland.1252' LC_CTYPE = 'Finnish_Finland.1252';


ALTER DATABASE "pokedexDB" OWNER TO postgres;

\connect "pokedexDB"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2808 (class 1262 OID 16393)
-- Dependencies: 2807
-- Name: pokedexDB; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE "pokedexDB" IS 'Kaikkien pokemonien tiedot';


--
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2810 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 198 (class 1259 OID 16550)
-- Name: collection; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE collection (
    "ID" bigint NOT NULL,
    "POKEMON" character varying(30),
    "TYPE1" character varying(16),
    "TYPE2" character varying(16),
    "GENDER" character varying(16),
    "LEVEL" integer
);


ALTER TABLE collection OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16548)
-- Name: collection_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE collection_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE collection_id_seq OWNER TO postgres;

--
-- TOC entry 2811 (class 0 OID 0)
-- Dependencies: 197
-- Name: collection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE collection_id_seq OWNED BY collection."ID";


--
-- TOC entry 196 (class 1259 OID 16524)
-- Name: pokedex; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE pokedex (
    "ID" integer NOT NULL,
    "POKEMON" character varying(11),
    "TYPE_1" character varying(8),
    "TYPE_2" character varying(8),
    "ABILITIES_1" character varying(14),
    "ABILITIES_2" character varying(12),
    "GENDER" character varying(12),
    "EVOLUTION_DETAILS" character varying(33),
    "HP" integer,
    "ATK" integer,
    "DEF" integer,
    "SPATK" integer,
    "SPDEF" integer,
    "SPEED" integer,
    "TOTAL" integer
);


ALTER TABLE pokedex OWNER TO postgres;

--
-- TOC entry 2674 (class 2604 OID 16553)
-- Name: collection ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY collection ALTER COLUMN "ID" SET DEFAULT nextval('collection_id_seq'::regclass);


--
-- TOC entry 2802 (class 0 OID 16550)
-- Dependencies: 198
-- Data for Name: collection; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO collection ("ID", "POKEMON", "TYPE1", "TYPE2", "GENDER", "LEVEL") VALUES (10, 'Butterfree', 'Bug', 'Flying', 'Female', 65);
INSERT INTO collection ("ID", "POKEMON", "TYPE1", "TYPE2", "GENDER", "LEVEL") VALUES (11, 'Caterpie', 'Bug', '-----', 'Male', 4);
INSERT INTO collection ("ID", "POKEMON", "TYPE1", "TYPE2", "GENDER", "LEVEL") VALUES (12, 'Bulbasaur', 'Grass', 'Poison', 'Male', 1);
INSERT INTO collection ("ID", "POKEMON", "TYPE1", "TYPE2", "GENDER", "LEVEL") VALUES (14, 'Charizard', 'Fire', 'Flying', 'Male', 94);
INSERT INTO collection ("ID", "POKEMON", "TYPE1", "TYPE2", "GENDER", "LEVEL") VALUES (15, 'Metapod', 'Bug', '-----', 'Female', 2);


--
-- TOC entry 2800 (class 0 OID 16524)
-- Dependencies: 196
-- Data for Name: pokedex; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (106, 'Hitmonlee', 'Fighting', '-----', 'Limber', 'Reckless', 'Male', '-----', 50, 120, 53, 35, 110, 87, 455);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (33, 'Nidorino', 'Poison', '-----', 'Poison Point', 'Rivalry', 'Male', 'Moon Stone', 61, 72, 57, 55, 55, 65, 365);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (34, 'Nidoking', 'Poison', 'Ground', 'Poison Point', 'Rivalry', 'Male', '-----', 81, 102, 77, 85, 75, 85, 505);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (30, 'Nidorina', 'Poison', '-----', 'Poison Point', 'Rivalry', 'Female', 'Moon Stone', 70, 62, 67, 55, 55, 56, 365);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (31, 'Nidoqueen', 'Poison', 'Ground', 'Poison Point', 'Rivalry', 'Female', '-----', 90, 92, 87, 75, 85, 76, 505);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (29, 'Nidoran', 'Poison', '-----', 'Poison Point', 'Rivalry', 'Female', 'Level Up - 16', 55, 47, 52, 40, 40, 41, 275);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (32, 'Nidoran', 'Poison', '-----', 'Poison Point', 'Rivalry', 'Male', 'Level Up - 16', 46, 57, 40, 40, 40, 50, 273);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (1, 'Bulbasaur', 'Grass', 'Poison', 'Overgrow', '-----', 'Male/Female', 'Level Up - 16', 45, 49, 49, 65, 65, 45, 318);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (2, 'Ivysaur', 'Grass', 'Poison', 'Overgrow', '-----', 'Male/Female', 'Level Up - 32', 60, 62, 63, 80, 80, 60, 405);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (3, 'Venusaur', 'Grass', 'Poison', 'Overgrow', '-----', 'Male/Female', '-----', 80, 82, 83, 100, 100, 80, 525);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (4, 'Charmander', 'Fire', '-----', 'Blaze', '-----', 'Male/Female', 'Level Up - 16', 39, 52, 43, 60, 50, 65, 309);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (5, 'Charmeleon', 'Fire', '-----', 'Blaze', '-----', 'Male/Female', 'Level Up - 36', 58, 64, 58, 80, 65, 80, 405);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (6, 'Charizard', 'Fire', 'Flying', 'Blaze', '-----', 'Male/Female', '-----', 78, 84, 78, 109, 85, 100, 534);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (7, 'Squirtle', 'Water', '-----', 'Torrent', '-----', 'Male/Female', 'Level Up - 16', 44, 48, 65, 50, 64, 43, 314);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (8, 'Wartortle', 'Water', '-----', 'Torrent', '-----', 'Male/Female', 'Level Up - 36', 59, 63, 80, 65, 80, 58, 405);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (9, 'Blastoise', 'Water', '-----', 'Torrent', '-----', 'Male/Female', '-----', 79, 83, 100, 85, 105, 78, 530);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (10, 'Caterpie', 'Bug', '-----', 'Shield Dust', '-----', 'Male/Female', 'Level Up - 7', 45, 30, 35, 20, 20, 45, 195);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (11, 'Metapod', 'Bug', '-----', 'Shed Skin', '-----', 'Male/Female', 'Level Up - 10', 50, 20, 55, 25, 25, 30, 205);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (12, 'Butterfree', 'Bug', 'Flying', 'Compoundeyes', '-----', 'Male/Female', '-----', 60, 45, 50, 90, 80, 70, 395);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (13, 'Weedle', 'Bug', 'Poison', 'Shield Dust', '-----', 'Male/Female', 'Level Up - 7', 40, 35, 30, 20, 20, 50, 195);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (14, 'Kakuna', 'Bug', 'Poison', 'Shed Skin', '-----', 'Male/Female', 'Level Up - 10', 45, 25, 50, 25, 25, 35, 205);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (15, 'Beedrill', 'Bug', 'Poison', 'Swarm', '-----', 'Male/Female', '-----', 65, 90, 40, 45, 80, 75, 395);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (16, 'Pidgey', 'Normal', 'Flying', 'Keen Eye', 'Tangled Feet', 'Male/Female', 'Level Up - 18', 40, 45, 40, 35, 35, 56, 251);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (17, 'Pidgeotto', 'Normal', 'Flying', 'Keen Eye', 'Tangled Feet', 'Male/Female', 'Level Up - 36', 63, 60, 55, 50, 50, 71, 349);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (18, 'Pidgeot', 'Normal', 'Flying', 'Keen Eye', 'Tangled Feet', 'Male/Female', '-----', 83, 80, 75, 70, 70, 101, 479);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (19, 'Rattata', 'Normal', '-----', 'Run Away', 'Guts', 'Male/Female', 'Level Up - 20', 30, 56, 35, 25, 35, 72, 253);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (20, 'Raticate', 'Normal', '-----', 'Run Away', 'Guts', 'Male/Female', '-----', 55, 81, 60, 50, 70, 97, 413);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (21, 'Spearow', 'Normal', 'Flying', 'Keen Eye', '-----', 'Male/Female', 'Level Up - 20', 40, 60, 30, 31, 31, 70, 262);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (22, 'Fearow', 'Normal', 'Flying', 'Keen Eye', '-----', 'Male/Female', '-----', 65, 90, 65, 61, 61, 100, 442);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (23, 'Ekans', 'Poison', '-----', 'Intimidate', 'Shed Skin', 'Male/Female', 'Level Up - 22', 35, 60, 44, 40, 54, 55, 288);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (24, 'Arbok', 'Poison', '-----', 'Intimidate', 'Shed Skin', 'Male/Female', '-----', 60, 85, 69, 65, 79, 80, 438);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (25, 'Pikachu', 'Electric', '-----', 'Static', '-----', 'Male/Female', 'Thunderstone', 35, 55, 40, 50, 50, 90, 320);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (26, 'Raichu', 'Electric', '-----', 'Static', '-----', 'Male/Female', '-----', 60, 90, 55, 90, 80, 110, 485);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (27, 'Sandshrew', 'Ground', '-----', 'Sand Veil', '-----', 'Male/Female', 'Level Up - 22', 50, 75, 85, 20, 30, 40, 300);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (28, 'Sandslash', 'Ground', '-----', 'Sand Veil', '-----', 'Male/Female', '-----', 75, 100, 110, 45, 55, 65, 450);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (35, 'Clefairy', 'Fairy', '-----', 'Cute Charm', 'Magic Guard', 'Male/Female', 'Moon Stone', 70, 45, 48, 60, 65, 35, 323);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (36, 'Clefable', 'Fairy', '-----', 'Cute Charm', 'Magic Guard', 'Male/Female', '-----', 95, 70, 73, 95, 90, 60, 483);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (37, 'Vulpix', 'Fire', '-----', 'Flash Fire', '-----', 'Male/Female', 'Fire Stone', 38, 41, 40, 50, 65, 65, 299);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (38, 'Ninetales', 'Fire', '-----', 'Flash Fire', '-----', 'Male/Female', '-----', 73, 76, 75, 81, 100, 100, 505);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (39, 'Jigglypuff', 'Normal', 'Fairy', 'Cute Charm', 'Competitive', 'Male/Female', 'Moon Stone', 115, 45, 20, 45, 25, 20, 270);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (40, 'Wigglytuff', 'Normal', 'Fairy', 'Cute Charm', 'Competitive', 'Male/Female', '-----', 140, 70, 45, 85, 50, 45, 435);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (41, 'Zubat', 'Poison', 'Flying', 'Inner Focus', '-----', 'Male/Female', 'Level Up - 22', 40, 45, 35, 30, 40, 55, 245);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (42, 'Golbat', 'Poison', 'Flying', 'Inner Focus', '-----', 'Male/Female', 'Level Up - Friendship', 75, 80, 70, 65, 75, 90, 455);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (43, 'Oddish', 'Grass', 'Poison', 'Chlorophyll', '-----', 'Male/Female', 'Level Up - 21', 45, 50, 55, 75, 65, 30, 320);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (44, 'Gloom', 'Grass', 'Poison', 'Chlorophyll', '-----', 'Male/Female', 'Leaf Stone', 60, 65, 70, 85, 75, 40, 395);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (45, 'Vileplume', 'Grass', 'Poison', 'Chlorophyll', '-----', 'Male/Female', '-----', 75, 80, 85, 110, 90, 50, 490);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (46, 'Paras', 'Bug', 'Grass', 'Effect Spore', 'Dry Skin', 'Male/Female', 'Level Up - 24', 35, 70, 55, 45, 55, 25, 285);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (47, 'Parasect', 'Bug', 'Grass', 'Effect Spore', 'Dry Skin', 'Male/Female', '-----', 60, 95, 80, 60, 80, 30, 405);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (48, 'Venonat', 'Bug', 'Poison', 'Compoundeyes', 'Tinted Lens', 'Male/Female', 'Level Up - 31', 60, 55, 50, 40, 55, 45, 305);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (49, 'Venomoth', 'Bug', 'Poison', 'Shield Dust', 'Tinted Lens', 'Male/Female', '-----', 70, 65, 60, 90, 75, 90, 450);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (50, 'Diglett', 'Ground', '-----', 'Sand Veil', 'Arena Trap', 'Male/Female', 'Level Up - 26', 10, 55, 25, 35, 45, 95, 265);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (51, 'Dugtrio', 'Ground', '-----', 'Sand Veil', 'Arena Trap', 'Male/Female', '-----', 35, 80, 50, 50, 70, 120, 405);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (52, 'Meowth', 'Normal', '-----', 'Pickup', 'Technician', 'Male/Female', 'Level Up - 28', 40, 45, 35, 40, 40, 90, 290);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (53, 'Persian', 'Normal', '-----', 'Limber', 'Technician', 'Male/Female', '-----', 65, 70, 60, 65, 65, 115, 440);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (54, 'Psyduck', 'Water', '-----', 'Damp', 'Cloud Nine', 'Male/Female', 'Level Up - 33', 50, 52, 48, 65, 50, 55, 320);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (55, 'Golduck', 'Water', '-----', 'Damp', 'Cloud Nine', 'Male/Female', '-----', 80, 82, 78, 95, 80, 85, 500);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (56, 'Mankey', 'Fighting', '-----', 'Vital Spirit', 'Anger Point', 'Male/Female', 'Level Up - 28', 40, 80, 35, 35, 45, 70, 305);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (57, 'Primeape', 'Fighting', '-----', 'Vital Spirit', 'Anger Point', 'Male/Female', '-----', 65, 105, 60, 60, 70, 95, 455);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (58, 'Growlithe', 'Fire', '-----', 'Intimidate', 'Flash Fire', 'Male/Female', 'Fire Stone', 55, 70, 45, 70, 50, 60, 350);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (59, 'Arcanine', 'Fire', '-----', 'Intimidate', 'Flash Fire', 'Male/Female', '-----', 90, 110, 80, 100, 80, 95, 555);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (60, 'Poliwag', 'Water', '-----', 'Water Absorb', 'Damp', 'Male/Female', 'Level Up - 25', 40, 50, 40, 40, 40, 90, 300);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (61, 'Poliwhirl', 'Water', '-----', 'Water Absorb', 'Damp', 'Male/Female', 'Water Stone', 65, 65, 65, 50, 50, 90, 385);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (62, 'Poliwrath', 'Water', 'Fighting', 'Water Absorb', 'Damp', 'Male/Female', '-----', 90, 95, 95, 70, 90, 70, 510);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (63, 'Abra', 'Psychic', '-----', 'Synchronize', 'Inner Focus', 'Male/Female', 'Level Up - 16', 25, 20, 15, 105, 55, 90, 310);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (64, 'Kadabra', 'Psychic', '-----', 'Synchronize', 'Inner Focus', 'Male/Female', 'Trade', 40, 35, 30, 120, 70, 105, 400);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (65, 'Alakazam', 'Psychic', '-----', 'Synchronize', 'Inner Focus', 'Male/Female', '-----', 55, 50, 45, 135, 95, 120, 500);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (66, 'Machop', 'Fighting', '-----', 'Guts', 'No Guard', 'Male/Female', 'Level Up - 28', 70, 80, 50, 35, 35, 35, 305);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (67, 'Machoke', 'Fighting', '-----', 'Guts', 'No Guard', 'Male/Female', 'Trade', 80, 100, 70, 50, 60, 45, 405);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (68, 'Machamp', 'Fighting', '-----', 'Guts', 'No Guard', 'Male/Female', '-----', 90, 130, 80, 65, 85, 55, 505);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (69, 'Bellsprout', 'Grass', 'Poison', 'Chlorophyll', '-----', 'Male/Female', 'Level Up - 21', 50, 75, 35, 70, 30, 40, 300);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (70, 'Weepinbell', 'Grass', 'Poison', 'Chlorophyll', '-----', 'Male/Female', 'Leaf Stone', 65, 90, 50, 85, 45, 55, 390);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (71, 'Victreebel', 'Grass', 'Poison', 'Chlorophyll', '-----', 'Male/Female', '-----', 80, 105, 65, 100, 70, 70, 490);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (72, 'Tentacool', 'Water', 'Poison', 'Clear Body', 'Liquid Ooze', 'Male/Female', 'Level Up - 30', 40, 40, 35, 50, 100, 70, 335);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (73, 'Tentacruel', 'Water', 'Poison', 'Clear Body', 'Liquid Ooze', 'Male/Female', '-----', 80, 70, 65, 80, 120, 100, 515);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (74, 'Geodude', 'Rock', 'Ground', 'Rock Head', 'Sturdy', 'Male/Female', 'Level Up - 25', 40, 80, 100, 30, 30, 20, 300);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (75, 'Graveler', 'Rock', 'Ground', 'Rock Head', 'Sturdy', 'Male/Female', 'Trade', 55, 95, 115, 45, 45, 35, 390);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (76, 'Golem', 'Rock', 'Ground', 'Rock Head', 'Sturdy', 'Male/Female', '-----', 80, 120, 130, 55, 65, 45, 495);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (77, 'Ponyta', 'Fire', '-----', 'Run Away', 'Flash Fire', 'Male/Female', 'Level Up - 40', 50, 85, 55, 65, 65, 90, 410);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (78, 'Rapidash', 'Fire', '-----', 'Run Away', 'Flash Fire', 'Male/Female', '-----', 65, 100, 70, 80, 80, 105, 500);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (79, 'Slowpoke', 'Water', 'Psychic', 'Oblivious', 'Own Tempo', 'Male/Female', 'Level Up - 37', 90, 65, 65, 40, 40, 15, 315);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (80, 'Slowbro', 'Water', 'Psychic', 'Oblivious', 'Own Tempo', 'Male/Female', '-----', 95, 75, 110, 100, 80, 30, 490);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (81, 'Magnemite', 'Electric', 'Steel', 'Magnet Pull', 'Sturdy', 'Male/Female', 'Level Up - 30', 25, 35, 70, 95, 55, 45, 325);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (82, 'Magneton', 'Electric', 'Steel', 'Magnet Pull', 'Sturdy', 'Male/Female', 'Level Up - Electric Rock', 50, 60, 95, 120, 70, 70, 465);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (83, 'Farfetch''d', 'Normal', 'Flying', 'Keen Eye', 'Inner Focus', 'Male/Female', '-----', 52, 65, 55, 58, 62, 60, 352);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (84, 'Doduo', 'Normal', 'Flying', 'Run Away', 'Early Bird', 'Male/Female', 'Level Up - 31', 35, 85, 45, 35, 35, 75, 310);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (85, 'Dodrio', 'Normal', 'Flying', 'Run Away', 'Early Bird', 'Male/Female', '-----', 60, 110, 70, 60, 60, 100, 460);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (86, 'Seel', 'Water', '-----', 'Thick Fat', 'Hydration', 'Male/Female', 'Level Up - 34', 65, 45, 55, 45, 70, 45, 325);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (87, 'Dewgong', 'Water', 'Ice', 'Thick Fat', 'Hydration', 'Male/Female', '-----', 90, 70, 80, 70, 95, 70, 475);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (88, 'Grimer', 'Poison', '-----', 'Stench', 'Sticky Hold', 'Male/Female', 'Level Up - 38', 80, 80, 50, 40, 50, 25, 325);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (89, 'Muk', 'Poison', '-----', 'Stench', 'Sticky Hold', 'Male/Female', '-----', 105, 105, 75, 65, 100, 50, 500);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (90, 'Shellder', 'Water', '-----', 'Shell Armor', 'Skill Link', 'Male/Female', 'Water Stone', 30, 65, 100, 45, 25, 40, 305);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (91, 'Cloyster', 'Water', 'Ice', 'Shell Armor', 'Skill Link', 'Male/Female', '-----', 50, 95, 180, 85, 45, 70, 525);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (92, 'Gastly', 'Ghost', 'Poison', 'Levitate', '-----', 'Male/Female', 'Level Up - 25', 30, 35, 30, 100, 35, 80, 310);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (93, 'Haunter', 'Ghost', 'Poison', 'Levitate', '-----', 'Male/Female', 'Trade', 45, 50, 45, 115, 55, 95, 405);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (94, 'Gengar', 'Ghost', 'Poison', 'Levitate', '-----', 'Male/Female', '-----', 60, 65, 60, 130, 75, 110, 500);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (95, 'Onix', 'Rock', 'Ground', 'Rock Head', 'Sturdy', 'Male/Female', 'Trade - w/Metal Coat', 35, 45, 160, 30, 45, 70, 385);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (96, 'Drowzee', 'Psychic', '-----', 'Insomnia', 'Forewarn', 'Male/Female', 'Level Up - 28', 60, 48, 45, 43, 90, 42, 328);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (97, 'Hypno', 'Psychic', '-----', 'Insomnia', 'Forewarn', 'Male/Female', '-----', 85, 73, 70, 73, 115, 67, 483);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (98, 'Krabby', 'Water', '-----', 'Hyper Cutter', 'Shell Armor', 'Male/Female', 'Level Up - 28', 30, 105, 90, 25, 25, 50, 325);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (99, 'Kingler', 'Water', '-----', 'Hyper Cutter', 'Shell Armor', 'Male/Female', '-----', 55, 130, 115, 50, 50, 75, 475);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (100, 'Voltorb', 'Electric', '-----', 'Soundproof', 'Static', 'Male/Female', 'Level Up - 30', 40, 30, 50, 55, 55, 100, 330);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (101, 'Electrode', 'Electric', '-----', 'Soundproof', 'Static', 'Male/Female', '-----', 60, 50, 70, 80, 80, 140, 480);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (102, 'Exeggcute', 'Grass', 'Psychic', 'Chlorophyll', '-----', 'Male/Female', 'Leaf Stone', 60, 40, 80, 60, 45, 40, 325);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (103, 'Exeggutor', 'Grass', 'Psychic', 'Chlorophyll', '-----', 'Male/Female', '-----', 95, 95, 85, 125, 65, 55, 520);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (104, 'Cubone', 'Ground', '-----', 'Rock Head', 'Lightningrod', 'Male/Female', 'Level Up - 28', 50, 50, 95, 40, 50, 35, 320);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (105, 'Marowak', 'Ground', '-----', 'Rock Head', 'Lightningrod', 'Male/Female', '-----', 60, 80, 110, 50, 80, 45, 425);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (108, 'Lickitung', 'Normal', '-----', 'Own Tempo', 'Oblivious', 'Male/Female', 'Level Up - w/Rollout', 90, 55, 75, 60, 75, 30, 385);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (109, 'Koffing', 'Poison', '-----', 'Levitate', '-----', 'Male/Female', 'Level Up - 35', 40, 65, 95, 60, 45, 35, 340);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (110, 'Weezing', 'Poison', '-----', 'Levitate', '-----', 'Male/Female', '-----', 65, 90, 120, 85, 70, 60, 490);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (107, 'Hitmonchan', 'Fighting', '-----', 'Keen Eye', 'Iron Fist', 'Male', '-----', 50, 105, 79, 35, 110, 76, 455);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (111, 'Rhyhorn', 'Ground', 'Rock', 'Lightningrod', 'Rock Head', 'Male/Female', 'Level Up - 42', 80, 85, 95, 30, 30, 25, 345);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (112, 'Rhydon', 'Ground', 'Rock', 'Lightningrod', 'Rock Head', 'Male/Female', 'Trade - w/Protector', 105, 130, 120, 45, 45, 40, 485);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (114, 'Tangela', 'Grass', '-----', 'Chlorophyll', 'Leaf Guard', 'Male/Female', 'Level Up - w/Ancientpower', 65, 55, 115, 100, 40, 60, 435);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (116, 'Horsea', 'Water', '-----', 'Swift Swim', 'Sniper', 'Male/Female', 'Level Up - 32', 30, 40, 70, 70, 25, 60, 295);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (117, 'Seadra', 'Water', '-----', 'Poison Point', 'Sniper', 'Male/Female', 'Trade - w/Dragon Scale', 55, 65, 95, 95, 45, 85, 440);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (118, 'Goldeen', 'Water', '-----', 'Swift Swim', 'Water Veil', 'Male/Female', 'Level Up - 33', 45, 67, 60, 35, 50, 63, 320);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (119, 'Seaking', 'Water', '-----', 'Swift Swim', 'Water Veil', 'Male/Female', '-----', 80, 92, 65, 65, 80, 68, 450);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (120, 'Staryu', 'Water', '-----', 'Illuminate', 'Natural Cure', 'Male/Female', 'Water Stone', 30, 45, 55, 70, 55, 85, 340);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (121, 'Starmie', 'Water', 'Psychic', 'Illuminate', 'Natural Cure', 'Male/Female', '-----', 60, 75, 85, 100, 85, 115, 520);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (122, 'Mr. Mime', 'Psychic', 'Fairy', 'Soundproof', 'Filter', 'Male/Female', '-----', 40, 45, 65, 100, 120, 90, 460);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (123, 'Scyther', 'Bug', 'Flying', 'Swarm', 'Technician', 'Male/Female', 'Trade - w/Metal Coat', 70, 110, 80, 55, 80, 105, 500);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (125, 'Electabuzz', 'Electric', '-----', 'Static', '-----', 'Male/Female', 'Trade - w/Electirizer', 65, 83, 57, 95, 85, 105, 490);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (126, 'Magmar', 'Fire', '-----', 'Flame Body', '-----', 'Male/Female', 'Trade - w/Magmarizer', 65, 95, 57, 100, 85, 93, 495);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (127, 'Pinsir', 'Bug', '-----', 'Hyper Cutter', 'Mold Breaker', 'Male/Female', '-----', 65, 125, 100, 55, 70, 85, 500);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (129, 'Magikarp', 'Water', '-----', 'Swift Swim', '-----', 'Male/Female', 'Level Up - 20', 20, 10, 55, 15, 20, 80, 200);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (130, 'Gyarados', 'Water', 'Flying', 'Intimidate', '-----', 'Male/Female', '-----', 95, 125, 79, 60, 100, 81, 540);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (131, 'Lapras', 'Water', 'Ice', 'Water Absorb', 'Shell Armor', 'Male/Female', '-----', 130, 85, 80, 85, 95, 60, 535);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (132, 'Ditto', 'Normal', '-----', 'Limber', '-----', 'Male/Female', '-----', 48, 48, 48, 48, 48, 48, 288);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (133, 'Eevee', 'Normal', '-----', 'Run Away', 'Adaptability', 'Male/Female', 'Water Stone', 55, 55, 50, 45, 65, 55, 325);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (134, 'Vaporeon', 'Water', '-----', 'Water Absorb', '-----', 'Male/Female', '-----', 130, 65, 60, 110, 95, 65, 525);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (135, 'Jolteon', 'Electric', '-----', 'Volt Absorb', '-----', 'Male/Female', '-----', 65, 65, 60, 110, 95, 130, 525);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (136, 'Flareon', 'Fire', '-----', 'Flash Fire', '-----', 'Male/Female', '-----', 65, 130, 60, 95, 110, 65, 525);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (137, 'Porygon', 'Normal', '-----', 'Trace', 'Download', 'Male/Female', 'Trade - w/Upgrade', 65, 60, 70, 85, 75, 40, 395);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (138, 'Omanyte', 'Rock', 'Water', 'Swift Swim', 'Shell Armor', 'Male/Female', 'Level Up - 40', 35, 40, 100, 90, 55, 35, 355);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (139, 'Omastar', 'Rock', 'Water', 'Swift Swim', 'Shell Armor', 'Male/Female', '-----', 70, 60, 125, 115, 70, 55, 495);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (140, 'Kabuto', 'Rock', 'Water', 'Swift Swim', 'Battle Armor', 'Male/Female', 'Level Up - 40', 30, 80, 90, 55, 45, 55, 355);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (141, 'Kabutops', 'Rock', 'Water', 'Swift Swim', 'Battle Armor', 'Male/Female', '-----', 60, 115, 105, 65, 70, 80, 495);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (142, 'Aerodactyl', 'Rock', 'Flying', 'Rock Head', 'Pressure', 'Male/Female', '-----', 80, 105, 65, 60, 75, 130, 515);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (143, 'Snorlax', 'Normal', '-----', 'Immunity', 'Thick Fat', 'Male/Female', '-----', 160, 110, 65, 65, 110, 30, 540);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (144, 'Articuno', 'Ice', 'Flying', 'Pressure', '-----', 'Male/Female', '-----', 90, 85, 100, 95, 125, 85, 580);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (145, 'Zapdos', 'Electric', 'Flying', 'Pressure', '-----', 'Male/Female', '-----', 90, 90, 85, 125, 90, 100, 580);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (146, 'Moltres', 'Fire', 'Flying', 'Pressure', '-----', 'Male/Female', '-----', 90, 100, 90, 125, 85, 90, 580);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (147, 'Dratini', 'Dragon', '-----', 'Shed Skin', '-----', 'Male/Female', 'Level Up - 30', 41, 64, 45, 50, 50, 50, 300);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (148, 'Dragonair', 'Dragon', '-----', 'Shed Skin', '-----', 'Male/Female', 'Level Up - 55', 61, 84, 65, 70, 70, 70, 420);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (149, 'Dragonite', 'Dragon', 'Flying', 'Inner Focus', '-----', 'Male/Female', '-----', 91, 134, 95, 100, 100, 80, 600);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (150, 'Mewtwo', 'Psychic', '-----', 'Pressure', '-----', 'Male/Female', '-----', 106, 110, 90, 154, 90, 130, 680);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (151, 'Mew', 'Psychic', '-----', 'Synchronize', '-----', 'Male/Female', '-----', 100, 100, 100, 100, 100, 100, 600);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (128, 'Tauros', 'Normal', '-----', 'Intimidate', 'Anger Point', 'Male', '-----', 75, 100, 95, 40, 70, 110, 490);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (113, 'Chansey', 'Normal', '-----', 'Natural Cure', 'Serene Grace', 'Female', 'Level Up - Friendship', 250, 5, 5, 35, 105, 50, 450);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (115, 'Kangaskhan', 'Normal', '-----', 'Early Bird', 'Scrappy', 'Female', '-----', 105, 95, 80, 40, 80, 90, 490);
INSERT INTO pokedex ("ID", "POKEMON", "TYPE_1", "TYPE_2", "ABILITIES_1", "ABILITIES_2", "GENDER", "EVOLUTION_DETAILS", "HP", "ATK", "DEF", "SPATK", "SPDEF", "SPEED", "TOTAL") VALUES (124, 'Jynx', 'Ice', 'Psychic', 'Oblivious', 'Forewarn', 'Female', '-----', 65, 50, 35, 115, 95, 95, 455);


--
-- TOC entry 2812 (class 0 OID 0)
-- Dependencies: 197
-- Name: collection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('collection_id_seq', 15, true);


--
-- TOC entry 2678 (class 2606 OID 16555)
-- Name: collection collection_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY collection
    ADD CONSTRAINT collection_pkey PRIMARY KEY ("ID");


--
-- TOC entry 2676 (class 2606 OID 16528)
-- Name: pokedex pokedex_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pokedex
    ADD CONSTRAINT pokedex_pkey PRIMARY KEY ("ID");


-- Completed on 2018-01-23 13:39:28

--
-- PostgreSQL database dump complete
--

