-- Add/modify columns 
alter table zxpm.doc_info add OPER_DATE DATE;
comment on column doc_info.OPER_DATE is '发布日期';

alter table zxpm.doc_info add DOC_FLAG VARCHAR2(8);
comment on column doc_info.DOC_FLAG is '文档状态，“启用/禁用”标准代码';

alter table zxpm.doc_info add PAGEVIEWS NUMBER(8);
comment on column doc_info.PAGEVIEWS is '浏览量';