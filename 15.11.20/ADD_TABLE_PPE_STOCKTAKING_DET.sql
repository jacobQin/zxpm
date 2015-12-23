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
  is '固定资产盘点明细';
-- Add comments to the columns 
comment on column PPE_STOCKTAKING_DET.ppe_st_det_id
  is '资产盘点明细ID';
comment on column PPE_STOCKTAKING_DET.wh_st_id
  is '盘点任务ID';
comment on column PPE_STOCKTAKING_DET.ppe_no
  is '资产编码';
comment on column PPE_STOCKTAKING_DET.ppe_st_chg_state
  is '是否变动';
comment on column PPE_STOCKTAKING_DET.useful_dept
  is '使用部门';
comment on column PPE_STOCKTAKING_DET.useful_emp
  is '使用人';
comment on column PPE_STOCKTAKING_DET.ppe_using_state
  is '使用状态';
comment on column PPE_STOCKTAKING_DET.remarks
  is '备注';
comment on column PPE_STOCKTAKING_DET.ppe_overage_state
  is '盘盈状态';
comment on column PPE_STOCKTAKING_DET.ppe_num
  is '数量';
comment on column PPE_STOCKTAKING_DET.buy_date
  is '购置日期';
comment on column PPE_STOCKTAKING_DET.using_date
  is '启用日期';
comment on column PPE_STOCKTAKING_DET.useful_life
  is '使用年限';
comment on column PPE_STOCKTAKING_DET.location
  is '座落地点';
comment on column PPE_STOCKTAKING_DET.useful_org
  is '管理单位';
comment on column PPE_STOCKTAKING_DET.ppe_value
  is '资产原值';
comment on column PPE_STOCKTAKING_DET.depr_total
  is '累计折旧';
comment on column PPE_STOCKTAKING_DET.ppe_net
  is '资产净值';
comment on column PPE_STOCKTAKING_DET.depr_month
  is '月折旧额';
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
