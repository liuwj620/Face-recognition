SPISNON5z                �  �   �%5     Header           !   	   GEN_TABLE      TABLE_ID   NUMBER
   TABLE_NAME   VARCHAR2   TABLE_COMMENT   VARCHAR2   SUB_TABLE_NAME   VARCHAR2   SUB_TABLE_FK_NAME   VARCHAR2
   CLASS_NAME   VARCHAR2   TPL_CATEGORY   VARCHAR2   PACKAGE_NAME   VARCHAR2   MODULE_NAME   VARCHAR2   BUSINESS_NAME   VARCHAR2   FUNCTION_NAME   VARCHAR2   FUNCTION_AUTHOR   VARCHAR2   GEN_TYPE   CHAR   GEN_PATH   VARCHAR2   OPTIONS   VARCHAR2	   CREATE_BY   VARCHAR2   CREATE_TIME   DATE	   UPDATE_BY   VARCHAR2   UPDATE_TIME   DATE   REMARK   VARCHAR2�  create table GEN_TABLE
(
  table_id          NUMBER(20) not null,
  table_name        VARCHAR2(200) default '',
  table_comment     VARCHAR2(500) default '',
  sub_table_name    VARCHAR2(64),
  sub_table_fk_name VARCHAR2(64),
  class_name        VARCHAR2(100) default '',
  tpl_category      VARCHAR2(200) default 'crud',
  package_name      VARCHAR2(100),
  module_name       VARCHAR2(30),
  business_name     VARCHAR2(30),
  function_name     VARCHAR2(50),
  function_author   VARCHAR2(50),
  gen_type          CHAR(1) default '0',
  gen_path          VARCHAR2(200) default '/',
  options           VARCHAR2(1000),
  create_by         VARCHAR2(64) default '',
  create_time       DATE,
  update_by         VARCHAR2(64) default '',
  update_time       DATE,
  remark            VARCHAR2(500)
)
;
comment on table GEN_TABLE
  is '��������ҵ���';
comment on column GEN_TABLE.table_id
  is '���';
comment on column GEN_TABLE.table_name
  is '������';
comment on column GEN_TABLE.table_comment
  is '������';
comment on column GEN_TABLE.sub_table_name
  is '�����ӱ��ı���';
comment on column GEN_TABLE.sub_table_fk_name
  is '�ӱ������������';
comment on column GEN_TABLE.class_name
  is 'ʵ��������';
comment on column GEN_TABLE.tpl_category
  is 'ʹ�õ�ģ�壨crud�������� tree�������� sub���ӱ�������';
comment on column GEN_TABLE.package_name
  is '���ɰ�·��';
comment on column GEN_TABLE.module_name
  is '����ģ����';
comment on column GEN_TABLE.business_name
  is '����ҵ����';
comment on column GEN_TABLE.function_name
  is '���ɹ�����';
comment on column GEN_TABLE.function_author
  is '���ɹ�������';
comment on column GEN_TABLE.gen_type
  is '���ɴ��뷽ʽ��0zipѹ���� 1�Զ���·����';
comment on column GEN_TABLE.gen_path
  is '����·��������Ĭ����Ŀ·����';
comment on column GEN_TABLE.options
  is '��������ѡ��';
comment on column GEN_TABLE.create_by
  is '������';
comment on column GEN_TABLE.create_time
  is '����ʱ��';
comment on column GEN_TABLE.update_by
  is '������';
comment on column GEN_TABLE.update_time
  is '����ʱ��';
comment on column GEN_TABLE.remark
  is '��ע';
alter table GEN_TABLE
  add constraint PK_GEN_TABLE primary key (TABLE_ID);
   GEN_TABLE_COLUMN   	   COLUMN_ID   NUMBER   TABLE_ID   VARCHAR2   COLUMN_NAME   VARCHAR2   COLUMN_COMMENT   VARCHAR2   COLUMN_TYPE   VARCHAR2	   JAVA_TYPE   VARCHAR2
   JAVA_FIELD   VARCHAR2   IS_PK   CHAR   IS_INCREMENT   CHAR   IS_REQUIRED   CHAR	   IS_INSERT   CHAR   IS_EDIT   CHAR   IS_LIST   CHAR   IS_QUERY   CHAR
   QUERY_TYPE   VARCHAR2	   HTML_TYPE   VARCHAR2	   DICT_TYPE   VARCHAR2   SORT   NUMBER	   CREATE_BY   VARCHAR2   CREATE_TIME   DATE	   UPDATE_BY   VARCHAR2   UPDATE_TIME   DATE�	  create table GEN_TABLE_COLUMN
(
  column_id      NUMBER(20) not null,
  table_id       VARCHAR2(64),
  column_name    VARCHAR2(200),
  column_comment VARCHAR2(500),
  column_type    VARCHAR2(100),
  java_type      VARCHAR2(500),
  java_field     VARCHAR2(200),
  is_pk          CHAR(1),
  is_increment   CHAR(1),
  is_required    CHAR(1),
  is_insert      CHAR(1),
  is_edit        CHAR(1),
  is_list        CHAR(1),
  is_query       CHAR(1),
  query_type     VARCHAR2(200) default 'EQ',
  html_type      VARCHAR2(200),
  dict_type      VARCHAR2(200) default '',
  sort           NUMBER(4),
  create_by      VARCHAR2(64) default '',
  create_time    DATE,
  update_by      VARCHAR2(64) default '',
  update_time    DATE
)
;
comment on table GEN_TABLE_COLUMN
  is '��������ҵ����ֶ�';
comment on column GEN_TABLE_COLUMN.column_id
  is '���';
comment on column GEN_TABLE_COLUMN.table_id
  is '���������';
comment on column GEN_TABLE_COLUMN.column_name
  is '������';
comment on column GEN_TABLE_COLUMN.column_comment
  is '������';
comment on column GEN_TABLE_COLUMN.column_type
  is '������';
comment on column GEN_TABLE_COLUMN.java_type
  is 'JAVA����';
comment on column GEN_TABLE_COLUMN.java_field
  is 'JAVA�ֶ���';
comment on column GEN_TABLE_COLUMN.is_pk
  is '�Ƿ�������1�ǣ�';
comment on column GEN_TABLE_COLUMN.is_increment
  is '�Ƿ�������1�ǣ�';
comment on column GEN_TABLE_COLUMN.is_required
  is '�Ƿ���1�ǣ�';
comment on column GEN_TABLE_COLUMN.is_insert
  is '�Ƿ�Ϊ�����ֶΣ�1�ǣ�';
comment on column GEN_TABLE_COLUMN.is_edit
  is '�Ƿ�༭�ֶΣ�1�ǣ�';
comment on column GEN_TABLE_COLUMN.is_list
  is '�Ƿ��б��ֶΣ�1�ǣ�';
comment on column GEN_TABLE_COLUMN.is_query
  is '�Ƿ��ѯ�ֶΣ�1�ǣ�';
comment on column GEN_TABLE_COLUMN.query_type
  is '��ѯ��ʽ�����ڡ������ڡ����ڡ�С�ڡ���Χ��';
comment on column GEN_TABLE_COLUMN.html_type
  is '��ʾ���ͣ��ı����ı��������򡢸�ѡ�򡢵�ѡ�����ڿؼ���';
comment on column GEN_TABLE_COLUMN.dict_type
  is '�ֵ�����';
comment on column GEN_TABLE_COLUMN.sort
  is '����';
comment on column GEN_TABLE_COLUMN.create_by
  is '������';
comment on column GEN_TABLE_COLUMN.create_time
  is '����ʱ��';
comment on column GEN_TABLE_COLUMN.update_by
  is '������';
comment on column GEN_TABLE_COLUMN.update_time
  is '����ʱ��';
alter table GEN_TABLE_COLUMN
  add constraint PK_GEN_TABLE_COLUMN primary key (COLUMN_ID);
   QRTZ_JOB_DETAILS
   
   SCHED_NAME   VARCHAR2   JOB_NAME   VARCHAR2	   JOB_GROUP   VARCHAR2   DESCRIPTION   VARCHAR2   JOB_CLASS_NAME   VARCHAR2
   IS_DURABLE   VARCHAR2   IS_NONCONCURRENT   VARCHAR2   IS_UPDATE_DATA   VARCHAR2   REQUESTS_RECOVERY   VARCHAR2   JOB_DATA   BLOB�  create table QRTZ_JOB_DETAILS
(
  sched_name        VARCHAR2(120) not null,
  job_name          VARCHAR2(200) not null,
  job_group         VARCHAR2(200) not null,
  description       VARCHAR2(250),
  job_class_name    VARCHAR2(250) not null,
  is_durable        VARCHAR2(1) not null,
  is_nonconcurrent  VARCHAR2(1) not null,
  is_update_data    VARCHAR2(1) not null,
  requests_recovery VARCHAR2(1) not null,
  job_data          BLOB
)
;
create index IDX_QRTZ_J_GRP on QRTZ_JOB_DETAILS (SCHED_NAME, JOB_GROUP);
create index IDX_QRTZ_J_REQ_RECOVERY on QRTZ_JOB_DETAILS (SCHED_NAME, REQUESTS_RECOVERY);
alter table QRTZ_JOB_DETAILS
  add constraint QRTZ_JOB_DETAILS_PK primary key (SCHED_NAME, JOB_NAME, JOB_GROUP);
   QRTZ_TRIGGERS   
   SCHED_NAME   VARCHAR2   TRIGGER_NAME   VARCHAR2   TRIGGER_GROUP   VARCHAR2   JOB_NAME   VARCHAR2	   JOB_GROUP   VARCHAR2   DESCRIPTION   VARCHAR2   NEXT_FIRE_TIME   NUMBER   PREV_FIRE_TIME   NUMBER   PRIORITY   NUMBER   TRIGGER_STATE   VARCHAR2   TRIGGER_TYPE   VARCHAR2
   START_TIME   NUMBER   END_TIME   NUMBER   CALENDAR_NAME   VARCHAR2   MISFIRE_INSTR   NUMBER   JOB_DATA   BLOB�  create table QRTZ_TRIGGERS
(
  sched_name     VARCHAR2(120) not null,
  trigger_name   VARCHAR2(200) not null,
  trigger_group  VARCHAR2(200) not null,
  job_name       VARCHAR2(200) not null,
  job_group      VARCHAR2(200) not null,
  description    VARCHAR2(250),
  next_fire_time NUMBER(13),
  prev_fire_time NUMBER(13),
  priority       NUMBER(13),
  trigger_state  VARCHAR2(16) not null,
  trigger_type   VARCHAR2(8) not null,
  start_time     NUMBER(13) not null,
  end_time       NUMBER(13),
  calendar_name  VARCHAR2(200),
  misfire_instr  NUMBER(2),
  job_data       BLOB
)
;
create index IDX_QRTZ_T_C on QRTZ_TRIGGERS (SCHED_NAME, CALENDAR_NAME);
create index IDX_QRTZ_T_G on QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_GROUP);
create index IDX_QRTZ_T_J on QRTZ_TRIGGERS (SCHED_NAME, JOB_NAME, JOB_GROUP);
create index IDX_QRTZ_T_JG on QRTZ_TRIGGERS (SCHED_NAME, JOB_GROUP);
create index IDX_QRTZ_T_NEXT_FIRE_TIME on QRTZ_TRIGGERS (SCHED_NAME, NEXT_FIRE_TIME);
create index IDX_QRTZ_T_NFT_MISFIRE on QRTZ_TRIGGERS (SCHED_NAME, MISFIRE_INSTR, NEXT_FIRE_TIME);
create index IDX_QRTZ_T_NFT_ST on QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_STATE, NEXT_FIRE_TIME);
create index IDX_QRTZ_T_NFT_ST_MISFIRE on QRTZ_TRIGGERS (SCHED_NAME, MISFIRE_INSTR, NEXT_FIRE_TIME, TRIGGER_STATE);
create index IDX_QRTZ_T_NFT_ST_MISFIRE_GRP on QRTZ_TRIGGERS (SCHED_NAME, MISFIRE_INSTR, NEXT_FIRE_TIME, TRIGGER_GROUP, TRIGGER_STATE);
create index IDX_QRTZ_T_N_G_STATE on QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_GROUP, TRIGGER_STATE);
create index IDX_QRTZ_T_N_STATE on QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, TRIGGER_STATE);
create index IDX_QRTZ_T_STATE on QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_STATE);
alter table QRTZ_TRIGGERS
  add constraint QRTZ_TRIGGERS_PK primary key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);
alter table QRTZ_TRIGGERS
  add constraint QRTZ_TRIGGER_TO_JOBS_FK foreign key (SCHED_NAME, JOB_NAME, JOB_GROUP)
  references QRTZ_JOB_DETAILS (SCHED_NAME, JOB_NAME, JOB_GROUP);
   QRTZ_BLOB_TRIGGERS   
   SCHED_NAME   VARCHAR2   TRIGGER_NAME   VARCHAR2   TRIGGER_GROUP   VARCHAR2	   BLOB_DATA   BLOB�  create table QRTZ_BLOB_TRIGGERS
