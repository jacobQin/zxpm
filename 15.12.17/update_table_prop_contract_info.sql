
/*������ʱ�ֶ�*/
alter table prop_contract_info add ( MANGER_AREA_2 number(18,3));
comment on column prop_contract_info .MANGER_AREA_2 
  is '��ʱ���1';
/*��ֵ���浽��ʱ�ֶ���*/
update prop_contract_info set MANGER_AREA_2 = MANGER_AREA,MANGER_AREA = null;
commit;
/*�޸ľ���*/
alter table prop_contract_info modify MANGER_AREA number(18,3);
/*����ʱ�ֶε�ֵ���ص�ԭ�ֶ���*/
update prop_contract_info set MANGER_AREA = MANGER_AREA_2;
commit;
/*ɾ����ʱ�ֶ�*/
alter table prop_contract_info drop column MANGER_AREA_2;



/*������ʱ�ֶ�*/
alter table prop_contract_info add ( PRICE_2 number(18,4));
comment on column prop_contract_info .PRICE_2  
  is '��ʱ����1';
/*��ֵ���浽��ʱ�ֶ���*/
update prop_contract_info set PRICE_2 = PRICE,PRICE = null;
commit;
/*�޸ľ���*/
alter table prop_contract_info modify PRICE number(18,4);
/*����ʱ�ֶε�ֵ���ص�ԭ�ֶ���*/
update prop_contract_info set PRICE = PRICE_2;
commit;
/*ɾ����ʱ�ֶ�*/
alter table prop_contract_info drop column PRICE_2;
