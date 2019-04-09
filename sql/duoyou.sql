
/** 创建宠物种类表 **/
CREATE TABLE pet_type(
  pid INT PRIMARY KEY,
  ptype VARCHAR(32)
);

/** 创建热销商品表 **/
CREATE TABLE rx_laptop(
  rid INT PRIMARY KEY AUTO_INCREMENT,  #热销商品编号
  title VARCHAR(128),                  #标题
  price1 DECIMAL(10,2),                #多优价
  price2 DECIMAL(10,2),                #厂商指导价
  brand VARCHAR(32),                   #所属品牌
  num VARCHAR(16),                     #商品编号
  sale VARCHAR(8),                     #已售件数
	img VARCHAR(128),                    #首页图片路径
  pid INT,                             #所属宠物种类编号
  FOREIGN KEY(pid) REFERENCES pet_type(pid)    #外键约束，指向宠物种类中的pid=0
);

/** 创建狗狗商品表 **/
CREATE TABLE dog_laptop(
  did INT PRIMARY KEY AUTO_INCREMENT,  #热销商品编号
  title VARCHAR(128),                  #标题
  price1 DECIMAL(10,2),                #多优价
  price2 DECIMAL(10,2),                #厂商指导价
  brand VARCHAR(32),                   #所属品牌
  num VARCHAR(16),                     #商品编号
  sale VARCHAR(8),                     #已售件数
	img VARCHAR(128),                    #首页图片路径
  pid INT,                             #所属宠物种类编号
  FOREIGN KEY(pid) REFERENCES pet_type(pid)    #外键约束，指向宠物种类中的pid=10
);

/** 创建猫咪商品表 **/
CREATE TABLE cat_laptop(
  cid INT PRIMARY KEY AUTO_INCREMENT,  #热销商品编号
  title VARCHAR(128),                  #标题
  price1 DECIMAL(10,2),                #多优价
  price2 DECIMAL(10,2),                #厂商指导价
  brand VARCHAR(32),                   #所属品牌
  num VARCHAR(16),                     #商品编号
  sale VARCHAR(8),                     #已售件数
	img VARCHAR(128),                    #首页图片路径
  pid INT,                             #所属宠物种类编号
  FOREIGN KEY(pid) REFERENCES pet_type(pid)    #外键约束，指向宠物种类中的pid=20
);

/** 创建小宠商品表 **/
CREATE TABLE xc_laptop(
  xid INT PRIMARY KEY AUTO_INCREMENT,  #热销商品编号
  title VARCHAR(128),                  #标题
  price1 DECIMAL(10,2),                #多优价
  price2 DECIMAL(10,2),                #厂商指导价
  brand VARCHAR(32),                   #所属品牌
  num VARCHAR(16),                     #商品编号
  sale VARCHAR(8),                     #已售件数
	img VARCHAR(128),                    #首页图片路径
  pid INT,                             #所属宠物种类编号
  FOREIGN KEY(pid) REFERENCES pet_type(pid)    #外键约束，指向宠物种类中的pid=30
);

/** 创建水族商品表 **/
CREATE TABLE sz_laptop(
  sid INT PRIMARY KEY AUTO_INCREMENT,  #热销商品编号
  title VARCHAR(128),                  #标题
  price1 DECIMAL(10,2),                #多优价
  price2 DECIMAL(10,2),                #厂商指导价
  brand VARCHAR(32),                   #所属品牌
  num VARCHAR(16),                     #商品编号
  sale VARCHAR(8),                     #已售件数
	img VARCHAR(128),                    #首页图片路径
  pid INT,                             #所属宠物种类编号
  FOREIGN KEY(pid) REFERENCES pet_type(pid)    #外键约束，指向宠物种类中的pid=40
);

