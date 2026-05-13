use starbird;

-- ================================================
-- LOAD FILE - STARBIRD RESTAURANT DATABASE
-- ================================================

-- ================================================
-- CUSTOMER (20 records: 13 members, 7 non-members)
-- ================================================
INSERT INTO Customer VALUES (1,  'James',    'Martinez', 1001, '4155551234', 320,  '2023-03-15');
INSERT INTO Customer VALUES (2,  'Sofia',    'Nguyen',   1002, '4155552345', 150,  '2023-06-20');
INSERT INTO Customer VALUES (3,  'Ethan',    'Johnson',  1003, '4155553456', 780,  '2022-11-10');
INSERT INTO Customer VALUES (4,  'Mia',      'Patel',    1004, '4155554567', 95,   '2024-01-05');
INSERT INTO Customer VALUES (5,  'Liam',     'Robinson', 1005, '4155555678', 430,  '2023-08-18');
INSERT INTO Customer VALUES (6,  'Ava',      'Chen',     1006, '4155556789', 210,  '2024-02-14');
INSERT INTO Customer VALUES (7,  'Noah',     'Garcia',   1007, '4155557890', 560,  '2022-09-30');
INSERT INTO Customer VALUES (8,  'Emma',     'Williams', 1008, '4155558901', 890,  '2022-07-22');
INSERT INTO Customer VALUES (9,  'Oliver',   'Brown',    1009, '4155559012', 340,  '2023-12-01');
INSERT INTO Customer VALUES (10, 'Isabella', 'Davis',    1010, '4155550123', 670,  '2023-04-17');
INSERT INTO Customer VALUES (11, 'Lucas',    'Wilson',   1011, '4155551235', 120,  '2024-03-08');
INSERT INTO Customer VALUES (12, 'Amelia',   'Taylor',   1012, '4155552346', 990,  '2022-05-25');
INSERT INTO Customer VALUES (13, 'Mason',    'Anderson', 1013, '4155553457', 450,  '2023-10-12');
INSERT INTO Customer VALUES (14, 'Harper',   'Thomas',   NULL, '4155554568', NULL, '2024-04-01');
INSERT INTO Customer VALUES (15, 'Elijah',   'Jackson',  NULL, '4155555679', NULL, '2024-04-03');
INSERT INTO Customer VALUES (16, 'Evelyn',   'White',    NULL, '4155556780', NULL, '2024-04-05');
INSERT INTO Customer VALUES (17, 'Aiden',    'Harris',   NULL, '4155557891', NULL, '2024-04-07');
INSERT INTO Customer VALUES (18, 'Abigail',  'Martin',   NULL, '4155558902', NULL, '2024-04-10');
INSERT INTO Customer VALUES (19, 'Carter',   'Thompson', NULL, '4155559013', NULL, '2024-04-12');
INSERT INTO Customer VALUES (20, 'Scarlett', 'Moore',    NULL, '4155550124', NULL, '2024-04-15');

-- ================================================
-- EMPLOYEE (17 records: 3 managers, 8 cooks, 6 cashiers)
-- ================================================
INSERT INTO Employee VALUES (1,  'David',     'Lopez',    '2020-01-15', 'Manager', 22.50, 'General Manager', 'Full-time');
INSERT INTO Employee VALUES (2,  'Rachel',    'Kim',      '2021-03-20', 'Manager', 20.00, 'Shift Manager',   'Full-time');
INSERT INTO Employee VALUES (3,  'Kevin',     'Torres',   '2022-06-10', 'Manager', 20.00, 'Shift Manager',   'Full-time');
INSERT INTO Employee VALUES (4,  'Maria',     'Flores',   '2021-08-15', 'Cook',    16.50, 'Line Cook',       'Full-time');
INSERT INTO Employee VALUES (5,  'Jason',     'Lee',      '2022-02-28', 'Cook',    16.50, 'Line Cook',       'Full-time');
INSERT INTO Employee VALUES (6,  'Brittany',  'Scott',    '2022-11-01', 'Cook',    16.00, 'Line Cook',       'Part-time');
INSERT INTO Employee VALUES (7,  'Marcus',    'Hall',     '2023-01-10', 'Cook',    16.00, 'Line Cook',       'Part-time');
INSERT INTO Employee VALUES (8,  'Tiffany',   'Adams',    '2023-04-15', 'Cook',    15.50, 'Line Cook',       'Part-time');
INSERT INTO Employee VALUES (9,  'Derek',     'Nelson',   '2023-07-20', 'Cook',    15.50, 'Line Cook',       'Part-time');
INSERT INTO Employee VALUES (10, 'Ashley',    'Carter',   '2023-09-05', 'Cook',    15.50, 'Line Cook',       'Part-time');
INSERT INTO Employee VALUES (11, 'Brandon',   'Mitchell', '2024-01-15', 'Cook',    15.00, 'Line Cook',       'Part-time');
INSERT INTO Employee VALUES (12, 'Stephanie', 'Perez',    '2021-05-20', 'Cashier', 15.50, 'Cashier',         'Full-time');
INSERT INTO Employee VALUES (13, 'Tyler',     'Roberts',  '2022-03-10', 'Cashier', 15.00, 'Cashier',         'Full-time');
INSERT INTO Employee VALUES (14, 'Amanda',    'Turner',   '2022-08-22', 'Cashier', 15.00, 'Cashier',         'Part-time');
INSERT INTO Employee VALUES (15, 'Justin',    'Phillips', '2023-02-14', 'Cashier', 14.50, 'Cashier',         'Part-time');
INSERT INTO Employee VALUES (16, 'Melissa',   'Campbell', '2023-06-30', 'Cashier', 14.50, 'Cashier',         'Part-time');
INSERT INTO Employee VALUES (17, 'Ryan',      'Parker',   '2024-02-01', 'Cashier', 14.50, 'Cashier',         'Part-time');

