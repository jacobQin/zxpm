/*��������ֶ�*/
alter table DUTY_GRPOUP_EMP add ( Duty_Emp_Id varchar2(16));
comment on column DUTY_GRPOUP_EMP .Duty_Emp_Id 
  is '����';
  /*��������ֵ*/
  update DUTY_GRPOUP_EMP dge set dge.duty_emp_id = seq_zxpm_defid.nextval
  where dge.duty_emp_id is null;
  
  commit;
  /*ɾ��ԭ������Լ��*/
  alter table DUTY_GRPOUP_EMP drop constraint PK_DUTY_GRPOUP_EMP;
  
  -- Create/Recreate primary, unique and foreign key constraints 
alter table DUTY_GRPOUP_EMP
  add constraint PK_DUTY_GRPOUP_EMP primary key (DUTY_EMP_ID)
  using index 
  tablespace DATA_ZXPM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );