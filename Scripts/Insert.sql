SET client_encoding = 'UTF8';

INSERT INTO "COFFEE_SHOP"."COFFEE_SHOP" (id, name, address, working_hours, phone) VALUES (1, 'CoffeeShop35', 'ул. Ленина, 17', '08:00-23:00', '+79991234567');
INSERT INTO "COFFEE_SHOP"."COFFEE_SHOP" (id, name, address, working_hours, phone) VALUES (2, 'CoffeeShop35', 'ул. Архангельская, 42', '07:00-22:00', '+79997654321');

INSERT INTO "COFFEE_SHOP"."USER" (id, name, email, password_hash, phone, created_at) VALUES (1, 'Иван Михеев', 'ivanmih@example.com', 'abc123', '+79211234567', '2023-01-15');
INSERT INTO "COFFEE_SHOP"."USER" (id, name, email, password_hash, phone, created_at) VALUES (2, 'Эдуард Зайцев', 'zaytsev2@example.com', 'def456', '+79167654321', '2025-02-20');
INSERT INTO "COFFEE_SHOP"."USER" (id, name, email, password_hash, phone, created_at) VALUES (3, 'Анна Горчакова', 'annagor@example.com', 'ghi789', '+79165554433', '2024-03-17');

INSERT INTO "COFFEE_SHOP"."DELIVERY_ADDRESS" (id, user_id, address, is_default) VALUES (1, 1, 'ул. Рыбинская, 10, кв. 52', true);
INSERT INTO "COFFEE_SHOP"."DELIVERY_ADDRESS" (id, user_id, address, is_default) VALUES (2, 1, 'ул. Ломоносова, 15, кв. 12', false);
INSERT INTO "COFFEE_SHOP"."DELIVERY_ADDRESS" (id, user_id, address, is_default) VALUES (3, 2, 'пр. Победы, 42, кв. 7', true);
INSERT INTO "COFFEE_SHOP"."DELIVERY_ADDRESS" (id, user_id, address, is_default) VALUES (4, 3, 'ул. Командарма Белова, 8, кв. 3', true);

INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (1, 'Лавандовый латте', 'Эспрессо, лавандовый сироп, овсяное молоко, цветочная пенка', 220, 'Весенне-летние напитки', 220);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (2, 'Клубничный раф', 'Эспрессо, клубничное пюре, ванильный сироп, сливки', 250, 'Весенне-летние напитки', 250);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (3, 'Айс матча латте', 'Матча, миндальное молоко, лёд, мёд', 230, 'Весенне-летние напитки', 180);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (4, 'Кокосовый холодный кофе', 'Американо, кокосовое молоко, лёд, кокосовая стружка', 200, 'Весенне-летние напитки', 200);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (5, 'Лимонный эспрессо тоник', 'Эспрессо, тоник, лимонный сок, мята', 180, 'Весенне-летние напитки', 90);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (6, 'Персиковый холодный чай', 'Чёрный чай, персиковый сироп, лёд, дольки персика', 170, 'Весенне-летние напитки', 120);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (7, 'Малиновый фраппучино', 'Эспрессо, малиновый сироп, молоко, лёд, взбитые сливки', 280, 'Весенне-летние напитки', 280);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (8, 'Огуречный лимонад с мятой', 'Содовая, огуречный сок, лайм, мята, лёд', 190, 'Весенне-летние напитки', 70);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (9, 'Echo Caramel Cloud', 'Двойной эспрессо, карамельный сироп, взбитая молочная пенка, морская соль', 240, 'Фирменное меню', 240);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (10, 'Honey Cinnamon Latte', 'Латте, мёд, корица, кокосовые сливки', 250, 'Фирменное меню', 210);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (11, 'Black Forest Mocha', 'Мокко, вишнёвый сироп, тёмный шоколад, сливки', 270, 'Фирменное меню', 320);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (12, 'Salted Toffee Cold Brew', 'Холд брю, солёная ириска, миндальное молоко', 260, 'Фирменное меню', 180);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (13, 'Orange Espresso Tonic', 'Эспрессо, апельсиновый сироп, тоник, цедра', 220, 'Фирменное меню', 110);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (14, 'Pistachio Cream Latte', 'Латте, фисташковая паста, ванильный сироп', 280, 'Фирменное меню', 290);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (15, 'Smoky Maple Latte', 'Латте, кленовый сироп, копчёная соль', 250, 'Фирменное меню', 230);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (16, 'Berry Matcha Lemonade', 'Матча, ягодный микс, лимон, газировка', 230, 'Фирменное меню', 150);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (17, 'Цитрусовый ройбуш', 'Ройбуш, апельсин, лимон, имбирь, мёд', 180, 'Авторские чаи', 60);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (18, 'Мятный улун с лаймом', 'Улун, свежая мята, лайм, мёд', 170, 'Авторские чаи', 50);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (19, 'Ягодный чай с гибискусом', 'Гибискус, клубника, малина, мята', 190, 'Авторские чаи', 70);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (20, 'Имбирный чай с мёдом', 'Чёрный чай, свежий имбирь, лимон, мёд', 160, 'Авторские чаи', 80);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (21, 'Эспрессо', 'Эспрессо', 120, 'Классические напитки', 5);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (22, 'Американо', 'Эспрессо, вода', 150, 'Классические напитки', 10);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (23, 'Капучино', 'Эспрессо, молоко', 180, 'Классические напитки', 120);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (24, 'Латте', 'Эспрессо, молоко', 200, 'Классические напитки', 180);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (25, 'Флэт Уайт', 'Эспрессо, молоко', 190, 'Классические напитки', 130);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (26, 'Раф', 'Эспрессо, молоко, сливки, ванильный сироп', 220, 'Классические напитки', 220);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (27, 'Горячий шоколад', 'Молоко, темный шоколад', 210, 'Классические напитки', 300);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (28, 'Чай', 'Чайный пакетик, вода', 150, 'Классические напитки', 5);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (29, 'Айс латте', 'Эспрессо, молоко, лёд', 200, 'Холодные напитки', 140);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (30, 'Нитро кофе', 'Холодный заварной кофе, азот', 220, 'Холодные напитки', 80);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (31, 'Кокосовый фраппе', 'Кофе, кокосовое молоко, лёд', 240, 'Холодные напитки', 200);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (32, 'Манговый холодный чай', 'Чай, манговый сироп, лёд', 210, 'Холодные напитки', 130);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (33, 'Мохито безалкогольное', 'Лайм, мята, содовая', 190, 'Холодные напитки', 50);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (34, 'Вишнёвый холодный кофе', 'Кофе, вишнёвый сироп', 230, 'Холодные напитки', 160);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (35, 'Молочный коктейль с печеньем', 'Молоко, печенье, мороженое', 280, 'Холодные напитки', 350);
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" (id, name, description, price, category, calories) VALUES (36, 'Арбузный лимонад', 'Арбузный сок, лайм, мята', 200, 'Холодные напитки', 90);

