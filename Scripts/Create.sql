SET client_encoding = 'UTF8';

CREATE TABLE "COFFEE_SHOP"."COFFEE_SHOP" (
    id integer NOT NULL,
    name character varying(30),
    address character varying(25),
    working_hours character varying(30),
    phone character varying(15)
);
ALTER TABLE "COFFEE_SHOP"."COFFEE_SHOP" OWNER TO postgres;

CREATE TABLE "COFFEE_SHOP"."DELIVERY_ADDRESS" (
    id integer NOT NULL,
    user_id integer,
    address character varying(50),
    is_default boolean
);
ALTER TABLE "COFFEE_SHOP"."DELIVERY_ADDRESS" OWNER TO postgres;

CREATE TABLE "COFFEE_SHOP"."MENU_ITEM" (
    id integer NOT NULL,
    name character varying(150),
    description character varying(150),
    price numeric(7,0),
    category character varying(150),
    calories integer
);
ALTER TABLE "COFFEE_SHOP"."MENU_ITEM" OWNER TO postgres;

CREATE TABLE "COFFEE_SHOP"."ORDER" (
    id integer NOT NULL,
    user_id integer,
    order_date timestamp(6) without time zone,
    status character varying(150),
    total_price numeric(8,0),
    delivery_address character varying(150)
);
ALTER TABLE "COFFEE_SHOP"."ORDER" OWNER TO postgres;

CREATE TABLE "COFFEE_SHOP"."ORDER_ITEM" (
    id integer NOT NULL,
    order_id integer,
    menu_item_id integer,
    quantity integer,
    item_price numeric(5,0)
);
ALTER TABLE "COFFEE_SHOP"."ORDER_ITEM" OWNER TO postgres;

CREATE TABLE "COFFEE_SHOP"."USER" (
    id integer NOT NULL,
    name character varying(30),
    email character varying(30),
    password_hash character varying(30),
    phone character varying(15),
    created_at date
);
ALTER TABLE "COFFEE_SHOP"."USER" OWNER TO postgres;

ALTER TABLE ONLY "COFFEE_SHOP"."COFFEE_SHOP"
    ADD CONSTRAINT "COFFEE_SHOP_pkey" PRIMARY KEY (id);

ALTER TABLE ONLY "COFFEE_SHOP"."DELIVERY_ADDRESS"
    ADD CONSTRAINT "DELIVERY_ADDRESS_pkey" PRIMARY KEY (id);

ALTER TABLE ONLY "COFFEE_SHOP"."MENU_ITEM"
    ADD CONSTRAINT "MENU_ITEM_pkey" PRIMARY KEY (id);

ALTER TABLE ONLY "COFFEE_SHOP"."ORDER_ITEM"
    ADD CONSTRAINT "ORDER_ITEM_pkey" PRIMARY KEY (id);

ALTER TABLE ONLY "COFFEE_SHOP"."ORDER"
    ADD CONSTRAINT "ORDER_pkey" PRIMARY KEY (id);

ALTER TABLE ONLY "COFFEE_SHOP"."USER"
    ADD CONSTRAINT "USER_pkey" PRIMARY KEY (id);

ALTER TABLE ONLY "COFFEE_SHOP"."ORDER_ITEM"
    ADD CONSTRAINT menu_item_fkey FOREIGN KEY (menu_item_id) REFERENCES "COFFEE_SHOP"."MENU_ITEM"(id) NOT VALID;

ALTER TABLE ONLY "COFFEE_SHOP"."ORDER_ITEM"
    ADD CONSTRAINT order_fkey FOREIGN KEY (order_id) REFERENCES "COFFEE_SHOP"."ORDER"(id) NOT VALID;

ALTER TABLE ONLY "COFFEE_SHOP"."ORDER"
    ADD CONSTRAINT user_fkey FOREIGN KEY (user_id) REFERENCES "COFFEE_SHOP"."USER"(id) NOT VALID;

ALTER TABLE ONLY "COFFEE_SHOP"."DELIVERY_ADDRESS"
    ADD CONSTRAINT user_fkey FOREIGN KEY (user_id) REFERENCES "COFFEE_SHOP"."USER"(id);


