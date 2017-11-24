SET NAMES UTF8;
DROP DATABASE IF EXISTS ali;
CREATE DATABASE ali CHARSET=UTF8;
use ali;

CREATE TABLE ali_user(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(32),
    upwd VARCHAR(32),
    email VARCHAR(64),
    phone VARCHAR(16),
    avatar VARCHAR(128),        #头像图片路径
    user_name VARCHAR(32),      #用户名，如王小明
    gender INT                  #性别  0-女  1-男
);
#插入一张省份表
#省级 Provincial
#城市 City
CREATE TABLE `province` (
  `id` INT(11) DEFAULT NULL,
  `name` VARCHAR(50) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*省份*/
insert into province values(1,'北京市'); 
insert into province values(2,'天津市'); 
insert into province values(3,'上海市'); 
insert into province values(4,'重庆市'); 
insert into province values(5,'河北省'); 
insert into province values(6,'山西省'); 
insert into province values(7,'台湾省'); 
insert into province values(8,'辽宁省'); 
insert into province values(9,'吉林省'); 
insert into province values(10,'黑龙江省'); 
insert into province values(11,'江苏省'); 
insert into province values(12,'浙江省'); 
insert into province values(13,'安徽省'); 
insert into province values(14,'福建省'); 
insert into province values(15,'江西省'); 
insert into province values(16,'山东省'); 
insert into province values(17,'河南省'); 
insert into province values(18,'湖北省'); 
insert into province values(19,'湖南省'); 
insert into province values(20,'广东省'); 
insert into province values(21,'甘肃省'); 
insert into province values(22,'四川省'); 
insert into province values(23,'贵州省'); 
insert into province values(24,'海南省'); 
insert into province values(25,'云南省'); 
insert into province values(26,'青海省'); 
insert into province values(27,'陕西省'); 
insert into province values(28,'广西壮族自治区'); 
insert into province values(29,'西藏自治区'); 
insert into province values(30,'宁夏回族自治区'); 
insert into province values(31,'新疆维吾尔自治区'); 
insert into province values(32,'内蒙古自治区'); 
insert into province values(33,'澳门特别行政区'); 
insert into province values(34,'香港特别行政区'); 

CREATE TABLE `city` (
  `id` INT(11) DEFAULT NULL,
  `name` VARCHAR(50) DEFAULT NULL,
  `pid` INT(11) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*插入各个省的城市数据*/   
insert into city values(1,'北京市',1); 
insert into city values(2,'天津市',2); 
insert into city values(3,'上海市',3); 
insert into city values(4,'重庆市',4); 

/*5河北省 11个地级市*/
insert into city values(5,'石家庄市',5);   
insert into city values(6,'唐山市',5);   
insert into city values(7,'秦皇岛市',5);   
insert into city values(8,'邯郸市',5);   
insert into city values(9,'邢台市',5);   
insert into city values(10,'保定市',5);   
insert into city values(11,'张家口市',5);   
insert into city values(12,'承德市',5);   
insert into city values(13,'沧州市',5);   
insert into city values(14,'廊坊市',5);   
insert into city values(15,'衡水市',5);

/*6山西省 11个城市*/
insert into city values(16,'太原市',6);   
insert into city values(17,'大同市',6);   
insert into city values(18,'阳泉市',6);   
insert into city values(19,'长治市',6);   
insert into city values(20,'晋城市',6);   
insert into city values(21,'朔州市',6);   
insert into city values(22,'晋中市',6);   
insert into city values(23,'运城市',6);   
insert into city values(24,'忻州市',6);   
insert into city values(25,'临汾市',6);   
insert into city values(26,'吕梁市',6);

/*7台湾省(台湾本岛和澎湖共设7市、16县，其中台北市和高雄市为“院辖市”，直属“行政院”，其余属台湾省；市下设区，县下设市（县辖市）、镇、乡，合称区市镇乡。)*/
insert into city values(27,'台北市',7);
insert into city values(28,'高雄市',7);   
insert into city values(29,'基隆市',7);   
insert into city values(30,'台中市',7);   
insert into city values(31,'台南市',7);   
insert into city values(32,'新竹市',7);   
insert into city values(33,'嘉义市',7);   
insert into city values(34,'台北县',7);   
insert into city values(35,'宜兰县',7);   
insert into city values(36,'桃园县',7);   
insert into city values(37,'新竹县',7);   
insert into city values(38,'苗栗县',7);   
insert into city values(39,'台中县',7);   
insert into city values(40,'彰化县',7);   
insert into city values(41,'南投县',7);   
insert into city values(42,'云林县',7);   
insert into city values(43,'嘉义县',7);   
insert into city values(44,'台南县',7);   
insert into city values(45,'高雄县',7);   
insert into city values(46,'屏东县',7);   
insert into city values(47,'澎湖县',7);   
insert into city values(48,'台东县',7);   
insert into city values(49,'花莲县',7);  

/*8辽宁省 14个地级市*/
insert into city values(50,'沈阳市',8);   
insert into city values(51,'大连市',8);   
insert into city values(52,'鞍山市',8);   
insert into city values(53,'抚顺市',8);   
insert into city values(54,'本溪市',8);   
insert into city values(55,'丹东市',8);   
insert into city values(56,'锦州市',8);   
insert into city values(57,'营口市',8);   
insert into city values(58,'阜新市',8);   
insert into city values(59,'辽阳市',8);   
insert into city values(60,'盘锦市',8);   
insert into city values(61,'铁岭市',8);   
insert into city values(62,'朝阳市',8);   
insert into city values(63,'葫芦岛市',8);

/*9吉林省(2006年，辖：8个地级市、1个自治州；20个市辖区、20个县级市、17个县、3个自治县。)*/  
insert into city values(64,'长春市',9);   
insert into city values(65,'吉林市',9);   
insert into city values(66,'四平市',9);   
insert into city values(67,'辽源市',9);   
insert into city values(68,'通化市',9);   
insert into city values(69,'白山市',9);   
insert into city values(70,'松原市',9);   
insert into city values(71,'白城市',9);   
insert into city values(72,'延边朝鲜族自治州',9);  

/*10黑龙江省(2006年，辖：12地级市、1地区；64市辖区、18县级市、45县、1自治县)*/
insert into city values(73,'哈尔滨市',10);   
insert into city values(74,'齐齐哈尔市',10);   
insert into city values(75,'鹤 岗 市',10);   
insert into city values(76,'双鸭山市',10);   
insert into city values(77,'鸡 西 市',10);   
insert into city values(78,'大 庆 市',10);   
insert into city values(79,'伊 春 市',10);   
insert into city values(80,'牡丹江市',10);   
insert into city values(81,'佳木斯市',10);   
insert into city values(82,'七台河市',10);   
insert into city values(83,'黑 河 市',10);   
insert into city values(84,'绥 化 市',10);   
insert into city values(85,'大兴安岭地区',10);

/*11江苏省(2005年辖：13个地级市；54个市辖区、27个县级市、25个县)*/
insert into city values(86,'南京市',11);   
insert into city values(87,'无锡市',11);   
insert into city values(88,'徐州市',11);   
insert into city values(89,'常州市',11);   
insert into city values(90,'苏州市',11);   
insert into city values(91,'南通市',11);   
insert into city values(92,'连云港市',11);   
insert into city values(93,'淮安市',11);   
insert into city values(94,'盐城市',11);   
insert into city values(95,'扬州市',11);   
insert into city values(96,'镇江市',11);   
insert into city values(97,'泰州市',11);   
insert into city values(98,'宿迁市',11); 

/*12浙江省(2006年，辖：11个地级市；32个市辖区、22个县级市、35个县、1个自治县。)*/
insert into city values(99,'杭州市',12);   
insert into city values(100,'宁波市',12);   
insert into city values(101,'温州市',12);   
insert into city values(102,'嘉兴市',12);   
insert into city values(103,'湖州市',12);   
insert into city values(104,'绍兴市',12);   
insert into city values(105,'金华市',12);   
insert into city values(106,'衢州市',12);   
insert into city values(107,'舟山市',12);   
insert into city values(108,'台州市',12);   
insert into city values(109,'丽水市',12); 

/*13安徽省(2005年辖：17个地级市；44个市辖区、5县个级市、56个县。)*/
insert into city values(110,'合肥市',13);   
insert into city values(111,'芜湖市',13);   
insert into city values(112,'蚌埠市',13);   
insert into city values(113,'淮南市',13);   
insert into city values(114,'马鞍山市',13);   
insert into city values(115,'淮北市',13);   
insert into city values(116,'铜陵市',13);   
insert into city values(117,'安庆市',13);   
insert into city values(118,'黄山市',13);   
insert into city values(119,'滁州市',13);   
insert into city values(120,'阜阳市',13);   
insert into city values(121,'宿州市',13);   
insert into city values(122,'巢湖市',13);   
insert into city values(123,'六安市',13);   
insert into city values(124,'亳州市',13);   
insert into city values(125,'池州市',13);   
insert into city values(126,'宣城市',13);

/*14福建省(2006年辖：9个地级市；26个市辖区、14个县级市、45个县。)*/
insert into city values(127,'福州市',14);   
insert into city values(128,'厦门市',14);   
insert into city values(129,'莆田市',14);   
insert into city values(130,'三明市',14);   
insert into city values(131,'泉州市',14);   
insert into city values(132,'漳州市',14);   
insert into city values(133,'南平市',14);   
insert into city values(134,'龙岩市',14);   
insert into city values(135,'宁德市',14);   

/*15江西省(2006年全省辖：11个地级市；19个市辖区、10个县级市、70个县。)*/
insert into city values(136,'南昌市',15);   
insert into city values(137,'景德镇市',15);   
insert into city values(138,'萍乡市',15);   
insert into city values(139,'九江市',15);   
insert into city values(140,'新余市',15);   
insert into city values(141,'鹰潭市',15);   
insert into city values(142,'赣州市',15);   
insert into city values(143,'吉安市',15);   
insert into city values(144,'宜春市',15);   
insert into city values(145,'抚州市',15);   
insert into city values(146,'上饶市',15);   

/*16山东省(2005年，辖：17个地级市；49个市辖区、31个县级市、60个县。)*/
insert into city values(147,'济南市',16);   
insert into city values(148,'青岛市',16);   
insert into city values(149,'淄博市',16);   
insert into city values(150,'枣庄市',16);   
insert into city values(151,'东营市',16);   
insert into city values(152,'烟台市',16);   
insert into city values(153,'潍坊市',16);   
insert into city values(154,'济宁市',16);   
insert into city values(155,'泰安市',16);   
insert into city values(156,'威海市',16);   
insert into city values(157,'日照市',16);   
insert into city values(158,'莱芜市',16);   
insert into city values(159,'临沂市',16);   
insert into city values(160,'德州市',16);   
insert into city values(161,'聊城市',16);   
insert into city values(162,'滨州市',16);   
insert into city values(163,'菏泽市',16); 

/*17河南省 17个地级市*/
insert into city values(164,'郑州市',17);   
insert into city values(165,'开封市',17);   
insert into city values(166,'洛阳市',17);   
insert into city values(167,'平顶山市',17);   
insert into city values(168,'安阳市',17);   
insert into city values(169,'鹤壁市',17);   
insert into city values(170,'新乡市',17);   
insert into city values(171,'焦作市',17);   
insert into city values(172,'濮阳市',17);   
insert into city values(173,'许昌市',17);   
insert into city values(174,'漯河市',17);   
insert into city values(175,'三门峡市',17);   
insert into city values(176,'南阳市',17);   
insert into city values(177,'商丘市',17);   
insert into city values(178,'信阳市',17);   
insert into city values(179,'周口市',17);   
insert into city values(180,'驻马店市',17);   
insert into city values(181,'济源市',17);  

/*18湖北省（截至2005年12月31日，全省辖13个地级单位（12个地级市、1个自治州）；102县级单位（38个市辖区、24个县级市、37个县、2个自治县、1个林区），共有1220个乡级单位（277个街道、733个镇、210个乡））*/
insert into city values(182,'武汉市',18);   
insert into city values(183,'黄石市',18);   
insert into city values(184,'十堰市',18);   
insert into city values(185,'荆州市',18);   
insert into city values(186,'宜昌市',18);   
insert into city values(187,'襄樊市',18);   
insert into city values(188,'鄂州市',18);   
insert into city values(189,'荆门市',18);   
insert into city values(190,'孝感市',18);   
insert into city values(191,'黄冈市',18);   
insert into city values(192,'咸宁市',18);   
insert into city values(193,'随州市',18);   
insert into city values(194,'仙桃市',18);   
insert into city values(195,'天门市',18);   
insert into city values(196,'潜江市',18);   
insert into city values(197,'神农架林区',18);   
insert into city values(198,'恩施土家族苗族自治州',18);   

/*19湖南省（2005年辖：13个地级市、1个自治州；34个市辖区、16个县级市、65个县、7个自治县。）*/
insert into city values(199,'长沙市',19);   
insert into city values(200,'株洲市',19);   
insert into city values(201,'湘潭市',19);   
insert into city values(202,'衡阳市',19);   
insert into city values(203,'邵阳市',19);   
insert into city values(204,'岳阳市',19);   
insert into city values(205,'常德市',19);   
insert into city values(206,'张家界市',19);   
insert into city values(207,'益阳市',19);   
insert into city values(208,'郴州市',19);   
insert into city values(209,'永州市',19);   
insert into city values(210,'怀化市',19);   
insert into city values(211,'娄底市',19);   
insert into city values(212,'湘西土家族苗族自治州',19);  

/*20广东省（截至2005年12月31日，广东省辖：21个地级市，54个市辖区、23个县级市、41个县、3个自治县，429个街道办事处、1145个镇、4个乡、7个民族乡。）*/
insert into city values(213,'广州市',20);   
insert into city values(214,'深圳市',20);   
insert into city values(215,'珠海市',20);   
insert into city values(216,'汕头市',20);   
insert into city values(217,'韶关市',20);   
insert into city values(218,'佛山市',20);   
insert into city values(219,'江门市',20);   
insert into city values(220,'湛江市',20);   
insert into city values(221,'茂名市',20);   
insert into city values(222,'肇庆市',20);   
insert into city values(223,'惠州市',20);   
insert into city values(224,'梅州市',20);   
insert into city values(225,'汕尾市',20);   
insert into city values(226,'河源市',20);   
insert into city values(227,'阳江市',20);   
insert into city values(228,'清远市',20);   
insert into city values(229,'东莞市',20);   
insert into city values(230,'中山市',20);   
insert into city values(231,'潮州市',20);   
insert into city values(232,'揭阳市',20);   
insert into city values(233,'云浮市',20);  

/*21甘肃省 12个地级市、2个自治州*/
insert into city values(234,'兰州市',21);   
insert into city values(235,'金昌市',21);   
insert into city values(236,'白银市',21);   
insert into city values(237,'天水市',21);   
insert into city values(238,'嘉峪关市',21);   
insert into city values(239,'武威市',21);   
insert into city values(240,'张掖市',21);   
insert into city values(241,'平凉市',21);   
insert into city values(242,'酒泉市',21);   
insert into city values(243,'庆阳市',21);   
insert into city values(244,'定西市',21);   
insert into city values(245,'陇南市',21);   
insert into city values(246,'临夏回族自治州',21);   
insert into city values(247,'甘南藏族自治州',21); 

/*22四川省18个地级市、3个自治州*/
insert into city values(248,'成都市',22);   
insert into city values(249,'自贡市',22);   
insert into city values(250,'攀枝花市',22);   
insert into city values(251,'泸州市',22);   
insert into city values(252,'德阳市',22);   
insert into city values(253,'绵阳市',22);   
insert into city values(254,'广元市',22);   
insert into city values(255,'遂宁市',22);   
insert into city values(256,'内江市',22);   
insert into city values(257,'乐山市',22);   
insert into city values(258,'南充市',22);   
insert into city values(259,'眉山市',22);   
insert into city values(260,'宜宾市',22);   
insert into city values(261,'广安市',22);   
insert into city values(262,'达州市',22);   
insert into city values(263,'雅安市',22);   
insert into city values(264,'巴中市',22);   
insert into city values(265,'资阳市',22);   
insert into city values(266,'阿坝藏族羌族自治州',22);   
insert into city values(267,'甘孜藏族自治州',22);   
insert into city values(268,'凉山彝族自治州',22);

/*23贵州省(2006年辖：4个地级市、2个地区、3个自治州；10个市辖区、9个县级市、56个县、11个自治县、2个特区。)*/
insert into city values(269,'贵阳市',23);   
insert into city values(270,'六盘水市',23);   
insert into city values(271,'遵义市',23);   
insert into city values(272,'安顺市',23);   
insert into city values(273,'铜仁地区',23);   
insert into city values(274,'毕节地区',23);   
insert into city values(275,'黔西南布依族苗族自治州',23);   
insert into city values(276,'黔东南苗族侗族自治州',23);   
insert into city values(277,'黔南布依族苗族自治州',23);   

/*24海南省全省有2个地级市，6个县级市，4个县，6个民族自治县，4个市辖区，1个办事处（西南中沙群岛办事处 ，县级）。)*/
insert into city values(278,'海口市',24);   
insert into city values(279,'三亚市',24);   
insert into city values(280,'五指山市',24);   
insert into city values(281,'琼海市',24);   
insert into city values(282,'儋州市',24);   
insert into city values(283,'文昌市',24);   
insert into city values(284,'万宁市',24);   
insert into city values(285,'东方市',24);   
insert into city values(286,'澄迈县',24);   
insert into city values(287,'定安县',24);   
insert into city values(288,'屯昌县',24);   
insert into city values(289,'临高县',24);   
insert into city values(290,'白沙黎族自治县',24);   
insert into city values(291,'昌江黎族自治县',24);   
insert into city values(292,'乐东黎族自治县',24);   
insert into city values(293,'陵水黎族自治县',24);   
insert into city values(294,'保亭黎族苗族自治县',24);   
insert into city values(295,'琼中黎族苗族自治县',24);

/*25云南省(2006年辖：8个地级市、8个自治州；12个市辖区、9个县级市、79个县、29个自治县。)*/
insert into city values(296,'昆明市',25);   
insert into city values(297,'曲靖市',25);   
insert into city values(298,'玉溪市',25);   
insert into city values(299,'保山市',25);   
insert into city values(300,'昭通市',25);   
insert into city values(301,'丽江市',25);   
insert into city values(302,'思茅市',25);   
insert into city values(303,'临沧市',25);   
insert into city values(304,'文山壮族苗族自治州',25);   
insert into city values(305,'红河哈尼族彝族自治州',25);   
insert into city values(306,'西双版纳傣族自治州',25);   
insert into city values(307,'楚雄彝族自治州',25);   
insert into city values(308,'大理白族自治州',25);   
insert into city values(309,'德宏傣族景颇族自治州',25);   
insert into city values(310,'怒江傈傈族自治州',25);   
insert into city values(311,'迪庆藏族自治州',25); 

/*26青海省(2006年辖：1个地级市、1个地区、6个自治州；4个市辖区、2个县级市、30个县、7个自治县。)*/
insert into city values(312,'西宁市',26);   
insert into city values(313,'海东地区',26);   
insert into city values(314,'海北藏族自治州',26);   
insert into city values(315,'黄南藏族自治州',26);   
insert into city values(316,'海南藏族自治州',26);   
insert into city values(317,'果洛藏族自治州',26);   
insert into city values(318,'玉树藏族自治州',26);   
insert into city values(319,'海西蒙古族藏族自治州',26);  

/*27陕西省(2006年辖：10个地级市；24个市辖区、3个县级市、80个县。)*/
insert into city values(320,'西安市',27);   
insert into city values(321,'铜川市',27);   
insert into city values(322,'宝鸡市',27);   
insert into city values(323,'咸阳市',27);   
insert into city values(324,'渭南市',27);   
insert into city values(325,'延安市',27);   
insert into city values(326,'汉中市',27);   
insert into city values(327,'榆林市',27);   
insert into city values(328,'安康市',27);   
insert into city values(329,'商洛市',27);

/*28广西壮族自治区(2005年辖：14个地级市；34个市辖区、7个县级市、56个县、12个自治县。)*/
insert into city values(330,'南宁市',28);   
insert into city values(331,'柳州市',28);   
insert into city values(332,'桂林市',28);   
insert into city values(333,'梧州市',28);   
insert into city values(334,'北海市',28);   
insert into city values(335,'防城港市',28);   
insert into city values(336,'钦州市',28);   
insert into city values(337,'贵港市',28);   
insert into city values(338,'玉林市',28);   
insert into city values(339,'百色市',28);   
insert into city values(340,'贺州市',28);   
insert into city values(341,'河池市',28);   
insert into city values(342,'来宾市',28);   
insert into city values(343,'崇左市',28);  

/*29西藏自治区(2005年辖：1个地级市、6个地区；1个市辖区、1个县级市、71个县。)*/
insert into city values(344,'拉萨市',29);   
insert into city values(345,'那曲地区',29);   
insert into city values(346,'昌都地区',29);   
insert into city values(347,'山南地区',29);   
insert into city values(348,'日喀则地区',29);   
insert into city values(349,'阿里地区',29);   
insert into city values(350,'林芝地区',29);   

/*30宁夏回族自治区*/
insert into city values(351,'银川市',30);   
insert into city values(352,'石嘴山市',30);   
insert into city values(353,'吴忠市',30);   
insert into city values(354,'固原市',30);   
insert into city values(355,'中卫市',30);

/*31新疆维吾尔自治区(2005年辖：2个地级市、7个地区、5个自治州；11个市辖区、20个县级市、62个县、6个自治县)*/
insert into city values(356,'乌鲁木齐市',31);   
insert into city values(357,'克拉玛依市',31);   
insert into city values(358,'石河子市　',31);   
insert into city values(359,'阿拉尔市',31);   
insert into city values(360,'图木舒克市',31);   
insert into city values(361,'五家渠市',31);   
insert into city values(362,'吐鲁番市',31);   
insert into city values(363,'阿克苏市',31);   
insert into city values(364,'喀什市',31);   
insert into city values(365,'哈密市',31);   
insert into city values(366,'和田市',31);   
insert into city values(367,'阿图什市',31);   
insert into city values(368,'库尔勒市',31);   
insert into city values(369,'昌吉市　',31);   
insert into city values(370,'阜康市',31);   
insert into city values(371,'米泉市',31);   
insert into city values(372,'博乐市',31);   
insert into city values(373,'伊宁市',31);   
insert into city values(374,'奎屯市',31);   
insert into city values(375,'塔城市',31);   
insert into city values(376,'乌苏市',31);   
insert into city values(377,'阿勒泰市',31); 

/*32内蒙古自治区(2006年，辖：9个地级市、3个盟；21个市辖区、11个县级市、17个县、49个旗、3个自治旗。)*/
insert into city values(378,'呼和浩特市',32);   
insert into city values(379,'包头市',32);   
insert into city values(380,'乌海市',32);   
insert into city values(381,'赤峰市',32);   
insert into city values(382,'通辽市',32);   
insert into city values(383,'鄂尔多斯市',32);   
insert into city values(384,'呼伦贝尔市',32);   
insert into city values(385,'巴彦淖尔市',32);   
insert into city values(386,'乌兰察布市',32);   
insert into city values(387,'锡林郭勒盟',32);   
insert into city values(388,'兴安盟',32);   
insert into city values(389,'阿拉善盟',32);   

/*33澳门特别行政区*/
insert into city values(390,'澳门特别行政区',33);   

/*34香港特别行政区*/
insert into city values(391,'香港特别行政区',34);


#插入用户信息
INSERT INTO ali_user VALUES
(NULL, 'dingding', '123456', 'ding@qq.com', '13501234567', 'img/avatar/default.png', '丁伟', '1'),
(NULL, 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '林当', '1'),
(NULL, 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', '1'),
(NULL, 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', '0');