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
'异常报警信息';

comment on column ALARM_INFO.ALARM_NO is
'报警编号';

comment on column ALARM_INFO.SYSTEM_NAME is
'系统名称';

comment on column ALARM_INFO.SYSTEM_TYPE is
'系统类型';

comment on column ALARM_INFO.ALARM_EVENT is
'异常事件';

comment on column ALARM_INFO.ALARM_TIME is
'报警时间';

comment on column ALARM_INFO.ALARM_SOURCE is
'报警来源';

comment on column ALARM_INFO.ALARM_RECORDER is
'记录人';

comment on column ALARM_INFO.ORG_NO is
'单位';
