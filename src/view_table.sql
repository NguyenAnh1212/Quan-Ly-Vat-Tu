use quanlyvattu;
create view vw_CTPNhap
as select id, materialID, quantity, price, quantity*recievenotedetail.price as Total_Price
from recievenotedetail;

create view vw_CTPNhap_VT
as select vw_CTPNhap.id,vw_CTPNhap.materialID,M.name,vw_CTPNhap.quantity,vw_CTPNhap.price,vw_CTPNhap.price * vw_CTPNhap.quantity as total
from vw_CTPNhap join Material M on vw_CTPNhap.materialID = M.id;

create view vw_CTPNhap_VT_PN as
select R.id,G.date,G.orderID,R.materialID,M.name,R.quantity,R.price,R.quantity * R.price as total
from RecieveNoteDetail as R
join GoodRecieveNote as G on G.id = R.id
join Material M on R.materialID = M.id;

create view vw_CTPNHAP_VT_PN_DH as
select R.id,G.date,G.orderID,S.code,R.materialID,M.name,R.quantity,R.price,R.quantity * R.price as total
from  RecieveNoteDetail as R
join GoodRecieveNote as G on G.id = R.id
join Material M on R.materialID = M.id
join Supplier S on G.code = S.code;

create view vw_CTPNhap_Loc as
select *
from vw_CTPNhap
where quantity > 5;

CREATE VIEW vw_CTPNHAP_VT_loc as
select R.recieveNoteID, R.materialID,M.name, R.quantity, R.price, R.quantity * R.price as Total_Price
from RecieveNoteDetail as R JOIN Material M on R.materialID = M.id
WHERE M.unit = 'vien';

CREATE VIEW  vw_CTPXUAT as
select D.id, D.materialID, D.quantity, D.price, D.quantity * D.price as total
from DeliveryNoteDetail as D;

create view vw_CTPXuat_VT as
select V.id, V.materialID, M.name, V.price, V.quantity
from vw_CTPXuat as V join Material M on V.materialID = M.id;

create view vw_CTXuat_VT_PX as
select D.id, G.customerName, D.materialID, M.name, D.price, D.quantity
from DeliveryNoteDetail as D
join GoodDeliveryNote as G on G.id = D.deliveryNoteID
join Material M on D.materialID = M.id;







