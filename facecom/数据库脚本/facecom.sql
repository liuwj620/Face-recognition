-------------------------------------------
-- Export file for user RY               --
-- Created by user on 2020/8/7, 20:38:28 --
-------------------------------------------

set define off
spool facecom.log

prompt
prompt Creating table GEN_TABLE
prompt ========================
prompt
create table GEN_TABLE
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
  is '�����ӱ�ı���';
comment on column GEN_TABLE.sub_table_fk_name
  is '�ӱ�����������';
comment on column GEN_TABLE.class_name
  is 'ʵ��������';
comment on column GEN_TABLE.tpl_category
  is 'ʹ�õ�ģ�壨crud������� tree������� sub���ӱ������';
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

prompt
prompt Creating table GEN_TABLE_COLUMN
prompt ===============================
prompt
create table GEN_TABLE_COLUMN
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
  is '��������';
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

prompt
prompt Creating table QRTZ_JOB_DETAILS
prompt ===============================
prompt
create table QRTZ_JOB_DETAILS
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

prompt
prompt Creating table QRTZ_TRIGGERS
prompt ============================
prompt
create table QRTZ_TRIGGERS
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

prompt
prompt Creating table QRTZ_BLOB_TRIGGERS
prompt =================================
prompt
create table QRTZ_BLOB_TRIGGERS
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

prompt
prompt Creating table QRTZ_CALENDARS
prompt =============================
prompt
create table QRTZ_CALENDARS
(
  sched_name    VARCHAR2(120) not null,
  calendar_name VARCHAR2(200) not null,
  calendar      BLOB not null
)
;
alter table QRTZ_CALENDARS
  add constraint QRTZ_CALENDARS_PK primary key (SCHED_NAME, CALENDAR_NAME);

prompt
prompt Creating table QRTZ_CRON_TRIGGERS
prompt =================================
prompt
create table QRTZ_CRON_TRIGGERS
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

prompt
prompt Creating table QRTZ_FIRED_TRIGGERS
prompt ==================================
prompt
create table QRTZ_FIRED_TRIGGERS
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

prompt
prompt Creating table QRTZ_LOCKS
prompt =========================
prompt
create table QRTZ_LOCKS
(
  sched_name VARCHAR2(120) not null,
  lock_name  VARCHAR2(40) not null
)
;
alter table QRTZ_LOCKS
  add constraint QRTZ_LOCKS_PK primary key (SCHED_NAME, LOCK_NAME);

prompt
prompt Creating table QRTZ_PAUSED_TRIGGER_GRPS
prompt =======================================
prompt
create table QRTZ_PAUSED_TRIGGER_GRPS
(
  sched_name    VARCHAR2(120) not null,
  trigger_group VARCHAR2(200) not null
)
;
alter table QRTZ_PAUSED_TRIGGER_GRPS
  add constraint QRTZ_PAUSED_TRIG_GRPS_PK primary key (SCHED_NAME, TRIGGER_GROUP);

prompt
prompt Creating table QRTZ_SCHEDULER_STATE
prompt ===================================
prompt
create table QRTZ_SCHEDULER_STATE
(
  sched_name        VARCHAR2(120) not null,
  instance_name     VARCHAR2(200) not null,
  last_checkin_time NUMBER(13) not null,
  checkin_interval  NUMBER(13) not null
)
;
alter table QRTZ_SCHEDULER_STATE
  add constraint QRTZ_SCHEDULER_STATE_PK primary key (SCHED_NAME, INSTANCE_NAME);

prompt
prompt Creating table QRTZ_SIMPLE_TRIGGERS
prompt ===================================
prompt
create table QRTZ_SIMPLE_TRIGGERS
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

prompt
prompt Creating table QRTZ_SIMPROP_TRIGGERS
prompt ====================================
prompt
create table QRTZ_SIMPROP_TRIGGERS
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

prompt
prompt Creating table SYS_CONFIG
prompt =========================
prompt
create table SYS_CONFIG
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

prompt
prompt Creating table SYS_DEPT
prompt =======================
prompt
create table SYS_DEPT
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
  is 'ɾ����־��0������� 2����ɾ����';
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

prompt
prompt Creating table SYS_DICT_DATA
prompt ============================
prompt
create table SYS_DICT_DATA
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
  is '��������ʽ';
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

prompt
prompt Creating table SYS_DICT_TYPE
prompt ============================
prompt
create table SYS_DICT_TYPE
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

prompt
prompt Creating table SYS_INVOKER
prompt ==========================
prompt
create table SYS_INVOKER
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
  is '�˶Ե����֤';
comment on column SYS_INVOKER.invoker_msg
  is '����ʧ��ԭ��';
alter table SYS_INVOKER
  add constraint PK_SYS_INVOKER primary key (INVOKER_ID);

prompt
prompt Creating table SYS_JOB
prompt ======================
prompt
create table SYS_JOB
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
  is 'cronִ�б��ʽ';
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