(
  sched_name    VARCHAR2(120) not null,
  trigger_name  VARCHAR2(200) not null,
  trigger_group VARCHAR2(200) not null,
  blob_data     BLOB
)
;
alter table QRTZ_BLOB_TRIGGERS
  add constraint QRTZ_BLOB_TRIG_PK primary key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);
alter table QRTZ_BLOB_TRIGGERS
  add constraint QRTZ_BLOB_TRIG_TO_TRIG_FK foreign key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP)
  references QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);
   QRTZ_CALENDARS   
   SCHED_NAME   VARCHAR2   CALENDAR_NAME   VARCHAR2   CALENDAR   BLOB   create table QRTZ_CALENDARS
(
  sched_name    VARCHAR2(120) not null,
  calendar_name VARCHAR2(200) not null,
  calendar      BLOB not null
)
;
alter table QRTZ_CALENDARS
  add constraint QRTZ_CALENDARS_PK primary key (SCHED_NAME, CALENDAR_NAME);
   QRTZ_CRON_TRIGGERS   
   SCHED_NAME   VARCHAR2   TRIGGER_NAME   VARCHAR2   TRIGGER_GROUP   VARCHAR2   CRON_EXPRESSION   VARCHAR2   TIME_ZONE_ID   VARCHAR2:  create table QRTZ_CRON_TRIGGERS
(
  sched_name      VARCHAR2(120) not null,
  trigger_name    VARCHAR2(200) not null,
  trigger_group   VARCHAR2(200) not null,
  cron_expression VARCHAR2(120) not null,
  time_zone_id    VARCHAR2(80)
)
;
alter table QRTZ_CRON_TRIGGERS
  add constraint QRTZ_CRON_TRIG_PK primary key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);
alter table QRTZ_CRON_TRIGGERS
  add constraint QRTZ_CRON_TRIG_TO_TRIG_FK foreign key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP)
  references QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);
   QRTZ_FIRED_TRIGGERS   
   SCHED_NAME   VARCHAR2   ENTRY_ID   VARCHAR2   TRIGGER_NAME   VARCHAR2   TRIGGER_GROUP   VARCHAR2   INSTANCE_NAME   VARCHAR2
   FIRED_TIME   NUMBER
   SCHED_TIME   NUMBER   PRIORITY   NUMBER   STATE   VARCHAR2   JOB_NAME   VARCHAR2	   JOB_GROUP   VARCHAR2   IS_NONCONCURRENT   VARCHAR2   REQUESTS_RECOVERY   VARCHAR2�  create table QRTZ_FIRED_TRIGGERS
(
  sched_name        VARCHAR2(120) not null,
  entry_id          VARCHAR2(95) not null,
  trigger_name      VARCHAR2(200) not null,
  trigger_group     VARCHAR2(200) not null,
  instance_name     VARCHAR2(200) not null,
  fired_time        NUMBER(13) not null,
  sched_time        NUMBER(13) not null,
  priority          NUMBER(13) not null,
  state             VARCHAR2(16) not null,
  job_name          VARCHAR2(200),
  job_group         VARCHAR2(200),
  is_nonconcurrent  VARCHAR2(1),
  requests_recovery VARCHAR2(1)
)
;
create index IDX_QRTZ_FT_INST_JOB_REQ_RCVRY on QRTZ_FIRED_TRIGGERS (SCHED_NAME, INSTANCE_NAME, REQUESTS_RECOVERY);
create index IDX_QRTZ_FT_JG on QRTZ_FIRED_TRIGGERS (SCHED_NAME, JOB_GROUP);
create index IDX_QRTZ_FT_J_G on QRTZ_FIRED_TRIGGERS (SCHED_NAME, JOB_NAME, JOB_GROUP);
create index IDX_QRTZ_FT_TG on QRTZ_FIRED_TRIGGERS (SCHED_NAME, TRIGGER_GROUP);
create index IDX_QRTZ_FT_TRIG_INST_NAME on QRTZ_FIRED_TRIGGERS (SCHED_NAME, INSTANCE_NAME);
create index IDX_QRTZ_FT_T_G on QRTZ_FIRED_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);
alter table QRTZ_FIRED_TRIGGERS
  add constraint QRTZ_FIRED_TRIGGER_PK primary key (SCHED_NAME, ENTRY_ID);

   QRTZ_LOCKS   
   SCHED_NAME   VARCHAR2	   LOCK_NAME   VARCHAR2�   create table QRTZ_LOCKS
(
  sched_name VARCHAR2(120) not null,
  lock_name  VARCHAR2(40) not null
)
;
alter table QRTZ_LOCKS
  add constraint QRTZ_LOCKS_PK primary key (SCHED_NAME, LOCK_NAME);
   QRTZ_PAUSED_TRIGGER_GRPS   
   SCHED_NAME   VARCHAR2   TRIGGER_GROUP   VARCHAR2�   create table QRTZ_PAUSED_TRIGGER_GRPS
(
  sched_name    VARCHAR2(120) not null,
  trigger_group VARCHAR2(200) not null
)
;
alter table QRTZ_PAUSED_TRIGGER_GRPS
  add constraint QRTZ_PAUSED_TRIG_GRPS_PK primary key (SCHED_NAME, TRIGGER_GROUP);
   QRTZ_SCHEDULER_STATE   
   SCHED_NAME   VARCHAR2   INSTANCE_NAME   VARCHAR2   LAST_CHECKIN_TIME   NUMBER   CHECKIN_INTERVAL   NUMBERN  create table QRTZ_SCHEDULER_STATE
(
  sched_name        VARCHAR2(120) not null,
  instance_name     VARCHAR2(200) not null,
  last_checkin_time NUMBER(13) not null,
  checkin_interval  NUMBER(13) not null
)
;
alter table QRTZ_SCHEDULER_STATE
  add constraint QRTZ_SCHEDULER_STATE_PK primary key (SCHED_NAME, INSTANCE_NAME);
   QRTZ_SIMPLE_TRIGGERS   
   SCHED_NAME   VARCHAR2   TRIGGER_NAME   VARCHAR2   TRIGGER_GROUP   VARCHAR2   REPEAT_COUNT   NUMBER   REPEAT_INTERVAL   NUMBER   TIMES_TRIGGERED   NUMBERo  create table QRTZ_SIMPLE_TRIGGERS
(
  sched_name      VARCHAR2(120) not null,
  trigger_name    VARCHAR2(200) not null,
  trigger_group   VARCHAR2(200) not null,
  repeat_count    NUMBER(7) not null,
  repeat_interval NUMBER(12) not null,
  times_triggered NUMBER(10) not null
)
;
alter table QRTZ_SIMPLE_TRIGGERS
  add constraint QRTZ_SIMPLE_TRIG_PK primary key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);
alter table QRTZ_SIMPLE_TRIGGERS
  add constraint QRTZ_SIMPLE_TRIG_TO_TRIG_FK foreign key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP)
  references QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);
   QRTZ_SIMPROP_TRIGGERS   
   SCHED_NAME   VARCHAR2   TRIGGER_NAME   VARCHAR2   TRIGGER_GROUP   VARCHAR2
   STR_PROP_1   VARCHAR2
   STR_PROP_2   VARCHAR2
   STR_PROP_3   VARCHAR2
   INT_PROP_1   NUMBER
   INT_PROP_2   NUMBER   LONG_PROP_1   NUMBER   LONG_PROP_2   NUMBER
   DEC_PROP_1   NUMBER
   DEC_PROP_2   NUMBER   BOOL_PROP_1   VARCHAR2   BOOL_PROP_2   VARCHAR2E  create table QRTZ_SIMPROP_TRIGGERS
(
  sched_name    VARCHAR2(120) not null,
  trigger_name  VARCHAR2(200) not null,
  trigger_group VARCHAR2(200) not null,
  str_prop_1    VARCHAR2(512),
  str_prop_2    VARCHAR2(512),
  str_prop_3    VARCHAR2(512),
  int_prop_1    NUMBER(10),
  int_prop_2    NUMBER(10),
  long_prop_1   NUMBER(13),
  long_prop_2   NUMBER(13),
  dec_prop_1    NUMBER(13,4),
  dec_prop_2    NUMBER(13,4),
  bool_prop_1   VARCHAR2(1),
  bool_prop_2   VARCHAR2(1)
)
;
alter table QRTZ_SIMPROP_TRIGGERS
  add constraint QRTZ_SIMPROP_TRIG_PK primary key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);
alter table QRTZ_SIMPROP_TRIGGERS
  add constraint QRTZ_SIMPROP_TRIG_TO_TRIG_FK foreign key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP)
  references QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);

   SYS_CONFIG
   	   CONFIG_ID   NUMBER   CONFIG_NAME   VARCHAR2
   CONFIG_KEY   VARCHAR2   CONFIG_VALUE   VARCHAR2   CONFIG_TYPE   CHAR	   CREATE_BY   VARCHAR2   CREATE_TIME   DATE	   UPDATE_BY   VARCHAR2   UPDATE_TIME   DATE   REMARK   VARCHAR2n  create table SYS_CONFIG
(
  config_id    NUMBER(20) not null,
  config_name  VARCHAR2(100) default '',
  config_key   VARCHAR2(100) default '',
  config_value VARCHAR2(100) default '',
  config_type  CHAR(1) default 'N',
  create_by    VARCHAR2(64) default '',
  create_time  DATE,
  update_by    VARCHAR2(64) default '',
  update_time  DATE,
  remark       VARCHAR2(500)
)
;
comment on table SYS_CONFIG
  is '�������ñ�';
comment on column SYS_CONFIG.config_id
  is '��������seq_sys_config.nextval';
comment on column SYS_CONFIG.config_name
  is '��������';
comment on column SYS_CONFIG.config_key
  is '��������';
comment on column SYS_CONFIG.config_value
  is '������ֵ';
comment on column SYS_CONFIG.config_type
  is 'ϵͳ���ã�Y�� N��';
comment on column SYS_CONFIG.create_by
  is '������';
comment on column SYS_CONFIG.create_time
  is '����ʱ��';
comment on column SYS_CONFIG.update_by
  is '������';
comment on column SYS_CONFIG.update_time
  is '����ʱ��';
comment on column SYS_CONFIG.remark
  is '��ע';
alter table SYS_CONFIG
  add constraint PK_SYS_CONFIG primary key (CONFIG_ID);
   SYS_DEPT      DEPT_ID   NUMBER	   PARENT_ID   NUMBER	   ANCESTORS   VARCHAR2	   DEPT_NAME   VARCHAR2	   ORDER_NUM   NUMBER   LEADER   VARCHAR2   PHONE   VARCHAR2   EMAIL   VARCHAR2   STATUS   CHAR   DEL_FLAG   CHAR	   CREATE_BY   VARCHAR2   CREATE_TIME   DATE	   UPDATE_BY   VARCHAR2   UPDATE_TIME   DATE	   DEPT_CODE   VARCHAR2�  create table SYS_DEPT
(
  dept_id     NUMBER(20) not null,
  parent_id   NUMBER(20) default 0,
  ancestors   VARCHAR2(50) default '',
  dept_name   VARCHAR2(30) default '',
  order_num   NUMBER(4) default 0,
  leader      VARCHAR2(20),
  phone       VARCHAR2(11),
  email       VARCHAR2(50),
  status      CHAR(1) default '0',
  del_flag    CHAR(1) default '0',
  create_by   VARCHAR2(64) default '',
  create_time DATE,
  update_by   VARCHAR2(64) default '',
  update_time DATE,
  dept_code   VARCHAR2(20)
)
;
comment on table SYS_DEPT
  is '������Ϣ��';
comment on column SYS_DEPT.dept_id
  is '��������seq_sys_dept.nextval';
comment on column SYS_DEPT.parent_id
  is '������id';
comment on column SYS_DEPT.ancestors
  is '�漶�б�';
comment on column SYS_DEPT.dept_name
  is '��������';
comment on column SYS_DEPT.order_num
  is '��ʾ˳��';
comment on column SYS_DEPT.leader
  is '������';
comment on column SYS_DEPT.phone
  is '��ϵ�绰';
comment on column SYS_DEPT.email
  is '����';
comment on column SYS_DEPT.status
  is '����״̬��0���� 1ͣ�ã�';
comment on column SYS_DEPT.del_flag
  is 'ɾ����־��0�������� 2����ɾ����';
comment on column SYS_DEPT.create_by
  is '������';
comment on column SYS_DEPT.create_time
  is '����ʱ��';
comment on column SYS_DEPT.update_by
  is '������';
comment on column SYS_DEPT.update_time
  is '����ʱ��';
comment on column SYS_DEPT.dept_code
  is '���ű��';
alter table SYS_DEPT
  add constraint PK_SYS_DEPT primary key (DEPT_ID);
   SYS_DICT_DATA   	   DICT_CODE   NUMBER	   DICT_SORT   NUMBER
   DICT_LABEL   VARCHAR2
   DICT_VALUE   VARCHAR2	   DICT_TYPE   VARCHAR2	   CSS_CLASS   VARCHAR2
   LIST_CLASS   VARCHAR2
   IS_DEFAULT   CHAR   STATUS   CHAR	   CREATE_BY   VARCHAR2   CREATE_TIME   DATE	   UPDATE_BY   VARCHAR2   UPDATE_TIME   DATE   REMARK   VARCHAR2!  create table SYS_DICT_DATA
