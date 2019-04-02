/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : 127.0.0.1:3306
Source Database       : emco

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-03-30 18:07:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `about_emco`
-- ----------------------------
DROP TABLE IF EXISTS `about_emco`;
CREATE TABLE `about_emco` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `s_title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `miaoshu` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of about_emco
-- ----------------------------
INSERT INTO `about_emco` VALUES ('0000000001', '/static/upload/8f501d1f3b4cdf8b/843da601742543de.jpg', '入口垫与传统', '高品质和安全：50多年', '', '<p>50多年来，emco一直致力于为商业建筑开发和生产定制的入口消光系统。该公司的高质量和安全标准使emco成为德国市场的领导者和世界上最畅销的供应商。</p>\r\n\r\n<p>除了先进的入口垫系统，清洁地板覆盖物和地毯垫外，产品系列还包括用于游泳池和管道应用的高质量炉排。</p>\r\n\r\n<p>emco也有优质服务的传统：我们从一开始就为世界各地的客户提供最佳产品选择方面的建议，我们也可以在安装后使用专业知识和专业设备。质量传统 - 与emco！</p>', '');
INSERT INTO `about_emco` VALUES ('0000000002', '/static/upload/c331d18c9f455185/51ecd535fa7b706e.jpg', '污垢保留解决方案的市场领导者', 'emco：高标准和定制解决方案', '/index/index/entrance_mats.html', '<p>&nbsp;Lingen的入口垫系统面向全世界：为了质量和品种，emco的入口垫解决方案是独一无二的！初始材料选择和工艺都体现了高品质，直至最细微的细节。 &nbsp;emco有着多样化的传统：我们的使命是填补市场上的每一个空白，以满足客户的需求。除了经过时间考验的系统标准外，我们还可以为每个要求提供高度专业化的系统。 &nbsp;通过3区清洁，emco率先开发了一个多级，完美协调的系统，用于清洁入口区域。使用emco入口垫：保持入口区域清洁！</p>', '有关EMCO污垢保持解决方案的更多信息');
INSERT INTO `about_emco` VALUES ('0000000003', '/static/upload/047967fd5d5e5ce4/260c904e378778a4.jpg', 'emco 设计干净的入口', '', '', '<p>迈出洁净度的第一步 - 在我们的入口消光系统上。我们是世界领先的入口垫系统制造商之一，旨在减少建筑物中的污垢和潮湿。</p>\r\n\r\n<p>我们的系统不仅可以保护建筑物及其用户。结合定制设计和高品质的工艺，他们帮助任何入口区域自己的大门。</p>', '');
INSERT INTO `about_emco` VALUES ('0000000004', '/static/upload/b7601640d2e999d4/b1cd193ba0d731ea.jpg', '您的解决方案提供', '服务与产品质量和谐相处', '/index/index/expertise.html', '<p>emco提供高品质的产品和独特的一站式服务：从购买前的入口垫系统的建议和设计到一流的清洁和维护工作：我们随时为您服务！</p>\r\n\r\n<p>作为优质入口垫系统的专家，emco结合专业知识和尖端设备，定期超越您的要求：我们解决您的问题，以便您快速获得其他任务</p>', '了解emco的专业知识');
INSERT INTO `about_emco` VALUES ('0000000005', '/static/upload/ceb9e151d3ad6e6a/de81ac5d4eee786e.jpg', '入口垫作为设计元素', '请相信我们：保持入口区域清洁', 'index/index/entrance_mats_range.html', '<p>学习以不同的方式看待入口垫：使用emco，比&ldquo;仅仅&rdquo;减少污垢系统更有可能。emco入口垫可以无数种变化和组合集成到您的建筑中，</p>\r\n\r\n<p>几乎任何形状都可以。凭借特殊形状，配色方案，插入组合，附加型材和框架解决方案，emco入口垫将功能与设计结合在一起，为着名的入口提供了便利！</p>', 'emco 入口垫品种');

-- ----------------------------
-- Table structure for `about_expertise`
-- ----------------------------
DROP TABLE IF EXISTS `about_expertise`;
CREATE TABLE `about_expertise` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `s_title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `miaoshu` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of about_expertise
-- ----------------------------
INSERT INTO `about_expertise` VALUES ('0000000001', '/static/upload/91eae8e0a972fd41/f3c388f316c23345.jpg', 'emco 设计干净的入口', '', '/index/index/emco_bau.html', '<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">迈出洁净度的第一步 - 在我们的入口消光系统上。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">我们是世界领先的入口垫系统制造商之一，旨在减少建筑物中的污垢和潮湿。</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">我们的系统不仅可以保护建筑物及其用户。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">结合定制设计和高品质的工艺，他们帮助任何入口区域自己的大门。</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>', '了解更多emco信息');
INSERT INTO `about_expertise` VALUES ('0000000002', '/static/upload/4d55250cdb7132a4/a9f52394d366840d.png', '备受推崇：参考文献', '', '/index/index/references.html', '<p>我们是制造高品质入口垫的世界领先者，这就是为什么我们在满意的客户中统计领先的公司和国际业务</p>', '了解更多');
INSERT INTO `about_expertise` VALUES ('0000000003', '/static/upload/4c986e42a2b978cd/d778b5fc6dc5bbc4.png', '建议和服务', '', '/index/index/entrance_mats_service.html', '<p>我们通过规划您选择的入口垫来支持您。我们确保您的系统随着时间的推移保持其外观和功能。</p>\r\n\r\n<p>充分利用我们作为高品质入口垫市场领导者的专业知识。</p>', '建议和服务');
INSERT INTO `about_expertise` VALUES ('0000000004', '/static/upload/4172439200f13645/646acd36163534bb.jpg', '游泳池格栅', '安全，卫生，耐用', 'index/index/swimming.html', '<p>emco游泳池格栅有效收集溢出的水，脚部温和，并提供卓越的安全和卫生标准。 实际上每种形状都是可能的。我们的格栅具有安全型密封和安全认证。emco代表着&ldquo;德国制造&rdquo;的优质产品和专业技术。</p>', '更多关于游泳池栅格');
INSERT INTO `about_expertise` VALUES ('0000000005', '/static/upload/7af12e8d7ab9799b/a274fb46eeb01c96.jpg', 'emco地毯垫', '定制的形状和图案', '/index/index/carpet_mats.html', '<p>多年来，emco的地毯垫代表了高级工艺和最大的个性。除了标准格式外，形状垫可以几乎任何格式组成。 除了45种明亮的标准颜色外，我们还可以根据您的要求打印特殊颜色。甚至细节也可以在图案中清晰地看到。</p>\r\n\r\n<p>emco设计垫：与您一样个性化！</p>', '更多关于地毯垫');
INSERT INTO `about_expertise` VALUES ('0000000006', '/static/upload/a5fa9a1c52f04895/6bcf876bd9246efa.jpg', '来自emco的服务', '当你需要我们时，我们就在你身边！', '/index/index/contact.html', '<p>我们为我们的产品感到自豪，并保证我们的材料和工艺的卓越品质。emco产品经过认证，在生产过程中经过多项质量控制。</p>\r\n\r\n<p>如果仍然没有按照您的预期运作，我们的客户服务就在您身边。我们将竭诚为您服务！</p>\r\n\r\n<h3><span style=\"font-size:20px;\">电话:&nbsp;+49 591 / 9140 0</span></h3>', '电邮我们');

-- ----------------------------
-- Table structure for `about_img`
-- ----------------------------
DROP TABLE IF EXISTS `about_img`;
CREATE TABLE `about_img` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `content` text,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of about_img
-- ----------------------------
INSERT INTO `about_img` VALUES ('0000000001', '经过测试和认证', '/index/index/research_and_development.html', '<p>emco入口垫定期接受质量控制和认证，从开发到交付。这确保了每个入口垫符合我们的高质量标准</p>', '/static/upload/9d06aeeae3db6bcc/c89e0cf84965a0fe.png');
INSERT INTO `about_img` VALUES ('0000000002', '可持续产品', '/index/index/research_and_development.html', '<p>德国可持续建筑委员会（DGNB）的成员：高质量的工艺，长久的使用寿命以及整个产品生命周期中生态方面的整合确保了我们产品的可持续性.</p>', '/static/upload/083df685ccf486a5/efbfdd17d80709e7.png');
INSERT INTO `about_img` VALUES ('0000000003', '安全耐用', '/index/index/research_and_development.html', '<p>我们的入口垫防滑，降低了发生事故的风险。它们通过减少污垢来改善卫生条件。根据欧盟标准，许多产品也有防火版本。</p>', '/static/upload/a66990ee9c530a6c/7caf147b09923658.png');

-- ----------------------------
-- Table structure for `aninfo`
-- ----------------------------
DROP TABLE IF EXISTS `aninfo`;
CREATE TABLE `aninfo` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `a_id` int(10) unsigned NOT NULL COMMENT '关联案例 id ',
  `img` varchar(255) NOT NULL COMMENT '详情页面案例图',
  `imgs` varchar(255) NOT NULL COMMENT '缩略图',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='关联 anli_table表展示图';

-- ----------------------------
-- Records of aninfo
-- ----------------------------
INSERT INTO `aninfo` VALUES ('0000000001', '1', '/static/upload/9a82e073f4e82472/141f07709be58507.jpg', '/static/upload/08c56996813fb414/dfa4b54b330f45af.jpg', '2019-03-06 11:24:43');
INSERT INTO `aninfo` VALUES ('0000000002', '2', '/static/upload/ceaa85920523799f/09801e47d81e140a.jpg', '/static/upload/a579bef1eb351eae/25180dc592a9fb81.jpg', '2019-03-06 11:24:57');
INSERT INTO `aninfo` VALUES ('0000000003', '1', '/static/upload/9661549dfeee96f4/968df3e83f1a40f2.jpg', '/static/upload/a579bef1eb351eae/25180dc592a9fb81.jpg', '2019-03-06 11:26:22');

-- ----------------------------
-- Table structure for `anli`
-- ----------------------------
DROP TABLE IF EXISTS `anli`;
CREATE TABLE `anli` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `yulanimg` varchar(255) DEFAULT NULL,
  `zansimg` varchar(255) DEFAULT NULL,
  `jianjie` varchar(255) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `nandu` int(10) DEFAULT NULL,
  `tese` int(10) DEFAULT NULL,
  `tuijian` int(10) DEFAULT NULL,
  `reshu` varchar(50) DEFAULT NULL,
  `tianshu` varchar(50) DEFAULT NULL,
  `cheshu` varchar(50) DEFAULT NULL,
  `bushu` varchar(50) DEFAULT NULL,
  `didian` varchar(50) DEFAULT NULL,
  `content` text,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of anli
-- ----------------------------
INSERT INTO `anli` VALUES ('1', '这是名称', '/static/upload/24a1160e2b8be7b8/a7b94e0844ec6231.png', '/static/upload/5e165d68aee4d82c/c4bdd49e4d7dc1fe.png', '这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介', '66', '666', '66', '66', '66', '66', '66', '66', '66', '<p>这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介</p>', '2018-12-21 12:07:09');
INSERT INTO `anli` VALUES ('2', '戴德梁行团建方案', '/static/upload/c78f7f2cb8c81499/d4c279bf61dcda2a.jpg', '/static/upload/28a4a283c43a0eed/765665a72930ece1.jpg', '围绕时间为主题定制专属方案', '360', '4', '5', '5', '40', '1', '1.5', '时间去哪儿主题团建方案', '深圳', '<p>一行40人一天的方案</p>', '2018-12-25 15:19:02');
INSERT INTO `anli` VALUES ('3', '灿锐科技新员工拓展培训', '/static/upload/ec5cbc6944cd34c2/fa09afbc400f3e19.jpg', '/static/upload/77d1ada462101d3e/a366febcc6ae09aa.jpg', '新员工拓展', '', '4', '3', '4', '80', '1', '2', '拓展培训一天行程', '七星湾游艇会', '<p>拓展+野炊+烧烤+趣味运动会+羽毛球PK</p>', '2018-12-25 15:21:39');

-- ----------------------------
-- Table structure for `anli_table`
-- ----------------------------
DROP TABLE IF EXISTS `anli_table`;
CREATE TABLE `anli_table` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `p_id` int(10) unsigned NOT NULL COMMENT '产品类别id',
  `h_id` int(10) unsigned NOT NULL COMMENT '地点所属id',
  `c_id` int(10) unsigned NOT NULL COMMENT '国家类别所属id',
  `img` varchar(255) NOT NULL COMMENT '案例图',
  `title` varchar(255) NOT NULL COMMENT '案例标题',
  `heres` varchar(255) NOT NULL COMMENT '产品所在地点',
  `reinfo` text NOT NULL COMMENT '案例介绍',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of anli_table
-- ----------------------------
INSERT INTO `anli_table` VALUES ('0000000001', '1', '1', '1', '/static/upload/9a82e073f4e82472/141f07709be58507.jpg', 'ECE Stadtgalerie', '德国施韦因富特', 'Schweinfurt市中心的购物和休闲中心没有什么不可取的。约。STADTGALERIE的230米长的光线充足的玻璃屋顶是购物，散步和休闲活动的高品质场所。', '2019-03-06 10:11:27');
INSERT INTO `anli_table` VALUES ('0000000002', '1', '1', '2', '/static/upload/ceaa85920523799f/09801e47d81e140a.jpg', '恩波里亚', '瑞典马尔默', '恩波里亚不仅仅是任何购物中心。这里有三个楼层的200家商店，销售面积68,000平方米，平均每天25,000名游客，是斯堪的纳维亚最大的购物中心之一。', '2019-03-06 10:26:57');

-- ----------------------------
-- Table structure for `banner`
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(255) DEFAULT NULL,
  `img` char(255) DEFAULT NULL,
  `url` char(255) DEFAULT '#',
  `sort` int(11) unsigned DEFAULT '0',
  `status` tinyint(1) unsigned DEFAULT '1',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('7', '趣味运动会', '/static/upload/82b560edee121c35/e2524b816d5c4ae5.jpg', '#', '0', '1', '2018-12-21 09:15:31');
INSERT INTO `banner` VALUES ('8', '花样年会', '/static/upload/4c923f43273acb62/fb477fd3366624e2.jpg', '#', '0', '1', '2018-12-21 09:19:50');
INSERT INTO `banner` VALUES ('9', '年会', '/static/upload/7618a48d0835a945/0f930458400dd3bb.jpg', '#', '0', '1', '2018-12-24 15:45:21');
INSERT INTO `banner` VALUES ('10', '关于我们标题', '', 'http://www.baidu.com', '0', '2', '2018-12-28 11:28:21');
INSERT INTO `banner` VALUES ('11', '标题2', '', 'http://www.baidu.com', '0', '2', '2018-12-28 11:28:35');
INSERT INTO `banner` VALUES ('12', '百度', '', 'http://www.baidu.com', '0', '3', '2018-12-28 11:28:48');

-- ----------------------------
-- Table structure for `brochures`
-- ----------------------------
DROP TABLE IF EXISTS `brochures`;
CREATE TABLE `brochures` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '手册标题',
  `img` varchar(255) NOT NULL COMMENT '手册展示图',
  `info` varchar(255) NOT NULL COMMENT '备注信息',
  `pdf` varchar(255) NOT NULL COMMENT 'pdf文件',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brochures
