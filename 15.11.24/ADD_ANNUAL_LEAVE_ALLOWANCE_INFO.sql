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
  is 'δ����ٲ�����Ϣ';
-- Add comments to the columns 
comment on column ANNUAL_LEAVE_ALLOWANCE_INFO.ALAI_ID
  is 'δ����ٲ���ID';
comment on column ANNUAL_LEAVE_ALLOWANCE_INFO.YM
  is '����';
comment on column ANNUAL_LEAVE_ALLOWANCE_INFO.STAFF_NO
  is 'Ա�����';
comment on column ANNUAL_LEAVE_ALLOWANCE_INFO.UNUSED_DAYS
  is 'δ���������';
comment on column ANNUAL_LEAVE_ALLOWANCE_INFO.ALLOWANCE
  is 'δ����ٲ���';
comment on column ANNUAL_LEAVE_ALLOWANCE_INFO.OTHER_DEDUCT
  is '������';
comment on column ANNUAL_LEAVE_ALLOWANCE_INFO.TAX_DEDUCT
  is '��˰';
comment on column ANNUAL_LEAVE_ALLOWANCE_INFO.FINAL_PAY
  is 'ʵ��';
comment on column ANNUAL_LEAVE_ALLOWANCE_INFO.REMARK
  is '��ע';
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