/** 创建爬虫商品表 **/
CREATE TABLE pc_laptop(
  hid INT PRIMARY KEY AUTO_INCREMENT,  #热销商品编号
  title VARCHAR(128),                  #标题
  price1 DECIMAL(10,2),                #多优价
  price2 DECIMAL(10,2),                #厂商指导价
  brand VARCHAR(32),                   #所属品牌
  num VARCHAR(16),                     #商品编号
  sale VARCHAR(8),                     #已售件数
	img VARCHAR(128),                    #首页图片路径
  pid INT,                             #所属宠物种类编号
  FOREIGN KEY(pid) REFERENCES pet_type(pid)    #外键约束，指向宠物种类中的pid=50
);

/** 创建热销商品图片表 **/
CREATE TABLE rx_laptop_pic(
  rx_id INT PRIMARY KEY AUTO_INCREMENT,
  md VARCHAR(128),            #中图片路径
  lg VARCHAR(128),            #大图片路径
  rid INT                    #所属商品编号
);

/** 创建狗狗商品图片表 **/
CREATE TABLE dog_laptop_pic(
  dog_id INT PRIMARY KEY AUTO_INCREMENT,
  md VARCHAR(128),            #中图片路径
  lg VARCHAR(128),            #大图片路径
  did INT                    #所属商品编号
);

/** 创建猫咪商品图片表 **/
CREATE TABLE cat_laptop_pic(
  cat_id INT PRIMARY KEY AUTO_INCREMENT,
  md VARCHAR(128),            #中图片路径
  lg VARCHAR(128),             #大图片路径
  cid INT                    #所属商品编号
);

/** 创建小宠商品图片表 **/
CREATE TABLE xc_laptop_pic(
  xc_id INT PRIMARY KEY AUTO_INCREMENT,
  md VARCHAR(128),            #中图片路径
  lg VARCHAR(128),             #大图片路径
  xid INT                    #所属商品编号
);

/** 创建水族商品图片表 **/
CREATE TABLE sz_laptop_pic(
  sz_id INT PRIMARY KEY AUTO_INCREMENT,
  md VARCHAR(128),            #中图片路径
  lg VARCHAR(128),             #大图片路径
  sid INT                    #所属商品编号
);

/** 创建爬虫商品图片表 **/
CREATE TABLE pc_laptop_pic(
  pc_id INT PRIMARY KEY AUTO_INCREMENT,
  md VARCHAR(128),            #中图片路径
  lg VARCHAR(128),             #大图片路径
  hid INT                    #所属商品编号
);

/** 创建用户信息表 **/
CREATE TABLE dy_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(32),          #用户昵称
  tel VARCHAR(16),               #用户电话
  password VARCHAR(32)           #用户密码
);

/** 创建收货地址信息表 **/
CREATE TABLE dy_receiver_address(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,                #用户编号
  receiver VARCHAR(16),       #接收人姓名
  province VARCHAR(16),       #省
  city VARCHAR(16),           #市
  county VARCHAR(16),         #县
  address VARCHAR(128),       #详细地址
  cellphone VARCHAR(16),      #手机
  fixedphone VARCHAR(16),     #固定电话
  postcode CHAR(6),           #邮编
  tag VARCHAR(16),            #标签名
  is_default BOOLEAN          #是否为当前用户的默认收货地址
);

/** 创建购物车条目表 **/
CREATE TABLE dy_gwc_item(
  gid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,              #用户编号
  product_id INT,           #商品编号
  count INT,                #购买数量
  is_checked BOOLEAN        #是否已勾选，确定购买
);

/**** 创建首页轮播广告商品表 ****/
CREATE TABLE xz_index_lb(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);

/*************************************************************/
/***************  数据导入 *****************/
/*************************************************************/

/** 插入宠物种类表 **/
INSERT INTO pet_type VALUES
(0,'rx'),
(10,'dog'),
(20,'cat'),
(30,'xc'),
(40,'sz'),
(50,'pc');