prompt
prompt Creating table SYS_JOB_LOG
prompt ==========================
prompt
create table SYS_JOB_LOG
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

prompt
prompt Creating table SYS_LOGININFOR
prompt =============================
prompt
create table SYS_LOGININFOR
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

prompt
prompt Creating table SYS_MENU
prompt =======================
prompt
create table SYS_MENU
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

prompt
prompt Creating table SYS_NOTICE
prompt =========================
prompt
create table SYS_NOTICE
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

prompt
prompt Creating table SYS_OPER_LOG
prompt ===========================
prompt
create table SYS_OPER_LOG
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

prompt
prompt Creating table SYS_POST
prompt =======================
prompt
create table SYS_POST
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

prompt
prompt Creating table SYS_ROLE
prompt =======================
prompt
create table SYS_ROLE
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
  is 'ɾ����־��0������� 2����ɾ����';
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

prompt
prompt Creating table SYS_ROLE_DEPT
prompt ============================
prompt
create table SYS_ROLE_DEPT
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

prompt
prompt Creating table SYS_ROLE_MENU
prompt ============================
prompt
create table SYS_ROLE_MENU
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

prompt
prompt Creating table SYS_STATISTICS
prompt =============================
prompt
create table SYS_STATISTICS
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

prompt
prompt Creating table SYS_USER
prompt =======================
prompt
create table SYS_USER
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
  is 'ɾ����־��0������� 2����ɾ����';
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

prompt
prompt Creating table SYS_USER_ONLINE
prompt ==============================
prompt
create table SYS_USER_ONLINE
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

prompt
prompt Creating table SYS_USER_POST
prompt ============================
prompt
create table SYS_USER_POST
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

prompt
prompt Creating table SYS_USER_ROLE
prompt ============================
prompt
create table SYS_USER_ROLE
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

prompt
prompt Creating sequence SEQ_GEN_TABLE
prompt ===============================
prompt
create sequence SEQ_GEN_TABLE
minvalue 1
maxvalue 9999999999999999999999999999
start with 121
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_GEN_TABLE_COLUMN
prompt ======================================
prompt
create sequence SEQ_GEN_TABLE_COLUMN
minvalue 1
maxvalue 9999999999999999999999999999
start with 130
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_CONFIG
prompt ================================
prompt
create sequence SEQ_SYS_CONFIG
minvalue 1
maxvalue 9999999999999999999999999999
start with 100
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_DEPT
prompt ==============================
prompt
create sequence SEQ_SYS_DEPT
minvalue 1
maxvalue 9999999999999999999999999999
start with 200
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_DICT_DATA
prompt ===================================
prompt
create sequence SEQ_SYS_DICT_DATA
minvalue 1
maxvalue 9999999999999999999999999999
start with 120
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_DICT_TYPE
prompt ===================================
prompt
create sequence SEQ_SYS_DICT_TYPE
minvalue 1
maxvalue 9999999999999999999999999999
start with 120
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_INVOKER
prompt =================================
prompt
create sequence SEQ_SYS_INVOKER
minvalue 1
maxvalue 9999999999999999999999999999
start with 30
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_JOB
prompt =============================
prompt
create sequence SEQ_SYS_JOB
minvalue 1
maxvalue 9999999999999999999999999999
start with 100
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_JOB_LOG
prompt =================================
prompt
create sequence SEQ_SYS_JOB_LOG
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_LOGININFOR
prompt ====================================
prompt
create sequence SEQ_SYS_LOGININFOR
minvalue 1
maxvalue 9999999999999999999999999999
start with 225
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_MENU
prompt ==============================
prompt
create sequence SEQ_SYS_MENU
minvalue 1
maxvalue 9999999999999999999999999999
start with 2029
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_NOTICE
prompt ================================
prompt
create sequence SEQ_SYS_NOTICE
minvalue 1
maxvalue 9999999999999999999999999999
start with 100
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_OPER_LOG
prompt ==================================
prompt
create sequence SEQ_SYS_OPER_LOG
minvalue 1
maxvalue 9999999999999999999999999999
start with 222
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_POST
prompt ==============================
prompt
create sequence SEQ_SYS_POST
minvalue 1
maxvalue 9999999999999999999999999999
start with 10
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_ROLE
prompt ==============================
prompt
create sequence SEQ_SYS_ROLE
minvalue 1
maxvalue 9999999999999999999999999999
start with 120
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_STATISTICS
prompt ====================================
prompt
create sequence SEQ_SYS_STATISTICS
minvalue 1
maxvalue 9999999999999999999999999999
start with 30
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_USER
prompt ==============================
prompt
create sequence SEQ_SYS_USER
minvalue 1
maxvalue 9999999999999999999999999999
start with 105
increment by 1
cache 20;

prompt
prompt Creating function FIND_IN_SET
prompt =============================
prompt
create or replace function find_in_set(arg1 in varchar2,arg2 in varchar)
return number is Result number;
begin
select instr(','||arg2||',' , ','||arg1||',') into Result from dual;
return(Result);
end find_in_set;
/


spool off
