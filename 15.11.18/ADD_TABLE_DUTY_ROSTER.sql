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
  is '班表';
-- Add comments to the columns 
comment on column DUTY_ROSTER.dr_month
  is '排班年月';
comment on column DUTY_ROSTER.dept
  is '所属部门';
comment on column DUTY_ROSTER.dr_date
  is '排班日期';
comment on column DUTY_ROSTER.dg_name
  is '班组名称';
comment on column DUTY_ROSTER.emp_name
  is '姓名';
comment on column DUTY_ROSTER.duty_name
  is '班次名称';
comment on column DUTY_ROSTER.oper_emp
  is '操作人员';
comment on column DUTY_ROSTER.oper_time
  is '操作日期';
comment on column DUTY_ROSTER.dr_id
  is '唯一标识';
-- Create/Recreate primary, unique and foreign key constraints 
alter table DUTY_ROSTER
  add constraint DR_ID primary key (DR_ID)
  using index 
  tablespace DATA_ZXPM
  pctfree 10
  initrans 2
  maxtrans 255;
