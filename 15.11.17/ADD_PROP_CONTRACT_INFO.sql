-- Create table
create table PROP_CONTRACT_INFO
(
  contract_id      VARCHAR2(32) not null,
  contract_no      VARCHAR2(32),
  contract_name    VARCHAR2(256),
  manger_area      NUMBER(16),
  price            NUMBER(18,2),
  other_expense    NUMBER(18,2),
  payment          VARCHAR2(8),
  bgn_date         DATE,
  end_date         DATE,
  org_no           VARCHAR2(16),
  remarks          VARCHAR2(256),
  total_contract   NUMBER(18,2),
  property_expense NUMBER(18,2),
  contract_status  VARCHAR2(8),
  attach           VARCHAR2(16)
)
tablespace DATA_ZXPM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table PROP_CONTRACT_INFO
  is '物业合同台账信息';
-- Add comments to the columns 
comment on column PROP_CONTRACT_INFO.contract_id
  is '合同标识';
comment on column PROP_CONTRACT_INFO.contract_no
  is '合同编号';
comment on column PROP_CONTRACT_INFO.contract_name
  is '合同名称';
comment on column PROP_CONTRACT_INFO.manger_area
  is '管理面积';
comment on column PROP_CONTRACT_INFO.price
  is '单价';
comment on column PROP_CONTRACT_INFO.other_expense
  is '其它费用';
comment on column PROP_CONTRACT_INFO.payment
  is '支付方式';
comment on column PROP_CONTRACT_INFO.bgn_date
  is '起始日期';
comment on column PROP_CONTRACT_INFO.end_date
  is '终止日期';
comment on column PROP_CONTRACT_INFO.org_no
  is '单位';
comment on column PROP_CONTRACT_INFO.remarks
  is '备注';
comment on column PROP_CONTRACT_INFO.total_contract
  is '合同总额';
comment on column PROP_CONTRACT_INFO.property_expense
  is '物业费';
comment on column PROP_CONTRACT_INFO.contract_status
  is '合同状态';
comment on column PROP_CONTRACT_INFO.attach
  is '合同附件';
-- Create/Recreate primary, unique and foreign key constraints 
alter table PROP_CONTRACT_INFO
  add constraint PK_PROP_CONTRACT_INFO primary key (CONTRACT_ID)
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
