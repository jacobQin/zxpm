create table CHECK_CONTENT_INFO 
(
   CONTENT_ID           VARCHAR2(16)         not null,
   SERIAL_NO            VARCHAR2(32),
   CONTENTS             VARCHAR2(256),
   constraint PK_CHECK_CONTENT_INFO primary key (CONTENT_ID)
);

comment on table CHECK_CONTENT_INFO is
'���������Ϣ';

comment on column CHECK_CONTENT_INFO.CONTENT_ID is
'���ݱ�ʶ';

comment on column CHECK_CONTENT_INFO.SERIAL_NO is
'���';

comment on column CHECK_CONTENT_INFO.CONTENTS is
'�������';