-- ----------------------------
INSERT INTO `brochures` VALUES ('0000000001', '入口垫系统', '/static/upload/87f3095918d1340b/f800b6eaf238b4b2.jpg', '', '/static/upload/b07de3512a2d0359/c388a120443cd997.pdf', '2019-03-01 17:39:03');
INSERT INTO `brochures` VALUES ('0000000002', '清理系统', '/static/upload/c45833fa57544c00/9e254369856bae90.jpg', '完整范围2020', '/static/upload/2890b8b17fa044aa/e6839ed5d5bcbbd0.pdf', '2019-03-01 17:39:19');
INSERT INTO `brochures` VALUES ('0000000003', '地毯垫', '/static/upload/3bfd416b2cb5dbfe/1f765ddba6b4c11c.jpg', '', '/static/upload/d8302eee2c48cff0/53fa318d5d75a043.pdf', '2019-03-01 17:39:40');
INSERT INTO `brochures` VALUES ('0000000004', '游泳池光栅', '/static/upload/f5b0730f8bfbb571/196d1dea97ec85f6.jpg', '', '/static/upload/443d49b5ba048bb0/d2007e8681440c80.pdf', '2019-03-01 17:39:53');
INSERT INTO `brochures` VALUES ('0000000005', '推广', '/static/upload/aa7901493fadf28b/bf1d8d8ad29cc59b.jpg', '有效的广告', '/static/upload/c4d27fb5457f88d2/91f0732092cf12e6.pdf', '2019-03-01 17:40:06');

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort` int(10) DEFAULT '0',
  `lid` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '101', '3', '户外', '2018-12-26 12:09:57');
INSERT INTO `category` VALUES ('2', '201', '4', '新员工拓展', '2018-12-29 10:13:13');
INSERT INTO `category` VALUES ('3', '102', '3', '室内', '2018-12-26 12:09:57');
INSERT INTO `category` VALUES ('4', '401', '6', '深圳', '2018-12-26 12:11:04');
INSERT INTO `category` VALUES ('5', '301', '5', '户外', '2018-12-26 12:11:04');
INSERT INTO `category` VALUES ('6', '403', '6', '惠州', '2018-12-26 12:11:04');
INSERT INTO `category` VALUES ('7', '402', '6', '广州', '2018-12-26 12:11:04');
INSERT INTO `category` VALUES ('8', '302', '5', '室内', '2018-12-26 12:11:04');
INSERT INTO `category` VALUES ('12', '404', '6', '东莞', '2018-12-26 12:11:04');
INSERT INTO `category` VALUES ('13', '405', '6', '清远', '2018-12-26 12:12:28');
INSERT INTO `category` VALUES ('14', '202', '4', '管理团队拓展', '2018-12-29 10:13:36');
INSERT INTO `category` VALUES ('15', '203', '4', '销售团队拓展', '2018-12-29 10:13:52');
INSERT INTO `category` VALUES ('16', '204', '4', '团队魔训', '2018-12-29 10:15:08');
INSERT INTO `category` VALUES ('17', '205', '4', '海岛生存', '2018-12-29 10:15:25');

-- ----------------------------
-- Table structure for `clear_banner`
-- ----------------------------
DROP TABLE IF EXISTS `clear_banner`;
CREATE TABLE `clear_banner` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `ltid` int(10) unsigned NOT NULL COMMENT '关联清理产品id',
  `img` varchar(255) NOT NULL,
  `small_img` varchar(255) NOT NULL COMMENT '轮播图下方的小图',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='清理产品轮播图';

-- ----------------------------
-- Records of clear_banner
-- ----------------------------
INSERT INTO `clear_banner` VALUES ('0000000004', '3', '/static/upload/9661549dfeee96f4/968df3e83f1a40f2.jpg', '/static/upload/a579bef1eb351eae/25180dc592a9fb81.jpg');
INSERT INTO `clear_banner` VALUES ('0000000002', '2', '/static/upload/9661549dfeee96f4/968df3e83f1a40f2.jpg', '/static/upload/a579bef1eb351eae/25180dc592a9fb81.jpg');
INSERT INTO `clear_banner` VALUES ('0000000003', '2', '/static/upload/9a82e073f4e82472/141f07709be58507.jpg', '/static/upload/08c56996813fb414/dfa4b54b330f45af.jpg');

-- ----------------------------
-- Table structure for `clear_color`
-- ----------------------------
DROP TABLE IF EXISTS `clear_color`;
CREATE TABLE `clear_color` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `ltid` int(10) unsigned NOT NULL COMMENT '对应clear_t中的产品id',
  `img` varchar(255) NOT NULL COMMENT '颜色图',
  `title` varchar(255) NOT NULL COMMENT '名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='清理产品颜色表';

-- ----------------------------
-- Records of clear_color
-- ----------------------------
INSERT INTO `clear_color` VALUES ('0000000001', '2', '/static/upload/88bb60bbab7f582f/3d6936310ca50161.jpg', '第一个');
INSERT INTO `clear_color` VALUES ('0000000002', '2', '/static/upload/d5b89f41a09fc439/4189be0ae1c2aac2.jpg', 'f第二个');
INSERT INTO `clear_color` VALUES ('0000000003', '3', '/static/upload/fadd24a3202849d1/cda669e1394c784c.jpg', '111');

-- ----------------------------
-- Table structure for `clear_ress`
-- ----------------------------
DROP TABLE IF EXISTS `clear_ress`;
CREATE TABLE `clear_ress` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `ltid` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL COMMENT '清理参考标题',
  `img` varchar(255) NOT NULL COMMENT '清理参考图',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clear_ress
-- ----------------------------
INSERT INTO `clear_ress` VALUES ('0000000001', '2', '11111', '/static/upload/d700dc9a08c27e29/001757e5e64cb249.jpg');
INSERT INTO `clear_ress` VALUES ('0000000002', '3', '456654564', '/static/upload/c5759267f3a03050/ec0fc4b46b4ed981.jpg');

-- ----------------------------
-- Table structure for `clear_shiping`
-- ----------------------------
DROP TABLE IF EXISTS `clear_shiping`;
CREATE TABLE `clear_shiping` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `ltid` int(10) unsigned NOT NULL COMMENT '对应clear_t中的产品id',
  `img` varchar(255) NOT NULL COMMENT '颜色图',
  `title` varchar(255) NOT NULL COMMENT '名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='清理产品颜色表';

-- ----------------------------
-- Records of clear_shiping
-- ----------------------------
INSERT INTO `clear_shiping` VALUES ('0000000001', '2', '/static/upload/2a1c344ae3af5a51/2867fe4cd4596871.jpg', '第一个视频');
INSERT INTO `clear_shiping` VALUES ('0000000002', '2', '/static/upload/2e28acd057277c36/65099a1599f00ac9.jpg', '第二个饰品');
INSERT INTO `clear_shiping` VALUES ('0000000003', '3', '/static/upload/9661549dfeee96f4/968df3e83f1a40f2.jpg', '546564');

-- ----------------------------
-- Table structure for `clear_t`
-- ----------------------------
DROP TABLE IF EXISTS `clear_t`;
CREATE TABLE `clear_t` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '关联清理类别id',
  `title` varchar(255) NOT NULL COMMENT '清理 标题',
  `small_title` varchar(255) NOT NULL COMMENT '二级标题',
  `img` varchar(255) NOT NULL COMMENT '展示图',
  `shigong` varchar(100) NOT NULL COMMENT '施工',
  `jiban` varchar(100) NOT NULL COMMENT '堆在基板上面	',
  `jicai` varchar(100) NOT NULL COMMENT '基材材料	',
  `beichun` varchar(100) NOT NULL COMMENT '背衬材料	',
  `tubiao` text NOT NULL COMMENT '产品图标',
  `zhuangkg` varchar(100) NOT NULL COMMENT '桩重/纤维重量	',
  `zongkg` varchar(100) NOT NULL COMMENT '总重量',
  `height` varchar(100) NOT NULL COMMENT '总高',
  `cuimi` varchar(100) NOT NULL COMMENT '簇密度/平方米	',
  `shao` varchar(100) NOT NULL COMMENT '燃烧',
  `shushi` varchar(100) NOT NULL COMMENT '舒适价值	',
  `fanghua` varchar(100) NOT NULL COMMENT '防滑性',
  `zhengshu` varchar(100) NOT NULL COMMENT '证书',
  `juan` varchar(255) NOT NULL COMMENT '作为卷提供	',
  `dian` varchar(255) NOT NULL COMMENT '作为垫子提供	',
  `chanp` varchar(100) NOT NULL COMMENT '产品特性	',
  `pushe` varchar(255) NOT NULL COMMENT '铺设',
  `color` varchar(255) NOT NULL COMMENT '颜色信息',
  `tetra` varchar(255) NOT NULL COMMENT '清洁的',
  `pai` varchar(100) NOT NULL COMMENT '牌子',
  `wenshu_pdf` varchar(255) NOT NULL COMMENT '文书pdf',
  `zhanpiao_pdf` varchar(255) NOT NULL COMMENT '招标文件文本',
  `clear_pdf` varchar(255) NOT NULL COMMENT '3区清洁pdf ',
  `shouce_pdf` varchar(255) NOT NULL COMMENT '手册',
  `pro_pdf` varchar(255) NOT NULL COMMENT '产品数据表',
  `model` varchar(255) NOT NULL COMMENT '模型',
  `lianxi` varchar(255) NOT NULL COMMENT '联系',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clear_t
-- ----------------------------
INSERT INTO `clear_t` VALUES ('0000000002', '1', 'maximus', 'maximus', '/static/upload/1dc0fe95263d4b0e/60debc97bb439db0.jpg', '111', '22', '2222', '222222', '/static/upload/07adabd75b35d0a7/3433dc87c6789687.jpg|/static/upload/07c8f659ecc51b1b/23ce7effaf112c36.jpg|/static/upload/99d80dac7cab3390/bd05a727f062bd1d.jpg', '22222', '2222', '222', '2222', '222', '2222', '11111111', '122222', '22,3,44', '454，889,888', '胡思思就是', '如法网乳房烦人付付吧吧吧v', '第一个额颜色,第二个颜色,点歌,当个讲', '用强力刷式真空吸尘器去除污垢。建议将喷雾提取过程定期进行基本清洁。用大量水清洗绝对没问题，水温不应高于40°C。不要使用氯化碳氢化合物（Tetra）。', '', '', '', '', '', '', 'MAXIMUS®', '8778988989', '2019-03-22 09:30:05');
INSERT INTO `clear_t` VALUES ('0000000003', '2', '图爱选哪个', '点点点', '/static/upload/ceaa85920523799f/09801e47d81e140a.jpg', '888', '1222222222', '22', '222222222222222', '/static/upload/a5bf260d5b85f6d4/7104b39838944800.jpg|/static/upload/a5bf260d5b85f6d4/7104b39838944800.jpg|/static/upload/556ecca328345298/f92eaf4e38ea4957.jpg|/static/upload/69c0d7e6a5f653b7/52cda0dd9bd85227.jpg', '3333333', '44', '55', '554', '64556', '54665', '554456', '454', '44', '55', '6565', '58', '', '888', '', '', '', '', '', '', '888', '888', '2019-03-22 09:30:28');

-- ----------------------------
-- Table structure for `clear_title`
-- ----------------------------
DROP TABLE IF EXISTS `clear_title`;
CREATE TABLE `clear_title` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '清理系统标题',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clear_title
-- ----------------------------
INSERT INTO `clear_title` VALUES ('0000000001', 'MAXIMUS®');
INSERT INTO `clear_title` VALUES ('0000000002', 'MAXIMUS®图像');
INSERT INTO `clear_title` VALUES ('0000000003', '关心');
INSERT INTO `clear_title` VALUES ('0000000004', 'MAXIMUS®辅助');
INSERT INTO `clear_title` VALUES ('0000000005', 'INNOVA');
INSERT INTO `clear_title` VALUES ('0000000006', '声望');
INSERT INTO `clear_title` VALUES ('0000000007', 'CONTURA');
INSERT INTO `clear_title` VALUES ('0000000008', '刮');
INSERT INTO `clear_title` VALUES ('0000000009', '符合');
INSERT INTO `clear_title` VALUES ('0000000010', 'CONFORM SE');
INSERT INTO `clear_title` VALUES ('0000000011', '焦点');
INSERT INTO `clear_title` VALUES ('0000000012', '交通');
INSERT INTO `clear_title` VALUES ('0000000013', 'PREMIUM');
INSERT INTO `clear_title` VALUES ('0000000014', 'emcoAttachéRS');
INSERT INTO `clear_title` VALUES ('0000000015', '饰品');

-- ----------------------------
-- Table structure for `condition`
-- ----------------------------
DROP TABLE IF EXISTS `condition`;
CREATE TABLE `condition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort` int(2) DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `conid` int(11) DEFAULT '0',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of condition
-- ----------------------------
INSERT INTO `condition` VALUES ('1', '0', '拓展目的', '0', '2018-12-18 18:37:30');
INSERT INTO `condition` VALUES ('3', '0', '拓展场地', '0', '2018-12-19 17:12:18');
INSERT INTO `condition` VALUES ('4', '0', '拓展人数', '0', '2018-12-19 17:13:04');
INSERT INTO `condition` VALUES ('5', '0', '拓展天数', '0', '2018-12-19 17:14:55');
INSERT INTO `condition` VALUES ('6', '0', '团队凝聚力', '1', '2018-12-19 17:19:44');

-- ----------------------------
-- Table structure for `contact`
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL COMMENT '地址',
  `jibie` int(10) unsigned DEFAULT NULL COMMENT '专家级别',
  `sex` int(10) unsigned DEFAULT NULL COMMENT '性别',
  `names` varchar(200) DEFAULT NULL COMMENT '名字',
  `xing` varchar(100) DEFAULT NULL COMMENT '姓氏',
  `street` varchar(255) DEFAULT NULL COMMENT '街道',
  `number` char(100) DEFAULT NULL COMMENT '门牌号',
  `zip_code` int(10) unsigned DEFAULT NULL COMMENT '邮政编码',
  `city` varchar(255) DEFAULT NULL COMMENT '城市',
  `county` varchar(255) CHARACTER SET utf8 COLLATE utf8_latvian_ci DEFAULT NULL COMMENT '所在国家',
  `email` varchar(255) NOT NULL COMMENT '邮箱地址',
  `tel` varchar(20) NOT NULL COMMENT '电话号码',
  `info` varchar(255) NOT NULL COMMENT '备注信息',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES ('0000000129', '江苏南京', '2', null, '', '', '', '', '0', null, '', '463015578@qq.com', '186752369997', '', '2019-03-05 10:42:22');
INSERT INTO `contact` VALUES ('0000000128', '湖北武汉', '1', null, '', '', '', '', '0', null, '', '732345907@qq.com', '186725558999', '', '2019-03-05 10:34:21');

-- ----------------------------
-- Table structure for `county`
-- ----------------------------
DROP TABLE IF EXISTS `county`;
CREATE TABLE `county` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `ctitle` varchar(255) NOT NULL COMMENT '国家类别',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of county
-- ----------------------------
INSERT INTO `county` VALUES ('0000000001', '德国');
INSERT INTO `county` VALUES ('0000000002', '瑞典');
INSERT INTO `county` VALUES ('0000000003', '荷兰');
INSERT INTO `county` VALUES ('0000000004', '法国');
INSERT INTO `county` VALUES ('0000000005', '比利时');
INSERT INTO `county` VALUES ('0000000006', '中国');
INSERT INTO `county` VALUES ('0000000007', '奥地利');

-- ----------------------------
-- Table structure for `dingzhi`
-- ----------------------------
DROP TABLE IF EXISTS `dingzhi`;
CREATE TABLE `dingzhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cfd` varchar(255) DEFAULT NULL,
  `mdd` varchar(255) DEFAULT NULL,
  `csrs` varchar(255) DEFAULT NULL,
  `etrs` varchar(255) DEFAULT NULL,
  `hdts` varchar(255) DEFAULT NULL,
  `hdys` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT '0',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dingzhi
-- ----------------------------
INSERT INTO `dingzhi` VALUES ('1', '出发地', '目的地', '10', '1', '20', '500', '特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求', '10086', '女士', '10010', '4845', '0', '2018-12-27 11:43:31');

-- ----------------------------
-- Table structure for `down_title`
-- ----------------------------
DROP TABLE IF EXISTS `down_title`;
CREATE TABLE `down_title` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of down_title
-- ----------------------------
INSERT INTO `down_title` VALUES ('0000000001', '产品图片');
INSERT INTO `down_title` VALUES ('0000000002', '技术图纸');
INSERT INTO `down_title` VALUES ('0000000003', '招标文本');
INSERT INTO `down_title` VALUES ('0000000004', '产品数据表');
INSERT INTO `down_title` VALUES ('0000000005', '手册');
INSERT INTO `down_title` VALUES ('0000000006', '建筑物业主的信息');
INSERT INTO `down_title` VALUES ('0000000007', '3区清洁系统');
INSERT INTO `down_title` VALUES ('0000000009', '装修/现代化');

-- ----------------------------
-- Table structure for `dt_banner`
-- ----------------------------
DROP TABLE IF EXISTS `dt_banner`;
CREATE TABLE `dt_banner` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `did` int(10) unsigned NOT NULL COMMENT '地毯垫id',
  `img` varchar(255) NOT NULL COMMENT '地毯垫详情页面轮播图',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dt_banner
-- ----------------------------
INSERT INTO `dt_banner` VALUES ('0000000001', '1', '/static/upload/5c3c1661efc76f51/f647360a7e22ba2e.jpg');
INSERT INTO `dt_banner` VALUES ('0000000003', '2', '/static/upload/e9aeec92f202fea0/3bfd9d239a5d91ae.jpg');
INSERT INTO `dt_banner` VALUES ('0000000004', '3', '/static/upload/5e0c386220673c50/2f01982f80a96450.jpg');
INSERT INTO `dt_banner` VALUES ('0000000005', '4', '/static/upload/23e1467c8bf8330a/d555ad57a3e96c2e.jpg');
INSERT INTO `dt_banner` VALUES ('0000000006', '1', '/static/upload/23e1467c8bf8330a/d555ad57a3e96c2e.jpg');

-- ----------------------------
-- Table structure for `dt_color`
-- ----------------------------
DROP TABLE IF EXISTS `dt_color`;
CREATE TABLE `dt_color` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `did` int(10) unsigned NOT NULL COMMENT '地毯垫id',
  `img` varchar(255) NOT NULL COMMENT '地毯地颜色图',
  `title` char(100) NOT NULL COMMENT '颜色标题 ',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dt_color
-- ----------------------------
INSERT INTO `dt_color` VALUES ('0000000001', '1', '/static/upload/ab46fa13f55b2de7/b096574c181a9d8a.jpg', '11111');
INSERT INTO `dt_color` VALUES ('0000000002', '1', '/static/upload/8ac360ead2a1253d/3a5730ed6291b6f0.jpg', '2222');

-- ----------------------------
-- Table structure for `dt_dian`
-- ----------------------------
DROP TABLE IF EXISTS `dt_dian`;
CREATE TABLE `dt_dian` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `names` varchar(255) NOT NULL COMMENT '地毯垫名称',
  `img` varchar(255) NOT NULL COMMENT '地毯垫展示图',
  `tuizhi` varchar(255) NOT NULL COMMENT '技术图纸',
  `shuju` text NOT NULL COMMENT '技术数据',
  `sz_table` varchar(255) NOT NULL COMMENT '产品数据表',
  `shou_ce` varchar(255) NOT NULL COMMENT '手册',
  `info` varchar(255) NOT NULL COMMENT '建筑物业信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dt_dian
-- ----------------------------
INSERT INTO `dt_dian` VALUES ('0000000001', '经典', '/static/upload/5c3c1661efc76f51/f647360a7e22ba2e.jpg', '/static/upload/69c7f12c727f46d1/cce8d7659a16b41c.jpg', '', '/static/upload/4a3dcf14b921bae9/a875590005aa953d.pdf', '/static/upload/787e81e5382e9dcf/6f0dfafa2a23e761.pdf', '/static/upload/6f72e1d592661c1b/10445dcb5c60860f.pdf');
INSERT INTO `dt_dian` VALUES ('0000000002', '图片', '/static/upload/e9aeec92f202fea0/3bfd9d239a5d91ae.jpg', '/static/upload/e9aeec92f202fea0/3bfd9d239a5d91ae.jpg', '', '', '', '');
INSERT INTO `dt_dian` VALUES ('0000000003', '图片样式', '/static/upload/5e0c386220673c50/2f01982f80a96450.jpg', '/static/upload/5e0c386220673c50/2f01982f80a96450.jpg', '', '', '', '');
INSERT INTO `dt_dian` VALUES ('0000000004', '图像户外', '/static/upload/23e1467c8bf8330a/d555ad57a3e96c2e.jpg', '/static/upload/23e1467c8bf8330a/d555ad57a3e96c2e.jpg', '', '', '', '');

-- ----------------------------
-- Table structure for `fanche`
-- ----------------------------
DROP TABLE IF EXISTS `fanche`;
CREATE TABLE `fanche` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '翻车类别名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fanche
-- ----------------------------
INSERT INTO `fanche` VALUES ('0000000001', '轮椅');
INSERT INTO `fanche` VALUES ('0000000002', '童车');
INSERT INTO `fanche` VALUES ('0000000003', '轻便购物手推车');
INSERT INTO `fanche` VALUES ('0000000004', '手推车');
INSERT INTO `fanche` VALUES ('0000000005', '汽车');
INSERT INTO `fanche` VALUES ('0000000006', '托盘搬运车');
INSERT INTO `fanche` VALUES ('0000000007', 'HGV（最高7.5吨）');

-- ----------------------------
-- Table structure for `foots`
-- ----------------------------
DROP TABLE IF EXISTS `foots`;
CREATE TABLE `foots` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '脚步声名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of foots
-- ----------------------------
INSERT INTO `foots` VALUES ('0000000001', '每日人流量高达400');
INSERT INTO `foots` VALUES ('0000000002', '每日人流量高达400');
INSERT INTO `foots` VALUES ('0000000003', '每日人流量高达1000');
INSERT INTO `foots` VALUES ('0000000004', '每日人流量在2000以上');
INSERT INTO `foots` VALUES ('0000000005', '每日足迹达5000或以上');
INSERT INTO `foots` VALUES ('0000000006', '每日客流量高达800');

-- ----------------------------
-- Table structure for `foot_url`
-- ----------------------------
DROP TABLE IF EXISTS `foot_url`;
CREATE TABLE `foot_url` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `fid` int(10) unsigned NOT NULL COMMENT '分类id',
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of foot_url
-- ----------------------------
INSERT INTO `foot_url` VALUES ('0000000001', '1', 'emco 入口垫', '/index/index/entrance_mats.html');
INSERT INTO `foot_url` VALUES ('0000000002', '1', 'emco 地毯垫', '/index/index/carpet_mats.html');
INSERT INTO `foot_url` VALUES ('0000000003', '1', 'emco 净化系统', '/index/index/clean_off.html');
INSERT INTO `foot_url` VALUES ('0000000004', '1', 'emco 游泳池格栅', '/index/index/swimming.html');
INSERT INTO `foot_url` VALUES ('0000000005', '1', '入口垫范围', '/index/index/entrance_mats_range.html');
INSERT INTO `foot_url` VALUES ('0000000006', '1', '3区的清洁', '/index/index/zone_cleaning.html');
INSERT INTO `foot_url` VALUES ('0000000007', '1', 'ECOLINE®PIONEER', '/index/index/ecolinerpioneer.html');
INSERT INTO `foot_url` VALUES ('0000000008', '1', 'emco 触觉引导系统', '/index/index/tactile_guidance_system.html');
INSERT INTO `foot_url` VALUES ('0000000009', '1', 'emco INOX®', '/index/index/inox.html');
INSERT INTO `foot_url` VALUES ('0000000010', '1', '入口垫配件', '/index/index/entrance_mat_accessories.html');
INSERT INTO `foot_url` VALUES ('0000000011', '2', '建筑师和规划师', '/index/index/architects.html');
INSERT INTO `foot_url` VALUES ('0000000012', '2', '物业投资者和开发商', '/index/index/building_contractors.html');
INSERT INTO `foot_url` VALUES ('0000000013', '2', '贸易和工匠', '/index/index/floor_fitters.html');
INSERT INTO `foot_url` VALUES ('0000000014', '2', '洗衣店', '/index/index/commercial_laundries.html');
INSERT INTO `foot_url` VALUES ('0000000015', '3', '首页', '/index/index/index.html');
INSERT INTO `foot_url` VALUES ('0000000016', '3', '联系', '/index/index/contact.html');
INSERT INTO `foot_url` VALUES ('0000000017', '3', '联系人', '/index/index/press_contact.html');
INSERT INTO `foot_url` VALUES ('0000000018', '3', '积分', '/index/index/event_info.html?id=6');
INSERT INTO `foot_url` VALUES ('0000000019', '3', '数据保护', '/index/index/event_info.html?id=7');
INSERT INTO `foot_url` VALUES ('0000000020', '3', '服务条款', '/index/index/event_info.html?id=8');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `banner` text,
  `nandud` int(10) DEFAULT NULL,
  `tesed` int(10) DEFAULT NULL,
  `tuijiand` int(10) DEFAULT NULL,
  `liangdian` varchar(255) DEFAULT NULL,
  `liyou` varchar(255) DEFAULT NULL,
  `reshu` varchar(255) DEFAULT NULL,
  `tianshu` varchar(255) DEFAULT NULL,
  `cheshu` varchar(255) DEFAULT NULL,
  `bushu` varchar(255) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `content1` text,
  `content2` text,
  `content3` text,
  `content4` text,
  `lid` int(10) DEFAULT NULL,
  `cid` int(10) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('2', '趣味运动会主题团建', '/static/upload/1ec8e5956daef240/b2fc5ff138ffe886.jpg', '/static/upload/de54d0f6c63e06ba/30ae4ce51d867208.jpg|/static/upload/bcd6d7d48fcd48a2/859afeebff4d0925.jpg|/static/upload/88b2f08df0d7c3c9/a3032ab0e8498fd0.jpg', '3', '4', '5', '提升凝聚力 、 强化合作 、 拓展培训 、 提升荣誉感', '时下流行的团建方式', '40-500', '1', '1', 'TJ20190101', '230', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">罗湖体育馆</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">罗湖体育馆总投资1.9亿元，占地12502平方米，总建设面积24231平方米，共七层，分地下三层，地上四层；内设主馆、练习馆、游泳馆及配套用房、会所、停车场等设施。</span></span></p>\r\n\r\n<p><img border=\"0\" src=\"/static/upload/bcd6d7d48fcd48a2/859afeebff4d0925.jpg\" style=\"max-width:800px\" title=\"image\" /></p>', '<p style=\"text-align: center;\"><img border=\"0\" src=\"/static/upload/88b2f08df0d7c3c9/a3032ab0e8498fd0.jpg\" style=\"max-width:880px\" title=\"image\" /><img border=\"0\" src=\"/static/upload/e47e3ea6ac1aad8f/cb2cb091e3918c48.jpg\" style=\"max-width:880px\" title=\"image\" /></p>\r\n\r\n<p style=\"text-align: center;\"><img border=\"0\" src=\"/static/upload/79e81a37893462bc/d9751b405c9983d3.jpg\" style=\"max-width:880px\" title=\"image\" /><img border=\"0\" src=\"/static/upload/de54d0f6c63e06ba/30ae4ce51d867208.jpg\" style=\"max-width:880px\" title=\"image\" /></p>', '', '<p>阿斯顿</p>', '5', '5', '2018-12-19 18:16:44');
INSERT INTO `goods` VALUES ('3', '新员工激活主题拓展1日活动', '/static/upload/c2ffc38238c06cab/b10d01de88776db9.jpg', '/static/upload/c584073e6b49cf07/a137cbd0d6899531.jpg|/static/upload/37938a28aa2151f2/5f92a35ed0db2a16.jpg|/static/upload/fe52a9df9f01a5c0/2cf13afd83f03a17.jpg', '5', '3', '4', '新员工激活主题拓展，趣味项目，团队挑战，有效的帮助员工完成转变。', '团队，游艇', '30-500', '1天', '1.5小时', '寻奇者拓展培训一天行程', '230', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">正确理解团体与个体、团队成员之间的关系；完善人格，实现畅快表达意原和聆听别人的观点；最终为形成高绩效团队奠定基础。 快速凝练即时团队。发掘1+1＞2 团队潜能，突破固有习惯障碍，寻找提升组织机能渠道。</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">解除队员的思想武装，消除人与人之间的隔阂和陌生感，拉近团队队员的距离，为受训队员搭建友谊的桥梁，增强的团队成员的沟通、协调与凝聚力。</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">在训练设施、后勤设施完备的训练基地，学员可以在专业培训师的引导下，接受挑战，突破自我惰性，建立自信心，实现有效沟通，整合团队目标，形成战斗力团队。课程设计以团队发展阶段的特点及各阶段团队成员的心理变化为主线，即： 团队成立期&rarr;团队组建、建立诚信 &nbsp; &nbsp; &nbsp; &nbsp; 团队探索期&rarr;明确目标，产生领导核心 团队动荡期&rarr;化解冲突、统一规则 &nbsp; &nbsp; &nbsp; &nbsp; 团队成熟期&rarr;凝聚企业文化，形成认同感 通过团队实操、心理启发、技术检测、个人尝试、团队作为、军事行为等项目体验参与及环环相扣的课目设计，令学员在全程培训的氛围中，寓教于乐、寓教于智，增强主动参与性，形成严守纪律、坚决执行、承担责任和永不放弃的团队精神，从而达到凝练企业团队合力作用的效果。</span></span></p>', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">建设鹰狼团队：塑造象鹰一样的个人，象狼一样的团队</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">鹰：刚毅、坚强、迅敏、果敢、专注、进取、雄居高山之巅，搏击蓝天之上</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">狼：协作、信任、服从、忠诚、关爱、智慧、冷静、顽强、策略、形成团队的狼族，是个强大，不可侵犯的整体。</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">人的行为产生的原因可以分为外驱力和内驱力两种。内驱力指建立在个人自信心基础上的一种自我达成的成功精神。 在整个员工职能体系的大冰山上，&ldquo;知识、技能&rdquo;只是水上部分，而隐于水下不易测量的员工态度、个性、内驱力等情感智力部分，却是挖掘之&ldquo;本&rdquo;。也是企业发展的强大驱动力。寻奇者拓展培训项目将启动这一强大驱动力，满足员工的自尊和自我实现等心理需要，使员工渴求不断地完善自己，将自身的潜能发挥出来。在这个过程中，员工热情主动地投入项目任务的完成中，并将此激情延续到工作中去。</span></span></p>', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"1082\">\r\n	<tbody>\r\n		<tr height=\"28\">\r\n			<td colspan=\"2\" height=\"60\" rowspan=\"2\" width=\"196\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">时间</span></span></p>\r\n			</td>\r\n			<td height=\"60\" rowspan=\"2\" width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">活动内容</span></span></p>\r\n			</td>\r\n			<td height=\"60\" rowspan=\"2\" width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">活动方式</span></span></p>\r\n			</td>\r\n			<td colspan=\"3\" width=\"276\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">活动要求</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"28\">\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">体力</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">心理</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">智力</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"34\">\r\n			<td height=\"393\" rowspan=\"11\" width=\"57\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">第一天</span></span></p>\r\n			</td>\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">07:30</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">公司集中乘车出发</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">集体</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"35\">\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">08:50~9:00</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">到达基地、稍事整理</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">集体</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"34\">\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">09:00~10:00</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">破冰＋团队文化建设－个人与团队融入</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">集体</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"37\">\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">10:00~11:00</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">活动项目：共同进退－领导力、凝聚力、团队合力</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">分队</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">较高</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"34\">\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">11:00~12:00</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">活动项目：跳出真我－突破自己、挑战心理极限</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">个人</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">极高</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">较高</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"37\">\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">12:00~13:30</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中餐、稍事休息</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">集体</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"34\">\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">13:30~14:30</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">团队热身</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">集体</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"34\">\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">14:30~15:20</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">活动项目：信任背摔－团队、信任、责任</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">分队</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"34\">\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">15:20~16:10</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">活动项目：&nbsp;孤岛求生&mdash;组织&nbsp;、沟通、协作</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">集体</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">较高</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">高</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"34\">\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">16:10~17:30</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">毕业项目：毕业墙&mdash;进取、勇担责任、共同发展</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">集体</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">较高</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">较高</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"40\">\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">17:30</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">集中乘车返回</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">集体</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:16px;\">费用包含</span></span></p>\r\n\r\n<p><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:16px;\">1、人员：专业教练团队</span></span></p>\r\n\r\n<p><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:16px;\">2、道具：拓展培训物料使用、运输费用</span></span></p>\r\n\r\n<p><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:16px;\">3、服务：课程设计研发、活动培训费用</span></span></p>\r\n\r\n<p><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:16px;\">4、用餐：围餐（10人一围）</span></span></p>\r\n\r\n<p><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:16px;\">费用不含</span></span></p>\r\n\r\n<p><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:16px;\">1、费用包含以外的一切费用</span></span></p>\r\n\r\n<p><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:16px;\">2、交通：正规空调大巴往返接送</span></span></p>\r\n\r\n<p><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:16px;\">3、保险：专业户外拓展保险</span></span></p>', '4', '2', '2018-12-21 10:08:18');
INSERT INTO `goods` VALUES ('4', '皮划艇时速竞赛-南澳七星湾 一天团建', '/static/upload/106b3ed3a2da4ea1/11e2f3b8f24047f6.jpg', '/static/upload/a29d3310e03a1558/839c7384e7477aec.jpg|/static/upload/ac80e3d70be9435f/630d7ccff24cb4d7.jpg', '5', '5', '5', '七星湾游艇会，房车，游艇', '炎炎夏日，体验寻奇者皮划艇水上团建', '30', '1', '1.5小时', '深圳南澳一天', '380', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">大鹏七星湾拓展基地</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">享誉&ldquo;中国最美游艇会&rdquo;地处美丽的大鹏半岛七星湾畔，坐拥水质优良的港湾，背靠国家级地质公园七娘山，空气清新，得天独厚的滨海生态资源，孕育了七星湾的好山好水好风光。集户外运动、海上观光旅游、培训、休闲、娱乐、度假、博物馆、商务活动于一体，提供帆船体验、游艇租赁、海岛游、青少年及成人帆船培训、帆板体验、皮划艇体验、拓展培训、潜水体验、汽车电影、攀岩、艺术创作、购物、艇艇销售、展览、ATV试驾及住宿 、餐饮、会议等配套服务。</span></span></p>', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">破冰分组</span></span></p>\r\n\r\n<pre>\r\n<span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">以破冰游戏贯穿始终，展示我们公司成员的风采。破冰游戏将有效打破人与人之间的隔阂，创造良好的沟通氛围，激发热情与斗志。一个团队建立的过程：所有参加活动的人员以小队为单位，每一小队就是一个部落，部落的所有家庭成员必须共同面对困难、相互协作、迎接挑战、攻克难关。</span></span></pre>', '<p><span style=\"font-size:16px;\">08:00&nbsp;&nbsp;集合，出发<br />\r\n09:30&nbsp;&nbsp;破冰分组<br />\r\n10:30&nbsp;&nbsp;团队挑战任务&mdash;解手环、蛟龙出海<br />\r\n12:00&nbsp;&nbsp;享用午餐<br />\r\n14:00&nbsp;&nbsp;团队挑战任务&mdash;南水北调<br />\r\n15:00&nbsp;&nbsp;皮划艇竞赛专业的皮划艇教练教如何操作皮划艇，出海在海上竞赛，摆拍团队造型<br />\r\n17:00&nbsp;&nbsp;集体乘车返程</span></p>', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">费用包含</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">1、人员：专业教练团队</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">2、道具：拓展培训物料使用、运输费用</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">3、服务：课程设计研发、活动培训费用</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">4、交通：正规空调大巴往返接送</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">5、用餐：桌餐</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">6、保险：专业户外拓展保险</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">费用不含</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">1、费用包含以外的一切费用</span></span></p>', '3', '1', '2018-12-21 10:23:45');
INSERT INTO `goods` VALUES ('5', '击剑主题团建', '/static/upload/0392cc7790e26e83/a40d901ef8eeb57a.jpg', '/static/upload/bcd6d7d48fcd48a2/859afeebff4d0925.jpg', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '3', '1', '2018-12-25 16:14:24');
INSERT INTO `goods` VALUES ('6', '轰趴团建', '/static/upload/d257aa66995f4c9b/761972446a80f276.jpg', '/static/upload/bcd6d7d48fcd48a2/859afeebff4d0925.jpg', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '3', '3', '2018-12-25 16:15:51');
INSERT INTO `goods` VALUES ('7', '乌镇寻宝旅行', '/static/upload/bbecb35c7ff5b5e3/9b26b8633b5b1f93.jpg', '/static/upload/bbecb35c7ff5b5e3/9b26b8633b5b1f93.jpg', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '6', '4', '2018-12-25 16:19:41');
INSERT INTO `goods` VALUES ('8', '趣味游戏式', '/static/upload/8dca812ef511a183/cc0fcaf770561264.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '4', '2', '2018-12-25 16:27:32');
INSERT INTO `goods` VALUES ('9', '泡泡趴，夏日主题系列活动', '/static/upload/f1f745012e0359a9/b619ba59ad530af4.png', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '3', '1', '2018-12-25 17:42:16');
INSERT INTO `goods` VALUES ('10', '非洲鼓团建-秀一把文艺', '/static/upload/e2e17d012764d975/9773587ff289be23.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '3', '3', '2018-12-25 17:44:13');
INSERT INTO `goods` VALUES ('11', '厨师争霸赛+最强战队主题团建', '/static/upload/89f35b71411c61ac/818f89ebf37cdd64.png', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '3', '1', '2018-12-25 17:45:56');
INSERT INTO `goods` VALUES ('12', '茶马古道文化体验之旅', '/static/upload/b42792c22da26f2d/279a0c9c60f35833.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '6', '4', '2018-12-25 17:50:05');
INSERT INTO `goods` VALUES ('13', '七星湾游艇会-帆船游艇豪华体验', '/static/upload/099e94b10edbcf61/117156f3797581fd.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '6', '4', '2018-12-25 17:53:37');
INSERT INTO `goods` VALUES ('14', '玫瑰海岸——浪漫婚纱摄影', '/static/upload/94dfd723e63a5498/4e250ab35a95abd0.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '6', '4', '2018-12-25 17:56:08');
INSERT INTO `goods` VALUES ('15', '纳斯卡巨画 半日体验式团建', '/static/upload/01e539de4a1e6313/7c42e9e6287ee9c6.png', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '3', '1', '2018-12-25 18:00:06');
INSERT INTO `goods` VALUES ('16', '新狮王争霸赛一天舞狮团建体验', '/static/upload/f27481ee93edcb40/e350cf6265fd742a.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '3', '1', '2018-12-25 18:01:47');
INSERT INTO `goods` VALUES ('17', '双月湾', '/static/upload/37ce37e5a1edea65/450ab783d578218b.jpg', '/static/upload/e47e3ea6ac1aad8f/cb2cb091e3918c48.jpg', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '6', '6', '2018-12-25 18:07:40');
INSERT INTO `goods` VALUES ('18', '探索重庆火锅的秘密主题团建', '/static/upload/83cac20a4c23c850/3684c5bd646caa39.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '6', '6', '2018-12-25 18:11:34');
INSERT INTO `goods` VALUES ('19', '棒球体验团建', '/static/upload/a1e4e52a9c05a81b/8f639c879b5edeb2.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '5', '5', '2018-12-25 19:30:56');
INSERT INTO `goods` VALUES ('20', '曲棍球团建', '/static/upload/80b76c70f20fea26/f208f687dd420f23.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '5', '5', '2018-12-25 19:36:51');
INSERT INTO `goods` VALUES ('21', '皮划艇团建', '/static/upload/c5fbab3c846b9a73/c7e95775d0f90868.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '5', '5', '2018-12-25 19:39:25');
INSERT INTO `goods` VALUES ('22', '卡丁车体验团建', '/static/upload/62f9898b5ec8ea09/de1de4585283407a.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '5', '5', '2018-12-26 12:03:05');
INSERT INTO `goods` VALUES ('23', '帆船竞速体验团建', '/static/upload/b3788bc1e25a1d23/72b5ca94f4717dc4.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '<p><img border=\"0\" src=\"/static/upload/cf5b66e7a977a5f9/80fbaaf64ca818c9.png\" style=\"max-width:880px\" title=\"image\" /></p>', '', '', '', '5', '5', '2018-12-26 12:05:27');
INSERT INTO `goods` VALUES ('25', '团建实验', '/static/upload/80b76c70f20fea26/f208f687dd420f23.jpg', '/static/upload/bcd6d7d48fcd48a2/859afeebff4d0925.jpg|/static/upload/88b2f08df0d7c3c9/a3032ab0e8498fd0.jpg', '5', '5', '5', '亮点是什么呢，亮点是什么呢，亮点是什么呢，亮点是什么呢，亮点是什么呢，亮点是什么呢，亮点是什么呢，亮点是什么呢，', '体育团建，活力团队，户外体育', '80', '1', '2', 'jjty20190101', '350', '', '', '', '', '3', '1', '2019-01-04 17:00:19');

-- ----------------------------
-- Table structure for `heights`
-- ----------------------------
DROP TABLE IF EXISTS `heights`;
CREATE TABLE `heights` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '高度类别设置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of heights
-- ----------------------------
INSERT INTO `heights` VALUES ('0000000001', '22毫米');
INSERT INTO `heights` VALUES ('0000000002', '25毫米');
INSERT INTO `heights` VALUES ('0000000003', '27毫米');
INSERT INTO `heights` VALUES ('0000000004', '35毫米');
INSERT INTO `heights` VALUES ('0000000005', '37毫米');
INSERT INTO `heights` VALUES ('0000000006', '45毫米');
INSERT INTO `heights` VALUES ('0000000007', '12毫米');
INSERT INTO `heights` VALUES ('0000000008', '14.5毫米');

-- ----------------------------
-- Table structure for `heres`
-- ----------------------------
DROP TABLE IF EXISTS `heres`;
CREATE TABLE `heres` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `htitle` varchar(255) NOT NULL COMMENT '地点类别',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of heres
-- ----------------------------
INSERT INTO `heres` VALUES ('0000000001', '购物中心');
INSERT INTO `heres` VALUES ('0000000002', '机场');
INSERT INTO `heres` VALUES ('0000000003', '火车站');
INSERT INTO `heres` VALUES ('0000000004', '办公室和行政大楼');
INSERT INTO `heres` VALUES ('0000000005', '大学/学校和托儿所');
INSERT INTO `heres` VALUES ('0000000006', '医院和保健中心');
INSERT INTO `heres` VALUES ('0000000007', '博物馆');
INSERT INTO `heres` VALUES ('0000000008', '公共建筑');
INSERT INTO `heres` VALUES ('0000000009', '游泳池');
INSERT INTO `heres` VALUES ('0000000010', '船舶');
INSERT INTO `heres` VALUES ('0000000011', '巴登 - 符腾堡州');
INSERT INTO `heres` VALUES ('0000000012', '巴伐利亚');
INSERT INTO `heres` VALUES ('0000000013', '柏林');
INSERT INTO `heres` VALUES ('0000000014', '勃兰登堡');
INSERT INTO `heres` VALUES ('0000000015', '黑森州');
INSERT INTO `heres` VALUES ('0000000016', '梅克伦堡 - 前波莫瑞州');
INSERT INTO `heres` VALUES ('0000000017', '下萨克森州');
INSERT INTO `heres` VALUES ('0000000018', '北莱茵 - 威斯特法伦州');
INSERT INTO `heres` VALUES ('0000000019', '莱茵兰 - 普法尔茨');
INSERT INTO `heres` VALUES ('0000000020', '萨尔');
INSERT INTO `heres` VALUES ('0000000021', '萨克森');
INSERT INTO `heres` VALUES ('0000000022', '萨克森 - 安哈尔特');
INSERT INTO `heres` VALUES ('0000000023', '图林根');
INSERT INTO `heres` VALUES ('0000000024', '法国');
INSERT INTO `heres` VALUES ('0000000025', '奥地利');

-- ----------------------------
-- Table structure for `home_banner`
-- ----------------------------
DROP TABLE IF EXISTS `home_banner`;
CREATE TABLE `home_banner` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` varchar(255) NOT NULL,
  `miaoshu` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of home_banner
-- ----------------------------
INSERT INTO `home_banner` VALUES ('0000000001', 'emco 设计清洁入口', '迈向清洁的第一步在我们的进入系统上。\r\n我们是世界领先的进口垫制造商之一\r\n旨在减少建筑内部污垢和潮湿的系统。\r\n我们的系统不仅仅是保护建筑物及其使用者。\r\n结合定制设计和高品质工艺，他们帮助任。', '更多关于emco', 'index/index/emco_bau', '/static/upload/047967fd5d5e5ce4/260c904e378778a4.jpg');
INSERT INTO `home_banner` VALUES ('0000000002', 'emco 地毯垫', '不仅仅是灰尘收集，无论是标准的还是特殊的。\r\n形状。无论是打印图像还是宣传信息。\r\nEMCO的标志垫，由于其高品质的工艺和精心设计的产品细节。\r\n立即了解经典和图像中的所有产品。', '关于更多地毯垫的信息', '/index/index/carpet_mats.html', '/static/upload/440f009187862613/a951600845bb160b.jpg');

