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
  is '��������Ѳ����Ϣ';
-- Add comments to the columns 
comment on column PARKING_PATROL_INFO.patrol_no
  is 'Ѳ�ӱ��';
comment on column PARKING_PATROL_INFO.patrol_time
  is 'Ѳ��ʱ��';
comment on column PARKING_PATROL_INFO.violation_car
  is 'Υ�³���';
comment on column PARKING_PATROL_INFO.violation_status
  is 'Υ�����';
comment on column PARKING_PATROL_INFO.treating_method
  is '����취';
comment on column PARKING_PATROL_INFO.patrol_man
  is 'Ѳ����Ա';
comment on column PARKING_PATROL_INFO.record_time
  is '��¼ʱ��';
comment on column PARKING_PATROL_INFO.org_no
  is '��λ';
comment on column PARKING_PATROL_INFO.remarks
  is '��ע';
-- Create/Recreate primary, unique and foreign key constraints 
alter table PARKING_PATROL_INFO
  add constraint PARKING_PATROL_INFO_PK primary key (PATROL_NO)
  using index 
  tablespace DATA_ZXPM
  pctfree 10
  initrans 2
  maxtrans 255;