-- ================================================
-- MENU_ITEM (22 records - real Starbird items)
-- ================================================
INSERT INTO Menu_Item VALUES (1,  'Starbird Sandwich',    'Sandwiches',   12.47, 'Crispy chicken, Star Sauce, lettuce, brioche bun',               NULL, 'No',  'In-store', 730);
INSERT INTO Menu_Item VALUES (2,  'Nashville Hot Bird',   'Sandwiches',   12.47, 'Crispy chicken, Nashville hot spices, dill pickles, ranch',      NULL, 'No',  'In-store', 820);
INSERT INTO Menu_Item VALUES (3,  'Big Star Sandwich',    'Sandwiches',   13.47, 'Crispy chicken, crispy bacon, classic slaw, Star Sauce',         NULL, 'No',  'In-store', 880);
INSERT INTO Menu_Item VALUES (4,  'Chimichurri Sandwich', 'Sandwiches',   12.47, 'Crispy chicken, chimichurri, roasted red peppers, arugula',      NULL, 'Yes', 'In-store', 790);
INSERT INTO Menu_Item VALUES (5,  'Classic Tender Box',   'Tender Boxes', 13.97, 'Three crispy tenders, house fries, choice of sauce',            NULL, 'No',  'In-store', 850);
INSERT INTO Menu_Item VALUES (6,  'Nashville Tender Box', 'Tender Boxes', 13.97, 'Three Nashville hot tenders, house fries, Greek yogurt ranch',  NULL, 'No',  'In-store', 980);
INSERT INTO Menu_Item VALUES (7,  'Sweet Thai Tender Box','Tender Boxes', 13.97, 'Three sweet Thai glazed tenders, house fries, spicy herb aioli', NULL, 'No',  'In-store', 920);
INSERT INTO Menu_Item VALUES (8,  'Chimichurri Tender Box','Tender Boxes',14.97, 'Three chimichurri tenders, house fries, roasted garlic aioli',  NULL, 'Yes', 'In-store', 900);
INSERT INTO Menu_Item VALUES (9,  'Crispy Wings 6pc',     'Wings',        13.97, 'Six crispy wings, choice of house-made sauce',                  NULL, 'No',  'In-store', 640);
INSERT INTO Menu_Item VALUES (10, 'Crispy Wings 12pc',    'Wings',        24.97, 'Twelve crispy wings, choice of two house-made sauces',          NULL, 'No',  'In-store', 1280);
INSERT INTO Menu_Item VALUES (11, 'Chimichurri Salad',    'Salads',       15.97, 'Crispy chicken, chimichurri, white beans, roasted red peppers', NULL, 'Yes', 'In-store', 520);
INSERT INTO Menu_Item VALUES (12, 'Chop Salad',           'Salads',       15.97, 'Crispy chicken, avocado mash, cotija, chipotle lime dressing',  NULL, 'No',  'In-store', 580);
INSERT INTO Menu_Item VALUES (13, 'Sweet Thai Salad',     'Salads',       15.97, 'Sweet Thai tenders, cucumbers, Asian herbs, green papaya sauce', NULL, 'No',  'In-store', 610);
INSERT INTO Menu_Item VALUES (14, 'House Fries',          'Sides',         5.97, 'Crispy seasoned fries served with choice of house-made sauce',  NULL, 'No',  'In-store', 430);
INSERT INTO Menu_Item VALUES (15, 'Truffle Fries',        'Sides',         8.97, 'House fries, truffle oil, grated parmesan, chopped parsley',    NULL, 'No',  'In-store', 520);
INSERT INTO Menu_Item VALUES (16, 'Super Slaw',           'Sides',         5.97, 'Classic coleslaw with house-made dressing',                     NULL, 'No',  'In-store', 190);
INSERT INTO Menu_Item VALUES (17, 'Elote Corn',           'Sides',         5.97, 'House roasted elote corn, cotija cheese, tajin, cilantro',      NULL, 'Yes', 'In-store', 210);
INSERT INTO Menu_Item VALUES (18, 'Lemonade',             'Beverages',     3.97, 'House-made fresh squeezed lemonade',                            NULL, 'No',  'In-store', 180);
INSERT INTO Menu_Item VALUES (19, 'Iced Tea',             'Beverages',     3.97, 'House-made iced tea, lightly sweetened',                        NULL, 'No',  'In-store', 60);
INSERT INTO Menu_Item VALUES (20, 'Craft Soda',           'Beverages',     3.97, 'Local Alameda craft soda, choice of flavor',                    NULL, 'No',  'In-store', 150);
INSERT INTO Menu_Item VALUES (21, 'Churros',              'Treats',        5.97, 'Sugar dusted churros served with maple syrup',                  NULL, 'No',  'In-store', 170);
INSERT INTO Menu_Item VALUES (22, 'Ice Cream Sandwich',   'Treats',        6.97, 'Starbird house-made ice cream sandwich',                        NULL, 'No',  'In-store', 470);

