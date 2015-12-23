-- Create table
create table PERF_CONTRACT_INFO
(
  contract_id      VARCHAR2(32) not null,
  contract_no      VARCHAR2(32),
  contract_flow_no VARCHAR2(32),
  contract_name    VARCHAR2(256),
  contract_type    VARCHAR2(8),
  bid_grant        VARCHAR2(8),
  planned          VARCHAR2(8),
  contract_amount  NUMBER(18,2),
  payment          VARCHAR2(8),
  bgn_date         DATE,
  end_date         DATE,
  cust_org         VARCHAR2(256),
  detail_flag      VARCHAR2(1),
  org_no           VARCHAR2(100),
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
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table PERF_CONTRACT_INFO
  is '履约合同信息';
-- Add comments to the columns 
comment on column PERF_CONTRACT_INFO.contract_id
  is '合同标识';
comment on column PERF_CONTRACT_INFO.contract_no
  is '合同编号';
comment on column PERF_CONTRACT_INFO.contract_flow_no
  is '流转编号';
comment on column PERF_CONTRACT_INFO.contract_name
  is '合同名称';
comment on column PERF_CONTRACT_INFO.contract_type
  is '合同类型';
comment on column PERF_CONTRACT_INFO.bid_grant
  is '招标授权';
comment on column PERF_CONTRACT_INFO.planned
  is '计划内';
comment on column PERF_CONTRACT_INFO.contract_amount
  is '合同金额';
comment on column PERF_CONTRACT_INFO.payment
  is '支付方式';
comment on column PERF_CONTRACT_INFO.bgn_date
  is '起始日期';
comment on column PERF_CONTRACT_INFO.end_date
  is '终止日期';
comment on column PERF_CONTRACT_INFO.cust_org
  is '对方单位';
comment on column PERF_CONTRACT_INFO.detail_flag
  is '履约明细';
comment on column PERF_CONTRACT_INFO.org_no
  is '单位';
comment on column PERF_CONTRACT_INFO.contract_status
  is '合同状态';
comment on column PERF_CONTRACT_INFO.attach
  is '合同附件';
-- Create/Recreate primary, unique and foreign key constraints 
alter table PERF_CONTRACT_INFO
  add constraint PK_PERF_CONTRACT_INFO primary key (CONTRACT_ID)
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