(
  dict_code   NUMBER(20) not null,
  dict_sort   NUMBER(4) default 0,
  dict_label  VARCHAR2(100) default '',
  dict_value  VARCHAR2(100) default '',
  dict_type   VARCHAR2(100) default '',
  css_class   VARCHAR2(100),
  list_class  VARCHAR2(100),
  is_default  CHAR(1) default 'N',
  status      CHAR(1) default '0',
  create_by   VARCHAR2(64) default '',
  create_time DATE,
  update_by   VARCHAR2(64) default '',
  update_time DATE,
  remark      VARCHAR2(500)
)
;
comment on table SYS_DICT_DATA
  is '�ֵ����ݱ�';
comment on column SYS_DICT_DATA.dict_code
  is '�ֵ�����seq_sys_dict_data.nextval';
comment on column SYS_DICT_DATA.dict_sort
  is '�ֵ�����';
comment on column SYS_DICT_DATA.dict_label
  is '�ֵ��ǩ';
comment on column SYS_DICT_DATA.dict_value
  is '�ֵ��ֵ';
comment on column SYS_DICT_DATA.dict_type
  is '�ֵ�����';
comment on column SYS_DICT_DATA.css_class
  is '��ʽ���ԣ�������ʽ��չ��';
comment on column SYS_DICT_DATA.list_class
  is '���������ʽ';
comment on column SYS_DICT_DATA.is_default
  is '�Ƿ�Ĭ�ϣ�Y�� N��';
comment on column SYS_DICT_DATA.status
  is '״̬��0���� 1ͣ�ã�';
comment on column SYS_DICT_DATA.create_by
  is '������';
comment on column SYS_DICT_DATA.create_time
  is '����ʱ��';
comment on column SYS_DICT_DATA.update_by
  is '������';
comment on column SYS_DICT_DATA.update_time
  is '����ʱ��';
comment on column SYS_DICT_DATA.remark
  is '��ע';
alter table SYS_DICT_DATA
  add constraint PK_SYS_DICT_DATA primary key (DICT_CODE);
   SYS_DICT_TYPE	      DICT_ID   NUMBER	   DICT_NAME   VARCHAR2	   DICT_TYPE   VARCHAR2   STATUS   CHAR	   CREATE_BY   VARCHAR2   CREATE_TIME   DATE	   UPDATE_BY   VARCHAR2   UPDATE_TIME   DATE   REMARK   VARCHAR2d  create table SYS_DICT_TYPE
(
  dict_id     NUMBER(20) not null,
  dict_name   VARCHAR2(100) default '',
  dict_type   VARCHAR2(100) default '',
  status      CHAR(1) default '0',
  create_by   VARCHAR2(64) default '',
  create_time DATE,
  update_by   VARCHAR2(64) default '',
  update_time DATE,
  remark      VARCHAR2(500)
)
;
comment on table SYS_DICT_TYPE
  is '�ֵ����ͱ�';
comment on column SYS_DICT_TYPE.dict_id
  is '�ֵ�����seq_sys_dict_type.nextval';
comment on column SYS_DICT_TYPE.dict_name
  is '�ֵ�����';
comment on column SYS_DICT_TYPE.dict_type
  is '�ֵ�����';
comment on column SYS_DICT_TYPE.status
  is '״̬��0���� 1ͣ�ã�';
comment on column SYS_DICT_TYPE.create_by
  is '������';
comment on column SYS_DICT_TYPE.create_time
  is '����ʱ��';
comment on column SYS_DICT_TYPE.update_by
  is '������';
comment on column SYS_DICT_TYPE.update_time
  is '����ʱ��';
comment on column SYS_DICT_TYPE.remark
  is '��ע';
create unique index SYS_DICT_TYPE_INDEX1 on SYS_DICT_TYPE (DICT_TYPE);
alter table SYS_DICT_TYPE
  add constraint PK_SYS_DICT_TYPE primary key (DICT_ID);
   SYS_INVOKER   
   INVOKER_ID   NUMBER
   INVOKER_IP   VARCHAR2   INVOKER_TIME   DATE   INVOKER_RESULT   CHAR   INVOKER_STATUS   CHAR   INVOKER_SFZMHM   VARCHAR2   INVOKER_MSG   VARCHAR2�  create table SYS_INVOKER
(
  invoker_id     NUMBER(20) not null,
  invoker_ip     VARCHAR2(50) not null,
  invoker_time   DATE,
  invoker_result CHAR(1) default '0',
  invoker_status CHAR(1) default '0',
  invoker_sfzmhm VARCHAR2(18) not null,
  invoker_msg    VARCHAR2(20)
)
;
comment on table SYS_INVOKER
  is '������־��';
comment on column SYS_INVOKER.invoker_id
  is '������seq_sys_invoker.nextval';
comment on column SYS_INVOKER.invoker_ip
  is '������IP';
comment on column SYS_INVOKER.invoker_time
  is '����ʱ��';
comment on column SYS_INVOKER.invoker_result
  is '���ýӿڽ��,0:�ɹ�1:ʧ��';
comment on column SYS_INVOKER.invoker_status
  is '�Ƿ�Ϸ�������,0:�Ϸ�1:�Ƿ�';
comment on column SYS_INVOKER.invoker_sfzmhm
  is '�˶Ե�����֤';
comment on column SYS_INVOKER.invoker_msg
  is '����ʧ��ԭ��';
alter table SYS_INVOKER
  add constraint PK_SYS_INVOKER primary key (INVOKER_ID);
   SYS_JOB      JOB_ID   NUMBER   JOB_NAME   VARCHAR2	   JOB_GROUP   VARCHAR2   INVOKE_TARGET   VARCHAR2   CRON_EXPRESSION   VARCHAR2   MISFIRE_POLICY   VARCHAR2
   CONCURRENT   CHAR   STATUS   CHAR	   CREATE_BY   VARCHAR2   CREATE_TIME   DATE	   UPDATE_BY   VARCHAR2   UPDATE_TIME   DATE   REMARK   VARCHAR2  create table SYS_JOB
(
  job_id          NUMBER(20) not null,
  job_name        VARCHAR2(64) default '' not null,
  job_group       VARCHAR2(64) default '' not null,
  invoke_target   VARCHAR2(500) not null,
  cron_expression VARCHAR2(255) default '',
  misfire_policy  VARCHAR2(20) default '3',
  concurrent      CHAR(1) default '1',
  status          CHAR(1) default '0',
  create_by       VARCHAR2(64) default '',
  create_time     DATE,
  update_by       VARCHAR2(64) default '',
  update_time     DATE,
  remark          VARCHAR2(500) default ''
)
;
comment on table SYS_JOB
  is '��ʱ������ȱ�';
comment on column SYS_JOB.job_id
  is '��������seq_sys_job.nextval';
comment on column SYS_JOB.job_name
  is '��������';
comment on column SYS_JOB.job_group
  is '��������';
comment on column SYS_JOB.invoke_target
  is '����Ŀ���ַ���';
comment on column SYS_JOB.cron_expression
  is 'cronִ�б���ʽ';
comment on column SYS_JOB.misfire_policy
  is '�ƻ�ִ�д�����ԣ�1����ִ�� 2ִ��һ�� 3����ִ�У�';
comment on column SYS_JOB.concurrent
  is '�Ƿ񲢷�ִ�У�0���� 1��ֹ��';
comment on column SYS_JOB.status
  is '״̬��0���� 1��ͣ��';
comment on column SYS_JOB.create_by
  is '������';
comment on column SYS_JOB.create_time
  is '����ʱ��';
comment on column SYS_JOB.update_by
  is '������';
comment on column SYS_JOB.update_time
  is '����ʱ��';
comment on column SYS_JOB.remark
  is '��ע��Ϣ';
alter table SYS_JOB
  add constraint PK_SYS_JOB primary key (JOB_ID, JOB_NAME, JOB_GROUP);
   SYS_JOB_LOG   
   JOB_LOG_ID   NUMBER   JOB_NAME   VARCHAR2	   JOB_GROUP   VARCHAR2   INVOKE_TARGET   VARCHAR2   JOB_MESSAGE   VARCHAR2   STATUS   CHAR   EXCEPTION_INFO   VARCHAR2   CREATE_TIME   DATE�  create table SYS_JOB_LOG
(
  job_log_id     NUMBER(20) not null,
  job_name       VARCHAR2(64) not null,
  job_group      VARCHAR2(64) not null,
  invoke_target  VARCHAR2(500) not null,
  job_message    VARCHAR2(500),
  status         CHAR(1) default '0',
  exception_info VARCHAR2(2000) default '',
  create_time    DATE
)
;
comment on table SYS_JOB_LOG
  is '��ʱ���������־��';
comment on column SYS_JOB_LOG.job_log_id
  is '��־����seq_sys_job_log.nextval';
comment on column SYS_JOB_LOG.job_name
  is '��������';
comment on column SYS_JOB_LOG.job_group
  is '��������';
comment on column SYS_JOB_LOG.invoke_target
  is '����Ŀ���ַ���';
comment on column SYS_JOB_LOG.job_message
  is '��־��Ϣ';
comment on column SYS_JOB_LOG.status
  is 'ִ��״̬��0���� 1ʧ�ܣ�';
comment on column SYS_JOB_LOG.exception_info
  is '�쳣��Ϣ';
comment on column SYS_JOB_LOG.create_time
  is '����ʱ��';
alter table SYS_JOB_LOG
  add constraint PK_SYS_JOB_LOG primary key (JOB_LOG_ID);
   SYS_LOGININFOR	      INFO_ID   NUMBER
   LOGIN_NAME   VARCHAR2   IPADDR   VARCHAR2   LOGIN_LOCATION   VARCHAR2   BROWSER   VARCHAR2   OS   VARCHAR2   STATUS   CHAR   MSG   VARCHAR2
   LOGIN_TIME   DATEl  create table SYS_LOGININFOR
(
  info_id        NUMBER(20) not null,
  login_name     VARCHAR2(50) default '',
  ipaddr         VARCHAR2(50) default '',
  login_location VARCHAR2(255) default '',
  browser        VARCHAR2(50) default '',
  os             VARCHAR2(50) default '',
  status         CHAR(1) default '0',
  msg            VARCHAR2(255) default '',
  login_time     DATE
)
;
comment on table SYS_LOGININFOR
  is 'ϵͳ���ʼ�¼';
comment on column SYS_LOGININFOR.info_id
  is '��������seq_seq_sys_logininfor.nextval';
comment on column SYS_LOGININFOR.login_name
  is '��¼�˺�';
comment on column SYS_LOGININFOR.ipaddr
  is '��¼IP��ַ';
comment on column SYS_LOGININFOR.login_location
  is '��¼�ص�';
comment on column SYS_LOGININFOR.browser
  is '���������';
comment on column SYS_LOGININFOR.os
  is '����ϵͳ';
comment on column SYS_LOGININFOR.status
  is '��¼״̬��0�ɹ� 1ʧ�ܣ�';
comment on column SYS_LOGININFOR.msg
  is '��ʾ��Ϣ';
comment on column SYS_LOGININFOR.login_time
  is '����ʱ��';
alter table SYS_LOGININFOR
  add constraint PK_SYS_LOGININFOR primary key (INFO_ID);
   SYS_MENU      MENU_ID   NUMBER	   MENU_NAME   VARCHAR2	   PARENT_ID   NUMBER	   ORDER_NUM   NUMBER   URL   VARCHAR2   TARGET   VARCHAR2	   MENU_TYPE   CHAR   VISIBLE   CHAR   PERMS   VARCHAR2   ICON   VARCHAR2	   CREATE_BY   VARCHAR2   CREATE_TIME   DATE	   UPDATE_BY   VARCHAR2   UPDATE_TIME   DATE   REMARK   VARCHAR21  create table SYS_MENU
(
  menu_id     NUMBER(20) not null,
  menu_name   VARCHAR2(50) not null,
  parent_id   NUMBER(20) default 0,
  order_num   NUMBER(4) default 0,
  url         VARCHAR2(200) default '#',
  target      VARCHAR2(20) default '',
  menu_type   CHAR(1) default '',
  visible     CHAR(1) default 0,
  perms       VARCHAR2(100),
  icon        VARCHAR2(100) default '#',
  create_by   VARCHAR2(64) default '',
  create_time DATE,
  update_by   VARCHAR2(64) default '',
  update_time DATE,
  remark      VARCHAR2(500) default ''
)
;
comment on table SYS_MENU
  is '�˵�Ȩ�ޱ�';
comment on column SYS_MENU.menu_id
  is '�˵�����seq_sys_post.nextval';
comment on column SYS_MENU.menu_name
  is '�˵�����';
comment on column SYS_MENU.parent_id
  is '���˵�ID';
comment on column SYS_MENU.order_num
  is '��ʾ˳��';
comment on column SYS_MENU.url
  is '�����ַ';
comment on column SYS_MENU.target
  is '�򿪷�ʽ��menuItemҳǩ menuBlank�´��ڣ�';
comment on column SYS_MENU.menu_type
  is '�˵����ͣ�MĿ¼ C�˵� F��ť��';
comment on column SYS_MENU.visible
  is '�˵�״̬��0��ʾ 1���أ�';
