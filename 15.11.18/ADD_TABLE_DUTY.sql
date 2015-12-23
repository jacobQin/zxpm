-- Create table
create table DUTY
(
  duty_id   VARCHAR2(16) not null,
  duty_name VARCHAR2(32)
)
tablespace DATA_ZXPM
  pctfree 10
  initrans 1
  maxtrans 255;
-- Add comments to the table 
comment on table DUTY
  is '班次';
-- Add comments to the columns 
comment on column DUTY.duty_id
  is '班次ID';
comment on column DUTY.duty_name
  is '班次名称';
-- Create/Recreate primary, unique and foreign key constraints 
alter table DUTY
  add constraint PK_DUTY primary key (DUTY_ID)
  using index 
  tablespace DATA_ZXPM
  pctfree 10
  initrans 2
  maxtrans 255;
