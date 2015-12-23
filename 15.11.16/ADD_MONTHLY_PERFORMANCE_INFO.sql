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
  is '月度绩效信息';
-- Add comments to the columns 
comment on column MONTHLY_PERFORMANCE_INFO.staff_no
  is '员工编号';
comment on column MONTHLY_PERFORMANCE_INFO.post
  is '岗位';
comment on column MONTHLY_PERFORMANCE_INFO.year
  is '年度';
comment on column MONTHLY_PERFORMANCE_INFO.ass_month
  is '考核月度';
comment on column MONTHLY_PERFORMANCE_INFO.task_kpi_score
  is '工作任务积分指标得分';
comment on column MONTHLY_PERFORMANCE_INFO.discipline_score
  is '劳动纪律指标得分';
comment on column MONTHLY_PERFORMANCE_INFO.total_score
  is '考核总分';
comment on column MONTHLY_PERFORMANCE_INFO.month_level
  is '等级';
