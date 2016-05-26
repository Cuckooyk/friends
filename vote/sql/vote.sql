select * from VOTE_USER;--用户表
select * from VOTE_ITEM;--用户投票取值表
select * from VOTE_OPTION;--投票内容对应的选项表
select * from VOTE_SUBJECT;--投票主题1


select VS_ID,VS_TITLE,VS_TYPE,
(select count(*) from VOTE_OPTION where VS_ID=s.VS_ID)OptionCount,
(select count(VU_USER_ID) from VOTE_ITEM where VS_ID=s.VS_ID)UserCount from VOTE_SUBJECT s where VS_ID = '103'

--施诗改的内容
select count(VU_USER_ID) from VOTE_ITEM where VS_ID='103'
select * from VOTE_OPTION where VS_ID = '101'
select count(i.VO_ID) from VOTE_OPTION o 
left join VOTE_ITEM i on o.VO_ID = i.VO_ID where o.VS_ID = '101'
group by VO_ORDER order by VO_ORDER

delete VOTE_ITEM where VS_ID = 103
select * from VOTE_OPTION o join VOTE_SUBJECT s on  o.VS_ID = s.VS_ID where o.VS_ID = 101
select o.*,VS_ID sid,s.* from VOTE_OPTION o join VOTE_SUBJECT s on  o.VS_ID = s.VS_ID where o.VS_ID =103

select * from VOTE_OPTION o join VOTE_SUBJECT s on  o.VS_ID = s.VS_ID where o.VS_ID = 103
select * from VOTE_OPTION o join VOTE_SUBJECT s on  o.VS_ID = s.VS_ID where o.VS_ID = 103
select count(*) cou from VOTE_ITEM where VS_ID=101 and VO_ID = 405
select count(*) COU_VO,VO_ID from (select * from VOTE_ITEM where VS_ID = 101) group by VO_ID order by VO_ID
select count(*) COU_VO,VO_ID from VOTE_ITEM group by VO_ID

select su.VS_ID,VS_TITLE,op.VO_ID,op.VO_OPTION from VOTE_SUBJECT su 
inner join VOTE_OPTION op on op.VS_ID = su.VS_ID
inner join VOTE_ITEM it on it.VS_ID = op.VS_ID

