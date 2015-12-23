-- Create table
create table ANNUAL_LEAVE_ALLOWANCE_INFO
(
  ALAI_ID      VARCHAR2(16) not null,
  YM           VARCHAR2(7),
  STAFF_NO     VARCHAR2(16),
  UNUSED_DAYS  NUMBER(5),
  ALLOWANCE    NUMBER(18,2),
  OTHER_DEDUCT NUMBER(18,2),
  TAX_DEDUCT   NUMBER(18,2),
  FINAL_PAY    NUMBER(18,2),
  REMARK       VARCHAR2(256)
)
tablespace DATA_ZXPM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64
    next 1
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table ANNUAL_LEAVE_ALLOWANCE_INFO
  is '未休年假补贴信息';
-- Add comments to the columns 
comment on column ANNUAL_LEAVE_ALLOWANCE_INFO.ALAI_ID
  is '未休年假补贴ID';
comment on column ANNUAL_LEAVE_ALLOWANCE_INFO.YM
  is '年月';
comment on column ANNUAL_LEAVE_ALLOWANCE_INFO.STAFF_NO
  is '员工编号';
comment on column ANNUAL_LEAVE_ALLOWANCE_INFO.UNUSED_DAYS
  is '未休年假天数';
comment on column ANNUAL_LEAVE_ALLOWANCE_INFO.ALLOWANCE
  is '未休年假补贴';
comment on column ANNUAL_LEAVE_ALLOWANCE_INFO.OTHER_DEDUCT
  is '扣其他';
comment on column ANNUAL_LEAVE_ALLOWANCE_INFO.TAX_DEDUCT
  is '扣税';
comment on column ANNUAL_LEAVE_ALLOWANCE_INFO.FINAL_PAY
  is '实发';
comment on column ANNUAL_LEAVE_ALLOWANCE_INFO.REMARK
  is '备注';
-- Create/Recreate primary, unique and foreign key constraints 
alter table ANNUAL_LEAVE_ALLOWANCE_INFO
  add constraint ANNUAL_LEAVE_ALLOWANCE_INFO primary key (ALAI_ID)
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