-- ----------------------------
-- Table structure for `home_mats`
-- ----------------------------
DROP TABLE IF EXISTS `home_mats`;
CREATE TABLE `home_mats` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of home_mats
-- ----------------------------
INSERT INTO `home_mats` VALUES ('0000000001', '建筑师和规划师', '<p>emco入口垫系统作为设计特点：无限的可能性和专家建议。为您的项目和令人印象深刻的入口。</p>', 'index/index/architects.html', '/static/upload/c59c49b26f01717f/5b4eca746a25a851.jpg');
INSERT INTO `home_mats` VALUES ('0000000002', '贸易和手工艺者', '<p>贸易和地板专业人士：您需要了解的有关emco高品质，耐用的入口垫系统的一切。</p>', 'index/index/floor_fitters.html', '/static/upload/eba938460197351e/b292788e809555a8.jpg');
INSERT INTO `home_mats` VALUES ('0000000003', '物业投资者和开发商', '<p>适用于您的新建筑项目的原始emco入口消光系统：一项有回报的投资！最优质的材料和工艺，最大限度地提高耐用性。</p>', '/index/index/building_contractors.html', '/static/upload/4f74d25c3ddf993a/46b40f684da0d4d4.jpg');
INSERT INTO `home_mats` VALUES ('0000000004', '洗衣店', '<p>租用垫子，租用垫子，标志垫，设计垫或创新形状垫子：特别适合干洗业务的要求。</p>', '/index/index/commercial_laundries.html', '/static/upload/30342605a1b87637/f968300a74d3dd5d.jpg');

-- ----------------------------
-- Table structure for `home_other`
-- ----------------------------
DROP TABLE IF EXISTS `home_other`;
CREATE TABLE `home_other` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `s_title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `video_url` varchar(255) NOT NULL,
  `miaoshu` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of home_other
-- ----------------------------
INSERT INTO `home_other` VALUES ('0000000001', '建筑师：亲爱® 2018 for emco', '被选为清洁区最受欢迎的制造商', '<p>在2018年，EMCO巴乌赢得了一枚建筑师达林&reg; 奖（基于2100名德国建筑师和规划师的调查）我们的多功能和创新的污物收集解决方案。</p>\r\n\r\n<p>我们很高兴能与这个奖项，并认为这是一种激励，继续开发新的，高品质和创新的产品，在未来：EMCO创新，EMCO ECOLINE &reg; PIONEER，尚无无与伦比，是我们要求所提供的完美的污垢证明 - 针对每种情况的收集解决方案。</p>', '/index/index/entrance_mats_range.html', '', '现在发现入口垫', '/static/upload/33879199cac19145/1302e43127ec584e.jpg');
INSERT INTO `home_other` VALUES ('0000000002', '盲人和弱视人士的安全', 'emco SPIN® SAFE', '<p>emco&nbsp;SPIN<sup>&reg;</sup>&nbsp;SAFE&nbsp;是视障人士进一步EMCO入口地垫的创新。有了它，盲人和视力障碍者可以轻松清晰地检测方向和脚或手杖方向的变化。</p>', '/index/index/tactile_guidance_system.html', '', '', '/static/upload/215b5849f5798dbc/be336568467cb033.png');
INSERT INTO `home_other` VALUES ('0000000003', 'emco 产品查询', '得到一个入口垫的报价：它快速而简单', '<p>只需两步即可轻松完成：选择您想要的emco入口垫并添加配件。发送给emco以及您的联系方式。完成！</p>\r\n\r\n<p>我们会及时处理您的产品查询，如果我们有任何疑问，请尽快与您联系。为您量身定制的emco入口垫提供最快捷的方式！</p>', '/index/index/product_enquiry.html', '', '立即咨询产品!', '/static/upload/6c4e1b853afd6f2f/8ebcaa730e991705.jpg');
INSERT INTO `home_other` VALUES ('0000000004', '来自 emco入口垫', '适用于各种应用的正确系统', '<p>除了多年来建立的顶级质量标准外，emco还提供创新的定制解决方案：功能强大且个性化，具有&ldquo;德国制造&rdquo;的专业知识。</p>\r\n\r\n<p>我们系统的高质量，可定制设计适合您的项目。在emco，您可以找到适合任何情况的正确入口垫系统，无论多么具有挑战性。</p>\r\n\r\n<p>受到启发 - 并利用我们不妥协的服务：保证与emco的入口垫。</p>\r\n\r\n<p>&nbsp;</p>', '/index/index/entrance_mats.html', '', '更多关于入口垫', '/static/upload/91eae8e0a972fd41/f3c388f316c23345.jpg');
INSERT INTO `home_other` VALUES ('0000000005', 'emco Bau: 看看是什么驱使我们!', '入口垫, 地毯垫, 游泳池栅格', '<p>高质量的入口垫系统，地毯垫和游泳池格栅 - 由我们位于德国林根的全球总部提供给全球各地。我们使用选定的材料和精密工艺创造出色的产品，以满足客户要求的最高质量标准。&nbsp;<br />\r\n<br />\r\nemco Bautechnik既是系统提供商，也是问题解决者。我们的目标是在任何情况下提供完全正确的产品意味着我们必须不断扩展和优化我们的产品组合，就像我们在过去50年和未来一样。&nbsp;<br />\r\n<br />\r\n看看是什么让emco成为高品质品牌产品的杰出供应商和找出驱动我们的动力！</p>', '', '/static/upload/122f7faa8716b797/8af3e7ab39b05fd2.mp4', '立即观看视频', '');

-- ----------------------------
-- Table structure for `list`
-- ----------------------------
DROP TABLE IF EXISTS `list`;
CREATE TABLE `list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort` int(10) DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `ename` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of list
-- ----------------------------
INSERT INTO `list` VALUES ('1', '0', '首页', 'Home', '', '', '', '');
INSERT INTO `list` VALUES ('2', '0', '公司介绍', 'About', '', null, null, null);
INSERT INTO `list` VALUES ('3', '0', '主题团建', 'League building', '', '', '', '');
INSERT INTO `list` VALUES ('4', '0', '拓展培训', 'Team training', '', '', '', '');
INSERT INTO `list` VALUES ('5', '0', '竞技体育', 'competitive sports', '', '', '', '');
INSERT INTO `list` VALUES ('6', '0', '旅行团建', 'Deep travel', '', '', '', '');
INSERT INTO `list` VALUES ('7', '0', '服务团队', 'Service team', '', '', '', '');
INSERT INTO `list` VALUES ('8', '0', '往期案例', 'Past cases', '', '', '', '');
INSERT INTO `list` VALUES ('9', '0', '新闻中心', 'News center', '', '', '', '');
INSERT INTO `list` VALUES ('10', '0', '联系我们', 'Contact us', '', '', '', '');

-- ----------------------------
-- Table structure for `mats_banner`
-- ----------------------------
DROP TABLE IF EXISTS `mats_banner`;
CREATE TABLE `mats_banner` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned NOT NULL COMMENT '对应三级产品id',
  `img` varchar(255) NOT NULL COMMENT '轮播大图',
  `small_img` varchar(255) NOT NULL COMMENT '轮播小图',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='入口垫三级产品轮播图表';

-- ----------------------------
-- Records of mats_banner
-- ----------------------------
INSERT INTO `mats_banner` VALUES ('0000000001', '1', '/static/upload/b93502601ae89b6a/99f1e92c69d1f66a.jpg', '/static/upload/ad2267df8abd8d22/dc1fa35bd766feab.jpg', '2019-03-20 17:41:56');
INSERT INTO `mats_banner` VALUES ('0000000002', '1', '/static/upload/dfdf0a9050b79d2d/2e4605da8e5b7fc9.jpg', '/static/upload/8d877e93c610fe90/87c863ae56b053c4.jpg', '2019-03-20 17:43:07');
INSERT INTO `mats_banner` VALUES ('0000000003', '1', '/static/upload/d9c549170787a066/7f44c8de83341622.jpg', '/static/upload/ed1f7c7fe6d7f595/998d9c86571c9604.jpg', '2019-03-20 17:43:27');
INSERT INTO `mats_banner` VALUES ('0000000004', '1', '/static/upload/5de89140b500bd64/54fe203ae60fef2f.jpg', '/static/upload/b8473b39ffa5dca0/7d41e121a83bed84.jpg', '2019-03-20 17:43:45');
INSERT INTO `mats_banner` VALUES ('0000000005', '2', '/static/upload/b93502601ae89b6a/99f1e92c69d1f66a.jpg', '/static/upload/ad2267df8abd8d22/dc1fa35bd766feab.jpg', '2019-03-21 13:36:25');
INSERT INTO `mats_banner` VALUES ('0000000006', '2', '/static/upload/dfdf0a9050b79d2d/2e4605da8e5b7fc9.jpg', '/static/upload/8d877e93c610fe90/87c863ae56b053c4.jpg', '2019-03-21 13:36:42');
INSERT INTO `mats_banner` VALUES ('0000000007', '2', '/static/upload/d9c549170787a066/7f44c8de83341622.jpg', '/static/upload/ed1f7c7fe6d7f595/998d9c86571c9604.jpg', '2019-03-21 13:36:59');
INSERT INTO `mats_banner` VALUES ('0000000008', '2', '/static/upload/5de89140b500bd64/54fe203ae60fef2f.jpg', '/static/upload/b8473b39ffa5dca0/7d41e121a83bed84.jpg', '2019-03-21 13:37:15');

-- ----------------------------
-- Table structure for `mats_cates`
-- ----------------------------
DROP TABLE IF EXISTS `mats_cates`;
CREATE TABLE `mats_cates` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL COMMENT '入口垫系统类别名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mats_cates
-- ----------------------------
INSERT INTO `mats_cates` VALUES ('0000000001', '室内区域入口垫系统');
INSERT INTO `mats_cates` VALUES ('0000000002', '室外入口垫系统');
INSERT INTO `mats_cates` VALUES ('0000000003', '入口垫系统，用于防护细小污垢（区域2）');
INSERT INTO `mats_cates` VALUES ('0000000004', '用于防止粗糙污垢的入口垫系统（区域1）');
INSERT INTO `mats_cates` VALUES ('0000000005', 'C/R/O清洁系统，用户防止潮湿污垢（3区）');
INSERT INTO `mats_cates` VALUES ('0000000006', '自动门系统的入口垫');
INSERT INTO `mats_cates` VALUES ('0000000007', '饰品');

-- ----------------------------
-- Table structure for `mats_color`
-- ----------------------------
DROP TABLE IF EXISTS `mats_color`;
CREATE TABLE `mats_color` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned NOT NULL COMMENT '三级产品id',
  `title` varchar(255) NOT NULL COMMENT '颜色名称',
  `img` varchar(255) NOT NULL COMMENT '颜色图',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='入口垫三级产品详情 颜色表';

-- ----------------------------
-- Records of mats_color
-- ----------------------------
INSERT INTO `mats_color` VALUES ('0000000001', '1', '浅灰色没有。220', '/static/upload/d4fbfd6bb87ad498/4645bc2b34411261.jpg', '2019-03-20 17:10:52');
INSERT INTO `mats_color` VALUES ('0000000002', '1', '无烟煤没有。200', '/static/upload/aa58bb9726593f7d/4faf00395aabfae4.jpg', '2019-03-20 17:12:10');
INSERT INTO `mats_color` VALUES ('0000000003', '1', '米色没有。420', '/static/upload/0ee09613e2e2e328/cac13a50e3e656b1.jpg', '2019-03-20 17:12:36');
INSERT INTO `mats_color` VALUES ('0000000004', '1', '蓝色没有。114', '/static/upload/2665fdd4b6e3bb6a/4e3c54574a619a8a.jpg', '2019-03-20 17:12:56');
INSERT INTO `mats_color` VALUES ('0000000005', '1', '淡紫色没有。374', '/static/upload/2e3894b472109358/495e7864170454d5.jpg', '2019-03-20 17:13:16');
INSERT INTO `mats_color` VALUES ('0000000006', '1', '蓝色/灰色没有。113', '/static/upload/2665fdd4b6e3bb6a/4e3c54574a619a8a.jpg', '2019-03-20 17:13:50');
INSERT INTO `mats_color` VALUES ('0000000007', '2', '浅灰色没有。220', '/static/upload/d4fbfd6bb87ad498/4645bc2b34411261.jpg', '2019-03-21 13:38:47');
INSERT INTO `mats_color` VALUES ('0000000008', '2', '无烟煤没有。200', '/static/upload/aa58bb9726593f7d/4faf00395aabfae4.jpg', '2019-03-21 13:39:08');
INSERT INTO `mats_color` VALUES ('0000000009', '2', '米色没有。420', '/static/upload/0ee09613e2e2e328/cac13a50e3e656b1.jpg', '2019-03-21 13:39:26');
INSERT INTO `mats_color` VALUES ('0000000010', '2', '蓝色没有。114', '/static/upload/2665fdd4b6e3bb6a/4e3c54574a619a8a.jpg', '2019-03-21 13:39:42');

-- ----------------------------
-- Table structure for `mats_info`
-- ----------------------------
DROP TABLE IF EXISTS `mats_info`;
CREATE TABLE `mats_info` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '产品详情id',
  `p_id` int(10) unsigned NOT NULL COMMENT '入口垫一级分类id',
  `pid` int(10) unsigned NOT NULL COMMENT '产品二级分类id',
  `title` varchar(255) NOT NULL COMMENT '产品型号',
  `tuzhi` varchar(255) NOT NULL COMMENT '图纸',
  `tubiao` text NOT NULL COMMENT '产品图标',
  `height` varchar(255) NOT NULL COMMENT '高度',
  `jiaobu` varchar(255) NOT NULL COMMENT '脚步声',
  `fanche` varchar(255) NOT NULL COMMENT '翻车和翻车功能',
  `jianxi` varchar(255) NOT NULL COMMENT '标准型材间隙约。（毫米）	',
  `door` varchar(255) NOT NULL COMMENT '自动门',
  `lianjie` varchar(255) NOT NULL COMMENT '连接',
  `houdu` varchar(255) NOT NULL COMMENT '约。材料厚度（mm）',
  `max` varchar(255) NOT NULL COMMENT '最大。单个部分的宽度/轮廓长度（mm）',
  `shengdu` varchar(255) NOT NULL COMMENT '各个部分的深度/行走深度',
  `zhongkg` varchar(200) NOT NULL COMMENT '重量',
  `guige` varchar(255) NOT NULL COMMENT '垫子按工厂标准或客户规格划分',
  `zaihe` varchar(255) NOT NULL COMMENT '固定载荷，单位为kg /100cm²',
  `jixiang` varchar(255) NOT NULL COMMENT '支持机箱',
  `taimian` varchar(255) NOT NULL COMMENT '胎面',
  `fanghua` varchar(255) NOT NULL COMMENT '防滑',
  `fanghuo` varchar(255) NOT NULL COMMENT '防火',
  `jianyi` varchar(255) NOT NULL COMMENT '建议',
  `jiazai` varchar(255) NOT NULL COMMENT '加载',
  `yanse` varchar(255) NOT NULL COMMENT '普通颜色',
  `model` varchar(200) NOT NULL COMMENT '模型',
  `lianxi` varchar(255) NOT NULL COMMENT '联系',
  `color` varchar(255) NOT NULL COMMENT '颜色，填写时需要以，分割',
  `fuwu` varchar(255) NOT NULL COMMENT '服务 ，填写时需要以，分割',
  `zhaobiao_text` varchar(255) NOT NULL COMMENT '招标文本 pdf',
  `zhuangxiu` varchar(255) NOT NULL COMMENT '装修现代化 pdf',
  `shouce` varchar(255) NOT NULL COMMENT '手册 pdf',
  `wuye` varchar(255) NOT NULL COMMENT '建筑物业主信息 pdf',
  `clear` varchar(255) NOT NULL COMMENT '3区清洁',
  `chanp` varchar(255) NOT NULL COMMENT '产品数据表',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mats_info
-- ----------------------------
INSERT INTO `mats_info` VALUES ('0000000001', '1', '5', '522R', '', '/static/upload/a5bf260d5b85f6d4/7104b39838944800.jpg|/static/upload/556ecca328345298/f92eaf4e38ea4957.jpg|/static/upload/69c0d7e6a5f653b7/52cda0dd9bd85227.jpg|/static/upload/07adabd75b35d0a7/3433dc87c6789687.jpg|/static/upload/99d80dac7cab3390/bd05a727f062bd1d.jpg|/static/upload/e1081d8cb21504cb/be0da223c685e133.jpg', '22', '每日人流量可达200​​0人', '轮椅,Prams ,轻便购物手推车,手推车', '5毫米橡胶垫片', '根据EN 16005，可提供3 mm的型材间隙作为旋转门驱动器的选件', '塑料涂层钢缆', '1.0', '3000', '3000', '10.0', '截面长度为3000毫米或最大垫重量为45千克', '2100', '由坚硬的铝制成，带有隔音衬垫', '嵌入式，坚固，防风雨，罗纹地毯条。', 'R 11防滑性符合DIN 51130标准', '适用于浅灰色和无烟煤色罗纹地毯颜色的插入物，根据EN 13501可提供防火等级Cfl-s1。', '室内和室外覆盖区域（2区）', '从正常到重', '标准罗纹地毯颜色：浅灰色，无烟煤色，米色，蓝色。特殊颜色：紫红色，蓝色/灰色，红色，棕色，绿松石色，宝蓝色，沙色和葡萄色', '522 R.', 'emco Bautechnik GmbH·BreslauerStraße34 - 38·49808 Lingen（Ems）·德国·电话：0591 / 9140-0·传真：0591 / 9140-852·电子邮件：bau@emco.de·www.eemco-bau。 COM', '该产品可以以环保的方式处理或回收,通过移动垫清洁系统清洁,随后可以由emco服务工程师（移动罗纹地毯更换机）在现场更换带肋地毯条,,现场使用激光测量装置测量,\r\n配件和安装服务,\r\n施工现场咨询', '该产品可以以环保的方式处理或回收,通过移动垫清洁系统清洁,\r\n随后可以由emco服务工程师（移动罗纹地毯更换机）在现场更换带肋地毯条,\r\n现场使用激光测量装置测量,\r\n配件和安装服务,\r\n施工现场咨询,', '/static/upload/cced65a3a5ee6ecf/93647c7ce10ef693.pdf', '/static/upload/b9456d5b90fa068f/f157a7dc4921f12f.pdf', '/static/upload/9266d29624aec70b/83b01b2c32507108.pdf', '/static/upload/1b9094747c228286/c9f652dbe2b80e0d.pdf', '/static/upload/19cad0396529a845/d84320cbcdb4cf7a.pdf', '/static/upload/0ada31300116d146/1db6ba0aad9f7f57.pdf');
INSERT INTO `mats_info` VALUES ('0000000002', '1', '5', '510r', '/static/upload/12f7bae426199987/6f6b30db20642f4b.jpg', '/static/upload/a5bf260d5b85f6d4/7104b39838944800.jpg|/static/upload/a5bf260d5b85f6d4/7104b39838944800.jpg|/static/upload/556ecca328345298/f92eaf4e38ea4957.jpg|/static/upload/556ecca328345298/f92eaf4e38ea4957.jpg', '10', '每日人流量高达400', '轮椅,Prams ,轻便购物手推车 ,手推车', '5毫米橡胶垫片', '根据EN 16005，可提供3 mm的型材间隙作为旋转门驱动器的选件', '塑料涂层不锈钢电缆', '1,0', '2200', '1500', '08,9', '截面长度为2200毫米或最大垫重量为25千克', '1500', '由坚硬的铝制成，带有隔音衬垫', '嵌入式，坚固，防风雨，罗纹地毯条。', 'R 11防滑性符合DIN 51130标准', '', '室内和室外覆盖区域（2区）', '正常', '罗纹地毯颜色：浅灰色，无烟煤色，米色，蓝色', '510 R', 'emco Bautechnik GmbH·BreslauerStraße34 - 38·49808 Lingen（Ems）·德国·电话：0591 / 9140-0·传真：0591 / 9140-852·电子邮件：bau@emco.de·www.eemco-bau。 COM', '浅灰色没有。220 ,无烟煤没有。200, \r\n米色没有。420 ,\r\n蓝色没有。114', '该产品可以以环保的方式处理或回收。\r\n,现场使用激光测量装置测量。\r\n,配件和安装服务\r\n,施工现场咨询', '/static/upload/387ba9e36850e669/e4791e6d967ce082.pdf', '/static/upload/b9456d5b90fa068f/f157a7dc4921f12f.pdf', '/static/upload/787e81e5382e9dcf/6f0dfafa2a23e761.pdf', '/static/upload/1b9094747c228286/c9f652dbe2b80e0d.pdf', '/static/upload/19cad0396529a845/d84320cbcdb4cf7a.pdf', '/static/upload/5c9b452170957eca/034657402fbafbd4.pdf');

-- ----------------------------
-- Table structure for `mats_pro`
-- ----------------------------
DROP TABLE IF EXISTS `mats_pro`;
CREATE TABLE `mats_pro` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL COMMENT '入口垫产品类别名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mats_pro
-- ----------------------------
INSERT INTO `mats_pro` VALUES ('0000000001', 'emco DIPLOMAT');
INSERT INTO `mats_pro` VALUES ('0000000002', 'emco MARSCHALL');

-- ----------------------------
-- Table structure for `mats_ress`
-- ----------------------------
DROP TABLE IF EXISTS `mats_ress`;
CREATE TABLE `mats_ress` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned NOT NULL COMMENT '三级产品id',
  `title` varchar(255) NOT NULL COMMENT '名称',
  `img` varchar(255) NOT NULL COMMENT '图',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='入口垫产品详情 参考表';

-- ----------------------------
-- Records of mats_ress
-- ----------------------------
INSERT INTO `mats_ress` VALUES ('0000000001', '1', 'Mundsburg中心 - 德国汉堡', '/static/upload/78192cec8860b22e/2ba3e581ba7f65ed.jpg');
INSERT INTO `mats_ress` VALUES ('0000000003', '1', 'NINO Hochaus  -  Nordhorn，德国', '/static/upload/4aa7bca128239cba/bd8938d35d0b9226.jpg');
INSERT INTO `mats_ress` VALUES ('0000000004', '1', 'Strabag Real Estate GmbH MEANDRIS，法兰克福 - 美因河畔法兰克福，德国', '/static/upload/80421b480de750c3/7dbf46a3b8c08311.jpg');
INSERT INTO `mats_ress` VALUES ('0000000005', '1', 'Ozeanum Deutsches Meeresmuseum  - 德国施特拉尔松德', '/static/upload/48bb38648558c32c/c578bd6153943ca4.jpg');
INSERT INTO `mats_ress` VALUES ('0000000006', '1', 'De Nieuwe Veste文化中心 - 荷兰赫勒富茨劳斯', '/static/upload/417166487c791782/3e47235773bca6d1.jpg');
INSERT INTO `mats_ress` VALUES ('0000000007', '2', 'NautaDutilh - 阿姆斯特丹，荷兰', '/static/upload/7763f29b8f593b94/03daf7208e034997.jpg');
INSERT INTO `mats_ress` VALUES ('0000000008', '2', 'L\'Aquapolis - 法国利摩日', '/static/upload/4e723d51b011a226/8f146b01d02b2fd2.jpg');
INSERT INTO `mats_ress` VALUES ('0000000009', '2', 'L\'Aquapolis - 法国利摩日', '/static/upload/9ac3e70c69cb980c/b2685e377dc150f9.jpg');

-- ----------------------------
-- Table structure for `mats_services`
-- ----------------------------
DROP TABLE IF EXISTS `mats_services`;
CREATE TABLE `mats_services` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL COMMENT '图1',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `s_title` varchar(255) NOT NULL COMMENT '小标题',
  `content` text NOT NULL COMMENT '内容',
  `miaoshu` varchar(255) NOT NULL COMMENT '视频地址',
  `url` varchar(255) NOT NULL,
  `video_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mats_services
-- ----------------------------
INSERT INTO `mats_services` VALUES ('0000000001', '/static/upload/685388b9fe0847fb/62c581c3158517a0.jpg', 'emco入口垫 - 服务', '简单，快捷，简单', '<p>对于需要翻新的严重磨损的刀片，emco入口垫服务始终随时为您服务：即使是极度磨损的刀片也不会被丢弃。 在回收利用中，emco特别重视可持续性和最大可能的生态友好性。</p>\r\n\r\n<p>信赖emco并充分利用50多年的经验！</p>', '', '', '');
INSERT INTO `mats_services` VALUES ('0000000002', '/static/upload/235c89d8ae95af26/c51897284d1f506e.jpg', '入口垫建议： 你可以从我们这里拿走它', '50多年的入口垫专业知识', '<p>emco入口垫服务是独一无二的：我们访问您的网站并与您一起设计完美的入口区域。所有建筑亮点均符合您的要求，以实现以结果为导向的解决方案。令人印象深刻的入口区 - 我们的理念。</p>\r\n\r\n<p>我们很乐意安排预约：通过emco的入口垫系统发现可能性！</p>\r\n\r\n<h2>电话:&nbsp;+49 591 9140 514</h2>', '', '', '');
INSERT INTO `mats_services` VALUES ('0000000003', '/static/upload/5e53c4fe4e6e771c/30b6292bd4e02c88.jpg', '罗纹地毯更换：优点', '充分利用我们的入口垫翻新服务', '<p>更换刀片可显着提高emco入口垫的经济效益！</p>\r\n\r\n<p>整个金属结构保持不变; 只有罗纹地毯条系统地更新。因此，您可以避免不必要的成本并保护环境：资源得到保护并以环保的方式使用。</p>\r\n\r\n<p>经济效益和环保：使用emco的入口垫系统！</p>', '', '', '');
INSERT INTO `mats_services` VALUES ('0000000004', '', 'emco Bau罗纹地毯更换服务', '我们为您的入口垫提供服务', '<p>通过我们的移动罗纹地毯更换机，我们的服务团队随时可以更换刀片。观看我们的视频，了解我们如何进行罗纹地毯更换</p>', '现在观看罗纹地毯替换视频', '', '/static/upload/22a80ca8943b10fd/4259eb80596c8929.mp4');

-- ----------------------------
-- Table structure for `mats_ship`
-- ----------------------------
DROP TABLE IF EXISTS `mats_ship`;
CREATE TABLE `mats_ship` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned NOT NULL COMMENT '三级产品id',
  `title` varchar(255) NOT NULL COMMENT '名称',
  `img` varchar(255) NOT NULL COMMENT '图',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='入口垫产品详情 饰品 表';

-- ----------------------------
-- Records of mats_ship
-- ----------------------------
INSERT INTO `mats_ship` VALUES ('0000000001', '1', 'emco安装框架500铝 - 500-25 AL', '/static/upload/420c95ad8cbac8ba/c4cf7bfe016163c8.jpg');
INSERT INTO `mats_ship` VALUES ('0000000002', '1', 'emco ramp edge - A17', '/static/upload/0e9ab0edf14408e8/1835b39871a990e3.jpg');
INSERT INTO `mats_ship` VALUES ('0000000003', '1', 'emco cover strip - C22', '/static/upload/4bb12bdea4a35083/9adfde6b2de597db.jpg');
INSERT INTO `mats_ship` VALUES ('0000000004', '1', 'emco LUMINA The illuminated frame system for entrance mats - LUMINA + LED', '/static/upload/8ad2e3b10b88d4de/a87f038a6c3a09dc.jpg');
INSERT INTO `mats_ship` VALUES ('0000000005', '2', 'emco安装框架500铝 - 500-13 AL', '/static/upload/420c95ad8cbac8ba/c4cf7bfe016163c8.jpg');
INSERT INTO `mats_ship` VALUES ('0000000006', '2', 'emco坡道边缘 - A10', '/static/upload/0e9ab0edf14408e8/1835b39871a990e3.jpg');

-- ----------------------------
-- Table structure for `mats_two`
-- ----------------------------
DROP TABLE IF EXISTS `mats_two`;
CREATE TABLE `mats_two` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned DEFAULT NULL COMMENT '对应入口垫系统类别 id',
  `pid` int(10) unsigned DEFAULT NULL COMMENT '对应入口垫一级产品id',
  `tubiao` text NOT NULL COMMENT '二级分类图标',
  `img` varchar(255) DEFAULT NULL COMMENT '二级分类展示图',
  `title` varchar(200) DEFAULT NULL COMMENT '二级分类名称',
  `info` varchar(255) DEFAULT NULL COMMENT '分类介绍',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mats_two
-- ----------------------------
INSERT INTO `mats_two` VALUES ('0000000005', '1', '1', '/static/upload/a5bf260d5b85f6d4/7104b39838944800.jpg|/static/upload/556ecca328345298/f92eaf4e38ea4957.jpg|/static/upload/69c0d7e6a5f653b7/52cda0dd9bd85227.jpg|/static/upload/07adabd75b35d0a7/3433dc87c6789687.jpg|/static/upload/07c8f659ecc51b1b/23ce7effaf112c36.jpg|/static/upload/99d80dac7cab3390/bd05a727f062bd1d.jpg', '/static/upload/b8b5e3f6e66bc0a1/97a3b0fedca058c8.jpg', '带罗纹地毯插入', '可更换刀片效果出色。适用于平均访客人数的住宅楼宇和商业楼宇。非常适合拾取细小的污垢。', '2019-03-20 14:03:46');
INSERT INTO `mats_two` VALUES ('0000000008', '1', '2', '/static/upload/a5bf260d5b85f6d4/7104b39838944800.jpg|/static/upload/556ecca328345298/f92eaf4e38ea4957.jpg|/static/upload/69c0d7e6a5f653b7/52cda0dd9bd85227.jpg|/static/upload/07adabd75b35d0a7/3433dc87c6789687.jpg|/static/upload/a5bf260d5b85f6d4/7104b39838944800.jpg|/static/upload/556ecca328345298/f92eaf4e38ea4957.jpg|/static/upload/99d80dac7cab3390/bd05a727f062bd1d.jpg', '/static/upload/b56908eda4377063/93b575ab3b0dc478.jpg', '带罗纹地毯插件', '成功的强大解决方案之一。对于极其频繁的建筑物，如购物中心和机场。非常适合拾取细小的污垢。', '2019-03-21 13:10:37');

