
/*建立临时字段*/
alter table prop_contract_info add ( MANGER_AREA_2 number(18,3));
comment on column prop_contract_info .MANGER_AREA_2 
  is '临时面积1';
/*将值保存到临时字段中*/
update prop_contract_info set MANGER_AREA_2 = MANGER_AREA,MANGER_AREA = null;
commit;
/*修改精度*/
alter table prop_contract_info modify MANGER_AREA number(18,3);
/*将临时字段的值返回到原字段中*/
update prop_contract_info set MANGER_AREA = MANGER_AREA_2;
commit;
/*删除临时字段*/
alter table prop_contract_info drop column MANGER_AREA_2;



/*建立临时字段*/
alter table prop_contract_info add ( PRICE_2 number(18,4));
comment on column prop_contract_info .PRICE_2  
  is '临时单价1';
/*将值保存到临时字段中*/
update prop_contract_info set PRICE_2 = PRICE,PRICE = null;
commit;
/*修改精度*/
alter table prop_contract_info modify PRICE number(18,4);
/*将临时字段的值返回到原字段中*/
update prop_contract_info set PRICE = PRICE_2;
commit;
/*删除临时字段*/
alter table prop_contract_info drop column PRICE_2;
