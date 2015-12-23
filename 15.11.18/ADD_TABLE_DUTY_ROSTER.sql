-- Create table
create table DUTY_ROSTER
(
  dr_month  VARCHAR2(6),
  dept      VARCHAR2(16),
  dr_date   DATE,
  dg_name   VARCHAR2(32),
  emp_name  VARCHAR2(32),
  duty_name VARCHAR2(32),
  oper_emp  VARCHAR2(32),
  oper_time TIMESTAMP(6),
  dr_id     VARCHAR2(16) not null
)
tablespace DATA_ZXPM
  pctfree 10
  initrans 1
  maxtrans 255;
-- Add comments to the table 
comment on table DUTY_ROSTER
  is '���';
-- Add comments to the columns 
comment on column DUTY_ROSTER.dr_month
  is '�Ű�����';
comment on column DUTY_ROSTER.dept
  is '��������';
comment on column DUTY_ROSTER.dr_date
  is '�Ű�����';
comment on column DUTY_ROSTER.dg_name
  is '��������';
comment on column DUTY_ROSTER.emp_name
  is '����';
comment on column DUTY_ROSTER.duty_name
  is '�������';
comment on column DUTY_ROSTER.oper_emp
  is '������Ա';
comment on column DUTY_ROSTER.oper_time
  is '��������';
comment on column DUTY_ROSTER.dr_id
  is 'Ψһ��ʶ';
-- Create/Recreate primary, unique and foreign key constraints 
alter table DUTY_ROSTER
  add constraint DR_ID primary key (DR_ID)
  using index 
  tablespace DATA_ZXPM
  pctfree 10
  initrans 2
  maxtrans 255;