INSERT INTO "COFFEE_SHOP"."ORDER" (id, user_id, order_date, status, total_price, delivery_address) VALUES (1, 1, '2023-05-01 10:30:00', 'Доставлен', 470, 'ул. Рыбинская, 10, кв. 52');
INSERT INTO "COFFEE_SHOP"."ORDER" (id, user_id, order_date, status, total_price, delivery_address) VALUES (2, 2, '2025-05-02 15:45:00', 'В обработке', 370, 'пр. Победы, 42, кв. 7');
INSERT INTO "COFFEE_SHOP"."ORDER" (id, user_id, order_date, status, total_price, delivery_address) VALUES (3, 3, '2024-05-03 18:20:00', 'В пути', 220, 'ул. Командарма Белова, 8, кв. 3');

INSERT INTO "COFFEE_SHOP"."ORDER_ITEM" (id, order_id, menu_item_id, quantity, item_price) VALUES (1, 1, 1, 1, 220);
INSERT INTO "COFFEE_SHOP"."ORDER_ITEM" (id, order_id, menu_item_id, quantity, item_price) VALUES (2, 1, 9, 1, 240);
INSERT INTO "COFFEE_SHOP"."ORDER_ITEM" (id, order_id, menu_item_id, quantity, item_price) VALUES (3, 1, 4, 2, 200);
INSERT INTO "COFFEE_SHOP"."ORDER_ITEM" (id, order_id, menu_item_id, quantity, item_price) VALUES (4, 2, 17, 1, 180);
INSERT INTO "COFFEE_SHOP"."ORDER_ITEM" (id, order_id, menu_item_id, quantity, item_price) VALUES (5, 2, 23, 1, 180);
INSERT INTO "COFFEE_SHOP"."ORDER_ITEM" (id, order_id, menu_item_id, quantity, item_price) VALUES (6, 2, 27, 1, 210);
INSERT INTO "COFFEE_SHOP"."ORDER_ITEM" (id, order_id, menu_item_id, quantity, item_price) VALUES (7, 3, 29, 1, 200);
INSERT INTO "COFFEE_SHOP"."ORDER_ITEM" (id, order_id, menu_item_id, quantity, item_price) VALUES (8, 3, 34, 1, 230);
INSERT INTO "COFFEE_SHOP"."ORDER_ITEM" (id, order_id, menu_item_id, quantity, item_price) VALUES (9, 3, 36, 2, 200);