-- ----------------------------
-- Table structure for `new`
-- ----------------------------
DROP TABLE IF EXISTS `new`;
CREATE TABLE `new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `content` text,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of new
-- ----------------------------
INSERT INTO `new` VALUES ('1', '这是标题这是标题这是标题这是标题这是标题', '/static/upload/380896beff3e3854/6e5852b248f4834d.png', '<p>这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容</p>', '2018-12-22 09:58:21');
INSERT INTO `new` VALUES ('2', '这是标题这是标题这是标题这是标题', '/static/upload/c2ffc38238c06cab/b10d01de88776db9.jpg', '<p>这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容</p>', '2018-12-25 15:13:11');
INSERT INTO `new` VALUES ('3', '新闻二', '/static/upload/c2ffc38238c06cab/b10d01de88776db9.jpg', '<p>这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容</p>', '2018-12-25 15:14:44');
INSERT INTO `new` VALUES ('4', '新闻1', '/static/upload/37938a28aa2151f2/5f92a35ed0db2a16.jpg', '<p>这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容</p>', '2018-12-25 15:15:24');
INSERT INTO `new` VALUES ('5', '我们葱姜蒜开始看', null, '<p>是的丰富的地方</p>', '2019-03-27 09:27:30');
INSERT INTO `new` VALUES ('6', '积分', null, '<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span style=\"box-sizing:border-box\"><span style=\"font-weight:bold\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">：由发行</font></font></span></span><br style=\"box-sizing:border-box\" />\r\n<font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">EMCO有限公司建筑技术</font></font><br style=\"box-sizing:border-box\" />\r\n<font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">布雷斯劳尔大街34-38&nbsp;</font></font><br style=\"box-sizing:border-box\" />\r\n<font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">49808林根（EMS），</font></font><br style=\"box-sizing:border-box\" />\r\n<font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">德国</font></font><br style=\"box-sizing:border-box\" />\r\n<font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">电话：+499140分之591 - 0&nbsp;</font></font><br style=\"box-sizing:border-box\" />\r\n<font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">传真：+49九千一百四十○分之五百九十一- 852&nbsp;</font></font><br style=\"box-sizing:border-box\" />\r\n<a class=\"mail\" href=\"javascript:linkTo_UnCryptMailto(\'nbjmup+cbvAfndp/ef\');\" style=\"box-sizing:border-box; color:#e3001b; text-decoration:none; outline:none !important\" title=\"通过电子邮件发送emco Bau\"><span style=\"box-sizing:border-box\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">BAU&nbsp;</font></font><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">@ emco.de</font></font></span></a><br style=\"box-sizing:border-box\" />\r\n<br style=\"box-sizing:border-box\" />\r\n<span style=\"box-sizing:border-box\"><span style=\"font-weight:bold\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">编辑：</font></font></span></span><br style=\"box-sizing:border-box\" />\r\n<font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">威廉&middot;沃伦</font></font><br style=\"box-sizing:border-box\" />\r\n<a class=\"mail\" href=\"javascript:linkTo_UnCryptMailto(\'nbjmup+x/xbssfoAfndp/ef\');\" style=\"box-sizing:border-box; color:#e3001b; text-decoration:none; outline:none !important\" title=\"通过电子邮件发送Redaktion\"><span style=\"box-sizing:border-box\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">w.warren&nbsp;</font></font><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">@emco。德</font></font></span></a><br style=\"box-sizing:border-box\" />\r\n<br style=\"box-sizing:border-box\" />\r\n<span style=\"box-sizing:border-box\"><span style=\"font-weight:bold\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">免责声明：&nbsp;</font></font></span></span><br style=\"box-sizing:border-box\" />\r\n<font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">&copy;2018年建筑技术EMCO有限公司</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span style=\"box-sizing:border-box\"><span style=\"font-weight:bold\"><span style=\"box-sizing:border-box\"><span style=\"line-height:1.42857\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">控股：</font></font></span></span></span></span><br style=\"box-sizing:border-box\" />\r\n<span style=\"box-sizing:border-box\"><span style=\"line-height:1.42857\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">注册办事处：Lingen&middot;Osnabr&uuml;ck地区法院HRB 212869&nbsp;</font></font></span></span><br style=\"box-sizing:border-box\" />\r\n<span style=\"box-sizing:border-box\"><span style=\"line-height:1.42857\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">VAT-ID DE 812975658，Tax-ID 61/200/23198&nbsp;</font></font></span></span><br style=\"box-sizing:border-box\" />\r\n<span style=\"box-sizing:border-box\"><span style=\"line-height:1.42857\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">常务董事：J&ouml;rgHarbecke，Christian Gnass</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span style=\"box-sizing:border-box\"><span style=\"line-height:1.42857\"><span style=\"box-sizing:border-box\"><span style=\"font-weight:bold\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">免责</font></font></span></span></span></span><br style=\"box-sizing:border-box\" />\r\n<font style=\"box-sizing:border-box; vertical-align:inherit\"><span style=\"box-sizing:border-box\"><span style=\"line-height:1.42857\"><font style=\"box-sizing:border-box; vertical-align:inherit\">声明</font></span></span><span style=\"box-sizing:border-box\"><span style=\"line-height:1.42857\"><span style=\"box-sizing:border-box\"><span style=\"font-weight:bold\"><font style=\"box-sizing:border-box; vertical-align:inherit\">：</font></span></span></span></span></font><span style=\"box-sizing:border-box\"><span style=\"line-height:1.42857\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">保留所有权利。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">此信息是emco Group Lingen的财产。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">在发布时，它代表每种情况下的最新信息。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">对于本网站提供的信息和数据是最新，正确和完整，我们不承担任何责任或保证。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">emco Group Lingen的法定代表人和执行机构对任何链接网站的内容均无影响。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">因此，emco集团Lingen解除了与预防措施相关的内容。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">各个网站的域名所有者全权负责链接的网站及其内容。</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">这些网站上的信息不构成任何性质的法律保证。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如有必要，emco Group Lingen保留更改或补充本网站上提供的信息或数据的权利。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">任何性质的法律索赔均不得源自此处描述的主题领域。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">报价在所有方面都不具约束力。&nbsp;</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">emco Group Lingen对因使用本网站所含信息或数据而产生的直接或间接损失不承担任何责任。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">emco Group Lingen与本网站的任何用户或任何第三方之间不存在任何权利和义务。&nbsp;</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">emco集团网站的内容受版权保护。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">未经版权所有者事先书面同意，不得将内容部分或全部复制和/或发布或存储在信息系统中。</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\">&nbsp;</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">emco Group Lingen网站上的所有信息和数据，使用相同的，以及与之相关的任何和所有其他行为，默认或遗漏完全受德意志联邦共和国法律的约束。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">林根被视为履行地和唯一的管辖法院。&nbsp;</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>', '2019-03-30 09:22:49');
INSERT INTO `new` VALUES ('7', 'emco Bautechnik GmbH的隐私政策：', null, '<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><strong style=\"box-sizing:border-box; font-weight:bold\"><span lang=\"EN\" style=\"box-sizing:border-box\"><span style=\"color:#222222\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">隐私政策</font></font></span></span></strong><font style=\"box-sizing:border-box; vertical-align:inherit\"><span lang=\"EN\" style=\"box-sizing:border-box\"><span style=\"color:#222222\"><font style=\"box-sizing:border-box; vertical-align:inherit\">的</font></span></span><span lang=\"EN\" style=\"box-sizing:border-box\"><span style=\"color:#222222\"><font style=\"box-sizing:border-box; vertical-align:inherit\">欧文&middot;</font></span></span><font style=\"box-sizing:border-box; vertical-align:inherit\">&nbsp;米勒有限公司采取的隐私非常重视。</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span lang=\"EN\" style=\"box-sizing:border-box\"><span style=\"color:#222222\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">我们认为自己</font></font></span></span><span lang=\"EN\" style=\"box-sizing:border-box\"><span style=\"color:#222222\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">有义务</font></font></span></span><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">保护所有利用我们服务并以保密方式处理其个人数据的个人的隐私。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">这是基于相关的法律规定。</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\">&nbsp;</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><strong style=\"box-sizing:border-box; font-weight:bold\"><span lang=\"EN\" style=\"box-sizing:border-box\"><span style=\"color:#222222\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">个人数据</font></font></span></span></strong><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">如果您提供此信息，</font><span lang=\"EN\" style=\"box-sizing:border-box\"><span style=\"color:#222222\"><font style=\"box-sizing:border-box; vertical-align:inherit\">我们</font></span></span><span lang=\"EN\" style=\"box-sizing:border-box\"><span style=\"color:#222222\"><font style=\"box-sizing:border-box; vertical-align:inherit\">会</font></span></span><span lang=\"EN\" style=\"box-sizing:border-box\"><span style=\"color:#222222\"><font style=\"box-sizing:border-box; vertical-align:inherit\">收集</font></span></span><span lang=\"EN\" style=\"box-sizing:border-box\"><span style=\"color:#222222\"><font style=\"box-sizing:border-box; vertical-align:inherit\">个人数据</font></span></span><font style=\"box-sizing:border-box; vertical-align:inherit\">，例如，在查询，注册或订购时事通讯期间。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">在您向我们提供个人数据的情况下，我们仅将其用于您提供给我们的目的。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">我们将数据存储在您的范围的其他成员中，并作为您在属于EMCO Group Lingen的公司提供给我们的目的的一部分传递，可以在</font><span lang=\"EN\" style=\"box-sizing:border-box\"><font style=\"box-sizing:border-box; vertical-align:inherit\">&nbsp;www.emco-group.de</font></span><font style=\"box-sizing:border-box; vertical-align:inherit\">找到</font><span lang=\"EN\" style=\"box-sizing:border-box\"><span style=\"box-sizing:border-box\"><span style=\"color:#222222\"><font style=\"box-sizing:border-box; vertical-align:inherit\">。</font></span></span></span></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span><br style=\"box-sizing:border-box\" />\r\n&nbsp;</p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\">&nbsp;</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><strong style=\"box-sizing:border-box; font-weight:bold\"><span lang=\"EN\" style=\"box-sizing:border-box\"><span style=\"color:#222222\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">Google Analytics和Cookie</font></font></span></span></strong></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span lang=\"EN\" style=\"box-sizing:border-box\"><span style=\"color:#222222\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">使用Google Analytics和Cookie。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">本网站使用谷歌分析，谷歌公司（&ldquo;谷歌&rdquo;）提供的网络分析服务。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">Google Analytics使用。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">&ldquo;Cookies&rdquo;，存储在您计算机上的文本文件，用于分析您对网站的使用。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">Cookie生成的有关您使用本网站的信息（包括您的部分IP地址）会传输到美国的Google服务器并存储在那里。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">Google将使用此信息评估您对网站的使用情况，为网站运营商编制网站活动报告，并提供其他网站和互联网相关服务。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果法律要求或此类第三方代表Google处理信息，Google也可能会将此信息转让给第三方。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">Google不会将您的IP地址与Google持有的任何其他数据相关联。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">您可以通过在浏览器上选择适当的设置来拒绝使用cookie;&nbsp;</font><font style=\"box-sizing:border-box; vertical-align:inherit\">但是，我们指出在这种情况下您可能无法使用本网站的所有功能。</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\">&nbsp;</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><strong style=\"box-sizing:border-box; font-weight:bold\"><span lang=\"EN\" style=\"box-sizing:border-box\"><span style=\"color:#222222\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">Facebook按钮</font></font></span></span></strong><br style=\"box-sizing:border-box\" />\r\n<span lang=\"EN\" style=\"box-sizing:border-box\"><span style=\"color:#222222\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">在我们的网站上，所谓的社交插件（&ldquo;插件&rdquo;）是Facebook使用的社交网络，由Facebook Inc.，1601 S. California Ave，Palo Alto，CA 94304，USA（&ldquo;Facebook&rdquo;）运营。 。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">插件标有Facebook徽标或短语&ldquo;Facebook的社交插件&rdquo;或&ldquo;Facebook社交插件&rdquo;。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">Facebook插件及其外观概述：</font></font><a href=\"https://developers.facebook.com/docs/plugins\" style=\"box-sizing:border-box; color:#3b3b3b; text-decoration:none; outline:none !important\" target=\"_blank\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">developers.facebook.com/docs/plugins</font></font></a><br style=\"box-sizing:border-box\" />\r\n<font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">当您访问我们包含社交插件的网站页面时，您的浏览器会直接连接到Facebook服务器。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">该插件的内容是从Facebook直接到您的浏览器并集成到侧面。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">通过此集成，即使您没有Facebook帐户或当前未登录Facebook，Facebook也会收到您的浏览器访问我们网站相应页面的信息。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">此信息（包括您的IP地址）从您的浏览器直接传输到美国的Facebook服务器并存储在那里。</font></font><br style=\"box-sizing:border-box\" />\r\n<font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">如果您登录Facebook，Facebook可以立即分配访问我们的网站到您的Facebook个人资料。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果您与插件交互，例如，&ldquo;赞&rdquo;按钮按或发表评论，此信息也会直接传输到Facebook服务器并存储在那里。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">该信息还将发布在您的个人资料Facebook上，并显示给您的Facebook好友。</font></font><br style=\"box-sizing:border-box\" />\r\n<font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">数据收集的目的和范围以及Facebook对数据的进一步处理和使用，以及保护您隐私的权利和设置选项请参阅Facebook的隐私政策：</font></font></span></span><span lang=\"EN\" style=\"box-sizing:border-box\"><a href=\"http://www.facebook.com/policy.php\" style=\"box-sizing:border-box; color:#3b3b3b; text-decoration:none; outline:none !important\" target=\"_blank\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">www.facebook.com/policy.php</font></font></a></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\">&nbsp;</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><strong style=\"box-sizing:border-box; font-weight:bold\"><span lang=\"EN\" style=\"box-sizing:border-box\"><span style=\"color:#222222\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">Twitter按钮</font></font></span></span></strong><br style=\"box-sizing:border-box\" />\r\n<span lang=\"EN\" style=\"box-sizing:border-box\"><span style=\"color:#222222\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">在我们的网站上，所谓的社交插件（&ldquo;插件&rdquo;）的微博客服务Twitter可以使用Twitter Inc.，1355 Market St，Suite 900，San Francisco，CA 94103，USA（&ldquo;Twitter&rdquo; &ldquo;）运作。</font></font><br style=\"box-sizing:border-box\" />\r\n<font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">插件标有Twitter徽标，例如蓝色&ldquo;Twitter-bird&rdquo;。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">您可以在这里找到Twitter插件及其外观的概述：</font></font><a href=\"https://twitter.com/about/resources/buttons\" style=\"box-sizing:border-box; color:#3b3b3b; text-decoration:none; outline:none !important\" target=\"_blank\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">twitter.com/about/resources/buttons</font></font></a><br style=\"box-sizing:border-box\" />\r\n<font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">当您访问包含社交插件的我们网站页面时，您的浏览器会直接连接到Twitter的服务器。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">该插件的内容是从Twitter直接到您的浏览器并集成到侧面。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">通过集成Twitter接收您的浏览器访问我们网站的相应页面的信息，即使您在Twitter上没有个人资料或当前未登录到Twitter。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">此信息（包括您的IP地址）从您的浏览器直接传输到美国Twitter的服务器并存储在那里。</font></font><br style=\"box-sizing:border-box\" />\r\n<font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">如果您已登录Twitter，Twitter可以直接将您访问我们网站的Twitter帐户。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果您与插件进行交互，请按&ldquo;推文&rdquo;按钮，例如，相应的信息也会直接传输到Twitter的服务器并存储在那里。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">这些信息也将发布在您的Twitter帐户上，并且您的联系人会看到这些信息。</font></font><br style=\"box-sizing:border-box\" />\r\n<font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">Twitter的数据收集目的和范围以及Twitter对您的权利和设置选项的进一步处理和使用请参阅Twitter的隐私政策：</font></font></span></span><span lang=\"EN\" style=\"box-sizing:border-box\"><a href=\"https://twitter.com/privacy\" style=\"box-sizing:border-box; color:#3b3b3b; text-decoration:none; outline:none !important\" target=\"_blank\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">twitter.com/privacy</font></font></a></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\">&nbsp;</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><strong style=\"box-sizing:border-box; font-weight:bold\"><span lang=\"EN\" style=\"box-sizing:border-box\"><span style=\"color:#222222\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">XING&nbsp;</font></font></span></span></strong><strong style=\"box-sizing:border-box; font-weight:bold\"><span lang=\"EN\" style=\"box-sizing:border-box\"><span style=\"color:#222222\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">按钮</font></font></span></span></strong><br style=\"box-sizing:border-box\" />\r\n<span lang=\"EN\" style=\"box-sizing:border-box\"><span style=\"color:#222222\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">本网站正在使用&ldquo;XING分享按钮&rdquo;。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">访问此网站时，您的浏览器会短时间连接到提供&ldquo;XING共享按钮&rdquo;功能的XING AG（&ldquo;XING&rdquo;）服务器（包括访客计数器）。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">当您访问本网站时，XING不会保存您的任何个人数据。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">XING不存储IP地址，也不使用cookie来监控您关于&ldquo;XING共享按钮&rdquo;的行为。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">请访问以下网站以查看&ldquo;XING分享按钮&rdquo;的最新隐私政策以及其他信息：</font></font></span></span><span lang=\"EN\" style=\"box-sizing:border-box\"><a href=\"https://dev.xing.com/plugins/share_button/privacy_policy\" style=\"box-sizing:border-box; color:#3b3b3b; text-decoration:none; outline:none !important\" target=\"_blank\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">dev.xing.com/plugins/share_button/privacy_policy</font></font></a></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\">&nbsp;</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><strong style=\"box-sizing:border-box; font-weight:bold\"><span lang=\"EN\" style=\"box-sizing:border-box\"><span style=\"color:#222222\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">Google+按钮</font></font></span></span></strong><br style=\"box-sizing:border-box\" />\r\n<span lang=\"EN\" style=\"box-sizing:border-box\"><span style=\"color:#222222\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">在我们的网站上，所谓的社交插件（&ldquo;插件&rdquo;）是要使用的社交网络Google+，其中包括Google Inc.，1600 Amphitheatre Parkway，Mountain View，CA 94043，USA（&ldquo;Google&rdquo;）。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">插件是z。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">B.可以在白色或彩色背景上看到&ldquo;+1&rdquo;按钮。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">您可以在此处找到Google插件及其外观的概述：</font><a href=\"https://developers.google.com/+/plugins\" style=\"box-sizing:border-box; color:#3b3b3b; text-decoration:none; outline:none !important\" target=\"_blank\"><font style=\"box-sizing:border-box; vertical-align:inherit\">developers.google.com/+/</font></a><font style=\"box-sizing:border-box; vertical-align:inherit\">&nbsp;plugins</font></font><br style=\"box-sizing:border-box\" />\r\n<font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">当您访问包含社交插件的我们网站页面时，您的浏览器会直接连接到Google的服务器。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">插件的内容从Google直接传输到您的浏览器并集成到侧面。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">通过集成Google即使您没有在Google+上拥有个人资料或只是未登录Google+，也会收到您的浏览器访问过我们网站相应页面的信息。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">此信息（包括您的IP地址）将从您的浏览器直接传输到美国的Google服务器并存储在那里。</font></font><br style=\"box-sizing:border-box\" />\r\n<font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">如果您已登录Google+，Google可能会立即将您对我们网站的访问与您的Google+个人资料相关联。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">例如，如果您与插件进行互动，请按&ldquo;+1&rdquo;按钮，相应的信息也会直接发送到Google服务器并存储在那里。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">该信息也会发布在Google+上，您的联系人也会看到这些信息。</font></font><br style=\"box-sizing:border-box\" />\r\n<font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">数据收集的目的和范围以及Google对数据的进一步处理和使用以及您保护隐私的权利和设置选项请参阅Google的隐私权政策：</font></font><a href=\"http://www.google.com/intl/de/+/policy\" style=\"box-sizing:border-box; color:#3b3b3b; text-decoration:none; outline:none !important\" target=\"_blank\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">www.google.com/intl/de</font></font></a><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">&nbsp;/+/&nbsp;</font><font style=\"box-sizing:border-box; vertical-align:inherit\">policy&nbsp;</font><font style=\"box-sizing:border-box; vertical-align:inherit\">/ + 1button.html</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\">&nbsp;</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><strong style=\"box-sizing:border-box; font-weight:bold\"><span lang=\"EN\" style=\"box-sizing:border-box\"><span style=\"color:#222222\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">正确</font></font></span></span></strong><font style=\"box-sizing:border-box; vertical-align:inherit\"><span lang=\"EN\" style=\"box-sizing:border-box\"><span style=\"color:#222222\"><font style=\"box-sizing:border-box; vertical-align:inherit\">根据联邦数据保护法（法案），您有权释放有关存储数据的信息，以及纠正，阻止或删除数据的权利。</font></span></span><span lang=\"EN\" style=\"box-sizing:border-box\"><span style=\"color:#222222\"><font style=\"box-sizing:border-box; vertical-align:inherit\">有关收集，处理或使用个人信息，披露，更正，阻止或删除数据以及撤销同意书的问题，请联系：</font></span></span></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\">&nbsp;</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><strong style=\"box-sizing:border-box; font-weight:bold\"><span style=\"box-sizing:border-box\"><span style=\"color:#222222\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">联系</font></font></span></span></strong></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><span style=\"box-sizing:border-box\"><span style=\"color:#222222\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">欧文</font></font></span></span><span style=\"box-sizing:border-box\"><span style=\"color:#222222\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">穆勒</font></font></span></span><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">&nbsp;有限公司</font></font><br style=\"box-sizing:border-box\" />\r\n<font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">布雷斯劳尔大街34-38&nbsp;</font></font><br style=\"box-sizing:border-box\" />\r\n<font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">49808林根（EMS），</font></font><br style=\"box-sizing:border-box\" />\r\n<font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">电话：+49（0）591 9140 0&nbsp;</font></font><br style=\"box-sizing:border-box\" />\r\n<a href=\"javascript:linkTo_UnCryptMailto(\'nbjmup+ebufotdivuaAfndp/ef\');\" style=\"box-sizing:border-box; color:#3b3b3b; text-decoration:none; outline:none !important\"><span style=\"box-sizing:border-box\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">隐私政策</font></font><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">@ emco.de</font></font></span></a></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>', '2019-03-30 09:24:16');
INSERT INTO `new` VALUES ('8', '销售，交付和付款的一般条款和条件', null, '<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">1.简介：这些一般销售，交付和付款条款和条件应完全适用，除非在任何明确的书面协议中进行修改。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">报价，接受报价或销售任何商品均受这些条款和条件的约束。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">购买者的任何条款和条件或购买者的条款与这些条款和条件相矛盾，即使已知，也应予以拒绝。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">这些条款和条件还应为所有未来交易提供基础。</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">2.订单和报价：所有用户报价和交付选项均需确认。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果订单在提交后21天内（也可通过发票或交货单）以书面形式接受，则只能视为已接受订单。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">交付范围仅受书面订单确认。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">购买者应对订单的准确性负责。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果需要制造，加工或处理货物，则应要求买方赔偿因合同约定的货物处理或处理而造成的任何损害，</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">3.价格和定价：除非商品的价格达成一致，否则应在交货当天生效列表价格和增值税。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">所有价格均为出厂价，不含包装。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果交付数量的公差与总量（正/负10％）成比例合理，则应允许公差。</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">4.货物交付：交付应在账户出厂时支付，费用由买方承担。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果货物存放在商店中以供买方单独处置（撇帐项目），则买方如果在未经提醒的情况下未能在约定的期限内接收此类货物，则应处于违约状态。</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">5.交货时间：订单确认中所述的交货日期或交货期表示尽可能早的交货时间，并且没有义务。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">设定日历交付日期只有在经过书面明确确认后才具有约束力。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">交货期应在订单确认发出之日开始，但不得在提交任何文件，批准，买方提供的许可或收到任何约定的存款付款之前开始。</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">6.风险转移：货物一旦离开用户工厂，货物损坏或丢失的风险应立即传递给购买者，如果是零件装运，也是如此。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果用户承诺将货物交付给购买者，即使同意Incoterms，也应承担运输风险。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果在购买者负责的情况下延迟装运，则风险应从货物准备装运之日起转移给购买者。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">货物应存放在购买者的账户上，并由买方承担风险。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">在不影响购买者权利的情况下，买方必须接受交付的物品。</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">7.缺陷通知：如果在进行交付或进行初始样品检查时已经行使了护理，则不可能发出购买者可能已经建立的缺陷的通知。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">即使已经发送了选择样品，购买者也必须在抵达时立即检查货物，并以书面形式通知任何缺陷或保修无效。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">投诉通知必须在货物处理前以书面形式提出，包含所称索赔或瑕疵的确切描述，并附有装箱单。</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">8.保修：用户不应对适合特定用途的商品承担任何责任。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果所提供的物品有缺陷或缺乏保证质量，或者由于制造或材料缺陷而在保修期内出现缺陷，则用户应在其公平行使酌情权的情况下，纠正缺陷或进行新的交付。退货已退货&nbsp;</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果无法弥补缺陷或者如果涉及不合理的努力和费用，购买者可能只要求减少付款。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">买方应，</font><font style=\"box-sizing:border-box; vertical-align:inherit\">作为例外，如果不能合理地预期补救缺陷，也可以要求减少付款。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">必须让用户有机会找到引起其注意的缺陷。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">根据要求，投诉货物必须立即归还。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">更换的部件应成为用户的财产。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">对于不正当或不当使用，买方或第三方不正确的装配或维修，自然磨损，不当或疏忽的处理或不当维护，后者不承担任何责任。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果购买者或任何第三方进行了纠正，</font><font style=\"box-sizing:border-box; vertical-align:inherit\">用户不对由此产生的任何后果承担责任。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">未经用户事先同意，对交付项目进行的任何修改均适用。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果在合理期限内未按照约定的方式达到或未达到保修义务，则买方应能够以书面形式确定最终截止日期。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果此期限到期而没有结果，买方应能够自行进行必要的整改或将纠正权交给第三方。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果买方或第三方成功进行了整改，买方的所有索赔应在偿还其产生的费用后予以解决。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">只有用户的产品描述才被视为商定的商品质量。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果购买者收到不完整的装配说明，则只有在装配说明中的不足妨碍正确装配时，用户才有义务提供没有任何缺陷的装配说明。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">购买方的所有索赔应在偿还其产生的费用后结算。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">只有用户的产品描述才被视为商定的商品质量。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果购买者收到不完整的装配说明，则只有在装配说明中的不足妨碍正确装配时，用户才有义务提供没有任何缺陷的装配说明。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">购买方的所有索赔应在偿还其产生的费用后结算。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">只有用户的产品描述才被视为商定的商品质量。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果购买者收到不完整的装配说明，则只有在装配说明中的不足妨碍正确装配时，用户才有义务提供没有任何缺陷的装配说明。</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">9.责任限制：如果购买者因用户负责的延误而遭受损害，则购买者应排除进一步的索赔，有权要求赔偿因延误造成的损失。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">每整周应达到0.5％，但总数不得超过整批货物价值的5％，由于延误，不能及时使用或按协定使用。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果，</font><font style=\"box-sizing:border-box; vertical-align:inherit\">因用户未能执行或在执行合同之前或之后错误实施提案或审议，或因侵犯其他合同附件义务而导致的错误 - 特别是有关操作和维护的说明交货项目 - 买方不能按约定使用交货项目，这些条款和条件第8条规定的安排以及下列安排适用于排除进一步的索赔。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">用户仅对损坏负责，</font><font style=\"box-sizing:border-box; vertical-align:inherit\">包括未在交付项目本身发生的损害，如果是由于故意，重大过失，对生命，肢体和健康造成的有罪损害，用户欺诈性隐瞒或其保证缺失造成的，在产品责任法规定对私人物品造成的人身伤害和财产损失的责任的情况下，交付项目中的缺陷。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">每次发生损害的责任 - 无论是何种法律依据 - 均应限于订单价值的30％。</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">10.上帝的行为：上帝的行为，工业纠纷，骚乱，政府行为，交付停工或其他不可预见的，不可预防和严重的事件，应使用户免受其在干扰期间的义务以及这种干扰造成的影响。 。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果这些事件发生在用户默认的时间，则这也适用。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">在合理预期的范围内，用户应立即提供必要的信息，并真诚地根据变化的情况调整其义务。</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">11.付款条件：除非另有约定，所有付款应在交付时或在接受交付时全额到期。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果没有进一步通知，如果没有付款，买方应在到期日后30天内拖欠。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">用户在发票日期后7天内支付3％的现金折扣，前提是购买者没有拖欠付款时前一批货物的应收账款结算。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果用户未在30天内收到付款或其中的一部分，</font><font style=\"box-sizing:border-box; vertical-align:inherit\">购买者无权享受现金折扣。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">只有在书面协议的基础上才接受汇票，并且只考虑履约而不承担抗议责任。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">除非买方的索赔无可争议或是最终和绝对的，否则买方不得抵消反诉，并且无权根据这些索赔保留。</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">12.支付违约和购买者偿付能力恶化：如果买方拖欠支付已经交付的交易的发票金额，则用户应能够根据到期发票的结算或预付款交付未完成的订单。购买价格或退出合同。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果在签订合同后，购买者的财务状况明显恶化，则存在同样的权利。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">即使提出保修索赔，仍必须遵守约定的付款日期。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果购买者违约付款，并且在法庭或法庭外对其进行组合或破产程序，则应撤销已给予的折扣以及运费报销。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">发票到期后的第31天将产生同样的法律后果。</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">13.所有权保留：用户交付的货物应保留在用户的财产中，直至其从与购买者的业务关系中收到所有应付款项。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果购买者违反合同行为，特别是如果购买者拖欠，则可以重新收回交付物品;&nbsp;</font><font style=\"box-sizing:border-box; vertical-align:inherit\">买方应承诺放弃占有权;&nbsp;</font><font style=\"box-sizing:border-box; vertical-align:inherit\">它应允许用户随时收集和收回其货物。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">收回交付项目并不等同于退出合同，除非明确以书面形式宣布。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果发生第三方的附加或其他干预，应要求购买者立即发出通知，以便可以提起异议，以防止执行。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果第三方无法偿还异议程序的司法和司法外费用，则买方应对产生的损失负责。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">购买者有权在正常业务过程中转售交货项目。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">即使在这个阶段，</font><font style=\"box-sizing:border-box; vertical-align:inherit\">购买者向用户分配所有针对其购买者或第三方的索赔，包括转售产生的最终发票余额（包括增值税），无论货物是否已在未经处理的情况下转售或已经转售。处理。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">即使在转让之后，购买者也有权收集此类索赔，除非用户禁止购买者这样做。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">用户收取索赔的权力不受影响。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">但是，用户应&nbsp;</font><font style=\"box-sizing:border-box; vertical-align:inherit\">承诺不承担索赔本身，只要买方正式履行其付款义务并且没有拖欠。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">在任何情况下，用户都能够要求购买者披露指定的索赔及其债务人，提供收集所需的所有信息，移交相关文件并通知债务人转让。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">购买者只能为用户处理或改造货物。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果货物与其他物品一起处理，</font><font style=\"box-sizing:border-box; vertical-align:inherit\">用户应在加工时以保留货物价值与其他加工物品的比例取得新物品的共同所有权。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">在所有其他方面，同样适用于因保留货物适用的处理而产生的物品。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果货物与其他物品不可分割地结合，则用户应在组合时以货物价值与其他组合物品的关系获得新物品的共同所有权。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果组合以购买者的物品必须被视为主要物品的方式进行，则应认为购买者将比例联合所有权分配给用户。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">购买者保留独资或共同所有权。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">买方应将货物与一块土地相结合，将任何索赔要求转让给任何第三方。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">购买者保留独资或共同所有权。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">买方应将货物与一块土地相结合，将任何索赔要求转让给任何第三方。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">购买者保留独资或共同所有权。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">买方应将货物与一块土地相结合，将任何索赔要求转让给任何第三方。</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">14.转售条款：所提供的货物只能出口到给予书面许可的国家。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">未经同意，买方不得向已知有意出口货物的买方出售。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">该禁令仅适用于欧盟委员会关于次要重要协议的通知所涵盖的范围。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果货物在国外交付，买方应承担因适用国外现行法律和法规而产生的任何风险。</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">15.保修期限和时效：保修期为自本条款和条件第4条规定的货物交付之日起12个月。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">但是，如果买方未能及时提供缺陷通知，则适用这些条款和条件第7条规定的后果。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">根据其正常使用情况，已用于大厦并造成其缺陷的货物的保修期为五年。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">购买者的所有索赔 - 无论出于何种法律依据，</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">16.履行地点，法律地点和适用法律：合同关系产生的所有义务履行地点应为用户的营业地。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">如果购买者是商人，公法下的法人或公法下的特殊资产，则所有法律纠纷的法律地点，包括与汇票或支票有关的诉讼的一部分，应由用户的业务。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">用户还有权在对买方具有管辖权的法院所在地或在可能根据国家或国际法拥有管辖权的任何其他法院采取法律行动。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">合同关系应遵守德国法律。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">应排除贸易法委员会销售公约（联合国国际货物销售公约）的适用范围。</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p class=\"bodytext\" style=\"margin:0px 0px 22px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:14px\"><span style=\"box-sizing:border-box\"><span style=\"line-height:24px\"><span style=\"color:#3b3b3b\"><span style=\"font-family:&quot;Open Sans&quot;, Helvetica, Arial, sans-serif\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:400\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">17.逃避条款：如果这些一般销售，交付和付款条款和条件的个别条款无效或无效，则不影响其余条款的有效性。</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>', '2019-03-30 09:27:32');

-- ----------------------------
-- Table structure for `order_contact`
-- ----------------------------
DROP TABLE IF EXISTS `order_contact`;
CREATE TABLE `order_contact` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `sex` int(10) unsigned NOT NULL COMMENT '性别',
  `names` char(200) DEFAULT NULL COMMENT '姓名',
  `danwei` varchar(255) NOT NULL COMMENT '公司单位',
  `street` varchar(255) NOT NULL COMMENT '街道',
  `street_no` varchar(255) NOT NULL COMMENT '街道号',
  `zip_code` int(10) unsigned NOT NULL COMMENT '邮政编码',
  `city` varchar(255) NOT NULL COMMENT '所在城市',
  `email` varchar(100) NOT NULL COMMENT '邮箱地址',
  `tel` char(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '电话号码',
  `ss` varchar(255) NOT NULL COMMENT '选择内容',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '提交时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_contact
-- ----------------------------
INSERT INTO `order_contact` VALUES ('0000000004', '0', '杨不悔', '光明顶45号', '光明顶45号', '520仿', '438200', '湖北武汉', '732345907@qq.com', '186725558999', 'Architects文件夹,入口垫系统,emco清理,地毯垫,游泳池栅格,滚动和线性网格,', '2019-03-05 10:42:51');

-- ----------------------------
-- Table structure for `partner`
-- ----------------------------
DROP TABLE IF EXISTS `partner`;
CREATE TABLE `partner` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(255) DEFAULT NULL,
  `img` char(255) DEFAULT NULL,
  `url` char(255) DEFAULT '#',
  `sort` int(11) unsigned DEFAULT '0',
  `status` tinyint(1) unsigned DEFAULT '1',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of partner
-- ----------------------------
INSERT INTO `partner` VALUES ('10', '腾讯', '/static/upload/f8e29fbdd8f6e21d/a0da69a854086de5.jpg', '#', '0', '1', '2018-12-25 15:23:50');
INSERT INTO `partner` VALUES ('11', '华为', '/static/upload/60490b20a1494c60/e8c4bcd8f14299b7.jpg', '#', '0', '1', '2018-12-25 15:25:00');
INSERT INTO `partner` VALUES ('12', '招商银行', '/static/upload/a4c0ff0b9be993cc/44701abfd9c7176d.jpg', '#', '0', '1', '2018-12-25 15:26:57');
INSERT INTO `partner` VALUES ('13', '戴德梁行', '/static/upload/19c630cff8d7571c/f2e1de7fbc1e01a6.jpg', '#', '0', '1', '2018-12-25 15:27:39');
INSERT INTO `partner` VALUES ('14', '中海地产', '/static/upload/2b49a556d02aff7f/b9110a95e7d0a80a.jpg', '#', '0', '1', '2018-12-25 15:28:37');
INSERT INTO `partner` VALUES ('15', '万科地产', '/static/upload/1ed56a82ec0c36d3/dc5fb272c5f1353d.jpg', '#', '0', '1', '2018-12-25 15:30:06');

-- ----------------------------
-- Table structure for `protucts`
-- ----------------------------
DROP TABLE IF EXISTS `protucts`;
CREATE TABLE `protucts` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `ptitle` varchar(255) NOT NULL COMMENT '产品类别',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='参考模块中的产品表';

-- ----------------------------
-- Records of protucts
-- ----------------------------
INSERT INTO `protucts` VALUES ('0000000001', '入口消光系统');
INSERT INTO `protucts` VALUES ('0000000002', '游泳池格栅');

-- ----------------------------
-- Table structure for `questions_lists`
-- ----------------------------
DROP TABLE IF EXISTS `questions_lists`;
CREATE TABLE `questions_lists` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questions_lists
-- ----------------------------
INSERT INTO `questions_lists` VALUES ('0000000001', '哪里有emco土木工程产品（入口地板系统，游泳池网格）？', '<p>您可以在我们的合作伙伴和专业瓷砖经销商的展示厅中找到我们的产品。 有关德国地点的信息可由我们的现场服务办事处提供有关在国外购买emco产品的信息，可从我们列出的国际分销合作伙伴处获取。</p>');
INSERT INTO `questions_lists` VALUES ('0000000002', 'emco产品是否直接来自Emco Bau的工厂？和林根的Klimatechnik GmbH＆Co。KG？', '<p>基本上，是的; 如果您是批发商或承包企业，在特殊情况下可以直接购买。</p>');
INSERT INTO `questions_lists` VALUES ('0000000003', '我在哪里可以查看特殊产品是否仍然可用？', '<p>有几种方法可以确定产品的可用性。您可以直接在我们网页左侧的产品查询器中查看？所有制造的产品都列在那里。或者您可以联系您的现场服务办公室或我们位于林根的工厂。我们期待着为您提供帮助。</p>');

-- ----------------------------
-- Table structure for `question_img`
-- ----------------------------
DROP TABLE IF EXISTS `question_img`;
CREATE TABLE `question_img` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `s_title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL COMMENT '跳转地址',
  `miaoshu` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_img
