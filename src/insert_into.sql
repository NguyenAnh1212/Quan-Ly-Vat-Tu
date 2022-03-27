use quanlyvattu;
insert into Material
values (1, 'G01', 'Gach Granite', 'vien', 20000),
       (2, 'C01', 'Gach Ceramic', 'vien', 10000),
       (3, 'B01', 'Gach Bong', 'vien', 500000),
       (4, 'M01', 'Gach Men', 'vien', 100000),
       (5, 'GG01', 'Gach Gia Go', 'vien', 30000);

insert into Storage
values (1, 1, 100, 200, 50),
       (2, 2, 50, 100, 30),
       (3, 3, 300, 40, 10),
       (4, 4, 500, 300, 100),
       (5, 5, 200, 30, 20);


insert into Supplier
values (1, 1, 'Song Hong', 'HN', '0934568542'),
       (2, 2, 'Hoa Phat', 'HCM', '0988389874'),
       (3, 3, 'Man Loi', 'DN', '0986325495');

insert into orders
values (1, 1, 1, '2021-5-24 12:21:30'),
       (2, 3, 2, '2021-5-25 8:27:45'),
       (3, 2, 3, '2021-4-19 6:57:26');



insert into GoodDeliveryNote
values (1, 1, '2021-5-15', 'Phan Giang'),
       (2, 2, '2021-3-5', 'Duc Dau'),
       (3, 3, '2021-6-14', 'Canh Yuki');

insert into GoodRecieveNote
values (1, 1, '2021-1-14', 1),
       (2, 2, '2021-5-19', 2),
       (3, 3, '2021-7-20', 3);

insert into OrderDetail
values (1, 1, 3, 100),
       (2, 2, 1, 50),
       (3, 2, 2, 100),
       (4, 3, 4, 140),
       (5, 1, 5, 60),
       (6, 3, 3, 180);

insert into DeliveryNoteDetail
values (1, 1, 1, 200, 30000, 'Gach lat toile'),
       (2, 1, 2, 300, 20000, 'Gach lat kichen'),
       (3, 2, 2, 200, 22000, 'Gach lat living room'),
       (4, 2, 3, 100, 450000, 'Gach lat bath room'),
       (5, 3, 4, 100, 100000, 'Gach lat bed room'),
       (6, 3, 5, 230, 32000, 'small size');

insert into RecieveNoteDetail
values (1, 1, 1, 150, 27000, 'Gach lat kichen'),
       (2, 1, 2, 300, 18000, 'Gach lat toile'),
       (3, 2, 2, 100, 21000, 'Gach lat living room'),
       (4, 2, 3, 100, 440000, 'Gach lat bed room'),
       (5, 3, 4, 100, 90000, 'small size'),
       (6, 3, 5, 230, 30000, 'small size');
