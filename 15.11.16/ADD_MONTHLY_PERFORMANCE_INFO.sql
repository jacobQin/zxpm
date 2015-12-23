-- Create table
create table MONTHLY_PERFORMANCE_INFO
(
  staff_no         VARCHAR2(16),
  post             VARCHAR2(32),
  year             VARCHAR2(4),
  ass_month        VARCHAR2(8),
  task_kpi_score   NUMBER(5),
  discipline_score NUMBER(5),
  total_score      NUMBER(5),
  month_level      VARCHAR2(256)
)
tablespace DATA_ZXPM
  pctfree 10
  initrans 1
  maxtrans 255;
-- Add comments to the table 
comment on table MONTHLY_PERFORMANCE_INFO
  is '�¶ȼ�Ч��Ϣ';
-- Add comments to the columns 
comment on column MONTHLY_PERFORMANCE_INFO.staff_no
  is 'Ա�����';
comment on column MONTHLY_PERFORMANCE_INFO.post
  is '��λ';
comment on column MONTHLY_PERFORMANCE_INFO.year
  is '���';
comment on column MONTHLY_PERFORMANCE_INFO.ass_month
  is '�����¶�';
comment on column MONTHLY_PERFORMANCE_INFO.task_kpi_score
  is '�����������ָ��÷�';
comment on column MONTHLY_PERFORMANCE_INFO.discipline_score
  is '�Ͷ�����ָ��÷�';
comment on column MONTHLY_PERFORMANCE_INFO.total_score
  is '�����ܷ�';
comment on column MONTHLY_PERFORMANCE_INFO.month_level
  is '�ȼ�';
