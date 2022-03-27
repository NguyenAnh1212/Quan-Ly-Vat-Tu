use quanlyvattu;
delimiter //
create procedure getMaterialQuantityByMaterialID(
    IN materialID int)
begin
    # Dùng declare để khai báo biến.
    declare storeQuantity int;
    declare totalImport int;
    declare totalExport int;
    declare result int;
# dùng Set để gán lại giá trị cho biến.
    set storeQuantity = (select S.quantity as quantity
                         from Material as M
                                  join Storage S on M.id = S.materialID
                         where S.id = materialID);
    set totalImport = (select sum(R.quantity)
                       from RecieveNoteDetail as R
                       where materialID = R.materialID);

    set totalExport = (select sum(D.quantity)
                       from DeliveryNoteDetail as D
                       where materialID = D.materialID);
    set result = storeQuantity + totalImport - totalExport;
    select result;
end;
//
delimiter ;
 call getMaterialQuantityByMaterialID(1);

delimiter //
create procedure getTotalPriceByMaterialID(
    IN materialID int)
begin
    select sum(V.price*V.quantity) as Total_Price
                       from vw_CTPXuat_VT as V
                       where V.materialID = materialID;
end;
//
delimiter ;
call getTotalPriceByMaterialID(1);

delimiter //
create procedure getQuantityByOrderID(in orderID int)
begin
    select T.materialID, T.quantity
    from (select O.materialID, O.quantity
          from OrderDetail as O where O.orderID = orderID) as T;
end;
//
delimiter ;

delimiter //
create procedure addNewOrder(
    in id int,
    in supplierID int,
    in code int,
    in date datetime)
begin
    insert into Orders value (id, supplierID, code, date);
end;
//
delimiter ;

delimiter //
create procedure addNewOrderDetail(
    in id int,
    in orderID int,
    in materialID int,
    in quantity int)
begin
    insert into OrderDetail value (id, orderID, materialID, quantity);
end;
//
delimiter ;





