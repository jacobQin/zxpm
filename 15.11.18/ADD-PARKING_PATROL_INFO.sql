-- Create table
create table PARKING_PATROL_INFO
(
  patrol_no        VARCHAR2(16) not null,
  patrol_time      DATE,
  violation_car    VARCHAR2(256),
  violation_status VARCHAR2(256),
  treating_method  VARCHAR2(256),
  patrol_man       VARCHAR2(64),
  record_time      DATE,
  org_no           VARCHAR2(16),
  remarks          VARCHAR2(256)
)
tablespace DATA_ZXPM
  pctfree 10
  initrans 1
  maxtrans 255;
-- Add comments to the table 
comment on table PARKING_PATROL_INFO
  is '车场车库巡视信息';
-- Add comments to the columns 
comment on column PARKING_PATROL_INFO.patrol_no
  is '巡视编号';
comment on column PARKING_PATROL_INFO.patrol_time
  is '巡视时间';
comment on column PARKING_PATROL_INFO.violation_car
  is '违章车辆';
comment on column PARKING_PATROL_INFO.violation_status
  is '违章情况';
comment on column PARKING_PATROL_INFO.treating_method
  is '处理办法';
comment on column PARKING_PATROL_INFO.patrol_man
  is '巡视人员';
comment on column PARKING_PATROL_INFO.record_time
  is '记录时间';
comment on column PARKING_PATROL_INFO.org_no
  is '单位';
comment on column PARKING_PATROL_INFO.remarks
  is '备注';
-- Create/Recreate primary, unique and foreign key constraints 
alter table PARKING_PATROL_INFO
  add constraint PARKING_PATROL_INFO_PK primary key (PATROL_NO)
  using index 
  tablespace DATA_ZXPM
  pctfree 10
  initrans 2
  maxtrans 255;
