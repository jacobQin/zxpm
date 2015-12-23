-- Create table
create table TEMPLET_FILE_INFO
(
  templet_file_id   VARCHAR2(16) not null,
  templet_file_name VARCHAR2(256),
  uploader          VARCHAR2(64),
  upload_time       DATE,
  templet_file_path VARCHAR2(256),
  templet_file      BLOB
)
tablespace DATA_ZXPM
  pctfree 10
  initrans 1
  maxtrans 255;
-- Add comments to the table 
comment on table TEMPLET_FILE_INFO
  is '该表用于存放各类模板文件，供各功能模块下载使用。';
-- Add comments to the columns 
comment on column TEMPLET_FILE_INFO.templet_file_id
  is '模板文件ID';
comment on column TEMPLET_FILE_INFO.templet_file_name
  is '模板文件名称';
comment on column TEMPLET_FILE_INFO.uploader
  is '上传人';
comment on column TEMPLET_FILE_INFO.upload_time
  is '上传时间';
comment on column TEMPLET_FILE_INFO.templet_file_path
  is '文件路径，如果文件采用文件服务器存储，则将文件路径存储在此字段';
comment on column TEMPLET_FILE_INFO.templet_file
  is '文件实体，如果没有文件服务器，直接把文件存储在数据库';
-- Create/Recreate primary, unique and foreign key constraints 
alter table TEMPLET_FILE_INFO
  add constraint PK_TEMPLET_FILE_INFO primary key (TEMPLET_FILE_ID)
  using index 
  tablespace DATA_ZXPM
  pctfree 10
  initrans 2
  maxtrans 255;