/** 插入热销商品表 **/
INSERT INTO rx_laptop VALUES
(null,'伊丽 Elite 小怪兽猫窝爬架',170.00,207.00,'Elite',2084101,41,'../img/index/remen/1.jpg',0),
(null,'伯纳天纯 成猫天然无谷配方猫粮1.5kg',107.00,130.00,'伯纳天纯',1338703,3215,'../img/index/remen/2.jpg',0),
(null,'小佩Petkit 宠物智能猫窝冬季保暖冬天空调窝四季通用小型犬狗窝',889.00,920.00,'小佩Petkit',2084254,2354,'../img/index/remen/3.jpg',0),
(null,'Touchdog它它 新款宠物衣服时尚可爱狗狗衣服泰迪比熊小型犬秋冬衣服',98.00,120.00,'Elite',2984101,532,'../img/index/remen/4.jpg',0),
(null,'Touchcat它它 超可爱温暖猫窝动物园系列图案猫抓板',170.00,207.00,'Touchcat它它',2546378,712,'../img/index/remen/5.jpg',0),
(null,'BOTH 成犬山羊奶果冻布丁16g*50粒桶装 狗零食',52.00,64.00,'BOTH',2084101,41,'../img/index/remen/1.jpg',0);

/** 插入狗狗商品表 **/
INSERT INTO dog_laptop VALUES
(null,'比瑞吉 小型成犬粮天然狗粮1.5kg',99.00,115.00,'比瑞吉',2564101,2515,'../img/index/dog/1.jpg',10),
(null,'Orijen渴望 无谷幼犬配方狗粮 11.4kg',1050.00,1100.00,'比瑞吉',2456321,15,'../img/index/dog/2.jpg',10),
(null,'麦富迪 牛肉双拼粮小型犬成犬粮2kg',78.00,84.00,'麦富迪',1486101,2014,'../img/index/dog/3.jpg',10),
(null,'醇粹 泰迪贵宾成犬粮天然狗粮3kg 泰迪狗粮',109.00,115.00,'醇粹',2548311,1032,'../img/index/dog/4.jpg',10),
(null,'"Meat Mates 冻干小鲜牛犬营养补充拌餐130g【2019年2月】',105.00,115.00,'Meat Mates',2743201,645,'../img/index/dog/5.jpg',10),
(null,'宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg',37.00,45.00,'宝路',1499651,1425,'../img/index/dog/6.jpg',10),
(null,'皇家贵宾 成犬粮3kg PD30',208.00,216.00,'皇家贵宾',7462101,328,'../img/index/dog/7.jpg',10),
(null,'冠能 挑食及美毛配方粮2.5kg',169.00,180.00,'冠能',2531501,1432,'../img/index/dog/8.jpg',10),
(null,'怡亲yoken 泰迪成犬粮专用狗粮2.5kg',98.00,110.00,'怡亲yoken',2123601,145,'../img/index/dog/30.jpg',10),
(null,'优倍滋 牛肉味全犬种全期犬粮10kg',99.00,108.00,'优倍滋',2346501,254,'../img/index/dog/31.jpg',10),
(null,'康多乐 成犬粮牛肉肝蔬菜狗粮15kg',289.00,310.00,'康多乐',5236601,499,'../img/index/dog/32.jpg',10),
(null,'曼劳 立体派犬用牛肉粒200g 狗零食',29.00,35.00,'曼劳',2126541,265,'../img/index/dog/33.jpg',10),
(null,'它它 杂锦罐装磨牙防口臭饼干1kg ',38.00,46.00,'它它',8535601,452,'../img/index/dog/34.jpg',10),
(null,'法国皇家 10个月-8岁小型成犬粮2kg',111.00,110.00,'法国皇家',7568101,15,'../img/index/dog/34.jpg',10);

