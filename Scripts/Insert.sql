--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-05-21 21:31:18

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

--
-- TOC entry 4822 (class 0 OID 24581)
-- Dependencies: 218
-- Data for Name: COFFEE_SHOP; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."COFFEE_SHOP" (id, name, address, working_hours, phone) FROM stdin;
1	CoffeeShop35	ул. Ленина, 17	08:00-23:00	+79991234567
2	CoffeeShop35	ул. Архангельская, 42	07:00-22:00	+79997654321
\.


--
-- TOC entry 4821 (class 0 OID 24576)
-- Dependencies: 217
-- Data for Name: USER; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."USER" (id, name, email, password_hash, phone, created_at) FROM stdin;
1	Иван Михеев	ivanmih@example.com	abc123	+79211234567	2023-01-15
2	Эдуард Зайцев	zaytsev2@example.com	def456	+79167654321	2025-02-20
3	Анна Горчакова	annagor@example.com	ghi789	+79165554433	2024-03-17
\.


--
-- TOC entry 4826 (class 0 OID 24620)
-- Dependencies: 222
-- Data for Name: DELIVERY_ADDRESS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."DELIVERY_ADDRESS" (id, user_id, address, is_default) FROM stdin;
1	1	ул. Рыбинская, 10, кв. 52	t
2	1	ул. Ломоносова, 15, кв. 12	f
3	2	пр. Победы, 42, кв. 7	t
4	3	ул. Командарма Белова, 8, кв. 3	t
\.


--
-- TOC entry 4823 (class 0 OID 24586)
-- Dependencies: 219
-- Data for Name: MENU_ITEM; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."MENU_ITEM" (id, name, description, price, category, calories) FROM stdin;
1	Лавандовый латте	Эспрессо, лавандовый сироп, овсяное молоко, цветочная пенка	220	Весенне-летние напитки	220
2	Клубничный раф	Эспрессо, клубничное пюре, ванильный сироп, сливки	250	Весенне-летние напитки	250
3	Айс матча латте	Матча, миндальное молоко, лёд, мёд	230	Весенне-летние напитки	180
4	Кокосовый холодный кофе	Американо, кокосовое молоко, лёд, кокосовая стружка	200	Весенне-летние напитки	200
5	Лимонный эспрессо тоник	Эспрессо, тоник, лимонный сок, мята	180	Весенне-летние напитки	90
6	Персиковый холодный чай	Чёрный чай, персиковый сироп, лёд, дольки персика	170	Весенне-летние напитки	120
7	Малиновый фраппучино	Эспрессо, малиновый сироп, молоко, лёд, взбитые сливки	280	Весенне-летние напитки	280
8	Огуречный лимонад с мятой	Содовая, огуречный сок, лайм, мята, лёд	190	Весенне-летние напитки	70
9	Echo Caramel Cloud	Двойной эспрессо, карамельный сироп, взбитая молочная пенка, морская соль	240	Фирменное меню	240
10	Honey Cinnamon Latte	Латте, мёд, корица, кокосовые сливки	250	Фирменное меню	210
11	Black Forest Mocha	Мокко, вишнёвый сироп, тёмный шоколад, сливки	270	Фирменное меню	320
12	Salted Toffee Cold Brew	Холд брю, солёная ириска, миндальное молоко	260	Фирменное меню	180
13	Orange Espresso Tonic	Эспрессо, апельсиновый сироп, тоник, цедра	220	Фирменное меню	110
14	Pistachio Cream Latte	Латте, фисташковая паста, ванильный сироп	280	Фирменное меню	290
15	Smoky Maple Latte	Латте, кленовый сироп, копчёная соль	250	Фирменное меню	230
16	Berry Matcha Lemonade	Матча, ягодный микс, лимон, газировка	230	Фирменное меню	150
17	Цитрусовый ройбуш	Ройбуш, апельсин, лимон, имбирь, мёд	180	Авторские чаи	60
18	Мятный улун с лаймом	Улун, свежая мята, лайм, мёд	170	Авторские чаи	50
19	Ягодный чай с гибискусом	Гибискус, клубника, малина, мята	190	Авторские чаи	70
20	Имбирный чай с мёдом	Чёрный чай, свежий имбирь, лимон, мёд	160	Авторские чаи	80
21	Эспрессо	Эспрессо	120	Классические напитки	5
22	Американо	Эспрессо, вода	150	Классические напитки	10
23	Капучино	Эспрессо, молоко	180	Классические напитки	120
24	Латте	Эспрессо, молоко	200	Классические напитки	180
25	Флэт Уайт	Эспрессо, молоко	190	Классические напитки	130
26	Раф	Эспрессо, молоко, сливки, ванильный сироп	220	Классические напитки	220
27	Горячий шоколад	Молоко, темный шоколад	210	Классические напитки	300
28	Чай	Чайный пакетик, вода	150	Классические напитки	5
29	Айс латте	Эспрессо, молоко, лёд	200	Холодные напитки	140
30	Нитро кофе	Холодный заварной кофе, азот	220	Холодные напитки	80
31	Кокосовый фраппе	Кофе, кокосовое молоко, лёд	240	Холодные напитки	200
32	Манговый холодный чай	Чай, манговый сироп, лёд	210	Холодные напитки	130
33	Мохито безалкогольное	Лайм, мята, содовая	190	Холодные напитки	50
34	Вишнёвый холодный кофе	Кофе, вишнёвый сироп	230	Холодные напитки	160
35	Молочный коктейль с печеньем	Молоко, печенье, мороженое	280	Холодные напитки	350
36	Арбузный лимонад	Арбузный сок, лайм, мята	200	Холодные напитки	90
\.


--
-- TOC entry 4824 (class 0 OID 24591)
-- Dependencies: 220
-- Data for Name: ORDER; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ORDER" (id, user_id, order_date, status, total_price, delivery_address) FROM stdin;
1	1	2023-05-01 10:30:00	Доставлен	470	ул. Рыбинская, 10, кв. 52
2	2	2025-05-02 15:45:00	В обработке	370	пр. Победы, 42, кв. 7
3	3	2024-05-03 18:20:00	В пути	220	ул. Командарма Белова, 8, кв. 3
\.


--
-- TOC entry 4825 (class 0 OID 24596)
-- Dependencies: 221
-- Data for Name: ORDER_ITEM; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ORDER_ITEM" (id, order_id, menu_item_id, quantity, item_price) FROM stdin;
1	1	1	1	220
2	1	9	1	240
3	1	4	2	200
4	2	17	1	180
5	2	23	1	180
6	2	27	1	210
7	3	29	1	200
8	3	34	1	230
9	3	36	2	200
\.


-- Completed on 2025-05-21 21:31:18

--
-- PostgreSQL database dump complete
--