comment on column SYS_MENU.perms
  is 'Ȩ�ޱ�ʶ';
comment on column SYS_MENU.icon
  is '�˵�ͼ��';
comment on column SYS_MENU.create_by
  is '������';
comment on column SYS_MENU.create_time
  is '����ʱ��';
comment on column SYS_MENU.update_by
  is '������';
comment on column SYS_MENU.update_time
  is '����ʱ��';
comment on column SYS_MENU.remark
  is '��ע';
alter table SYS_MENU
  add constraint PK_SYS_MENU primary key (MENU_ID);

   SYS_NOTICE
   	   NOTICE_ID   NUMBER   NOTICE_TITLE   VARCHAR2   NOTICE_TYPE   CHAR   NOTICE_CONTENT   VARCHAR2   STATUS   CHAR	   CREATE_BY   VARCHAR2   CREATE_TIME   DATE	   UPDATE_BY   VARCHAR2   UPDATE_TIME   DATE   REMARK   VARCHAR2  create table SYS_NOTICE
(
  notice_id      NUMBER(20) not null,
  notice_title   VARCHAR2(50) not null,
  notice_type    CHAR(1) not null,
  notice_content VARCHAR2(2000),
  status         CHAR(1) default '0',
  create_by      VARCHAR2(64) default '',
  create_time    DATE,
  update_by      VARCHAR2(64) default '',
  update_time    DATE,
  remark         VARCHAR2(255)
)
;
comment on table SYS_NOTICE
  is '֪ͨ�����';
comment on column SYS_NOTICE.notice_id
  is '��������seq_sys_notice.nextval';
comment on column SYS_NOTICE.notice_title
  is '�������';
comment on column SYS_NOTICE.notice_type
  is '�������ͣ�1֪ͨ 2���棩';
comment on column SYS_NOTICE.notice_content
  is '��������';
comment on column SYS_NOTICE.status
  is '����״̬��0���� 1�رգ�';
comment on column SYS_NOTICE.create_by
  is '������';
comment on column SYS_NOTICE.create_time
  is '����ʱ��';
comment on column SYS_NOTICE.update_by
  is '������';
comment on column SYS_NOTICE.update_time
  is '����ʱ��';
comment on column SYS_NOTICE.remark
  is '��ע';
alter table SYS_NOTICE
  add constraint PK_SYS_NOTICE primary key (NOTICE_ID);
   SYS_OPER_LOG      OPER_ID   NUMBER   TITLE   VARCHAR2   BUSINESS_TYPE   NUMBER   METHOD   VARCHAR2   REQUEST_METHOD   VARCHAR2   OPERATOR_TYPE   NUMBER	   OPER_NAME   VARCHAR2	   DEPT_NAME   VARCHAR2   OPER_URL   VARCHAR2   OPER_IP   VARCHAR2   OPER_LOCATION   VARCHAR2
   OPER_PARAM   VARCHAR2   JSON_RESULT   VARCHAR2   STATUS   NUMBER	   ERROR_MSG   VARCHAR2	   OPER_TIME   DATEf  create table SYS_OPER_LOG
(
  oper_id        NUMBER(20) not null,
  title          VARCHAR2(50) default '',
  business_type  NUMBER(2) default 0,
  method         VARCHAR2(100) default '',
  request_method VARCHAR2(10) default '',
  operator_type  NUMBER(1) default 0,
  oper_name      VARCHAR2(50) default '',
  dept_name      VARCHAR2(50) default '',
  oper_url       VARCHAR2(255) default '',
  oper_ip        VARCHAR2(50) default '',
  oper_location  VARCHAR2(255) default '',
  oper_param     VARCHAR2(2000) default '',
  json_result    VARCHAR2(2000) default '',
  status         NUMBER(1) default 0,
  error_msg      VARCHAR2(2000) default '',
  oper_time      DATE
)
;
comment on table SYS_OPER_LOG
  is '������־��¼';
comment on column SYS_OPER_LOG.oper_id
  is '��־����seq_sys_oper_log.nextval';
comment on column SYS_OPER_LOG.title
  is 'ģ�����';
comment on column SYS_OPER_LOG.business_type
  is 'ҵ�����ͣ�0���� 1���� 2�޸� 3ɾ����';
comment on column SYS_OPER_LOG.method
  is '��������';
comment on column SYS_OPER_LOG.request_method
  is '����ʽ';
comment on column SYS_OPER_LOG.operator_type
  is '�������0���� 1��̨�û� 2�ֻ����û���';
comment on column SYS_OPER_LOG.oper_name
  is '������Ա';
comment on column SYS_OPER_LOG.dept_name
  is '��������';
comment on column SYS_OPER_LOG.oper_url
  is '����URL';
comment on column SYS_OPER_LOG.oper_ip
  is '������ַ';
comment on column SYS_OPER_LOG.oper_location
  is '�����ص�';
comment on column SYS_OPER_LOG.oper_param
  is '�������';
comment on column SYS_OPER_LOG.json_result
  is '���ز���';
comment on column SYS_OPER_LOG.status
  is '����״̬��0���� 1�쳣��';
comment on column SYS_OPER_LOG.error_msg
  is '������Ϣ';
comment on column SYS_OPER_LOG.oper_time
  is '����ʱ��';