/** 插入猫咪商品表 **/
INSERT INTO cat_laptop VALUES
(null,'Orijen渴望 六种鲜鱼海藻配方全猫粮5.4kg',760.00,780.00,'Orijen渴望',4624101,2155,'../img/index/cat/1.jpg',20),
(null,'Wellness 室内成猫粮鸡肉配方猫粮2.7kg',229.00,140.00,'Wellness',4786201,1524,'../img/index/cat/2.jpg',20),
(null,'比瑞吉 车前子泌尿道调理成猫粮天然粮2kg',159.00,170.00,'比瑞吉',1589601,1041,'../img/index/cat/3.jpg',20),
(null,'伯纳天纯 成猫天然无谷配方猫粮1.5kg',157.00,170.00,'伯纳天纯',4412581,2032,'../img/index/cat/4.jpg',20),
(null,'佩玛思特 成猫粮专业去毛球配方猫粮2kg',128.00,140.00,'佩玛思特',1285621,1145,'../img/index/cat/5.jpg',20),
(null,'醇粹 幼猫奶糕天然猫粮2kg',129.00,135.00,'醇粹',7562101,825,'../img/index/cat/6.jpg',20),
(null,'皇家 12月以下及怀孕期母猫粮2kg',127.00,139.00,'皇家',1526348,3028,'../img/index/cat/7.jpg',20),
(null,'冠能幼猫全价猫粮2.5kg',185.00,195.00,'冠能',2563158,732,'../img/index/cat/8.jpg',20),
(null,'怡亲 幼猫粮专用粮2.5KG',119.00,125.00,'怡亲',2587658,324,'../img/index/cat/26.jpg',20),
(null,'优倍滋 海洋鱼味全猫种全期猫粮10kg',99.00,115.00,'优倍滋',1296558,64,'../img/index/cat/21.jpg',20),
(null,'伟嘉 幼猫粮海洋鱼味猫粮1.2kg',37.00,45.00,'伟嘉',1285756,354,'../img/index/cat/22.jpg',20),
(null,'BOTH 幼猫山羊奶果冻布丁16g*15粒 猫零食',16.00,22.00,'BOTH',2587413,645,'../img/index/cat/23.jpg',20),
(null,'珍致 尊享装猫罐头85g*6罐 猫湿粮',46.00,54.00,'珍致',9648231,658,'../img/index/cat/24.jpg',20),
(null,'皇家ROYAL CANIN 室内成猫猫粮2kg i27',127.00,135.00,'皇家ROYAL',1657432,365,'../img/index/cat/25.jpg',20);

/** 插入小宠商品表 **/
INSERT INTO xc_laptop VALUES
(null,'Minishow迷你秀绿茶味龙猫仓鼠洗澡砂2kg',11.00,14.00,'Minishow',8546328,1515,'../img/index/xc/1.jpg',30),
(null,'凯莉 全营养优质龙猫粮2.5kg KY10',31.00,35.00,'凯莉',5369715,1520,'../img/index/xc/2.jpg',30),
(null,'卡诺松鼠龙猫貂兔子加厚知毛绒秋千吊床',10.00,14.00,'卡诺',2516384,241,'../img/index/xc/3.jpg',30),
(null,'New Age经典配方龙猫粮饲料1kg',16.00,19.00,'New Age',1357951,832,'../img/index/xc/4.jpg',30),
(null,'纽安吉全日蔬果美毛龙猫粮800g',18.00,20.00,'纽安吉',7435416,445,'../img/index/xc/5.jpg',30),
(null,'卡诺木质龙猫玩具用品跳板/窝/木屋/吊链/多款可选',7.00,9.00,'卡诺',2576241,425,'../img/index/xc/6.jpg',30),
(null,'唯琴龙猫瓷窝',55.00,60.00,'唯琴',1568732,128,'../img/index/xc/7.jpg',30),
(null,'中盈高品质龙猫笼 龙猫别墅 3层龙猫大笼子 魔王松鼠笼',189.00,200.00,'中盈',1346795,32,'../img/index/xc/8.jpg',30),
(null,'特瑞仕 小动物用除臭喷剂 175ml',35.00,40.00,'特瑞仕',8513549,45,'../img/index/xc/21.jpg',30),
(null,'特瑞仕 主粮五谷配方仓鼠饲料综合粮908g',13.00,15.00,'特瑞仕',5138761,245,'../img/index/xc/22.jpg',30),
(null,'富美内特 小动物专用粉色祛毛梳',150.00,160.00,'富美内特',1357949,315,'../img/index/xc/23.jpg',30),
(null,'纽安吉全日蔬果美毛龙猫粮800g',18.00,20.00,'纽安吉',8216751,138,'../img/index/xc/24.jpg',30),
(null,'Reptile Structure 夜灯保温灯50w',30.00,35.00,'Reptile Structure',1654921,254,'../img/index/xc/25.jpg',30),
(null,'Reptile Structure 日光灯加温灯50W',20.00,24.00,'Reptile Structure',2135794,63,'../img/index/xc/26.jpg',30);

