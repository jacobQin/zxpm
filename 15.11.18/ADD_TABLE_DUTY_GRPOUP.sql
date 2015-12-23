-- Create table
create table DUTY_GRPOUP
(
  dg_no      VARCHAR2(16) not null,
  rule_id    VARCHAR2(16),
  dg_name    VARCHAR2(32),
  org_no     VARCHAR2(16),
  dept       VARCHAR2(16),
  dg_emp_num NUMBER(5)
)
tablespace DATA_ZXPM
  pctfree 10
  initrans 1
  maxtrans 255;
-- Add comments to the table 
comment on table DUTY_GRPOUP
  is '����';
-- Add comments to the columns 
comment on column DUTY_GRPOUP.dg_no
  is '������';
comment on column DUTY_GRPOUP.rule_id
  is '����ID';
comment on column DUTY_GRPOUP.dg_name
  is '��������';
comment on column DUTY_GRPOUP.org_no
  is '������λ';
comment on column DUTY_GRPOUP.dept
  is '��������';
comment on column DUTY_GRPOUP.dg_emp_num
  is '��������';
-- Create/Recreate primary, unique and foreign key constraints 
alter table DUTY_GRPOUP
  add constraint PK_DUTY_GRPOUP primary key (DG_NO)
  using index 
  tablespace DATA_ZXPM
  pctfree 10
  initrans 2
  maxtrans 255;
