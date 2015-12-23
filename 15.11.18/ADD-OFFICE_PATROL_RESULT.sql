create table OFFICE_PATROL_RESULT 
(
   PATROL_NO            VARCHAR2(16),
   CONTENT_ID           VARCHAR2(16),
   PATROL_TIME          DATE,
   PATROL_RST           VARCHAR2(8),
   REMARKS              VARCHAR2(256)
);

comment on table OFFICE_PATROL_RESULT is
'Ѳ�ӽ����Ϣ';

comment on column OFFICE_PATROL_RESULT.PATROL_NO is
'Ѳ�ӱ��';

comment on column OFFICE_PATROL_RESULT.CONTENT_ID is
'���ݱ�ʶ';

comment on column OFFICE_PATROL_RESULT.PATROL_TIME is
'Ѳ��ʱ��';

comment on column OFFICE_PATROL_RESULT.PATROL_RST is
'Ѳ�ӽ��';

comment on column OFFICE_PATROL_RESULT.REMARKS is
'��ע';

/*==============================================================*/
/* Index: "Relationship_44_FK"                                  */
/*==============================================================*/
create index "Relationship_44_FK" on OFFICE_PATROL_RESULT (
   PATROL_NO ASC
);

/*==============================================================*/
/* Index: "Relationship_45_FK"                                  */
/*==============================================================*/
create index "Relationship_45_FK" on OFFICE_PATROL_RESULT (
   CONTENT_ID ASC
);

alter table OFFICE_PATROL_RESULT
   add constraint FK_OFFICE_P_RELATIONS_OFFICE_P foreign key (PATROL_NO)
      references OFFICE_PATROL_INFO (PATROL_NO);

alter table OFFICE_PATROL_RESULT
   add constraint FK_OFFICE_P_RELATIONS_CHECK_CO foreign key (CONTENT_ID)
      references CHECK_CONTENT_INFO (CONTENT_ID);
