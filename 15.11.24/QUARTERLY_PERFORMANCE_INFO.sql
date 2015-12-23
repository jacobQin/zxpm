-- Create table
create table QUARTERLY_PERFORMANCE_INFO
(
  staff_no               VARCHAR2(16),
  ass_quarter            VARCHAR2(8),
  key_perf_score         NUMBER(5),
  task_kpi_score         NUMBER(5),
  comp_score             NUMBER(5),
  float_score            NUMBER(5),
  total_score            NUMBER(5),
  ass_level              VARCHAR2(256),
  quarter_performance_id VARCHAR2(16) not null,
  year                   VARCHAR2(4),
  post                   VARCHAR2(32)
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
comment on table QUARTERLY_PERFORMANCE_INFO
  is '���ȼ�Ч��Ϣ';
-- Add comments to the columns 
comment on column QUARTERLY_PERFORMANCE_INFO.staff_no
  is 'Ա�����';
comment on column QUARTERLY_PERFORMANCE_INFO.ass_quarter
  is '���˼���';
comment on column QUARTERLY_PERFORMANCE_INFO.key_perf_score
  is '�ؼ���Ч�÷�';
comment on column QUARTERLY_PERFORMANCE_INFO.task_kpi_score
  is '�����������ָ��÷�';
comment on column QUARTERLY_PERFORMANCE_INFO.comp_score
  is '�ۺ����۵÷�';
comment on column QUARTERLY_PERFORMANCE_INFO.float_score
  is '���˼Ӽ��÷�';
comment on column QUARTERLY_PERFORMANCE_INFO.total_score
  is '�����ܷ�';
comment on column QUARTERLY_PERFORMANCE_INFO.ass_level
  is '�ȼ�';
comment on column QUARTERLY_PERFORMANCE_INFO.quarter_performance_id
  is '���ȼ�ЧID';
comment on column QUARTERLY_PERFORMANCE_INFO.year
  is '���';
comment on column QUARTERLY_PERFORMANCE_INFO.post
  is '��λ';
-- Create/Recreate primary, unique and foreign key constraints 
alter table QUARTERLY_PERFORMANCE_INFO
  add constraint PK_QUARTERLY_PERFORMANCE_INFO primary key (QUARTER_PERFORMANCE_ID)
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