-- ----------------------------
INSERT INTO `question_img` VALUES ('0000000001', '/static/upload/984508b3f86a2d51/c6d96c8a7dc85e70.jpg', '经常问的问题', '阅读emco客户提出的问题', '<p>我们的目标是在我们的网站上为您提供所需的所有信息。但是，如果您仍然有一个尚未回答的问题，您可以阅读其他emco客户在此处提出的问题。</p>\r\n\r\n<p>在这里找不到你的答案？请联系我们：我们很乐意快速有效地回答您的问题！</p>', '/index/index/contact.html', '现在就联系我们');

-- ----------------------------
-- Table structure for `service_contacts`
-- ----------------------------
DROP TABLE IF EXISTS `service_contacts`;
CREATE TABLE `service_contacts` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of service_contacts
-- ----------------------------
INSERT INTO `service_contacts` VALUES ('0000000001', '找到你的联系人', '/static/upload/a5fa9a1c52f04895/6bcf876bd9246efa.jpg');

-- ----------------------------
-- Table structure for `service_img`
-- ----------------------------
DROP TABLE IF EXISTS `service_img`;
CREATE TABLE `service_img` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of service_img
-- ----------------------------
INSERT INTO `service_img` VALUES ('0000000001', '移动式emco清洁系统', '/static/upload/817382c122907eff/25770b83c916e2e2.jpg', '<p>我们的特殊清洁车是独一无二的！因此，我们可以快速彻底地清洁和预干燥您的emco入口垫。我们直接在现场完成所有操作，无需任何额外的水或电源连接。更重要的是，我们确保以环保的方式处理污水。</p>');
INSERT INTO `service_img` VALUES ('0000000002', '入口垫 - 测量', '/static/upload/084c0a9afbaf0406/086901125fff0bcf.jpg', '<p>我们的入口垫专家也会为您准备入口区域。凭借我们的激光测量设备和技术专长，我们非常乐意为您服务。立即联系我们的服务部门。</p>');

-- ----------------------------
-- Table structure for `store_express`
-- ----------------------------
DROP TABLE IF EXISTS `store_express`;
CREATE TABLE `store_express` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `express_title` varchar(50) DEFAULT '' COMMENT '快递公司名称',
  `express_code` varchar(50) DEFAULT '' COMMENT '快递公司代码',
  `express_desc` text COMMENT '快递公司描述',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(0.无效,1.有效)',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '排序',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COMMENT='商城快递配置';

-- ----------------------------
-- Records of store_express
-- ----------------------------
INSERT INTO `store_express` VALUES ('5', 'AAE全球专递', 'aae', '顺丰快递公司', '0', '0', '0', '2017-09-12 11:53:40');
INSERT INTO `store_express` VALUES ('6', '安捷快递', 'anjie', '', '0', '0', '0', '2017-09-13 15:27:26');
INSERT INTO `store_express` VALUES ('7', '安信达快递', 'anxindakuaixi', null, '0', '0', '0', '2017-09-13 16:05:19');
INSERT INTO `store_express` VALUES ('8', '彪记快递', 'biaojikuaidi', null, '0', '0', '0', '2017-09-13 16:05:26');
INSERT INTO `store_express` VALUES ('9', 'BHT', 'bht', '', '0', '0', '0', '2017-09-13 16:05:37');
INSERT INTO `store_express` VALUES ('10', '百福东方国际物流', 'baifudongfang', null, '0', '0', '0', '2017-09-13 16:05:41');
INSERT INTO `store_express` VALUES ('11', '中国东方（COE）', 'coe', null, '0', '0', '0', '2017-09-13 16:05:48');
INSERT INTO `store_express` VALUES ('12', '长宇物流', 'changyuwuliu', null, '0', '0', '0', '2017-09-13 16:05:58');
INSERT INTO `store_express` VALUES ('13', '大田物流', 'datianwuliu', null, '0', '0', '0', '2017-09-13 16:06:06');
INSERT INTO `store_express` VALUES ('14', '德邦物流', 'debangwuliu', null, '1', '1', '0', '2017-09-13 16:06:14');
INSERT INTO `store_express` VALUES ('15', 'DHL', 'dhl', null, '0', '0', '0', '2017-09-13 16:06:24');
INSERT INTO `store_express` VALUES ('16', 'DPEX', 'dpex', null, '0', '0', '0', '2017-09-13 16:06:29');
INSERT INTO `store_express` VALUES ('17', 'd速快递', 'dsukuaidi', null, '0', '0', '0', '2017-09-13 16:06:34');
INSERT INTO `store_express` VALUES ('18', '递四方', 'disifang', null, '0', '0', '0', '2017-09-13 16:06:40');
INSERT INTO `store_express` VALUES ('19', 'EMS快递', 'ems', '', '1', '0', '0', '2017-09-13 16:06:47');
INSERT INTO `store_express` VALUES ('20', 'FEDEX（国外）', 'fedex', null, '0', '0', '0', '2017-09-13 16:06:56');
INSERT INTO `store_express` VALUES ('21', '飞康达物流', 'feikangda', null, '0', '0', '0', '2017-09-13 16:07:03');
INSERT INTO `store_express` VALUES ('22', '凤凰快递', 'fenghuangkuaidi', null, '0', '0', '0', '2017-09-13 16:07:10');
INSERT INTO `store_express` VALUES ('23', '飞快达', 'feikuaida', null, '0', '0', '0', '2017-09-13 16:07:16');
INSERT INTO `store_express` VALUES ('24', '国通快递', 'guotongkuaidi', null, '0', '0', '0', '2017-09-13 16:07:27');
INSERT INTO `store_express` VALUES ('25', '港中能达物流', 'ganzhongnengda', null, '0', '0', '0', '2017-09-13 16:07:33');
INSERT INTO `store_express` VALUES ('26', '广东邮政物流', 'guangdongyouzhengwuliu', null, '0', '0', '0', '2017-09-13 16:08:22');
INSERT INTO `store_express` VALUES ('27', '共速达', 'gongsuda', null, '0', '0', '0', '2017-09-13 16:08:48');
INSERT INTO `store_express` VALUES ('28', '汇通快运', 'huitongkuaidi', null, '0', '0', '0', '2017-09-13 16:08:56');
INSERT INTO `store_express` VALUES ('29', '恒路物流', 'hengluwuliu', null, '0', '0', '0', '2017-09-13 16:09:02');
INSERT INTO `store_express` VALUES ('30', '华夏龙物流', 'huaxialongwuliu', null, '0', '0', '0', '2017-09-13 16:09:12');
INSERT INTO `store_express` VALUES ('31', '海红', 'haihongwangsong', null, '0', '0', '0', '2017-09-13 16:09:20');
INSERT INTO `store_express` VALUES ('32', '海外环球', 'haiwaihuanqiu', null, '0', '0', '0', '2017-09-13 16:09:27');
INSERT INTO `store_express` VALUES ('33', '佳怡物流', 'jiayiwuliu', null, '0', '0', '0', '2017-09-13 16:09:35');
INSERT INTO `store_express` VALUES ('34', '京广速递', 'jinguangsudikuaijian', null, '0', '0', '0', '2017-09-13 16:09:42');
INSERT INTO `store_express` VALUES ('35', '急先达', 'jixianda', null, '0', '0', '0', '2017-09-13 16:09:49');
INSERT INTO `store_express` VALUES ('36', '佳吉物流', 'jjwl', null, '0', '0', '0', '2017-09-13 16:10:01');
INSERT INTO `store_express` VALUES ('37', '加运美物流', 'jymwl', null, '0', '0', '0', '2017-09-13 16:10:13');
INSERT INTO `store_express` VALUES ('38', '金大物流', 'jindawuliu', null, '0', '0', '0', '2017-09-13 16:10:22');
INSERT INTO `store_express` VALUES ('39', '嘉里大通', 'jialidatong', null, '0', '0', '0', '2017-09-13 16:10:33');
INSERT INTO `store_express` VALUES ('40', '晋越快递', 'jykd', null, '0', '0', '0', '2017-09-13 16:10:40');
INSERT INTO `store_express` VALUES ('41', '快捷速递', 'kuaijiesudi', null, '0', '0', '0', '2017-09-13 16:10:49');
INSERT INTO `store_express` VALUES ('42', '联邦快递（国内）', 'lianb', null, '0', '0', '0', '2017-09-13 16:10:58');
INSERT INTO `store_express` VALUES ('43', '联昊通物流', 'lianhaowuliu', null, '0', '0', '0', '2017-09-13 16:11:07');
INSERT INTO `store_express` VALUES ('44', '龙邦物流', 'longbanwuliu', null, '0', '0', '0', '2017-09-13 16:11:15');
INSERT INTO `store_express` VALUES ('45', '立即送', 'lijisong', null, '0', '0', '0', '2017-09-13 16:11:25');
INSERT INTO `store_express` VALUES ('46', '乐捷递', 'lejiedi', null, '0', '0', '0', '2017-09-13 16:11:36');
INSERT INTO `store_express` VALUES ('47', '民航快递', 'minghangkuaidi', null, '0', '0', '0', '2017-09-13 16:11:45');
INSERT INTO `store_express` VALUES ('48', '美国快递', 'meiguokuaidi', null, '0', '0', '0', '2017-09-13 16:11:53');
INSERT INTO `store_express` VALUES ('49', '门对门', 'menduimen', null, '0', '0', '0', '2017-09-13 16:12:01');
INSERT INTO `store_express` VALUES ('50', 'OCS', 'ocs', null, '0', '0', '0', '2017-09-13 16:12:10');
INSERT INTO `store_express` VALUES ('51', '配思货运', 'peisihuoyunkuaidi', null, '0', '0', '0', '2017-09-13 16:12:18');
INSERT INTO `store_express` VALUES ('52', '全晨快递', 'quanchenkuaidi', null, '0', '0', '0', '2017-09-13 16:12:26');
INSERT INTO `store_express` VALUES ('53', '全峰快递', 'quanfengkuaidi', null, '0', '0', '0', '2017-09-13 16:12:34');
INSERT INTO `store_express` VALUES ('54', '全际通物流', 'quanjitong', null, '0', '0', '0', '2017-09-13 16:12:41');
INSERT INTO `store_express` VALUES ('55', '全日通快递', 'quanritongkuaidi', null, '0', '0', '0', '2017-09-13 16:12:49');
INSERT INTO `store_express` VALUES ('56', '全一快递', 'quanyikuaidi', null, '0', '0', '0', '2017-09-13 16:12:56');
INSERT INTO `store_express` VALUES ('57', '如风达', 'rufengda', null, '0', '0', '0', '2017-09-13 16:13:03');
INSERT INTO `store_express` VALUES ('58', '三态速递', 'santaisudi', null, '0', '0', '0', '2017-09-13 16:13:15');
INSERT INTO `store_express` VALUES ('59', '盛辉物流', 'shenghuiwuliu', null, '0', '0', '0', '2017-09-13 16:13:22');
INSERT INTO `store_express` VALUES ('60', '申通', 'shentong', null, '0', '0', '0', '2017-09-13 16:13:34');
INSERT INTO `store_express` VALUES ('61', '顺丰', 'shunfeng', '', '1', '0', '0', '2017-09-13 16:13:41');
INSERT INTO `store_express` VALUES ('62', '速尔物流', 'sue', null, '0', '0', '0', '2017-09-13 16:13:48');
INSERT INTO `store_express` VALUES ('63', '盛丰物流', 'shengfeng', null, '0', '0', '0', '2017-09-13 16:13:55');
INSERT INTO `store_express` VALUES ('64', '赛澳递', 'saiaodi', null, '0', '0', '0', '2017-09-13 16:14:02');
INSERT INTO `store_express` VALUES ('65', '天地华宇', 'tiandihuayu', null, '0', '0', '0', '2017-09-13 16:14:11');
INSERT INTO `store_express` VALUES ('66', '天天快递', 'tiantian', null, '0', '0', '0', '2017-09-13 16:14:19');
INSERT INTO `store_express` VALUES ('67', 'TNT', 'tnt', null, '0', '0', '0', '2017-09-13 16:14:26');
INSERT INTO `store_express` VALUES ('68', 'UPS', 'ups', null, '0', '0', '0', '2017-09-13 16:14:29');
INSERT INTO `store_express` VALUES ('69', '万家物流', 'wanjiawuliu', null, '0', '0', '0', '2017-09-13 16:14:37');
INSERT INTO `store_express` VALUES ('70', '文捷航空速递', 'wenjiesudi', null, '0', '0', '0', '2017-09-13 16:14:46');
INSERT INTO `store_express` VALUES ('71', '伍圆', 'wuyuan', null, '0', '0', '0', '2017-09-13 16:14:52');
INSERT INTO `store_express` VALUES ('72', '万象物流', 'wxwl', null, '0', '0', '0', '2017-09-13 16:15:00');
INSERT INTO `store_express` VALUES ('73', '新邦物流', 'xinbangwuliu', null, '0', '0', '0', '2017-09-13 16:15:06');
INSERT INTO `store_express` VALUES ('74', '信丰物流', 'xinfengwuliu', null, '0', '0', '0', '2017-09-13 16:15:15');
INSERT INTO `store_express` VALUES ('75', '亚风速递', 'yafengsudi', null, '0', '0', '0', '2017-09-13 16:15:23');
INSERT INTO `store_express` VALUES ('76', '一邦速递', 'yibangwuliu', null, '0', '0', '0', '2017-09-13 16:15:30');
INSERT INTO `store_express` VALUES ('77', '优速物流', 'youshuwuliu', null, '0', '0', '0', '2017-09-13 16:15:36');
INSERT INTO `store_express` VALUES ('78', '邮政包裹挂号信', 'youzhengguonei', null, '0', '3', '0', '2017-09-13 16:15:44');
INSERT INTO `store_express` VALUES ('79', '邮政国际包裹挂号信', 'youzhengguoji', null, '0', '2', '0', '2017-09-13 16:15:51');
INSERT INTO `store_express` VALUES ('80', '远成物流', 'yuanchengwuliu', null, '0', '0', '0', '2017-09-13 16:15:57');
INSERT INTO `store_express` VALUES ('81', '圆通速递', 'yuantong', null, '1', '1', '0', '2017-09-13 16:16:03');
INSERT INTO `store_express` VALUES ('82', '源伟丰快递', 'yuanweifeng', null, '0', '0', '0', '2017-09-13 16:16:10');
INSERT INTO `store_express` VALUES ('83', '元智捷诚快递', 'yuanzhijiecheng', null, '0', '0', '0', '2017-09-13 16:16:17');
INSERT INTO `store_express` VALUES ('84', '韵达快运', 'yunda', null, '0', '0', '0', '2017-09-13 16:16:24');
INSERT INTO `store_express` VALUES ('85', '运通快递', 'yuntongkuaidi', null, '0', '0', '0', '2017-09-13 16:16:33');
INSERT INTO `store_express` VALUES ('86', '越丰物流', 'yuefengwuliu', null, '0', '0', '0', '2017-09-13 16:16:40');
INSERT INTO `store_express` VALUES ('87', '源安达', 'yad', null, '0', '0', '0', '2017-09-13 16:16:47');
INSERT INTO `store_express` VALUES ('88', '银捷速递', 'yinjiesudi', null, '0', '0', '0', '2017-09-13 16:16:56');
INSERT INTO `store_express` VALUES ('89', '宅急送', 'zhaijisong', null, '0', '0', '0', '2017-09-13 16:17:03');
INSERT INTO `store_express` VALUES ('90', '中铁快运', 'zhongtiekuaiyun', null, '0', '0', '0', '2017-09-13 16:17:10');
INSERT INTO `store_express` VALUES ('91', '中通速递', 'zhongtong', '', '0', '0', '0', '2017-09-13 16:17:16');
INSERT INTO `store_express` VALUES ('92', '中邮物流', 'zhongyouwuliu', null, '0', '0', '0', '2017-09-13 16:17:27');
INSERT INTO `store_express` VALUES ('93', '忠信达', 'zhongxinda', null, '0', '0', '0', '2017-09-13 16:17:34');
INSERT INTO `store_express` VALUES ('94', '芝麻开门', 'zhimakaimen', null, '0', '0', '0', '2017-09-13 16:17:41');

-- ----------------------------
-- Table structure for `store_goods`
-- ----------------------------
DROP TABLE IF EXISTS `store_goods`;
CREATE TABLE `store_goods` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `brand_id` bigint(20) unsigned DEFAULT '0' COMMENT '品牌ID',
  `cate_id` bigint(20) unsigned DEFAULT '0' COMMENT '商品分类id',
  `unit_id` bigint(20) DEFAULT NULL COMMENT '商品单位ID',
  `spec_id` bigint(20) unsigned DEFAULT '0' COMMENT '规格ID',
  `tags_id` varchar(255) DEFAULT '' COMMENT '商品标签ID',
  `is_code` bigint(1) DEFAULT '1' COMMENT '是否有码商品',
  `goods_title` varchar(255) DEFAULT '' COMMENT '商品标签',
  `goods_content` text COMMENT '商品内容',
  `goods_logo` varchar(255) DEFAULT '' COMMENT '商品LOGO',
  `goods_image` text COMMENT '商品图片地址',
  `goods_video` varchar(500) DEFAULT '' COMMENT '商品视频URL',
  `goods_desc` varchar(500) DEFAULT '' COMMENT '商品描述',
  `package_stock` bigint(20) unsigned DEFAULT '0' COMMENT '总库存数量',
  `package_sale` bigint(20) unsigned DEFAULT '0' COMMENT '已销售数量',
  `favorite_num` bigint(20) unsigned DEFAULT '0' COMMENT '收藏次数',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '数据排序',
  `status` bigint(1) unsigned DEFAULT '1' COMMENT '商品状态(1有效,0无效)',
  `is_deleted` bigint(1) unsigned DEFAULT '0' COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商城商品主表';

-- ----------------------------
-- Records of store_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `store_goods_brand`
-- ----------------------------
DROP TABLE IF EXISTS `store_goods_brand`;
CREATE TABLE `store_goods_brand` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `brand_logo` varchar(1024) DEFAULT '' COMMENT '品牌logo',
  `brand_cover` varchar(1024) DEFAULT '' COMMENT '品牌封面',
  `brand_title` varchar(255) DEFAULT '' COMMENT '商品品牌名称',
  `brand_desc` text COMMENT '商品品牌描述',
  `brand_detail` text COMMENT '品牌图文信息',
  `sort` int(11) unsigned DEFAULT '0' COMMENT '商品分类排序',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '商品状态(1有效,0无效)',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品品牌';

-- ----------------------------
-- Records of store_goods_brand
-- ----------------------------

-- ----------------------------
-- Table structure for `store_goods_cate`
-- ----------------------------
DROP TABLE IF EXISTS `store_goods_cate`;
CREATE TABLE `store_goods_cate` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) unsigned DEFAULT '0' COMMENT '上级分类编号',
  `brand_id` bigint(20) DEFAULT '0' COMMENT '品牌ID',
  `cate_title` varchar(255) DEFAULT '' COMMENT '商品分类名称',
  `cate_desc` text COMMENT '商品分类',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '商品分类排序',
  `status` bigint(1) unsigned DEFAULT '1' COMMENT '商品状态(1有效,0无效)',
  `is_deleted` bigint(1) unsigned DEFAULT '0' COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商城商品分类';

-- ----------------------------
-- Records of store_goods_cate
-- ----------------------------

-- ----------------------------
-- Table structure for `store_goods_list`
-- ----------------------------
DROP TABLE IF EXISTS `store_goods_list`;
CREATE TABLE `store_goods_list` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` bigint(20) unsigned DEFAULT '0' COMMENT '商品ID',
  `goods_spec` varchar(255) DEFAULT '' COMMENT '商品规格名称',
  `goods_number` bigint(20) unsigned DEFAULT '0' COMMENT '商品礼品-商品数量',
  `market_price` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '销售价格',
  `selling_price` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '商品价格',
  `goods_stock` bigint(20) unsigned DEFAULT '0' COMMENT '商品库存统计',
  `goods_sale` bigint(20) unsigned DEFAULT '0' COMMENT '已销售数量',
  `status` bigint(1) unsigned DEFAULT '1' COMMENT '商品状态(1有效,0无效)',
  `is_deleted` bigint(1) unsigned DEFAULT '0' COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商城商品列表';

-- ----------------------------
-- Records of store_goods_list
-- ----------------------------

-- ----------------------------
-- Table structure for `store_goods_spec`
-- ----------------------------
DROP TABLE IF EXISTS `store_goods_spec`;
CREATE TABLE `store_goods_spec` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mch_id` bigint(20) unsigned DEFAULT '0' COMMENT '商户ID',
  `spec_title` varchar(255) DEFAULT '' COMMENT '商品规格名称',
  `spec_param` varchar(255) DEFAULT '' COMMENT '商品规格参数',
  `spec_desc` varchar(255) DEFAULT '' COMMENT '商品规格描述',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '商品规格排序',
  `status` bigint(1) unsigned DEFAULT '1' COMMENT '商品状态(1有效,0无效)',
  `is_deleted` bigint(1) unsigned DEFAULT '0' COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_store_goods_spec_mch_id` (`mch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商城商品规格';

-- ----------------------------
-- Records of store_goods_spec
-- ----------------------------

