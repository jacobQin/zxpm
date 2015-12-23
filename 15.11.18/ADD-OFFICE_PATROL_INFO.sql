create table OFFICE_PATROL_INFO 
(
   PATROL_NO            VARCHAR2(16)         not null,
   PATROL_PATH          VARCHAR2(256),
   PATROL_MAN           VARCHAR2(64),
   ORG_NO               VARCHAR2(16),
   HANDLE_RST           VARCHAR2(256),
   HAND_OVER            VARCHAR2(64),
   REC_TIME             DATE,
   constraint PK_OFFICE_PATROL_INFO primary key (PATROL_NO)
);

comment on table OFFICE_PATROL_INFO is
'办公区巡视信息';

comment on column OFFICE_PATROL_INFO.PATROL_NO is
'巡视编号';

comment on column OFFICE_PATROL_INFO.PATROL_PATH is
'巡视路线';

comment on column OFFICE_PATROL_INFO.PATROL_MAN is
'巡视人员';

comment on column OFFICE_PATROL_INFO.ORG_NO is
'单位';

comment on column OFFICE_PATROL_INFO.HANDLE_RST is
'处理结果';

comment on column OFFICE_PATROL_INFO.HAND_OVER is
'物品交接';

comment on column OFFICE_PATROL_INFO.REC_TIME is
'记录时间';