-- ================================================
-- ORDERS (38 records)
-- Tax = Subtotal x 0.0925 (CA rate)
-- Order_Total = Subtotal + Tax
-- Points_Earned = Order_Total x 10 rounded
-- ================================================
-- Customers 1-7: 1 order each
-- Order 1: Subtotal=22.41, Tax=2.07, Total=24.48, Points=245
INSERT INTO Orders VALUES (1,  '2026-04-01', '11:30:00', 'Dine-in',  'Completed', 22.41, 2.07, 24.48, 245, 1);
-- Order 2: Subtotal=18.44, Tax=1.70, Total=20.14, Points=201
INSERT INTO Orders VALUES (2,  '2026-04-02', '12:15:00', 'Takeout',  'Completed', 18.44, 1.70, 20.14, 201, 2);
-- Order 3: Subtotal=13.97, Tax=1.29, Total=15.26, Points=153
INSERT INTO Orders VALUES (3,  '2026-04-03', '13:00:00', 'Drive-up', 'Completed', 13.97, 1.29, 15.26, 153, 3);
-- Order 4: Subtotal=23.91, Tax=2.21, Total=26.12, Points=261
INSERT INTO Orders VALUES (4,  '2026-04-04', '14:30:00', 'Delivery', 'Completed', 23.91, 2.21, 26.12, 261, 4);
-- Order 5: Subtotal=23.41, Tax=2.17, Total=25.58, Points=256
INSERT INTO Orders VALUES (5,  '2026-04-05', '11:00:00', 'Dine-in',  'Completed', 23.41, 2.17, 25.58, 256, 5);
-- Order 6: Subtotal=19.94, Tax=1.84, Total=21.78, Points=218
INSERT INTO Orders VALUES (6,  '2026-04-06', '12:45:00', 'Takeout',  'Completed', 19.94, 1.84, 21.78, 218, 6);
-- Order 7: Subtotal=12.47, Tax=1.15, Total=13.62, Points=136
INSERT INTO Orders VALUES (7,  '2026-04-07', '13:30:00', 'Drive-up', 'Completed', 12.47, 1.15, 13.62, 136, 7);

-- Customers 8-15: 2 orders each
-- Order 8: Subtotal=30.94, Tax=2.86, Total=33.80, Points=338
INSERT INTO Orders VALUES (8,  '2026-04-01', '11:45:00', 'Dine-in',  'Completed', 30.94, 2.86, 33.80, 338, 8);
-- Order 9: Subtotal=17.44, Tax=1.61, Total=19.05, Points=191
INSERT INTO Orders VALUES (9,  '2026-04-08', '12:30:00', 'Takeout',  'Completed', 17.44, 1.61, 19.05, 191, 8);
-- Order 10: Subtotal=17.94, Tax=1.66, Total=19.60, Points=196
INSERT INTO Orders VALUES (10, '2026-04-02', '13:15:00', 'Drive-up', 'Completed', 17.94, 1.66, 19.60, 196, 9);
-- Order 11: Subtotal=33.94, Tax=3.14, Total=37.08, Points=371
INSERT INTO Orders VALUES (11, '2026-04-09', '14:00:00', 'Delivery', 'Completed', 33.94, 3.14, 37.08, 371, 9);
-- Order 12: Subtotal=18.44, Tax=1.70, Total=20.14, Points=201
INSERT INTO Orders VALUES (12, '2026-04-03', '11:30:00', 'Dine-in',  'Completed', 18.44, 1.70, 20.14, 201, 10);
-- Order 13: Subtotal=19.94, Tax=1.84, Total=21.78, Points=218
INSERT INTO Orders VALUES (13, '2026-04-10', '12:15:00', 'Takeout',  'Completed', 19.94, 1.84, 21.78, 218, 10);
-- Order 14: Subtotal=12.47, Tax=1.15, Total=13.62, Points=136
INSERT INTO Orders VALUES (14, '2026-04-04', '13:00:00', 'Drive-up', 'Completed', 12.47, 1.15, 13.62, 136, 11);
-- Order 15: Subtotal=24.91, Tax=2.30, Total=27.21, Points=272
INSERT INTO Orders VALUES (15, '2026-04-11', '14:30:00', 'Delivery', 'Completed', 24.91, 2.30, 27.21, 272, 11);
-- Order 16: Subtotal=22.44, Tax=2.08, Total=24.52, Points=245
INSERT INTO Orders VALUES (16, '2026-04-05', '11:00:00', 'Dine-in',  'Completed', 22.44, 2.08, 24.52, 245, 12);
-- Order 17: Subtotal=30.94, Tax=2.86, Total=33.80, Points=338
INSERT INTO Orders VALUES (17, '2026-04-12', '12:45:00', 'Takeout',  'Completed', 30.94, 2.86, 33.80, 338, 12);
-- Order 18: Subtotal=17.94, Tax=1.66, Total=19.60, Points=196
INSERT INTO Orders VALUES (18, '2026-04-06', '13:30:00', 'Drive-up', 'Completed', 17.94, 1.66, 19.60, 196, 13);
-- Order 19: Subtotal=18.44, Tax=1.70, Total=20.14, Points=201
INSERT INTO Orders VALUES (19, '2026-04-13', '11:15:00', 'Delivery', 'Completed', 18.44, 1.70, 20.14, 201, 13);
-- Order 20: Subtotal=19.94, Tax=1.84, Total=21.78, Points=218
INSERT INTO Orders VALUES (20, '2026-04-07', '12:00:00', 'Dine-in',  'Completed', 19.94, 1.84, 21.78, 218, 14);
-- Order 21: Subtotal=23.91, Tax=2.21, Total=26.12, Points=261
INSERT INTO Orders VALUES (21, '2026-04-14', '13:45:00', 'Takeout',  'Completed', 23.91, 2.21, 26.12, 261, 14);
-- Order 22: Subtotal=12.47, Tax=1.15, Total=13.62, Points=136
INSERT INTO Orders VALUES (22, '2026-04-08', '11:30:00', 'Drive-up', 'Completed', 12.47, 1.15, 13.62, 136, 15);
-- Order 23: Subtotal=33.94, Tax=3.14, Total=37.08, Points=371
INSERT INTO Orders VALUES (23, '2026-04-15', '12:15:00', 'Delivery', 'Completed', 33.94, 3.14, 37.08, 371, 15);

