#vue_app_server/db.sql
#1:进入库  wx
USE wx;
#2:创建表 wx_home
#技巧1:库名;表名;列表;全英文小写字母
CREATE TABLE wx_home(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  foot VARCHAR(255),
  img_1 VARCHAR(255),
  title VARCHAR(255),
  middle VARCHAR(255),
  good INT,
  good_day  VARCHAR(255),
  img_2 VARCHAR(255)
);
INSERT INTO wx_home VALUES(1,"http://127.0.0.1:3000/img/logo1.jpg","语文组","http://127.0.0.1:3000/img/act1.jpg","[学校新闻] 我校四项青少年科技活动","青少年活动基地",219,"2018/10/16","http://127.0.0.1:3000/img/school21.jpg");
INSERT INTO wx_home VALUES(2,"http://127.0.0.1:3000/img/logo2.jpg","数学组","http://127.0.0.1:3000/img/act2.jpg","[通知公告] 少儿舞蹈班、少儿轮滑","舞蹈是一种表演艺术",155,"2018/10/26","http://127.0.0.1:3000/img/school22.jpg");
INSERT INTO wx_home VALUES(3,"http://127.0.0.1:3000/img/logo3.jpg","物理组","http://127.0.0.1:3000/img/act3.jpg","[学校团委] 英语口语大赛结果揭晓","恭喜获奖同学",135,"2018/10/28","http://127.0.0.1:3000/img/school23.jpg");
INSERT INTO wx_home VALUES(4,"http://127.0.0.1:3000/img/logo4.jpg","化学组","http://127.0.0.1:3000/img/act4.jpg","[小学] PEP小学英语六年级","小学六年级英语",193,"2018/11/10","");

CREATE TABLE wx_prifile(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  inform VARCHAR(255)
);

INSERT INTO wx_prifile VALUES(1,"http://127.0.0.1:3000/img/myself.png","个人资料");
INSERT INTO wx_prifile VALUES(2,"http://127.0.0.1:3000/img/school.png","学校简介");
INSERT INTO wx_prifile VALUES(3,"http://127.0.0.1:3000/img/book.png","学科资源");
INSERT INTO wx_prifile VALUES(4,"http://127.0.0.1:3000/img/teacher.png","师资力量");


CREATE TABLE wx_intr(
  iid INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  content VARCHAR(255)
);

INSERT INTO wx_intr VALUES(1,"http://127.0.0.1:3000/img/school1.jpg","某某省某某某某市第一中学坐落在xx中部现代化港口城市--xxxx市的行政中心区，是xx省一级重点中学、xx省文学校、全国绿色学校。新校园位于美丽的太行山南麓，占地面积252流亩，校舍建筑面积90000平方米，投资2.1亿元，拥有省内一流国内领先的现代化教育教学基础设施。");
INSERT INTO wx_intr VALUES(2,"http://127.0.0.1:3000/img/school2.jpg","某某某某市第一中学是一所既有优良办学系统又有开拓创新活力的学校。学校坚持“理性,开放,服务,卓越”的办学理念，坚持校园精细化管理，积极探索教育教学新路子，经过80多年的教育实践，逐步形成了“勤奋,进取,求实,创新”的良好校风，教育事业长足发展，为国家培养了3万余名合格毕业生，为社会主义现代化建设输送了大批优秀人才。学校有中科院院士、xx大学教授徐世浙，xx科学研究所所长、教授级高级工程师xx，计算机科学研究所副所长、博士生导师xx博士，世界体操冠军xx，2009年省理科高考状元xxx等一大批著名校友还为国家培养了近20 名飞行员");
INSERT INTO wx_intr VALUES(3,"http://127.0.0.1:3000/img/school3.jpg","学校现有59个教学班，学生2883人，教职工253人，专任教师206人，中学高级教师117人。其中，省特级教师3人，市级以上名师和省级以上各类优秀教师46人。学校教育理念先进，教学管理严谨，师资力量雄厚，教育质量领先，办学特色鲜明办学声誉远扬，曾荣获“全国体育卫生工作先进集体”等13项国家级荣誉和“xx省教科研先进单位”等17项省级荣誉，“ 崇尚科技,弘扬体艺,倡导环保 ”办学特色日渐鲜明。近年来，学校文化建设内涵不断丰富教育质量稳步提高，高考成绩连年攀升，年年突破，跃居xxxx市前列，一大批优秀学生跨进北大、清华等全国名牌");
INSERT INTO wx_intr VALUES(4,"http://127.0.0.1:3000/img/school4.jpg","目前，全校师生正满怀信心，与时俱进，为把学校办成一所全市领先、省内外有较大影响力、有品位、有特色、有活力、高水平的省以及重点高中而努力奋斗。");

