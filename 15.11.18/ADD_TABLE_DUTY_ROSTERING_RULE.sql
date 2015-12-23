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
  is '�Ű����';
-- Add comments to the columns 
comment on column DUTY_ROSTERING_RULE.rule_id
  is '����ID';
comment on column DUTY_ROSTERING_RULE.rule_name
  is '��������';
comment on column DUTY_ROSTERING_RULE.r_order
  is '���˳����ָÿ����Ա�İ��˳���簴�ա���ҹ���ݡ������ְࡣ�洢���ID�������#����';
comment on column DUTY_ROSTERING_RULE.r_num
  is '�Ű��������������˳��Ҫ���£�Ҫ�����ٵĲμ��Ű�����';
comment on column DUTY_ROSTERING_RULE.r_f_order
  is '��ʼ�����Ű�İ��˳����ָ��һ���Ű����ڵİ�Σ��磺9��1�յİ���С��ס�ҹ���ݡ��ݡ����洢���ID�������#����';
-- Create/Recreate primary, unique and foreign key constraints 
alter table DUTY_ROSTERING_RULE
  add constraint PK_DUTY_ROSTERING_RULE primary key (RULE_ID)
  using index 
  tablespace DATA_ZXPM
  pctfree 10
  initrans 2
  maxtrans 255;
