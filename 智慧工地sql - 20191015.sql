-- 授权数据库操作。其中：xxx代表创建的数据库; password为用户密码，在此为root的密码。
-- grant all on DZBuilding.* to 'root-123'@'%' identified by '123456' with grant option;

-- 智慧工地 数据库

-- drop database DZBuilding;
-- create database DZBuilding2;
use DZBuilding;
-- 
-- ---------------------------------------------------------
-- 测试用户列表：
CREATE TABLE IF NOT EXISTS T_Test_User (
recordId INT(10) NOT NULL AUTO_INCREMENT COMMENT '序列号',
userId varchar(10) COMMENT '用户ID',
userName varchar(4) COMMENT '用户名',
passWord varchar(16) COMMENT '密码',
telNum varchar(11) COMMENT '电话号码',
email varchar(30) COMMENT '用户邮箱',
birthday date COMMENT '出生日期（1970-01-01）',
updateTime datetime NOT NULL DEFAULT NOW() COMMENT '更新时间',
primary key(recordId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='测试用户列表';

INSERT INTO T_Test_User(userName) VALUES ('2343');
INSERT INTO T_Test_User(userName) VALUES ('1233');
INSERT INTO T_Test_User VALUES (null,'101','小王1','123','13588002374','***@qq.com','2019-10-14',now());
INSERT INTO T_Test_User VALUES (null,'102','小王2','123','13588002374','***@qq.com','2019-10-14',now());
INSERT INTO T_Test_User VALUES (null,'103','小王3','123','13588002374','***@qq.com','2019-10-14',now());
INSERT INTO T_Test_User VALUES (null,'104','小王4','123','13588002374','***@qq.com','2019-10-14',now());
INSERT INTO T_Test_User VALUES (null,'105','小王5','123','13588002374','***@qq.com','2019-10-14',now());


-- ---------------------------------------------------------
-- ---------------------------------------------------------
-- 用户信息列表：	
CREATE TABLE IF NOT EXISTS T_DZ_User (
userId varchar(20) NOT NULL COMMENT '用户编号ID',
userName varchar(36) COMMENT '用户名称（登录账户名）',
userPsw varchar(16) COMMENT '用户密码（登录账户密码）',
userTel varchar(11) COMMENT '电话号码',
userEmail varchar(30) COMMENT '用户邮箱',
userCompany	varchar(20) COMMENT '用户单位（XX政府、XX企业、个人）',
userType varchar(16) COMMENT '用户类型（政府用户、企业用户、普通用户）',
userRole varchar(16) COMMENT '用户角色（施工管理、建设管理、监理管理、安全负责人、施工单位项目负责人、施工单位项目经理）',
userLevel varchar(1) COMMENT '权限级别（总监、经理、甲方、管理员……）',
userPhoto varchar(128) COMMENT '用户头像（OSS地址）',
updateTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
primary key(UserId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息列表';


INSERT INTO T_DZ_User VALUES ('100001','重庆大智汇物科技有限公司1','123456','15923504075','568373031@qq.com','大智科技','企业用户','建设管理','5','http://dzhw-',now());  
INSERT INTO T_DZ_User VALUES ('100002','重庆大智汇物科技有限公司2','654321','15923504076','568373032@qq.com','大智科技','企业用户','建设管理','5','http://dzhw-',now());  
INSERT INTO T_DZ_User VALUES ('100003','重庆大智汇物科技有限公司3','000000','15923504077','568373033@qq.com','大智科技','企业用户','建设管理','5','http://dzhw-',now());  
INSERT INTO T_DZ_User VALUES ('100004','重庆大智汇物科技有限公司4','000000','15923504077','568373033@qq.com','大智科技','企业用户','建设管理','5','http://dzhw-',now());  
INSERT INTO T_DZ_User VALUES ('100005','重庆大智汇物科技有限公司5','000000','15923504077','568373033@qq.com','大智科技','企业用户','建设管理','5','http://dzhw-',now());  
INSERT INTO T_DZ_User VALUES ('100006','重庆大智汇物科技有限公司6','000000','15923504077','568373033@qq.com','大智科技','企业用户','建设管理','5','http://dzhw-',now());  
INSERT INTO T_DZ_User VALUES ('100007','重庆大智汇物科技有限公司7','000000','15923504077','568373033@qq.com','大智科技','企业用户','建设管理','5','http://dzhw-',now());  
INSERT INTO T_DZ_User VALUES ('100008','重庆大智汇物科技有限公司8','000000','15923504077','568373033@qq.com','大智科技','企业用户','建设管理','5','http://dzhw-',now());  
INSERT INTO T_DZ_User VALUES ('100009','重庆大智汇物科技有限公司9','000000','15923504077','568373033@qq.com','大智科技','企业用户','建设管理','5','http://dzhw-',now());  
INSERT INTO T_DZ_User VALUES ('100010','重庆大智汇物科技有限公司10','000000','15923504077','568373033@qq.com','大智科技','企业用户','建设管理','5','http://dzhw-',now());  
INSERT INTO T_DZ_User VALUES ('100011','重庆大智汇物科技有限公司11','000000','15923504077','568373033@qq.com','大智科技','企业用户','建设管理','5','http://dzhw-',now());  
INSERT INTO T_DZ_User VALUES ('100012','重庆大智汇物科技有限公司12','000000','15923504077','568373033@qq.com','大智科技','企业用户','建设管理','5','http://dzhw-',now());  
INSERT INTO T_DZ_User VALUES ('100013','重庆大智汇物科技有限公司13','000000','15923504077','568373033@qq.com','大智科技','企业用户','建设管理','5','http://dzhw-',now());  
INSERT INTO T_DZ_User VALUES ('100014','重庆大智汇物科技有限公d司14','000000','15923504077','568373033@qq.com','大智科技','企业用户','建设管理','5','http://dzhw-',now());  
INSERT INTO T_DZ_User VALUES ('100015','重庆大智汇物科技有限公司15','000000','15923504077','568373033@qq.com','大智科技','企业用户','建设管理','5','http://dzhw-',now());  
INSERT INTO T_DZ_User VALUES ('100016','重庆大智汇物科技有限公司16','000000','15923504077','568373033@qq.com','大智科技','企业用户','建设管理','5','http://dzhw-',now());  

INSERT INTO T_DZ_User VALUES ('100017','txl','123456','15923504075','568373031@qq.com','大智科技','企业用户','建设管理','5','http://dzhw-',now());  
INSERT INTO T_DZ_User VALUES ('100018','zd','123456','15923504077','568373031@qq.com','大智科技','企业用户','建设管理','5','http://dzhw-',now());  


-- ---------------------------------------------------------
-- 用户登录信息列表：	
CREATE TABLE IF NOT EXISTS T_DZ_UserLogin (
recordId INT(10) NOT NULL AUTO_INCREMENT COMMENT '序列号',
userId varchar(20) NOT NULL COMMENT '用户编号ID',
userToken varchar(300) COMMENT 'Token令牌',
userIp varchar(15) COMMENT '客户端请求的IP',
loginSrc varchar(1) COMMENT '登录来源（PC、移动端、其它）',
loginoutTime timestamp COMMENT '登录/登出时间',
loginoutStatus varchar(1)	COMMENT '登录登出状态（0：登录；1：登出）',
updateTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
primary key(recordId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户登录信息列表';


INSERT INTO T_DZ_UserLogin VALUES (null,'100001','zxcvbnmasdfghjklqwertyuiop','179.104.201.106','0','2019-10-12 12:02:22','0',now());  
INSERT INTO T_DZ_UserLogin VALUES (null,'100001','zxcvbnmasdfghjklqwertyuiop','179.104.201.106','0','2019-10-12 12:02:22','0',now());  
INSERT INTO T_DZ_UserLogin VALUES (null,'100001','zxcvbnmasdfghjklqwertyuiop','179.104.201.106','0','2019-10-12 12:02:22','0',now());  
INSERT INTO T_DZ_UserLogin VALUES (null,'100002','zxcvbnmasdfghjklqwertyuiop','179.104.201.106','0','2019-10-12 12:02:22','0',now());  
INSERT INTO T_DZ_UserLogin VALUES (null,'100002','zxcvbnmasdfghjklqwertyuiop','179.104.201.106','0','2019-10-12 12:02:22','0',now());  
INSERT INTO T_DZ_UserLogin VALUES (null,'100003','zxcvbnmasdfghjklqwertyuiop','179.104.201.106','0','2019-10-12 12:02:22','0',now());  
INSERT INTO T_DZ_UserLogin VALUES (null,'100003','zxcvbnmasdfghjklqwertyuiop','179.104.201.106','0','2019-10-12 12:02:22','0',now());  
INSERT INTO T_DZ_UserLogin VALUES (null,'100003','zxcvbnmasdfghjklqwertyuiop','179.104.201.106','0','2019-10-12 12:02:22','0',now());  
INSERT INTO T_DZ_UserLogin VALUES (null,'100004','zxcvbnmasdfghjklqwertyuiop','179.104.201.106','0','2019-10-12 12:02:22','0',now());  
INSERT INTO T_DZ_UserLogin VALUES (null,'100004','zxcvbnmasdfghjklqwertyuiop','179.104.201.106','0','2019-10-12 12:02:22','0',now());  
INSERT INTO T_DZ_UserLogin VALUES (null,'100005','zxcvbnmasdfghjklqwertyuiop','179.104.201.106','0','2019-10-12 12:02:22','0',now());  
INSERT INTO T_DZ_UserLogin VALUES (null,'100005','zxcvbnmasdfghjklqwertyuiop','179.104.201.106','0','2019-10-12 12:02:22','0',now());  
INSERT INTO T_DZ_UserLogin VALUES (null,'100005','zxcvbnmasdfghjklqwertyuiop','179.104.201.106','0','2019-10-12 12:02:22','0',now());  
INSERT INTO T_DZ_UserLogin VALUES (null,'100006','zxcvbnmasdfghjklqwertyuiop','179.104.201.106','0','2019-10-12 12:02:22','0',now());  
INSERT INTO T_DZ_UserLogin VALUES (null,'100006','zxcvbnmasdfghjklqwertyuiop','179.104.201.106','0','2019-10-12 12:02:22','0',now());  
INSERT INTO T_DZ_UserLogin VALUES (null,'100006','zxcvbnmasdfghjklqwertyuiop','179.104.201.106','0','2019-10-12 12:02:22','0',now());  
INSERT INTO T_DZ_UserLogin VALUES (null,'100007','zxcvbnmasdfghjklqwertyuiop','179.104.201.106','0','2019-10-12 12:02:22','0',now());  
INSERT INTO T_DZ_UserLogin VALUES (null,'100007','zxcvbnmasdfghjklqwertyuiop','179.104.201.106','0','2019-10-12 12:02:22','0',now());  
INSERT INTO T_DZ_UserLogin VALUES (null,'100007','zxcvbnmasdfghjklqwertyuiop','179.104.201.106','0','2019-10-12 12:02:22','0',now());  
INSERT INTO T_DZ_UserLogin VALUES (null,'100008','zxcvbnmasdfghjklqwertyuiop','179.104.201.106','0','2019-10-12 12:02:22','0',now());  


-- ---------------------------------------------------------
-- 用户项目权限信息列表：	
CREATE TABLE IF NOT EXISTS T_DZ_AuthProject (
userId varchar(20) NOT NULL COMMENT '用户编号ID',
projectId varchar(20) COMMENT '项目编号ID',
updateTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
primary key(UserId,projectId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户项目权限信息列表';


INSERT INTO T_DZ_AuthProject VALUES ('100001','500001',now());  
INSERT INTO T_DZ_AuthProject VALUES ('100001','500002',now());  
INSERT INTO T_DZ_AuthProject VALUES ('100002','500001',now());  
INSERT INTO T_DZ_AuthProject VALUES ('100002','500002',now());  
INSERT INTO T_DZ_AuthProject VALUES ('100003','500001',now());  
INSERT INTO T_DZ_AuthProject VALUES ('100003','500002',now());  
INSERT INTO T_DZ_AuthProject VALUES ('100004','500001',now());  
INSERT INTO T_DZ_AuthProject VALUES ('100004','500002',now());  
INSERT INTO T_DZ_AuthProject VALUES ('100005','500001',now());  
INSERT INTO T_DZ_AuthProject VALUES ('100005','500002',now());  
INSERT INTO T_DZ_AuthProject VALUES ('100006','500001',now());  


-- ---------------------------------------------------------
-- 用户项目子功能权限信息列表：	
CREATE TABLE IF NOT EXISTS T_DZ_AuthUser (
userId varchar(20) NOT NULL COMMENT '用户编号ID',
projectId varchar(20) COMMENT '项目编号ID',
projectInfo varchar(1) COMMENT '项目简介',
person varchar(1) COMMENT '员工信息（实名制信息）',
video varchar(1) COMMENT '监控管理（视频监控）',
sign varchar(1) COMMENT '考勤管理（考勤情况）',
salary varchar(1) COMMENT '薪资管理（农民工工资）',
device varchar(1) COMMENT '设备管理（起重机械）',
environment varchar(1) COMMENT '环境监测',
dangerProject varchar(1) COMMENT '危大工程',
hiddenDanger varchar(1) COMMENT '隐患检排',
inspection varchar(1) COMMENT '检验检测',
supervisionReport varchar(1) COMMENT '监理报告',
warn varchar(1) COMMENT '预警信息',
material varchar(1) COMMENT '建材管理',
qualityAccept varchar(1) COMMENT '质量验收',
examine varchar(1)	COMMENT '巡检信息',
statistics varchar(1) COMMENT '统计分析',
seniorFun varchar(1) COMMENT '智慧监测（安全帽、安全绳、火焰、边界）',
updateTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
primary key(UserId,projectId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户项目子功能权限信息列表';


INSERT INTO T_DZ_AuthUser VALUES ('100001','500001','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',now());  
INSERT INTO T_DZ_AuthUser VALUES ('100001','500002','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',now());  
INSERT INTO T_DZ_AuthUser VALUES ('100002','500001','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',now());  
INSERT INTO T_DZ_AuthUser VALUES ('100002','500002','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',now());  
INSERT INTO T_DZ_AuthUser VALUES ('100003','500001','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',now());  
INSERT INTO T_DZ_AuthUser VALUES ('100003','500002','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',now());  
INSERT INTO T_DZ_AuthUser VALUES ('100004','500001','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',now());  
INSERT INTO T_DZ_AuthUser VALUES ('100004','500002','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',now());  
INSERT INTO T_DZ_AuthUser VALUES ('100005','500001','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',now());  
INSERT INTO T_DZ_AuthUser VALUES ('100005','500002','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',now());  
INSERT INTO T_DZ_AuthUser VALUES ('100006','500001','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',now());  


-- ---------------------------------------------------------
-- 项目信息列表：
CREATE TABLE IF NOT EXISTS T_DZ_Project (
projectId varchar(20) COMMENT '项目编号ID',
projectName varchar(36) COMMENT '项目名称/工程名称',
buildingSide varchar(36) COMMENT '建设单位',
designUnit varchar(36) COMMENT '设计单位',
explorationUnit varchar(36) COMMENT '勘察单位',
supervisionUnit varchar(36) COMMENT '监理单位',
constructionUnit varchar(36) COMMENT '施工单位',
projectAddress varchar(64) COMMENT '项目地址',
projectType varchar(1) COMMENT '工程类别（房建、市政……）',
projectCost varchar(10) COMMENT '工程造价（单位：万元）',
projectScale varchar(16) COMMENT '工程规模（单位：平方米/m2）',
buildTime varchar(16) COMMENT '工程工期（单位：月）',
planBeginTime Date COMMENT '工程计划开工日期',
planEndTime	Date COMMENT '工程计划竣工日期',
realBeginTime Date COMMENT '工程实际开工日期',
realEndTime Date COMMENT '工程实际竣工日期',
projectLevel varchar(1) COMMENT '工程级别（国级、省级、市级、个体）',
projectStatus varchar(1) COMMENT '工程状态（待建，在建，停工，竣工，终止）',
wisdomProject varchar(1) COMMENT '智慧工程（0：不是；1：是）',
demoProject varchar(1) COMMENT '示范工程（0：不是；1：是）',
linkMan varchar(10) COMMENT '项目联系人',
linkTelNum varchar(11) COMMENT '项目联系电话',
linkEmail varchar(30) COMMENT '项目联系邮箱',
projectImage varchar(128) COMMENT '工程缩略预览图（地址）',
areaCode varchar(10) COMMENT '区域代码',
cityCode varchar(10) COMMENT '城市代码',
countryCode varchar(10) COMMENT '国家代码',
posLng varchar(16) COMMENT '位置经度',
posLat varchar(16) COMMENT '位置纬度',
remarks varchar(300) COMMENT '摘要备注',
builderLicenseNum	varchar(50) COMMENT '施工许可证号',
contractorCorpCode varchar(18) COMMENT '总承包单位统一社会信用代码',
buildCorpCode varchar(18) COMMENT '建设单位统一社会信用代码',
buildPlanNum varchar(50) COMMENT '建设用地规划许可证编号',
prjPlanNum varchar(50) COMMENT '建设工程规划许可证编号',
buildingArea varchar(21) COMMENT '总长度',
approvalNum	varchar(50) COMMENT '立项文号',
approvalLevelNum varchar(3) COMMENT '立项级别',
prjSize	varchar(3) COMMENT '建设规模',
propertyNum	varchar(3) COMMENT '建设性质',
prjNum varchar(3) COMMENT '工程用途',
nationNum	varchar(3) COMMENT '国籍或地区',
thirdPartyProjectCode	varchar(50) COMMENT '第三方项目编码',
updateTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
primary key(projectId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='项目信息列表';


INSERT INTO T_DZ_Project VALUES ('500001','金科照母山项目B5-1/05地块二标段工程','重庆金科中俊房地产开发有限公司',
'中国建筑西南设计院研究院有限公司','中国建筑西南设计研究院有限公司','重庆新鲁班工程监理有限责任公司','重庆建工住宅建设有限公司',
'两江新区B标准分区B5-1/05地块','0','29720','184829','24','2018-09-30','2021-01-20',null,null,'3','1','1','0','张三','15923504066','568373032@qq.com',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','01','023','cn','106.5109062195','29.6274138557','无','qewqe','sadasd','dadsf','dsdsc','khg','1658.62','20191011-05','1','2','1','1','25','215654',now());  
INSERT INTO T_DZ_Project VALUES ('500002','金科照母山项目B5-1/05地块二标段工程','重庆金科中俊房地产开发有限公司',
'中国建筑西南设计院研究院有限公司','中国建筑西南设计研究院有限公司','重庆新鲁班工程监理有限责任公司','重庆建工住宅建设有限公司',
'两江新区B标准分区B5-1/05地块','0','29720','184829','24','2018-09-30','2021-01-20',null,null,'3','1','1','0','张三','15923504066','568373032@qq.com',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','01','023','cn','106.5109062195','29.6274138557','无','qewqe','sadasd','dadsf','dsdsc','khg','1658.62','20191011-05','1','2','1','1','25','215654',now());  
INSERT INTO T_DZ_Project VALUES ('500003','金科照母山项目B5-1/05地块二标段工程','重庆金科中俊房地产开发有限公司',
'中国建筑西南设计院研究院有限公司','中国建筑西南设计研究院有限公司','重庆新鲁班工程监理有限责任公司','重庆建工住宅建设有限公司',
'两江新区B标准分区B5-1/05地块','0','29720','184829','24','2018-09-30','2021-01-20',null,null,'3','1','1','0','张三','15923504066','568373032@qq.com',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','01','023','cn','106.5109062195','29.6274138557','无','qewqe','sadasd','dadsf','dsdsc','khg','1658.62','20191011-05','1','2','1','1','25','215654',now());  
INSERT INTO T_DZ_Project VALUES ('500004','金科照母山项目B5-1/05地块二标段工程','重庆金科中俊房地产开发有限公司',
'中国建筑西南设计院研究院有限公司','中国建筑西南设计研究院有限公司','重庆新鲁班工程监理有限责任公司','重庆建工住宅建设有限公司',
'两江新区B标准分区B5-1/05地块','0','29720','184829','24','2018-09-30','2021-01-20',null,null,'3','1','1','0','张三','15923504066','568373032@qq.com',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','01','023','cn','106.5109062195','29.6274138557','无','qewqe','sadasd','dadsf','dsdsc','khg','1658.62','20191011-05','1','2','1','1','25','215654',now());  
INSERT INTO T_DZ_Project VALUES ('500005','金科照母山项目B5-1/05地块二标段工程','重庆金科中俊房地产开发有限公司',
'中国建筑西南设计院研究院有限公司','中国建筑西南设计研究院有限公司','重庆新鲁班工程监理有限责任公司','重庆建工住宅建设有限公司',
'两江新区B标准分区B5-1/05地块','0','29720','184829','24','2018-09-30','2021-01-20',null,null,'3','1','1','0','张三','15923504066','568373032@qq.com',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','01','023','cn','106.5109062195','29.6274138557','无','qewqe','sadasd','dadsf','dsdsc','khg','1658.62','20191011-05','1','2','1','1','25','215654',now());  
INSERT INTO T_DZ_Project VALUES ('500006','金科照母山项目B5-1/05地块二标段工程','重庆金科中俊房地产开发有限公司',
'中国建筑西南设计院研究院有限公司','中国建筑西南设计研究院有限公司','重庆新鲁班工程监理有限责任公司','重庆建工住宅建设有限公司',
'两江新区B标准分区B5-1/05地块','0','29720','184829','24','2018-09-30','2021-01-20',null,null,'3','1','1','0','张三','15923504066','568373032@qq.com',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','01','023','cn','106.5109062195','29.6274138557','无','qewqe','sadasd','dadsf','dsdsc','khg','1658.62','20191011-05','1','2','1','1','25','215654',now());  
INSERT INTO T_DZ_Project VALUES ('500007','金科照母山项目B5-1/05地块二标段工程','重庆金科中俊房地产开发有限公司',
'中国建筑西南设计院研究院有限公司','中国建筑西南设计研究院有限公司','重庆新鲁班工程监理有限责任公司','重庆建工住宅建设有限公司',
'两江新区B标准分区B5-1/05地块','0','29720','184829','24','2018-09-30','2021-01-20',null,null,'3','1','1','0','张三','15923504066','568373032@qq.com',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','01','023','cn','106.5109062195','29.6274138557','无','qewqe','sadasd','dadsf','dsdsc','khg','1658.62','20191011-05','1','2','1','1','25','215654',now());  

INSERT INTO T_DZ_Project VALUES ('500008','金科照母山项目B5-1/05地块二标段工程','重庆金科中俊房地产开发有限公司',
'中国建筑西南设计院研究院有限公司','中国建筑西南设计研究院有限公司','重庆新鲁班工程监理有限责任公司','重庆建工住宅建设有限公司',
'两江新区B标准分区B5-1/05地块','0','29720','184829','24','2018-09-30','2021-01-20',null,null,'3','1','1','0','张三','15923504066','568373032@qq.com',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','01','023','cn','106.5109062195','29.6274138557','无','qewqe','sadasd','dadsf','dsdsc','khg','1658.62','20191011-05','1','2','1','1','25','215654',now());  
INSERT INTO T_DZ_Project VALUES ('500009','金科照母山项目B5-1/05地块二标段工程','重庆金科中俊房地产开发有限公司',
'中国建筑西南设计院研究院有限公司','中国建筑西南设计研究院有限公司','重庆新鲁班工程监理有限责任公司','重庆建工住宅建设有限公司',
'两江新区B标准分区B5-1/05地块','0','29720','184829','24','2018-09-30','2021-01-20',null,null,'3','1','1','0','张三','15923504066','568373032@qq.com',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','01','023','cn','106.5109062195','29.6274138557','无','qewqe','sadasd','dadsf','dsdsc','khg','1658.62','20191011-05','1','2','1','1','25','215654',now());  
INSERT INTO T_DZ_Project VALUES ('500010','金科照母山项目B5-1/05地块二标段工程','重庆金科中俊房地产开发有限公司',
'中国建筑西南设计院研究院有限公司','中国建筑西南设计研究院有限公司','重庆新鲁班工程监理有限责任公司','重庆建工住宅建设有限公司',
'两江新区B标准分区B5-1/05地块','0','29720','184829','24','2018-09-30','2021-01-20',null,null,'3','1','1','0','张三','15923504066','568373032@qq.com',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','01','023','cn','106.5109062195','29.6274138557','无','qewqe','sadasd','dadsf','dsdsc','khg','1658.62','20191011-05','1','2','1','1','25','215654',now());  
INSERT INTO T_DZ_Project VALUES ('500011','金科照母山项目B5-1/05地块二标段工程','重庆金科中俊房地产开发有限公司',
'中国建筑西南设计院研究院有限公司','中国建筑西南设计研究院有限公司','重庆新鲁班工程监理有限责任公司','重庆建工住宅建设有限公司',
'两江新区B标准分区B5-1/05地块','0','29720','184829','24','2018-09-30','2021-01-20',null,null,'3','1','1','0','张三','15923504066','568373032@qq.com',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','01','023','cn','106.5109062195','29.6274138557','无','qewqe','sadasd','dadsf','dsdsc','khg','1658.62','20191011-05','1','2','1','1','25','215654',now());  
INSERT INTO T_DZ_Project VALUES ('500012','金科照母山项目B5-1/05地块二标段工程','重庆金科中俊房地产开发有限公司',
'中国建筑西南设计院研究院有限公司','中国建筑西南设计研究院有限公司','重庆新鲁班工程监理有限责任公司','重庆建工住宅建设有限公司',
'两江新区B标准分区B5-1/05地块','0','29720','184829','24','2018-09-30','2021-01-20',null,null,'3','1','1','0','张三','15923504066','568373032@qq.com',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','01','023','cn','106.5109062195','29.6274138557','无','qewqe','sadasd','dadsf','dsdsc','khg','1658.62','20191011-05','1','2','1','1','25','215654',now());  
INSERT INTO T_DZ_Project VALUES ('500013','金科照母山项目B5-1/05地块二标段工程','重庆金科中俊房地产开发有限公司',
'中国建筑西南设计院研究院有限公司','中国建筑西南设计研究院有限公司','重庆新鲁班工程监理有限责任公司','重庆建工住宅建设有限公司',
'两江新区B标准分区B5-1/05地块','0','29720','184829','24','2018-09-30','2021-01-20',null,null,'3','1','1','0','张三','15923504066','568373032@qq.com',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','01','023','cn','106.5109062195','29.6274138557','无','qewqe','sadasd','dadsf','dsdsc','khg','1658.62','20191011-05','1','2','1','1','25','215654',now());  
INSERT INTO T_DZ_Project VALUES ('500014','金科照母山项目B5-1/05地块二标段工程','重庆金科中俊房地产开发有限公司',
'中国建筑西南设计院研究院有限公司','中国建筑西南设计研究院有限公司','重庆新鲁班工程监理有限责任公司','重庆建工住宅建设有限公司',
'两江新区B标准分区B5-1/05地块','0','29720','184829','24','2018-09-30','2021-01-20',null,null,'3','1','1','0','张三','15923504066','568373032@qq.com',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','01','023','cn','106.5109062195','29.6274138557','无','qewqe','sadasd','dadsf','dsdsc','khg','1658.62','20191011-05','1','2','1','1','25','215654',now());  
INSERT INTO T_DZ_Project VALUES ('500015','金科照母山项目B5-1/05地块二标段工程','重庆金科中俊房地产开发有限公司',
'中国建筑西南设计院研究院有限公司','中国建筑西南设计研究院有限公司','重庆新鲁班工程监理有限责任公司','重庆建工住宅建设有限公司',
'两江新区B标准分区B5-1/05地块','0','29720','184829','24','2018-09-30','2021-01-20',null,null,'3','1','1','0','张三','15923504066','568373032@qq.com',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','01','023','cn','106.5109062195','29.6274138557','无','qewqe','sadasd','dadsf','dsdsc','khg','1658.62','20191011-05','1','2','1','1','25','215654',now());  

INSERT INTO T_DZ_Project VALUES ('500016','金科照母山项目B5-1/05地块二标段工程','重庆金科中俊房地产开发有限公司',
'中国建筑西南设计院研究院有限公司','中国建筑西南设计研究院有限公司','重庆新鲁班工程监理有限责任公司','重庆建工住宅建设有限公司',
'两江新区B标准分区B5-1/05地块','0','29720','184829','24','2018-09-30','2021-01-20',null,null,'3','1','1','0','张三','15923504066','568373032@qq.com',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','01','023','cn','106.5109062195','29.6274138557','无','qewqe','sadasd','dadsf','dsdsc','khg','1658.62','20191011-05','1','2','1','1','25','215654',now());  



-- ---------------------------------------------------------
-- 项目功能列表：
CREATE TABLE IF NOT EXISTS T_DZ_ProjectFun (
projectId varchar(20) COMMENT '项目编号ID',
projectInfo varchar(1) COMMENT '项目简介（0：无；1：有）',
person varchar(1) COMMENT '员工信息（实名制信息）',
video varchar(1) COMMENT '监控管理（视频监控）',
sign varchar(1) COMMENT '考勤管理（考勤情况）',
salary varchar(1) COMMENT '薪资管理（农民工工资）',
device varchar(1) COMMENT '设备管理（起重机械）',
environment varchar(1) COMMENT '环境监测',
dangerProject varchar(1) COMMENT '危大工程',
hiddenDanger varchar(1) COMMENT '隐患检排',
inspection varchar(1) COMMENT '检验检测',
supervisionReport varchar(1) COMMENT '监理报告',
warn varchar(1) COMMENT '预警信息',
material varchar(1) COMMENT '建材管理',
qualityAccept varchar(1) COMMENT '质量验收',
examine varchar(1)	COMMENT '巡检信息',
statisticsAnalysis varchar(1) COMMENT '统计分析',
seniorFun varchar(1) COMMENT '智慧监测（安全帽、安全绳、火焰、边界）',
updateTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
primary key(projectId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='项目功能列表';


INSERT INTO T_DZ_ProjectFun VALUES ('500001','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',now());  
INSERT INTO T_DZ_ProjectFun VALUES ('500002','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',now());  
INSERT INTO T_DZ_ProjectFun VALUES ('500003','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',now());  
INSERT INTO T_DZ_ProjectFun VALUES ('500004','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',now());  
INSERT INTO T_DZ_ProjectFun VALUES ('500005','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',now());  
INSERT INTO T_DZ_ProjectFun VALUES ('500006','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',now());  


-- ---------------------------------------------------------
-- 人员实名制信息列表：
CREATE TABLE IF NOT EXISTS T_DZ_Person (
projectId varchar(20) COMMENT '项目编号ID',
personId varchar(20) COMMENT '员工编号ID',
name varchar(10) COMMENT '员工姓名',
nation varchar(2) COMMENT '民族',
sex varchar(1) COMMENT '性别（0：男，1：女）',
age varchar(2) COMMENT '年龄',
birthday Date COMMENT '出生日期（1970-01-01）',
political varchar(10) COMMENT '政治面貌（群众、共青团员、中共党员）',
birthPlaceCode varchar(6)	COMMENT '籍贯（身份证号码前六位）',
homeAddress varchar(64) COMMENT '家庭住址',
education varchar(1) COMMENT '学历',
degree varchar(1) COMMENT '学位（无、本科、硕士研究生、博士研究生）',
title varchar(10) COMMENT '职称',
certificate	varchar(36) COMMENT '职业资格证（可输入多个）',
maritalStatus varchar(1) COMMENT '婚姻状况（未婚、已婚）',
position varchar(10) COMMENT '公司职位/项目岗位',
phoneNum varchar(11) COMMENT '手机号码/联系电话',
idCardType varchar(2)	COMMENT '证件类型',
idCardNum varchar(18) COMMENT '身份证号码',
personStatus varchar(1)	 COMMENT '在离职状态（0在职 1离职）',
company varchar(36) COMMENT '公司名称/单位名称',
category varchar(10) COMMENT '人员类别（管理人员、普通人员）',
projectTeam varchar(10) COMMENT '项目班组',
technicalType varchar(10) COMMENT '技术工种（作业工人、施工员……）',
headPhoto varchar(128) COMMENT '证件照片（地址）',
cityCode varchar(10) COMMENT '城市代码',
countryCode varchar(10) COMMENT '国家代码',
isJoined varchar(1)	COMMENT '是否加入工会',
joinedTime Date	COMMENT '加入工会时间',
cultureLevelType varchar(2)	COMMENT '文化程度',
specialty	varchar(200) COMMENT '特长',
hasBadMedicalHistory varchar(1)	COMMENT '是否有重大病史',
urgentLinkMan	varchar(50)	COMMENT '紧急联系人姓名',
urgentLinkManPhone varchar(50) COMMENT '紧急联系电话',
workDate Date	COMMENT '开始工作日期',
grantOrg varchar(20) COMMENT '发证机关',
positiveIDCardImageUrl varchar(128)	COMMENT '正面照 URL',
negativeIDCardImageUrl varchar(128)	COMMENT '反面照 URL',
startDate	Date COMMENT '有效期开始日期',
expiryDate Date COMMENT '有效期结束日期',
updateTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
primary key(projectId,personId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='人员实名制信息列表';


INSERT INTO T_DZ_Person VALUES ('500001','1001','王小二1','1','0','20','1999-01-20','1','500235','重庆市江津区几江大道1号','4','1','国家一级建造师','安全员、施工员、监理工程师','0','施工员','13588002374','2','500235199901209032','1','重庆阳光劳务派遣有限公司','1','3','2',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','023','cn','1','2019-09-01','1','无特长','0','猪八戒','13999667788','2013-04-07','花果山公安局','http://--','http://--','2016-08-26','2036-08-25',now());  
INSERT INTO T_DZ_Person VALUES ('500001','1002','王小二2','1','0','20','1999-01-20','1','500235','重庆市江津区几江大道2号','4','1','国家一级建造师','安全员、施工员、监理工程师','0','施工员','13588002374','2','500235199901209032','1','重庆阳光劳务派遣有限公司','1','3','2',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','023','cn','1','2019-09-01','1','无特长','0','猪八戒','13999667788','2013-04-07','花果山公安局','http://--','http://--','2016-08-26','2036-08-25',now());  
INSERT INTO T_DZ_Person VALUES ('500001','1003','王小二3','1','0','20','1999-01-20','1','500235','重庆市江津区几江大道2号','4','1','国家一级建造师','安全员、施工员、监理工程师','0','施工员','13588002374','2','500235199901209032','1','重庆阳光劳务派遣有限公司','1','3','2',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','023','cn','1','2019-09-01','1','无特长','0','猪八戒','13999667788','2013-04-07','花果山公安局','http://--','http://--','2016-08-26','2036-08-25',now());  
INSERT INTO T_DZ_Person VALUES ('500001','1004','王小二1','1','0','20','1999-01-20','1','500235','重庆市江津区几江大道1号','4','1','国家一级建造师','安全员、施工员、监理工程师','0','施工员','13588002374','2','500235199901209032','1','重庆阳光劳务派遣有限公司','1','3','2',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','023','cn','1','2019-09-01','1','无特长','0','猪八戒','13999667788','2013-04-07','花果山公安局','http://--','http://--','2016-08-26','2036-08-25',now());  
INSERT INTO T_DZ_Person VALUES ('500001','1005','王小二2','1','0','20','1999-01-20','1','500235','重庆市江津区几江大道2号','4','1','国家一级建造师','安全员、施工员、监理工程师','0','施工员','13588002374','2','500235199901209032','1','重庆阳光劳务派遣有限公司','1','3','2',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','023','cn','1','2019-09-01','1','无特长','0','猪八戒','13999667788','2013-04-07','花果山公安局','http://--','http://--','2016-08-26','2036-08-25',now());  
INSERT INTO T_DZ_Person VALUES ('500001','1006','王小二3','1','0','20','1999-01-20','1','500235','重庆市江津区几江大道2号','4','1','国家一级建造师','安全员、施工员、监理工程师','0','施工员','13588002374','2','500235199901209032','1','重庆阳光劳务派遣有限公司','1','3','2',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','023','cn','1','2019-09-01','1','无特长','0','猪八戒','13999667788','2013-04-07','花果山公安局','http://--','http://--','2016-08-26','2036-08-25',now());  
INSERT INTO T_DZ_Person VALUES ('500001','1007','王小二1','1','0','20','1999-01-20','1','500235','重庆市江津区几江大道1号','4','1','国家一级建造师','安全员、施工员、监理工程师','0','施工员','13588002374','2','500235199901209032','1','重庆阳光劳务派遣有限公司','1','3','2',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','023','cn','1','2019-09-01','1','无特长','0','猪八戒','13999667788','2013-04-07','花果山公安局','http://--','http://--','2016-08-26','2036-08-25',now());  
INSERT INTO T_DZ_Person VALUES ('500001','1008','王小二2','1','0','20','1999-01-20','1','500235','重庆市江津区几江大道2号','4','1','国家一级建造师','安全员、施工员、监理工程师','0','施工员','13588002374','2','500235199901209032','1','重庆阳光劳务派遣有限公司','1','3','2',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','023','cn','1','2019-09-01','1','无特长','0','猪八戒','13999667788','2013-04-07','花果山公安局','http://--','http://--','2016-08-26','2036-08-25',now());  
INSERT INTO T_DZ_Person VALUES ('500001','1009','王小二3','1','0','20','1999-01-20','1','500235','重庆市江津区几江大道2号','4','1','国家一级建造师','安全员、施工员、监理工程师','0','施工员','13588002374','2','500235199901209032','1','重庆阳光劳务派遣有限公司','1','3','2',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','023','cn','1','2019-09-01','1','无特长','0','猪八戒','13999667788','2013-04-07','花果山公安局','http://--','http://--','2016-08-26','2036-08-25',now());  
INSERT INTO T_DZ_Person VALUES ('500001','1010','王小二1','1','0','20','1999-01-20','1','500235','重庆市江津区几江大道1号','4','1','国家一级建造师','安全员、施工员、监理工程师','0','施工员','13588002374','2','500235199901209032','1','重庆阳光劳务派遣有限公司','1','3','2',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','023','cn','1','2019-09-01','1','无特长','0','猪八戒','13999667788','2013-04-07','花果山公安局','http://--','http://--','2016-08-26','2036-08-25',now());  
INSERT INTO T_DZ_Person VALUES ('500001','1011','王小二2','1','0','20','1999-01-20','1','500235','重庆市江津区几江大道2号','4','1','国家一级建造师','安全员、施工员、监理工程师','0','施工员','13588002374','2','500235199901209032','1','重庆阳光劳务派遣有限公司','1','3','2',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','023','cn','1','2019-09-01','1','无特长','0','猪八戒','13999667788','2013-04-07','花果山公安局','http://--','http://--','2016-08-26','2036-08-25',now());  
INSERT INTO T_DZ_Person VALUES ('500001','1012','王小二3','1','0','20','1999-01-20','1','500235','重庆市江津区几江大道2号','4','1','国家一级建造师','安全员、施工员、监理工程师','0','施工员','13588002374','2','500235199901209032','1','重庆阳光劳务派遣有限公司','1','3','2',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','023','cn','1','2019-09-01','1','无特长','0','猪八戒','13999667788','2013-04-07','花果山公安局','http://--','http://--','2016-08-26','2036-08-25',now());  
INSERT INTO T_DZ_Person VALUES ('500001','1013','王小二1','1','0','20','1999-01-20','1','500235','重庆市江津区几江大道1号','4','1','国家一级建造师','安全员、施工员、监理工程师','0','施工员','13588002374','2','500235199901209032','1','重庆阳光劳务派遣有限公司','1','3','2',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','023','cn','1','2019-09-01','1','无特长','0','猪八戒','13999667788','2013-04-07','花果山公安局','http://--','http://--','2016-08-26','2036-08-25',now());  
INSERT INTO T_DZ_Person VALUES ('500001','1014','王小二2','1','0','20','1999-01-20','1','500235','重庆市江津区几江大道2号','4','1','国家一级建造师','安全员、施工员、监理工程师','0','施工员','13588002374','2','500235199901209032','1','重庆阳光劳务派遣有限公司','1','3','2',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','023','cn','1','2019-09-01','1','无特长','0','猪八戒','13999667788','2013-04-07','花果山公安局','http://--','http://--','2016-08-26','2036-08-25',now());  
INSERT INTO T_DZ_Person VALUES ('500001','1015','王小二3','1','0','20','1999-01-20','1','500235','重庆市江津区几江大道2号','4','1','国家一级建造师','安全员、施工员、监理工程师','0','施工员','13588002374','2','500235199901209032','1','重庆阳光劳务派遣有限公司','1','3','2',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','023','cn','1','2019-09-01','1','无特长','0','猪八戒','13999667788','2013-04-07','花果山公安局','http://--','http://--','2016-08-26','2036-08-25',now());  
INSERT INTO T_DZ_Person VALUES ('500001','1016','王小二1','1','0','20','1999-01-20','1','500235','重庆市江津区几江大道1号','4','1','国家一级建造师','安全员、施工员、监理工程师','0','施工员','13588002374','2','500235199901209032','1','重庆阳光劳务派遣有限公司','1','3','2',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','023','cn','1','2019-09-01','1','无特长','0','猪八戒','13999667788','2013-04-07','花果山公安局','http://--','http://--','2016-08-26','2036-08-25',now());  
INSERT INTO T_DZ_Person VALUES ('500001','1017','王小二2','1','0','20','1999-01-20','1','500235','重庆市江津区几江大道2号','4','1','国家一级建造师','安全员、施工员、监理工程师','0','施工员','13588002374','2','500235199901209032','1','重庆阳光劳务派遣有限公司','1','3','2',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','023','cn','1','2019-09-01','1','无特长','0','猪八戒','13999667788','2013-04-07','花果山公安局','http://--','http://--','2016-08-26','2036-08-25',now());  
INSERT INTO T_DZ_Person VALUES ('500001','1018','王小二3','1','0','20','1999-01-20','1','500235','重庆市江津区几江大道2号','4','1','国家一级建造师','安全员、施工员、监理工程师','0','施工员','13588002374','2','500235199901209032','1','重庆阳光劳务派遣有限公司','1','3','2',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','023','cn','1','2019-09-01','1','无特长','0','猪八戒','13999667788','2013-04-07','花果山公安局','http://--','http://--','2016-08-26','2036-08-25',now());  
INSERT INTO T_DZ_Person VALUES ('500002','1001','王小二1','1','0','20','1999-01-20','1','500235','重庆市江津区几江大道1号','4','1','国家一级建造师','安全员、施工员、监理工程师','0','施工员','13588002374','2','500235199901209032','1','重庆阳光劳务派遣有限公司','1','3','2',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','023','cn','1','2019-09-01','1','无特长','0','猪八戒','13999667788','2013-04-07','花果山公安局','http://--','http://--','2016-08-26','2036-08-25',now());  
INSERT INTO T_DZ_Person VALUES ('500002','1002','王小二2','1','0','20','1999-01-20','1','500235','重庆市江津区几江大道2号','4','1','国家一级建造师','安全员、施工员、监理工程师','0','施工员','13588002374','2','500235199901209032','1','重庆阳光劳务派遣有限公司','1','3','2',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','023','cn','1','2019-09-01','1','无特长','0','猪八戒','13999667788','2013-04-07','花果山公安局','http://--','http://--','2016-08-26','2036-08-25',now());  
INSERT INTO T_DZ_Person VALUES ('500002','1003','王小二3','1','0','20','1999-01-20','1','500235','重庆市江津区几江大道2号','4','1','国家一级建造师','安全员、施工员、监理工程师','0','施工员','13588002374','2','500235199901209032','1','重庆阳光劳务派遣有限公司','1','3','2',
'D:\JAVA_WS\construction20190915\src\main\resources\static\xxx.jpg','023','cn','1','2019-09-01','1','无特长','0','猪八戒','13999667788','2013-04-07','花果山公安局','http://--','http://--','2016-08-26','2036-08-25',now());  


-- ---------------------------------------------------------
-- 视频监控列表：
CREATE TABLE IF NOT EXISTS T_DZ_Video (
projectId varchar(20) COMMENT '项目编号ID',
videoId	varchar(10) COMMENT '摄像头编号ID',
videoType varchar(10) COMMENT '摄像头类型（枪机、半球、球机、其它）',
videoLinkNow varchar(128) COMMENT '摄像头网络直播地址',
videoLinkHistory varchar(128) COMMENT '摄像头网络回放地址',
videoAddress varchar(64) COMMENT '摄像头物理位置',
posLng varchar(16) COMMENT '位置经度',
posLat varchar(16) COMMENT '位置纬度',
videoStatus varchar(1) COMMENT '在离线状态（在线，离线）',
updateTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
primary key(projectId,videoId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='视频监控列表';


INSERT INTO T_DZ_Video VALUES ('500001','1','1','http://mini.eastday.com/mobile/190624021859491.html#',
'http://mini.eastday.com/mobile/190624021859491.html#','施工大门左侧','106.5109062195','29.6274138557','1',now()); 
INSERT INTO T_DZ_Video VALUES ('500001','2','1','http://mini.eastday.com/mobile/190624021859491.html#',
'http://mini.eastday.com/mobile/190624021859491.html#','施工大门左侧','106.5109062195','29.6274138557','1',now()); 
INSERT INTO T_DZ_Video VALUES ('500001','3','1','http://mini.eastday.com/mobile/190624021859491.html#',
'http://mini.eastday.com/mobile/190624021859491.html#','施工大门左侧','106.5109062195','29.6274138557','1',now());
INSERT INTO T_DZ_Video VALUES ('500001','4','1','http://mini.eastday.com/mobile/190624021859491.html#',
'http://mini.eastday.com/mobile/190624021859491.html#','施工大门左侧','106.5109062195','29.6274138557','1',now());
INSERT INTO T_DZ_Video VALUES ('500001','5','1','http://mini.eastday.com/mobile/190624021859491.html#',
'http://mini.eastday.com/mobile/190624021859491.html#','施工大门左侧','106.5109062195','29.6274138557','1',now());
INSERT INTO T_DZ_Video VALUES ('500001','6','1','http://mini.eastday.com/mobile/190624021859491.html#',
'http://mini.eastday.com/mobile/190624021859491.html#','施工大门左侧','106.5109062195','29.6274138557','1',now());
INSERT INTO T_DZ_Video VALUES ('500001','7','1','http://mini.eastday.com/mobile/190624021859491.html#',
'http://mini.eastday.com/mobile/190624021859491.html#','施工大门左侧','106.5109062195','29.6274138557','1',now());
INSERT INTO T_DZ_Video VALUES ('500001','8','1','http://mini.eastday.com/mobile/190624021859491.html#',
'http://mini.eastday.com/mobile/190624021859491.html#','施工大门左侧','106.5109062195','29.6274138557','1',now());
INSERT INTO T_DZ_Video VALUES ('500001','9','1','http://mini.eastday.com/mobile/190624021859491.html#',
'http://mini.eastday.com/mobile/190624021859491.html#','施工大门左侧','106.5109062195','29.6274138557','1',now());
INSERT INTO T_DZ_Video VALUES ('500001','10','1','http://mini.eastday.com/mobile/190624021859491.html#',
'http://mini.eastday.com/mobile/190624021859491.html#','施工大门左侧','106.5109062195','29.6274138557','1',now());
INSERT INTO T_DZ_Video VALUES ('500001','11','1','http://mini.eastday.com/mobile/190624021859491.html#',
'http://mini.eastday.com/mobile/190624021859491.html#','施工大门左侧','106.5109062195','29.6274138557','1',now());
INSERT INTO T_DZ_Video VALUES ('500001','12','1','http://mini.eastday.com/mobile/190624021859491.html#',
'http://mini.eastday.com/mobile/190624021859491.html#','施工大门左侧','106.5109062195','29.6274138557','1',now());
INSERT INTO T_DZ_Video VALUES ('500001','13','1','http://mini.eastday.com/mobile/190624021859491.html#',
'http://mini.eastday.com/mobile/190624021859491.html#','施工大门左侧','106.5109062195','29.6274138557','1',now());
INSERT INTO T_DZ_Video VALUES ('500001','14','1','http://mini.eastday.com/mobile/190624021859491.html#',
'http://mini.eastday.com/mobile/190624021859491.html#','施工大门左侧','106.5109062195','29.6274138557','1',now());
INSERT INTO T_DZ_Video VALUES ('500001','15','1','http://mini.eastday.com/mobile/190624021859491.html#',
'http://mini.eastday.com/mobile/190624021859491.html#','施工大门左侧','106.5109062195','29.6274138557','1',now());
INSERT INTO T_DZ_Video VALUES ('500001','16','1','http://mini.eastday.com/mobile/190624021859491.html#',
'http://mini.eastday.com/mobile/190624021859491.html#','施工大门左侧','106.5109062195','29.6274138557','1',now());


-- ---------------------------------------------------------
-- 考勤信息列表：
CREATE TABLE IF NOT EXISTS T_DZ_Sign (
recordId INT(20) NOT NULL AUTO_INCREMENT COMMENT '序列号',
projectId varchar(20) COMMENT '项目编号ID',
personId varchar(20) COMMENT '员工编号ID（预录入根据员工表录入信息）',
deviceId varchar(3) COMMENT '设备编号ID',
signTime timestamp COMMENT '签到/签退时间',
signStatus varchar(1)	COMMENT '签到/签退状态',
updateTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
primary key(recordId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考勤信息列表';


INSERT INTO T_DZ_Sign VALUES (null,'500001','2019091801','101','2019-09-18 18:25:40','0',now()); 
INSERT INTO T_DZ_Sign VALUES (null,'500001','2019091802','101','2019-09-18 18:25:40','0',now()); 
INSERT INTO T_DZ_Sign VALUES (null,'500001','2019091803','102','2019-09-18 18:25:40','0',now()); 
INSERT INTO T_DZ_Sign VALUES (null,'500001','2019091804','102','2019-09-18 18:25:40','0',now()); 
INSERT INTO T_DZ_Sign VALUES (null,'500001','2019091805','101','2019-09-18 18:25:40','0',now()); 
INSERT INTO T_DZ_Sign VALUES (null,'500001','2019091806','101','2019-09-18 18:25:40','0',now()); 
INSERT INTO T_DZ_Sign VALUES (null,'500001','2019091807','102','2019-09-18 18:25:40','0',now()); 
INSERT INTO T_DZ_Sign VALUES (null,'500001','2019091808','102','2019-09-18 18:25:40','0',now()); 
INSERT INTO T_DZ_Sign VALUES (null,'500001','2019091809','101','2019-09-18 18:25:40','0',now()); 
INSERT INTO T_DZ_Sign VALUES (null,'500001','2019091810','101','2019-09-18 18:25:40','0',now()); 
INSERT INTO T_DZ_Sign VALUES (null,'500001','2019091811','102','2019-09-18 18:25:40','0',now()); 
INSERT INTO T_DZ_Sign VALUES (null,'500001','2019091812','102','2019-09-18 18:25:40','0',now()); 
INSERT INTO T_DZ_Sign VALUES (null,'500001','2019091813','101','2019-09-18 18:25:40','0',now()); 
INSERT INTO T_DZ_Sign VALUES (null,'500001','2019091814','101','2019-09-18 18:25:40','0',now()); 
INSERT INTO T_DZ_Sign VALUES (null,'500001','2019091815','102','2019-09-18 18:25:40','0',now()); 
INSERT INTO T_DZ_Sign VALUES (null,'500001','2019091816','102','2019-09-18 18:25:40','0',now()); 
INSERT INTO T_DZ_Sign VALUES (null,'500002','2019091801','101','2019-09-18 18:25:40','0',now()); 
INSERT INTO T_DZ_Sign VALUES (null,'500002','2019091802','101','2019-09-18 18:25:40','0',now()); 
INSERT INTO T_DZ_Sign VALUES (null,'500002','2019091803','102','2019-09-18 18:25:40','0',now()); 
INSERT INTO T_DZ_Sign VALUES (null,'500001','2019091801','102','2019-09-18 18:25:40','0',now()); 


-- ---------------------------------------------------------
-- 薪资信息列表：
CREATE TABLE IF NOT EXISTS T_DZ_Salary (
recordId INT(20) AUTO_INCREMENT COMMENT '序列号',
projectId varchar(20) COMMENT '项目编号ID',
personId varchar(20) COMMENT '员工ID',
workBeginDate Date COMMENT '工作起始日期',
workEndDate Date COMMENT '工作结束日期',
workUnit varchar(10) COMMENT '工时计量单位',
salary varchar(20) COMMENT '工资发放总额/交易金额',
salaryUnit varchar(1) COMMENT '工资计量单位（人民币、美元……）',
salarySource varchar(36) COMMENT '工资发放单位（个人，公司）',
salaryGrant varchar(36) COMMENT '工资代发单位（公司，**银行）',
salaryProvide varchar(1) COMMENT '工资发放方式（现金，转账）',
salarySelfAccount varchar(20) COMMENT '工资接收账户（员工个人账户）',
salaryCompanyAccount varchar(20) COMMENT '工资发放账户（公司财务账户）',
salaryBank varchar(20) COMMENT '工资发放账户开户行',
salaryManager varchar(10) COMMENT '工资发放人',
salaryReviewer varchar(10) COMMENT '工资审核人',
transType varchar(1) COMMENT '资金交易类型（支出、收入）',
transBalance varchar(20) COMMENT '资金余额（公司财务账户）',
salaryOutTime Date COMMENT '工资发放时间',
remarks varchar(300) COMMENT '摘要备注',
days varchar(4) COMMENT '出勤天数',
workHours	varchar(8) COMMENT '总工时',
payRollBankCode	varchar(4) COMMENT '工人工资卡银行代码',
payRollBankName	varchar(36) COMMENT '工人工资卡开户行名称',
payBankCode	varchar(4) COMMENT '工资代发银行代码',
totalPayAmount varchar(20) COMMENT '应发金额',
isBackPay	varchar(1) COMMENT '是否是补发',
thirdPayRollCode varchar(50) COMMENT '第三方工资单编号',
updateTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
primary key(recordId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='薪资信息列表';


INSERT INTO T_DZ_Salary VALUES (null,'500001','2019091801','2019-09-18','2019-09-23','5','1560','1','中冶建工','中国建设银行',
'1','123456789987654321','112233445566778899','中国银行沙坪坝支行','张经理','王财务','0','56258890','2019-09-18','绝不拖欠农民工工资','130','1652','6106','建设银行沙坪坝支行','6106','1560','0','201910122365555555689',now()); 
INSERT INTO T_DZ_Salary VALUES (null,'500001','2019091802','2019-09-18','2019-09-23','5','1560','1','中冶建工','中国建设银行',
'1','123456789987654321','112233445566778899','中国银行沙坪坝支行','张经理','王财务','0','56258890','2019-09-18','绝不拖欠农民工工资','130','1652','6106','建设银行沙坪坝支行','6106','1560','0','201910122365555555689',now()); 
INSERT INTO T_DZ_Salary VALUES (null,'500001','2019091803','2019-09-18','2019-09-23','5','1560','1','中冶建工','中国建设银行',
'1','123456789987654321','112233445566778899','中国银行沙坪坝支行','张经理','王财务','0','56258890','2019-09-18','绝不拖欠农民工工资','130','1652','6106','建设银行沙坪坝支行','6106','1560','0','201910122365555555689',now()); 
INSERT INTO T_DZ_Salary VALUES (null,'500001','2019091804','2019-09-18','2019-09-23','5','1560','1','中冶建工','中国建设银行',
'1','123456789987654321','112233445566778899','中国银行沙坪坝支行','张经理','王财务','0','56258890','2019-09-18','绝不拖欠农民工工资','130','1652','6106','建设银行沙坪坝支行','6106','1560','0','201910122365555555689',now()); 
INSERT INTO T_DZ_Salary VALUES (null,'500001','2019091805','2019-09-18','2019-09-23','5','1560','1','中冶建工','中国建设银行',
'1','123456789987654321','112233445566778899','中国银行沙坪坝支行','张经理','王财务','0','56258890','2019-09-18','绝不拖欠农民工工资','130','1652','6106','建设银行沙坪坝支行','6106','1560','0','201910122365555555689',now()); 


-- ---------------------------------------------------------
-- 大型设备管理（起重机械）列表：
CREATE TABLE IF NOT EXISTS T_DZ_Device(
projectId varchar(20) COMMENT '项目编号ID',
deviceId varchar(3) COMMENT '设备编号ID/备案编号',
deviceType varchar(10) COMMENT '设备类型（塔式起重机……）',
specifications varchar(12) COMMENT '规格型号',
productDate Date COMMENT '出厂日期',
recordDate Date COMMENT '备案日期',
mainParameter varchar(36) COMMENT '主要参数',
propertyRight varchar(36) COMMENT '产权单位',
propertyRightLicense varchar(36) COMMENT '产权许可证',
installUnit varchar(36) COMMENT '安装单位',
installLicense varchar(36) COMMENT '安装单位资质',
manufacturer varchar(36) COMMENT '制造厂家',
ManuLicense varchar(36) COMMENT '制造许可证',
devcieSn varchar(36) COMMENT '设备流水号（SN）',
deviceLife varchar(2) COMMENT '设备寿命（单位：年）',
enterDate Date COMMENT '进场日期',
installDate Date COMMENT '安装日期',
installDays varchar(3) COMMENT '安装耗时（单位：天）',
blackBoxStatus varchar(1) COMMENT '黑匣子状态（已装、未装）',
updateTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
primary key(projectId,deviceId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='大型设备管理（起重机械）列表';


INSERT INTO T_DZ_Device VALUES ('500001','101','塔式起重机','X05asa51601','2014-09-18','2014-09-20',
'jdfhadjfhkah','重庆好又来物资租赁有限公司','sfsdjhj','重庆特种装备安装工程有限公司','有这个资质','广州新月装备制造厂','sfadfa25545',
'4a5454487a56546878','20','2019-08-23','2019-09-08','35','1',now()); 
INSERT INTO T_DZ_Device VALUES ('500001','102','塔式起重机','X05asa51601','2014-09-18','2014-09-20',
'jdfhadjfhkah','重庆好又来物资租赁有限公司','sfsdjhj','重庆特种装备安装工程有限公司','有这个资质','广州新月装备制造厂','sfadfa25545',
'4a5454487a56546878','20','2019-08-23','2019-09-08','35','1',now()); 
INSERT INTO T_DZ_Device VALUES ('500001','103','塔式起重机','X05asa51601','2014-09-18','2014-09-20',
'jdfhadjfhkah','重庆好又来物资租赁有限公司','sfsdjhj','重庆特种装备安装工程有限公司','有这个资质','广州新月装备制造厂','sfadfa25545',
'4a5454487a56546878','20','2019-08-23','2019-09-08','35','1',now()); 
INSERT INTO T_DZ_Device VALUES ('500001','104','塔式起重机','X05asa51601','2014-09-18','2014-09-20',
'jdfhadjfhkah','重庆好又来物资租赁有限公司','sfsdjhj','重庆特种装备安装工程有限公司','有这个资质','广州新月装备制造厂','sfadfa25545',
'4a5454487a56546878','20','2019-08-23','2019-09-08','35','1',now()); 
INSERT INTO T_DZ_Device VALUES ('500001','105','塔式起重机','X05asa51601','2014-09-18','2014-09-20',
'jdfhadjfhkah','重庆好又来物资租赁有限公司','sfsdjhj','重庆特种装备安装工程有限公司','有这个资质','广州新月装备制造厂','sfadfa25545',
'4a5454487a56546878','20','2019-08-23','2019-09-08','35','1',now()); 


-- ---------------------------------------------------------
-- 起重机械实时信息列表：
CREATE TABLE IF NOT EXISTS T_DZ_TaDiaoDevice(
recordId INT(20) AUTO_INCREMENT COMMENT '序列号',
projectId varchar(20) COMMENT '项目编号ID',
deviceId varchar(3) COMMENT '设备编号ID/备案编号',
deviceStatus varchar(1) COMMENT '设备状态（在线、离线）',
deviceLoad varchar(10) COMMENT '负荷量（起重量，单位：Kg）',
deviceSafeLoad varchar(10)	COMMENT '安全载重（单位：Kg）',
deviceLoadRate varchar(6) COMMENT '负载率（示例：90%）',
deviceRange varchar(6) COMMENT '小车幅度（单位：°（单位：°,示例：165.36°））',
deviceAngle	varchar(6) COMMENT '塔臂转角（单位：°,示例：85.30°）',
dataSampleTime timestamp COMMENT '数据采集时间',
updateTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
primary key(recordId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='起重机械实时信息列表';


INSERT INTO T_DZ_TaDiaoDevice VALUES (1,'500001','101','1','20000','50000','75.6','165.36','85.30','2019-10-05 18:50:23',now()); 
INSERT INTO T_DZ_TaDiaoDevice VALUES (2,'500001','102','1','20000','50000','75.6','165.36','85.30','2019-10-05 18:50:23',now()); 
INSERT INTO T_DZ_TaDiaoDevice VALUES (3,'500001','103','1','20000','50000','75.6','165.36','85.30','2019-10-05 18:50:23',now()); 
INSERT INTO T_DZ_TaDiaoDevice VALUES (4,'500001','104','1','20000','50000','75.6','165.36','85.30','2019-10-05 18:50:23',now()); 
INSERT INTO T_DZ_TaDiaoDevice VALUES (5,'500001','105','1','20000','50000','75.6','165.36','85.30','2019-10-05 18:50:23',now()); 


-- ---------------------------------------------------------
-- 环境信息列表：
CREATE TABLE IF NOT EXISTS T_DZ_Environment(
recordId INT(20) AUTO_INCREMENT COMMENT '序列号',
projectId varchar(20) COMMENT '项目编号ID',
deviceId varchar(3) COMMENT '设备编号ID',
guangZhao varchar(10) COMMENT '光照（单位：LUX）',
wenDu varchar(10) COMMENT '温度（单位：℃）',
shiDu varchar(10) COMMENT '湿度（单位：%RH）',
fengSu varchar(10) COMMENT '风速（单位：m/s）',
fengXiang varchar(10) COMMENT '风向（单位：东南西北）',
fengLi varchar(10) COMMENT '风力（单位：级）',
qiYa varchar(10) COMMENT '大气压（单位：kPa）',
co2 varchar(10) COMMENT '二氧化碳/CO2（单位：ppm）',
fenChen1 varchar(10) COMMENT 'PM2.5 粉尘（单位：ug/m3）',
fenChen2 varchar(10) COMMENT 'PM10 粉尘（单位：ug/m3）',
zaoSheng varchar(10) COMMENT '噪声（单位：db）',
yuShui varchar(10) COMMENT '雨量（单位：mm）',
soilWenDu varchar(10) COMMENT '土壤温度',
soilShiDu varchar(10) COMMENT '土壤湿度',
updateTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
primary key(recordId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='环境信息列表';


INSERT INTO T_DZ_Environment VALUES (1,'500001','101','545','32','545','12','西南风','5','200','578','21324','342','68','26','15','36',now()); 
INSERT INTO T_DZ_Environment VALUES (2,'500001','102','545','32','545','12','西南风','5','200','578','21324','342','68','26','15','36',now()); 
INSERT INTO T_DZ_Environment VALUES (3,'500001','101','545','32','545','12','西南风','5','200','578','21324','342','68','26','15','36',now()); 
INSERT INTO T_DZ_Environment VALUES (4,'500001','102','545','32','545','12','西南风','5','200','578','21324','342','68','26','15','36',now()); 
INSERT INTO T_DZ_Environment VALUES (5,'500001','101','545','32','545','12','西南风','5','200','578','21324','342','68','26','15','36',now()); 
INSERT INTO T_DZ_Environment VALUES (6,'500001','102','545','32','545','12','西南风','5','200','578','21324','342','68','26','15','36',now()); 
INSERT INTO T_DZ_Environment VALUES (7,'500001','101','545','32','545','12','西南风','5','200','578','21324','342','68','26','15','36',now()); 
INSERT INTO T_DZ_Environment VALUES (8,'500001','102','545','32','545','12','西南风','5','200','578','21324','342','68','26','15','36',now()); 
INSERT INTO T_DZ_Environment VALUES (9,'500001','101','545','32','545','12','西南风','5','200','578','21324','342','68','26','15','36',now()); 
INSERT INTO T_DZ_Environment VALUES (10,'500001','102','545','32','545','12','西南风','5','200','578','21324','342','68','26','15','36',now()); 
INSERT INTO T_DZ_Environment VALUES (11,'500001','101','545','32','545','12','西南风','5','200','578','21324','342','68','26','15','36',now()); 
INSERT INTO T_DZ_Environment VALUES (12,'500001','102','545','32','545','12','西南风','5','200','578','21324','342','68','26','15','36',now()); 
INSERT INTO T_DZ_Environment VALUES (13,'500001','101','545','32','545','12','西南风','5','200','578','21324','342','68','26','15','36',now()); 
INSERT INTO T_DZ_Environment VALUES (14,'500001','102','545','32','545','12','西南风','5','200','578','21324','342','68','26','15','36',now()); 
INSERT INTO T_DZ_Environment VALUES (15,'500001','101','545','32','545','12','西南风','5','200','578','21324','342','68','26','15','36',now()); 
INSERT INTO T_DZ_Environment VALUES (16,'500001','102','545','32','545','12','西南风','5','200','578','21324','342','68','26','15','36',now()); 
INSERT INTO T_DZ_Environment VALUES (17,'500001','102','545','32','545','12','西南风','5','200','578','21324','342','68','26','15','36',now()); 
INSERT INTO T_DZ_Environment VALUES (18,'500001','102','545','32','545','12','西南风','5','200','578','21324','342','68','26','15','36',now()); 

-- ---------------------------------------------------------
-- 危大工程列表：
CREATE TABLE IF NOT EXISTS T_DZ_DangerProject(
recordId INT(20) NOT NULL AUTO_INCREMENT COMMENT '序列号',
projectId varchar(20) COMMENT '项目编号ID',
dangerLevel varchar(1) COMMENT '危大等级（超规、未超规）',
dangerTitle varchar(36) COMMENT '分部分项',
dangerStatus varchar(1) COMMENT '危大状态（施工监管……）',
remarks	varchar(300) COMMENT '摘要备注',
updateTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
primary key(recordId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='危大工程列表';


INSERT INTO T_DZ_DangerProject VALUES (null,'500001','3','空调设备吊装工程','2','还没有写',now()); 


-- ---------------------------------------------------------
-- 隐患检排信息列表
CREATE TABLE IF NOT EXISTS T_DZ_HiddenDanger(
recordId INT(20) NOT NULL AUTO_INCREMENT COMMENT '序列号',
projectId varchar(20) COMMENT '项目编号ID',
dangerTitle varchar(36) COMMENT '隐患部位（主体结构，外墙，脚手架……）',
recordRemarks varchar(300) COMMENT '隐患可能存在的问题',
recordPerson varchar(10) COMMENT '隐患记录人',
recordDate Date COMMENT '隐患记录日期',
checkDate Date COMMENT '隐患检排日期',
checkStatus varchar(1) COMMENT '隐患检排状态（待检、已检）',
checkPerson varchar(10) COMMENT '隐患检排人',
checkRemarks varchar(300) COMMENT '隐患检排摘要内容/详情',
updateTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
primary key(recordId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='隐患检排信息列表';


INSERT INTO T_DZ_HiddenDanger VALUES (null,'500001','基层沉重柱','深度不够','张工','2019-09-27','2019-09-30','0','吴工','小问题小问题',now()); 


-- ---------------------------------------------------------
-- 检验检测列表
CREATE TABLE IF NOT EXISTS T_DZ_Check(
recordId INT(20) NOT NULL AUTO_INCREMENT COMMENT '序列号',
projectId varchar(20) COMMENT '项目编号ID',
checkType varchar(36) COMMENT '检验检测类别',
checkOptions varchar(300) COMMENT '检验检测结构部位',
checkResult	varchar(36) COMMENT '检验检测结果',
checkDate Date COMMENT '检验检测日期',
checkCompany varchar(36) COMMENT '检验检测机构名称',
remarks varchar(300) COMMENT '摘要备注',
updateTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
primary key(recordId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='检验检测列表';


INSERT INTO T_DZ_Check VALUES (null,'500001','外墙玻璃','主大楼三楼外墙','合格','2019-09-27','重庆大智汇物科技有限公司','操作良好',now()); 


-- ---------------------------------------------------------
-- 监理报告列表
CREATE TABLE IF NOT EXISTS T_DZ_SupervisorReport(
recordId INT(20) NOT NULL AUTO_INCREMENT COMMENT '序列号',
projectId varchar(20) COMMENT '项目编号ID',
reportTitle	varchar(36) COMMENT '报告名称',
reportAuthor varchar(36) COMMENT '报告编制人员',
reportDate Date COMMENT '报告时间(2019-10-08)',
reportStatus varchar(1) COMMENT '报告状态（紧急、非紧急）',
reportLink varchar(128) COMMENT '报告链接',
reportRange	varchar(10) COMMENT '发报区间（年度/月度/半月度）(2019-10)',
reportPhase	varchar(2) COMMENT '期数（第1期/第2期……）',
monthOutput varchar(10) COMMENT '本月确认完工产值（万元）',
projectProgress	varchar(10) COMMENT '工程完成进度（%）',
supervisor varchar(10) COMMENT '监督员姓名',
chiefSupervisor varchar(10) COMMENT '总监理工程师姓名',
reportContent text COMMENT '专报内容',
updateTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
primary key(recordId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='监理报告列表';


INSERT INTO T_DZ_SupervisorReport VALUES (null,'500001','关于9.25日地面施工检查情况报告','王小帅1','2019-09-27','1','http://','2019-09','1','2050','86.54','阿中','唐总监','这是一份冗长的监理报告…………',now()); 
INSERT INTO T_DZ_SupervisorReport VALUES (null,'500001','关于10.1日地面施工检查情况报告','王小帅2','2019-09-27','1','http://','2019-09','1','2050','86.54','阿中','唐总监','这是一份冗长的监理报告…………',now()); 
INSERT INTO T_DZ_SupervisorReport VALUES (null,'500001','关于10.2日地面施工检查情况报告','王小帅3','2019-09-27','1','http://','2019-09','1','2050','86.54','阿中','唐总监','这是一份冗长的监理报告…………',now()); 
INSERT INTO T_DZ_SupervisorReport VALUES (null,'500001','关于10.3日地面施工检查情况报告','王小帅4','2019-09-27','1','http://','2019-09','1','2050','86.54','阿中','唐总监','这是一份冗长的监理报告…………',now()); 
INSERT INTO T_DZ_SupervisorReport VALUES (null,'500001','关于10.4日地面施工检查情况报告','王小帅4','2019-09-27','1','http://','2019-09','1','2050','86.54','阿中','唐总监','这是一份冗长的监理报告…………',now()); 
INSERT INTO T_DZ_SupervisorReport VALUES (null,'500002','关于10.4日地面施工检查情况报告','王小帅0','2019-09-27','1','http://','2019-09','1','2050','86.54','阿中','唐总监','这是一份冗长的监理报告…………',now()); 


-- ---------------------------------------------------------
-- 预警信息列表：
CREATE TABLE IF NOT EXISTS T_DZ_Warn(
recordId INT(20) NOT NULL AUTO_INCREMENT COMMENT '序列号',
projectId varchar(20) COMMENT '项目编号ID',
warnTime timestamp COMMENT '预警时间',
warnLevel varchar(1) COMMENT '预警等级（红、黄、蓝）',
warnTitle varchar(10) COMMENT '预警标题',
warnContent varchar(300) COMMENT '预警内容',
remarks varchar(300) COMMENT '摘要备注',
warnStatus varchar(1) COMMENT '预警状态（待处理、正在处理、处理完毕）',
updateTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
primary key(recordId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='预警信息列表';


INSERT INTO T_DZ_Warn VALUES (null,'500001','2019-09-27 18:45:52','1','PM10超标','注意施工,请加湿','没得啥子好说的','0',now()); 


-- ---------------------------------------------------------
-- 建材管理列表：
CREATE TABLE IF NOT EXISTS T_DZ_Material(
recordId INT(20) NOT NULL AUTO_INCREMENT COMMENT '序列号',
projectId varchar(20) COMMENT '项目编号ID',
materialType varchar(10) COMMENT '建材类别（水泥、砂石、混凝土、钢筋……）',
projectUse varchar(10) COMMENT '工程部位（基层、主体结构……）',
strengthLevel varchar(1) COMMENT '强度等级（合格、中、高、很高）',
mixer varchar(36) COMMENT '搅拌站（针对混凝土有效）',
supplyCompany varchar(36) COMMENT '供应公司',
supplyCompanyTel varchar(11) COMMENT '供应公司联系电话',
supplyCount varchar(10) COMMENT '供应量（单位：吨）',
supplyCarNum varchar(10) COMMENT '供应车次（单位：次/车）',
supplyDate Date COMMENT '供应日期',
productionDate Date COMMENT '生产日期',
validityDate Date COMMENT '保质期',
certificate varchar(128) COMMENT '合格证明（文件路径）',
remarks	varchar(300) COMMENT '摘要备注',
updateTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
primary key(recordId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='建材管理列表';


INSERT INTO T_DZ_Material VALUES (null,'500001','混凝土','主体结构','2','悦来房产建设搅拌站','重庆喜之来房产有限公司',
'12345678921','5000','100','2019-09-26','2019-03-26','2020-03-26','C:\Users\Administrator\Desktop\\','无',now()); 


-- ---------------------------------------------------------
-- 建材管理检验报告列表：
CREATE TABLE IF NOT EXISTS T_DZ_MaterialReport(
recordId INT(10) NOT NULL AUTO_INCREMENT COMMENT '序列号',
projectId varchar(20) COMMENT '项目编号ID',
materialType varchar(10) COMMENT '建材类别（水泥、砂石、混凝土、钢筋……）',
projectUse varchar(10) COMMENT '工程部位（基层、主体结构……）',
idealLevel varchar(1) COMMENT '设计强度/抗压/抗渗等级（合格、中、高、很高）',
realLevel varchar(1) COMMENT '实际强度/抗压/抗渗等级（合格、中、高、很高）',
strengthGap	varchar(1) COMMENT '强度偏差',
checkCompany varchar(36) COMMENT '检验机构',
supplyCompany varchar(36) COMMENT '供应商',
checkWay varchar(1) COMMENT '检验方式（统计方法、非统计方法）',
checkResult varchar(300) COMMENT '检验结论（达/未达到标准、合格、不合格等）',
checkDate Date COMMENT '检验日期',
remarks	varchar(300) COMMENT '摘要备注/详情',
updateTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
primary key(recordId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='建材管理检验报告列表';


INSERT INTO T_DZ_MaterialReport VALUES (null,'500001','混凝土','基坑','1','1','0','重庆777检测有限公司','重庆礼嘉石材厂',
'1','达到标准','2019-09-27','无',now()); 


-- ---------------------------------------------------------
-- 质量验收列表（预留）：
CREATE TABLE IF NOT EXISTS T_DZ_QualityAccept(
recordId INT(10) NOT NULL AUTO_INCREMENT COMMENT '序列号',
projectId varchar(20) COMMENT '项目编号ID',
docName varchar(36)	COMMENT '文档名称',
docNum varchar(16)	COMMENT '文档编号',
docType varchar(64)	COMMENT '文档类别（观感质量检查记录、质量验收记录、安全和功能检验资料核查和主要功能抽查记录、质量控制质量核查记录）',
docRange varchar(36) COMMENT '分部档案（地基与基础、主体结构、建筑节能、竣工验收）',
docDate Date COMMENT '记录时间/发布时间',
docLink	varchar(128) COMMENT '文档地址（链接）',
updateTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
primary key(recordId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='质量验收列表';


INSERT INTO T_DZ_QualityAccept VALUES (null,'500001','水电工程验收1','DZ-10 01','安全和功能检验资料核查和主要功能抽查记录','建筑节能','2019-09-27','http://???????????',now()); 
INSERT INTO T_DZ_QualityAccept VALUES (null,'500001','水电工程验收2','DZ-10 01','安全和功能检验资料核查和主要功能抽查记录','建筑节能','2019-09-27','http://???????????',now()); 
INSERT INTO T_DZ_QualityAccept VALUES (null,'500001','水电工程验收3','DZ-10 01','安全和功能检验资料核查和主要功能抽查记录','建筑节能','2019-09-27','http://???????????',now()); 
INSERT INTO T_DZ_QualityAccept VALUES (null,'500001','水电工程验收4','DZ-10 01','安全和功能检验资料核查和主要功能抽查记录','建筑节能','2019-09-27','http://???????????',now()); 
INSERT INTO T_DZ_QualityAccept VALUES (null,'500001','水电工程验收5','DZ-10 01','安全和功能检验资料核查和主要功能抽查记录','建筑节能','2019-09-27','http://???????????',now()); 
INSERT INTO T_DZ_QualityAccept VALUES (null,'500001','水电工程验收6','DZ-10 01','安全和功能检验资料核查和主要功能抽查记录','建筑节能','2019-09-27','http://???????????',now()); 


-- ---------------------------------------------------------
-- 通知公告信息列表：
CREATE TABLE IF NOT EXISTS T_DZ_Notice(
recordId INT(10) NOT NULL AUTO_INCREMENT COMMENT '序列号',
projectId varchar(20) COMMENT '项目编号ID（通知公告归属哪个项目）',
noticeName varchar(36) COMMENT '通知/公告名称',
noticeRemarks	varchar(300) COMMENT '通知/公告摘要备注',
noticeLink varchar(128) COMMENT '通知/公告链接',
noticeSrc varchar(36) COMMENT '通知/公告发布来源/单位',
noticeDate timestamp COMMENT '通知/公告发布日期',
updateTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
primary key(recordId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知公告信息列表';


INSERT INTO T_DZ_Notice VALUES (null,'500001','9.25停电','不听话，给你停电三天','https://www.baidu.com/?tn=25017023_10_dg','渝北区供电局','2019-09-27',now()); 
INSERT INTO T_DZ_Notice VALUES (null,'500001','国庆放假','不听话，给你停电三天','https://www.baidu.com/?tn=25017023_10_dg','渝北区住建部','2019-09-27',now()); 
INSERT INTO T_DZ_Notice VALUES (null,'500001','10.8停水','不听话，给你停电三天','https://www.baidu.com/?tn=25017023_10_dg','渝北区公水利局','2019-10-07',now()); 
INSERT INTO T_DZ_Notice VALUES (null,'500001','关于……的通知','不听话，给你停电三天','https://www.baidu.com/?tn=25017023_10_dg','渝北区住建部','2019-10-07',now()); 
INSERT INTO T_DZ_Notice VALUES (null,'500001','10.12工地大检查','不听话，给你停电三天','https://www.baidu.com/?tn=25017023_10_dg','渝北区住建部','2019-10-07',now()); 
INSERT INTO T_DZ_Notice VALUES (null,'500001','关于落实农民工……','不听话，给你停电三天','https://www.baidu.com/?tn=25017023_10_dg','渝北区住建部','2019-10-07',now()); 
INSERT INTO T_DZ_Notice VALUES (null,'500001','关于建立工地实名制……','不听话，给你停电三天','https://www.baidu.com/?tn=25017023_10_dg','渝北区房管局','2019-10-07',now()); 
INSERT INTO T_DZ_Notice VALUES (null,'500001','关于不忘初心，牢记使命的主题学习通知','不听话，给你停电三天','https://www.baidu.com/?tn=25017023_10_dg','渝北区社区党建','2019-10-09',now()); 


-- ---------------------------------------------------------
-- 系统信息列表：
CREATE TABLE IF NOT EXISTS T_DZ_SysInfo(
softVersion varchar(10) COMMENT '版本号',
techCompany varchar(36) COMMENT '技术开发公司/单位',
techTelNum varchar(11) COMMENT '技术支持电话',
techEmail varchar(30) COMMENT '技术支持邮箱',
softCopyright varchar(36) COMMENT '版权所有方',
updateTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
primary key(softVersion)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统信息列表';


INSERT INTO T_DZ_SysInfo VALUES ('V1.2','重庆大智汇物科技有限公司','15923504077','568373032@qq.com','重庆大智汇物科技有限公司',now()); 
INSERT INTO T_DZ_SysInfo VALUES ('V1.3','重庆大智汇物科技有限公司','15923504077','568373032@qq.com','重庆大智汇物科技有限公司',now()); 
INSERT INTO T_DZ_SysInfo VALUES ('V1.4','重庆大智汇物科技有限公司','15923504077','568373032@qq.com','重庆大智汇物科技有限公司',now()); 


-- ---------------------------------------------------------
-- 巡检点信息列表：
CREATE TABLE IF NOT EXISTS T_DZ_ExaminePoint(
projectId	varchar(20)	COMMENT '项目编号ID',
placeId	varchar(3) COMMENT '巡检点编号',
placeAddress varchar(36) COMMENT '巡检点位置',
posLng varchar(16) COMMENT '巡检点位置经度',
posLat varchar(16) COMMENT '巡检点位置纬度',
updateTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
primary key(projectId,placeId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='巡检点信息列表';


-- ---------------------------------------------------------
-- 巡检点-巡检签到信息列表：
CREATE TABLE IF NOT EXISTS T_DZ_ExamineSign(
recordId INT(20)  NOT NULL AUTO_INCREMENT COMMENT '序列号',
personId varchar(20) COMMENT '巡检人员ID',
projectId	varchar(20) COMMENT '项目编号ID',
placeId	varchar(3) COMMENT '巡检点编号',
examineImage varchar(128) COMMENT '巡检情况图片',
examineFile	varchar(128) COMMENT '巡检情况文件',
examineTitle varchar(36) COMMENT '巡检主题',
examineText	varchar(300) COMMENT '巡检内容详情',
examineRemarks varchar(300) COMMENT '巡检备注',
signInTime timestamp COMMENT '签到时间',
updateTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
primary key(recordId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='巡检点-巡检签到信息列表';


-- ---------------------------------------------------------
-- 一期二期 sql - over

