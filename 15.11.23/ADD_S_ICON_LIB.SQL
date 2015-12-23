drop table S_ICON_LIB cascade constraints;

/*==============================================================*/
/* Table: S_ICON_LIB                                            */
/*==============================================================*/
create table S_ICON_LIB  (
   ICON_ID              VARCHAR2(16)                    not null,
   ICON_TYPE            VARCHAR2(8),
   ICON_NAME            VARCHAR2(32),
   ICON                 BLOB,
   constraint PK_S_ICON_LIB primary key (ICON_ID)
);

comment on table S_ICON_LIB is
'图标库';

comment on column S_ICON_LIB.ICON_ID is
'图标ID';

comment on column S_ICON_LIB.ICON_TYPE is
'图标分类';

comment on column S_ICON_LIB.ICON_NAME is
'图标名称';

comment on column S_ICON_LIB.ICON is
'图标内容';
