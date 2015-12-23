-- Create table
create table DUTY_ROSTERING_F_RULE
(
  dg_no       VARCHAR2(16) not null,
  dr_month    VARCHAR2(6) not null,
  emp_name    VARCHAR2(32),
  r_order_idx NUMBER(5),
  ru_id       VARCHAR2(16) not null
)
tablespace DATA_ZXPM
  pctfree 10
  initrans 1
  maxtrans 255;
-- Add comments to the table 
comment on table DUTY_ROSTERING_F_RULE
  is '�Ű����';
-- Add comments to the columns 
comment on column DUTY_ROSTERING_F_RULE.dg_no
  is '������';
comment on column DUTY_ROSTERING_F_RULE.dr_month
  is '�Ű�����';
comment on column DUTY_ROSTERING_F_RULE.emp_name
  is '����';
comment on column DUTY_ROSTERING_F_RULE.r_order_idx
  is '���˳���';
comment on column DUTY_ROSTERING_F_RULE.ru_id
  is 'Ψһ��ʶ';
-- Create/Recreate primary, unique and foreign key constraints 
alter table DUTY_ROSTERING_F_RULE
  add constraint RU_ID primary key (RU_ID)
  using index 
  tablespace DATA_ZXPM
  pctfree 10
  initrans 2
  maxtrans 255;
