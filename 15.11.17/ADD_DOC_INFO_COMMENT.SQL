-- Add/modify columns 
alter table zxpm.doc_info add OPER_DATE DATE;
comment on column doc_info.OPER_DATE is '��������';

alter table zxpm.doc_info add DOC_FLAG VARCHAR2(8);
comment on column doc_info.DOC_FLAG is '�ĵ�״̬��������/���á���׼����';

alter table zxpm.doc_info add PAGEVIEWS NUMBER(8);
comment on column doc_info.PAGEVIEWS is '�����';