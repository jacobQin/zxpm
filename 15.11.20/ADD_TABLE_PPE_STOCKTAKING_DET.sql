-- Create table
create table PPE_STOCKTAKING_DET
(
  ppe_st_det_id     VARCHAR2(16) not null,
  wh_st_id          VARCHAR2(16) not null,
  ppe_no            VARCHAR2(16),
  ppe_st_chg_state  VARCHAR2(8),
  useful_dept       VARCHAR2(16),
  useful_emp        VARCHAR2(32),
  ppe_using_state   VARCHAR2(8),
  remarks           VARCHAR2(256),
  ppe_overage_state VARCHAR2(8),
  ppe_num           NUMBER(5),
  buy_date          DATE,
  using_date        DATE,
  useful_life       VARCHAR2(16),
  location          VARCHAR2(32),
  useful_org        VARCHAR2(16),
  ppe_value         NUMBER(18,2),
  depr_total        NUMBER(18,2),
  ppe_net           NUMBER(18,2),
  depr_month        NUMBER(18,2)
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
comment on table PPE_STOCKTAKING_DET
  is '�̶��ʲ��̵���ϸ';
-- Add comments to the columns 
comment on column PPE_STOCKTAKING_DET.ppe_st_det_id
  is '�ʲ��̵���ϸID';
comment on column PPE_STOCKTAKING_DET.wh_st_id
  is '�̵�����ID';
comment on column PPE_STOCKTAKING_DET.ppe_no
  is '�ʲ�����';
comment on column PPE_STOCKTAKING_DET.ppe_st_chg_state
  is '�Ƿ�䶯';
comment on column PPE_STOCKTAKING_DET.useful_dept
  is 'ʹ�ò���';
comment on column PPE_STOCKTAKING_DET.useful_emp
  is 'ʹ����';
comment on column PPE_STOCKTAKING_DET.ppe_using_state
  is 'ʹ��״̬';
comment on column PPE_STOCKTAKING_DET.remarks
  is '��ע';
comment on column PPE_STOCKTAKING_DET.ppe_overage_state
  is '��ӯ״̬';
comment on column PPE_STOCKTAKING_DET.ppe_num
  is '����';
comment on column PPE_STOCKTAKING_DET.buy_date
  is '��������';
comment on column PPE_STOCKTAKING_DET.using_date
  is '��������';
comment on column PPE_STOCKTAKING_DET.useful_life
  is 'ʹ������';
comment on column PPE_STOCKTAKING_DET.location
  is '����ص�';
comment on column PPE_STOCKTAKING_DET.useful_org
  is '����λ';
comment on column PPE_STOCKTAKING_DET.ppe_value
  is '�ʲ�ԭֵ';
comment on column PPE_STOCKTAKING_DET.depr_total
  is '�ۼ��۾�';
comment on column PPE_STOCKTAKING_DET.ppe_net
  is '�ʲ���ֵ';
comment on column PPE_STOCKTAKING_DET.depr_month
  is '���۾ɶ�';
-- Create/Recreate indexes 
create index Relationship_42_FK on PPE_STOCKTAKING_DET (WH_ST_ID)
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
-- Create/Recreate primary, unique and foreign key constraints 
alter table PPE_STOCKTAKING_DET
  add constraint PK_PPE_STOCKTAKING_DET primary key (PPE_ST_DET_ID)
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
alter table PPE_STOCKTAKING_DET
  add constraint FK_PPE_STOC_RELATIONS_WAREHOUS foreign key (WH_ST_ID)
  references WAREHOUSE_STOCKTAKING (WH_ST_ID);
