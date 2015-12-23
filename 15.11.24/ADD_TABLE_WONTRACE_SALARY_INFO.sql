/*==============================================================*/
/* Table: WONTRACE_SALARY_INFO                                  */
/*==============================================================*/
create table WONTRACE_SALARY_INFO  (
   SALARY_ID            NUMBER(16)                      not null,
   YM                   VARCHAR2(7),
   STAFF_NO             VARCHAR2(16),
   POST_SALARY          NUMBER(18,2),
   SENIORITY            NUMBER(18,2),
   BENEFIT              NUMBER(18,2),
   NATIONALITY_BENEFIT  NUMBER(18,2),
   REWARDS              NUMBER(18,2),
   HT_ALLOWANCE         NUMBER(18,2),
   CHILDCARE_ALLOWANCE  NUMBER(18,2),
   OTHER_ALLOWANCE      NUMBER(18,2),
   ONLY_CHILD_ALLOWANCE NUMBER(18,2),
   OVERTIME_PAY         NUMBER(18,2),
   REISSUE              NUMBER(18,2),
   TOTAL_PAY            NUMBER(18,2),
   OTHER_DEDUCT         NUMBER(18,2),
   PROVIDENT_FUND       NUMBER(18,2),
   PENSION              NUMBER(18,2),
   UNEMP_BENEFIT        NUMBER(18,2),
   BASE_HEALTH_INSURANCE NUMBER(18,2),
   LARGE_HEALTH_INSURANCE NUMBER(18,2),
   YEAR_BONUS           NUMBER(18,2),
   PRE_TAX_DEDUCT       NUMBER(18,2),
   INDIVIDUAL_INCOME_TAX NUMBER(18,2),
   TOTAL_DEDUCT         NUMBER(18,2),
   TOTAL_SALARY         NUMBER(18,2),
   REMARKS              VARCHAR2(256),
   constraint PK_WONTRACE_SALARY_INFO primary key (SALARY_ID)
);

comment on table WONTRACE_SALARY_INFO is
'\u5408\u540c\u5de5\u5de5\u8d44\u4fe1\u606f';

comment on column WONTRACE_SALARY_INFO.SALARY_ID is
'\u5de5\u8d44\u4fe1\u606fID';

comment on column WONTRACE_SALARY_INFO.YM is
'\u5e74\u6708';

comment on column WONTRACE_SALARY_INFO.STAFF_NO is
'\u5458\u5de5\u7f16\u53f7';

comment on column WONTRACE_SALARY_INFO.POST_SALARY is
'\u5c97\u4f4d\u5de5\u8d44';

comment on column WONTRACE_SALARY_INFO.SENIORITY is
'\u5de5\u9f84\u5de5\u8d44';

comment on column WONTRACE_SALARY_INFO.BENEFIT is
'\u6d25\u8865\u8d34';

comment on column WONTRACE_SALARY_INFO.NATIONALITY_BENEFIT is
'\u6c11\u65cf\u8865\u8d34';

comment on column WONTRACE_SALARY_INFO.REWARDS is
'\u5956\u52b1';

comment on column WONTRACE_SALARY_INFO.HT_ALLOWANCE is
'\u9632\u7f72\u964d\u6e29\u8865\u8d34';

comment on column WONTRACE_SALARY_INFO.CHILDCARE_ALLOWANCE is
'\u6258\u8865\u8d39';

comment on column WONTRACE_SALARY_INFO.OTHER_ALLOWANCE is
'\u5176\u5b83\u8865\u8d34';

comment on column WONTRACE_SALARY_INFO.ONLY_CHILD_ALLOWANCE is
'\u72ec\u751f\u5b50\u5973\u8d39';

comment on column WONTRACE_SALARY_INFO.OVERTIME_PAY is
'\u52a0\u73ed\u8d39';

comment on column WONTRACE_SALARY_INFO.REISSUE is
'\u8865\u53d1';

comment on column WONTRACE_SALARY_INFO.TOTAL_PAY is
'\u5e94\u53d1\u91d1\u989d';

comment on column WONTRACE_SALARY_INFO.OTHER_DEDUCT is
'\u6263\u5176\u4ed6';

comment on column WONTRACE_SALARY_INFO.PROVIDENT_FUND is
'\u516c\u79ef\u91d1';

comment on column WONTRACE_SALARY_INFO.PENSION is
'\u517b\u8001\u4fdd\u9669';

comment on column WONTRACE_SALARY_INFO.UNEMP_BENEFIT is
'\u5931\u4e1a\u4fdd\u9669';

comment on column WONTRACE_SALARY_INFO.BASE_HEALTH_INSURANCE is
'\u57fa\u672c\u533b\u7597';

comment on column WONTRACE_SALARY_INFO.LARGE_HEALTH_INSURANCE is
'\u5927\u989d\u533b\u7597';

comment on column WONTRACE_SALARY_INFO.YEAR_BONUS is
'\u4f01\u4e1a\u5e74\u91d1';

comment on column WONTRACE_SALARY_INFO.PRE_TAX_DEDUCT is
'\u7a0e\u524d\u6263\u6b3e';

comment on column WONTRACE_SALARY_INFO.INDIVIDUAL_INCOME_TAX is
'\u5e94\u7f34\u4e2a\u7a0e';

comment on column WONTRACE_SALARY_INFO.TOTAL_DEDUCT is
'\u7a0e\u540e\u6263\u6b3e\u5408\u8ba1';

comment on column WONTRACE_SALARY_INFO.TOTAL_SALARY is
'\u5b9e\u53d1\u5408\u8ba1';

comment on column WONTRACE_SALARY_INFO.REMARKS is
'\u5907\u6ce8';
