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
  is '�ñ����ڴ�Ÿ���ģ���ļ�����������ģ������ʹ�á�';
-- Add comments to the columns 
comment on column TEMPLET_FILE_INFO.templet_file_id
  is 'ģ���ļ�ID';
comment on column TEMPLET_FILE_INFO.templet_file_name
  is 'ģ���ļ�����';
comment on column TEMPLET_FILE_INFO.uploader
  is '�ϴ���';
comment on column TEMPLET_FILE_INFO.upload_time
  is '�ϴ�ʱ��';
comment on column TEMPLET_FILE_INFO.templet_file_path
  is '�ļ�·��������ļ������ļ��������洢�����ļ�·���洢�ڴ��ֶ�';
comment on column TEMPLET_FILE_INFO.templet_file
  is '�ļ�ʵ�壬���û���ļ���������ֱ�Ӱ��ļ��洢�����ݿ�';
-- Create/Recreate primary, unique and foreign key constraints 
alter table TEMPLET_FILE_INFO
  add constraint PK_TEMPLET_FILE_INFO primary key (TEMPLET_FILE_ID)
  using index 
  tablespace DATA_ZXPM
  pctfree 10
  initrans 2
  maxtrans 255;