-- ----------------------------
-- Table structure for `store_goods_stock`
-- ----------------------------
DROP TABLE IF EXISTS `store_goods_stock`;
CREATE TABLE `store_goods_stock` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` bigint(20) unsigned DEFAULT '0' COMMENT '商品ID',
  `goods_spec` varchar(255) DEFAULT '' COMMENT '商品属性',
  `goods_stock` bigint(20) unsigned DEFAULT '0' COMMENT '商品库存',
  `stock_desc` varchar(255) DEFAULT '' COMMENT '商品库存描述',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '数据排序',
  `status` bigint(1) unsigned DEFAULT '1' COMMENT '商品状态(1有效,0无效)',
  `is_deleted` bigint(1) unsigned DEFAULT '0' COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商城商品库存';

-- ----------------------------
-- Records of store_goods_stock
-- ----------------------------

-- ----------------------------
-- Table structure for `store_member`
-- ----------------------------
DROP TABLE IF EXISTS `store_member`;
CREATE TABLE `store_member` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(100) DEFAULT '' COMMENT '会员微信OPENID',
  `phone` varchar(16) DEFAULT '' COMMENT '会员手机号',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码',
  `nickname` varchar(20) DEFAULT '' COMMENT '会员昵称',
  `headimg` varchar(500) DEFAULT '' COMMENT '会员头像',
  `sex` char(2) DEFAULT '' COMMENT '性别',
  `level` tinyint(2) unsigned DEFAULT '1' COMMENT '会员级别',
  `remark` varchar(500) DEFAULT '' COMMENT '会员个性签名',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '会员状态(1有效,0无效)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_store_member_openid` (`openid`) USING BTREE,
  KEY `index_store_member_phone` (`phone`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商城会员信息';

-- ----------------------------
-- Records of store_member
-- ----------------------------

-- ----------------------------
-- Table structure for `store_member_address`
-- ----------------------------
DROP TABLE IF EXISTS `store_member_address`;
CREATE TABLE `store_member_address` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) unsigned DEFAULT '0' COMMENT '会员ID',
  `username` varchar(20) DEFAULT '' COMMENT '收货人姓名',
  `phone` varchar(16) DEFAULT '' COMMENT '收货手机号',
  `province` varchar(50) DEFAULT '' COMMENT '收货地址省份',
  `city` varchar(50) DEFAULT '' COMMENT '收货地址城市',
  `area` varchar(255) DEFAULT '' COMMENT '收货地址区域',
  `address` varchar(255) DEFAULT '' COMMENT '收货详细地址',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(0无效, 1新快递)',
  `is_default` tinyint(1) unsigned DEFAULT '1' COMMENT '默认收货地址',
  `is_deleted` bigint(1) unsigned DEFAULT '0' COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商城会员收货地址';

-- ----------------------------
-- Records of store_member_address
-- ----------------------------

-- ----------------------------
-- Table structure for `store_order`
-- ----------------------------
DROP TABLE IF EXISTS `store_order`;
CREATE TABLE `store_order` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned DEFAULT '1' COMMENT '订单类型(1普通订单,2积分订单)',
  `mid` bigint(20) unsigned DEFAULT '0' COMMENT '会员ID',
  `order_no` char(10) DEFAULT '' COMMENT '订单号',
  `freight_price` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '快递费',
  `goods_price` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '商品总金额(不含快递费)',
  `real_price` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '真实支付金额(商品金额+快递金额)',
  `is_pay` tinyint(1) unsigned DEFAULT '0' COMMENT '订单支付状态(0.未支付,1.已支付)',
  `pay_type` varchar(255) DEFAULT '' COMMENT '支付方式 (wechat微信支付, alipay支付宝支付)',
  `pay_no` varchar(100) DEFAULT '' COMMENT '商户交易号',
  `pay_price` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '实际支付金额',
  `pay_at` datetime DEFAULT NULL COMMENT '支付时间',
  `desc` text COMMENT '订单描述',
  `status` bigint(1) unsigned DEFAULT '1' COMMENT '订单状态(0.无效,1.新订单,2.待发货,3.已发货,4.已收货,5.已完成,6.已退货及退款)',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_store_order_order_no` (`order_no`) USING BTREE,
  KEY `index_store_order_status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商城订单主表';

-- ----------------------------
-- Records of store_order
-- ----------------------------

-- ----------------------------
-- Table structure for `store_order_express`
-- ----------------------------
DROP TABLE IF EXISTS `store_order_express`;
CREATE TABLE `store_order_express` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) unsigned DEFAULT '0' COMMENT '会员ID',
  `type` tinyint(1) unsigned DEFAULT '0' COMMENT '快递类型(0.订单快递,1.退货快递)',
  `order_no` char(10) DEFAULT '' COMMENT '订单编号',
  `company_title` varchar(50) DEFAULT '' COMMENT '物流公司名称',
  `company_code` varchar(50) DEFAULT '' COMMENT '物流公司编码',
  `username` varchar(20) DEFAULT '' COMMENT '收货人姓名',
  `phone` varchar(16) DEFAULT '' COMMENT '收货手机号',
  `province` varchar(50) DEFAULT NULL COMMENT '收货地址省份',
  `city` varchar(50) DEFAULT '' COMMENT '收货地址城市',
  `area` varchar(255) DEFAULT '' COMMENT '收货地址区域',
  `address` varchar(255) DEFAULT '' COMMENT '收货详细地址',
  `send_no` varchar(50) DEFAULT '' COMMENT '实际物流公司单号',
  `send_company_title` varchar(50) DEFAULT '' COMMENT '实际发货快递公司',
  `send_company_code` varchar(50) DEFAULT '' COMMENT '实际发货快递代码',
  `send_username` varchar(255) DEFAULT '' COMMENT '寄件人名称',
  `send_phone` varchar(16) DEFAULT '' COMMENT '寄件人手机号',
  `send_province` varchar(50) DEFAULT '' COMMENT '寄件人地址省份',
  `send_city` varchar(50) DEFAULT '' COMMENT '寄件人地址城市',
  `send_area` varchar(255) DEFAULT '' COMMENT '寄件人地址区域',
  `send_address` varchar(255) DEFAULT '' COMMENT '寄件人详细地址',
  `send_at` datetime DEFAULT NULL COMMENT '快递发货时间',
  `desc` text COMMENT '发货描述',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(0.无效,1.新快递,2.已签收,3.签收失败)',
  `is_deleted` bigint(1) unsigned DEFAULT '0' COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商城订单快递';

-- ----------------------------
-- Records of store_order_express
-- ----------------------------