--用户表
create table VOTE_USER
(
  VU_USER_ID   VARCHAR2(10) not null,           --用户id
  VU_USER_NAME VARCHAR2(20) not null,           --用户名
  VU_PASSWORD  VARCHAR2(20) not null,           --用户密码
  VU_STATUS    NUMBER(6) not null,              --用户状态
  VU_VERSION   NUMBER(10) not null              --角色
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table VOTE_USER
  add primary key (VU_USER_ID)
  using index 
 
  
  
--投票主题
create table VOTE_SUBJECT
(
  VS_ID    NUMBER(10) not null,            --投票主题编号
  VS_TITLE VARCHAR2(200) not null,         --投票主题
  VS_TYPE  NUMBER(6) not null              --投票类型:   单选  1    多选   2
)

alter table VOTE_SUBJECT
  add primary key (VS_ID)
  using index 

create sequence seq_subject start with 441




--投票内容对应的选项表
create table VOTE_OPTION
(
  VO_ID     NUMBER(10) not null,  --编号
  VO_OPTION VARCHAR2(100) not null,--投票选项
  VS_ID     NUMBER(10) not null,  --投票主题编号
  VO_ORDER  NUMBER(10) not null  --显示顺序
)

  
  
alter table VOTE_OPTION
  add primary key (VO_ID)
  using index 

create sequence seq_option start with 442




--用户投票取值表
create table VOTE_ITEM
(
  VI_ID      NUMBER(10) not null, --编号
  VO_ID      NUMBER(10) not null, --投票选项id
  VS_ID      NUMBER(10) not null, --投票主题编号id
  VU_USER_ID VARCHAR2(10) not null --用户id
)
  
alter table VOTE_ITEM
add constraint uk_VOTE_ITEM unique(VO_ID,VS_ID,VU_USER_ID);

create sequence seq_item start with 450;
drop sequence seq_item
select seq_item.nextval currId from dual

alter table VOTE_ITEM
  add primary key (VI_ID)
  using index 
select seq_option.nextval currId from dual

--添加用户
insert into VOTE_USER (VU_USER_ID, VU_USER_NAME, VU_PASSWORD, VU_STATUS, VU_VERSION)
values ('ss', '普通用户', 'a', 1, 1);
insert into VOTE_USER (VU_USER_ID, VU_USER_NAME, VU_PASSWORD, VU_STATUS, VU_VERSION)
values ('admin', '管理员', 'a', 2, 1);
insert into VOTE_USER (VU_USER_ID, VU_USER_NAME, VU_PASSWORD, VU_STATUS, VU_VERSION)
values ('zy', 's', 'a', 1, 0);
insert into VOTE_USER (VU_USER_ID, VU_USER_NAME, VU_PASSWORD, VU_STATUS, VU_VERSION)
values ('yc', 'a', 'a', 2, 0);
insert into VOTE_USER (VU_USER_ID, VU_USER_NAME, VU_PASSWORD, VU_STATUS, VU_VERSION)
values ('yc1', 'a', 'a', 2, 1);
insert into VOTE_USER (VU_USER_ID, VU_USER_NAME, VU_PASSWORD, VU_STATUS, VU_VERSION)
values ('yc2', 'a', 'a', 2, 1);
insert into VOTE_USER (VU_USER_ID, VU_USER_NAME, VU_PASSWORD, VU_STATUS, VU_VERSION)
values ('yc3', 'a', 'a', 2, 1);
insert into VOTE_USER (VU_USER_ID, VU_USER_NAME, VU_PASSWORD, VU_STATUS, VU_VERSION)
values ('yc4', 'a', 'a', 2, 1);
insert into VOTE_USER (VU_USER_ID, VU_USER_NAME, VU_PASSWORD, VU_STATUS, VU_VERSION)
values ('yc5', 'a', 'a', 2, 1);
insert into VOTE_USER (VU_USER_ID, VU_USER_NAME, VU_PASSWORD, VU_STATUS, VU_VERSION)
values ('yc6', 'a', 'a', 1, 0);

--添加投票主题
insert into VOTE_SUBJECT (VS_ID, VS_TITLE, VS_TYPE)
values (103, '选出你心目中最好的下载工具', 2);
insert into VOTE_SUBJECT (VS_ID, VS_TITLE, VS_TYPE)
values (104, '选出你心目中最好的输入法', 1);
insert into VOTE_SUBJECT (VS_ID, VS_TITLE, VS_TYPE)
values (105, '选出你心目中最好的网络聊天工具', 1);
insert into VOTE_SUBJECT (VS_ID, VS_TITLE, VS_TYPE)
values (440, '你最想区的地方', 1);
insert into VOTE_SUBJECT (VS_ID, VS_TITLE, VS_TYPE)
values (101, '选出你心目中最好的浏览器', 1);
insert into VOTE_SUBJECT (VS_ID, VS_TITLE, VS_TYPE)
values (102, '选出你心目中最好的杀毒软件', 1);

--添加主题中的选项
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (397, '腾讯QQ', 105, 1);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (398, 'MSN', 105, 2);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (380, '迅雷', 103, 1);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (399, '新浪UC', 105, 3);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (400, '飞信', 105, 4);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (401, 'Skype', 105, 5);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (402, '阿里旺旺', 105, 6);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (403, '百度HI', 105, 7);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (404, '微软IE浏览器', 101, 1);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (405, '火狐（Firefox）浏览器', 101, 2);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (381, '网际快车', 103, 2);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (382, '电驴', 103, 3);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (383, '比特精灵', 103, 4);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (384, '超级旋风', 103, 5);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (385, '搜狗拼音', 104, 1);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (386, '搜狗五笔', 104, 2);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (387, 'QQ拼音', 104, 3);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (388, 'QQ五笔', 104, 4);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (389, '谷歌拼音', 104, 5);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (390, '紫光拼音', 104, 6);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (391, '智能ABC', 104, 7);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (392, '微软拼音', 104, 8);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (393, '万能拼音', 104, 9);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (394, '万能五笔', 104, 10);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (395, '极品拼音', 104, 11);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (396, '极品五笔', 104, 12);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (406, '世界之窗浏览器', 101, 3);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (407, '360浏览器', 101, 4);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (408, '傲游浏览器', 101, 5);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (409, '谷歌（Chrome）浏览器', 101, 6);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (410, '卡巴斯基', 102, 1);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (411, '360杀毒', 102, 2);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (412, 'McAfee', 102, 3);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (413, 'AVG', 102, 4);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (414, '诺顿杀毒', 102, 5);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (415, '瑞星杀毒', 102, 6);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (416, '金山毒霸', 102, 7);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (417, '江民杀毒', 102, 8);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (418, '微点防御', 102, 9);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (419, '趋势杀毒', 102, 10);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (441, '地域', 440, 1);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (442, '天堂', 440, 2);

--添加选择结果
insert into VOTE_ITEM (VI_ID, VO_ID, VS_ID, VU_USER_ID)
values (422, 405, 101, 'yc1');
insert into VOTE_ITEM (VI_ID, VO_ID, VS_ID, VU_USER_ID)
values (423, 405, 101, 'yc2');
insert into VOTE_ITEM (VI_ID, VO_ID, VS_ID, VU_USER_ID)
values (424, 404, 101, 'yc3');
insert into VOTE_ITEM (VI_ID, VO_ID, VS_ID, VU_USER_ID)
values (425, 407, 101, 'yc4');
insert into VOTE_ITEM (VI_ID, VO_ID, VS_ID, VU_USER_ID)
values (426, 408, 101, 'yc5');
insert into VOTE_ITEM (VI_ID, VO_ID, VS_ID, VU_USER_ID)
values (427, 409, 101, 'yc');
insert into VOTE_ITEM (VI_ID, VO_ID, VS_ID, VU_USER_ID)
values (445, 404, 101, 'zy');
insert into VOTE_ITEM (VI_ID, VO_ID, VS_ID, VU_USER_ID)
values (367, 136, 135, 'admin');
insert into VOTE_ITEM (VI_ID, VO_ID, VS_ID, VU_USER_ID)
values (420, 405, 101, 'admin');
insert into VOTE_ITEM (VI_ID, VO_ID, VS_ID, VU_USER_ID)
values (421, 406, 101, 'ss');



commit;















