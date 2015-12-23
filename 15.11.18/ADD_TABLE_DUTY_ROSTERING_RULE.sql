-- Create table
create table DUTY_ROSTERING_RULE
(
  rule_id   VARCHAR2(16) not null,
  rule_name VARCHAR2(32),
  r_order   VARCHAR2(64),
  r_num     NUMBER(5),
  r_f_order VARCHAR2(64)
)
tablespace DATA_ZXPM
  pctfree 10
  initrans 1
  maxtrans 255;
-- Add comments to the table 
comment on table DUTY_ROSTERING_RULE
  is '排班策略';
-- Add comments to the columns 
comment on column DUTY_ROSTERING_RULE.rule_id
  is '策略ID';
comment on column DUTY_ROSTERING_RULE.rule_name
  is '策略名称';
comment on column DUTY_ROSTERING_RULE.r_order
  is '班次顺序：是指每个人员的班次顺序，如按照“白夜休休”进行轮班。存储班次ID，多个以#隔开';
comment on column DUTY_ROSTERING_RULE.r_num
  is '排班最少人数：班次顺序要求下，要求最少的参加排班人数';
comment on column DUTY_ROSTERING_RULE.r_f_order
  is '初始日期排班的班次顺序：是指第一个排班日期的班次，如：9月1日的班次有“白、夜、休、休”。存储班次ID，多个以#隔开';
-- Create/Recreate primary, unique and foreign key constraints 
alter table DUTY_ROSTERING_RULE
  add constraint PK_DUTY_ROSTERING_RULE primary key (RULE_ID)
  using index 
  tablespace DATA_ZXPM
  pctfree 10
  initrans 2
  maxtrans 255;
