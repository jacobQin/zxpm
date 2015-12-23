-- Create table
create table DUTY_GRPOUP_EMP
(
  emp_name   VARCHAR2(32) not null,
  dg_no      VARCHAR2(16),
  emp_gender VARCHAR2(8),
  emp_dept   VARCHAR2(16)
)
tablespace DATA_ZXPM
  pctfree 10
  initrans 1
  maxtrans 255;
-- Add comments to the table 
comment on table DUTY_GRPOUP_EMP
  is '班组人员';
-- Add comments to the columns 
comment on column DUTY_GRPOUP_EMP.emp_name
  is '姓名';
comment on column DUTY_GRPOUP_EMP.dg_no
  is '班组编号';
comment on column DUTY_GRPOUP_EMP.emp_gender
  is '性别';
comment on column DUTY_GRPOUP_EMP.emp_dept
  is '部门';
-- Create/Recreate primary, unique and foreign key constraints 
alter table DUTY_GRPOUP_EMP
  add constraint PK_DUTY_GRPOUP_EMP primary key (EMP_NAME)
  using index 
  tablespace DATA_ZXPM
  pctfree 10
  initrans 2
  maxtrans 255;