CREATE TABLE wx_news1(
  nid INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  num VARCHAR(255)
);

INSERT INTO wx_news1 VALUES(1,"http://127.0.0.1:3000/img/prifile.jpg","education-102");
INSERT INTO wx_news1 VALUES(2,"http://127.0.0.1:3000/img/eye.jpg","224");
INSERT INTO wx_news1 VALUES(3,"http://127.0.0.1:3000/img/clock.jpg","2018/09/18");

CREATE TABLE wx_news2(
  nid INT PRIMARY KEY AUTO_INCREMENT,
  letter VARCHAR(255)
);

INSERT INTO wx_news2 VALUES(1,"由区青少年科技活动基金管理委员会讨论，决定对2018年度我区青少年科技活动进行奖励（椒科发[2009]22号文件）。在此项奖励活动中，我校四项活动的参与学生各受到200元人民币的奖励。此四项为：");
INSERT INTO wx_news2 VALUES(2,"1.孙X、席XX同学参加的获得省二等奖的省酷儿杯车模比赛（电动汽车）");
INSERT INTO wx_news2 VALUES(3,"2.毛XX同学参加的获得省三等奖的省酷儿杯车模比赛（电动汽车）");
INSERT INTO wx_news2 VALUES(4,"3.黄XX同学参加的获市一等奖的单体别墅模型C型制作竞赛（XX市实验杯第七届青少年模型锦标赛）");
INSERT INTO wx_news2 VALUES(5,"4.陶XX同学参加的获市一等奖的“米奇一号”电动模型飞机（P1E--2）（XX市实验杯市第七届青少年模型锦标赛）");

CREATE TABLE wx_group(
  gid INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  job VARCHAR(255),
  pri FLOAT,
  market FLOAT,
  honor VARCHAR(255)
);

INSERT INTO wx_group VALUES(1,"http://127.0.0.1:3000/img/teacher1.png","化学高级教师",1200.00,124.00,"中学高级教师。教育科研处主...");
INSERT INTO wx_group VALUES(2,"http://127.0.0.1:3000/img/teacher2.png","化学特级教师",1500.00,82.00,"中学特级教师。教育科研处主...");
INSERT INTO wx_group VALUES(3,"http://127.0.0.1:3000/img/teacher3.png","物理高级教师",1100.00,137.00,"中学高级教师。教育科研处主...");
INSERT INTO wx_group VALUES(4,"http://127.0.0.1:3000/img/teacher4.png","物理中级教师",900.00,26.00,"中学中级教师。教育科研处主...");
INSERT INTO wx_group VALUES(5,"http://127.0.0.1:3000/img/teacher5.png","生物特级教师",1300.00,101.00,"中学特级教师。教育科研处主...");
INSERT INTO wx_group VALUES(6,"http://127.0.0.1:3000/img/teacher6.png","生物中级教师",700.00,34.00,"中学中级教师。教育科研处主...");
INSERT INTO wx_group VALUES(7,"http://127.0.0.1:3000/img/teacher7.png","数学高级教师",1200.00,155.00,"中学高级教师。教育科研处主...");
INSERT INTO wx_group VALUES(8,"http://127.0.0.1:3000/img/teacher8.png","数学特级教师",1800.00,407.00,"中学特级教师。教育科研处主...");
INSERT INTO wx_group VALUES(9,"http://127.0.0.1:3000/img/teacher9.png","语文高级教师",1000.00,122.00,"中学高级教师。教育科研处主...");
INSERT INTO wx_group VALUES(10,"http://127.0.0.1:3000/img/teacher10.png","语文中级教师",600.00,49.00,"中学中级教师。教育科研处主...");
INSERT INTO wx_group VALUES(11,"http://127.0.0.1:3000/img/teacher11.png","英语特级教师",1600.00,396.00,"中学特级教师。教育科研处主...");
INSERT INTO wx_group VALUES(12,"http://127.0.0.1:3000/img/teacher12.png","英语高级教师",1200.00,258.00,"中学高级教师。教育科研处主...");
INSERT INTO wx_group VALUES(13,"http://127.0.0.1:3000/img/teacher13.png","历史中级教师",500.00,37.00,"中学中级教师。教育科研处主...");
INSERT INTO wx_group VALUES(14,"http://127.0.0.1:3000/img/teacher14.png","历史高级教师",900.00,96.00,"中学高级教师。教育科研处主...");
INSERT INTO wx_group VALUES(15,"http://127.0.0.1:3000/img/teacher15.png","政治高级教师",950.00,114.00,"中学高级教师。教育科研处主...");
INSERT INTO wx_group VALUES(16,"http://127.0.0.1:3000/img/teacher16.png","政治中级教师",550.00,41.00,"中学中级教师。教育科研处主...");
INSERT INTO wx_group VALUES(17,"http://127.0.0.1:3000/img/teacher17.png","地理高级教师",900.00,62.00,"中学特级教师。教育科研处主...");
INSERT INTO wx_group VALUES(18,"http://127.0.0.1:3000/img/teacher18.png","地理特级教师",1300.00,140.00,"中学特级教师。教育科研处主...");
INSERT INTO wx_group VALUES(19,"http://127.0.0.1:3000/img/teacher19.png","体育高级教师",650.00,45.00,"中学高级教师。教育科研处主...");
INSERT INTO wx_group VALUES(20,"http://127.0.0.1:3000/img/teacher20.png","体育高级教师",650.00,68.00,"中学高级教师。教育科研处主...");


