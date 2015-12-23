create table CHECK_CONTENT_INFO 
(
   CONTENT_ID           VARCHAR2(16)         not null,
   SERIAL_NO            VARCHAR2(32),
   CONTENTS             VARCHAR2(256),
   constraint PK_CHECK_CONTENT_INFO primary key (CONTENT_ID)
);

comment on table CHECK_CONTENT_INFO is
'检查内容信息';

comment on column CHECK_CONTENT_INFO.CONTENT_ID is
'内容标识';

comment on column CHECK_CONTENT_INFO.SERIAL_NO is
'序号';

comment on column CHECK_CONTENT_INFO.CONTENTS is
'检查内容';