-- ----------------------------
-- Table structure for `store_order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `store_order_goods`;
CREATE TABLE `store_order_goods` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) unsigned DEFAULT '0' COMMENT '会员ID',
  `order_no` char(10) DEFAULT '' COMMENT '订单编号',
  `goods_id` bigint(20) DEFAULT '0' COMMENT '商品ID',
  `goods_title` varchar(255) DEFAULT '' COMMENT '商品标签',
  `goods_spec` varchar(255) DEFAULT '' COMMENT '商品规格',
  `goods_logo` varchar(255) DEFAULT '' COMMENT '商品LOGO',
  `goods_image` text COMMENT '商品图片地址',
  `market_price` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '市场价格',
  `selling_price` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '商品销售价格',
  `price_field` varchar(20) DEFAULT 'selling_price' COMMENT '计价字段',
  `number` bigint(20) unsigned DEFAULT '0' COMMENT '订单商品数量',
  `status` bigint(1) unsigned DEFAULT '1' COMMENT '商品状态(1有效,0无效)',
  `is_deleted` bigint(1) unsigned DEFAULT '0' COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_store_order_list_order_no` (`order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商城订单关联商品';

-- ----------------------------
-- Records of store_order_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `swingcates`
-- ----------------------------
DROP TABLE IF EXISTS `swingcates`;
CREATE TABLE `swingcates` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '游泳池栅格类别名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of swingcates
-- ----------------------------
INSERT INTO `swingcates` VALUES ('0000000001', '饰品');
INSERT INTO `swingcates` VALUES ('0000000002', '游泳池格栅');
INSERT INTO `swingcates` VALUES ('0000000003', '地板格栅');
INSERT INTO `swingcates` VALUES ('0000000004', '卫生垫');
INSERT INTO `swingcates` VALUES ('0000000005', '覆盖光栅');

-- ----------------------------
-- Table structure for `swingdang`
-- ----------------------------
DROP TABLE IF EXISTS `swingdang`;
CREATE TABLE `swingdang` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '游泳池档案运行类类别',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of swingdang
-- ----------------------------
INSERT INTO `swingdang` VALUES ('0000000001', '卷帘游泳池光栅，光栅棒与泳池边缘成直角');
INSERT INTO `swingdang` VALUES ('0000000002', '刚性游泳池光栅，光栅棒与泳池边缘平行');
INSERT INTO `swingdang` VALUES ('0000000003', '刚性游泳池光栅，光栅棒与泳池边缘成直角');

-- ----------------------------
-- Table structure for `swingother`
-- ----------------------------
DROP TABLE IF EXISTS `swingother`;
CREATE TABLE `swingother` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '游泳池其他产品类别',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of swingother
-- ----------------------------

-- ----------------------------
-- Table structure for `swing_banner`
-- ----------------------------
DROP TABLE IF EXISTS `swing_banner`;
CREATE TABLE `swing_banner` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `s_id` int(10) unsigned NOT NULL COMMENT '对应产品表的产品id',
  `img` varchar(255) NOT NULL COMMENT '产品轮播图(大图)',
  `small_img` varchar(255) NOT NULL COMMENT '产品轮播图(小图)',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='产品轮播表';

-- ----------------------------
-- Records of swing_banner
-- ----------------------------
INSERT INTO `swing_banner` VALUES ('0000000001', '1', '/static/upload/f4714e1c9373f6f4/fdffd85921c720b7.jpg', '/static/upload/32ecad4b8f6af9a0/d8f70f454c1e25ca.jpg', '2019-03-21 18:02:35');
INSERT INTO `swing_banner` VALUES ('0000000002', '1', '/static/upload/6b2b1bbed3285ae9/7b6c50d727c99a76.jpg', '/static/upload/3408f72170402794/8de5c0bb37315d75.jpg', '2019-03-21 18:03:02');
INSERT INTO `swing_banner` VALUES ('0000000003', '1', '/static/upload/f893f94127a3d3f2/0c80f8dcdbc1733a.jpg', '/static/upload/f8476f475875e9d0/f5816624c6c5aefc.jpg', '2019-03-21 18:05:28');
INSERT INTO `swing_banner` VALUES ('0000000004', '2', '/static/upload/159a8ad27d53e938/4c87f1709359e4f9.jpg', '/static/upload/86b53f70f8dccbc0/96d6512108a0677f.jpg', '2019-03-21 18:27:29');
INSERT INTO `swing_banner` VALUES ('0000000005', '3', '/static/upload/12eb43ab487d8d61/893ffceb3b073bcf.jpg', '', '2019-03-21 18:38:29');

-- ----------------------------
-- Table structure for `swing_color`
-- ----------------------------
DROP TABLE IF EXISTS `swing_color`;
CREATE TABLE `swing_color` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `s_id` int(10) unsigned DEFAULT NULL COMMENT '对应游泳池产品id',
  `img` varchar(255) DEFAULT NULL COMMENT '游泳池产品颜色',
  `title` varchar(255) DEFAULT NULL COMMENT '游泳池产品颜色名称',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of swing_color
-- ----------------------------
INSERT INTO `swing_color` VALUES ('0000000001', '1', '/static/upload/befd208b916c5069/95ddc8885197f49d.jpg', '灰色 - 类似于RAL 7001', '2019-03-21 17:59:46');
INSERT INTO `swing_color` VALUES ('0000000002', '1', '/static/upload/f620ba0d6d9085dd/0d375e475fb31020.jpg', '白色 - 类似于RAL 9010', '2019-03-21 17:59:16');
INSERT INTO `swing_color` VALUES ('0000000003', '1', '/static/upload/7663363e01923c8f/1f78643cc8227671.jpg', '米色 - 类似于RAL 1001', '2019-03-21 18:00:07');
INSERT INTO `swing_color` VALUES ('0000000004', '1', '/static/upload/8e3af2b70c75ef09/318ab16965af9c6e.jpg', '黄色 - 类似于RAL 1018', '2019-03-21 18:00:23');
INSERT INTO `swing_color` VALUES ('0000000005', '2', '/static/upload/f620ba0d6d9085dd/0d375e475fb31020.jpg', '白色 - 类似于RAL 9010', '2019-03-21 18:21:42');
INSERT INTO `swing_color` VALUES ('0000000006', '2', '/static/upload/befd208b916c5069/95ddc8885197f49d.jpg', '灰色 - 类似于RAL 7001', '2019-03-21 18:25:46');
INSERT INTO `swing_color` VALUES ('0000000007', '2', '/static/upload/7663363e01923c8f/1f78643cc8227671.jpg', '米色 - 类似于RAL 1001', '2019-03-21 18:26:09');
INSERT INTO `swing_color` VALUES ('0000000008', '3', '/static/upload/f620ba0d6d9085dd/0d375e475fb31020.jpg', '白色 - 类似于RAL 9010', '2019-03-21 18:37:55');

-- ----------------------------
-- Table structure for `swing_protucts`
-- ----------------------------
DROP TABLE IF EXISTS `swing_protucts`;
CREATE TABLE `swing_protucts` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `sid` int(10) unsigned NOT NULL COMMENT '对应游泳池栅格标id',
  `did` int(10) unsigned NOT NULL COMMENT '游泳池档案运行id',
  `hid` int(10) unsigned DEFAULT NULL COMMENT '对应高度表id',
  `s_id` int(10) unsigned NOT NULL COMMENT '关联产品分类id',
  `tuzhi` varchar(255) NOT NULL COMMENT '图纸',
  `title` varchar(100) NOT NULL COMMENT '产品名称',
  `miaoshu` varchar(200) NOT NULL COMMENT '描述',
  `color` varchar(255) NOT NULL COMMENT '颜色（多个以，号分割）',
  `te_color` varchar(255) NOT NULL COMMENT '特殊颜色',
  `lianxi` varchar(255) NOT NULL COMMENT '联系',
  `fuwu` varchar(255) NOT NULL COMMENT '服务信息（多个以，号分割）',
  `zhanbiao` varchar(255) NOT NULL COMMENT '招标文本',
  `shouce` varchar(255) NOT NULL COMMENT '手册',
  `jiage` varchar(255) NOT NULL COMMENT '价目表',
  `buju` varchar(255) NOT NULL COMMENT '竞相布局',
  `chanp` varchar(255) NOT NULL COMMENT '产品数据表pdf',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of swing_protucts
-- ----------------------------
INSERT INTO `swing_protucts` VALUES ('0000000001', '1', '1', '1', '1', '', '* Gehrungsecke', '斜角，自立', '白色 - 类似于RAL 9010,  灰色 - 类似于RAL 7001,  米色 - 类似于RAL 1001,  黄色 - 类似于RAL 1018', '大多数特殊颜色（根据RAL或瓷砖样品）都可用。', 'emco Bautechnik GmbH·BreslauerStraße34 - 38·49808 Lingen（Ems）·德国·电话：0591 / 9140-0·传真：0591 / 9140-852·电子邮件：bau@emco.de·www.eemco-bau。 COM', '尺寸标注, 安装服务, 维修', '', '', '', '', '', '2019-03-22 13:35:57');
INSERT INTO `swing_protucts` VALUES ('0000000002', '1', '1', '1', '1', '', '*Faecherecke', '风扇转角（135˚-179˚）', '白色 - 类似于RAL 9010 ,灰色 - 类似于RAL 7001 , 米色 - 类似于RAL 1001 , 黄色 - 类似于RAL 1018', '大多数特殊颜色（根据RAL或瓷砖样品）都可用。', 'emco Bautechnik GmbH·BreslauerStraße34 - 38·49808 Lingen（Ems）·德国·电话：0591 / 9140-0·传真：0591 / 9140-852·电子邮件：bau@emco.de·www.eemco-bau。 COM', '尺寸标注,安装服务,维修', '', '', '', '', '', '2019-03-22 13:35:46');
INSERT INTO `swing_protucts` VALUES ('0000000003', '1', '1', '2', '2', '/static/upload/074de0555829c472/02e6e5bdc63f795f.jpg', '780', '预装配型，倾斜型材尺寸为25 x 28 x 3 mm或28 x 25 x 3 mm，适用于建筑高度为22和25 mm的游泳池格栅。仅适用于直线型材。', '白色 - 类似于RAL 9010,', '白色', 'emco Bautechnik GmbH·BreslauerStraße34 - 38·49808 Lingen（Ems）·德国·电话：0591 / 9140-0·传真：0591 / 9140-852·电子邮件：bau@emco.de·www.eemco-bau。 COM', '尺寸标注', '', '', '', '是', '', '2019-03-22 14:11:25');

-- ----------------------------
-- Table structure for `swing_pro_cates`
-- ----------------------------
DROP TABLE IF EXISTS `swing_pro_cates`;
CREATE TABLE `swing_pro_cates` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '用泳池产品分类标题',
  `img` varchar(255) NOT NULL COMMENT '分类展示图',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of swing_pro_cates
-- ----------------------------
INSERT INTO `swing_pro_cates` VALUES ('0000000001', 'emco游泳池格栅角落解决方案', '/static/upload/6a53d4a756c7e9f1/97e748475eacde5c.jpg');
INSERT INTO `swing_pro_cates` VALUES ('0000000002', 'emco游泳池格栅安装框架', '/static/upload/e1a24b73c1c19f1c/e0b78c5e2b0c915c.jpg');

-- ----------------------------
-- Table structure for `swing_shi`
-- ----------------------------
DROP TABLE IF EXISTS `swing_shi`;
CREATE TABLE `swing_shi` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '饰品类别名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of swing_shi
-- ----------------------------

-- ----------------------------
-- Table structure for `system_auth`
-- ----------------------------
DROP TABLE IF EXISTS `system_auth`;
CREATE TABLE `system_auth` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL COMMENT '权限名称',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(1:禁用,2:启用)',
  `sort` smallint(6) unsigned DEFAULT '0' COMMENT '排序权重',
  `desc` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `create_by` bigint(11) unsigned DEFAULT '0' COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_system_auth_title` (`title`) USING BTREE,
  KEY `index_system_auth_status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统权限表';

-- ----------------------------
-- Records of system_auth
-- ----------------------------

-- ----------------------------
-- Table structure for `system_auth_node`
-- ----------------------------
DROP TABLE IF EXISTS `system_auth_node`;
CREATE TABLE `system_auth_node` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `auth` bigint(20) unsigned DEFAULT NULL COMMENT '角色ID',
  `node` varchar(200) DEFAULT NULL COMMENT '节点路径',
  PRIMARY KEY (`id`),
  KEY `index_system_auth_auth` (`auth`) USING BTREE,
  KEY `index_system_auth_node` (`node`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统角色与节点绑定';

-- ----------------------------
-- Records of system_auth_node
-- ----------------------------

-- ----------------------------
-- Table structure for `system_config`
-- ----------------------------
DROP TABLE IF EXISTS `system_config`;
CREATE TABLE `system_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '配置编码',
  `value` varchar(500) DEFAULT NULL COMMENT '配置值',
  PRIMARY KEY (`id`),
  KEY `index_system_config_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统参数配置';

-- ----------------------------
-- Records of system_config
-- ----------------------------
INSERT INTO `system_config` VALUES ('1', 'app_name', 'emco后台');
INSERT INTO `system_config` VALUES ('2', 'site_name', '');
INSERT INTO `system_config` VALUES ('3', 'app_version', '');
INSERT INTO `system_config` VALUES ('4', 'site_copy', '2014 - 2017 江西九江亿元科技有限公司 www.yumaodian.com 版权所有,御猫店网店转让平台');
INSERT INTO `system_config` VALUES ('5', 'browser_icon', 'http://service.thinkadmin.top/static/upload/f47b8fe06e38ae99/08e8398da45583b9.png');
INSERT INTO `system_config` VALUES ('6', 'tongji_baidu_key', '');
INSERT INTO `system_config` VALUES ('7', 'miitbeian', '粤ICP备16006642号-2');
INSERT INTO `system_config` VALUES ('8', 'storage_type', 'local');
INSERT INTO `system_config` VALUES ('9', 'storage_local_exts', 'png,jpg,rar,doc,icon,mp4,PDF,pdf,');
INSERT INTO `system_config` VALUES ('10', 'storage_qiniu_bucket', '');
INSERT INTO `system_config` VALUES ('11', 'storage_qiniu_domain', '');
INSERT INTO `system_config` VALUES ('12', 'storage_qiniu_access_key', '');
INSERT INTO `system_config` VALUES ('13', 'storage_qiniu_secret_key', '');
INSERT INTO `system_config` VALUES ('47', 'sign_type', 'MD5');
INSERT INTO `system_config` VALUES ('48', 'input_charset', 'utf-8');
INSERT INTO `system_config` VALUES ('49', 'service', 'create_direct_pay_by_user');
INSERT INTO `system_config` VALUES ('50', 'payment_type', '1');
INSERT INTO `system_config` VALUES ('61', 'img', '');
INSERT INTO `system_config` VALUES ('62', 'wximg', '/static/upload/78a9bdf5144165ae/c989cf33295cda31.jpg');
INSERT INTO `system_config` VALUES ('64', 'sms_user', '');
INSERT INTO `system_config` VALUES ('65', 'sms_pwd', '');
INSERT INTO `system_config` VALUES ('66', 'sms_prefix', '');
INSERT INTO `system_config` VALUES ('67', 'sms_phone', '');
INSERT INTO `system_config` VALUES ('72', 'urlname', '寻奇者团建,深圳团建定制,深圳拓展培训');
INSERT INTO `system_config` VALUES ('73', 'keywords', '网站关键词，网站关键词，网站关键词，网站关键词，网站关键词，网站关键词，');
INSERT INTO `system_config` VALUES ('74', 'description', '网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，');
INSERT INTO `system_config` VALUES ('75', 'icon', '/static/upload/967b4537d937030e/62cfee19c8e8ee68.png');
INSERT INTO `system_config` VALUES ('76', 'addhtml', '');
INSERT INTO `system_config` VALUES ('77', 'logo', '/static/upload/f68dd4128884d68c/d7b580b171cb5969.png');
INSERT INTO `system_config` VALUES ('78', 'wb', '');
INSERT INTO `system_config` VALUES ('79', 'mobile', '075589255009');
INSERT INTO `system_config` VALUES ('80', 'mobileimg', '/static/upload/7365ecab9072b8b4/20ed1a612f251cee.png');
INSERT INTO `system_config` VALUES ('81', 'lng', '114.306812');
INSERT INTO `system_config` VALUES ('82', 'lat', '31.590857');
INSERT INTO `system_config` VALUES ('83', 'storage_oss_bucket', '');
INSERT INTO `system_config` VALUES ('84', 'storage_oss_endpoint', '');
INSERT INTO `system_config` VALUES ('85', 'storage_oss_domain', '');
INSERT INTO `system_config` VALUES ('86', 'storage_oss_keyid', '');
INSERT INTO `system_config` VALUES ('87', 'storage_oss_secret', '');

-- ----------------------------
-- Table structure for `system_log`
-- ----------------------------
DROP TABLE IF EXISTS `system_log`;
CREATE TABLE `system_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '操作者IP地址',
  `node` char(200) NOT NULL DEFAULT '' COMMENT '当前操作节点',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '操作人用户名',
  `action` varchar(200) NOT NULL DEFAULT '' COMMENT '操作行为',
  `content` text NOT NULL COMMENT '操作内容描述',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=266 DEFAULT CHARSET=utf8 COMMENT='系统操作日志表';

-- ----------------------------
-- Records of system_log
-- ----------------------------
INSERT INTO `system_log` VALUES ('1', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-05 10:54:37');
INSERT INTO `system_log` VALUES ('2', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-08 16:20:19');
INSERT INTO `system_log` VALUES ('3', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-09 09:21:05');
INSERT INTO `system_log` VALUES ('4', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-14 11:40:13');
INSERT INTO `system_log` VALUES ('5', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-19 11:34:21');
INSERT INTO `system_log` VALUES ('6', '127.0.0.1', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2018-05-19 11:54:49');
INSERT INTO `system_log` VALUES ('7', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-26 11:05:20');
INSERT INTO `system_log` VALUES ('8', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-05-26 15:07:38');
INSERT INTO `system_log` VALUES ('9', '127.0.0.1', 'admin/login/index', '1111', '系统管理', '用户登录系统成功', '2018-05-26 15:07:47');
INSERT INTO `system_log` VALUES ('10', '127.0.0.1', 'admin/login/out', '1111', '系统管理', '用户退出系统成功', '2018-05-26 15:07:57');
INSERT INTO `system_log` VALUES ('11', '127.0.0.1', 'admin/login/index', '1111', '系统管理', '用户登录系统成功', '2018-05-26 15:08:13');
INSERT INTO `system_log` VALUES ('12', '127.0.0.1', 'admin/login/out', '1111', '系统管理', '用户退出系统成功', '2018-05-26 15:08:27');
INSERT INTO `system_log` VALUES ('13', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-26 15:08:34');
INSERT INTO `system_log` VALUES ('14', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-05-26 15:08:49');
INSERT INTO `system_log` VALUES ('15', '127.0.0.1', 'admin/login/index', '1111', '系统管理', '用户登录系统成功', '2018-05-26 15:08:56');
INSERT INTO `system_log` VALUES ('16', '127.0.0.1', 'admin/login/out', '1111', '系统管理', '用户退出系统成功', '2018-05-26 15:09:09');
INSERT INTO `system_log` VALUES ('17', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-26 15:09:14');
INSERT INTO `system_log` VALUES ('18', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-05-26 15:20:47');
INSERT INTO `system_log` VALUES ('19', '127.0.0.1', 'admin/login/index', 'gaopan', '系统管理', '用户登录系统成功', '2018-05-26 15:20:56');
INSERT INTO `system_log` VALUES ('20', '127.0.0.1', 'admin/login/out', 'gaopan', '系统管理', '用户退出系统成功', '2018-05-26 15:21:16');
INSERT INTO `system_log` VALUES ('21', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-26 15:21:26');
INSERT INTO `system_log` VALUES ('22', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-26 17:51:18');
INSERT INTO `system_log` VALUES ('23', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-27 17:53:29');
INSERT INTO `system_log` VALUES ('24', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-28 09:09:51');
INSERT INTO `system_log` VALUES ('25', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-05-28 17:55:52');
INSERT INTO `system_log` VALUES ('26', '127.0.0.1', 'admin/login/index', 'gaopan', '系统管理', '用户登录系统成功', '2018-05-28 17:56:03');
INSERT INTO `system_log` VALUES ('27', '127.0.0.1', 'admin/login/out', 'gaopan', '系统管理', '用户退出系统成功', '2018-05-28 17:56:18');
INSERT INTO `system_log` VALUES ('28', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-28 17:56:23');
INSERT INTO `system_log` VALUES ('29', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-05-28 17:58:15');
INSERT INTO `system_log` VALUES ('30', '127.0.0.1', 'admin/login/index', 'gaopan', '系统管理', '用户登录系统成功', '2018-05-28 17:58:25');
INSERT INTO `system_log` VALUES ('31', '127.0.0.1', 'admin/login/out', 'gaopan', '系统管理', '用户退出系统成功', '2018-05-28 17:58:39');
INSERT INTO `system_log` VALUES ('32', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-28 17:58:44');
INSERT INTO `system_log` VALUES ('33', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-05-28 17:59:45');
INSERT INTO `system_log` VALUES ('34', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-05-28 17:59:58');
INSERT INTO `system_log` VALUES ('35', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-05-28 18:00:47');
INSERT INTO `system_log` VALUES ('36', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-29 09:02:41');
INSERT INTO `system_log` VALUES ('37', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-05-29 09:05:42');
INSERT INTO `system_log` VALUES ('38', '127.0.0.1', 'admin/login/index', 'gaopan', '系统管理', '用户登录系统成功', '2018-05-29 09:05:53');
INSERT INTO `system_log` VALUES ('39', '127.0.0.1', 'admin/login/out', 'gaopan', '系统管理', '用户退出系统成功', '2018-05-29 09:06:14');
INSERT INTO `system_log` VALUES ('40', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-29 09:06:19');
INSERT INTO `system_log` VALUES ('41', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-05-29 14:07:58');
INSERT INTO `system_log` VALUES ('42', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-29 14:09:06');
INSERT INTO `system_log` VALUES ('43', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-05-29 14:40:11');
INSERT INTO `system_log` VALUES ('44', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-05-29 14:58:39');
INSERT INTO `system_log` VALUES ('45', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-05-29 14:58:54');
INSERT INTO `system_log` VALUES ('46', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-05-29 14:59:50');
INSERT INTO `system_log` VALUES ('47', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-29 15:13:23');
INSERT INTO `system_log` VALUES ('48', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-05-29 15:14:26');
INSERT INTO `system_log` VALUES ('49', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-29 15:14:39');
INSERT INTO `system_log` VALUES ('50', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-05-29 15:23:56');
INSERT INTO `system_log` VALUES ('51', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-29 15:24:12');
INSERT INTO `system_log` VALUES ('52', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-29 20:08:18');
INSERT INTO `system_log` VALUES ('53', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-30 09:07:53');
INSERT INTO `system_log` VALUES ('54', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-30 23:26:08');
INSERT INTO `system_log` VALUES ('55', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-31 09:16:08');
INSERT INTO `system_log` VALUES ('56', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-01 10:53:57');
INSERT INTO `system_log` VALUES ('57', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-02 13:23:00');
INSERT INTO `system_log` VALUES ('58', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-02 18:00:33');
INSERT INTO `system_log` VALUES ('59', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-04 09:05:09');
INSERT INTO `system_log` VALUES ('60', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-06-04 09:05:20');
INSERT INTO `system_log` VALUES ('61', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-04 09:11:51');
INSERT INTO `system_log` VALUES ('62', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-06-04 09:20:49');
INSERT INTO `system_log` VALUES ('63', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-04 09:21:30');
INSERT INTO `system_log` VALUES ('64', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-06-04 09:35:49');
INSERT INTO `system_log` VALUES ('65', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-04 09:36:01');
INSERT INTO `system_log` VALUES ('66', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-06-04 09:36:12');
INSERT INTO `system_log` VALUES ('67', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-04 09:36:26');
INSERT INTO `system_log` VALUES ('68', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-06-04 09:42:58');
INSERT INTO `system_log` VALUES ('69', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-04 09:43:28');
INSERT INTO `system_log` VALUES ('70', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-06-04 09:44:10');
INSERT INTO `system_log` VALUES ('71', '182.84.63.106', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-06-04 09:59:31');
INSERT INTO `system_log` VALUES ('72', '182.84.63.106', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-04 09:59:40');
INSERT INTO `system_log` VALUES ('73', '59.172.122.154', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-04 10:18:45');
INSERT INTO `system_log` VALUES ('74', '59.172.122.154', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-05 09:26:42');
INSERT INTO `system_log` VALUES ('75', '59.172.122.154', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-05 09:34:59');
INSERT INTO `system_log` VALUES ('76', '115.152.48.112', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-05 09:36:46');
INSERT INTO `system_log` VALUES ('77', '59.172.122.154', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-05 09:37:56');
INSERT INTO `system_log` VALUES ('78', '59.172.122.154', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-06-05 09:52:58');
INSERT INTO `system_log` VALUES ('79', '59.172.122.154', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-06-05 09:53:18');
INSERT INTO `system_log` VALUES ('80', '59.172.122.154', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-06-05 09:53:50');
INSERT INTO `system_log` VALUES ('81', '59.172.122.154', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-05 10:28:29');
INSERT INTO `system_log` VALUES ('82', '115.152.48.112', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-06-05 10:30:32');
INSERT INTO `system_log` VALUES ('83', '115.152.48.112', 'admin/login/index', 'jinjie', '系统管理', '用户登录系统成功', '2018-06-05 10:30:47');
INSERT INTO `system_log` VALUES ('84', '115.152.48.112', 'admin/login/out', 'jinjie', '系统管理', '用户退出系统成功', '2018-06-05 10:31:44');
INSERT INTO `system_log` VALUES ('85', '115.152.48.112', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-05 10:31:55');
INSERT INTO `system_log` VALUES ('86', '59.172.122.154', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-06-05 10:47:54');
INSERT INTO `system_log` VALUES ('87', '59.172.122.154', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-06-05 10:48:10');
INSERT INTO `system_log` VALUES ('88', '115.152.48.112', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-06-05 10:50:54');
INSERT INTO `system_log` VALUES ('89', '115.152.48.112', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-05 10:51:04');
INSERT INTO `system_log` VALUES ('90', '115.152.48.112', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-05 13:20:46');
INSERT INTO `system_log` VALUES ('91', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-05 17:37:06');
INSERT INTO `system_log` VALUES ('92', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-14 10:12:46');
INSERT INTO `system_log` VALUES ('93', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-20 10:08:22');
INSERT INTO `system_log` VALUES ('94', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-20 10:25:37');
INSERT INTO `system_log` VALUES ('95', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-20 13:44:14');
INSERT INTO `system_log` VALUES ('96', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-22 10:47:57');
INSERT INTO `system_log` VALUES ('97', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-23 15:35:25');
INSERT INTO `system_log` VALUES ('98', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-25 11:33:04');
INSERT INTO `system_log` VALUES ('99', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-07-02 11:07:50');
INSERT INTO `system_log` VALUES ('100', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-07-16 16:07:33');
INSERT INTO `system_log` VALUES ('101', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-08-13 15:01:37');
INSERT INTO `system_log` VALUES ('102', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-11 11:44:01');
INSERT INTO `system_log` VALUES ('103', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-11 17:20:49');
INSERT INTO `system_log` VALUES ('104', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-12 08:52:21');
INSERT INTO `system_log` VALUES ('105', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-15 14:52:12');
INSERT INTO `system_log` VALUES ('106', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-16 14:37:51');
INSERT INTO `system_log` VALUES ('107', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-17 13:09:09');
INSERT INTO `system_log` VALUES ('108', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-31 13:48:30');
INSERT INTO `system_log` VALUES ('109', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-02 15:19:05');
INSERT INTO `system_log` VALUES ('110', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-02 15:23:28');
INSERT INTO `system_log` VALUES ('111', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-02 16:03:48');
INSERT INTO `system_log` VALUES ('112', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-02 16:04:22');
INSERT INTO `system_log` VALUES ('113', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 08:55:47');
INSERT INTO `system_log` VALUES ('114', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 09:46:25');
INSERT INTO `system_log` VALUES ('115', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-03 10:26:07');
INSERT INTO `system_log` VALUES ('116', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-03 10:27:36');
INSERT INTO `system_log` VALUES ('117', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-03 10:27:49');
INSERT INTO `system_log` VALUES ('118', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-03 10:30:01');
INSERT INTO `system_log` VALUES ('119', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 10:39:39');
INSERT INTO `system_log` VALUES ('120', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 10:47:31');
INSERT INTO `system_log` VALUES ('121', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 11:00:01');
INSERT INTO `system_log` VALUES ('122', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 11:03:26');
INSERT INTO `system_log` VALUES ('123', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 11:04:17');
INSERT INTO `system_log` VALUES ('124', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-03 11:45:51');
INSERT INTO `system_log` VALUES ('125', '27.18.180.225', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 13:48:56');
INSERT INTO `system_log` VALUES ('126', '27.18.180.225', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-11-03 13:49:59');
INSERT INTO `system_log` VALUES ('127', '125.118.109.117', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 13:53:25');
INSERT INTO `system_log` VALUES ('128', '125.118.109.117', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 14:41:51');
INSERT INTO `system_log` VALUES ('129', '27.18.180.225', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 14:56:08');
INSERT INTO `system_log` VALUES ('130', '115.199.252.81', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-04 15:29:39');
INSERT INTO `system_log` VALUES ('131', '115.199.252.81', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-04 17:59:16');
INSERT INTO `system_log` VALUES ('132', '115.199.252.81', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-04 18:01:04');
INSERT INTO `system_log` VALUES ('133', '115.199.252.81', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-04 18:02:02');
INSERT INTO `system_log` VALUES ('134', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-05 08:57:49');
INSERT INTO `system_log` VALUES ('135', '125.120.211.181', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-05 10:17:58');
INSERT INTO `system_log` VALUES ('136', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-05 10:18:29');
INSERT INTO `system_log` VALUES ('137', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-05 10:18:39');
INSERT INTO `system_log` VALUES ('138', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-05 10:52:45');
INSERT INTO `system_log` VALUES ('139', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-05 17:35:11');
INSERT INTO `system_log` VALUES ('140', '115.199.252.81', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-05 17:44:25');
INSERT INTO `system_log` VALUES ('141', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-06 18:17:58');
INSERT INTO `system_log` VALUES ('142', '27.18.180.225', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-06 18:26:57');
INSERT INTO `system_log` VALUES ('143', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-07 08:50:14');
INSERT INTO `system_log` VALUES ('144', '36.61.98.124', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-07 12:39:04');
INSERT INTO `system_log` VALUES ('145', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-09 15:16:26');
INSERT INTO `system_log` VALUES ('146', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-13 10:08:05');
INSERT INTO `system_log` VALUES ('147', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-15 13:13:21');
INSERT INTO `system_log` VALUES ('148', '27.17.243.131', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-15 16:54:44');
INSERT INTO `system_log` VALUES ('149', '103.73.166.211', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-15 17:46:19');
INSERT INTO `system_log` VALUES ('150', '103.73.166.213', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-15 17:50:16');
INSERT INTO `system_log` VALUES ('151', '103.73.166.211', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-15 18:49:31');
INSERT INTO `system_log` VALUES ('152', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-16 09:09:26');
INSERT INTO `system_log` VALUES ('153', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-16 13:14:07');
INSERT INTO `system_log` VALUES ('154', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-16 13:40:47');
INSERT INTO `system_log` VALUES ('155', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-16 14:00:29');
INSERT INTO `system_log` VALUES ('156', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-17 09:18:19');
INSERT INTO `system_log` VALUES ('157', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-17 14:43:55');
INSERT INTO `system_log` VALUES ('158', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-17 18:04:49');
INSERT INTO `system_log` VALUES ('159', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-20 14:58:26');
INSERT INTO `system_log` VALUES ('160', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-20 15:19:10');
INSERT INTO `system_log` VALUES ('161', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-20 16:43:58');
INSERT INTO `system_log` VALUES ('162', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-20 17:05:53');
INSERT INTO `system_log` VALUES ('163', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-20 17:10:22');
INSERT INTO `system_log` VALUES ('164', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-22 15:24:50');
INSERT INTO `system_log` VALUES ('165', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-22 15:28:57');
INSERT INTO `system_log` VALUES ('166', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-23 17:53:18');
INSERT INTO `system_log` VALUES ('167', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-24 11:08:06');
INSERT INTO `system_log` VALUES ('168', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-15 11:18:05');
INSERT INTO `system_log` VALUES ('169', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-18 15:52:57');
INSERT INTO `system_log` VALUES ('170', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-19 10:58:54');
INSERT INTO `system_log` VALUES ('171', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-20 09:06:15');
INSERT INTO `system_log` VALUES ('172', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-21 09:14:04');
INSERT INTO `system_log` VALUES ('173', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-21 10:09:00');
INSERT INTO `system_log` VALUES ('174', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-22 09:54:57');
INSERT INTO `system_log` VALUES ('175', '61.141.255.107', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-22 11:49:55');
INSERT INTO `system_log` VALUES ('176', '27.18.181.112', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-22 11:50:27');
INSERT INTO `system_log` VALUES ('177', '61.144.175.52', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-24 14:25:47');
INSERT INTO `system_log` VALUES ('178', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-24 18:02:41');
INSERT INTO `system_log` VALUES ('179', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-24 18:04:13');
INSERT INTO `system_log` VALUES ('180', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-25 10:24:34');
INSERT INTO `system_log` VALUES ('181', '61.144.175.52', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-25 14:27:13');
INSERT INTO `system_log` VALUES ('182', '61.144.175.52', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-25 14:27:59');
INSERT INTO `system_log` VALUES ('183', '61.144.175.52', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-25 14:35:59');
INSERT INTO `system_log` VALUES ('184', '61.144.175.52', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-25 17:41:20');
INSERT INTO `system_log` VALUES ('185', '27.18.181.112', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-25 19:14:04');
INSERT INTO `system_log` VALUES ('186', '61.144.175.52', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-26 12:02:15');
INSERT INTO `system_log` VALUES ('187', '61.144.172.126', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-26 14:09:35');
INSERT INTO `system_log` VALUES ('188', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-26 15:18:15');
INSERT INTO `system_log` VALUES ('189', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-26 17:58:19');
INSERT INTO `system_log` VALUES ('190', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-26 18:12:55');
INSERT INTO `system_log` VALUES ('191', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-27 09:07:33');
INSERT INTO `system_log` VALUES ('192', '61.144.172.126', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-27 10:11:58');
INSERT INTO `system_log` VALUES ('193', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 13:44:31');
INSERT INTO `system_log` VALUES ('194', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-27 13:50:39');
INSERT INTO `system_log` VALUES ('195', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 13:53:18');
INSERT INTO `system_log` VALUES ('196', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 13:55:28');
INSERT INTO `system_log` VALUES ('197', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 13:55:55');
INSERT INTO `system_log` VALUES ('198', '61.144.172.126', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-27 14:12:27');
INSERT INTO `system_log` VALUES ('199', '61.144.172.126', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 14:18:08');
INSERT INTO `system_log` VALUES ('200', '61.144.172.126', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 14:19:51');
INSERT INTO `system_log` VALUES ('201', '61.144.172.126', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 14:20:24');
INSERT INTO `system_log` VALUES ('202', '61.144.172.126', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 15:10:14');
INSERT INTO `system_log` VALUES ('203', '61.144.172.126', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 15:12:17');
INSERT INTO `system_log` VALUES ('204', '61.144.172.126', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 15:20:36');
INSERT INTO `system_log` VALUES ('205', '61.144.172.126', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 15:23:01');
INSERT INTO `system_log` VALUES ('206', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 15:25:26');
INSERT INTO `system_log` VALUES ('207', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 15:25:54');
INSERT INTO `system_log` VALUES ('208', '61.144.172.126', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 15:31:20');
INSERT INTO `system_log` VALUES ('209', '61.144.172.126', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-27 17:38:52');
INSERT INTO `system_log` VALUES ('210', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-28 10:42:01');
INSERT INTO `system_log` VALUES ('211', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-28 11:51:03');
INSERT INTO `system_log` VALUES ('212', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-28 11:54:44');
INSERT INTO `system_log` VALUES ('213', '121.35.182.237', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-28 17:24:21');
INSERT INTO `system_log` VALUES ('214', '121.35.182.237', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-28 17:45:29');
INSERT INTO `system_log` VALUES ('215', '121.35.182.237', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-28 17:58:30');
INSERT INTO `system_log` VALUES ('216', '121.35.182.237', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-28 18:01:00');
INSERT INTO `system_log` VALUES ('217', '121.35.182.237', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-28 18:13:02');
INSERT INTO `system_log` VALUES ('218', '121.35.182.237', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-28 18:15:58');
INSERT INTO `system_log` VALUES ('219', '121.35.182.237', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-28 18:23:25');
INSERT INTO `system_log` VALUES ('220', '121.35.182.237', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-29 09:59:17');
INSERT INTO `system_log` VALUES ('221', '61.144.174.29', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-04 11:31:21');
INSERT INTO `system_log` VALUES ('222', '61.144.174.29', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-04 11:36:33');
INSERT INTO `system_log` VALUES ('223', '27.18.30.68', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-04 11:37:14');
INSERT INTO `system_log` VALUES ('224', '61.144.174.29', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-04 11:38:01');
INSERT INTO `system_log` VALUES ('225', '27.18.30.68', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-04 11:38:03');
INSERT INTO `system_log` VALUES ('226', '27.18.30.68', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-04 11:38:49');
INSERT INTO `system_log` VALUES ('227', '61.144.174.29', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-04 12:11:37');
INSERT INTO `system_log` VALUES ('228', '61.144.174.29', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-04 12:14:42');
INSERT INTO `system_log` VALUES ('229', '61.144.174.29', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-04 12:17:06');
INSERT INTO `system_log` VALUES ('230', '61.144.174.29', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-04 12:19:31');
INSERT INTO `system_log` VALUES ('231', '61.144.174.29', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-04 12:21:53');
INSERT INTO `system_log` VALUES ('232', '61.144.174.29', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-04 12:32:17');
INSERT INTO `system_log` VALUES ('233', '61.144.174.29', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-04 16:33:23');
INSERT INTO `system_log` VALUES ('234', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-04 16:48:01');
INSERT INTO `system_log` VALUES ('235', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-23 10:26:41');
INSERT INTO `system_log` VALUES ('236', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-26 16:32:05');
INSERT INTO `system_log` VALUES ('237', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-27 10:02:24');
INSERT INTO `system_log` VALUES ('238', '127.0.0.1', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2019-02-27 11:21:14');
INSERT INTO `system_log` VALUES ('239', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-27 13:50:37');
INSERT INTO `system_log` VALUES ('240', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-27 14:41:52');
INSERT INTO `system_log` VALUES ('241', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-28 09:40:58');
INSERT INTO `system_log` VALUES ('242', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-01 15:02:00');
INSERT INTO `system_log` VALUES ('243', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-02 14:36:36');
INSERT INTO `system_log` VALUES ('244', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-04 09:19:12');
INSERT INTO `system_log` VALUES ('245', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-05 09:43:01');
INSERT INTO `system_log` VALUES ('246', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-05 16:39:40');
INSERT INTO `system_log` VALUES ('247', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-06 10:01:45');
INSERT INTO `system_log` VALUES ('248', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-06 17:18:07');
INSERT INTO `system_log` VALUES ('249', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-07 18:23:44');
INSERT INTO `system_log` VALUES ('250', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-08 09:58:59');
INSERT INTO `system_log` VALUES ('251', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-08 15:02:59');
INSERT INTO `system_log` VALUES ('252', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-09 09:18:21');
INSERT INTO `system_log` VALUES ('253', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-09 14:02:03');
INSERT INTO `system_log` VALUES ('254', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-09 22:12:59');
INSERT INTO `system_log` VALUES ('255', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-12 09:15:07');
INSERT INTO `system_log` VALUES ('256', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-12 14:35:07');
INSERT INTO `system_log` VALUES ('257', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-12 21:46:27');
INSERT INTO `system_log` VALUES ('258', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-13 13:23:11');
INSERT INTO `system_log` VALUES ('259', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-20 10:58:21');
INSERT INTO `system_log` VALUES ('260', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-21 12:38:09');
INSERT INTO `system_log` VALUES ('261', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-23 09:32:10');
INSERT INTO `system_log` VALUES ('262', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-25 13:54:13');
INSERT INTO `system_log` VALUES ('263', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-27 09:18:59');
INSERT INTO `system_log` VALUES ('264', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-29 09:16:59');
INSERT INTO `system_log` VALUES ('265', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-30 09:21:12');

-- ----------------------------
-- Table structure for `system_menu`
-- ----------------------------
DROP TABLE IF EXISTS `system_menu`;
CREATE TABLE `system_menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `node` varchar(200) NOT NULL DEFAULT '' COMMENT '节点代码',
  `icon` varchar(100) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `url` varchar(400) NOT NULL DEFAULT '' COMMENT '链接',
  `params` varchar(500) DEFAULT '' COMMENT '链接参数',
  `target` varchar(20) NOT NULL DEFAULT '_self' COMMENT '链接打开方式',
  `sort` int(11) unsigned DEFAULT '0' COMMENT '菜单排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `create_by` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_system_menu_node` (`node`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8 COMMENT='系统菜单表';

-- ----------------------------
-- Records of system_menu
-- ----------------------------
INSERT INTO `system_menu` VALUES ('1', '0', '系统设置', '', '', '#', '', '_self', '2000', '1', '10000', '2018-01-19 15:27:00');
INSERT INTO `system_menu` VALUES ('2', '10', '后台菜单', '', 'fa fa-leaf', 'admin/menu/index', '', '_self', '10', '1', '10000', '2018-01-19 15:27:17');
INSERT INTO `system_menu` VALUES ('5', '11', '用户管理', '', 'fa fa-user', 'admin/user/index', '', '_self', '0', '1', '0', '2018-01-23 12:15:12');
INSERT INTO `system_menu` VALUES ('7', '0', '后台首页', '', '', 'admin/index/main', '', '_self', '1000', '1', '0', '2018-01-23 13:42:30');
INSERT INTO `system_menu` VALUES ('9', '10', '文件存储', '', 'fa fa-stop-circle', 'admin/config/file', '', '_self', '30', '1', '0', '2018-01-25 10:54:28');
INSERT INTO `system_menu` VALUES ('10', '1', '系统管理', '', 'fa fa-scribd', '#', '', '_self', '200', '1', '0', '2018-01-25 18:14:28');
INSERT INTO `system_menu` VALUES ('11', '1', '访问权限', '', 'fa fa-anchor', '#', '', '_self', '300', '1', '0', '2018-01-25 18:15:08');
INSERT INTO `system_menu` VALUES ('115', '11', '访问授权', '', 'fa fa-group', 'admin/auth/index', '', '_self', '0', '1', '0', '2018-12-18 15:57:58');
INSERT INTO `system_menu` VALUES ('116', '11', '访问节点', '', 'fa fa-fort-awesome', 'admin/node/index', '', '_self', '0', '1', '0', '2018-12-18 16:00:05');
INSERT INTO `system_menu` VALUES ('117', '0', '页面编辑', '', '', '#', '', '_self', '3000', '1', '0', '2018-12-18 16:28:55');
INSERT INTO `system_menu` VALUES ('118', '117', '轮播图管理', '', '', '#', '', '_self', '0', '0', '0', '2018-12-18 16:29:19');
INSERT INTO `system_menu` VALUES ('119', '118', '轮播图列表', '', '', 'tuanj/banner/index', '', '_self', '0', '0', '0', '2018-12-18 16:29:59');
INSERT INTO `system_menu` VALUES ('120', '117', '分类管理', '', '', '#', '', '_self', '0', '0', '0', '2018-12-18 16:35:51');
INSERT INTO `system_menu` VALUES ('121', '120', '菜单栏', '', '', 'tuanj/lists/index', '', '_self', '0', '0', '0', '2018-12-18 16:36:01');
INSERT INTO `system_menu` VALUES ('122', '120', '场地分类', '', '', 'tuanj/categorys/index', '', '_self', '0', '0', '0', '2018-12-18 16:37:10');
INSERT INTO `system_menu` VALUES ('123', '120', '拓展分类', '', '', 'tuanj/condition/index', '', '_self', '0', '0', '0', '2018-12-18 16:37:49');
INSERT INTO `system_menu` VALUES ('124', '117', '项目管理', '', '', '#', '', '_self', '0', '0', '0', '2018-12-19 17:07:24');
INSERT INTO `system_menu` VALUES ('125', '124', '项目列表', '', '', 'tuanj/goods/index', '', '_self', '0', '0', '0', '2018-12-19 17:07:43');
INSERT INTO `system_menu` VALUES ('126', '117', '合作伙伴', '', '', '#', '', '_self', '0', '0', '0', '2018-12-21 10:42:54');
INSERT INTO `system_menu` VALUES ('127', '126', '伙伴列表', '', '', 'tuanj/partner/index', '', '_self', '0', '0', '0', '2018-12-21 10:43:17');
INSERT INTO `system_menu` VALUES ('128', '117', '服务团队', '', '', '#', '', '_self', '0', '0', '0', '2018-12-21 11:41:20');
INSERT INTO `system_menu` VALUES ('129', '128', '团队列表', '', '', 'tuanj/tuandui/index', '', '_self', '0', '0', '0', '2018-12-21 11:41:42');
INSERT INTO `system_menu` VALUES ('130', '117', '往期案例', '', '', '#', '', '_self', '0', '0', '0', '2018-12-21 12:05:24');
INSERT INTO `system_menu` VALUES ('131', '130', '案例列表', '', '', 'tuanj/anli/index', '', '_self', '0', '0', '0', '2018-12-21 12:05:40');
INSERT INTO `system_menu` VALUES ('132', '117', '新闻中心', '', '', '#', '', '_self', '0', '0', '0', '2018-12-22 09:55:31');
INSERT INTO `system_menu` VALUES ('133', '132', '新闻列表', '', '', 'tuanj/news/index', '', '_self', '0', '0', '0', '2018-12-22 09:55:48');
INSERT INTO `system_menu` VALUES ('134', '117', '专属定制', '', '', '#', '', '_self', '0', '0', '0', '2018-12-27 11:41:48');
INSERT INTO `system_menu` VALUES ('135', '134', '定制列表', '', '', 'tuanj/dingzhi/index', '', '_self', '0', '0', '0', '2018-12-27 11:42:11');
INSERT INTO `system_menu` VALUES ('136', '117', '底部管理', '', '', '#', '', '_self', '0', '0', '0', '2018-12-28 11:26:40');
INSERT INTO `system_menu` VALUES ('137', '136', '关于我们', '', '', 'tuanj/gywm/index', '', '_self', '0', '0', '0', '2018-12-28 11:27:06');
INSERT INTO `system_menu` VALUES ('138', '136', '帮助中心', '', '', 'tuanj/help/index', '', '_self', '0', '0', '0', '2018-12-28 11:27:28');
INSERT INTO `system_menu` VALUES ('139', '117', 'emco联系', '', '', '#', '', '_self', '0', '1', '0', '2019-02-23 10:32:15');
INSERT INTO `system_menu` VALUES ('140', '139', '联系', '', '', '/tuanj/contact/index', '', '_self', '0', '1', '0', '2019-02-23 10:33:35');
INSERT INTO `system_menu` VALUES ('142', '117', '地毯垫设置', '', '', '#', '', '_self', '0', '1', '0', '2019-02-26 17:01:22');
INSERT INTO `system_menu` VALUES ('144', '142', '地毯垫类别', '', '', '/tuanj/cerpet/index', '', '_self', '0', '1', '0', '2019-02-27 10:52:05');
INSERT INTO `system_menu` VALUES ('145', '142', '地毯垫详情图', '', '', '/tuanj/dtbanner/index', '', '_self', '0', '1', '0', '2019-02-27 10:52:45');
INSERT INTO `system_menu` VALUES ('146', '142', '地毯垫颜色', '', '', '/tuanj/dtcolor/index', '', '_self', '0', '1', '0', '2019-02-27 10:53:17');
INSERT INTO `system_menu` VALUES ('147', '117', '参考产品设置', '', '', '#', '', '_self', '0', '1', '0', '2019-02-28 09:41:40');
INSERT INTO `system_menu` VALUES ('148', '147', '产品类别', '', '', '/tuanj/protucts/index', '', '_self', '0', '1', '0', '2019-02-28 09:42:58');
INSERT INTO `system_menu` VALUES ('149', '147', '地点类别', '', '', '/tuanj/here/index', '', '_self', '0', '1', '0', '2019-02-28 09:44:12');
INSERT INTO `system_menu` VALUES ('150', '147', '国家地点', '', '', '/tuanj/county/index', '', '_self', '0', '1', '0', '2019-02-28 09:44:52');
INSERT INTO `system_menu` VALUES ('151', '147', '案例列表', '', '', '/tuanj/anlist/index', '', '_self', '0', '1', '0', '2019-02-28 09:55:10');
INSERT INTO `system_menu` VALUES ('152', '147', '案例详情页面展示图', '', '', '/tuanj/aninfo/index', '', '_self', '0', '1', '0', '2019-02-28 11:37:06');
INSERT INTO `system_menu` VALUES ('153', '147', '案例详情页综合案例图', '', '', '/tuanj/zhong/index', '', '_self', '0', '1', '0', '2019-02-28 11:37:41');
INSERT INTO `system_menu` VALUES ('154', '117', '清理系统', '', '', '#', '', '_self', '0', '1', '0', '2019-02-28 13:26:07');
INSERT INTO `system_menu` VALUES ('156', '117', '下载管理', '', '', '#', '', '_self', '0', '1', '0', '2019-03-01 16:37:45');
INSERT INTO `system_menu` VALUES ('157', '156', '下载小册子', '', '', '/tuanj/brochures/index', '', '_self', '0', '1', '0', '2019-03-01 16:39:23');
INSERT INTO `system_menu` VALUES ('158', '117', '网站公共类别设置', '', '', '#', '', '_self', '0', '1', '0', '2019-03-01 17:48:25');
INSERT INTO `system_menu` VALUES ('161', '158', '高度设置类别', '', '', '/tuanj/heights/index', '', '_self', '0', '1', '0', '2019-03-01 17:54:41');
INSERT INTO `system_menu` VALUES ('164', '158', '脚步声类别', '', '', '/tuanj/foots/index', '', '_self', '0', '1', '0', '2019-03-01 18:19:54');
INSERT INTO `system_menu` VALUES ('165', '158', '翻车类别', '', '', '/tuanj/fanche/index', '', '_self', '0', '1', '0', '2019-03-01 18:20:23');
INSERT INTO `system_menu` VALUES ('167', '139', '订购信息材料联系', '', '', '/tuanj/infocontact/index', '', '_self', '0', '1', '0', '2019-03-02 14:45:18');
INSERT INTO `system_menu` VALUES ('168', '158', '专家级别类别', '', '', '/tuanj/zhuan/index', '', '_self', '0', '1', '0', '2019-03-02 14:57:25');
INSERT INTO `system_menu` VALUES ('171', '154', '清理系统类别', '', '', '/tuanj/clearcate/index', '', '_self', '0', '1', '0', '2019-03-05 11:28:42');
INSERT INTO `system_menu` VALUES ('172', '117', '游泳池管理', '', '', '#', '', '_self', '0', '1', '0', '2019-03-05 11:30:38');
INSERT INTO `system_menu` VALUES ('173', '172', '游泳池栅格类别', '', '', '/tuanj/swingcates/index', '', '_self', '0', '1', '0', '2019-03-05 11:31:37');
INSERT INTO `system_menu` VALUES ('174', '172', '游泳池档案运行类别', '', '', '/tuanj/swingdang/index', '', '_self', '0', '1', '0', '2019-03-05 11:32:20');
INSERT INTO `system_menu` VALUES ('185', '154', '清理系统产品', '', '', '/tuanj/clear/index', '', '_self', '0', '1', '0', '2019-03-06 14:09:18');
INSERT INTO `system_menu` VALUES ('186', '154', '清理详情页颜色设置', '', '', '/tuanj/clearcolor/index', '', '_self', '0', '1', '0', '2019-03-06 17:20:24');
INSERT INTO `system_menu` VALUES ('187', '154', '清理详情页饰品设置', '', '', '/tuanj/clearshi/index', '', '_self', '0', '1', '0', '2019-03-06 17:39:34');
INSERT INTO `system_menu` VALUES ('188', '172', '游泳池产品分类设置', '', '', '/tuanj/protuctswing/index', '', '_self', '0', '1', '0', '2019-03-08 10:07:15');
INSERT INTO `system_menu` VALUES ('189', '172', '游泳池产品设置', '', '', '/tuanj/swingprotucts/index', '', '_self', '0', '1', '0', '2019-03-08 10:35:23');
INSERT INTO `system_menu` VALUES ('190', '172', '产品详情页轮播图', '', '', '/tuanj/swingbanner/index', '', '_self', '0', '1', '0', '2019-03-08 10:36:01');
INSERT INTO `system_menu` VALUES ('192', '154', '清理产品轮播图', '', '', '/tuanj/clearbanner/index', '', '_self', '0', '1', '0', '2019-03-09 23:15:12');
INSERT INTO `system_menu` VALUES ('193', '154', '清理产品参考', '', '', '/tuanj/clearress/index', '', '_self', '0', '1', '0', '2019-03-09 23:16:04');
INSERT INTO `system_menu` VALUES ('194', '117', '入口垫管理', '', '', '#', '', '_self', '0', '1', '0', '2019-03-09 23:36:31');
INSERT INTO `system_menu` VALUES ('195', '172', '游泳池产品颜色设置', '', '', '/tuanj/swingcolor/index', '', '_self', '0', '1', '0', '2019-03-10 00:00:07');
INSERT INTO `system_menu` VALUES ('197', '194', '入口垫系统类别', '', '', '/tuanj/matscates/index', '', '_self', '0', '1', '0', '2019-03-12 21:48:47');
INSERT INTO `system_menu` VALUES ('198', '194', '入口垫一级产品类别', '', '', '/tuanj/matspro/index', '', '_self', '0', '1', '0', '2019-03-12 21:49:57');
INSERT INTO `system_menu` VALUES ('199', '194', '入口垫二级产品类别', '', '', '/tuanj/matstwo/index', '', '_self', '0', '1', '0', '2019-03-12 22:21:19');
INSERT INTO `system_menu` VALUES ('200', '194', '入口垫三级产品详情', '', '', '/tuanj/matsinfo/index', '', '_self', '0', '1', '0', '2019-03-12 22:23:20');
INSERT INTO `system_menu` VALUES ('201', '194', '入口垫三级产品轮播图', '', '', '/tuanj/matsbanner/index', '', '_self', '0', '1', '0', '2019-03-20 11:25:47');
INSERT INTO `system_menu` VALUES ('202', '194', '入口垫三级产品颜色图', '', '', '/tuanj/matscolor/index', '', '_self', '0', '1', '0', '2019-03-20 12:02:38');
INSERT INTO `system_menu` VALUES ('203', '194', '入口垫三级产品饰品', '', '', '/tuanj/matsship/index', '', '_self', '0', '1', '0', '2019-03-20 13:25:52');
INSERT INTO `system_menu` VALUES ('204', '194', '入口垫三级产品参考', '', '', '/tuanj/matsress/index', '', '_self', '0', '1', '0', '2019-03-20 13:26:54');
INSERT INTO `system_menu` VALUES ('205', '158', '下载文件类型设置', '', '', '/tuanj/downloads/index', '', '_self', '0', '1', '0', '2019-03-25 13:55:01');
INSERT INTO `system_menu` VALUES ('206', '117', '新闻发布', '', '', '/tuanj/news/index', '', '_self', '0', '1', '0', '2019-03-27 09:25:17');
INSERT INTO `system_menu` VALUES ('207', '117', '服务', '', '', '#', '', '_self', '0', '1', '0', '2019-03-27 15:03:00');
INSERT INTO `system_menu` VALUES ('209', '207', '往来', '', '', '/tuanj/contacts/index', '', '_self', '0', '1', '0', '2019-03-27 15:04:15');
INSERT INTO `system_menu` VALUES ('210', '207', '经常遇到的问题展示图文', '', '', '/tuanj/questions/index', '', '_self', '0', '1', '0', '2019-03-27 15:04:58');
INSERT INTO `system_menu` VALUES ('211', '207', '经常遇到问题列表', '', '', '/tuanj/questionslist/index', '', '_self', '0', '1', '0', '2019-03-27 15:30:30');
INSERT INTO `system_menu` VALUES ('212', '117', '公司', '', '', '#', '', '_self', '0', '1', '0', '2019-03-27 15:35:52');
INSERT INTO `system_menu` VALUES ('213', '212', '关于我们', '', '', '/tuanj/aboutemco/index', '', '_self', '0', '1', '0', '2019-03-27 15:36:24');
INSERT INTO `system_menu` VALUES ('214', '212', '专业知识', '', '', '/tuanj/expertise/index', '', '_self', '0', '1', '0', '2019-03-27 15:36:53');
INSERT INTO `system_menu` VALUES ('219', '117', '首页设置', '', '', '#', '', '_self', '0', '1', '0', '2019-03-27 17:00:14');
INSERT INTO `system_menu` VALUES ('220', '219', '首页轮播图', '', '', '/tuanj/homebanner', '', '_self', '0', '1', '0', '2019-03-27 17:00:40');
INSERT INTO `system_menu` VALUES ('221', '219', '首页入口垫系统信息', '', '', '/tuanj/homemats/index', '', '_self', '0', '1', '0', '2019-03-27 17:01:06');
INSERT INTO `system_menu` VALUES ('222', '219', '首页其他信息设置', '', '', '/tuanj/homeother/index', '', '_self', '0', '1', '0', '2019-03-27 17:01:21');
INSERT INTO `system_menu` VALUES ('223', '117', '底部设置', '', '', '#', '', '_self', '0', '1', '0', '2019-03-27 18:33:59');
INSERT INTO `system_menu` VALUES ('224', '223', '底部导航设置', '', '', '/tuanj/footer/index', '', '_self', '0', '1', '0', '2019-03-27 18:34:40');
INSERT INTO `system_menu` VALUES ('225', '207', '入口垫服务大图设置', '', '', '/tuanj/matsservice/index', '', '_self', '0', '1', '0', '2019-03-28 10:23:33');
INSERT INTO `system_menu` VALUES ('226', '207', '入口垫底部小图设置', '', '', '/tuanj/matssmall/index', '', '_self', '0', '1', '0', '2019-03-28 10:25:34');
INSERT INTO `system_menu` VALUES ('227', '212', '专业知识底部小图', '', '', '/tuanj/expertiseimg/index', '', '_self', '0', '1', '0', '2019-03-28 14:09:10');
INSERT INTO `system_menu` VALUES ('228', '139', '订阅emco时事通讯', '', '', '/tuanj/tongxun/index', '', '_self', '0', '1', '0', '2019-03-28 17:34:18');

-- ----------------------------
-- Table structure for `system_node`
-- ----------------------------
DROP TABLE IF EXISTS `system_node`;
CREATE TABLE `system_node` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `node` varchar(100) DEFAULT NULL COMMENT '节点代码',
  `title` varchar(500) DEFAULT NULL COMMENT '节点标题',
  `is_menu` tinyint(1) unsigned DEFAULT '0' COMMENT '是否可设置为菜单',
  `is_auth` tinyint(1) unsigned DEFAULT '1' COMMENT '是否启动RBAC权限控制',
  `is_login` tinyint(1) unsigned DEFAULT '1' COMMENT '是否启动登录控制',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_system_node_node` (`node`)
) ENGINE=InnoDB AUTO_INCREMENT=360 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统节点表';

-- ----------------------------
-- Records of system_node
-- ----------------------------
INSERT INTO `system_node` VALUES ('1', 'admin', '系统管理', '0', '1', '1', '2018-01-23 12:39:13');
INSERT INTO `system_node` VALUES ('2', 'admin/auth', '权限管理', '0', '1', '1', '2018-01-23 12:39:14');
INSERT INTO `system_node` VALUES ('3', 'admin/auth/index', '权限列表', '1', '1', '1', '2018-01-23 12:39:14');
INSERT INTO `system_node` VALUES ('4', 'admin/auth/apply', '访问授权', '0', '1', '1', '2018-01-23 12:39:19');
INSERT INTO `system_node` VALUES ('5', 'admin/auth/add', '添加权限', '0', '1', '1', '2018-01-23 12:39:22');
INSERT INTO `system_node` VALUES ('6', 'admin/auth/edit', '编辑权限', '0', '1', '1', '2018-01-23 12:39:23');
INSERT INTO `system_node` VALUES ('7', 'admin/auth/forbid', '禁用权限', '0', '1', '1', '2018-01-23 12:39:23');
INSERT INTO `system_node` VALUES ('8', 'admin/auth/resume', '启用权限', '0', '1', '1', '2018-01-23 12:39:24');
INSERT INTO `system_node` VALUES ('9', 'admin/auth/del', '删除权限', '0', '1', '1', '2018-01-23 12:39:25');
INSERT INTO `system_node` VALUES ('10', 'admin/config/index', '系统参数', '1', '1', '1', '2018-01-23 12:39:25');
INSERT INTO `system_node` VALUES ('11', 'admin/config/file', '文件存储', '0', '1', '1', '2018-01-23 12:39:26');
INSERT INTO `system_node` VALUES ('13', 'admin/log/index', '日志记录', '1', '1', '1', '2018-01-23 12:39:28');
INSERT INTO `system_node` VALUES ('14', 'admin/log/sms', '短信记录', '0', '1', '1', '2018-01-23 12:39:29');
INSERT INTO `system_node` VALUES ('15', 'admin/log/del', '日志删除', '0', '1', '1', '2018-01-23 12:39:29');
INSERT INTO `system_node` VALUES ('16', 'admin/menu/index', '系统菜单列表', '1', '1', '1', '2018-01-23 12:39:31');
INSERT INTO `system_node` VALUES ('17', 'admin/menu/add', '添加系统菜单', '0', '1', '1', '2018-01-23 12:39:31');
INSERT INTO `system_node` VALUES ('18', 'admin/menu/edit', '编辑系统菜单', '0', '1', '1', '2018-01-23 12:39:32');
INSERT INTO `system_node` VALUES ('19', 'admin/menu/del', '删除系统菜单', '0', '1', '1', '2018-01-23 12:39:33');
INSERT INTO `system_node` VALUES ('20', 'admin/menu/forbid', '禁用系统菜单', '0', '1', '1', '2018-01-23 12:39:33');
INSERT INTO `system_node` VALUES ('21', 'admin/menu/resume', '启用系统菜单', '0', '1', '1', '2018-01-23 12:39:34');
INSERT INTO `system_node` VALUES ('22', 'admin/node/index', '系统节点列表', '1', '1', '1', '2018-01-23 12:39:36');
INSERT INTO `system_node` VALUES ('23', 'admin/node/save', '保存节点信息', '0', '1', '1', '2018-01-23 12:39:36');
INSERT INTO `system_node` VALUES ('24', 'admin/user/index', '系统用户列表', '1', '1', '1', '2018-01-23 12:39:37');
INSERT INTO `system_node` VALUES ('25', 'admin/user/auth', '用户授权操作', '0', '1', '1', '2018-01-23 12:39:38');
INSERT INTO `system_node` VALUES ('26', 'admin/user/add', '添加系统用户', '0', '1', '1', '2018-01-23 12:39:39');
INSERT INTO `system_node` VALUES ('27', 'admin/user/edit', '编辑系统用户', '0', '1', '1', '2018-01-23 12:39:39');
INSERT INTO `system_node` VALUES ('28', 'admin/user/pass', '修改用户密码', '0', '1', '1', '2018-01-23 12:39:40');
INSERT INTO `system_node` VALUES ('29', 'admin/user/del', '删除系统用户', '0', '1', '1', '2018-01-23 12:39:41');
INSERT INTO `system_node` VALUES ('30', 'admin/user/forbid', '禁用系统用户', '0', '1', '1', '2018-01-23 12:39:41');
INSERT INTO `system_node` VALUES ('31', 'admin/user/resume', '启用系统用户', '0', '1', '1', '2018-01-23 12:39:42');
INSERT INTO `system_node` VALUES ('32', 'admin/config', '系统配置', '0', '1', '1', '2018-01-23 13:34:37');
INSERT INTO `system_node` VALUES ('33', 'admin/log', '日志管理', '0', '1', '1', '2018-01-23 13:34:48');
INSERT INTO `system_node` VALUES ('34', 'admin/menu', '系统菜单管理', '0', '1', '1', '2018-01-23 13:34:58');
INSERT INTO `system_node` VALUES ('35', 'admin/node', '系统节点管理', '0', '1', '1', '2018-01-23 13:35:17');
INSERT INTO `system_node` VALUES ('36', 'admin/user', '系统用户管理', '0', '1', '1', '2018-01-23 13:35:26');
INSERT INTO `system_node` VALUES ('229', 'admin/node/clear', '清理无效记录', '0', '1', '1', '2018-03-09 12:24:31');
INSERT INTO `system_node` VALUES ('356', 'admin/index/index', '', '0', '1', '1', '2018-06-04 09:44:01');
INSERT INTO `system_node` VALUES ('357', 'admin/index/main', '', '0', '1', '1', '2018-06-04 09:44:02');
INSERT INTO `system_node` VALUES ('358', 'admin/index/pass', '', '0', '1', '1', '2018-06-04 09:44:02');
INSERT INTO `system_node` VALUES ('359', 'admin/index/info', '', '0', '1', '1', '2018-06-04 09:44:02');

-- ----------------------------
-- Table structure for `system_sequence`
-- ----------------------------
DROP TABLE IF EXISTS `system_sequence`;
CREATE TABLE `system_sequence` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL COMMENT '序号类型',
  `sequence` char(50) NOT NULL COMMENT '序号值',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_system_sequence_unique` (`type`,`sequence`) USING BTREE,
  KEY `index_system_sequence_type` (`type`),
  KEY `index_system_sequence_number` (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统序号表';

-- ----------------------------
-- Records of system_sequence
-- ----------------------------

-- ----------------------------
-- Table structure for `system_user`
-- ----------------------------
DROP TABLE IF EXISTS `system_user`;
CREATE TABLE `system_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `name` char(255) DEFAULT NULL,
  `password` char(32) NOT NULL DEFAULT '' COMMENT '用户登录密码',
  `qq` varchar(16) DEFAULT NULL COMMENT '联系QQ',
  `mail` varchar(32) DEFAULT NULL COMMENT '联系邮箱',
  `pic` char(255) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL COMMENT '联系手机号',
  `desc` varchar(255) DEFAULT '' COMMENT '备注说明',
  `login_num` bigint(20) unsigned DEFAULT '0' COMMENT '登录次数',
  `login_at` datetime DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `authorize` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `create_by` bigint(20) unsigned DEFAULT NULL COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_system_user_username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=utf8 COMMENT='系统用户表';

-- ----------------------------
-- Records of system_user
-- ----------------------------
INSERT INTO `system_user` VALUES ('10000', 'admin', '超级管理员', '21232f297a57a5a743894a0e4a801fc3', '', '', null, '', '', '23296', '2018-03-23 17:05:40', '1', '1', '0', null, '2015-11-13 15:14:22');

-- ----------------------------
-- Table structure for `tongxun_contact`
-- ----------------------------
DROP TABLE IF EXISTS `tongxun_contact`;
CREATE TABLE `tongxun_contact` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `sex` int(10) DEFAULT NULL COMMENT '性别',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tongxun_contact
-- ----------------------------
INSERT INTO `tongxun_contact` VALUES ('0000000001', '1', 'zhangwuji ', '732345907@qq.com', '0000-00-00 00:00:00');
INSERT INTO `tongxun_contact` VALUES ('0000000005', '2', '后植入', '732345907@qq.com', '2019-03-28 17:41:10');

-- ----------------------------
-- Table structure for `tuandui`
-- ----------------------------
DROP TABLE IF EXISTS `tuandui`;
CREATE TABLE `tuandui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort` int(10) DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `zhiwei` varchar(100) DEFAULT NULL,
  `jianjie` varchar(255) DEFAULT NULL,
  `pingpai` varchar(255) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuandui
-- ----------------------------
INSERT INTO `tuandui` VALUES ('1', '0', '鹿晗', '/static/upload/b0901da5f80517c9/425385604cf3a9cf.jpg', '执行专员', '其实我小时候最大梦想是踢球，后来足球的梦想破灭了以后，逼不得已选择了第二条路当上了艺人...他让太多90后、00后能在他身上找到某一个部分的自己，每一个虽然普通但依然想要发光发热不愿意平庸的自己！嗯…也许这就是鹿晗这个“现象级超级人气偶像IP”存在的意义！', '深圳大学，深圳国税，中国银行', '2018-12-21 11:43:34');
INSERT INTO `tuandui` VALUES ('2', '0', '张艺兴', '/static/upload/65b5c38acf105b75/238d9e841cbbc6ec.jpg', '执行专员', '张艺兴（LAY），1991年10月7日出生于湖南省长沙市，内地流行男歌手、影视演员，男子演唱组合EXO/EXO-M中国籍成员。2005年， 张艺兴参加湖南经视《明星学院》比赛并获得总决赛季军。2008年，通过S.M. Casting System在中国的选拔成为韩国SM公司旗下练习生。2012年4月，以EXO团体和其子队EXO-M成员身份正式出道', '#', '2018-12-25 15:34:48');
INSERT INTO `tuandui` VALUES ('3', '0', '戚薇', '/static/upload/da113d9eb997e2a9/02d7f18ed3e635c2.jpg', '团建专员', '戚薇，1984年10月26日出生于四川省成都市武侯区，中国内地女演员、歌手，毕业于浙江传媒学院录音艺术专业。2006年因参加选秀节目《我型我秀》而正式出道，同年与袁成杰组成“男才女貌”组合，并凭借歌曲《外滩十八号》在歌坛获得关注。2010年因参演古装剧《美人心计》而被观众所熟知。2011年主演都市情感剧《夏家三千金》；同年签约海蝶音乐，并发行首张个人EP《如果爱忘了》', '#', '2018-12-25 15:36:28');
INSERT INTO `tuandui` VALUES ('4', '0', '柳岩', '/static/upload/d7ef011455cc87c6/0479b2669c784cc5.jpg', '团建专员', '柳岩（Ada），1980年11月8日出生于湖南衡阳，中国内地女演员、歌手、主持人。2000年，柳岩担任广东有线广播电视台信息频道《财经新闻》主持人，从而开始了她的主持生涯。2002年，参加湖南公共频道生活时尚资讯类节目《太太抢鲜看》的录制，担任主持人。2004年，担任广东卫视资讯栏目《粤港澳零距离》主播。2005年，柳岩签约光线传媒。2007年，出演个人首部电影《画皮》，从而正式进入演艺圈', '#', '2018-12-25 15:38:01');
INSERT INTO `tuandui` VALUES ('5', '0', '刘亦菲', '/static/upload/daefbd349ba1c45b/482665075411f1c6.jpg', '团建专员', '刘亦菲，1987年8月25日出生于湖北省武汉市，华语影视女演员、歌手，毕业于北京电影学院2002级表演系本科班。2002年主演个人首部电视剧《金粉世家》，从而踏入演艺圈。2003年因主演武侠剧《天龙八部》崭露头角。2004年凭借仙侠剧《仙剑奇侠传》赵灵儿一角获得了高人气与关注度。', '#', '2018-12-25 15:44:05');
INSERT INTO `tuandui` VALUES ('6', '0', '杰森·斯坦森', '/static/upload/06e21299a97314aa/bab68483fa9dc692.jpg', '团建教练', '1992年，杰森·斯坦森作为英国国家跳水队运动员代表英国参加了第十二届世界跳水冠军赛，获得了第12名 [1]  。1998年，杰森出演了盖伊·里奇的犯罪电影《两杆大烟枪》，进入演艺圈。2002年，杰森开始担任电影《非常人贩》系列电影的男主角。2008年，他加盟了电影《敢死队》。2013年4月，全球健美杂志《Men', '#', '2018-12-25 15:45:45');
INSERT INTO `tuandui` VALUES ('8', '0', '范·迪塞尔', '/static/upload/f9d8d6cc26e2e69e/bd9dcc776caed094.jpg', '团建教练', '范·迪塞尔（Vin Diesel），1967年7月18日出生于美国纽约，美国电影演员，制片人。 1999年，自制短片担任演员参加戛纳电影节得奖，并得到大导演史蒂文·斯皮尔伯格赏识邀请其参加战争片《拯救大兵瑞恩》的演出。在出演《速度与激情》系列电影后成为好莱坞明星。2005年，他出演喜剧片《神勇奶爸》。', '#', '2018-12-25 15:51:48');
INSERT INTO `tuandui` VALUES ('7', '0', '吴亦凡', '/static/upload/0084f13e38c93b8b/fdcc5e53510792a8.jpg', '团建教练', '吴亦凡（Kris），1990年11月6日出生于广东省广州市，华语影视男演员、流行乐歌手。2007年，吴亦凡加入了韩国SM娱乐公司。2012年作为EXO组合成员正式出道，担任EXO/EXO-M队长、主Rapper、门面。2014年5月15日，吴亦凡正式向首尔中央地方法院请求判决与SM娱乐公司专属合同无效。之后吴亦凡回归中国发展，出演个人首部电影，担任徐静蕾执导的电影《有一个地方只有我们知道》男主角', '#', '2018-12-25 15:48:08');
INSERT INTO `tuandui` VALUES ('9', '0', '汤姆•克鲁斯', '/static/upload/1998af7148d5e65e/22320bb137e754df.jpg', '团建教练', '汤姆·克鲁斯（Tom Cruise），1962年7月3日出生于美国纽约州，美国电影演员、电影制片人。 1981年，汤姆·克鲁斯进入演艺圈。1983年凭借《乖仔也疯狂》首获金球奖最佳男主角提名。1986年凭借《壮志凌云》成名，并于同年10月16日留名好莱坞星光大道。1988年与达斯汀·霍夫曼合作电影《雨人》。1990年，汤姆·克鲁斯主演电影《生于七月四日》，首次获得奥斯卡金像奖最佳男主角提名。', '#', '2018-12-25 15:54:18');
INSERT INTO `tuandui` VALUES ('10', '0', '尼古拉斯·凯奇', '/static/upload/efde1ce2a23c4d26/1a12ec0ec2ccba97.jpg', '团建教练', '1982年，17岁的尼古拉斯·凯奇进入电影行业，出演影片《开放的美国学府》。1984年，凯奇主演了影片《鸟人》。1988年，他出演了《吸血鬼之吻》。1992年，他凭借影片《我心狂野》中的表演，获得了第43届戛纳电影节金棕榈大奖。1996年，他主演的动作片《勇闯夺命岛》，并凭借《离开拉斯维加斯》中的酒鬼一角获得当年奥斯卡最佳男主角奖。而后出演《变脸》、《空中监狱》等动作片。', '#', '2018-12-25 15:55:30');

-- ----------------------------
-- Table structure for `wechat_fans`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_fans`;
CREATE TABLE `wechat_fans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `appid` char(50) DEFAULT '' COMMENT '公众号Appid',
  `unionid` char(100) DEFAULT '' COMMENT 'unionid',
  `openid` char(100) DEFAULT '' COMMENT '用户的标识,对当前公众号唯一',
  `spread_openid` char(100) DEFAULT '' COMMENT '推荐人OPENID',
  `spread_at` datetime DEFAULT NULL COMMENT '推荐时间',
  `tagid_list` varchar(100) DEFAULT '' COMMENT '标签id',
  `is_black` tinyint(1) unsigned DEFAULT '0' COMMENT '是否为黑名单用户',
  `subscribe` tinyint(1) unsigned DEFAULT '0' COMMENT '用户是否关注该公众号(0:未关注, 1:已关注)',
  `nickname` varchar(200) DEFAULT '' COMMENT '用户的昵称',
  `sex` tinyint(1) unsigned DEFAULT NULL COMMENT '用户的性别,值为1时是男性,值为2时是女性,值为0时是未知',
  `country` varchar(50) DEFAULT '' COMMENT '用户所在国家',
  `province` varchar(50) DEFAULT '' COMMENT '用户所在省份',
  `city` varchar(50) DEFAULT '' COMMENT '用户所在城市',
  `language` varchar(50) DEFAULT '' COMMENT '用户的语言,简体中文为zh_CN',
  `headimgurl` varchar(500) DEFAULT '' COMMENT '用户头像',
  `subscribe_time` bigint(20) unsigned DEFAULT '0' COMMENT '用户关注时间',
  `subscribe_at` datetime DEFAULT NULL COMMENT '关注时间',
  `remark` varchar(50) DEFAULT '' COMMENT '备注',
  `expires_in` bigint(20) unsigned DEFAULT '0' COMMENT '有效时间',
  `refresh_token` varchar(200) DEFAULT '' COMMENT '刷新token',
  `access_token` varchar(200) DEFAULT '' COMMENT '访问token',
  `subscribe_scene` varchar(200) DEFAULT '' COMMENT '扫码关注场景',
  `qr_scene` varchar(100) DEFAULT '' COMMENT '二维码场景值',
  `qr_scene_str` varchar(200) DEFAULT '' COMMENT '二维码场景内容',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_wechat_fans_spread_openid` (`spread_openid`) USING BTREE,
  KEY `index_wechat_fans_openid` (`openid`) USING BTREE,
  KEY `index_wechat_fans_unionid` (`unionid`),
  KEY `index_wechat_fans_is_back` (`is_black`),
  KEY `index_wechat_fans_subscribe` (`subscribe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信粉丝';

-- ----------------------------
-- Records of wechat_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `wechat_fans_tags`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_fans_tags`;
CREATE TABLE `wechat_fans_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '标签ID',
  `appid` char(50) DEFAULT NULL COMMENT '公众号APPID',
  `name` varchar(35) DEFAULT NULL COMMENT '标签名称',
  `count` int(11) unsigned DEFAULT NULL COMMENT '总数',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  KEY `index_wechat_fans_tags_id` (`id`) USING BTREE,
  KEY `index_wechat_fans_tags_appid` (`appid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信会员标签';

-- ----------------------------
-- Records of wechat_fans_tags
-- ----------------------------

-- ----------------------------
-- Table structure for `wechat_keys`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_keys`;
CREATE TABLE `wechat_keys` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `appid` char(100) DEFAULT '' COMMENT '公众号APPID',
  `type` varchar(20) DEFAULT '' COMMENT '类型，text 文件消息，image 图片消息，news 图文消息',
  `keys` varchar(100) DEFAULT NULL COMMENT '关键字',
  `content` text COMMENT '文本内容',
  `image_url` varchar(255) DEFAULT '' COMMENT '图片链接',
  `voice_url` varchar(255) DEFAULT '' COMMENT '语音链接',
  `music_title` varchar(100) DEFAULT '' COMMENT '音乐标题',
  `music_url` varchar(255) DEFAULT '' COMMENT '音乐链接',
  `music_image` varchar(255) DEFAULT '' COMMENT '音乐缩略图链接',
  `music_desc` varchar(255) DEFAULT '' COMMENT '音乐描述',
  `video_title` varchar(100) DEFAULT '' COMMENT '视频标题',
  `video_url` varchar(255) DEFAULT '' COMMENT '视频URL',
  `video_desc` varchar(255) DEFAULT '' COMMENT '视频描述',
  `news_id` bigint(20) unsigned DEFAULT NULL COMMENT '图文ID',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '排序字段',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '0 禁用，1 启用',
  `create_by` bigint(20) unsigned DEFAULT NULL COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_wechat_keys_appid` (`appid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信关键字';

-- ----------------------------
-- Records of wechat_keys
-- ----------------------------

-- ----------------------------
-- Table structure for `wechat_menu`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_menu`;
CREATE TABLE `wechat_menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `index` bigint(20) DEFAULT NULL,
  `pindex` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `type` varchar(24) NOT NULL DEFAULT '' COMMENT '菜单类型 null主菜单 link链接 keys关键字',
  `name` varchar(256) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `content` text NOT NULL COMMENT '文字内容',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(0禁用1启用)',
  `create_by` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_wechat_menu_pindex` (`pindex`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信菜单配置';

-- ----------------------------
-- Records of wechat_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `wechat_news`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_news`;
CREATE TABLE `wechat_news` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_id` varchar(100) DEFAULT '' COMMENT '永久素材MediaID',
  `local_url` varchar(300) DEFAULT '' COMMENT '永久素材显示URL',
  `article_id` varchar(60) DEFAULT '' COMMENT '关联图文ID，用，号做分割',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '是否删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`),
  KEY `index_wechat_news_artcle_id` (`article_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信图文表';

-- ----------------------------
-- Records of wechat_news
-- ----------------------------

-- ----------------------------
-- Table structure for `wechat_news_article`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_news_article`;
CREATE TABLE `wechat_news_article` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '' COMMENT '素材标题',
  `local_url` varchar(300) DEFAULT '' COMMENT '永久素材显示URL',
  `show_cover_pic` tinyint(4) unsigned DEFAULT '0' COMMENT '是否显示封面 0不显示，1 显示',
  `author` varchar(20) DEFAULT '' COMMENT '作者',
  `digest` varchar(300) DEFAULT '' COMMENT '摘要内容',
  `content` longtext COMMENT '图文内容',
  `content_source_url` varchar(200) DEFAULT '' COMMENT '图文消息原文地址',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信素材表';

-- ----------------------------
-- Records of wechat_news_article
-- ----------------------------

-- ----------------------------
-- Table structure for `wechat_news_image`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_news_image`;
CREATE TABLE `wechat_news_image` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `md5` varchar(32) DEFAULT '' COMMENT '文件md5',
  `local_url` varchar(300) DEFAULT '' COMMENT '本地文件链接',
  `media_url` varchar(300) DEFAULT '' COMMENT '远程图片链接',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_wechat_news_image_md5` (`md5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信服务器图片';

-- ----------------------------
-- Records of wechat_news_image
-- ----------------------------

-- ----------------------------
-- Table structure for `wechat_news_media`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_news_media`;
CREATE TABLE `wechat_news_media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `appid` varchar(100) DEFAULT '' COMMENT '公众号ID',
  `md5` varchar(32) DEFAULT '' COMMENT '文件md5',
  `type` varchar(20) DEFAULT '' COMMENT '媒体类型',
  `media_id` varchar(100) DEFAULT '' COMMENT '永久素材MediaID',
  `local_url` varchar(300) DEFAULT '' COMMENT '本地文件链接',
  `media_url` varchar(300) DEFAULT '' COMMENT '远程图片链接',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信素材表';

-- ----------------------------
-- Records of wechat_news_media
-- ----------------------------

-- ----------------------------
-- Table structure for `zhuan`
-- ----------------------------
DROP TABLE IF EXISTS `zhuan`;
CREATE TABLE `zhuan` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '专家标题',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zhuan
-- ----------------------------
INSERT INTO `zhuan` VALUES ('0000000001', '大型项目咨询');
INSERT INTO `zhuan` VALUES ('0000000002', '入口垫');
INSERT INTO `zhuan` VALUES ('0000000003', '地毯垫');
INSERT INTO `zhuan` VALUES ('0000000004', '游泳池栅格');

-- ----------------------------
-- Table structure for `zong`
-- ----------------------------
DROP TABLE IF EXISTS `zong`;
CREATE TABLE `zong` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `a_id` int(10) unsigned NOT NULL COMMENT '案例id',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `img` varchar(255) NOT NULL COMMENT '综合产品图',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zong
-- ----------------------------
INSERT INTO `zong` VALUES ('0000000001', '1', 'hahhah', '/static/upload/88bb60bbab7f582f/3d6936310ca50161.jpg', '2019-03-06 10:39:34');
INSERT INTO `zong` VALUES ('0000000002', '2', '1111', '/static/upload/aa20ce51d01b36da/dfffc8a7c427c311.jpg', '2019-03-06 10:40:13');
INSERT INTO `zong` VALUES ('0000000003', '1', '22222', '/static/upload/c5759267f3a03050/ec0fc4b46b4ed981.jpg', '2019-03-06 10:40:28');
INSERT INTO `zong` VALUES ('0000000004', '2', '222', '/static/upload/c5759267f3a03050/ec0fc4b46b4ed981.jpg', '2019-03-06 10:41:17');
INSERT INTO `zong` VALUES ('0000000005', '2', 'buzhi', '/static/upload/aa20ce51d01b36da/dfffc8a7c427c311.jpg', '2019-03-06 10:41:35');
