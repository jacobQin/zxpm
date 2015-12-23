drop table ALARM_INFO cascade constraints;

/*==============================================================*/
/* Table: ALARM_INFO                                            */
/*==============================================================*/
create table ALARM_INFO 
(
   ALARM_NO             VARCHAR2(16),
   SYSTEM_NAME          VARCHAR2(256),
   SYSTEM_TYPE          VARCHAR2(8),
   ALARM_EVENT          VARCHAR2(256),
   ALARM_TIME           DATE,
   ALARM_SOURCE         VARCHAR2(8),
   ALARM_RECORDER       VARCHAR2(64),
   ORG_NO               VARCHAR2(16)
);

comment on table ALARM_INFO is
'�쳣������Ϣ';

comment on column ALARM_INFO.ALARM_NO is
'�������';

comment on column ALARM_INFO.SYSTEM_NAME is
'ϵͳ����';

comment on column ALARM_INFO.SYSTEM_TYPE is
'ϵͳ����';

comment on column ALARM_INFO.ALARM_EVENT is
'�쳣�¼�';

comment on column ALARM_INFO.ALARM_TIME is
'����ʱ��';

comment on column ALARM_INFO.ALARM_SOURCE is
'������Դ';

comment on column ALARM_INFO.ALARM_RECORDER is
'��¼��';

comment on column ALARM_INFO.ORG_NO is
'��λ';