CREATE TABLE wx_info(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  job VARCHAR(255),
  pri FLOAT,
  market FLOAT,
  honor VARCHAR(255)
);
INSERT INTO wx_info VALUES(1,"http://127.0.0.1:3000/img/teacher1.png","化学高级教师",1200.00,124.00,"中学高级教师。教育科研处主任。具有丰富的教学教研经验，业绩突出。曾被授予xxxx市十大杰出青年，十大名师等称号，还先后被评为省骨干教师，东三省优秀化学教师，省教育系统劳动模范和全国三育人先进个人等。");
INSERT INTO wx_info VALUES(2,"http://127.0.0.1:3000/img/teacher2.png","化学特级教师",1500.00,82.00,"中学特级教师。教育科研处主任。具有丰富的教学教研经验，业绩突出。曾被授予xxxx市十大杰出青年，十大名师等称号，还先后被评为省骨干教师，东三省优秀化学教师，省教育系统劳动模范和全国三育人先进个人等。");
INSERT INTO wx_info VALUES(3,"http://127.0.0.1:3000/img/teacher3.png","物理高级教师",1100.00,137.00,"中学高级教师。教育科研处主任。具有丰富的教学教研经验，业绩突出。曾被授予xxxx市十大杰出青年，十大名师等称号，还先后被评为省骨干教师，东三省优秀物理教师，省教育系统劳动模范和全国三育人先进个人等。");
INSERT INTO wx_info VALUES(4,"http://127.0.0.1:3000/img/teacher4.png","物理中级教师",900.00,26.00,"中学中级教师。教育科研处主任。具有丰富的教学教研经验，业绩突出。曾被授予xxxx市十大杰出青年，十大名师等称号，还先后被评为省骨干教师，东三省优秀物理教师，省教育系统劳动模范和全国三育人先进个人等。");
INSERT INTO wx_info VALUES(5,"http://127.0.0.1:3000/img/teacher5.png","生物特级教师",1300.00,101.00,"中学特级教师。教育科研处主任。具有丰富的教学教研经验，业绩突出。曾被授予xxxx市十大杰出青年，十大名师等称号，还先后被评为省骨干教师，东三省优秀生物教师，省教育系统劳动模范和全国三育人先进个人等。");
INSERT INTO wx_info VALUES(6,"http://127.0.0.1:3000/img/teacher6.png","生物中级教师",700.00,34.00,"中学中级教师。教育科研处主任。具有丰富的教学教研经验，业绩突出。曾被授予xxxx市十大杰出青年，十大名师等称号，还先后被评为省骨干教师，东三省优秀生物教师，省教育系统劳动模范和全国三育人先进个人等。");
INSERT INTO wx_info VALUES(7,"http://127.0.0.1:3000/img/teacher7.png","数学高级教师",1200.00,155.00,"中学高级教师。教育科研处主任。具有丰富的教学教研经验，业绩突出。曾被授予xxxx市十大杰出青年，十大名师等称号，还先后被评为省骨干教师，东三省优秀数学教师，省教育系统劳动模范和全国三育人先进个人等。");
INSERT INTO wx_info VALUES(8,"http://127.0.0.1:3000/img/teacher8.png","数学特级教师",1800.00,407.00,"中学特级教师。教育科研处主任。具有丰富的教学教研经验，业绩突出。曾被授予xxxx市十大杰出青年，十大名师等称号，还先后被评为省骨干教师，东三省优秀数学教师，省教育系统劳动模范和全国三育人先进个人等。");
INSERT INTO wx_info VALUES(9,"http://127.0.0.1:3000/img/teacher9.png","语文高级教师",1000.00,122.00,"中学高级教师。教育科研处主任。具有丰富的教学教研经验，业绩突出。曾被授予xxxx市十大杰出青年，十大名师等称号，还先后被评为省骨干教师，东三省优秀语文教师，省教育系统劳动模范和全国三育人先进个人等。");
INSERT INTO wx_info VALUES(10,"http://127.0.0.1:3000/img/teacher10.png","语文中级教师",600.00,49.00,"中学中级教师。教育科研处主任。具有丰富的教学教研经验，业绩突出。曾被授予xxxx市十大杰出青年，十大名师等称号，还先后被评为省骨干教师，东三省优秀语文教师，省教育系统劳动模范和全国三育人先进个人等。");
INSERT INTO wx_info VALUES(11,"http://127.0.0.1:3000/img/teacher11.png","英语特级教师",1600.00,396.00,"中学特级教师。教育科研处主任。具有丰富的教学教研经验，业绩突出。曾被授予xxxx市十大杰出青年，十大名师等称号，还先后被评为省骨干教师，东三省优秀英语教师，省教育系统劳动模范和全国三育人先进个人等。");
INSERT INTO wx_info VALUES(12,"http://127.0.0.1:3000/img/teacher12.png","英语高级教师",1200.00,258.00,"中学高级教师。教育科研处主任。具有丰富的教学教研经验，业绩突出。曾被授予xxxx市十大杰出青年，十大名师等称号，还先后被评为省骨干教师，东三省优秀英语教师，省教育系统劳动模范和全国三育人先进个人等。");
INSERT INTO wx_info VALUES(13,"http://127.0.0.1:3000/img/teacher13.png","历史中级教师",500.00,37.00,"中学中级教师。教育科研处主任。具有丰富的教学教研经验，业绩突出。曾被授予xxxx市十大杰出青年，十大名师等称号，还先后被评为省骨干教师，东三省优秀历史教师，省教育系统劳动模范和全国三育人先进个人等。");
INSERT INTO wx_info VALUES(14,"http://127.0.0.1:3000/img/teacher14.png","历史高级教师",900.00,96.00,"中学高级教师。教育科研处主任。具有丰富的教学教研经验，业绩突出。曾被授予xxxx市十大杰出青年，十大名师等称号，还先后被评为省骨干教师，东三省优秀历史教师，省教育系统劳动模范和全国三育人先进个人等。");
INSERT INTO wx_info VALUES(15,"http://127.0.0.1:3000/img/teacher15.png","政治高级教师",950.00,114.00,"中学高级教师。教育科研处主任。具有丰富的教学教研经验，业绩突出。曾被授予xxxx市十大杰出青年，十大名师等称号，还先后被评为省骨干教师，东三省优秀政治教师，省教育系统劳动模范和全国三育人先进个人等。");
INSERT INTO wx_info VALUES(16,"http://127.0.0.1:3000/img/teacher16.png","政治中级教师",550.00,41.00,"中学中级教师。教育科研处主任。具有丰富的教学教研经验，业绩突出。曾被授予xxxx市十大杰出青年，十大名师等称号，还先后被评为省骨干教师，东三省优秀政治教师，省教育系统劳动模范和全国三育人先进个人等。");
INSERT INTO wx_info VALUES(17,"http://127.0.0.1:3000/img/teacher17.png","地理高级教师",900.00,62.00,"中学高级教师。教育科研处主任。具有丰富的教学教研经验，业绩突出。曾被授予xxxx市十大杰出青年，十大名师等称号，还先后被评为省骨干教师，东三省优秀地理教师，省教育系统劳动模范和全国三育人先进个人等。");
INSERT INTO wx_info VALUES(18,"http://127.0.0.1:3000/img/teacher18.png","地理特级教师",1300.00,140.00,"中学特级教师。教育科研处主任。具有丰富的教学教研经验，业绩突出。曾被授予xxxx市十大杰出青年，十大名师等称号，还先后被评为省骨干教师，东三省优秀地理教师，省教育系统劳动模范和全国三育人先进个人等。");
INSERT INTO wx_info VALUES(19,"http://127.0.0.1:3000/img/teacher19.png","体育高级教师",650.00,45.00,"中学高级教师。教育科研处主任。具有丰富的教学教研经验，业绩突出。曾被授予xxxx市十大杰出青年，十大名师等称号，还先后被评为省骨干教师，东三省优秀体育教师，省教育系统劳动模范和全国三育人先进个人等。");
INSERT INTO wx_info VALUES(20,"http://127.0.0.1:3000/img/teacher20.png","体育高级教师",650.00,68.00,"中学高级教师。教育科研处主任。具有丰富的教学教研经验，业绩突出。曾被授予xxxx市十大杰出青年，十大名师等称号，还先后被评为省骨干教师，东三省优秀体育教师，省教育系统劳动模范和全国三育人先进个人等。");

CREATE TABLE wx_login(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(256),
  userpwd INT,
  userphone VARCHAR(256)
);

INSERT INTO wx_login VALUES(1,201506140126,300010,17806171951);
INSERT INTO wx_login VALUES(2,201506140127,777777,13552578535);
INSERT INTO wx_login VALUES(3,201506140128,888888,13718911189);
