SET client_encoding = 'UTF8';

INSERT INTO "COFFEE_SHOP"."COFFEE_SHOP" VALUES (1, 'CoffeeShop35', 'ул. Ленина, 17', '08:00-23:00', '+79991234567');
INSERT INTO "COFFEE_SHOP"."COFFEE_SHOP" VALUES (2, 'CoffeeShop35', 'ул. Архангельская, 42', '07:00-22:00', '+79997654321');

INSERT INTO "COFFEE_SHOP"."USER" VALUES (1, 'Иван Михеев', 'ivanmih@example.com', 'abc123', '+79211234567', '2023-01-15');
INSERT INTO "COFFEE_SHOP"."USER" VALUES (2, 'Эдуард Зайцев', 'zaytsev2@example.com', 'def456', '+79167654321', '2025-02-20');
INSERT INTO "COFFEE_SHOP"."USER" VALUES (3, 'Анна Горчакова', 'annagor@example.com', 'ghi789', '+79165554433', '2024-03-17');

INSERT INTO "COFFEE_SHOP"."DELIVERY_ADDRESS" VALUES (1, 1, 'ул. Рыбинская, 10, кв. 52', true);
INSERT INTO "COFFEE_SHOP"."DELIVERY_ADDRESS" VALUES (2, 1, 'ул. Ломоносова, 15, кв. 12', false);
INSERT INTO "COFFEE_SHOP"."DELIVERY_ADDRESS" VALUES (3, 2, 'пр. Победы, 42, кв. 7', true);
INSERT INTO "COFFEE_SHOP"."DELIVERY_ADDRESS" VALUES (4, 3, 'ул. Командарма Белова, 8, кв. 3', true);

INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (1, 'Лавандовый латте', 'Эспрессо, лавандовый сироп, овсяное молоко, цветочная пенка', 220, 'ВеснаЛето', 220, '/весналето/лаванда латте.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (2, 'Клубничный раф', 'Эспрессо, клубничное пюре, ванильный сироп, сливки', 250, 'ВеснаЛето', 250, '/весналето/клубнич раф.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (3, 'Айс матча латте', 'Матча, миндальное молоко, лёд, мёд', 230, 'ВеснаЛето', 180, '/весналето/матча латте.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (4, 'Кокосовый холодный кофе', 'Американо, кокосовое молоко, лёд, кокосовая стружка', 200, 'ВеснаЛето', 200, '/весналето/кокос айс кофе.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (5, 'Лимонный эспрессо тоник', 'Эспрессо, тоник, лимонный сок, мята', 180, 'ВеснаЛето', 90, '/весналето/лимон тоник.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (9, 'Echo Caramel Cloud', 'Двойной эспрессо, карамельный сироп, взбитая молочная пенка, морская соль', 240, 'Фирменное меню', 240, '/фирменное меню/Echo Caramel Cloud.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (10, 'Honey Cinnamon Latte', 'Латте, мёд, корица, кокосовые сливки', 250, 'Фирменное меню', 210, '/фирменное меню/Honey Cinnamon Latte.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (6, 'Персиковый холодный чай', 'Чёрный чай, персиковый сироп, лёд, дольки персика', 170, 'ВеснаЛето', 120, '/весналето/персик чай.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (7, 'Малиновый фраппучино', 'Эспрессо, малиновый сироп, молоко, лёд, взбитые сливки', 280, 'ВеснаЛето', 280, '/весналето/малиновый фрап.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (8, 'Огуречный лимонад с мятой', 'Содовая, огуречный сок, лайм, мята, лёд', 190, 'ВеснаЛето', 70, '/весналето/огурец лимонад мята.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (11, 'Black Forest Mocha', 'Мокко, вишнёвый сироп, тёмный шоколад, сливки', 270, 'Фирменное меню', 320, '/фирменное меню/Black Forest Mocha.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (12, 'Salted Toffee Cold Brew', 'Холд брю, солёная ириска, миндальное молоко', 260, 'Фирменное меню', 180, '/фирменное меню/Salted Toffee Cold Brew.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (13, 'Orange Espresso Tonic', 'Эспрессо, апельсиновый сироп, тоник, цедра', 220, 'Фирменное меню', 110, '/фирменное меню/Orange Espresso Tonic.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (14, 'Pistachio Cream Latte', 'Латте, фисташковая паста, ванильный сироп', 280, 'Фирменное меню', 290, '/фирменное меню/Pistachio Cream Latte.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (15, 'Smoky Maple Latte', 'Латте, кленовый сироп, копчёная соль', 250, 'Фирменное меню', 230, '/фирменное меню/Smoky Maple Latte.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (16, 'Berry Matcha Lemonade', 'Матча, ягодный микс, лимон, газировка', 230, 'Фирменное меню', 150, '/фирменное меню/Berry Matcha Lemonade.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (17, 'Цитрусовый ройбуш', 'Ройбуш, апельсин, лимон, имбирь, мёд', 180, 'Авторские чаи', 60, '/авторские чаи/цитрус ройбуш.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (18, 'Мятный улун с лаймом', 'Улун, свежая мята, лайм, мёд', 170, 'Авторские чаи', 50, '/авторские чаи/мята улун лайм.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (19, 'Ягодный чай с гибискусом', 'Гибискус, клубника, малина, мята', 190, 'Авторские чаи', 70, '/авторские чаи/ягоды чай гибискус.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (20, 'Имбирный чай с мёдом', 'Чёрный чай, свежий имбирь, лимон, мёд', 160, 'Авторские чаи', 80, '/авторские чаи/имбирный чай с медом.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (21, 'Эспрессо', 'Эспрессо', 120, 'Классические напитки', 5, '/классика/эспрессо классик.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (22, 'Американо', 'Эспрессо, вода', 150, 'Классические напитки', 10, '/классика/американо классик.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (23, 'Капучино', 'Эспрессо, молоко', 180, 'Классические напитки', 120, '/классика/капучино классик.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (24, 'Латте', 'Эспрессо, молоко', 200, 'Классические напитки', 180, '/классика/латте классик.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (25, 'Флэт Уайт', 'Эспрессо, молоко', 190, 'Классические напитки', 130, '/классика/флэт уайт классик.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (26, 'Раф', 'Эспрессо, молоко, сливки, ванильный сироп', 220, 'Классические напитки', 220, '/классика/раф классик.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (27, 'Горячий шоколад', 'Молоко, темный шоколад', 210, 'Классические напитки', 300, '/классика/горяч шоколад классик.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (28, 'Чай', 'Чайный пакетик, вода', 150, 'Классические напитки', 5, '/классика/чай классик.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (29, 'Айс латте', 'Эспрессо, молоко, лёд', 200, 'Холодные напитки', 140, '/холодные/айс латте.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (30, 'Нитро кофе', 'Холодный заварной кофе, азот', 220, 'Холодные напитки', 80, '/холодные/нитро кофе.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (31, 'Кокосовый фраппе', 'Кофе, кокосовое молоко, лёд', 240, 'Холодные напитки', 200, '/холодные/кокосовый фраппе.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (32, 'Манговый холодный чай', 'Чай, манговый сироп, лёд', 210, 'Холодные напитки', 130, '/холодные/манго чай.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (33, 'Мохито безалкогольное', 'Лайм, мята, содовая', 190, 'Холодные напитки', 50, '/холодные/мохито.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (34, 'Вишнёвый холодный кофе', 'Кофе, вишнёвый сироп', 230, 'Холодные напитки', 160, '/холодные/вишневый кофе.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (35, 'Молочный коктейль с печеньем', 'Молоко, печенье, мороженое', 280, 'Холодные напитки', 350, '/холодные/молоч коктейль печенье.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (36, 'Арбузный лимонад', 'Арбузный сок, лайм, мята', 200, 'Холодные напитки', 90, '/холодные/арбуз лимонад.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (37, 'Чизкейк Нью-Йорк', 'Классический чизкейк с ванилью и хрустящей основой из печенья', 300, 'Десерты', 420, '/десерты/чизкейк.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (38, 'Эклер с фисташковым кремом', 'Заварное тесто, фисташковый крем, белый шоколад', 210, 'Десерты', 320, '/десерты/эклер с фисташковым кремом.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (39, 'Брауни с орехами', 'Шоколадный десерт с грецкими орехами и глазурью', 260, 'Десерты', 380, '/десерты/брауни с орехами.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (40, 'Яблочный штрудель', 'Тонкое тесто, яблоки, корица, изюм, подаётся с шариком ванильного мороженого', 290, 'Десерты', 350, '/десерты/яблочный штрудель.jpg');
INSERT INTO "COFFEE_SHOP"."MENU_ITEM" VALUES (41, 'Макаронсы (набор из 3 шт)', 'Французские миндальные пирожные разных вкусов: фисташка, малина, шоколад', 230, 'Десерты', 270, '/десерты/макаронсы (набор из 3 шт).jpg');

INSERT INTO "COFFEE_SHOP"."ORDER" VALUES (1, 1, '2023-05-01 10:30:00', 'Доставлен', 470, 'ул. Рыбинская, 10, кв. 52');
INSERT INTO "COFFEE_SHOP"."ORDER" VALUES (2, 2, '2025-05-02 15:45:00', 'В обработке', 370, 'пр. Победы, 42, кв. 7');
INSERT INTO "COFFEE_SHOP"."ORDER" VALUES (3, 3, '2024-05-03 18:20:00', 'В пути', 220, 'ул. Командарма Белова, 8, кв. 3');

INSERT INTO "COFFEE_SHOP"."ORDER_ITEM" VALUES (1, 1, 1, 1, 220);
INSERT INTO "COFFEE_SHOP"."ORDER_ITEM" VALUES (2, 1, 9, 1, 240);
INSERT INTO "COFFEE_SHOP"."ORDER_ITEM" VALUES (3, 1, 4, 2, 200);
INSERT INTO "COFFEE_SHOP"."ORDER_ITEM" VALUES (4, 2, 17, 1, 180);
INSERT INTO "COFFEE_SHOP"."ORDER_ITEM" VALUES (5, 2, 23, 1, 180);
INSERT INTO "COFFEE_SHOP"."ORDER_ITEM" VALUES (6, 2, 27, 1, 210);
INSERT INTO "COFFEE_SHOP"."ORDER_ITEM" VALUES (7, 3, 29, 1, 200);
INSERT INTO "COFFEE_SHOP"."ORDER_ITEM" VALUES (8, 3, 34, 1, 230);
INSERT INTO "COFFEE_SHOP"."ORDER_ITEM" VALUES (9, 3, 36, 2, 200);