--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-05-21 21:29:13

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
-- TOC entry 218 (class 1259 OID 24581)
-- Name: COFFEE_SHOP; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."COFFEE_SHOP" (
    id integer NOT NULL,
    name character varying(30),
    address character varying(25),
    working_hours character varying(30),
    phone character varying(15)
);


ALTER TABLE public."COFFEE_SHOP" OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 24620)
-- Name: DELIVERY_ADDRESS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DELIVERY_ADDRESS" (
    id integer NOT NULL,
    user_id integer,
    address character varying(50),
    is_default boolean
);


ALTER TABLE public."DELIVERY_ADDRESS" OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24586)
-- Name: MENU_ITEM; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."MENU_ITEM" (
    id integer NOT NULL,
    name character varying(150),
    description character varying(150),
    price numeric(7,0),
    category character varying(150),
    calories integer
);


ALTER TABLE public."MENU_ITEM" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 24591)
-- Name: ORDER; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ORDER" (
    id integer NOT NULL,
    user_id integer,
    order_date timestamp(6) without time zone,
    status character varying(150),
    total_price numeric(8,0),
    delivery_address character varying(150)
);


ALTER TABLE public."ORDER" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 24596)
-- Name: ORDER_ITEM; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ORDER_ITEM" (
    id integer NOT NULL,
    order_id integer,
    menu_item_id integer,
    quantity integer,
    item_price numeric(5,0)
);


ALTER TABLE public."ORDER_ITEM" OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 24576)
-- Name: USER; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."USER" (
    id integer NOT NULL,
    name character varying(30),
    email character varying(30),
    password_hash character varying(30),
    phone character varying(15),
    created_at date
);


ALTER TABLE public."USER" OWNER TO postgres;

--
-- TOC entry 4663 (class 2606 OID 24585)
-- Name: COFFEE_SHOP COFFEE_SHOP_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."COFFEE_SHOP"
    ADD CONSTRAINT "COFFEE_SHOP_pkey" PRIMARY KEY (id);


--
-- TOC entry 4671 (class 2606 OID 24624)
-- Name: DELIVERY_ADDRESS DELIVERY_ADDRESS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DELIVERY_ADDRESS"
    ADD CONSTRAINT "DELIVERY_ADDRESS_pkey" PRIMARY KEY (id);


--
-- TOC entry 4665 (class 2606 OID 24590)
-- Name: MENU_ITEM MENU_ITEM_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MENU_ITEM"
    ADD CONSTRAINT "MENU_ITEM_pkey" PRIMARY KEY (id);


--
-- TOC entry 4669 (class 2606 OID 24600)
-- Name: ORDER_ITEM ORDER_ITEM_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ORDER_ITEM"
    ADD CONSTRAINT "ORDER_ITEM_pkey" PRIMARY KEY (id);


--
-- TOC entry 4667 (class 2606 OID 24595)
-- Name: ORDER ORDER_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ORDER"
    ADD CONSTRAINT "ORDER_pkey" PRIMARY KEY (id);


--
-- TOC entry 4661 (class 2606 OID 24580)
-- Name: USER USER_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."USER"
    ADD CONSTRAINT "USER_pkey" PRIMARY KEY (id);


--
-- TOC entry 4673 (class 2606 OID 24615)
-- Name: ORDER_ITEM menu_item_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ORDER_ITEM"
    ADD CONSTRAINT menu_item_fkey FOREIGN KEY (menu_item_id) REFERENCES public."MENU_ITEM"(id) NOT VALID;


--
-- TOC entry 4674 (class 2606 OID 24610)
-- Name: ORDER_ITEM order_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ORDER_ITEM"
    ADD CONSTRAINT order_fkey FOREIGN KEY (order_id) REFERENCES public."ORDER"(id) NOT VALID;


--
-- TOC entry 4672 (class 2606 OID 24605)
-- Name: ORDER user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ORDER"
    ADD CONSTRAINT user_fkey FOREIGN KEY (user_id) REFERENCES public."USER"(id) NOT VALID;


--
-- TOC entry 4675 (class 2606 OID 24625)
-- Name: DELIVERY_ADDRESS user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DELIVERY_ADDRESS"
    ADD CONSTRAINT user_fkey FOREIGN KEY (user_id) REFERENCES public."USER"(id);


-- Completed on 2025-05-21 21:29:13

--
-- PostgreSQL database dump complete
--

