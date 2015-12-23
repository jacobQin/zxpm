/*==============================================================*/
/* Table: DISPATCHING_SALARY_INFO                               */
/*==============================================================*/
create table DISPATCHING_SALARY_INFO  (
   SALARY_ID            NUMBER(16)                      not null,
   YM                   VARCHAR2(7),
   STAFF_NO             VARCHAR2(16),
   STANDARD_SALARY      NUMBER(18,2),
   ATTEND_RADIO         NUMBER(10,6),
   BASE_SALARY          NUMBER(18,2),
   MERIT_PAY            NUMBER(18,2),
   YEAR_BONUS           NUMBER(18,2),
   OVERTIME_PAY         NUMBER(18,2),
   SHIFT_DIFFERENTIAL   NUMBER(18,2),
   EVALUATION_BONUS     NUMBER(18,2),
   VARIABLE_PAY         NUMBER(18,2),
   REISSUE              NUMBER(18,2),
   DEDUCT               NUMBER(18,2),
   TOTAL                NUMBER(18,2),
   ZL_GRANT             NUMBER(18,2),
   ZX_GRANT             NUMBER(18,2),
   REMARKS              VARCHAR2(256),
   constraint PK_DISPATCHING_SALARY_INFO primary key (SALARY_ID)
);

comment on table DISPATCHING_SALARY_INFO is
'\u6d3e\u9063\u5de5\u5de5\u8d44\u4fe1\u606f';

comment on column DISPATCHING_SALARY_INFO.SALARY_ID is
'\u5de5\u8d44\u4fe1\u606fID';

comment on column DISPATCHING_SALARY_INFO.YM is
'\u5e74\u6708';

comment on column DISPATCHING_SALARY_INFO.STAFF_NO is
'\u5458\u5de5\u7f16\u53f7';

comment on column DISPATCHING_SALARY_INFO.STANDARD_SALARY is
'\u6807\u51c6\u5de5\u8d44';

comment on column DISPATCHING_SALARY_INFO.ATTEND_RADIO is
'\u8003\u52e4\u7cfb\u6570';

comment on column DISPATCHING_SALARY_INFO.BASE_SALARY is
'\u57fa\u672c\u5de5\u8d44';

comment on column DISPATCHING_SALARY_INFO.MERIT_PAY is
'\u7ee9\u6548\u5de5\u8d44';

comment on column DISPATCHING_SALARY_INFO.OVERTIME_PAY is
'\u52a0\u73ed\u8d39';

comment on column DISPATCHING_SALARY_INFO.SHIFT_DIFFERENTIAL is
'\u503c\u73ed\u8865\u8d34';

comment on column DISPATCHING_SALARY_INFO.EVALUATION_BONUS is
'\u8003\u6838\u5956\u91d1';

comment on column DISPATCHING_SALARY_INFO.VARIABLE_PAY is
'\u6d6e\u52a8\u5de5\u8d44';

comment on column DISPATCHING_SALARY_INFO.REISSUE is
'\u8865\u53d1';

comment on column DISPATCHING_SALARY_INFO.DEDUCT is
'\u6263\u6b3e';

comment on column DISPATCHING_SALARY_INFO.TOTAL is
'\u5c0f\u8ba1';

comment on column DISPATCHING_SALARY_INFO.ZL_GRANT is
'\u4e2d\u8054\u53d1\u653e';

comment on column DISPATCHING_SALARY_INFO.ZX_GRANT is
'\u4e2d\u5174\u7269\u4e1a\u53d1\u653e';

comment on column DISPATCHING_SALARY_INFO.REMARKS is
'\u5907\u6ce8';