/** 插入水族商品表 **/
INSERT INTO sz_laptop VALUES
(null,'海豚 超级硝化活菌剂 超浓缩活性硝化菌',10.00,12.00,'海豚',1536751,515,'../img/index/sz/1.jpg',40),
(null,'海豚 水质安定剂 鱼缸除氯稳定剂',12.00,14.00,'海豚',1562148,115,'../img/index/sz/2.jpg',40),
(null,'森森硝化细菌500ml',20.00,22.00,'森森',1546387,2441,'../img/index/sz/3.jpg',40),
(null,'nomo水族箱生化过滤净水质活性硝化菌100ml-NM11',13.00,15.00,'nomo',1324621,1232,'../img/index/sz/4.jpg',40),
(null,'森森神奇4合1 258ml',16.00,18.00,'森森',1543021,1645,'../img/index/sz/5.jpg',40),
(null,'仟湖傲深OF麦特贝热带鱼龙鱼消化益菌鱼缸硝化细菌',15.00,17.00,'仟湖傲深OF麦特贝',1203547,425,'../img/index/sz/6.jpg',40),
(null,'森森调水师125ml',9.00,10.00,'森森',3024602,1328,'../img/index/sz/7.jpg',40),
(null,'海豚消化细菌5片装',2.00,2.50,'海豚',1030543,1232,'../img/index/sz/8.jpg',40),
(null,'聚宝源 小型鱼热带鱼鱼粮 500ml',18.00,20.00,'聚宝源',3025460,315,'../img/index/sz/21.jpg',40),
(null,'聚宝源 锦鲤金鱼通用鱼粮 150g',10.00,12.00,'聚宝源',1030562,205,'../img/index/sz/22.jpg',40),
(null,'聚宝源 金鱼鱼粮1.2mm颗粒 150g',10.00,12.00,'聚宝源',1302579,79,'../img/index/sz/22.jpg',40),
(null,'聚宝源 大型成品鱼缸KR-1000S白色',1299.00,1320.00,'聚宝源',2489025,15,'../img/index/sz/24.jpg',40),
(null,'森森 鱼缸外置过滤桶带UV紫外线菌灯',333.00,340.00,'森森',5036792,25,'../img/index/sz/25.jpg',40),
(null,'森森 壁挂式过滤器 瀑布过滤泵',30.00,33.00,'森森',5236015,34,'../img/index/sz/26.jpg',40);

/** 插入爬虫商品表 **/
INSERT INTO pc_laptop VALUES
(null,'诺摩新款斜面组合小斜面保温爬箱40*30*30-NX02',160.00,170.00,'诺摩',1503697,15,'../img/index/pc/1.jpg',50),
(null,'诺摩 爬虫用椰棕垫材苏卡达爬虫箱造景中号39x39cm',16.00,17.00,'诺摩',1503697,215,'../img/index/pc/2.jpg',50),
(null,'诺摩 爬虫夜灯陆龟蜥蜴蜘蛛夜间保温灯ny-01 50W',35.00,40.00,'诺摩',1035792,23,'../img/index/pc/3.jpg',50),
(null,'诺摩 爬虫箱全光谱加温灯UVB3.0 25W-nl01',25.00,28.00,'诺摩',3025460,17,'../img/index/pc/4.jpg',50),
(null,'聚宝源 玻璃乌龟缸带爬梯晒台 30*20*18',62.00,65.00,'聚宝源',5036428,145,'../img/index/pc/5.jpg',50),
(null,'森森 爬虫专用垫材蜥蜴蜘蛛爬沙陆龟沙1.8kg深红-ND-01',21.00,23.00,'森森',1520364,125,'../img/index/pc/6.jpg',50),
(null,'Reptile Structure 爬虫无菌土椰土椰砖垫材700g 陆龟黄缘龟红玫瑰蜘蛛适用',17.00,20.00,'Reptile Structure',3156702,228,'../img/index/pc/7.jpg',50),
(null,'LA WEST法兰绒毯 卡通西高地狗毯子',69.00,75.00,'LA WEST',3502644,51,'../img/index/pc/21.jpg',50),
(null,'认真 记忆棉猫咪地垫',85.00,90.00,'认真',3025642,31,'../img/index/pc/22.jpg',50),
(null,'JOYYE创意粉色火烈鸟陶瓷水杯',86.00,90.00,'JOYYE',3156024,23,'../img/index/pc/23.jpg',50),
(null,'JOYYE萌物派对动物陶瓷C把杯',68.00,75.00,'JOYYE',3024621,51,'../img/index/pc/24.jpg',50),
(null,'JOYYE萌物派对动物陶瓷马克杯',58.00,63.00,'JOYYE',1035679,33,'../img/index/pc/25.jpg',50),
(null,'IME硅胶贵宾花束手机壳',32.00,35.00,'IME',2654301,24,'../img/index/pc/26.jpg',50);