alter table SYS_OPER_LOG
  add constraint PK_SYS_OPER_LOG primary key (OPER_ID);
   SYS_POST
      POST_ID   NUMBER	   POST_CODE   VARCHAR2	   POST_NAME   VARCHAR2	   POST_SORT   NUMBER   STATUS   CHAR	   CREATE_BY   VARCHAR2   CREATE_TIME   DATE	   UPDATE_BY   VARCHAR2   UPDATE_TIME   DATE   REMARK   VARCHAR2(  create table SYS_POST
(
  post_id     NUMBER(20) not null,
  post_code   VARCHAR2(64) not null,
  post_name   VARCHAR2(50) not null,
  post_sort   NUMBER(4) not null,
  status      CHAR(1) not null,
  create_by   VARCHAR2(64) default '',
  create_time DATE,
  update_by   VARCHAR2(64) default '',
  update_time DATE,
  remark      VARCHAR2(500)
)
;
comment on table SYS_POST
  is '��λ��Ϣ��';
comment on column SYS_POST.post_id
  is '��λ����seq_sys_post.nextval';
comment on column SYS_POST.post_code
  is '��λ����';
comment on column SYS_POST.post_name
  is '��λ����';
comment on column SYS_POST.post_sort
  is '��ʾ˳��';
comment on column SYS_POST.status
  is '״̬��0���� 1ͣ�ã�';
comment on column SYS_POST.create_by
  is '������';
comment on column SYS_POST.create_time
  is '����ʱ��';
comment on column SYS_POST.update_by
  is '������';
comment on column SYS_POST.update_time
  is '����ʱ��';
comment on column SYS_POST.remark
  is '��ע';
alter table SYS_POST
  add constraint PK_SYS_POST primary key (POST_ID);
   SYS_ROLE      ROLE_ID   NUMBER	   ROLE_NAME   VARCHAR2   ROLE_KEY   VARCHAR2	   ROLE_SORT   NUMBER
   DATA_SCOPE   CHAR   STATUS   CHAR   DEL_FLAG   CHAR	   CREATE_BY   VARCHAR2   CREATE_TIME   DATE	   UPDATE_BY   VARCHAR2   UPDATE_TIME   DATE   REMARK   VARCHAR2$  create table SYS_ROLE
(
  role_id     NUMBER(20) not null,
  role_name   VARCHAR2(30) not null,
  role_key    VARCHAR2(100) not null,
  role_sort   NUMBER(4) not null,
  data_scope  CHAR(1) default '1',
  status      CHAR(1) not null,
  del_flag    CHAR(1) default '0',
  create_by   VARCHAR2(64) default '',
  create_time DATE,
  update_by   VARCHAR2(64) default '',
  update_time DATE,
  remark      VARCHAR2(500)
)
;
comment on table SYS_ROLE
  is '��ɫ��Ϣ��';
comment on column SYS_ROLE.role_id
  is '��ɫ����seq_sys_post.nextval';
comment on column SYS_ROLE.role_name
  is '��ɫ����';
comment on column SYS_ROLE.role_key
  is '��ɫȨ���ַ���';
comment on column SYS_ROLE.role_sort
  is '��ʾ˳��';
comment on column SYS_ROLE.data_scope
  is '���ݷ�Χ��1��ȫ������Ȩ�� 2���Զ�����Ȩ�ޣ�';
comment on column SYS_ROLE.status
  is '��ɫ״̬��0���� 1ͣ�ã�';
comment on column SYS_ROLE.del_flag
  is 'ɾ����־��0�������� 2����ɾ����';
comment on column SYS_ROLE.create_by
  is '������';
comment on column SYS_ROLE.create_time
  is '����ʱ��';
comment on column SYS_ROLE.update_by
  is '������';
comment on column SYS_ROLE.update_time
  is '����ʱ��';
comment on column SYS_ROLE.remark
  is '��ע';
alter table SYS_ROLE
  add constraint PK_SYS_ROLE primary key (ROLE_ID);
   SYS_ROLE_DEPT      ROLE_ID   NUMBER   DEPT_ID   NUMBERn  create table SYS_ROLE_DEPT
(
  role_id NUMBER(20) not null,
  dept_id NUMBER(20) not null
)
;
comment on table SYS_ROLE_DEPT
  is '��ɫ�Ͳ��Ź�����';
comment on column SYS_ROLE_DEPT.role_id
  is '��ɫID';
comment on column SYS_ROLE_DEPT.dept_id
  is '����ID';
alter table SYS_ROLE_DEPT
  add constraint PK_SYS_ROLE_DEPT primary key (ROLE_ID, DEPT_ID);
   SYS_ROLE_MENU      ROLE_ID   NUMBER   MENU_ID   NUMBERn  create table SYS_ROLE_MENU
(
  role_id NUMBER(20) not null,
  menu_id NUMBER(20) not null
)
;
comment on table SYS_ROLE_MENU
  is '��ɫ�Ͳ˵�������';
comment on column SYS_ROLE_MENU.role_id
  is '��ɫID';
comment on column SYS_ROLE_MENU.menu_id
  is '�˵�ID';
alter table SYS_ROLE_MENU
  add constraint PK_SYS_ROLE_MENU primary key (ROLE_ID, MENU_ID);
   SYS_STATISTICS
      STATISTICS_ID   NUMBER   FAIL   NUMBER   NOFAIL   NUMBER	   FAIL_PASS   NUMBER   NOFAIL_PASS   NUMBER   CONTRAST   VARCHAR2	   DEPT_CODE   VARCHAR2	   DEPT_NAME   VARCHAR2   SYSTEM_CODE   VARCHAR2   SYSTEM_NAME   VARCHAR2�  create table SYS_STATISTICS
(
  statistics_id NUMBER(20) not null,
  fail          NUMBER(20) default '0',
  nofail        NUMBER(20) default '0',
  fail_pass     NUMBER(5) default '0',
  nofail_pass   NUMBER(5) default '0',
  contrast      VARCHAR2(18) not null,
  dept_code     VARCHAR2(20),
  dept_name     VARCHAR2(20),
  system_code   VARCHAR2(20),
  system_name   VARCHAR2(20)
)
;
comment on table SYS_STATISTICS
  is '�ԱȽ��ͳ�Ʊ�';
comment on column SYS_STATISTICS.statistics_id
  is '������seq_sys_statistics.nextval';
comment on column SYS_STATISTICS.fail
  is 'ͨ������';
comment on column SYS_STATISTICS.nofail
  is '��ͨ������';
comment on column SYS_STATISTICS.fail_pass
  is 'ͨ����';
comment on column SYS_STATISTICS.nofail_pass
  is '��ͨ����';
comment on column SYS_STATISTICS.contrast
  is '�ԱȲ���';
comment on column SYS_STATISTICS.dept_code
  is '���ű��';
comment on column SYS_STATISTICS.dept_name
  is '��������';
comment on column SYS_STATISTICS.system_code
  is 'ϵͳ���';
comment on column SYS_STATISTICS.system_name
  is 'ϵͳ����';
alter table SYS_STATISTICS
  add constraint PK_SYS_STATISTICS primary key (STATISTICS_ID);
   SYS_USER      USER_ID   NUMBER   DEPT_ID   NUMBER
   LOGIN_NAME   VARCHAR2	   USER_NAME   VARCHAR2	   USER_TYPE   VARCHAR2   EMAIL   VARCHAR2   PHONENUMBER   VARCHAR2   SEX   CHAR   AVATAR   VARCHAR2   PASSWORD   VARCHAR2   SALT   VARCHAR2   STATUS   CHAR   DEL_FLAG   CHAR   LOGIN_IP   VARCHAR2
   LOGIN_DATE   DATE	   CREATE_BY   VARCHAR2   CREATE_TIME   DATE	   UPDATE_BY   VARCHAR2   UPDATE_TIME   DATE   REMARK   VARCHAR2   LOGINTRUEIP   VARCHAR2   IP_START   VARCHAR2   IP_END   VARCHAR2�  create table SYS_USER
(
  user_id     NUMBER(20) not null,
  dept_id     NUMBER(20),
  login_name  VARCHAR2(30) not null,
  user_name   VARCHAR2(30) default '',
  user_type   VARCHAR2(2) default '00',
  email       VARCHAR2(50) default '',
  phonenumber VARCHAR2(11) default '',
  sex         CHAR(1) default '0',
  avatar      VARCHAR2(100) default '',
  password    VARCHAR2(50) default '',
  salt        VARCHAR2(20) default '',
  status      CHAR(1) default '0',
  del_flag    CHAR(1) default '0',
  login_ip    VARCHAR2(50) default '',
  login_date  DATE,
  create_by   VARCHAR2(64),
  create_time DATE,
  update_by   VARCHAR2(64) default '',
  update_time DATE,
  remark      VARCHAR2(500) default '',
  logintrueip VARCHAR2(500),
  ip_start    VARCHAR2(20),
  ip_end      VARCHAR2(20)
)
;
comment on table SYS_USER
  is '�û���Ϣ��';
comment on column SYS_USER.user_id
  is '�û�����seq_sys_user.nextval';
comment on column SYS_USER.dept_id
  is '����ID';
comment on column SYS_USER.login_name
  is '��¼�˺�';
comment on column SYS_USER.user_name
  is '�û��ǳ�';
comment on column SYS_USER.user_type
  is '�û����ͣ�00ϵͳ�û� 01ע���û���';
comment on column SYS_USER.email
  is '�û�����';
comment on column SYS_USER.phonenumber
  is '�ֻ�����';
comment on column SYS_USER.sex
  is '�û��Ա�0�� 1Ů 2δ֪��';
comment on column SYS_USER.avatar
  is 'ͷ��·��';
comment on column SYS_USER.password
  is '����';
comment on column SYS_USER.salt
  is '�μ���';
comment on column SYS_USER.status
  is '�ʺ�״̬��0���� 1ͣ�ã�';
comment on column SYS_USER.del_flag
  is 'ɾ����־��0�������� 2����ɾ����';
comment on column SYS_USER.login_ip
  is '����½IP';
comment on column SYS_USER.login_date
  is '����½ʱ��';
comment on column SYS_USER.create_by
  is '������';
comment on column SYS_USER.create_time
  is '����ʱ��';
comment on column SYS_USER.update_by
  is '������';
comment on column SYS_USER.update_time
  is '����ʱ��';
comment on column SYS_USER.remark
  is '��ע';
comment on column SYS_USER.logintrueip
  is '�̶�ip';
comment on column SYS_USER.ip_start
  is '��ʼip��';
comment on column SYS_USER.ip_end
  is '����ip��';
alter table SYS_USER
  add constraint PK_SYS_USER primary key (USER_ID);
   SYS_USER_ONLINE   	   SESSIONID   VARCHAR2
   LOGIN_NAME   VARCHAR2	   DEPT_NAME   VARCHAR2   IPADDR   VARCHAR2   LOGIN_LOCATION   VARCHAR2   BROWSER   VARCHAR2   OS   VARCHAR2   STATUS   VARCHAR2   START_TIMESTAMP   DATE   LAST_ACCESS_TIME   DATE   EXPIRE_TIME   NUMBER  create table SYS_USER_ONLINE
(
  sessionid        VARCHAR2(50) default '' not null,
  login_name       VARCHAR2(50) default '',
  dept_name        VARCHAR2(50) default '',
  ipaddr           VARCHAR2(50) default '',
  login_location   VARCHAR2(255) default '',
  browser          VARCHAR2(50) default '',
  os               VARCHAR2(50) default '',
  status           VARCHAR2(10) default '',
  start_timestamp  DATE,
  last_access_time DATE,
  expire_time      NUMBER(10) default 0
)
;
comment on table SYS_USER_ONLINE
  is '�����û���¼';
comment on column SYS_USER_ONLINE.sessionid
  is '�û��Ựid';
comment on column SYS_USER_ONLINE.login_name
  is '��¼�˺�';
comment on column SYS_USER_ONLINE.dept_name
  is '��������';
comment on column SYS_USER_ONLINE.ipaddr
  is '��¼IP��ַ';
comment on column SYS_USER_ONLINE.login_location
  is '��¼�ص�';
comment on column SYS_USER_ONLINE.browser
  is '���������';
comment on column SYS_USER_ONLINE.os
  is '����ϵͳ';
comment on column SYS_USER_ONLINE.status
  is '����״̬on_line����off_line����';
comment on column SYS_USER_ONLINE.start_timestamp
  is 'session����ʱ��';
comment on column SYS_USER_ONLINE.last_access_time
  is 'session������ʱ��';
comment on column SYS_USER_ONLINE.expire_time
  is '��ʱʱ�䣬��λΪ����';
alter table SYS_USER_ONLINE
  add constraint PK_SYS_USER_ONLINE primary key (SESSIONID);
   SYS_USER_POST      USER_ID   NUMBER   POST_ID   NUMBERn  create table SYS_USER_POST
(
  user_id NUMBER(20) not null,
  post_id NUMBER(20) not null
)
;
comment on table SYS_USER_POST
  is '�û����λ������';
comment on column SYS_USER_POST.user_id
  is '�û�ID';
comment on column SYS_USER_POST.post_id
  is '��λID';
alter table SYS_USER_POST
  add constraint PK_SYS_USER_POST primary key (USER_ID, POST_ID);
   SYS_USER_ROLE      USER_ID   NUMBER   ROLE_ID   NUMBERn  create table SYS_USER_ROLE
(
  user_id NUMBER(20) not null,
  role_id NUMBER(20) not null
)
;
comment on table SYS_USER_ROLE
  is '�û��ͽ�ɫ������';
comment on column SYS_USER_ROLE.user_id
  is '�û�ID';
comment on column SYS_USER_ROLE.role_id
  is '��ɫID';
alter table SYS_USER_ROLE
  add constraint PK_SYS_USER_ROLE primary key (USER_ID, ROLE_ID);
       �  �   ��      0.0   100   sys_invoker
   ������־����������
   SysInvoker   crud!   com.facecom.web.controller.system   system   invoker   ������־   disney   0   /`   {"parentMenuId":"2","treeName":"","treeParentCode":"","parentMenuName":"ϵͳ���","treeCode":""}   admin   07-08-2020 10:43:24����   07-08-2020 11:07:10����   120   sys_statistics   �ԱȽ��ͳ�Ʊ���������   SysStatistics   crud!   com.facecom.web.controller.system   system
   statistics   �ԱȽ��ͳ��   facecom   0   /c   {"parentMenuId":"2021","treeName":"","treeParentCode":"","parentMenuName":"����ͳ��","treeCode":""}   admin   07-08-2020 16:33:29����   07-08-2020 17:03:45����            c     1.0   100   100
   invoker_id   ������seq_sys_invoker.nextval   number   Long	   invokerId   1   1����   1������������   EQ   input����   1   admin   07-08-2020 10:43:24����   07-08-2020 11:07:10   101   100
   invoker_ip   ������IP   varchar2   String	   invokerIp   0   0   1   1   1   1   1   EQ   input����   2   admin   07-08-2020 10:43:24����   07-08-2020 11:07:10   102   100   invoker_time   ����ʱ��   date   Date   invokerTime   0   0����   1   1   1   1   EQ   datetime����   3   admin   07-08-2020 10:43:24����   07-08-2020 11:07:10   103   100   invoker_result   ���ýӿڽ��,0:�ɹ�1:ʧ��   char   String   invokerResult   0   0����   1   1   1   1   EQ   input����   4   admin   07-08-2020 10:43:24����   07-08-2020 11:07:10   104   100   invoker_status   �Ƿ�Ϸ�������,0:�Ϸ�1:�Ƿ�   char   String   invokerStatus   0   0����   1   1   1   1   EQ   radio����   5   admin   07-08-2020 10:43:24����   07-08-2020 11:07:10   105   100   invoker_sfzmhm   �˶Ե�����֤   varchar2   String   invokerSfzmhm   0   0   1   1   1   1   1   EQ   input����   6   admin   07-08-2020 10:43:24����   07-08-2020 11:07:10   106   100   invoker_msg   ����ʧ��ԭ��   varchar2   String
   invokerMsg   0   0����   1   1   1   1   EQ   input����   7   admin   07-08-2020 10:43:24����   07-08-2020 11:07:10   120   120   statistics_id    ������seq_sys_statistics.nextval   number   Long   statisticsId   1   1����   1������������   EQ   input����   1   admin   07-08-2020 16:33:30����   07-08-2020 17:03:45   121   120   fail   ͨ������   number   Long   fail   0   0����   1   1   1����   EQ   input����   2   admin   07-08-2020 16:33:30����   07-08-2020 17:03:45   122   120   nofail
   ��ͨ������   number   Long   nofail   0   0����   1   1   1����   EQ   input����   3   admin   07-08-2020 16:33:30����   07-08-2020 17:03:45   123   120	   fail_pass   ͨ����   number   Long   failPass   0   0����   1   1   1����   EQ   input����   4   admin   07-08-2020 16:33:30����   07-08-2020 17:03:45   124   120   nofail_pass   ��ͨ����   number   Long
   nofailPass   0   0����   1   1   1����   EQ   input����   5   admin   07-08-2020 16:33:30����   07-08-2020 17:03:45   125   120   contrast   �ԱȲ���   varchar2   String   contrast   0   0   1   1   1   1����   EQ   input����   6   admin   07-08-2020 16:33:30����   07-08-2020 17:03:45   126   120	   dept_code   ���ű��   varchar2   String   deptCode   0   0����   1   1   1   1   EQ   select����   7   admin   07-08-2020 16:33:30����   07-08-2020 17:03:45   127   120	   dept_name   ��������   varchar2   String   deptName   0   0����   1   1   1   1   LIKE   select����   8   admin   07-08-2020 16:33:30����   07-08-2020 17:03:45   128   120   system_code   ϵͳ���   varchar2   String
   systemCode   0   0����   1   1   1   1   EQ   select����   9   admin   07-08-2020 16:33:30����   07-08-2020 17:03:45   129   120   system_name   ϵͳ����   varchar2   String
   systemName   0   0����   1   1   1   1   LIKE   select����   10   admin   07-08-2020 16:33:30����   07-08-2020 17:03:45       �  �   ��     2.0   facecomScheduler   TASK_CLASS_NAME3   DEFAULT����9   com.facecom.quartz.util.QuartzDisallowConcurrentExecution   0   1   0   0�  �� sr org.quartz.JobDataMap���迩��  xr &org.quartz.utils.StringKeyDirtyFlagMap�����]( Z allowsTransientDataxr org.quartz.utils.DirtyFlagMap�.�(v
� Z dirtyL mapt Ljava/util/Map;xpsr java.util.HashMap���`� F 
loadFactorI 	thresholdxp?@     w      t TASK_PROPERTIESsr  com.facecom.quartz.domain.SysJob        L 
concurrentt Ljava/lang/String;L cronExpressionq ~ 	L invokeTargetq ~ 	L jobGroupq ~ 	L jobIdt Ljava/lang/Long;L jobNameq ~ 	L misfirePolicyq ~ 	L statusq ~ 	xr )com.facecom.common.core.domain.BaseEntity        L createByq ~ 	L 
createTimet Ljava/util/Date;L paramsq ~ L remarkq ~ 	L searchValueq ~ 	L updateByq ~ 	L 
updateTimeq ~ xpt adminsr java.util.Datehj�KYt  xpw  b,�)�xpppppt 1t 0/20 * * * * ?t 8ryTask.ryMultipleParams('ry', true, 2000L, 316.50D, 100)t DEFAULTsr java.lang.Long;��̏#� J valuexr java.lang.Number������  xp       t 系统默认（多参）t 3t 1x    facecomScheduler   TASK_CLASS_NAME1   DEFAULT����9   com.facecom.quartz.util.QuartzDisallowConcurrentExecution   0   1   0   0�  �� sr org.quartz.JobDataMap���迩��  xr &org.quartz.utils.StringKeyDirtyFlagMap�����]( Z allowsTransientDataxr org.quartz.utils.DirtyFlagMap�.�(v
� Z dirtyL mapt Ljava/util/Map;xpsr java.util.HashMap���`� F 
loadFactorI 	thresholdxp?@     w      t TASK_PROPERTIESsr  com.facecom.quartz.domain.SysJob        L 
concurrentt Ljava/lang/String;L cronExpressionq ~ 	L invokeTargetq ~ 	L jobGroupq ~ 	L jobIdt Ljava/lang/Long;L jobNameq ~ 	L misfirePolicyq ~ 	L statusq ~ 	xr )com.facecom.common.core.domain.BaseEntity        L createByq ~ 	L 
createTimet Ljava/util/Date;L paramsq ~ L remarkq ~ 	L searchValueq ~ 	L updateByq ~ 	L 
updateTimeq ~ xpt adminsr java.util.Datehj�KYt  xpw  b,�)�xpppppt 1t 0/10 * * * * ?t ryTask.ryNoParamst DEFAULTsr java.lang.Long;��̏#� J valuexr java.lang.Number������  xp       t 系统默认（无参）t 3t 1x    facecomScheduler   TASK_CLASS_NAME2   DEFAULT����9   com.facecom.quartz.util.QuartzDisallowConcurrentExecution   0   1   0   0�  �� sr org.quartz.JobDataMap���迩��  xr &org.quartz.utils.StringKeyDirtyFlagMap�����]( Z allowsTransientDataxr org.quartz.utils.DirtyFlagMap�.�(v
� Z dirtyL mapt Ljava/util/Map;xpsr java.util.HashMap���`� F 
loadFactorI 	thresholdxp?@     w      t TASK_PROPERTIESsr  com.facecom.quartz.domain.SysJob        L 
concurrentt Ljava/lang/String;L cronExpressionq ~ 	L invokeTargetq ~ 	L jobGroupq ~ 	L jobIdt Ljava/lang/Long;L jobNameq ~ 	L misfirePolicyq ~ 	L statusq ~ 	xr )com.facecom.common.core.domain.BaseEntity        L createByq ~ 	L 
createTimet Ljava/util/Date;L paramsq ~ L remarkq ~ 	L searchValueq ~ 	L updateByq ~ 	L 
updateTimeq ~ xpt adminsr java.util.Datehj�KYt  xpw  b,�)�xpppppt 1t 0/15 * * * * ?t ryTask.ryParams('ry')t DEFAULTsr java.lang.Long;��̏#� J valuexr java.lang.Number������  xp       t 系统默认（有参）t 3t 1x    RuoyiScheduler   TASK_CLASS_NAME3   DEFAULT����7   com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution   0   1   0   0�  �� sr org.quartz.JobDataMap���迩��  xr &org.quartz.utils.StringKeyDirtyFlagMap�����]( Z allowsTransientDataxr org.quartz.utils.DirtyFlagMap�.�(v
� Z dirtyL mapt Ljava/util/Map;xpsr java.util.HashMap���`� F 
loadFactorI 	thresholdxp?@     w      t TASK_PROPERTIESsr com.ruoyi.quartz.domain.SysJob        L 
concurrentt Ljava/lang/String;L cronExpressionq ~ 	L invokeTargetq ~ 	L jobGroupq ~ 	L jobIdt Ljava/lang/Long;L jobNameq ~ 	L misfirePolicyq ~ 	L statusq ~ 	xr 'com.ruoyi.common.core.domain.BaseEntity        L createByq ~ 	L 
createTimet Ljava/util/Date;L paramsq ~ L remarkq ~ 	L searchValueq ~ 	L updateByq ~ 	L 
updateTimeq ~ xpt adminsr java.util.Datehj�KYt  xpw  b,�)�xpppppt 1t 0/20 * * * * ?t 8ryTask.ryMultipleParams('ry', true, 2000L, 316.50D, 100)t DEFAULTsr java.lang.Long;��̏#� J valuexr java.lang.Number������  xp       t 系统默认（多参）t 3t 1x    RuoyiScheduler   TASK_CLASS_NAME1   DEFAULT����7   com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution   0   1   0   0�  �� sr org.quartz.JobDataMap���迩��  xr &org.quartz.utils.StringKeyDirtyFlagMap�����]( Z allowsTransientDataxr org.quartz.utils.DirtyFlagMap�.�(v
� Z dirtyL mapt Ljava/util/Map;xpsr java.util.HashMap���`� F 
loadFactorI 	thresholdxp?@     w      t TASK_PROPERTIESsr com.ruoyi.quartz.domain.SysJob        L 
concurrentt Ljava/lang/String;L cronExpressionq ~ 	L invokeTargetq ~ 	L jobGroupq ~ 	L jobIdt Ljava/lang/Long;L jobNameq ~ 	L misfirePolicyq ~ 	L statusq ~ 	xr 'com.ruoyi.common.core.domain.BaseEntity        L createByq ~ 	L 
createTimet Ljava/util/Date;L paramsq ~ L remarkq ~ 	L searchValueq ~ 	L updateByq ~ 	L 
updateTimeq ~ xpt adminsr java.util.Datehj�KYt  xpw  b,�)�xpppppt 1t 0/10 * * * * ?t ryTask.ryNoParamst DEFAULTsr java.lang.Long;��̏#� J valuexr java.lang.Number������  xp       t 系统默认（无参）t 3t 1x    RuoyiScheduler   TASK_CLASS_NAME2   DEFAULT����7   com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution   0   1   0   0�  �� sr org.quartz.JobDataMap���迩��  xr &org.quartz.utils.StringKeyDirtyFlagMap�����]( Z allowsTransientDataxr org.quartz.utils.DirtyFlagMap�.�(v
� Z dirtyL mapt Ljava/util/Map;xpsr java.util.HashMap���`� F 
loadFactorI 	thresholdxp?@     w      t TASK_PROPERTIESsr com.ruoyi.quartz.domain.SysJob        L 
concurrentt Ljava/lang/String;L cronExpressionq ~ 	L invokeTargetq ~ 	L jobGroupq ~ 	L jobIdt Ljava/lang/Long;L jobNameq ~ 	L misfirePolicyq ~ 	L statusq ~ 	xr 'com.ruoyi.common.core.domain.BaseEntity        L createByq ~ 	L 
createTimet Ljava/util/Date;L paramsq ~ L remarkq ~ 	L searchValueq ~ 	L updateByq ~ 	L 
updateTimeq ~ xpt adminsr java.util.Datehj�KYt  xpw  b,�)�xpppppt 1t 0/15 * * * * ?t ryTask.ryParams('ry')t DEFAULTsr java.lang.Long;��̏#� J valuexr java.lang.Number������  xp       t 系统默认（有参）t 3t 1x        �  �   ��      3.0   facecomScheduler   TASK_CLASS_NAME2   DEFAULT   TASK_CLASS_NAME2   DEFAULT����   1596802710000   -1   5   PAUSED   CRON   1596802696000   0����   2����   facecomScheduler   TASK_CLASS_NAME3   DEFAULT   TASK_CLASS_NAME3   DEFAULT����   1596802700000   -1   5   PAUSED   CRON   1596802696000   0����   2����   facecomScheduler   TASK_CLASS_NAME1   DEFAULT   TASK_CLASS_NAME1   DEFAULT����   1596802700000   -1   5   PAUSED   CRON   1596802696000   0����   2����   RuoyiScheduler   TASK_CLASS_NAME2   DEFAULT   TASK_CLASS_NAME2   DEFAULT����   1596778905000   -1   5   PAUSED   CRON   1596778903000   0����   2����   RuoyiScheduler   TASK_CLASS_NAME3   DEFAULT   TASK_CLASS_NAME3   DEFAULT����   1596778920000   -1   5   PAUSED   CRON   1596778903000   0����   2����   RuoyiScheduler   TASK_CLASS_NAME1   DEFAULT   TASK_CLASS_NAME1   DEFAULT����   1596778910000   -1   5   PAUSED   CRON   1596778903000   0����   2����       �  �   y      6.0   facecomScheduler   TASK_CLASS_NAME3   DEFAULT   0/20 * * * * ?   Asia/Shanghai   facecomScheduler   TASK_CLASS_NAME1   DEFAULT   0/10 * * * * ?   Asia/Shanghai   facecomScheduler   TASK_CLASS_NAME2   DEFAULT   0/15 * * * * ?   Asia/Shanghai   RuoyiScheduler   TASK_CLASS_NAME3   DEFAULT   0/20 * * * * ?   Asia/Shanghai   RuoyiScheduler   TASK_CLASS_NAME1   DEFAULT   0/10 * * * * ?   Asia/Shanghai   RuoyiScheduler   TASK_CLASS_NAME2   DEFAULT   0/15 * * * * ?   Asia/Shanghai       �   �    &(      8.0   RuoyiScheduler   STATE_ACCESS   RuoyiScheduler   TRIGGER_ACCESS   facecomScheduler   STATE_ACCESS   facecomScheduler   TRIGGER_ACCESS       �   �     "      10.0   facecomScheduler   DESKTOP-OMBRVCU1596802696617   1596803239246   15000   RuoyiScheduler   DESKTOP-OMBRVCU1596778903183   1596778966184   15000       �  �   �     13.0   1   �����ҳ-Ĭ��Ƥ����ʽ����   sys.index.skinName	   skin-blue   Y   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00R   ��ɫ skin-blue����ɫ skin-green����ɫ skin-purple����ɫ skin-red����ɫ skin-yellow   2   �û�����-�˺ų�ʼ����   sys.user.initPassword   123456   Y   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ��ʼ������ 123456   3   �����ҳ-���������   sys.index.sideTheme
   theme-dark   Y   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00;   �������theme-dark��ǳɫ����theme-light����������theme-blue   4   �˺�����-�Ƿ����û�ע�Ṧ��   sys.account.registerUser   false   Y   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   �Ƿ���ע���û�����            rK     14.0   100   0   0   ��������ܶ�   0   ɳ����   13802965946   shalong@qq.com   0   0   admin   16-03-2018 11:33:00   admin   07-08-2020 16:48:25   00168   101   100   0,100   ���Ҵ��   1   ����   15888888888	   ry@qq.com   0   0   admin   16-03-2018 11:33:00   admin   07-08-2020 16:48:03   00166   102   100   0,100   �ܸڴ��   2   ����   15888888888	   ry@qq.com   0   0   admin   16-03-2018 11:33:00   admin   07-08-2020 16:48:25   00169   103   101	   0,100,101   �з�����   1   ����   15888888888	   ry@qq.com   0   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   104   101	   0,100,101   �г�����   2   ����   15888888888	   ry@qq.com   0   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   105   101	   0,100,101   ���Բ���   3   ����   15888888888	   ry@qq.com   0   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   106   101	   0,100,101   ������   4   ����   15888888888	   ry@qq.com   0   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   107   101	   0,100,101   ��ά����   5   ����   15888888888	   ry@qq.com   0   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   108   102	   0,100,102   �г�����   1   ����   15888888888	   ry@qq.com   0   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   109   102	   0,100,102   ������   2   ����   15888888888	   ry@qq.com   0   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����       v  v   z     15.0   102   1
   ���ҳ�����   320   sys_dept_name����   default   Y   0   admin   07-08-2020 18:53:09������������   103   2
   ᯴峵����   321   sys_dept_name����   default   Y   0   admin   07-08-2020 18:53:33������������   1   1   ��   0   sys_user_sex��������   Y   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   �Ա���   2   2   Ů   1   sys_user_sex��������   N   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   �Ա�Ů   3   3   δ֪   2   sys_user_sex��������   N   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   �Ա�δ֪   4   1   ��ʾ   0   sys_show_hide����   primary   Y   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ��ʾ�˵�   5   2   ����   1   sys_show_hide����   danger   N   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ���ز˵�   6   1   ����   0   sys_normal_disable����   primary   Y   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ����״̬   7   2   ͣ��   1   sys_normal_disable����   danger   N   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ͣ��״̬   8   1   ����   0   sys_job_status����   primary   Y   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ����״̬   9   2   ��ͣ   1   sys_job_status����   danger   N   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ͣ��״̬   10   1   Ĭ��   DEFAULT   sys_job_group��������   Y   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   Ĭ�Ϸ���   11   2   ϵͳ   SYSTEM   sys_job_group��������   N   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ϵͳ����   12   1   ��   Y
   sys_yes_no����   primary   Y   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00
   ϵͳĬ����   13   2   ��   N
   sys_yes_no����   danger   N   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00
   ϵͳĬ�Ϸ�   14   1   ֪ͨ   1   sys_notice_type����   warning   Y   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ֪ͨ   15   2   ����   2   sys_notice_type����   success   N   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ����   16   1   ����   0   sys_notice_status����   primary   Y   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ����״̬   17   2   �ر�   1   sys_notice_status����   danger   N   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   �ر�״̬   18   99   ����   0   sys_oper_type����   info   N   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ��������   19   1   ����   1   sys_oper_type����   info   N   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ��������   20   2   �޸�   2   sys_oper_type����   info   N   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   �޸Ĳ���   21   3   ɾ��   3   sys_oper_type����   danger   N   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ɾ������   22   4   ��Ȩ   4   sys_oper_type����   primary   N   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ��Ȩ����   23   5   ����   5   sys_oper_type����   warning   N   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ��������   24   6   ����   6   sys_oper_type����   warning   N   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   �������   25   7   ǿ��   7   sys_oper_type����   danger   N   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ǿ�˲���   26   8   ���ɴ���   8   sys_oper_type����   warning   N   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ���ɲ���   27   9   �������   9   sys_oper_type����   danger   N   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ��ղ���   28   1   �ɹ�   0   sys_common_status����   primary   N   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ����״̬   29   2   ʧ��   1   sys_common_status����   danger   N   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ͣ��״̬   100   1   �����ɼ��Ա�ϵͳ   651   sys_name����   success   Y   0   admin   07-08-2020 18:37:46������������   101   2   ��ظ���ϵͳ   656   sys_name����   warning   Y   0   admin   07-08-2020 18:38:32������������       ~  ~   i�     16.0   1   �û��Ա�   sys_user_sex   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   �û��Ա��б�   2   �˵�״̬   sys_show_hide   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   �˵�״̬�б�   3   ϵͳ����   sys_normal_disable   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ϵͳ�����б�   4   ����״̬   sys_job_status   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ����״̬�б�   5   �������   sys_job_group   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ��������б�   6   ϵͳ�Ƿ�
   sys_yes_no   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ϵͳ�Ƿ��б�   7   ֪ͨ����   sys_notice_type   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ֪ͨ�����б�   8   ֪ͨ״̬   sys_notice_status   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ֪ͨ״̬�б�   9   ��������   sys_oper_type   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ���������б�   10   ϵͳ״̬   sys_common_status   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ��¼״̬�б�   100   ϵͳ����   sys_name   0   admin   07-08-2020 18:34:54   admin   07-08-2020 18:59:30   �Խ�ϵͳ�б�   101   ��������   sys_dept_name   0   admin   07-08-2020 18:51:27   admin   07-08-2020 18:59:12   �����б�       �  �   �}      18.0   1   ϵͳĬ�ϣ��޲Σ�   DEFAULT   ryTask.ryNoParams   0/10 * * * * ?   3   1   1   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   2   ϵͳĬ�ϣ��вΣ�   DEFAULT   ryTask.ryParams('ry')   0/15 * * * * ?   3   1   1   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   3   ϵͳĬ�ϣ���Σ�   DEFAULT8   ryTask.ryMultipleParams('ry', true, 2000L, 316.50D, 100)   0/20 * * * * ?   3   1   1   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����       �  �   �     20.0   121   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   �˳��ɹ�   05-08-2020 20:45:16   126   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   �˳��ɹ�   05-08-2020 20:59:02   127   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   05-08-2020 20:59:06   128   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   �˳��ɹ�   05-08-2020 20:59:29   129   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   05-08-2020 20:59:32   144   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   06-08-2020 12:56:11   150   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   �˳��ɹ�   06-08-2020 13:21:05   152   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   �˳��ɹ�   06-08-2020 13:23:08   156   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   �˳��ɹ�   06-08-2020 15:13:31   157   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   06-08-2020 15:14:24   159   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   06-08-2020 15:16:49   161   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   07-08-2020 10:42:05   163   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   07-08-2020 11:17:04   169   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   1
   ��֤�����   07-08-2020 13:20:55   170   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   07-08-2020 13:21:00   203   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   07-08-2020 16:58:43   204   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   07-08-2020 16:59:21   100   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   27-07-2020 15:28:25   141   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   06-08-2020 12:36:22   143   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   1
   ��֤�����   06-08-2020 12:56:07   145   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   06-08-2020 13:03:24   151   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   06-08-2020 13:21:34   153   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   06-08-2020 13:24:15   154   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   06-08-2020 13:33:13   162   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   �˳��ɹ�   07-08-2020 11:17:01   164   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   �˳��ɹ�   07-08-2020 11:20:32   165   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   07-08-2020 11:20:38   166   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   �˳��ɹ�   07-08-2020 11:32:54   167   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   07-08-2020 11:32:59   181   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   07-08-2020 15:16:23   207   test	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   07-08-2020 20:16:00   213   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   07-08-2020 20:19:08   215   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   �˳��ɹ�   07-08-2020 20:25:55   216   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   07-08-2020 20:26:02   101   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   27-07-2020 17:00:31   122   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   1
   ��֤�����   05-08-2020 20:46:20   123   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   05-08-2020 20:46:22   124   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   �˳��ɹ�   05-08-2020 20:51:04   125   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   05-08-2020 20:51:07   130   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   �˳��ɹ�   05-08-2020 21:12:05   131   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   1
   ��֤�����   05-08-2020 21:12:09   132   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   1   �����������1��   05-08-2020 21:12:14   142   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   06-08-2020 12:47:50   155   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   06-08-2020 15:12:15   158   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   �˳��ɹ�   06-08-2020 15:15:13   160   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   �˳��ɹ�   06-08-2020 15:17:08   168   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   07-08-2020 13:01:24   173   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   �˳��ɹ�   07-08-2020 14:03:01   177   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   �˳��ɹ�   07-08-2020 14:03:37   178   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   07-08-2020 14:03:55   140   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   06-08-2020 10:59:55   171   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   07-08-2020 13:34:43   172   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   07-08-2020 14:02:34   174   test	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   07-08-2020 14:03:13   175   test	   127.0.0.1   ����IP   Chrome
   Windows 10   0   �˳��ɹ�   07-08-2020 14:03:22   176   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   07-08-2020 14:03:25   179   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   07-08-2020 14:07:55   201   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   1
   ��֤�����   07-08-2020 16:33:01   205   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   07-08-2020 18:22:43   120   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   05-08-2020 20:29:23   133   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   1
   ��֤�����   05-08-2020 21:14:39   134   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   05-08-2020 21:34:09   146   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   1
   ��֤�����   06-08-2020 13:12:45   147   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   06-08-2020 13:12:48   148   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   �˳��ɹ�   06-08-2020 13:13:24   149   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   06-08-2020 13:13:49   202   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   07-08-2020 16:33:05   206   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   07-08-2020 20:11:37   208   test	   127.0.0.1   ����IP   Chrome
   Windows 10   0   �˳��ɹ�   07-08-2020 20:16:19   209   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   07-08-2020 20:16:38   210   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   �˳��ɹ�   07-08-2020 20:16:56   211   test	   127.0.0.1   ����IP   Chrome
   Windows 10   1
   ��֤�����   07-08-2020 20:17:01   212   test	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   07-08-2020 20:17:04   214   admin	   127.0.0.1   ����IP   Chrome
   Windows 10   0   ��¼�ɹ�   07-08-2020 20:24:44       �6  �6   o�     21.0   2021   ����ͳ��   0   2   #   menuItem   M   0����   fa fa-life-ring   admin   07-08-2020 17:02:37������������   1   ϵͳ����   0   1   #����   M   0����
   fa fa-gear   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ϵͳ����Ŀ¼   2   ϵͳ���   0   2   #����   M   0����   fa fa-video-camera   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ϵͳ���Ŀ¼   3   ϵͳ����   0   3   #����   M   0����
   fa fa-bars   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ϵͳ����Ŀ¼   4   ����ʶ�����   0   4   https://www.bilibili.com/	   menuBlank   C   0����   fa fa-location-arrow   admin   16-03-2018 11:33:00   admin   07-08-2020 20:25:41   ����������ַ   100   �û�����   1   1   /system/user����   C   0   system:user:view   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   �û������˵�   101   ��ɫ����   1   2   /system/role����   C   0   system:role:view   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ��ɫ�����˵�   102   �˵�����   1   3   /system/menu����   C   0   system:menu:view   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   �˵������˵�   103   ���Ź���   1   4   /system/dept����   C   0   system:dept:view   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ���Ź����˵�   104   ��λ����   1   5   /system/post����   C   0   system:post:view   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ��λ�����˵�   105   �ֵ����   1   6   /system/dict����   C   0   system:dict:view   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   �ֵ�����˵�   106   ��������   1   7   /system/config����   C   0   system:config:view   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   �������ò˵�   107   ֪ͨ����   1   8   /system/notice����   C   0   system:notice:view   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ֪ͨ����˵�   108   ��־����   1   9   #����   M   0����   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ��־�����˵�   109   �����û�   2   1   /monitor/online����   C   0   monitor:online:view   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   �����û��˵�   110   ��ʱ����   2   2   /monitor/job����   C   0   monitor:job:view   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ��ʱ����˵�   111   ���ݼ��   2   3   /monitor/data����   C   0   monitor:data:view   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ���ݼ�ز˵�   112   ������   2   3   /monitor/server����   C   0   monitor:server:view   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   �����ز˵�   113   ��������   3   1   /tool/build����   C   0   tool:build:view   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ���������˵�   114   ��������   3   2	   /tool/gen����   C   0   tool:gen:view   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   �������ɲ˵�   115   ϵͳ�ӿ�   3   3   /tool/swagger����   C   0   tool:swagger:view   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ϵͳ�ӿڲ˵�   500   ������־   108   1   /monitor/operlog����   C   0   monitor:operlog:view   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ������־�˵�   501   ��¼��־   108   2   /monitor/logininfor����   C   0   monitor:logininfor:view   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ��¼��־�˵�   1000   �û���ѯ   100   1   #����   F   0   system:user:list   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1001   �û�����   100   2   #����   F   0   system:user:add   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1002   �û��޸�   100   3   #����   F   0   system:user:edit   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1003   �û�ɾ��   100   4   #����   F   0   system:user:remove   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1004   �û�����   100   5   #����   F   0   system:user:export   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1005   �û�����   100   6   #����   F   0   system:user:import   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1006   ��������   100   7   #����   F   0   system:user:resetPwd   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1007   ��ɫ��ѯ   101   1   #����   F   0   system:role:list   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1008   ��ɫ����   101   2   #����   F   0   system:role:add   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1009   ��ɫ�޸�   101   3   #����   F   0   system:role:edit   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1010   ��ɫɾ��   101   4   #����   F   0   system:role:remove   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1011   ��ɫ����   101   5   #����   F   0   system:role:export   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1012   �˵���ѯ   102   1   #����   F   0   system:menu:list   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1013   �˵�����   102   2   #����   F   0   system:menu:add   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1014   �˵��޸�   102   3   #����   F   0   system:menu:edit   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1015   �˵�ɾ��   102   4   #����   F   0   system:menu:remove   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1016   ���Ų�ѯ   103   1   #����   F   0   system:dept:list   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1017   ��������   103   2   #����   F   0   system:dept:add   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1018   �����޸�   103   3   #����   F   0   system:dept:edit   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1019   ����ɾ��   103   4   #����   F   0   system:dept:remove   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1020   ��λ��ѯ   104   1   #����   F   0   system:post:list   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1021   ��λ����   104   2   #����   F   0   system:post:add   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1022   ��λ�޸�   104   3   #����   F   0   system:post:edit   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1023   ��λɾ��   104   4   #����   F   0   system:post:remove   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1024   ��λ����   104   5   #����   F   0   system:post:export   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1025   �ֵ��ѯ   105   1   #����   F   0   system:dict:list   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1026   �ֵ�����   105   2   #����   F   0   system:dict:add   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1027   �ֵ��޸�   105   3   #����   F   0   system:dict:edit   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1028   �ֵ�ɾ��   105   4   #����   F   0   system:dict:remove   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1029   �ֵ䵼��   105   5   #����   F   0   system:dict:export   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1030   ������ѯ   106   1   #����   F   0   system:config:list   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1031   ��������   106   2   #����   F   0   system:config:add   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1032   �����޸�   106   3   #����   F   0   system:config:edit   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1033   ����ɾ��   106   4   #����   F   0   system:config:remove   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1034   ��������   106   5   #����   F   0   system:config:export   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1035   �����ѯ   107   1   #����   F   0   system:notice:list   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1036   ��������   107   2   #����   F   0   system:notice:add   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1037   �����޸�   107   3   #����   F   0   system:notice:edit   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1038   ����ɾ��   107   4   #����   F   0   system:notice:remove   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1039   ������ѯ   500   1   #����   F   0   monitor:operlog:list   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1040   ����ɾ��   500   2   #����   F   0   monitor:operlog:remove   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1041   ��ϸ��Ϣ   500   3   #����   F   0   monitor:operlog:detail   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1042   ��־����   500   4   #����   F   0   monitor:operlog:export   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1043   ��¼��ѯ   501   1   #����   F   0   monitor:logininfor:list   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1044   ��¼ɾ��   501   2   #����   F   0   monitor:logininfor:remove   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1045   ��־����   501   3   #����   F   0   monitor:logininfor:export   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1046   �˻�����   501   4   #����   F   0   monitor:logininfor:unlock   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1047   ���߲�ѯ   109   1   #����   F   0   monitor:online:list   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1048   ����ǿ��   109   2   #����   F   0   monitor:online:batchForceLogout   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1049   ����ǿ��   109   3   #����   F   0   monitor:online:forceLogout   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1050   �����ѯ   110   1   #����   F   0   monitor:job:list   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1051   ��������   110   2   #����   F   0   monitor:job:add   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1052   �����޸�   110   3   #����   F   0   monitor:job:edit   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1053   ����ɾ��   110   4   #����   F   0   monitor:job:remove   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1054   ״̬�޸�   110   5   #����   F   0   monitor:job:changeStatus   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1055   ������ϸ   110   6   #����   F   0   monitor:job:detail   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1056   ���񵼳�   110   7   #����   F   0   monitor:job:export   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1057   ���ɲ�ѯ   114   1   #����   F   0   tool:gen:list   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1058   �����޸�   114   2   #����   F   0   tool:gen:edit   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1059   ����ɾ��   114   3   #����   F   0   tool:gen:remove   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1060   Ԥ������   114   4   #����   F   0   tool:gen:preview   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   1061   ���ɴ���   114   5   #����   F   0   tool:gen:code   #   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   2004   ������־   108   3   /system/invoker����   C   0   system:invoker:view   #   admin   07-08-2020 11:16:52   ry   07-08-2020 11:16:52   ������־�˵�   2005   ������־��ѯ   2004   1   #����   F   0   system:invoker:list   #   admin   07-08-2020 11:16:52   ry   07-08-2020 11:16:52����   2006   ������־����   2004   5   #����   F   0   system:invoker:export   #   admin   07-08-2020 11:16:52   ry   07-08-2020 11:16:52����   2023   �ԱȽ��ͳ��   2021   1   /system/statistics����   C   0   system:statistics:view   #   admin   07-08-2020 17:06:45   ry   07-08-2020 17:06:45   �ԱȽ��ͳ�Ʋ˵�   2024   �ԱȽ��ͳ�Ʋ�ѯ   2023   1   #����   F   0   system:statistics:list   #   admin   07-08-2020 17:06:45   ry   07-08-2020 17:06:45����   2025   �ԱȽ��ͳ������   2023   2   #����   F   0   system:statistics:add   #   admin   07-08-2020 17:06:45   ry   07-08-2020 17:06:45����   2026   �ԱȽ��ͳ���޸�   2023   3   #����   F   0   system:statistics:edit   #   admin   07-08-2020 17:06:45   ry   07-08-2020 17:06:45����   2027   �ԱȽ��ͳ��ɾ��   2023   4   #����   F   0   system:statistics:remove   #   admin   07-08-2020 17:06:45   ry   07-08-2020 17:06:45����   2028   �ԱȽ��ͳ�Ƶ���   2023   5   #����   F   0   system:statistics:export   #   admin   07-08-2020 17:06:45   ry   07-08-2020 17:06:45����            vY      22.0   1%   ��ܰ���ѣ�2018-07-01 �����°汾������   2
   �°汾����   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ����Ա   2%   ά��֪ͨ��2018-07-01 ����ϵͳ�賿ά��   1   ά������   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ����Ա       G  G   �(     23.0   193   �ֵ�����   2B   com.facecom.web.controller.system.SysDictTypeController.editSave()   POST   1   admin   �з�����   /system/dict/edit	   127.0.0.1   ����IP�   {
  "dictId" : [ "101" ],
  "dictName" : [ "��������" ],
  "dictType" : [ "sys_dept_name" ],
  "status" : [ "0" ],
  "remark" : [ "" ]
})   {
  "msg" : "�����ɹ�",
  "code" : 0
}   0����   07-08-2020 18:58:32   196   �ֵ�����   2B   com.facecom.web.controller.system.SysDictTypeController.editSave()   POST   1   admin   �з�����   /system/dict/edit	   127.0.0.1   ����IP�   {
  "dictId" : [ "100" ],
  "dictName" : [ "ϵͳ����" ],
  "dictType" : [ "sys_name" ],
  "status" : [ "0" ],
  "remark" : [ "�Խ�ϵͳ�б�" ]
})   {
  "msg" : "�����ɹ�",
  "code" : 0
}   0����   07-08-2020 18:59:30   198   �ԱȽ��ͳ��   3B   com.facecom.web.controller.system.SysStatisticsController.remove()   POST   1   admin   �з�����   /system/statistics/remove	   127.0.0.1   ����IP   {
  "ids" : [ "12" ]
})   {
  "msg" : "�����ɹ�",
  "code" : 0
}   0����   07-08-2020 19:06:52   199   �ԱȽ��ͳ��   1C   com.facecom.web.controller.system.SysStatisticsController.addSave()   POST   1   admin   �з�����   /system/statistics/add	   127.0.0.1   ����IP�   {
  "fail" : [ "12" ],
  "nofail" : [ "2" ],
  "failPass" : [ "2" ],
  "nofailPass" : [ "2" ],
  "contrast" : [ "1" ],
  "deptName" : [ "" ],
  "deptCode" : [ "320" ],
  "systemName" : [ "" ],
  "systemCode" : [ "651" ]
})   {
  "msg" : "�����ɹ�",
  "code" : 0
}   0����   07-08-2020 19:13:46   200   �ԱȽ��ͳ��   3B   com.facecom.web.controller.system.SysStatisticsController.remove()   POST   1   admin   �з�����   /system/statistics/remove	   127.0.0.1   ����IP   {
  "ids" : [ "13" ]
})   {
  "msg" : "�����ɹ�",
  "code" : 0
}   0����   07-08-2020 19:14:06   203   �û�����   2>   com.facecom.web.controller.system.SysUserController.editSave()   POST   1   admin   �з�����   /system/user/edit	   127.0.0.1   ����IP�  {
  "userId" : [ "104" ],
  "deptId" : [ "104" ],
  "userName" : [ "test1" ],
  "dept.deptName" : [ "�г�����" ],
  "phonenumber" : [ "16620350908" ],
  "email" : [ "651993087@qq.com" ],
  "loginName" : [ "test" ],
  "sex" : [ "0" ],
  "loginTrueIP" : [ "192.168.0.103" ],
  "ipStart" : [ "192.168.0.104" ],
  "ipEnd" : [ "192.168.0.254" ],
  "role" : [ "2" ],
  "remark" : [ "" ],
  "status" : [ "0" ],
  "roleIds" : [ "2" ],
  "postIds" : [ "1" ]
})   {
  "msg" : "�����ɹ�",
  "code" : 0
}   0����   07-08-2020 20:16:52   204   �˵�����   2>   com.facecom.web.controller.system.SysMenuController.editSave()   POST   1   admin   �з�����   /system/menu/edit	   127.0.0.1   ����IP)  {
  "menuId" : [ "4" ],
  "parentId" : [ "0" ],
  "menuType" : [ "C" ],
  "menuName" : [ "����ʶ�����" ],
  "url" : [ "https://www.bilibili.com/" ],
  "target" : [ "menuBlank" ],
  "perms" : [ "" ],
  "orderNum" : [ "4" ],
  "icon" : [ "fa fa-location-arrow" ],
  "visible" : [ "0" ]
})   {
  "msg" : "�����ɹ�",
  "code" : 0
}   0����   07-08-2020 20:25:41   192   ������־   9?   com.facecom.web.controller.monitor.SysOperlogController.clean()   POST   1   admin   �з�����   /monitor/operlog/clean	   127.0.0.1   ����IP   { })   {
  "msg" : "�����ɹ�",
  "code" : 0
}   0����   07-08-2020 18:56:41   194   �ֵ�����   2B   com.facecom.web.controller.system.SysDictTypeController.editSave()   POST   1   admin   �з�����   /system/dict/edit	   127.0.0.1   ����IP�   {
  "dictId" : [ "101" ],
  "dictName" : [ "��������" ],
  "dictType" : [ "sys_dept_name" ],
  "status" : [ "0" ],
  "remark" : [ "ͳ�Ʋ�ѯ" ]
})   {
  "msg" : "�����ɹ�",
  "code" : 0
}   0����   07-08-2020 18:58:52   195   �ֵ�����   2B   com.facecom.web.controller.system.SysDictTypeController.editSave()   POST   1   admin   �з�����   /system/dict/edit	   127.0.0.1   ����IP�   {
  "dictId" : [ "101" ],
  "dictName" : [ "��������" ],
  "dictType" : [ "sys_dept_name" ],
  "status" : [ "0" ],
  "remark" : [ "�����б�" ]
})   {
  "msg" : "�����ɹ�",
  "code" : 0
}   0����   07-08-2020 18:59:12   197   �ԱȽ��ͳ��   1C   com.facecom.web.controller.system.SysStatisticsController.addSave()   POST   1   admin   �з�����   /system/statistics/add	   127.0.0.1   ����IP�   {
  "fail" : [ "30" ],
  "nofail" : [ "23" ],
  "failPass" : [ "23" ],
  "nofailPass" : [ "23" ],
  "contrast" : [ "2" ],
  "deptName" : [ "320" ],
  "systemName" : [ "651" ]
})   {
  "msg" : "�����ɹ�",
  "code" : 0
}   0����   07-08-2020 19:01:04   201   �û�����   2>   com.facecom.web.controller.system.SysUserController.editSave()   POST   1   admin   �з�����   /system/user/edit	   127.0.0.1   ����IP�  {
  "userId" : [ "104" ],
  "deptId" : [ "104" ],
  "userName" : [ "test1" ],
  "dept.deptName" : [ "�г�����" ],
  "phonenumber" : [ "16620350908" ],
  "email" : [ "651993087@qq.com" ],
  "loginName" : [ "test" ],
  "sex" : [ "0" ],
  "loginTrueIP" : [ "192.168.0.102" ],
  "ipStart" : [ "192.168.0.1" ],
  "ipEnd" : [ "192.168.0.254" ],
  "role" : [ "2" ],
  "remark" : [ "" ],
  "status" : [ "0" ],
  "roleIds" : [ "2" ],
  "postIds" : [ "1" ]
})   {
  "msg" : "�����ɹ�",
  "code" : 0
}   0����   07-08-2020 20:15:47   202   �û�����   2>   com.facecom.web.controller.system.SysUserController.editSave()   POST   1   test   �г�����   /system/user/edit	   127.0.0.1   ����IP�  {
  "userId" : [ "104" ],
  "deptId" : [ "104" ],
  "userName" : [ "test1" ],
  "dept.deptName" : [ "�г�����" ],
  "phonenumber" : [ "16620350908" ],
  "email" : [ "651993087@qq.com" ],
  "loginName" : [ "test" ],
  "sex" : [ "0" ],
  "loginTrueIP" : [ "192.168.0.102" ],
  "ipStart" : [ "192.168.0.104" ],
  "ipEnd" : [ "192.168.0.254" ],
  "role" : [ "2" ],
  "remark" : [ "" ],
  "status" : [ "0" ],
  "roleIds" : [ "2" ],
  "postIds" : [ "1" ]
})   {
  "msg" : "�����ɹ�",
  "code" : 0
}   0����   07-08-2020 20:16:11   205   ������Ϣ   2?   com.facecom.web.controller.system.SysProfileController.update()   POST   1   admin   �з�����   /system/user/profile/update	   127.0.0.1   ����IP�   {
  "id" : [ "" ],
  "userName" : [ "Disney" ],
  "phonenumber" : [ "15888888888" ],
  "email" : [ "ry@163.com" ],
  "sex" : [ "0" ]
})   {
  "msg" : "�����ɹ�",
  "code" : 0
}   0����   07-08-2020 20:26:50       �  �   �W      24.0   1   ceo   ���³�   1   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   2   se   ��Ŀ����   2   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   3   hr   ������Դ   3   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����   4   user   ��ͨԱ��   4   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00����       e  e   _      25.0   1
   ��������Ա   admin   1   1   0   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00
   ��������Ա   2   ��ͨ��ɫ   common   2   2   0   0   admin   16-03-2018 11:33:00   ry   16-03-2018 11:33:00   ��ͨ��ɫ   100   �����ӿڹ���   comface   3   1   0   0   admin   05-08-2020 21:37:41��������   ���������ӿڼ��       $   $    [      26.0   2   100   2   101   2   105       �  �   0l      27.0   2   1   2   2   2   3   2   4   2   100   2   101   2   102   2   103   2   104   2   105   2   106   2   107   2   108   2   109   2   110   2   111   2   112   2   113   2   114   2   115   2   500   2   501   2   1000   2   1001   2   1002   2   1003   2   1004   2   1005   2   1006   2   1007   2   1008   2   1009   2   1010   2   1011   2   1012   2   1013   2   1014   2   1015   2   1016   2   1017   2   1018   2   1019   2   1020   2   1021   2   1022   2   1023   2   1024   2   1025   2   1026   2   1027   2   1028   2   1029   2   1030   2   1031   2   1032   2   1033   2   1034   2   1035   2   1036   2   1037   2   1038   2   1039   2   1040   2   1041   2   1042   2   1043   2   1044   2   1045   2   1046   2   1047   2   1048   2   1049   2   1050   2   1051   2   1052   2   1053   2   1054   2   1055   2   1056   2   1057   2   1058   2   1059   2   1060   2   1061   100   2   100   3   100   109   100   110   100   111   100   112   100   113   100   114   100   115   100   1047   100   1048   100   1049   100   1050   100   1051   100   1052   100   1053   100   1054   100   1055   100   1056   100   1057   100   1058   100   1059   100   1060   100   1061       "  "   ��      29.0   104   104   test   test1   00   651993087@qq.com   16620350908   0����    74d1dc9a13dfe579733556580a6d7a7f   9999c3   0   0	   127.0.0.1   07-08-2020 20:17:04   admin   06-08-2020 15:13:26   admin   07-08-2020 20:17:04����   192.168.0.103   192.168.0.104   192.168.0.254   1   103   admin   Disney   00
   ry@163.com   15888888888   0����    29c67a30398638269fe600f73a054934   111111   0   0	   127.0.0.1   07-08-2020 20:26:02   admin   16-03-2018 11:33:00   ry   07-08-2020 20:26:50   ����Ա������������   2   105   ry   ����   00	   ry@qq.com   15666666666   1����    8e6d98b90472783cc73c17047ddccf36   222222   0   0	   127.0.0.1   16-03-2018 11:33:00   admin   16-03-2018 11:33:00   admin   06-08-2020 15:15:09   ����Ա   192.168.0.103��������       �   �    ;)      30.0$   23375ce2-cfef-42e3-b177-790aac91af07   admin   �з�����	   127.0.0.1   ����IP   Chrome
   Windows 10   on_line   07-08-2020 20:25:55   07-08-2020 20:26:02   1800000       P   P    �      31.0   1   1   2   2   100   2   101   1   102   2   103   2   104   1       P   P    �      32.0   1   1   2   2   100   2   101   2   102   2   103   2   104   2