-- Customers 16-20: 3 orders each
-- Order 24: Subtotal=18.44, Tax=1.70, Total=20.14, Points=201
INSERT INTO Orders VALUES (24, '2026-04-01', '11:00:00', 'Dine-in',  'Completed', 18.44, 1.70, 20.14, 201, 16);
-- Order 25: Subtotal=13.97, Tax=1.29, Total=15.26, Points=153
INSERT INTO Orders VALUES (25, '2026-04-09', '12:30:00', 'Takeout',  'Completed', 13.97, 1.29, 15.26, 153, 16);
-- Order 26: Subtotal=24.91, Tax=2.30, Total=27.21, Points=272
INSERT INTO Orders VALUES (26, '2026-04-17', '13:00:00', 'Drive-up', 'Completed', 24.91, 2.30, 27.21, 272, 16);
-- Order 27: Subtotal=19.94, Tax=1.84, Total=21.78, Points=218
INSERT INTO Orders VALUES (27, '2026-04-02', '11:45:00', 'Delivery', 'Completed', 19.94, 1.84, 21.78, 218, 17);
-- Order 28: Subtotal=30.94, Tax=2.86, Total=33.80, Points=338
INSERT INTO Orders VALUES (28, '2026-04-10', '12:15:00', 'Dine-in',  'Completed', 30.94, 2.86, 33.80, 338, 17);
-- Order 29: Subtotal=23.41, Tax=2.17, Total=25.58, Points=256
INSERT INTO Orders VALUES (29, '2026-04-18', '13:30:00', 'Takeout',  'Completed', 23.41, 2.17, 25.58, 256, 17);
-- Order 30: Subtotal=12.47, Tax=1.15, Total=13.62, Points=136
INSERT INTO Orders VALUES (30, '2026-04-03', '11:00:00', 'Drive-up', 'Completed', 12.47, 1.15, 13.62, 136, 18);
-- Order 31: Subtotal=18.44, Tax=1.70, Total=20.14, Points=201
INSERT INTO Orders VALUES (31, '2026-04-11', '12:45:00', 'Delivery', 'Completed', 18.44, 1.70, 20.14, 201, 18);
-- Order 32: Subtotal=33.94, Tax=3.14, Total=37.08, Points=371
INSERT INTO Orders VALUES (32, '2026-04-19', '13:15:00', 'Dine-in',  'Completed', 33.94, 3.14, 37.08, 371, 18);
-- Order 33: Subtotal=19.94, Tax=1.84, Total=21.78, Points=218
INSERT INTO Orders VALUES (33, '2026-04-04', '11:30:00', 'Takeout',  'Completed', 19.94, 1.84, 21.78, 218, 19);
-- Order 34: Subtotal=24.91, Tax=2.30, Total=27.21, Points=272
INSERT INTO Orders VALUES (34, '2026-04-12', '12:00:00', 'Drive-up', 'Completed', 24.91, 2.30, 27.21, 272, 19);
-- Order 35: Subtotal=22.41, Tax=2.07, Total=24.48, Points=245
INSERT INTO Orders VALUES (35, '2026-04-20', '13:45:00', 'Delivery', 'Completed', 22.41, 2.07, 24.48, 245, 19);
-- Order 36: Subtotal=13.97, Tax=1.29, Total=15.26, Points=153
INSERT INTO Orders VALUES (36, '2026-04-05', '11:15:00', 'Dine-in',  'Completed', 13.97, 1.29, 15.26, 153, 20);
-- Order 37: Subtotal=30.94, Tax=2.86, Total=33.80, Points=338
INSERT INTO Orders VALUES (37, '2026-04-13', '12:30:00', 'Takeout',  'Completed', 30.94, 2.86, 33.80, 338, 20);
-- Order 38: Subtotal=23.41, Tax=2.17, Total=25.58, Points=256
INSERT INTO Orders VALUES (38, '2026-04-21', '13:00:00', 'Drive-up', 'Completed', 23.41, 2.17, 25.58, 256, 20);