/**************************  插入图片部分  ****************************/

/** 插入热销商品图片表 **/
INSERT INTO rx_laptop_pic VALUES
(null,1,'../img/index/remen/1_1_md.jpg','../img/index/remen/1_1_lg.jpg'),
(null,1,'../img/index/remen/1_2_md.jpg','../img/index/remen/1_2_lg.jpg'),
(null,1,'../img/index/remen/1_3_md.jpg','../img/index/remen/1_3_lg.jpg'),
(null,1,'../img/index/remen/1_4_md.jpg','../img/index/remen/1_4_lg.jpg'),
(null,1,'../img/index/remen/1_5_md.jpg','../img/index/remen/1_5_lg.jpg'),
(null,2,'../img/index/remen/2_1_md.jpg','../img/index/remen/2_1_lg.jpg'),
(null,2,'../img/index/remen/2_2_md.jpg','../img/index/remen/2_2_lg.jpg'),
(null,2,'../img/index/remen/2_3_md.jpg','../img/index/remen/2_3_lg.jpg'),
(null,3,'../img/index/remen/3_1_md.jpg','../img/index/remen/3_1_lg.jpg'),
(null,3,'../img/index/remen/3_2_md.jpg','../img/index/remen/3_2_lg.jpg'),
(null,3,'../img/index/remen/3_3_md.jpg','../img/index/remen/3_3_lg.jpg'),
(null,3,'../img/index/remen/3_4_md.jpg','../img/index/remen/3_4_lg.jpg'),
(null,3,'../img/index/remen/3_5_md.jpg','../img/index/remen/3_5_lg.jpg'),
(null,3,'../img/index/remen/3_6_md.jpg','../img/index/remen/3_6_lg.jpg'),
(null,3,'../img/index/remen/3_7_md.jpg','../img/index/remen/3_7_lg.jpg'),
(null,4,'../img/index/remen/4_1_md.jpg','../img/index/remen/4_1_lg.jpg'),
(null,4,'../img/index/remen/4_2_md.jpg','../img/index/remen/4_2_lg.jpg'),
(null,4,'../img/index/remen/4_3_md.jpg','../img/index/remen/4_3_lg.jpg'),
(null,5,'../img/index/remen/5_1_md.jpg','../img/index/remen/5_1_lg.jpg'),
(null,5,'../img/index/remen/5_2_md.jpg','../img/index/remen/5_2_lg.jpg'),
(null,6,'../img/index/remen/6_1_md.jpg','../img/index/remen/6_1_lg.jpg'),
(null,6,'../img/index/remen/6_2_md.jpg','../img/index/remen/6_2_lg.jpg');

