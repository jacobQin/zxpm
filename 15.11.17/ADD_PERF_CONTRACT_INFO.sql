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
  is '��Լ��ͬ��Ϣ';
-- Add comments to the columns 
comment on column PERF_CONTRACT_INFO.contract_id
  is '��ͬ��ʶ';
comment on column PERF_CONTRACT_INFO.contract_no
  is '��ͬ���';
comment on column PERF_CONTRACT_INFO.contract_flow_no
  is '��ת���';
comment on column PERF_CONTRACT_INFO.contract_name
  is '��ͬ����';
comment on column PERF_CONTRACT_INFO.contract_type
  is '��ͬ����';
comment on column PERF_CONTRACT_INFO.bid_grant
  is '�б���Ȩ';
comment on column PERF_CONTRACT_INFO.planned
  is '�ƻ���';
comment on column PERF_CONTRACT_INFO.contract_amount
  is '��ͬ���';
comment on column PERF_CONTRACT_INFO.payment
  is '֧����ʽ';
comment on column PERF_CONTRACT_INFO.bgn_date
  is '��ʼ����';
comment on column PERF_CONTRACT_INFO.end_date
  is '��ֹ����';
comment on column PERF_CONTRACT_INFO.cust_org
  is '�Է���λ';
comment on column PERF_CONTRACT_INFO.detail_flag
  is '��Լ��ϸ';
comment on column PERF_CONTRACT_INFO.org_no
  is '��λ';
comment on column PERF_CONTRACT_INFO.contract_status
  is '��ͬ״̬';
comment on column PERF_CONTRACT_INFO.attach
  is '��ͬ����';
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
