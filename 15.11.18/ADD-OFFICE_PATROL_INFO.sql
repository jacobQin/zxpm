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
'�칫��Ѳ����Ϣ';

comment on column OFFICE_PATROL_INFO.PATROL_NO is
'Ѳ�ӱ��';

comment on column OFFICE_PATROL_INFO.PATROL_PATH is
'Ѳ��·��';

comment on column OFFICE_PATROL_INFO.PATROL_MAN is
'Ѳ����Ա';

comment on column OFFICE_PATROL_INFO.ORG_NO is
'��λ';

comment on column OFFICE_PATROL_INFO.HANDLE_RST is
'������';

comment on column OFFICE_PATROL_INFO.HAND_OVER is
'��Ʒ����';

comment on column OFFICE_PATROL_INFO.REC_TIME is
'��¼ʱ��';