/** 插入狗狗商品图片表 **/
INSERT INTO dog_laptop_pic VALUES
(null,1,'../img/index/dog/1_1_md.jpg','../img/index/dog/1_1_lg.jpg'),
(null,1,'../img/index/dog/1_2_md.jpg','../img/index/dog/1_2_lg.jpg'),
(null,1,'../img/index/dog/1_3_md.jpg','../img/index/dog/1_3_lg.jpg'),
(null,2,'../img/index/dog/2_1_md.jpg','../img/index/dog/2_1_lg.jpg'),
(null,2,'../img/index/dog/2_2_md.jpg','../img/index/dog/2_2_lg.jpg'),
(null,3,'../img/index/dog/3_1_md.jpg','../img/index/dog/3_1_lg.jpg'),
(null,3,'../img/index/dog/3_2_md.jpg','../img/index/dog/3_2_lg.jpg'),
(null,4,'../img/index/dog/4_1_md.jpg','../img/index/dog/4_1_lg.jpg'),
(null,4,'../img/index/dog/4_2_md.jpg','../img/index/dog/4_2_lg.jpg'),
(null,5,'../img/index/dog/5_1_md.jpg','../img/index/dog/5_1_lg.jpg'),
(null,5,'../img/index/dog/5_2_md.jpg','../img/index/dog/5_2_lg.jpg'),
(null,6,'../img/index/dog/6_1_md.jpg','../img/index/dog/6_1_lg.jpg'),
(null,6,'../img/index/dog/6_2_md.jpg','../img/index/dog/6_2_lg.jpg'),
(null,7,'../img/index/dog/7_1_md.jpg','../img/index/dog/7_1_lg.jpg'),
(null,7,'../img/index/dog/7_2_md.jpg','../img/index/dog/7_2_lg.jpg'),
(null,8,'../img/index/dog/8_1_md.jpg','../img/index/dog/8_1_lg.jpg'),
(null,8,'../img/index/dog/8_2_md.jpg','../img/index/dog/8_2_lg.jpg');

/** 插入猫咪商品图片表 **/
INSERT INTO cat_laptop_pic VALUES
(null,1,'../img/index/cat/1_1_md.jpg','../img/index/cat/1_1_lg.jpg'),
(null,1,'../img/index/cat/1_2_md.jpg','../img/index/cat/1_2_lg.jpg'),
(null,2,'../img/index/cat/2_1_md.jpg','../img/index/cat/2_1_lg.jpg'),
(null,2,'../img/index/cat/2_2_md.jpg','../img/index/cat/2_2_lg.jpg'),
(null,3,'../img/index/cat/3_1_md.jpg','../img/index/cat/3_1_lg.jpg'),
(null,3,'../img/index/cat/3_2_md.jpg','../img/index/cat/3_2_lg.jpg'),
(null,4,'../img/index/cat/4_1_md.jpg','../img/index/cat/4_1_lg.jpg'),
(null,4,'../img/index/cat/4_2_md.jpg','../img/index/cat/4_2_lg.jpg'),
(null,5,'../img/index/cat/5_1_md.jpg','../img/index/cat/5_1_lg.jpg'),
(null,5,'../img/index/cat/5_2_md.jpg','../img/index/cat/5_2_lg.jpg'),
(null,6,'../img/index/cat/6_1_md.jpg','../img/index/cat/6_1_lg.jpg'),
(null,6,'../img/index/cat/6_2_md.jpg','../img/index/cat/6_2_lg.jpg'),
(null,7,'../img/index/cat/7_1_md.jpg','../img/index/cat/7_1_lg.jpg'),
(null,7,'../img/index/cat/7_2_md.jpg','../img/index/cat/7_2_lg.jpg'),
(null,8,'../img/index/cat/8_1_md.jpg','../img/index/cat/8_1_lg.jpg'),
(null,8,'../img/index/cat/8_2_md.jpg','../img/index/cat/8_2_lg.jpg');

/** 插入用户信息表 **/
INSERT INTO dy_user VALUES
(null,'111','13542365401','111111'),
(null,'222','13512348620','222222'),
(null,'333','13610254862','333333'),
(null,'444','13730256489','444444'),
(null,'555','13812015323','555555'),
(null,'666','13612002563','666666');