-- ================================================
-- ORDER_LINE
-- Item_Subtotal = Quantity x Unit_Price
-- Notes filled in for some rows
-- ================================================
-- Order 1 (Total=22.41): Starbird Sandwich + House Fries + Lemonade
INSERT INTO Order_Line VALUES (1,  1,  1,  1, 12.47, 12.47, 'Extra Star Sauce',  1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (2,  1,  14, 1,  5.97,  5.97, NULL,                2, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (3,  1,  18, 1,  3.97,  3.97, 'Light ice',         3, 0.00, 'Completed');
-- Order 2 (Total=18.44): Nashville Hot Bird + House Fries
INSERT INTO Order_Line VALUES (4,  2,  2,  1, 12.47, 12.47, 'Extra pickles',     1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (5,  2,  14, 1,  5.97,  5.97, NULL,                2, 0.00, 'Completed');
-- Order 3 (Total=13.97): Classic Tender Box
INSERT INTO Order_Line VALUES (6,  3,  5,  1, 13.97, 13.97, 'Buffalo sauce',     1, 0.00, 'Completed');
-- Order 4 (Total=23.91): Sweet Thai Tender Box + Lemonade + Churros
INSERT INTO Order_Line VALUES (7,  4,  7,  1, 13.97, 13.97, NULL,                1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (8,  4,  18, 1,  3.97,  3.97, 'No ice',            2, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (9,  4,  21, 1,  5.97,  5.97, NULL,                3, 0.00, 'Completed');
-- Order 5 (Total=23.41): Big Star Sandwich + House Fries + Iced Tea
INSERT INTO Order_Line VALUES (10, 5,  3,  1, 13.47, 13.47, 'No bacon',          1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (11, 5,  14, 1,  5.97,  5.97, 'Well done',         2, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (12, 5,  19, 1,  3.97,  3.97, NULL,                3, 0.00, 'Completed');
-- Order 6 (Total=19.94): Chop Salad + Iced Tea
INSERT INTO Order_Line VALUES (13, 6,  12, 1, 15.97, 15.97, 'Dressing on side',  1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (14, 6,  19, 1,  3.97,  3.97, NULL,                2, 0.00, 'Completed');
-- Order 7 (Total=12.47): Starbird Sandwich
INSERT INTO Order_Line VALUES (15, 7,  1,  1, 12.47, 12.47, 'No lettuce',        1, 0.00, 'Completed');
-- Order 8 (Total=30.94): Crispy Wings 12pc + House Fries
INSERT INTO Order_Line VALUES (16, 8,  10, 1, 24.97, 24.97, 'Lemon pepper sauce',1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (17, 8,  14, 1,  5.97,  5.97, NULL,                2, 0.00, 'Completed');
-- Order 9 (Total=17.44): Big Star Sandwich + Craft Soda
INSERT INTO Order_Line VALUES (18, 9,  3,  1, 13.47, 13.47, NULL,                1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (19, 9,  20, 1,  3.97,  3.97, NULL,                2, 0.00, 'Completed');
-- Order 10 (Total=17.94): Classic Tender Box + Lemonade
INSERT INTO Order_Line VALUES (20, 10, 5,  1, 13.97, 13.97, 'Garlic parmesan',   1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (21, 10, 18, 1,  3.97,  3.97, 'Extra lemon',       2, 0.00, 'Completed');
-- Order 11 (Total=33.94): Crispy Wings 12pc + Truffle Fries + Super Slaw
INSERT INTO Order_Line VALUES (22, 11, 10, 1, 24.97, 24.97, 'Classic buffalo',   1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (23, 11, 15, 1,  8.97,  8.97, NULL,                2, 0.00, 'Completed');
-- Order 12 (Total=18.44): Nashville Hot Bird + House Fries
INSERT INTO Order_Line VALUES (24, 12, 2,  1, 12.47, 12.47, 'Extra hot',         1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (25, 12, 14, 1,  5.97,  5.97, NULL,                2, 0.00, 'Completed');
-- Order 13 (Total=19.94): Chop Salad + Craft Soda
INSERT INTO Order_Line VALUES (26, 13, 12, 1, 15.97, 15.97, NULL,                1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (27, 13, 20, 1,  3.97,  3.97, NULL,                2, 0.00, 'Completed');
-- Order 14 (Total=12.47): Starbird Sandwich
INSERT INTO Order_Line VALUES (28, 14, 1,  1, 12.47, 12.47, NULL,                1, 0.00, 'Completed');
-- Order 15 (Total=24.91): Sweet Thai Tender Box + Lemonade + Ice Cream Sandwich
INSERT INTO Order_Line VALUES (29, 15, 7,  1, 13.97, 13.97, NULL,                1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (30, 15, 18, 1,  3.97,  3.97, 'Light ice',         2, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (31, 15, 22, 1,  6.97,  6.97, NULL,                3, 0.00, 'Completed');
-- Order 16 (Total=22.44): Big Star Sandwich + Truffle Fries
INSERT INTO Order_Line VALUES (32, 16, 3,  1, 13.47, 13.47, 'Extra sauce',       1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (33, 16, 15, 1,  8.97,  8.97, NULL,                2, 0.00, 'Completed');
-- Order 17 (Total=30.94): Crispy Wings 12pc + House Fries
INSERT INTO Order_Line VALUES (34, 17, 10, 1, 24.97, 24.97, 'Sweet Thai sauce',  1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (35, 17, 14, 1,  5.97,  5.97, 'Well done',         2, 0.00, 'Completed');
-- Order 18 (Total=17.94): Classic Tender Box + Lemonade
INSERT INTO Order_Line VALUES (36, 18, 5,  1, 13.97, 13.97, 'Nashville sauce',   1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (37, 18, 18, 1,  3.97,  3.97, NULL,                2, 0.00, 'Completed');
-- Order 19 (Total=18.44): Nashville Hot Bird + House Fries
INSERT INTO Order_Line VALUES (38, 19, 2,  1, 12.47, 12.47, NULL,                1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (39, 19, 14, 1,  5.97,  5.97, NULL,                2, 0.00, 'Completed');
-- Order 20 (Total=19.94): Chop Salad + Craft Soda
INSERT INTO Order_Line VALUES (40, 20, 12, 1, 15.97, 15.97, 'Dressing on side',  1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (41, 20, 20, 1,  3.97,  3.97, NULL,                2, 0.00, 'Completed');
-- Order 21 (Total=23.91): Sweet Thai Tender Box + Lemonade + Churros
INSERT INTO Order_Line VALUES (42, 21, 7,  1, 13.97, 13.97, NULL,                1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (43, 21, 18, 1,  3.97,  3.97, 'No ice',            2, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (44, 21, 21, 1,  5.97,  5.97, NULL,                3, 0.00, 'Completed');
-- Order 22 (Total=12.47): Starbird Sandwich
INSERT INTO Order_Line VALUES (45, 22, 1,  1, 12.47, 12.47, 'Extra Star Sauce',  1, 0.00, 'Completed');
-- Order 23 (Total=33.94): Crispy Wings 12pc + Truffle Fries
INSERT INTO Order_Line VALUES (46, 23, 10, 1, 24.97, 24.97, 'Cali Gold BBQ',     1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (47, 23, 15, 1,  8.97,  8.97, NULL,                2, 0.00, 'Completed');
-- Order 24 (Total=18.44): Nashville Hot Bird + House Fries
INSERT INTO Order_Line VALUES (48, 24, 2,  1, 12.47, 12.47, NULL,                1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (49, 24, 14, 1,  5.97,  5.97, NULL,                2, 0.00, 'Completed');
-- Order 25 (Total=13.97): Classic Tender Box
INSERT INTO Order_Line VALUES (50, 25, 5,  1, 13.97, 13.97, 'Garlic parmesan',   1, 0.00, 'Completed');
-- Order 26 (Total=24.91): Sweet Thai Tender Box + Iced Tea + Ice Cream Sandwich
INSERT INTO Order_Line VALUES (51, 26, 7,  1, 13.97, 13.97, NULL,                1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (52, 26, 19, 1,  3.97,  3.97, NULL,                2, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (53, 26, 22, 1,  6.97,  6.97, NULL,                3, 0.00, 'Completed');
-- Order 27 (Total=19.94): Chop Salad + Craft Soda
INSERT INTO Order_Line VALUES (54, 27, 12, 1, 15.97, 15.97, 'Extra avocado',     1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (55, 27, 20, 1,  3.97,  3.97, NULL,                2, 0.00, 'Completed');
-- Order 28 (Total=30.94): Crispy Wings 12pc + House Fries
INSERT INTO Order_Line VALUES (56, 28, 10, 1, 24.97, 24.97, 'Nashville Hot',     1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (57, 28, 14, 1,  5.97,  5.97, 'Well done',         2, 0.00, 'Completed');
-- Order 29 (Total=23.41): Big Star Sandwich + Iced Tea + Churros
INSERT INTO Order_Line VALUES (58, 29, 3,  1, 13.47, 13.47, NULL,                1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (59, 29, 19, 1,  3.97,  3.97, NULL,                2, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (60, 29, 21, 1,  5.97,  5.97, NULL,                3, 0.00, 'Completed');
-- Order 30 (Total=12.47): Starbird Sandwich
INSERT INTO Order_Line VALUES (61, 30, 1,  1, 12.47, 12.47, 'No lettuce',        1, 0.00, 'Completed');
-- Order 31 (Total=18.44): Nashville Hot Bird + House Fries
INSERT INTO Order_Line VALUES (62, 31, 2,  1, 12.47, 12.47, NULL,                1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (63, 31, 14, 1,  5.97,  5.97, NULL,                2, 0.00, 'Completed');
-- Order 32 (Total=33.94): Crispy Wings 12pc + Truffle Fries
INSERT INTO Order_Line VALUES (64, 32, 10, 1, 24.97, 24.97, 'Lemon pepper',      1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (65, 32, 15, 1,  8.97,  8.97, NULL,                2, 0.00, 'Completed');
-- Order 33 (Total=19.94): Chop Salad + Craft Soda
INSERT INTO Order_Line VALUES (66, 33, 12, 1, 15.97, 15.97, NULL,                1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (67, 33, 20, 1,  3.97,  3.97, NULL,                2, 0.00, 'Completed');
-- Order 34 (Total=24.91): Sweet Thai Tender Box + Iced Tea + Ice Cream Sandwich
INSERT INTO Order_Line VALUES (68, 34, 7,  1, 13.97, 13.97, 'Extra sauce',       1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (69, 34, 19, 1,  3.97,  3.97, 'Light ice',         2, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (70, 34, 22, 1,  6.97,  6.97, NULL,                3, 0.00, 'Completed');
-- Order 35 (Total=22.41): Big Star Sandwich + House Fries + Lemonade
INSERT INTO Order_Line VALUES (71, 35, 3,  1, 13.47, 13.47, NULL,                1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (72, 35, 14, 1,  5.97,  5.97, NULL,                2, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (73, 35, 18, 1,  3.97,  3.97, NULL,                3, 0.00, 'Completed');
-- Order 36 (Total=13.97): Classic Tender Box
INSERT INTO Order_Line VALUES (74, 36, 5,  1, 13.97, 13.97, 'Buffalo sauce',     1, 0.00, 'Completed');
-- Order 37 (Total=30.94): Crispy Wings 12pc + House Fries
INSERT INTO Order_Line VALUES (75, 37, 10, 1, 24.97, 24.97, 'Garlic parmesan',   1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (76, 37, 14, 1,  5.97,  5.97, 'Well done',         2, 0.00, 'Completed');
-- Order 38 (Total=23.41): Big Star Sandwich + Iced Tea + Churros
INSERT INTO Order_Line VALUES (77, 38, 3,  1, 13.47, 13.47, NULL,                1, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (78, 38, 19, 1,  3.97,  3.97, NULL,                2, 0.00, 'Completed');
INSERT INTO Order_Line VALUES (79, 38, 21, 1,  5.97,  5.97, NULL,                3, 0.00, 'Completed');

-- ================================================
-- PREPARED_BY (some orders have 2 employees)
-- Only cooks prepare food
-- ================================================
INSERT INTO Prepared_by VALUES (4,  1,  '11:30:00', 'Cook', '00:12:00');
INSERT INTO Prepared_by VALUES (5,  1,  '11:30:00', 'Cook', '00:10:00');
INSERT INTO Prepared_by VALUES (4,  2,  '12:15:00', 'Cook', '00:11:00');
INSERT INTO Prepared_by VALUES (6,  3,  '13:00:00', 'Cook', '00:09:00');
INSERT INTO Prepared_by VALUES (5,  4,  '14:30:00', 'Cook', '00:13:00');
INSERT INTO Prepared_by VALUES (7,  4,  '14:30:00', 'Cook', '00:08:00');
INSERT INTO Prepared_by VALUES (4,  5,  '11:00:00', 'Cook', '00:12:00');
INSERT INTO Prepared_by VALUES (8,  5,  '11:00:00', 'Cook', '00:11:00');
INSERT INTO Prepared_by VALUES (6,  6,  '12:45:00', 'Cook', '00:10:00');
INSERT INTO Prepared_by VALUES (7,  7,  '13:30:00', 'Cook', '00:09:00');
INSERT INTO Prepared_by VALUES (4,  8,  '11:45:00', 'Cook', '00:15:00');
INSERT INTO Prepared_by VALUES (5,  8,  '11:45:00', 'Cook', '00:14:00');
INSERT INTO Prepared_by VALUES (6,  9,  '12:30:00', 'Cook', '00:11:00');
INSERT INTO Prepared_by VALUES (7,  10, '13:15:00', 'Cook', '00:10:00');
INSERT INTO Prepared_by VALUES (4,  11, '14:00:00', 'Cook', '00:16:00');
INSERT INTO Prepared_by VALUES (8,  11, '14:00:00', 'Cook', '00:15:00');
INSERT INTO Prepared_by VALUES (5,  12, '11:30:00', 'Cook', '00:11:00');
INSERT INTO Prepared_by VALUES (9,  13, '12:15:00', 'Cook', '00:10:00');
INSERT INTO Prepared_by VALUES (6,  14, '13:00:00', 'Cook', '00:09:00');
INSERT INTO Prepared_by VALUES (4,  15, '14:30:00', 'Cook', '00:13:00');
INSERT INTO Prepared_by VALUES (7,  15, '14:30:00', 'Cook', '00:12:00');
INSERT INTO Prepared_by VALUES (5,  16, '11:00:00', 'Cook', '00:12:00');
INSERT INTO Prepared_by VALUES (8,  17, '12:45:00', 'Cook', '00:15:00');
INSERT INTO Prepared_by VALUES (9,  17, '12:45:00', 'Cook', '00:14:00');
INSERT INTO Prepared_by VALUES (6,  18, '13:30:00', 'Cook', '00:10:00');
INSERT INTO Prepared_by VALUES (4,  19, '11:15:00', 'Cook', '00:11:00');
INSERT INTO Prepared_by VALUES (7,  20, '12:00:00', 'Cook', '00:10:00');
INSERT INTO Prepared_by VALUES (5,  21, '13:45:00', 'Cook', '00:13:00');
INSERT INTO Prepared_by VALUES (9,  21, '13:45:00', 'Cook', '00:12:00');
INSERT INTO Prepared_by VALUES (6,  22, '11:30:00', 'Cook', '00:09:00');
INSERT INTO Prepared_by VALUES (4,  23, '12:15:00', 'Cook', '00:16:00');
INSERT INTO Prepared_by VALUES (8,  23, '12:15:00', 'Cook', '00:15:00');
INSERT INTO Prepared_by VALUES (5,  24, '11:00:00', 'Cook', '00:11:00');
INSERT INTO Prepared_by VALUES (7,  25, '12:30:00', 'Cook', '00:10:00');
INSERT INTO Prepared_by VALUES (6,  26, '13:00:00', 'Cook', '00:13:00');
INSERT INTO Prepared_by VALUES (9,  26, '13:00:00', 'Cook', '00:12:00');
INSERT INTO Prepared_by VALUES (4,  27, '11:45:00', 'Cook', '00:10:00');
INSERT INTO Prepared_by VALUES (5,  28, '12:15:00', 'Cook', '00:15:00');
INSERT INTO Prepared_by VALUES (8,  28, '12:15:00', 'Cook', '00:14:00');
INSERT INTO Prepared_by VALUES (7,  29, '13:30:00', 'Cook', '00:12:00');
INSERT INTO Prepared_by VALUES (6,  30, '11:00:00', 'Cook', '00:09:00');
INSERT INTO Prepared_by VALUES (4,  31, '12:45:00', 'Cook', '00:11:00');
INSERT INTO Prepared_by VALUES (9,  32, '13:15:00', 'Cook', '00:16:00');
INSERT INTO Prepared_by VALUES (5,  32, '13:15:00', 'Cook', '00:15:00');
INSERT INTO Prepared_by VALUES (8,  33, '11:30:00', 'Cook', '00:10:00');
INSERT INTO Prepared_by VALUES (7,  34, '12:00:00', 'Cook', '00:13:00');
INSERT INTO Prepared_by VALUES (4,  35, '13:45:00', 'Cook', '00:12:00');
INSERT INTO Prepared_by VALUES (6,  36, '11:15:00', 'Cook', '00:10:00');
INSERT INTO Prepared_by VALUES (5,  37, '12:30:00', 'Cook', '00:15:00');
INSERT INTO Prepared_by VALUES (9,  37, '12:30:00', 'Cook', '00:14:00');
INSERT INTO Prepared_by VALUES (8,  38, '13:00:00', 'Cook', '00:11:00');

-- ================================================
-- PAYMENT (38 records - one per order)
-- Tip only on card/mobile payments
-- Change_Given only on cash payments
-- ================================================
INSERT INTO Payment VALUES (1,  1,  1,  'Credit Card', '2026-04-01 11:45:00', 2.00, 'Completed', 'TXN100001', 0.00);
INSERT INTO Payment VALUES (2,  2,  2,  'Mobile Pay',  '2026-04-02 12:30:00', 0.00, 'Completed', 'TXN100002', 0.00);
INSERT INTO Payment VALUES (3,  3,  3,  'Cash',        '2026-04-03 13:15:00', 0.00, 'Completed', 'TXN100003', 4.74);
INSERT INTO Payment VALUES (4,  4,  4,  'Debit Card',  '2026-04-04 14:45:00', 3.00, 'Completed', 'TXN100004', 0.00);
INSERT INTO Payment VALUES (5,  5,  5,  'Credit Card', '2026-04-05 11:15:00', 2.00, 'Completed', 'TXN100005', 0.00);
INSERT INTO Payment VALUES (6,  6,  6,  'Mobile Pay',  '2026-04-06 13:00:00', 0.00, 'Completed', 'TXN100006', 0.00);
INSERT INTO Payment VALUES (7,  7,  7,  'Cash',        '2026-04-07 13:45:00', 0.00, 'Completed', 'TXN100007', 6.38);
INSERT INTO Payment VALUES (8,  8,  8,  'Credit Card', '2026-04-01 12:00:00', 5.00, 'Completed', 'TXN100008', 0.00);
INSERT INTO Payment VALUES (9,  8,  9,  'Credit Card', '2026-04-08 12:45:00', 2.00, 'Completed', 'TXN100009', 0.00);
INSERT INTO Payment VALUES (10, 9,  10, 'Debit Card',  '2026-04-02 13:30:00', 1.00, 'Completed', 'TXN100010', 0.00);
INSERT INTO Payment VALUES (11, 9,  11, 'Debit Card',  '2026-04-09 14:15:00', 4.00, 'Completed', 'TXN100011', 0.00);
INSERT INTO Payment VALUES (12, 10, 12, 'Mobile Pay',  '2026-04-03 11:45:00', 0.00, 'Completed', 'TXN100012', 0.00);
INSERT INTO Payment VALUES (13, 10, 13, 'Mobile Pay',  '2026-04-10 12:30:00', 0.00, 'Completed', 'TXN100013', 0.00);
INSERT INTO Payment VALUES (14, 11, 14, 'Cash',        '2026-04-04 13:15:00', 0.00, 'Completed', 'TXN100014', 6.38);
INSERT INTO Payment VALUES (15, 11, 15, 'Credit Card', '2026-04-11 14:45:00', 3.00, 'Completed', 'TXN100015', 0.00);
INSERT INTO Payment VALUES (16, 12, 16, 'Mobile Pay',  '2026-04-05 11:15:00', 0.00, 'Completed', 'TXN100016', 0.00);
INSERT INTO Payment VALUES (17, 12, 17, 'Credit Card', '2026-04-12 13:00:00', 5.00, 'Completed', 'TXN100017', 0.00);
INSERT INTO Payment VALUES (18, 13, 18, 'Debit Card',  '2026-04-06 13:45:00', 1.00, 'Completed', 'TXN100018', 0.00);
INSERT INTO Payment VALUES (19, 13, 19, 'Cash',        '2026-04-13 11:30:00', 0.00, 'Completed', 'TXN100019', 0.41);
INSERT INTO Payment VALUES (20, 14, 20, 'Credit Card', '2026-04-07 12:15:00', 2.00, 'Completed', 'TXN100020', 0.00);
INSERT INTO Payment VALUES (21, 14, 21, 'Debit Card',  '2026-04-14 14:00:00', 3.00, 'Completed', 'TXN100021', 0.00);
INSERT INTO Payment VALUES (22, 15, 22, 'Mobile Pay',  '2026-04-08 11:45:00', 0.00, 'Completed', 'TXN100022', 0.00);
INSERT INTO Payment VALUES (23, 15, 23, 'Cash',        '2026-04-15 12:30:00', 0.00, 'Completed', 'TXN100023', 2.92);
INSERT INTO Payment VALUES (24, 16, 24, 'Credit Card', '2026-04-01 11:15:00', 2.00, 'Completed', 'TXN100024', 0.00);
INSERT INTO Payment VALUES (25, 16, 25, 'Mobile Pay',  '2026-04-09 12:45:00', 0.00, 'Completed', 'TXN100025', 0.00);
INSERT INTO Payment VALUES (26, 16, 26, 'Debit Card',  '2026-04-17 13:15:00', 3.00, 'Completed', 'TXN100026', 0.00);
INSERT INTO Payment VALUES (27, 17, 27, 'Cash',        '2026-04-02 12:00:00', 0.00, 'Completed', 'TXN100027', 3.22);
INSERT INTO Payment VALUES (28, 17, 28, 'Credit Card', '2026-04-10 12:30:00', 4.00, 'Completed', 'TXN100028', 0.00);
INSERT INTO Payment VALUES (29, 17, 29, 'Mobile Pay',  '2026-04-18 13:45:00', 0.00, 'Completed', 'TXN100029', 0.00);
INSERT INTO Payment VALUES (30, 18, 30, 'Debit Card',  '2026-04-03 11:15:00', 1.00, 'Completed', 'TXN100030', 0.00);
INSERT INTO Payment VALUES (31, 18, 31, 'Cash',        '2026-04-11 13:00:00', 0.00, 'Completed', 'TXN100031', 4.86);
INSERT INTO Payment VALUES (32, 18, 32, 'Credit Card', '2026-04-19 13:30:00', 5.00, 'Completed', 'TXN100032', 0.00);
INSERT INTO Payment VALUES (33, 19, 33, 'Mobile Pay',  '2026-04-04 11:45:00', 0.00, 'Completed', 'TXN100033', 0.00);
INSERT INTO Payment VALUES (34, 19, 34, 'Debit Card',  '2026-04-12 12:15:00', 3.00, 'Completed', 'TXN100034', 0.00);
INSERT INTO Payment VALUES (35, 19, 35, 'Cash',        '2026-04-20 14:00:00', 0.00, 'Completed', 'TXN100035', 5.52);
INSERT INTO Payment VALUES (36, 20, 36, 'Credit Card', '2026-04-05 11:30:00', 1.00, 'Completed', 'TXN100036', 0.00);
INSERT INTO Payment VALUES (37, 20, 37, 'Mobile Pay',  '2026-04-13 12:45:00', 0.00, 'Completed', 'TXN100037', 0.00);
INSERT INTO Payment VALUES (38, 20, 38, 'Debit Card',  '2026-04-21 13:15:00', 2.00, 'Completed', 'TXN100038', 0.00);