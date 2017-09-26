/*
Navicat MySQL Data Transfer

Source Server         : Dark
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : curb

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-09-24 14:43:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `brand`
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES ('1', '小米');
INSERT INTO `brand` VALUES ('2', '荣耀');
INSERT INTO `brand` VALUES ('3', '小辣椒');
INSERT INTO `brand` VALUES ('4', '美图');
INSERT INTO `brand` VALUES ('5', '锤子');
INSERT INTO `brand` VALUES ('6', '360手机');

-- ----------------------------
-- Table structure for `platform`
-- ----------------------------
DROP TABLE IF EXISTS `platform`;
CREATE TABLE `platform` (
  `platform_id` int(11) NOT NULL AUTO_INCREMENT,
  `platform_name` varchar(255) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`platform_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of platform
-- ----------------------------
INSERT INTO `platform` VALUES ('1', '天猫', '2017-08-01', null, null);
INSERT INTO `platform` VALUES ('2', '京东', '2017-08-01', null, null);
INSERT INTO `platform` VALUES ('3', '小米官网', '2017-08-01', null, null);
INSERT INTO `platform` VALUES ('4', '华为官网', '2017-08-01', null, null);
INSERT INTO `platform` VALUES ('5', '360官网', '2017-08-01', null, null);

-- ----------------------------
-- Table structure for `qianggoubiao`
-- ----------------------------
DROP TABLE IF EXISTS `qianggoubiao`;
CREATE TABLE `qianggoubiao` (
  `qianggou_id` int(11) NOT NULL AUTO_INCREMENT,
  `qianngou_name` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `directe_url` varchar(1000) NOT NULL,
  `qianggoubiao_time` datetime DEFAULT NULL,
  `qianggou_brand_id` int(11) DEFAULT NULL,
  `qianggou_platform_id` int(11) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `is_invalid` char(255) DEFAULT NULL,
  `create_user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`qianggou_id`),
  KEY `fk_qianggoubiao_brand` (`qianggou_brand_id`),
  KEY `fk_qianggoubiao_platform` (`qianggou_platform_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qianggoubiao
-- ----------------------------
INSERT INTO `qianggoubiao` VALUES ('5', '小米6', '2017-08-01 17:15:27', 'https://item.jd.com/4099139.html', '2017-08-13 09:58:50', '1', '1', '', '', '', '');
INSERT INTO `qianggoubiao` VALUES ('6', '荣耀8', '2017-08-01 23:24:52', 'https://item.jd.com/4099139.html', '2017-08-13 09:58:53', '2', '1', null, null, null, null);
INSERT INTO `qianggoubiao` VALUES ('7', '小米7', '2017-08-02 09:56:12', 'https://item.jd.com/4099139.html', '2017-08-13 09:58:57', '1', '1', null, null, null, null);
INSERT INTO `qianggoubiao` VALUES ('8', '小米6（2499）聚划算', '2017-08-02 17:43:04', 'https://detail.ju.taobao.com/home.htm?spm=a220o.1000855.1998059570.1.4732a2bdmEZBXA&item_id=549049522944&ali_trackid=2:mm_31735899_13434959_53336292:1501666709_310_1044786802', '2017-08-13 09:59:00', '1', '1', null, null, null, null);
INSERT INTO `qianggoubiao` VALUES ('9', '360N4', '2017-08-02 17:58:12', 'https://re.jd.com/cps/item/5181406.html?cu=true&utm_source=qianggoubiao.cn&utm_medium=tuiguang&utm_campaign=t_328129234_&utm_term=d21a41691e6247be9727574d220bfe0b&abt=3', '2017-08-13 09:59:03', '6', '5', null, null, null, null);
INSERT INTO `qianggoubiao` VALUES ('11', '荣耀9 4+64金（2299-5181406）', '2017-08-02 18:23:44', 'https://re.jd.com/cps/item/5181404.html?cu=true&utm_source=qianggoubiao.cn&utm_medium=tuiguang&utm_campaign=t_328129234_&utm_term=6c9e8c4c6f8f40e4902ae8f0f493eb3c&abt=3', '2017-08-13 09:59:06', '1', '1', null, null, null, null);
INSERT INTO `qianggoubiao` VALUES ('22', 'Xiaomi/小米 小米5X手机全新机官方正品双摄像头学生智能拍照手机', '2017-08-13 15:11:17', 'https://detail.tmall.com/item.htm?spm=a222t.8063993.4954155005.6.6143438d90FPuN&acm=lb-zebra-164656-978614.1003.4.845135&id=555589089023&scm=1003.4.lb-zebra-164656-978614.ITEM_555589089023_845135&sku_properties=10004:385316259;5919063:6536025;12304035:3222911', '2017-08-13 00:40:00', '1', '1', null, null, null, null);
INSERT INTO `qianggoubiao` VALUES ('23', '【领券减100元】Meizu/魅族 PRO 6 Plus公开版4G智能手机pro6plus', '2017-08-13 15:22:45', 'https://detail.tmall.com/item.htm?spm=a222t.9125007.8131218236.2.2118eb7bkySdQ2&sku_properties=10004:653732324;5919063:6536025;12304035:3222911&acm=lb-zebra-253351-2265248.1003.4.1987810&id=542299604342&scm=1003.4.lb-zebra-253351-2265248.OTHER_14998103227704_1987810', '2017-08-14 08:40:00', '1', '2', null, null, null, null);
INSERT INTO `qianggoubiao` VALUES ('21', '【官方旗舰店】华为honor/荣耀 荣耀9智能全网通手机正品现货', '2017-08-12 10:07:02', 'https://detail.tmall.com/item.htm?spm=a220m.1000858.1000725.1.d811797zSNKZi&id=552919553653&skuId=3435482441402&areaId=440100&standard=1&user_id=1114511827&cat_id=2&is_b=1&rn=5b8d14c54290311229e18a080c46dbfa', '2017-08-13 10:00:00', '1', '2', null, null, null, null);

-- ----------------------------
-- Table structure for `tbl_article`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_article`;
CREATE TABLE `tbl_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `directe_url` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL COMMENT '文章的logo,封面',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `content` text,
  `read_count` int(11) DEFAULT NULL COMMENT '阅读数',
  `tag_id1` int(11) DEFAULT NULL COMMENT '标签id,下同',
  `tag_id2` int(11) DEFAULT NULL,
  `tag_id3` int(11) DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `status` char(255) DEFAULT NULL COMMENT '文章的状态:删除,禁用(不可看),开放(可看)',
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_article
-- ----------------------------
INSERT INTO `tbl_article` VALUES ('1', '美媒称印度军队面对解放军毫无胜算：印军将不堪一击', 'http://www.toutiao.com/a6452083287393321230/', 'http://p3.pstatp.com/large/3111000c897e2851874f', '2017-08-09 20:47:20', '2017-08-09 20:47:24', '美国“价值行走”新闻网站8月7日发表波利娜·吉洪诺娃的文章《中国对印度：为什么印度军队将不堪一击》称，中国与印度的紧张状态似乎一触即发，但是如果要对战中国人，印度军队丝毫没有做好准备。\r\n\r\n中印在边境陷入了几十年来最动荡不安、最不可预测的对峙之中。中国一直敦促印度撤军，停止阻挠其领土上的道路建设。印度拒绝让步，冒着与中国在印度次大陆爆发大战的风险。\r\n\r\n文章称，中国向印度发出一系列警告，要其撤出军队，以避免对抗。但是在这场边界对峙之中，印度一直坚持其立场。但是，如果真的爆发军事战争，印度几乎没有任何获胜的可能性。\r\n\r\n文章认为，在年度防务支出方面，中国令印度相形见绌，前者为2160亿美元，后者为560亿美元。一旦爆发中印大战，印度几乎没有任何击败世界上第二大军队的可能性，而国防开支并不是唯一的因素。中国的军事实力和中国媒体的激烈言辞具有威吓作用，令人们对中印战争进行了现实的预测，而且新德里对本国军队前景也并不看好。\r\n\r\n印度主计审计长公署向议会提交了一份关于印度军队状况的切合实际的报告。报告透露的关于印度军队备战情况的调查结果令人不安，使得印度人对于中国与印度战争的前景感到更加恐惧。\r\n\r\n《印度斯坦时报》公布的这份报告显示，印度军队正饱受如下情况困扰：必要弹药严重短缺，激烈战事的备战情况严重不足，基本资源明显短缺，印度士兵缺乏训练。\r\n\r\n印度评论人士在社交媒体上妄想在军事上与中国一决雌雄，但这份报告表明，印度军队可能并没有做好与中国或者巴基斯坦作战的准备。\r\n\r\n这份报告显示，2016年9月，印度80%的弹药低于与外国军队进行激烈战斗的必要水平。报告还显示，令人沮丧的统计数据在2017年并没有很大的改善。除了基本资源严重短缺之外，报告还估计军事训练所需资源短缺在77%至88%之间。\r\n\r\n但是，解决本国军队的弱点是印度最不关注的一个问题，而中国军队继续取得长足进展，令其对手心惊胆寒。印度军队正在遭受明显的下滑，而中国军队却没有浪费时间。中国军队得益于多年来国防预算两位数的增长，实力有明显提升。\r\n\r\n文章称，中国拥有200余万军人和大量的尖端军事硬件。而在有可能的中印军事对抗中，这并不是唯一令印度感到恐惧的事情。中印之间的边界对峙对于印度脆弱的经济来说也不堪重负。\r\n\r\n美媒称印度军队面对解放军毫无胜算：印军将不堪一击\r\n7月30日，庆祝中国人民解放军建军90周年阅兵在位于内蒙古的朱日和训练基地举行。', '0', '1', '2', '3', '43', '1', null);
INSERT INTO `tbl_article` VALUES ('2', '专访吴恩达，课程项目Deeplearning.ai正式发布', 'http://www.toutiao.com/a6451936373816427022/', 'http://p3.pstatp.com/large/31ff0003bd4ccb4229f1', '2017-08-09 20:57:51', '2017-08-09 20:57:53', 'Deeplearning.ai 课程地址：https://www.coursera.org/specializations/deep-learning\r\n\r\n专访吴恩达，课程项目Deeplearning.ai正式发布\r\n\r\n今早，吴恩达在 Medium 上发布了一篇博客，宣布 Deeplearning.ai 项目正式启动。同时表示今天发布的项目仅仅是他正在发布的三大项目中的第一个。吴恩达表示：Deepleanring.ai 是一套教育课程，而另外两个项目则有关人工智能产品，但他目前还不能透露更多细节。\r\n\r\n在 Deeplearning.ai 发布前夕，机器之心对吴恩达进行了专访，内容涉及该项目、近期工作的动向，以及对未来的展望。\r\n\r\n机器之心：请介绍一下 Deeplearning.ai？\r\n\r\n吴恩达：Deeplearning.ai 今天的发布会将宣布基于 Coursera 的一系列深度学习课程。在人工智能领域，我们有机会创造一系列前所未有的系统与产品。但是，即使像谷歌和百度这样的公司也无法覆盖这一领域的全部。所以，我认为让深度学习社区发展壮大的最好方式就是创造更好的深度学习课程，让越来越多的人接触深度学习。据我所知，我之前的机器学习课程——也是全世界最热门的机器学习课程，目前已经惠及了超过 180 万人。而在 Deeplearning.ai，我们致力于让更多人能够获得有关机器学习的课程。\r\n\r\n我曾经说过，AI 是新电力，我相信人工智能将在未来改变各行各业。如果这个设想是对的，全世界就需要数百万具备深度学习知识的人。\r\n\r\n机器之心：那么，Deeplearning.ai 发布的课程与此前的课程（基于斯坦福大学的系列课程）有什么不同？\r\n\r\n吴恩达：《机器学习》系列课程在 2011 年左右形成，它们是很棒的课程，很多人都了解过这个课程。有人告诉我，仅仅在上周，就有大约 2000 人学习了这个课程。这一课程是对于机器学习的很好概述，其中包含监督学习、无监督学习、支持向量机、梯度下降等等，所有这些都非常有意义。但我认为深度学习在过去几年里发展很快，我们需要一个全新的课程来向人们传达现代深度学习的理念——其中包含最近几年发展起来的新知识。\r\n\r\n机器之心：Deeplearning.ai 是一个教育平台，亦或是内容的集合？\r\n\r\n吴恩达：Deeplearning.ai 有关内容包含视频讲解、练习和扩展阅读，我们正计划将这些都放在 Coursera。\r\n\r\n机器之心：你曾经提及将会推出计算机视觉的课程，可以透露更多信息吗？\r\n\r\n吴恩达：我们本次计划推出的课程有五大部分，都是基于如何将神经网络应用到各个领域中的。其中包括计算机视觉、自然语言处理、序列到序列模型等等。其中值得一提的是，新课程将注重于引导应用机器学习的方向。它会为人们提供一个深度学习的「模拟器」。就像训练飞行员一样，一个学员需要先在模拟器上进行多次训练，积累数年经验随后才能在真实场景中起飞。\r\n\r\n在 Deeplearning.ai 的课程中，一个有趣的功能就是对机器学习进行模拟——我们必须学习在复杂的机器学习项目中进行决策、调整和团队合作。据我所知，这是第一次有人将这种此前只面向博士在读学生的训练推广到所有人。我对此感到非常激动，这一次，人们终于可以了解如何应对深度学习项目中各种设置的问题了——这不是一个简单的任务，即使很多有经验的人也不知道如何去做。五项课程提供的模拟器可以让人们自由地在其中进行练习，其中的任务与真实情况极为近似，对你的机器学习项目非常有用。\r\n\r\n机器之心：Deeplearning.ai 的内容会在国内进行更多的推广吗？\r\n\r\n吴恩达：目前，Coursera 是学习此类课程的最佳平台。我很期待在未来将这些课程推广给更多国内学生，目前很多 Coursera 的服务器在国外，这可能会让很多人无法接触到，但我们正在寻求相应的解决方案。\r\n\r\n我认为人工智能在中国的发展速度超过了全球其他任何地方，近期国务院发布的《新一代人工智能发展规划》更是在推动这个过程。我正在积极寻求与国内的合作，近期我还将访问国内。\r\n\r\n机器之心：我想问一下，您大概什么时候开始考虑启动 Deeplearning.ai 的？\r\n\r\n吴恩达：我大概是在 5 月份左右做的这个决定，我考虑了很长时间。你知道，多年以来一直都有人问我在 Coursera 上的教学问题，在 Facebook 的评论页面也一直有人发表意见。直到目前为止，我才有时间开始做这些东西。到了 5 月份，我才认真考虑做这个。\r\n\r\n机器之心：什么时候这些课程会上传、公开呢？\r\n\r\n吴恩达：几小时后，我们将会发布三门课程，剩下的两门可能要花费几周时间。\r\n\r\n机器之心：Deeplearning.ai 项目团队大约有多少人？\r\n\r\n吴恩达：作为一个大型系列课程，Deeplearning.ai 有很多工作需要处理。目前，我有两个助理，也有一些人在协助视频剪辑等工作。当然，我们不是一家公司，不需要用到上百人（笑）。\r\n\r\n机器之心：你也提到未来会发布更多的项目，所以未来的项目也与教育有关？还是其他方向的？\r\n\r\n吴恩达：我能说的有限。你知道，我们还有大量的与人工智能相关的东西没有发现、建立。因此我希望发布 Deeplearning.ai，这些内容能够教授更多的人建立人工智能系统。但我希望至少有一个项目能够与中国有非常大的关联（笑）。\r\n\r\n实际上，我们并不打算把 Deeplearning.ai 做成一家创业公司，追求商业并非我们的方向。我想斯坦福的学生乐于开源自己的软件、公开论文、分享自己的成果，这正是基础的研究精神。\r\n\r\n机器之心：你曾在推特上说，2017 是 AI 创新的好时机，为什么？\r\n\r\n吴恩达：你知道，之前我们看到生态系统足以支持技术或产品的时候，那技术或产品就是起飞的时机。当时在推特上我想说的是，1990 年代整个生态系统还没准备好，当时浅学习算法更好。2005 年或者 2007 年之后，硬件与数据备好之后，深度学习算法更佳。所以，技术时机非常重要。\r\n\r\n以下是我们对 Medium 博客内容的中文介绍：\r\n\r\n我一直在推进三个新的 AI 项目，现在很高兴能够宣布第一个项目：deeplearning.ai，这是一个致力于传播 AI 知识的项目，该项目即将在 Coursera 上发布新的深度学习系列课程。这些课程将帮助大家掌握深度学习，高效应用深度学习，发展自己的 AI 生涯。\r\n\r\n专访吴恩达，课程项目Deeplearning.ai正式发布\r\n\r\n吴恩达与 Deeplearning.ai 的两位 TA：Kian Katanforoosh 与 Younes Mourri\r\n\r\nAI 是新电力\r\n\r\n从 100 多年前开始，电改变了每个主要行业。现在的 AI 也是一样。多家大型技术公司已经建立 AI 部门，并着手利用 AI 进行转型。在未来数年中，各种规模、各个行业的公司将意识到他们也必须成为 AI 驱动型未来的一部分。\r\n\r\n构建 AI 驱动型社会\r\n\r\n我希望人类能够构建一个 AI 驱动的社会，每个人享受得起医疗，每个孩子接受个性化教育，每个人拥有廉价的自动驾驶汽车，每个人有一份充满意义的工作。AI 驱动型社会能够提升每个人的生活质量。但是没有一家公司可凭一己之力做到这些。正如现在每一个刚毕业的计算机科学专业学生知道如何使用云，未来的程序员也要知道如何使用 AI。使用深度学习提升人类生活质量的方式多达数百万，因此社会需要全世界的人齐心协力共同构建伟大的 AI 系统。不管你是一名加州有抱负的软件工程师、中国的研究科学家，或者是印度的机器学习工程师，我希望你可以使用深度学习解决世界面临的挑战。\r\n\r\n你将学到什么\r\n\r\n任何有基本机器学习知识的人都可以学习这 5 门系列课程，它们组成了最新的 Coursera 深度学习专业课（Deep Learning Specialization）。你将学到深度学习的基础，理解如何构建神经网络，并学习怎样进行一个成功的机器学习项目。你将学到卷积网络、RNN、LSTM、Adam、Dropout、BatchNorm、Xavier/He 初始化等知识。你将从案例研究中学习，例如医疗、自动驾驶汽车、阅读手语、生成音乐和自然语言处理等。你还可以使用 Python 和 TensorFlow 实践这些有趣的想法和应用。你将听到许多深度学习顶级专家的课程，他们将与你分享经历，并给你提出一些职业建议。\r\n\r\n当你获得了深度学习专业课认证后，你就能自信地在你的简历上写上「深度学习」。\r\n\r\n和我一起构建一个 AI 驱动的未来吧\r\n\r\n从 2011 年开始，180 万人已经参加过我的机器学习课程，那是我和四名斯坦福的同学一起构建的课程，后来它成了 Coursera 上的第一门课。自那以后，我被你们想要理解深度学习的努力所激励，构建了卓越的 AI 系统，个人职业生涯也取得了很大的发展。我希望深度学习专业课将帮助你们创造更多奇妙的事，让你们能够更多地帮助社会，并且在职业生涯中走得更远。\r\n\r\n我希望大家可以和我一起构建一个 AI 驱动的社会。\r\n\r\n我将随时告知大家另外两个 AI 项目的进展，并且寻找各种方式帮助全球 AI 社区的你们。', '0', '3', '4', '5', '43', '1', null);

-- ----------------------------
-- Table structure for `tbl_collect`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_collect`;
CREATE TABLE `tbl_collect` (
  `collect_id` int(11) NOT NULL AUTO_INCREMENT,
  `target_id` int(11) DEFAULT NULL,
  `target_type` int(11) DEFAULT NULL COMMENT '1代表收藏商品,2代表收藏(关注)商家',
  `user_id` int(11) DEFAULT NULL,
  `is_collect` int(1) DEFAULT NULL COMMENT '1代表收藏 0代表未收藏(取消收藏)',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`collect_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_collect
-- ----------------------------
INSERT INTO `tbl_collect` VALUES ('7', '2', '1', '46', '1', '2017-08-13 21:21:32', '2017-08-13 21:21:32', null);
INSERT INTO `tbl_collect` VALUES ('8', '1', '1', '46', '1', '2017-08-13 21:21:40', '2017-08-13 21:22:12', null);
INSERT INTO `tbl_collect` VALUES ('15', '2', '2', '45', '1', '2017-08-13 21:23:57', '2017-08-13 21:24:32', null);
INSERT INTO `tbl_collect` VALUES ('9', '1', '2', '46', '1', '2017-08-13 21:21:52', '2017-08-13 21:21:52', null);
INSERT INTO `tbl_collect` VALUES ('10', '2', '2', '46', '1', '2017-08-13 21:22:02', '2017-08-13 21:22:02', null);
INSERT INTO `tbl_collect` VALUES ('11', '1', '1', '43', '1', '2017-08-13 21:22:51', '2017-08-13 21:22:51', null);
INSERT INTO `tbl_collect` VALUES ('12', '2', '1', '43', '1', '2017-08-13 21:22:56', '2017-08-13 21:22:56', null);
INSERT INTO `tbl_collect` VALUES ('13', '1', '2', '43', '1', '2017-08-13 21:23:03', '2017-08-13 21:23:03', null);
INSERT INTO `tbl_collect` VALUES ('14', '2', '2', '43', '1', '2017-08-13 21:23:07', '2017-08-13 21:23:07', null);
INSERT INTO `tbl_collect` VALUES ('16', '1', '2', '45', '1', '2017-08-13 21:24:01', '2017-08-13 21:24:01', null);
INSERT INTO `tbl_collect` VALUES ('17', '2', '1', '45', '1', '2017-08-13 21:24:06', '2017-08-13 21:24:06', null);
INSERT INTO `tbl_collect` VALUES ('18', '1', '1', '45', '1', '2017-08-13 21:24:11', '2017-08-13 21:24:11', null);

-- ----------------------------
-- Table structure for `tbl_dept`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dept`;
CREATE TABLE `tbl_dept` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dept
-- ----------------------------
INSERT INTO `tbl_dept` VALUES ('1', '开发部');
INSERT INTO `tbl_dept` VALUES ('2', '测试部');

-- ----------------------------
-- Table structure for `tbl_emp`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_emp`;
CREATE TABLE `tbl_emp` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(255) NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `fk_emp_dept` (`d_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_emp
-- ----------------------------
INSERT INTO `tbl_emp` VALUES ('4', '3068f2', 'M', '3068f2@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('5', '582cf3', 'M', '582cf3@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('6', '9c44f4', 'M', '9c44f4@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('7', 'abca45', 'M', 'abca45@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('8', '7e1116', 'M', '7e1116@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('9', 'df1fc7', 'M', 'df1fc7@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('10', 'ccc378', 'M', 'ccc378@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('11', '829d69', 'M', '829d69@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('12', 'b818d10', 'M', 'b818d10@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('13', '7561611', 'M', '7561611@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('14', '0235412', 'M', '0235412@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('15', '23a8a13', 'M', '23a8a13@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('16', 'e93b814', 'M', 'e93b814@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('17', 'f1d0015', 'M', 'f1d0015@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('18', 'ac0e116', 'M', 'ac0e116@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('19', 'eb51217', 'M', 'eb51217@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('20', '828bb18', 'M', '828bb18@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('21', '4b0f019', 'M', '4b0f019@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('22', 'b851c20', 'M', 'b851c20@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('23', 'c973c21', 'M', 'c973c21@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('24', 'ff48f22', 'M', 'ff48f22@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('25', 'bec1b23', 'M', 'bec1b23@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('26', 'cacd024', 'M', 'cacd024@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('27', 'd93aa25', 'M', 'd93aa25@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('28', '4557426', 'M', '4557426@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('29', '7116f27', 'M', '7116f27@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('30', '4ce7528', 'M', '4ce7528@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('31', 'fa1be29', 'M', 'fa1be29@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('32', '6571830', 'M', '6571830@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('33', 'b6ea831', 'M', 'b6ea831@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('34', '5269632', 'M', '5269632@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('35', '4547433', 'M', '4547433@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('36', 'd8d2234', 'M', 'd8d2234@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('37', '49d3d35', 'M', '49d3d35@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('38', 'df0e536', 'M', 'df0e536@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('39', '03b0a37', 'M', '03b0a37@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('40', '6630538', 'M', '6630538@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('41', '8ec4139', 'M', '8ec4139@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('42', '467ff40', 'M', '467ff40@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('43', 'b217441', 'M', 'b217441@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('44', '0b09742', 'M', '0b09742@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('45', 'b102743', 'M', 'b102743@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('46', '5063644', 'M', '5063644@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('47', '1ed5145', 'M', '1ed5145@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('48', '2e1b646', 'M', '2e1b646@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('49', 'aa8cd47', 'M', 'aa8cd47@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('50', '4a2ae48', 'M', '4a2ae48@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('51', '2810449', 'M', '2810449@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('52', 'c335050', 'M', 'c335050@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('53', 'e49a751', 'M', 'e49a751@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('54', '3bdea52', 'M', '3bdea52@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('55', '7a53153', 'M', '7a53153@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('56', '3cb5154', 'M', '3cb5154@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('57', '9824255', 'M', '9824255@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('58', '977ef56', 'M', '977ef56@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('59', '506d757', 'M', '506d757@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('60', '01f8858', 'M', '01f8858@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('61', 'daf3a59', 'M', 'daf3a59@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('62', 'bb82160', 'M', 'bb82160@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('63', '5626761', 'M', '5626761@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('64', 'dcde162', 'M', 'dcde162@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('65', '503d163', 'M', '503d163@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('66', '3d63e64', 'M', '3d63e64@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('67', '6b72765', 'M', '6b72765@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('68', '20df566', 'M', '20df566@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('69', '2e8ba67', 'M', '2e8ba67@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('70', 'dd7bf68', 'M', 'dd7bf68@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('71', '7b58169', 'M', '7b58169@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('72', 'ceac370', 'M', 'ceac370@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('73', 'e8df171', 'M', 'e8df171@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('74', '3570972', 'M', '3570972@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('75', '2106573', 'M', '2106573@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('76', '6319174', 'M', '6319174@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('77', '8fdbc75', 'M', '8fdbc75@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('78', 'fa19b76', 'M', 'fa19b76@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('79', 'b158477', 'M', 'b158477@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('80', 'a02d278', 'M', 'a02d278@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('81', '30aec79', 'M', '30aec79@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('82', '05b6280', 'M', '05b6280@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('83', '10f9081', 'M', '10f9081@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('84', '883b482', 'M', '883b482@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('85', '3f87883', 'M', '3f87883@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('86', 'f95e484', 'M', 'f95e484@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('87', '31d9c85', 'M', '31d9c85@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('88', '7934c86', 'M', '7934c86@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('89', 'fc7ed87', 'M', 'fc7ed87@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('90', '8b84588', 'M', '8b84588@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('91', '6f7e689', 'M', '6f7e689@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('92', 'c7b5c90', 'M', 'c7b5c90@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('93', '2f3f991', 'M', '2f3f991@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('94', 'd340692', 'M', 'd340692@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('95', 'ec7a693', 'M', 'ec7a693@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('96', '2e82494', 'M', '2e82494@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('97', 'd20d795', 'M', 'd20d795@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('98', '3179296', 'M', '3179296@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('99', '86a6f97', 'M', '86a6f97@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('100', '6393898', 'M', '6393898@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('101', 'be03899', 'M', 'be03899@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('102', '9bf3f100', 'M', '9bf3f100@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('103', '80e23101', 'M', '80e23101@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('104', 'bc24e102', 'M', 'bc24e102@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('105', '0ba7e103', 'M', '0ba7e103@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('106', 'ff6d9104', 'M', 'ff6d9104@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('107', 'bf9e1105', 'M', 'bf9e1105@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('108', '9a946106', 'M', '9a946106@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('109', '06c5d107', 'M', '06c5d107@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('110', 'ba098108', 'M', 'ba098108@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('111', '197c5109', 'M', '197c5109@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('112', 'af51b110', 'M', 'af51b110@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('113', '24fc7111', 'M', '24fc7111@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('114', '0109c112', 'M', '0109c112@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('115', 'c48eb113', 'M', 'c48eb113@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('116', 'ad612114', 'M', 'ad612114@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('117', '65959115', 'M', '65959115@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('118', 'f5c2f116', 'M', 'f5c2f116@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('119', '9c862117', 'M', '9c862117@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('120', '5dab8118', 'M', '5dab8118@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('121', '9b672119', 'M', '9b672119@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('122', '9ba72120', 'M', '9ba72120@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('123', 'ebf73121', 'M', 'ebf73121@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('124', '45a10122', 'M', '45a10122@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('125', 'c472a123', 'M', 'c472a123@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('126', 'bc3b5124', 'M', 'bc3b5124@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('127', 'f26cf125', 'M', 'f26cf125@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('128', '3bb41126', 'M', '3bb41126@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('129', 'bf71e127', 'M', 'bf71e127@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('130', 'c35ff128', 'M', 'c35ff128@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('131', '02635129', 'M', '02635129@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('132', '53654130', 'M', '53654130@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('133', '2ac33131', 'M', '2ac33131@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('134', '9378e132', 'M', '9378e132@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('135', 'b7fab133', 'M', 'b7fab133@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('136', 'abaf1134', 'M', 'abaf1134@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('137', '45403135', 'M', '45403135@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('138', 'f9510136', 'M', 'f9510136@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('139', 'e242d137', 'M', 'e242d137@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('140', 'e0a7a138', 'M', 'e0a7a138@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('141', 'f7a74139', 'M', 'f7a74139@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('142', '7b550140', 'M', '7b550140@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('143', '34f79141', 'M', '34f79141@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('144', 'c09d8142', 'M', 'c09d8142@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('145', '00b28143', 'M', '00b28143@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('146', 'b8173144', 'M', 'b8173144@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('147', 'c5e92145', 'M', 'c5e92145@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('148', 'a86e7146', 'M', 'a86e7146@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('149', '37aef147', 'M', '37aef147@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('150', '75ddb148', 'M', '75ddb148@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('151', '80b3a149', 'M', '80b3a149@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('152', 'c1119150', 'M', 'c1119150@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('153', '29e88151', 'M', '29e88151@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('154', 'fa864152', 'M', 'fa864152@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('155', '7e4b7153', 'M', '7e4b7153@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('156', 'eb8ef154', 'M', 'eb8ef154@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('157', '5c026155', 'M', '5c026155@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('158', 'ef19c156', 'M', 'ef19c156@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('159', 'da37f157', 'M', 'da37f157@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('160', 'dd586158', 'M', 'dd586158@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('161', 'bf998159', 'M', 'bf998159@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('162', 'f8388160', 'M', 'f8388160@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('163', '51bfd161', 'M', '51bfd161@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('164', '64024162', 'M', '64024162@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('165', 'da03b163', 'M', 'da03b163@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('166', '6a4be164', 'M', '6a4be164@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('167', 'bc594165', 'M', 'bc594165@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('168', '1e775166', 'M', '1e775166@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('169', '9bdc0167', 'M', '9bdc0167@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('170', '21d18168', 'M', '21d18168@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('171', 'e4b51169', 'M', 'e4b51169@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('172', 'daa46170', 'M', 'daa46170@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('173', 'b4287171', 'M', 'b4287171@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('174', '30397172', 'M', '30397172@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('175', '71d2e173', 'M', '71d2e173@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('176', '1bb81174', 'M', '1bb81174@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('177', '23496175', 'M', '23496175@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('178', '5ee3a176', 'M', '5ee3a176@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('179', '97a2f177', 'M', '97a2f177@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('180', '4c1a3178', 'M', '4c1a3178@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('181', 'e2804179', 'M', 'e2804179@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('182', 'cf5b5180', 'M', 'cf5b5180@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('183', '33ba3181', 'M', '33ba3181@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('184', 'e3ac7182', 'M', 'e3ac7182@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('185', 'ca8df183', 'M', 'ca8df183@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('186', 'a9cfd184', 'M', 'a9cfd184@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('187', '494b6185', 'M', '494b6185@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('188', '6b097186', 'M', '6b097186@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('189', 'ec08b187', 'M', 'ec08b187@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('190', '78c37188', 'M', '78c37188@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('191', '71a0d189', 'M', '71a0d189@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('192', '423b7190', 'M', '423b7190@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('193', 'a25db191', 'M', 'a25db191@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('194', '503eb192', 'M', '503eb192@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('195', '1b3e2193', 'M', '1b3e2193@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('196', '56b2d194', 'M', '56b2d194@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('197', '579c4195', 'M', '579c4195@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('198', 'b4446196', 'M', 'b4446196@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('199', '52bff197', 'M', '52bff197@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('200', '526ce198', 'M', '526ce198@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('201', 'd6c25199', 'M', 'd6c25199@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('202', 'c4e9f200', 'M', 'c4e9f200@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('203', '7c275201', 'M', '7c275201@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('204', '2a748202', 'M', '2a748202@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('205', 'a4d38203', 'M', 'a4d38203@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('206', 'd02e5204', 'M', 'd02e5204@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('207', '21710205', 'M', '21710205@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('208', 'c1f44206', 'M', 'c1f44206@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('209', '27a94207', 'M', '27a94207@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('210', '4fd15208', 'M', '4fd15208@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('211', '78ace209', 'M', '78ace209@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('212', '99518210', 'M', '99518210@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('213', '05466211', 'M', '05466211@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('214', '5641d212', 'M', '5641d212@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('215', 'ebe86213', 'M', 'ebe86213@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('216', 'a9f92214', 'M', 'a9f92214@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('217', '6615f215', 'M', '6615f215@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('218', '02077216', 'M', '02077216@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('219', 'bcd72217', 'M', 'bcd72217@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('220', '7d1c1218', 'M', '7d1c1218@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('221', 'c2310219', 'M', 'c2310219@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('222', '5cf8b220', 'M', '5cf8b220@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('223', 'e1b74221', 'M', 'e1b74221@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('224', 'bac1c222', 'M', 'bac1c222@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('225', 'ff91f223', 'M', 'ff91f223@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('226', '4f1f8224', 'M', '4f1f8224@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('227', 'f9665225', 'M', 'f9665225@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('228', 'eed7d226', 'M', 'eed7d226@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('229', 'add2b227', 'M', 'add2b227@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('230', '6051c228', 'M', '6051c228@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('231', 'eca69229', 'M', 'eca69229@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('232', '1808b230', 'M', '1808b230@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('233', 'dd866231', 'M', 'dd866231@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('234', 'cc48b232', 'M', 'cc48b232@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('235', '46096233', 'M', '46096233@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('236', 'e67cd234', 'M', 'e67cd234@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('237', '0f553235', 'M', '0f553235@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('238', '73aa8236', 'M', '73aa8236@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('239', '1c57f237', 'M', '1c57f237@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('240', '8533e238', 'M', '8533e238@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('241', '3f95d239', 'M', '3f95d239@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('242', '061b8240', 'M', '061b8240@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('243', '26e24241', 'M', '26e24241@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('244', '27599242', 'M', '27599242@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('245', '13e9e243', 'M', '13e9e243@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('246', '98987244', 'M', '98987244@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('247', '33375245', 'M', '33375245@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('248', '2bed8246', 'M', '2bed8246@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('249', '4bb60247', 'M', '4bb60247@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('250', '1b12f248', 'M', '1b12f248@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('251', '1c5b3249', 'M', '1c5b3249@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('252', '27bea250', 'M', '27bea250@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('253', '3ce5b251', 'M', '3ce5b251@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('254', '70cb9252', 'M', '70cb9252@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('255', '987fb253', 'M', '987fb253@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('256', '23260254', 'M', '23260254@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('257', '2b389255', 'M', '2b389255@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('258', 'e425f256', 'M', 'e425f256@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('259', 'f861a257', 'M', 'f861a257@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('260', 'c42d2258', 'M', 'c42d2258@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('261', '1b4f9259', 'M', '1b4f9259@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('262', '12947260', 'M', '12947260@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('263', '986dd261', 'M', '986dd261@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('264', '265e8262', 'M', '265e8262@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('265', 'c0a50263', 'M', 'c0a50263@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('266', '665d5264', 'M', '665d5264@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('267', 'e0248265', 'M', 'e0248265@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('268', 'e10bf266', 'M', 'e10bf266@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('269', 'afaf1267', 'M', 'afaf1267@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('270', 'a7840268', 'M', 'a7840268@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('271', 'c490a269', 'M', 'c490a269@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('272', 'b8208270', 'M', 'b8208270@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('273', 'e60b3271', 'M', 'e60b3271@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('274', '95a65272', 'M', '95a65272@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('275', '5b289273', 'M', '5b289273@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('276', '712e2274', 'M', '712e2274@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('277', '51073275', 'M', '51073275@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('278', 'ac438276', 'M', 'ac438276@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('279', 'b3532277', 'M', 'b3532277@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('280', '968c2278', 'M', '968c2278@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('281', 'ecc50279', 'M', 'ecc50279@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('282', '61328280', 'M', '61328280@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('283', 'eb064281', 'M', 'eb064281@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('284', '9b3b5282', 'M', '9b3b5282@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('285', '83b91283', 'M', '83b91283@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('286', 'c0598284', 'M', 'c0598284@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('287', '222d2285', 'M', '222d2285@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('288', '9865e286', 'M', '9865e286@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('289', '48b1c287', 'M', '48b1c287@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('290', '8cecd288', 'M', '8cecd288@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('291', '52b00289', 'M', '52b00289@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('292', '3c9c6290', 'M', '3c9c6290@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('293', '3d435291', 'M', '3d435291@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('294', '8eb9c292', 'M', '8eb9c292@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('295', 'b9a68293', 'M', 'b9a68293@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('296', '9939a294', 'M', '9939a294@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('297', '2ceca295', 'M', '2ceca295@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('298', '08ccd296', 'M', '08ccd296@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('299', '582c5297', 'M', '582c5297@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('300', 'd4028298', 'M', 'd4028298@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('301', '8d7d7299', 'M', '8d7d7299@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('302', 'ae30d300', 'M', 'ae30d300@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('303', '077e1301', 'M', '077e1301@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('304', '2ac16302', 'M', '2ac16302@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('305', 'dd6dc303', 'M', 'dd6dc303@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('306', '0c064304', 'M', '0c064304@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('307', 'd33ff305', 'M', 'd33ff305@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('308', 'fcf2f306', 'M', 'fcf2f306@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('309', '44677307', 'M', '44677307@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('310', 'acd88308', 'M', 'acd88308@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('311', '4e526309', 'M', '4e526309@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('312', 'd3f52310', 'M', 'd3f52310@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('313', '28b6a311', 'M', '28b6a311@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('314', '2a09a312', 'M', '2a09a312@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('315', 'd5745313', 'M', 'd5745313@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('316', '10e9f314', 'M', '10e9f314@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('317', '52cd9315', 'M', '52cd9315@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('318', '97a4a316', 'M', '97a4a316@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('319', 'd5768317', 'M', 'd5768317@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('320', '895e5318', 'M', '895e5318@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('321', '67a1d319', 'M', '67a1d319@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('322', 'fc32c320', 'M', 'fc32c320@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('323', 'bc186321', 'M', 'bc186321@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('324', '7643b322', 'M', '7643b322@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('325', '2376f323', 'M', '2376f323@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('326', '498c8324', 'M', '498c8324@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('327', '0d115325', 'M', '0d115325@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('328', 'd6bab326', 'M', 'd6bab326@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('329', '8206e327', 'M', '8206e327@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('330', 'ff058328', 'M', 'ff058328@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('331', 'f73a1329', 'M', 'f73a1329@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('332', '4d2f0330', 'M', '4d2f0330@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('333', 'e2b5d331', 'M', 'e2b5d331@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('334', 'aeb76332', 'M', 'aeb76332@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('335', '93784333', 'M', '93784333@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('336', '1f427334', 'M', '1f427334@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('337', 'd8120335', 'M', 'd8120335@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('338', '04cfd336', 'M', '04cfd336@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('339', 'fe9e9337', 'M', 'fe9e9337@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('340', '89b83338', 'M', '89b83338@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('341', '42e83339', 'M', '42e83339@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('342', '752d9340', 'M', '752d9340@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('343', '138f2341', 'M', '138f2341@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('344', 'fc412342', 'M', 'fc412342@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('345', 'fe058343', 'M', 'fe058343@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('346', 'b69e5344', 'M', 'b69e5344@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('347', '14d84345', 'M', '14d84345@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('348', '7c94e346', 'M', '7c94e346@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('349', '3b812347', 'M', '3b812347@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('350', '4d18d348', 'M', '4d18d348@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('351', '34d77349', 'M', '34d77349@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('352', '4018a350', 'M', '4018a350@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('353', 'a4c5e351', 'M', 'a4c5e351@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('354', '5f00d352', 'M', '5f00d352@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('355', 'd42c5353', 'M', 'd42c5353@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('356', '96d21354', 'M', '96d21354@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('357', '189fe355', 'M', '189fe355@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('358', '06882356', 'M', '06882356@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('359', '9280b357', 'M', '9280b357@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('360', 'f3244358', 'M', 'f3244358@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('361', '5a84e359', 'M', '5a84e359@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('362', 'f2994360', 'M', 'f2994360@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('363', '39cc4361', 'M', '39cc4361@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('364', '0fa0f362', 'M', '0fa0f362@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('365', '30573363', 'M', '30573363@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('366', 'd4db8364', 'M', 'd4db8364@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('367', '23c7e365', 'M', '23c7e365@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('368', '9a654366', 'M', '9a654366@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('369', 'd6655367', 'M', 'd6655367@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('370', 'de4fa368', 'M', 'de4fa368@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('371', '1b5d5369', 'M', '1b5d5369@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('372', '67a42370', 'M', '67a42370@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('373', '5a679371', 'M', '5a679371@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('374', 'b570c372', 'M', 'b570c372@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('375', '09b11373', 'M', '09b11373@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('376', '65f22374', 'M', '65f22374@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('377', '3cd7a375', 'M', '3cd7a375@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('378', 'e0f5a376', 'M', 'e0f5a376@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('379', 'eded1377', 'M', 'eded1377@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('380', '9c0a4378', 'M', '9c0a4378@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('381', '56cc7379', 'M', '56cc7379@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('382', 'f7e4c380', 'M', 'f7e4c380@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('383', 'e1436381', 'M', 'e1436381@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('384', '292b0382', 'M', '292b0382@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('385', '45754383', 'M', '45754383@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('386', '1f0b6384', 'M', '1f0b6384@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('387', 'baa5b385', 'M', 'baa5b385@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('388', '91f1a386', 'M', '91f1a386@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('389', '698fe387', 'M', '698fe387@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('390', '33104388', 'M', '33104388@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('391', '3de57389', 'M', '3de57389@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('392', 'ab322390', 'M', 'ab322390@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('393', '69f79391', 'M', '69f79391@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('394', '27b20392', 'M', '27b20392@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('395', '67122393', 'M', '67122393@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('396', '866ba394', 'M', '866ba394@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('397', 'cd09d395', 'M', 'cd09d395@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('398', 'dfc7e396', 'M', 'dfc7e396@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('399', 'd8589397', 'M', 'd8589397@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('400', '0c508398', 'M', '0c508398@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('401', 'eb947399', 'M', 'eb947399@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('402', '69406400', 'M', '69406400@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('403', '32756401', 'M', '32756401@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('404', 'dd4b6402', 'M', 'dd4b6402@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('405', '18183403', 'M', '18183403@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('406', '8daf6404', 'M', '8daf6404@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('407', '8922c405', 'M', '8922c405@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('408', '1c154406', 'M', '1c154406@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('409', '5ec77407', 'M', '5ec77407@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('410', '32d77408', 'M', '32d77408@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('411', '0683d409', 'M', '0683d409@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('412', '98b41410', 'M', '98b41410@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('413', '09e8a411', 'M', '09e8a411@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('414', 'f2958412', 'M', 'f2958412@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('415', '153a5413', 'M', '153a5413@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('416', '14f36414', 'M', '14f36414@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('417', '3747b415', 'M', '3747b415@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('418', '315e5416', 'M', '315e5416@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('419', 'ce4a5417', 'M', 'ce4a5417@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('420', '34058418', 'M', '34058418@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('421', 'fd7ac419', 'M', 'fd7ac419@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('422', '3ec16420', 'M', '3ec16420@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('423', '281b1421', 'M', '281b1421@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('424', '9fc3c422', 'M', '9fc3c422@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('425', '54c60423', 'M', '54c60423@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('426', '7f6a0424', 'M', '7f6a0424@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('427', 'b135f425', 'M', 'b135f425@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('428', 'a2179426', 'M', 'a2179426@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('429', 'fd19b427', 'M', 'fd19b427@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('430', '1f00c428', 'M', '1f00c428@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('431', '616b0429', 'M', '616b0429@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('432', '23f56430', 'M', '23f56430@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('433', '87f24431', 'M', '87f24431@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('434', '91a66432', 'M', '91a66432@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('435', '9aec7433', 'M', '9aec7433@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('436', 'f34c9434', 'M', 'f34c9434@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('437', 'b2af4435', 'M', 'b2af4435@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('438', '550e2436', 'M', '550e2436@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('439', 'c7d8b437', 'M', 'c7d8b437@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('440', 'c8dcf438', 'M', 'c8dcf438@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('441', 'b766c439', 'M', 'b766c439@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('442', 'd9dc6440', 'M', 'd9dc6440@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('443', '465c7441', 'M', '465c7441@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('444', '83407442', 'M', '83407442@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('445', '9444c443', 'M', '9444c443@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('446', 'fbca5444', 'M', 'fbca5444@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('447', '32193445', 'M', '32193445@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('448', 'de0a3446', 'M', 'de0a3446@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('449', '8a1cb447', 'M', '8a1cb447@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('450', '367a8448', 'M', '367a8448@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('451', '74d0f449', 'M', '74d0f449@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('452', 'a2896450', 'M', 'a2896450@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('453', '71fe5451', 'M', '71fe5451@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('454', '09734452', 'M', '09734452@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('455', '6ad0d453', 'M', '6ad0d453@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('456', '11701454', 'M', '11701454@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('457', '8d921455', 'M', '8d921455@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('458', '2b2f5456', 'M', '2b2f5456@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('459', '42c30457', 'M', '42c30457@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('460', '5e299458', 'M', '5e299458@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('461', 'd2f1c459', 'M', 'd2f1c459@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('462', '6635b460', 'M', '6635b460@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('463', 'be046461', 'M', 'be046461@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('464', 'e2353462', 'M', 'e2353462@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('465', 'f473a463', 'M', 'f473a463@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('466', '5e38a464', 'M', '5e38a464@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('467', 'c32d1465', 'M', 'c32d1465@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('468', '8de9a466', 'M', '8de9a466@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('469', '9c371467', 'M', '9c371467@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('470', '553a0468', 'M', '553a0468@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('471', '5705f469', 'M', '5705f469@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('472', 'b82e7470', 'M', 'b82e7470@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('473', '78f90471', 'M', '78f90471@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('474', '24165472', 'M', '24165472@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('475', '55ff9473', 'M', '55ff9473@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('476', 'bb132474', 'M', 'bb132474@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('477', '02190475', 'M', '02190475@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('478', '23973476', 'M', '23973476@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('479', '04eea477', 'M', '04eea477@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('480', 'fb9d0478', 'M', 'fb9d0478@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('481', '3f559479', 'M', '3f559479@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('482', '36007480', 'M', '36007480@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('483', '0be07481', 'M', '0be07481@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('484', '0a2bc482', 'M', '0a2bc482@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('485', 'c5590483', 'M', 'c5590483@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('486', 'ca81a484', 'M', 'ca81a484@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('487', '9ae86485', 'M', '9ae86485@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('488', '59521486', 'M', '59521486@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('489', '7e1e4487', 'M', '7e1e4487@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('490', 'b85f8488', 'M', 'b85f8488@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('491', '1dbbf489', 'M', '1dbbf489@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('492', 'b20dc490', 'M', 'b20dc490@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('493', 'f7e9b491', 'M', 'f7e9b491@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('494', 'b8dad492', 'M', 'b8dad492@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('495', '51047493', 'M', '51047493@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('496', '81398494', 'M', '81398494@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('497', 'e35bd495', 'M', 'e35bd495@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('498', 'd4015496', 'M', 'd4015496@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('499', '20205497', 'M', '20205497@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('500', 'da073498', 'M', 'da073498@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('501', '0e705499', 'M', '0e705499@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('502', '31bf3500', 'M', '31bf3500@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('503', '4faf9501', 'M', '4faf9501@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('504', '73de3502', 'M', '73de3502@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('505', 'b99d2503', 'M', 'b99d2503@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('506', '9c905504', 'M', '9c905504@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('507', 'd96c3505', 'M', 'd96c3505@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('508', '7f42b506', 'M', '7f42b506@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('509', '40cbe507', 'M', '40cbe507@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('510', 'ffbd9508', 'M', 'ffbd9508@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('511', '5aef6509', 'M', '5aef6509@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('512', '743f5510', 'M', '743f5510@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('513', '8a290511', 'M', '8a290511@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('514', '08b18512', 'M', '08b18512@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('515', '8f5e3513', 'M', '8f5e3513@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('516', '23dd1514', 'M', '23dd1514@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('517', '2f03c515', 'M', '2f03c515@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('518', '311bf516', 'M', '311bf516@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('519', 'b2159517', 'M', 'b2159517@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('520', '22d3d518', 'M', '22d3d518@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('521', 'bd421519', 'M', 'bd421519@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('522', '60150520', 'M', '60150520@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('523', 'b8b29521', 'M', 'b8b29521@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('524', '4e64a522', 'M', '4e64a522@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('525', '05d72523', 'M', '05d72523@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('526', '82c3b524', 'M', '82c3b524@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('527', 'db21d525', 'M', 'db21d525@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('528', '9f438526', 'M', '9f438526@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('529', '1005b527', 'M', '1005b527@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('530', 'cfb17528', 'M', 'cfb17528@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('531', 'b36da529', 'M', 'b36da529@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('532', 'f0901530', 'M', 'f0901530@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('533', 'b5769531', 'M', 'b5769531@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('534', 'f0ad8532', 'M', 'f0ad8532@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('535', 'f38f1533', 'M', 'f38f1533@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('536', '4e7f4534', 'M', '4e7f4534@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('537', 'e0f1d535', 'M', 'e0f1d535@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('538', 'b869e536', 'M', 'b869e536@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('539', '04fd5537', 'M', '04fd5537@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('540', 'da616538', 'M', 'da616538@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('541', '42804539', 'M', '42804539@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('542', '24e8b540', 'M', '24e8b540@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('543', '28502541', 'M', '28502541@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('544', '0fdc3542', 'M', '0fdc3542@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('545', '71ddb543', 'M', '71ddb543@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('546', 'f0e88544', 'M', 'f0e88544@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('547', '0bd9b545', 'M', '0bd9b545@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('548', '881d7546', 'M', '881d7546@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('549', 'bbf92547', 'M', 'bbf92547@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('550', '1501d548', 'M', '1501d548@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('551', '76b81549', 'M', '76b81549@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('552', '650f3550', 'M', '650f3550@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('553', '8ad39551', 'M', '8ad39551@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('554', '323d5552', 'M', '323d5552@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('555', 'd1e0b553', 'M', 'd1e0b553@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('556', '39f20554', 'M', '39f20554@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('557', '0a50e555', 'M', '0a50e555@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('558', 'fdae3556', 'M', 'fdae3556@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('559', 'a654b557', 'M', 'a654b557@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('560', 'ecf44558', 'M', 'ecf44558@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('561', '29f05559', 'M', '29f05559@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('562', 'd2aa1560', 'M', 'd2aa1560@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('563', '45d3e561', 'M', '45d3e561@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('564', '45c85562', 'M', '45c85562@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('565', '7a163563', 'M', '7a163563@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('566', '2b25c564', 'M', '2b25c564@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('567', '43fb7565', 'M', '43fb7565@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('568', '581f4566', 'M', '581f4566@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('569', 'c689c567', 'M', 'c689c567@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('570', '61023568', 'M', '61023568@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('571', '4297c569', 'M', '4297c569@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('572', 'c7f2a570', 'M', 'c7f2a570@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('573', 'a44d8571', 'M', 'a44d8571@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('574', '6816f572', 'M', '6816f572@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('575', 'b791c573', 'M', 'b791c573@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('576', '07320574', 'M', '07320574@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('577', '12815575', 'M', '12815575@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('578', 'f4edc576', 'M', 'f4edc576@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('579', '67a7e577', 'M', '67a7e577@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('580', '23784578', 'M', '23784578@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('581', '0fcd1579', 'M', '0fcd1579@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('582', '0e10c580', 'M', '0e10c580@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('583', '2febf581', 'M', '2febf581@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('584', '0a7b4582', 'M', '0a7b4582@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('585', 'fbeab583', 'M', 'fbeab583@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('586', '0c1db584', 'M', '0c1db584@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('587', '8cf63585', 'M', '8cf63585@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('588', 'f34ad586', 'M', 'f34ad586@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('589', '296a0587', 'M', '296a0587@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('590', 'f54c5588', 'M', 'f54c5588@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('591', '1622c589', 'M', '1622c589@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('592', '5aba9590', 'M', '5aba9590@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('593', 'a14d9591', 'M', 'a14d9591@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('594', 'e8221592', 'M', 'e8221592@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('595', '9f2b1593', 'M', '9f2b1593@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('596', '40600594', 'M', '40600594@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('597', 'dbd41595', 'M', 'dbd41595@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('598', 'f0c4c596', 'M', 'f0c4c596@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('599', '80570597', 'M', '80570597@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('600', 'b7c30598', 'M', 'b7c30598@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('601', '13429599', 'M', '13429599@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('602', '46faf600', 'M', '46faf600@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('603', '415ca601', 'M', '415ca601@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('604', '0751e602', 'M', '0751e602@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('605', '623db603', 'M', '623db603@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('606', 'acda5604', 'M', 'acda5604@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('607', 'b0420605', 'M', 'b0420605@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('608', '8262c606', 'M', '8262c606@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('609', '31e61607', 'M', '31e61607@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('610', '06f0a608', 'M', '06f0a608@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('611', 'f2034609', 'M', 'f2034609@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('612', '21d61610', 'M', '21d61610@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('613', '3fabb611', 'M', '3fabb611@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('614', '6266f612', 'M', '6266f612@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('615', 'ebcde613', 'M', 'ebcde613@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('616', 'a3123614', 'M', 'a3123614@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('617', 'e1bd7615', 'M', 'e1bd7615@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('618', 'b6b88616', 'M', 'b6b88616@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('619', 'f3337617', 'M', 'f3337617@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('620', 'af080618', 'M', 'af080618@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('621', '6e2fd619', 'M', '6e2fd619@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('622', 'ab0af620', 'M', 'ab0af620@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('623', 'dc4ae621', 'M', 'dc4ae621@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('624', 'c77b0622', 'M', 'c77b0622@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('625', '782a8623', 'M', '782a8623@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('626', 'fb977624', 'M', 'fb977624@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('627', '24997625', 'M', '24997625@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('628', 'a7c14626', 'M', 'a7c14626@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('629', '60b18627', 'M', '60b18627@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('630', '15ea8628', 'M', '15ea8628@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('631', '58112629', 'M', '58112629@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('632', '97645630', 'M', '97645630@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('633', 'f5fa9631', 'M', 'f5fa9631@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('634', 'c80e5632', 'M', 'c80e5632@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('635', '7f105633', 'M', '7f105633@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('636', '4236e634', 'M', '4236e634@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('637', 'a13df635', 'M', 'a13df635@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('638', '4523a636', 'M', '4523a636@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('639', '0180f637', 'M', '0180f637@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('640', 'd194a638', 'M', 'd194a638@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('641', '0c19f639', 'M', '0c19f639@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('642', 'f05b1640', 'M', 'f05b1640@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('643', '16da9641', 'M', '16da9641@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('644', '525a3642', 'M', '525a3642@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('645', 'cde8f643', 'M', 'cde8f643@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('646', '3d2c2644', 'M', '3d2c2644@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('647', 'e0095645', 'M', 'e0095645@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('648', '4bd41646', 'M', '4bd41646@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('649', '9f052647', 'M', '9f052647@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('650', '89308648', 'M', '89308648@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('651', '75264649', 'M', '75264649@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('652', 'ea928650', 'M', 'ea928650@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('653', '2f95e651', 'M', '2f95e651@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('654', '11344652', 'M', '11344652@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('655', '7a8d9653', 'M', '7a8d9653@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('656', 'e9d82654', 'M', 'e9d82654@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('657', 'ab617655', 'M', 'ab617655@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('658', '58b91656', 'M', '58b91656@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('659', '40168657', 'M', '40168657@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('660', 'b0093658', 'M', 'b0093658@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('661', '66613659', 'M', '66613659@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('662', '836ad660', 'M', '836ad660@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('663', 'f679d661', 'M', 'f679d661@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('664', '916c1662', 'M', '916c1662@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('665', '97332663', 'M', '97332663@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('666', '5c0b7664', 'M', '5c0b7664@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('667', '03096665', 'M', '03096665@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('668', '522dd666', 'M', '522dd666@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('669', 'c2b96667', 'M', 'c2b96667@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('670', '491f2668', 'M', '491f2668@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('671', '833b2669', 'M', '833b2669@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('672', '7d302670', 'M', '7d302670@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('673', '83b9b671', 'M', '83b9b671@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('674', '9a72e672', 'M', '9a72e672@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('675', '4398b673', 'M', '4398b673@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('676', '90c3b674', 'M', '90c3b674@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('677', 'be0e3675', 'M', 'be0e3675@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('678', '14589676', 'M', '14589676@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('679', 'c6bde677', 'M', 'c6bde677@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('680', 'abcae678', 'M', 'abcae678@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('681', 'dfca0679', 'M', 'dfca0679@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('682', '12961680', 'M', '12961680@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('683', 'dbbf6681', 'M', 'dbbf6681@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('684', '26597682', 'M', '26597682@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('685', '706b9683', 'M', '706b9683@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('686', 'eec77684', 'M', 'eec77684@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('687', '49179685', 'M', '49179685@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('688', '3a0e4686', 'M', '3a0e4686@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('689', '49e21687', 'M', '49e21687@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('690', 'd115b688', 'M', 'd115b688@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('691', '97301689', 'M', '97301689@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('692', '887b0690', 'M', '887b0690@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('693', '547c9691', 'M', '547c9691@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('694', 'a7d41692', 'M', 'a7d41692@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('695', '4f3a9693', 'M', '4f3a9693@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('696', '72c0a694', 'M', '72c0a694@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('697', '3daa4695', 'M', '3daa4695@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('698', '0cf01696', 'M', '0cf01696@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('699', 'ad1d7697', 'M', 'ad1d7697@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('700', '50625698', 'M', '50625698@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('701', 'b5e32699', 'M', 'b5e32699@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('702', 'c43d7700', 'M', 'c43d7700@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('703', '5474b701', 'M', '5474b701@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('704', '51972702', 'M', '51972702@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('705', 'ca241703', 'M', 'ca241703@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('706', 'b38d8704', 'M', 'b38d8704@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('707', 'a76cd705', 'M', 'a76cd705@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('708', '90081706', 'M', '90081706@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('709', '6bec6707', 'M', '6bec6707@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('710', '9b9c5708', 'M', '9b9c5708@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('711', '16f23709', 'M', '16f23709@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('712', '67656710', 'M', '67656710@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('713', '7ed90711', 'M', '7ed90711@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('714', '95892712', 'M', '95892712@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('715', '975b2713', 'M', '975b2713@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('716', '584e5714', 'M', '584e5714@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('717', '9ff4b715', 'M', '9ff4b715@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('718', 'b65e1716', 'M', 'b65e1716@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('719', 'b9ac6717', 'M', 'b9ac6717@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('720', 'f38c8718', 'M', 'f38c8718@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('721', 'c7b1f719', 'M', 'c7b1f719@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('722', '5b784720', 'M', '5b784720@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('723', '83147721', 'M', '83147721@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('724', '4e62e722', 'M', '4e62e722@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('725', '37fa4723', 'M', '37fa4723@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('726', '8f1d7724', 'M', '8f1d7724@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('727', '8992d725', 'M', '8992d725@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('728', '43ea2726', 'M', '43ea2726@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('729', 'b25fc727', 'M', 'b25fc727@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('730', '8f009728', 'M', '8f009728@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('731', '25540729', 'M', '25540729@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('732', '6490d730', 'M', '6490d730@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('733', '55cc5731', 'M', '55cc5731@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('734', '33370732', 'M', '33370732@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('735', 'cd0b8733', 'M', 'cd0b8733@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('736', '64a57734', 'M', '64a57734@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('737', '8e117735', 'M', '8e117735@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('738', '9f9ef736', 'M', '9f9ef736@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('739', 'cbff7737', 'M', 'cbff7737@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('740', '39a49738', 'M', '39a49738@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('741', 'c8012739', 'M', 'c8012739@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('742', '00c82740', 'M', '00c82740@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('743', '1bee5741', 'M', '1bee5741@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('744', '062da742', 'M', '062da742@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('745', '42d95743', 'M', '42d95743@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('746', 'e3aa7744', 'M', 'e3aa7744@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('747', '8d1be745', 'M', '8d1be745@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('748', '4e96e746', 'M', '4e96e746@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('749', 'ec164747', 'M', 'ec164747@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('750', '35c0e748', 'M', '35c0e748@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('751', 'c166b749', 'M', 'c166b749@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('752', 'c43a7750', 'M', 'c43a7750@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('753', '972c0751', 'M', '972c0751@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('754', '669ad752', 'M', '669ad752@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('755', 'b2d00753', 'M', 'b2d00753@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('756', 'd354d754', 'M', 'd354d754@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('757', 'c2119755', 'M', 'c2119755@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('758', 'ed004756', 'M', 'ed004756@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('759', '95a0b757', 'M', '95a0b757@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('760', '973b5758', 'M', '973b5758@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('761', '644d3759', 'M', '644d3759@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('762', '083d1760', 'M', '083d1760@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('763', '723d3761', 'M', '723d3761@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('764', 'd1277762', 'M', 'd1277762@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('765', '613fa763', 'M', '613fa763@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('766', '12e02764', 'M', '12e02764@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('767', '57a35765', 'M', '57a35765@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('768', 'f828a766', 'M', 'f828a766@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('769', 'eae1a767', 'M', 'eae1a767@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('770', '25fa3768', 'M', '25fa3768@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('771', '73a0c769', 'M', '73a0c769@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('772', 'b779d770', 'M', 'b779d770@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('773', 'a2620771', 'M', 'a2620771@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('774', 'a8666772', 'M', 'a8666772@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('775', 'dbe7d773', 'M', 'dbe7d773@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('776', '0463b774', 'M', '0463b774@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('777', 'bffa2775', 'M', 'bffa2775@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('778', '43d62776', 'M', '43d62776@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('779', '1bc43777', 'M', '1bc43777@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('780', '7db9e778', 'M', '7db9e778@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('781', 'a63d0779', 'M', 'a63d0779@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('782', 'c54f0780', 'M', 'c54f0780@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('783', '97409781', 'M', '97409781@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('784', '0ee77782', 'M', '0ee77782@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('785', '28baa783', 'M', '28baa783@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('786', 'e1d2d784', 'M', 'e1d2d784@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('787', '82de4785', 'M', '82de4785@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('788', '850ca786', 'M', '850ca786@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('789', 'fa993787', 'M', 'fa993787@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('790', 'f8d50788', 'M', 'f8d50788@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('791', 'fb319789', 'M', 'fb319789@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('792', 'ef3e4790', 'M', 'ef3e4790@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('793', '119ca791', 'M', '119ca791@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('794', '5998f792', 'M', '5998f792@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('795', '3c7e6793', 'M', '3c7e6793@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('796', 'cd532794', 'M', 'cd532794@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('797', '1d89d795', 'M', '1d89d795@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('798', 'bbe48796', 'M', 'bbe48796@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('799', 'ab434797', 'M', 'ab434797@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('800', 'd78a4798', 'M', 'd78a4798@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('801', '465de799', 'M', '465de799@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('802', '9de23800', 'M', '9de23800@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('803', '2d41d801', 'M', '2d41d801@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('804', 'a4d83802', 'M', 'a4d83802@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('805', '0c4b0803', 'M', '0c4b0803@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('806', '4b43b804', 'M', '4b43b804@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('807', '7730b805', 'M', '7730b805@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('808', '005e8806', 'M', '005e8806@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('809', '21630807', 'M', '21630807@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('810', 'f03c4808', 'M', 'f03c4808@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('811', '4112b809', 'M', '4112b809@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('812', 'f30d6810', 'M', 'f30d6810@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('813', 'd1d38811', 'M', 'd1d38811@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('814', 'd16c5812', 'M', 'd16c5812@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('815', 'd0a1e813', 'M', 'd0a1e813@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('816', 'b8628814', 'M', 'b8628814@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('817', '0079e815', 'M', '0079e815@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('818', 'c8004816', 'M', 'c8004816@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('819', '0270b817', 'M', '0270b817@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('820', '425bd818', 'M', '425bd818@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('821', 'a7ae2819', 'M', 'a7ae2819@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('822', '023ab820', 'M', '023ab820@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('823', '90d74821', 'M', '90d74821@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('824', 'f90aa822', 'M', 'f90aa822@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('825', '53e00823', 'M', '53e00823@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('826', 'dd361824', 'M', 'dd361824@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('827', '72b8b825', 'M', '72b8b825@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('828', 'e077a826', 'M', 'e077a826@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('829', '5dd32827', 'M', '5dd32827@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('830', '5208e828', 'M', '5208e828@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('831', '01b32829', 'M', '01b32829@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('832', 'c3830830', 'M', 'c3830830@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('833', '9bd06831', 'M', '9bd06831@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('834', 'cda04832', 'M', 'cda04832@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('835', 'e8927833', 'M', 'e8927833@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('836', '90cbb834', 'M', '90cbb834@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('837', '34e07835', 'M', '34e07835@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('838', '39ce7836', 'M', '39ce7836@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('839', '66113837', 'M', '66113837@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('840', 'bff99838', 'M', 'bff99838@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('841', '050fc839', 'M', '050fc839@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('842', '6c255840', 'M', '6c255840@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('843', 'c1d2c841', 'M', 'c1d2c841@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('844', '1a531842', 'M', '1a531842@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('845', '13519843', 'M', '13519843@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('846', 'd4dc7844', 'M', 'd4dc7844@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('847', '6cda6845', 'M', '6cda6845@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('848', '1c889846', 'M', '1c889846@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('849', '72874847', 'M', '72874847@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('850', 'e69ae848', 'M', 'e69ae848@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('851', '7d3b3849', 'M', '7d3b3849@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('852', '69a52850', 'M', '69a52850@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('853', 'daa9c851', 'M', 'daa9c851@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('854', 'b8fea852', 'M', 'b8fea852@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('855', '07d7f853', 'M', '07d7f853@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('856', '8a1e5854', 'M', '8a1e5854@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('857', '6c694855', 'M', '6c694855@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('858', '3f36d856', 'M', '3f36d856@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('859', 'cec78857', 'M', 'cec78857@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('860', '900c0858', 'M', '900c0858@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('861', '4e0ce859', 'M', '4e0ce859@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('862', 'cc4e9860', 'M', 'cc4e9860@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('863', '19134861', 'M', '19134861@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('864', 'fb3d4862', 'M', 'fb3d4862@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('865', 'fe973863', 'M', 'fe973863@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('866', '6a581864', 'M', '6a581864@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('867', '5cde7865', 'M', '5cde7865@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('868', 'b777e866', 'M', 'b777e866@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('869', 'f6dfa867', 'M', 'f6dfa867@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('870', '76e42868', 'M', '76e42868@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('871', '2b137869', 'M', '2b137869@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('872', '74cdb870', 'M', '74cdb870@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('873', '89ca1871', 'M', '89ca1871@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('874', 'd3986872', 'M', 'd3986872@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('875', '53cb8873', 'M', '53cb8873@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('876', 'bc551874', 'M', 'bc551874@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('877', 'e0781875', 'M', 'e0781875@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('878', '30140876', 'M', '30140876@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('879', '4807a877', 'M', '4807a877@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('880', '46a64878', 'M', '46a64878@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('881', 'e4ef2879', 'M', 'e4ef2879@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('882', '0f414880', 'M', '0f414880@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('883', '28dc0881', 'M', '28dc0881@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('884', '52934882', 'M', '52934882@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('885', '68550883', 'M', '68550883@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('886', 'd8a6a884', 'M', 'd8a6a884@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('887', '7ab80885', 'M', '7ab80885@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('888', '6ed0f886', 'M', '6ed0f886@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('889', 'd5cf9887', 'M', 'd5cf9887@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('890', '50581888', 'M', '50581888@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('891', '38bd9889', 'M', '38bd9889@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('892', '326b2890', 'M', '326b2890@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('893', '6a0c0891', 'M', '6a0c0891@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('894', 'c479d892', 'M', 'c479d892@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('895', 'd2419893', 'M', 'd2419893@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('896', 'ad660894', 'M', 'ad660894@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('897', '01b99895', 'M', '01b99895@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('898', '72275896', 'M', '72275896@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('899', '10a12897', 'M', '10a12897@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('900', 'ec75b898', 'M', 'ec75b898@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('901', '77f25899', 'M', '77f25899@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('902', 'dfca3900', 'M', 'dfca3900@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('903', '07632901', 'M', '07632901@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('904', '44838902', 'M', '44838902@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('905', '533df903', 'M', '533df903@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('906', 'cfe13904', 'M', 'cfe13904@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('907', '7ea19905', 'M', '7ea19905@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('908', '15e8c906', 'M', '15e8c906@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('909', '198c7907', 'M', '198c7907@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('910', '7ede2908', 'M', '7ede2908@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('911', '549db909', 'M', '549db909@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('912', 'b88d3910', 'M', 'b88d3910@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('913', '3819e911', 'M', '3819e911@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('914', 'c250e912', 'M', 'c250e912@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('915', '5692d913', 'M', '5692d913@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('916', '36cb2914', 'M', '36cb2914@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('917', 'ea1e9915', 'M', 'ea1e9915@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('918', 'e5cf7916', 'M', 'e5cf7916@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('919', '9985c917', 'M', '9985c917@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('920', '01f17918', 'M', '01f17918@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('921', '6e0bc919', 'M', '6e0bc919@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('922', '6e3d5920', 'M', '6e3d5920@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('923', '1d349921', 'M', '1d349921@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('924', 'c06b8922', 'M', 'c06b8922@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('925', '68708923', 'M', '68708923@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('926', 'b40ab924', 'M', 'b40ab924@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('927', '26422925', 'M', '26422925@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('928', '2347b926', 'M', '2347b926@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('929', '09a6e927', 'M', '09a6e927@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('930', '7b547928', 'M', '7b547928@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('931', 'a03c4929', 'M', 'a03c4929@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('932', 'd4db9930', 'M', 'd4db9930@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('933', '6842a931', 'M', '6842a931@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('934', 'f0ebb932', 'M', 'f0ebb932@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('935', '382a8933', 'M', '382a8933@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('936', 'b5975934', 'M', 'b5975934@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('937', 'e699b935', 'M', 'e699b935@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('938', '9e7a3936', 'M', '9e7a3936@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('939', 'c0792937', 'M', 'c0792937@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('940', '91432938', 'M', '91432938@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('941', 'ad438939', 'M', 'ad438939@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('942', 'e8f95940', 'M', 'e8f95940@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('943', '69db8941', 'M', '69db8941@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('944', '7ce16942', 'M', '7ce16942@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('945', '4bbcc943', 'M', '4bbcc943@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('946', '2b788944', 'M', '2b788944@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('947', '9cf48945', 'M', '9cf48945@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('948', 'a7bd6946', 'M', 'a7bd6946@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('949', '6e600947', 'M', '6e600947@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('950', '98a2e948', 'M', '98a2e948@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('951', '9619c949', 'M', '9619c949@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('952', 'd96a2950', 'M', 'd96a2950@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('953', '0b239951', 'M', '0b239951@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('954', 'b344a952', 'M', 'b344a952@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('955', '51492953', 'M', '51492953@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('956', 'f5992954', 'M', 'f5992954@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('957', '1279e955', 'M', '1279e955@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('958', 'b87b6956', 'M', 'b87b6956@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('959', '4f917957', 'M', '4f917957@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('960', '7f3b4958', 'M', '7f3b4958@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('961', '68766959', 'M', '68766959@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('962', 'c4809960', 'M', 'c4809960@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('963', '6b5e0961', 'M', '6b5e0961@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('964', '24162962', 'M', '24162962@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('965', 'd97e7963', 'M', 'd97e7963@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('966', 'c9089964', 'M', 'c9089964@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('967', '10e3c965', 'M', '10e3c965@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('968', 'bd1ff966', 'M', 'bd1ff966@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('969', 'a095f967', 'M', 'a095f967@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('970', 'f70f1968', 'M', 'f70f1968@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('971', '0a5c8969', 'M', '0a5c8969@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('972', 'e4a35970', 'M', 'e4a35970@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('973', 'ba906971', 'M', 'ba906971@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('974', 'b91cd972', 'M', 'b91cd972@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('975', '96705973', 'M', '96705973@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('976', '6ad5b974', 'M', '6ad5b974@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('977', '1328b975', 'M', '1328b975@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('978', 'c9f93976', 'M', 'c9f93976@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('979', 'd8d9b977', 'M', 'd8d9b977@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('980', '4d656978', 'M', '4d656978@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('981', 'd36a0979', 'M', 'd36a0979@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('982', '2e45a980', 'M', '2e45a980@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('983', 'ffed7981', 'M', 'ffed7981@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('984', '5e68f982', 'M', '5e68f982@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('985', 'def0b983', 'M', 'def0b983@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('986', '37966984', 'M', '37966984@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('987', 'a1d73985', 'M', 'a1d73985@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('988', 'cf068986', 'M', 'cf068986@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('989', '1d736987', 'M', '1d736987@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('990', 'd7775988', 'M', 'd7775988@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('991', '91469989', 'M', '91469989@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('992', '961fe990', 'M', '961fe990@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('993', 'ece4e991', 'M', 'ece4e991@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('994', 'bd29b992', 'M', 'bd29b992@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('995', 'ac4d8993', 'M', 'ac4d8993@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('996', '88d06994', 'M', '88d06994@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('997', '90e93995', 'M', '90e93995@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('998', 'df266996', 'M', 'df266996@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('999', '20ddb997', 'M', '20ddb997@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('1000', '51c17998', 'M', '51c17998@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('1001', '885a8999', 'M', '885a8999@cgd.com', '1');
INSERT INTO `tbl_emp` VALUES ('1002', 'dark_cgd123', 'M', 'cgd@qq.com', '2');
INSERT INTO `tbl_emp` VALUES ('1003', '123cgd', 'F', 'cgd@qq.com', '2');

-- ----------------------------
-- Table structure for `tbl_order`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(60) DEFAULT NULL COMMENT '订单号',
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '下单时间',
  `order_status` int(2) DEFAULT NULL COMMENT '1待付款2待发货3发货中4待评价5已完成6已取消7已删除',
  `user_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `product_count` int(11) DEFAULT NULL COMMENT '下单的数量',
  `product_price` decimal(10,2) DEFAULT NULL COMMENT '商品的单价',
  `pay_method` int(1) DEFAULT NULL COMMENT '1微信支付 2支付宝 3银联支付 4其他平台支付',
  `pay_sn` varchar(255) DEFAULT NULL COMMENT '支付平台对接的交易号',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `confirm_time` datetime DEFAULT NULL COMMENT '确认收货时间',
  `cancel_time` datetime DEFAULT NULL COMMENT '取消订单时间',
  `is_return` int(1) DEFAULT NULL COMMENT '1退款0不退款（默认）',
  `pay_money` decimal(10,2) DEFAULT NULL COMMENT '实际支付费用',
  `logistics_price` decimal(10,2) DEFAULT NULL COMMENT '物流价格',
  `discount_price` decimal(10,2) DEFAULT NULL COMMENT '优惠的费用',
  `reciver_name` varchar(255) DEFAULT NULL COMMENT '收货人姓名',
  `reciver_phone` varchar(255) DEFAULT NULL COMMENT '收货人电话',
  `reciver_addr` varchar(255) DEFAULT NULL COMMENT '收货人地址',
  `send_time` datetime DEFAULT NULL COMMENT '配送时间',
  `sender_id` int(11) DEFAULT NULL COMMENT '配送员',
  `logistics_sn` varchar(255) DEFAULT NULL COMMENT '物流单号(第三方)',
  `remark` varchar(255) DEFAULT NULL COMMENT '订单的备注(留言)',
  `update_time` datetime DEFAULT NULL COMMENT '订单的更新时间',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_order
-- ----------------------------
INSERT INTO `tbl_order` VALUES ('1', '20170815225117458001', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-15 22:51:17', '1', '43', '1', '1', '100.02', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-15 22:51:17');
INSERT INTO `tbl_order` VALUES ('2', '20170815225120018002', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-15 22:51:20', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-15 22:51:20');
INSERT INTO `tbl_order` VALUES ('3', '20170815225122810003', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-15 22:51:22', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-15 22:51:22');
INSERT INTO `tbl_order` VALUES ('4', '20170816203129517000', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:31:29', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:31:29');
INSERT INTO `tbl_order` VALUES ('5', '20170816205118262000', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:18', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:18');
INSERT INTO `tbl_order` VALUES ('6', '20170816205122596001', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:22', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:22');
INSERT INTO `tbl_order` VALUES ('7', '20170816205126097002', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:26', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:26');
INSERT INTO `tbl_order` VALUES ('8', '20170816205126375003', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:26', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:26');
INSERT INTO `tbl_order` VALUES ('9', '20170816205126592004', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:26', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:26');
INSERT INTO `tbl_order` VALUES ('10', '20170816205126758005', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:26', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:26');
INSERT INTO `tbl_order` VALUES ('11', '20170816205126921006', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:26', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:26');
INSERT INTO `tbl_order` VALUES ('12', '20170816205127085007', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:27', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:27');
INSERT INTO `tbl_order` VALUES ('13', '20170816205127231008', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:27', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:27');
INSERT INTO `tbl_order` VALUES ('14', '20170816205127409009', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:27', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:27');
INSERT INTO `tbl_order` VALUES ('15', '20170816205127775010', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:27', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:27');
INSERT INTO `tbl_order` VALUES ('16', '20170816205129056011', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:29', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:29');
INSERT INTO `tbl_order` VALUES ('17', '20170816205129249012', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:29', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:29');
INSERT INTO `tbl_order` VALUES ('18', '20170816205129410013', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:29', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:29');
INSERT INTO `tbl_order` VALUES ('19', '20170816205129546014', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:29', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:29');
INSERT INTO `tbl_order` VALUES ('20', '20170816205129673015', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:29', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:29');
INSERT INTO `tbl_order` VALUES ('21', '20170816205129801016', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:29', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:29');
INSERT INTO `tbl_order` VALUES ('22', '20170816205129937017', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:29', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:29');
INSERT INTO `tbl_order` VALUES ('23', '20170816205130063018', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:30', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:30');
INSERT INTO `tbl_order` VALUES ('24', '20170816205130824019', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:30', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:30');
INSERT INTO `tbl_order` VALUES ('25', '20170816205130983020', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:30', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:30');
INSERT INTO `tbl_order` VALUES ('26', '20170816205131121021', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:31', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:31');
INSERT INTO `tbl_order` VALUES ('27', '20170816205131239022', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:31', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:31');
INSERT INTO `tbl_order` VALUES ('28', '20170816205131367023', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:31', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:31');
INSERT INTO `tbl_order` VALUES ('29', '20170816205131487024', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:31', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:31');
INSERT INTO `tbl_order` VALUES ('30', '20170816205131615025', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:31', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:31');
INSERT INTO `tbl_order` VALUES ('31', '20170816205131735026', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:31', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:31');
INSERT INTO `tbl_order` VALUES ('32', '20170816205131880027', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:31', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:31');
INSERT INTO `tbl_order` VALUES ('33', '20170816205131991028', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:31', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:31');
INSERT INTO `tbl_order` VALUES ('34', '20170816205132124029', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:32', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:32');
INSERT INTO `tbl_order` VALUES ('35', '20170816205132247030', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:32', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:32');
INSERT INTO `tbl_order` VALUES ('36', '20170816205132374031', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:32', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:32');
INSERT INTO `tbl_order` VALUES ('37', '20170816205132502032', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:32', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:32');
INSERT INTO `tbl_order` VALUES ('38', '20170816205132630033', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:32', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:32');
INSERT INTO `tbl_order` VALUES ('39', '20170816205132760034', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:32', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:32');
INSERT INTO `tbl_order` VALUES ('40', '20170816205132879035', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:32', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:32');
INSERT INTO `tbl_order` VALUES ('41', '20170816205132999036', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:32', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:32');
INSERT INTO `tbl_order` VALUES ('42', '20170816205133145037', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:33', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:33');
INSERT INTO `tbl_order` VALUES ('43', '20170816205133266038', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:33', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:33');
INSERT INTO `tbl_order` VALUES ('44', '20170816205133396039', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:33', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:33');
INSERT INTO `tbl_order` VALUES ('45', '20170816205133519040', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:33', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:33');
INSERT INTO `tbl_order` VALUES ('46', '20170816205133648041', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:33', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:33');
INSERT INTO `tbl_order` VALUES ('47', '20170816205133782042', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:33', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:33');
INSERT INTO `tbl_order` VALUES ('48', '20170816205133917043', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:33', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:33');
INSERT INTO `tbl_order` VALUES ('49', '20170816205134064044', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:34', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:34');
INSERT INTO `tbl_order` VALUES ('50', '20170816205134183045', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:34', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:34');
INSERT INTO `tbl_order` VALUES ('51', '20170816205134317046', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:34', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:34');
INSERT INTO `tbl_order` VALUES ('52', '20170816205134490047', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:34', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:34');
INSERT INTO `tbl_order` VALUES ('53', '20170816205134728048', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:51:34', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:51:34');
INSERT INTO `tbl_order` VALUES ('54', '20170816205207878049', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:07', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:07');
INSERT INTO `tbl_order` VALUES ('55', '20170816205208055050', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:08', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:08');
INSERT INTO `tbl_order` VALUES ('56', '20170816205208206051', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:08', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:08');
INSERT INTO `tbl_order` VALUES ('57', '20170816205208394052', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:08', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:08');
INSERT INTO `tbl_order` VALUES ('58', '20170816205208551053', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:08', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:08');
INSERT INTO `tbl_order` VALUES ('59', '20170816205208718054', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:08', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:08');
INSERT INTO `tbl_order` VALUES ('60', '20170816205208877055', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:08', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:08');
INSERT INTO `tbl_order` VALUES ('61', '20170816205208999056', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:08', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:08');
INSERT INTO `tbl_order` VALUES ('62', '20170816205209144057', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:09', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:09');
INSERT INTO `tbl_order` VALUES ('63', '20170816205209288058', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:09', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:09');
INSERT INTO `tbl_order` VALUES ('64', '20170816205209452059', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:09', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:09');
INSERT INTO `tbl_order` VALUES ('65', '20170816205209625060', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:09', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:09');
INSERT INTO `tbl_order` VALUES ('66', '20170816205209768061', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:09', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:09');
INSERT INTO `tbl_order` VALUES ('67', '20170816205209947062', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:09', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:09');
INSERT INTO `tbl_order` VALUES ('68', '20170816205210093063', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:10', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:10');
INSERT INTO `tbl_order` VALUES ('69', '20170816205210261064', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:10', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:10');
INSERT INTO `tbl_order` VALUES ('70', '20170816205210445065', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:10', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:10');
INSERT INTO `tbl_order` VALUES ('71', '20170816205210631066', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:10', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:10');
INSERT INTO `tbl_order` VALUES ('72', '20170816205210774067', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:10', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:10');
INSERT INTO `tbl_order` VALUES ('73', '20170816205210917068', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:10', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:10');
INSERT INTO `tbl_order` VALUES ('74', '20170816205211110069', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:11', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:11');
INSERT INTO `tbl_order` VALUES ('75', '20170816205211286070', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:11', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:11');
INSERT INTO `tbl_order` VALUES ('76', '20170816205211446071', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:11', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:11');
INSERT INTO `tbl_order` VALUES ('77', '20170816205211629072', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:11', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:11');
INSERT INTO `tbl_order` VALUES ('78', '20170816205211822073', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:11', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:11');
INSERT INTO `tbl_order` VALUES ('79', '20170816205212018074', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:12', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:12');
INSERT INTO `tbl_order` VALUES ('80', '20170816205212198075', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:12', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:12');
INSERT INTO `tbl_order` VALUES ('81', '20170816205212377076', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:12', '1', '43', '1', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:12');
INSERT INTO `tbl_order` VALUES ('82', '20170816205222941077', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:22', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:22');
INSERT INTO `tbl_order` VALUES ('83', '20170816205225649078', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:25', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:25');
INSERT INTO `tbl_order` VALUES ('84', '20170816205227588079', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:27', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:27');
INSERT INTO `tbl_order` VALUES ('85', '20170816205227790080', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:27', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:27');
INSERT INTO `tbl_order` VALUES ('86', '20170816205227974081', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:27', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:27');
INSERT INTO `tbl_order` VALUES ('87', '20170816205228162082', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:28', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:28');
INSERT INTO `tbl_order` VALUES ('88', '20170816205228341083', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:28', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:28');
INSERT INTO `tbl_order` VALUES ('89', '20170816205229192084', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:29', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:29');
INSERT INTO `tbl_order` VALUES ('90', '20170816205229406085', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:29', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:29');
INSERT INTO `tbl_order` VALUES ('91', '20170816205229574086', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:29', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:29');
INSERT INTO `tbl_order` VALUES ('92', '20170816205229759087', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:29', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:29');
INSERT INTO `tbl_order` VALUES ('93', '20170816205229902088', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:29', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:29');
INSERT INTO `tbl_order` VALUES ('94', '20170816205230078089', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:30', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:30');
INSERT INTO `tbl_order` VALUES ('95', '20170816205230288090', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:30', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:30');
INSERT INTO `tbl_order` VALUES ('96', '20170816205230454091', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:30', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:30');
INSERT INTO `tbl_order` VALUES ('97', '20170816205230671092', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:30', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:30');
INSERT INTO `tbl_order` VALUES ('98', '20170816205230854093', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:30', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:30');
INSERT INTO `tbl_order` VALUES ('99', '20170816205230991094', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:30', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:30');
INSERT INTO `tbl_order` VALUES ('100', '20170816205231166095', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:31', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:31');
INSERT INTO `tbl_order` VALUES ('101', '20170816205231335096', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:31', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:31');
INSERT INTO `tbl_order` VALUES ('102', '20170816205231504097', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:31', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:31');
INSERT INTO `tbl_order` VALUES ('103', '20170816205231734098', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:31', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:31');
INSERT INTO `tbl_order` VALUES ('104', '20170816205231930099', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:31', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:31');
INSERT INTO `tbl_order` VALUES ('105', '20170816205232102100', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:32', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:32');
INSERT INTO `tbl_order` VALUES ('106', '20170816205232278101', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:32', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:32');
INSERT INTO `tbl_order` VALUES ('107', '20170816205232439102', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:32', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:32');
INSERT INTO `tbl_order` VALUES ('108', '20170816205232616103', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:32', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:32');
INSERT INTO `tbl_order` VALUES ('109', '20170816205232766104', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:32', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:32');
INSERT INTO `tbl_order` VALUES ('110', '20170816205232933105', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:32', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:32');
INSERT INTO `tbl_order` VALUES ('111', '20170816205233086106', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:33', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:33');
INSERT INTO `tbl_order` VALUES ('112', '20170816205233247107', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 20:52:33', '1', '43', '2', '1', '100.00', null, null, null, null, null, null, null, '10.00', '20.00', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 20:52:33');
INSERT INTO `tbl_order` VALUES ('113', '20170816214349367000', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 21:43:49', '1', '43', '2', '1', '100.38', null, null, null, null, null, null, null, '4.68', '20.12', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 21:43:49');
INSERT INTO `tbl_order` VALUES ('114', '20170816214426228001', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2017-08-16 21:44:26', '1', '43', '2', '1', '100.38', null, null, null, null, null, null, null, '4.68', '20.12', '陈生', '13600055457', '广东省深圳市龙岗区坂田街道和磡村二区', null, null, null, null, '2017-08-16 21:44:26');

-- ----------------------------
-- Table structure for `tbl_praise`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_praise`;
CREATE TABLE `tbl_praise` (
  `praise_id` int(11) NOT NULL AUTO_INCREMENT,
  `target_id` int(11) DEFAULT NULL,
  `target_type` int(11) DEFAULT NULL COMMENT '1代表点赞商品,2代表点赞商家',
  `user_id` int(11) DEFAULT NULL,
  `is_praise` int(1) DEFAULT NULL COMMENT '1代表收藏 0代表未收藏(取消收藏)',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`praise_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_praise
-- ----------------------------
INSERT INTO `tbl_praise` VALUES ('5', '1', '2', '43', '0', '2017-08-13 20:15:26', '2017-08-13 20:15:38', null);
INSERT INTO `tbl_praise` VALUES ('6', '2', '2', '45', '1', '2017-08-13 21:25:12', '2017-08-13 21:25:12', null);
INSERT INTO `tbl_praise` VALUES ('7', '1', '2', '45', '1', '2017-08-13 21:25:15', '2017-08-13 21:25:15', null);
INSERT INTO `tbl_praise` VALUES ('8', '2', '1', '43', '1', '2017-08-13 21:25:23', '2017-08-13 21:25:23', null);
INSERT INTO `tbl_praise` VALUES ('10', '1', '1', '47', '1', '2017-08-13 21:25:45', '2017-08-13 21:25:45', null);
INSERT INTO `tbl_praise` VALUES ('11', '1', '1', '43', '1', '2017-08-13 21:25:48', '2017-08-13 21:25:48', null);
INSERT INTO `tbl_praise` VALUES ('12', '1', '2', '47', '1', '2017-08-13 21:25:54', '2017-08-13 21:25:54', null);
INSERT INTO `tbl_praise` VALUES ('13', '2', '2', '47', '1', '2017-08-13 21:25:57', '2017-08-13 21:25:57', null);

-- ----------------------------
-- Table structure for `tbl_product`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) DEFAULT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL COMMENT '商品的图标',
  `image1` varchar(255) DEFAULT NULL COMMENT '商品的展示图,下同',
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  `image5` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `buy_price` decimal(10,2) DEFAULT NULL COMMENT '成本价',
  `original_price` decimal(10,2) DEFAULT NULL COMMENT '原价',
  `now_price` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `discount` int(11) DEFAULT NULL COMMENT '折扣',
  `product_tag_id` int(11) DEFAULT NULL COMMENT '标签（0无默认，1新品2热卖3推荐4特价)',
  `category_id` int(11) DEFAULT NULL COMMENT '商品分类id',
  `graphic_detail` text,
  `is_sale` int(1) DEFAULT NULL COMMENT '1上架0下架',
  `shop_id` int(11) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `read_count` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_product
-- ----------------------------
INSERT INTO `tbl_product` VALUES ('18', '珂莱蒂尔正品新款秋冬印花休闲显瘦无袖高腰打底连衣裙', '2003', 'upload/2017/09/20/20170920023810040555c12.jpg', 'upload/2017/09/20/201709200238100406e9c6e.png', 'upload/2017/09/20/20170920023810040784533.png', 'upload/2017/09/20/20170920023810040778dc8.png', 'upload/2017/09/20/20170920023810040703513.png', 'upload/2017/09/20/2017092002381004082a499.png', '珂莱蒂尔正品新款秋冬印花休闲显瘦无袖高腰打底连衣裙', '36.00', '200.00', '100.00', '65', '4', '2', '珂莱蒂尔正品新款秋冬印花休闲显瘦无袖高腰打底连衣裙', '1', '1', '珂莱蒂尔正品新款秋冬印花休闲显瘦无袖高腰打底连衣裙', null, '1', null, null);
INSERT INTO `tbl_product` VALUES ('19', '珂莱蒂尔正品新款秋冬印花休闲显瘦无袖高腰打底连衣裙', '2003', 'upload/2017/09/19/201709190627510720f2aae.png', 'upload/2017/09/19/20170919062751076136db6.png', 'upload/2017/09/19/20170919062751076292b84.png', 'upload/2017/09/19/20170919062751076260aef.png', 'upload/2017/09/19/2017091906275107620009e.png', 'upload/2017/09/19/20170919062751076331b3b.jpg', '珂莱蒂尔正品新款秋冬印花休闲显瘦无袖高腰打底连衣裙', '30.00', '2000.00', '577.00', '20', '2', '1', '珂莱蒂尔正品新款秋冬印花休闲显瘦无袖高腰打底连衣裙', '1', '1', '珂莱蒂尔正品新款秋冬印花休闲显瘦无袖高腰打底连衣裙', null, '7', '2017-09-19 18:27:52', '2017-09-19 18:27:52');
INSERT INTO `tbl_product` VALUES ('21', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '10', 'https://img.alicdn.com/imgextra/i1/50675334/TB2qBwtuctnpuFjSZFKXXalFFXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', null, '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '90.02', '150.32', '252.67', '65', '1', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '2017-09-20 15:07:13', '2017-09-20 15:07:13');
INSERT INTO `tbl_product` VALUES ('14', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', null, 'upload/2017/09/19/2017091906113303646695b.png', 'upload/2017/09/19/201709190611330393f922d.png', 'upload/2017/09/19/2017091906113607947c0b8.png', 'upload/2017/09/19/20170919061136079400a26.png', 'upload/2017/09/19/2017091906113607950e50e.png', 'upload/2017/09/19/20170919061136079599c6b.png', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '50.00', '300.00', '100.00', '56', '1', '1', null, null, null, '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', null, '2', '2017-09-19 18:11:37', '2017-09-19 18:11:37');
INSERT INTO `tbl_product` VALUES ('8', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2003', 'upload/2017/09/19/2017091906000704276a5a3.png', 'upload/2017/09/19/201709190600090555c2909.png', null, null, null, null, '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '36.00', '115.00', '69.00', '8', '3', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '1', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', null, '7', '2017-09-19 18:00:10', '2017-09-19 18:00:10');
INSERT INTO `tbl_product` VALUES ('9', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', null, 'upload/2017/09/19/20170919060051038536b4f.png', 'upload/2017/09/19/201709190601340111e81a5.png', null, null, null, null, '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '36.00', '115.00', '69.00', '8', '3', '2', null, null, null, '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', null, '1', '2017-09-19 18:01:34', '2017-09-19 18:01:34');
INSERT INTO `tbl_product` VALUES ('10', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', null, 'upload/2017/09/19/2017091906021100223d12d.png', 'upload/2017/09/19/20170919060221019737c80.png', null, null, null, null, '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '36.00', '115.00', '69.00', '8', '3', '2', null, null, null, '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', null, '8', '2017-09-19 18:02:22', '2017-09-19 18:02:22');
INSERT INTO `tbl_product` VALUES ('11', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', null, 'upload/2017/09/19/2017091906023808099ec2d.png', 'upload/2017/09/19/201709190602430564d79cb.png', null, null, null, null, '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '36.00', '115.00', '69.00', '8', '3', '2', null, null, null, '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', null, '2', '2017-09-19 18:02:46', '2017-09-19 18:02:46');
INSERT INTO `tbl_product` VALUES ('12', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2003', 'upload/2017/09/19/201709190602520512dd4bf.png', 'upload/2017/09/19/201709190605030262d4051.png', null, null, null, null, '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '36.00', '115.00', '69.00', '8', '3', '2', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '1', '1', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', null, '4', '2017-09-19 18:05:04', '2017-09-19 18:05:04');
INSERT INTO `tbl_product` VALUES ('13', '珂莱蒂尔正品新款秋冬印花休闲显瘦无袖高腰打底连衣裙', '2003', 'upload/2017/09/19/2017091906062902050ab34.png', 'upload/2017/09/19/2017091906062902050ab34.png', 'upload/2017/09/19/201709190606420849e530f.png', 'upload/2017/09/19/2017091906064503106ffba.png', 'upload/2017/09/19/201709190606450761b8453.png', null, '珂莱蒂尔正品新款秋冬印花休闲显瘦无袖高腰打底连衣裙', '500.00', '3287.00', '1972.00', '90', '3', '2', '珂莱蒂尔正品新款秋冬印花休闲显瘦无袖高腰打底连衣裙', '1', '1', '珂莱蒂尔正品新款秋冬印花休闲显瘦无袖高腰打底连衣裙', null, '13', '2017-09-19 18:06:46', '2017-09-19 18:06:46');
INSERT INTO `tbl_product` VALUES ('22', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '11', 'https://img.alicdn.com/imgextra/i1/50675334/TB2qBwtuctnpuFjSZFKXXalFFXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', null, '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '90.02', '150.32', '252.67', '65', '1', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '2017-09-20 15:07:14', '2017-09-20 15:07:14');
INSERT INTO `tbl_product` VALUES ('33', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '22', 'https://img.alicdn.com/imgextra/i1/50675334/TB2qBwtuctnpuFjSZFKXXalFFXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', null, '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '90.02', '150.32', '252.67', '65', '1', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '2017-09-20 15:07:14', '2017-09-20 15:07:14');
INSERT INTO `tbl_product` VALUES ('34', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '23', 'https://img.alicdn.com/imgextra/i1/50675334/TB2qBwtuctnpuFjSZFKXXalFFXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', null, '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '90.02', '150.32', '252.67', '65', '1', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '2017-09-20 15:07:14', '2017-09-20 15:07:14');
INSERT INTO `tbl_product` VALUES ('35', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '24', 'https://img.alicdn.com/imgextra/i1/50675334/TB2qBwtuctnpuFjSZFKXXalFFXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', null, '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '90.02', '150.32', '252.67', '65', '1', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '2017-09-20 15:07:14', '2017-09-20 15:07:14');
INSERT INTO `tbl_product` VALUES ('36', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '25', 'https://img.alicdn.com/imgextra/i1/50675334/TB2qBwtuctnpuFjSZFKXXalFFXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', null, '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '90.02', '150.32', '252.67', '65', '1', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '2017-09-20 15:07:14', '2017-09-20 15:07:14');
INSERT INTO `tbl_product` VALUES ('37', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '26', 'https://img.alicdn.com/imgextra/i1/50675334/TB2qBwtuctnpuFjSZFKXXalFFXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', null, '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '90.02', '150.32', '252.67', '65', '1', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '2017-09-20 15:07:14', '2017-09-20 15:07:14');
INSERT INTO `tbl_product` VALUES ('38', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '27', 'https://img.alicdn.com/imgextra/i1/50675334/TB2qBwtuctnpuFjSZFKXXalFFXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', null, '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '90.02', '150.32', '252.67', '65', '1', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '2017-09-20 15:07:14', '2017-09-20 15:07:14');
INSERT INTO `tbl_product` VALUES ('39', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '28', 'https://img.alicdn.com/imgextra/i1/50675334/TB2qBwtuctnpuFjSZFKXXalFFXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', null, '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '90.02', '150.32', '252.67', '65', '1', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '2017-09-20 15:07:14', '2017-09-20 15:07:14');
INSERT INTO `tbl_product` VALUES ('40', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '29', 'https://img.alicdn.com/imgextra/i1/50675334/TB2qBwtuctnpuFjSZFKXXalFFXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', null, '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '90.02', '150.32', '252.67', '65', '1', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '2017-09-20 15:07:14', '2017-09-20 15:07:14');
INSERT INTO `tbl_product` VALUES ('41', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '30', 'https://img.alicdn.com/imgextra/i1/50675334/TB2qBwtuctnpuFjSZFKXXalFFXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', null, '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '90.02', '150.32', '252.67', '65', '1', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '2017-09-20 15:07:14', '2017-09-20 15:07:14');
INSERT INTO `tbl_product` VALUES ('42', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '31', 'https://img.alicdn.com/imgextra/i1/50675334/TB2qBwtuctnpuFjSZFKXXalFFXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', null, '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '90.02', '150.32', '252.67', '65', '1', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '2017-09-20 15:07:14', '2017-09-20 15:07:14');
INSERT INTO `tbl_product` VALUES ('43', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '32', 'https://img.alicdn.com/imgextra/i1/50675334/TB2qBwtuctnpuFjSZFKXXalFFXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', null, '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '90.02', '150.32', '252.67', '65', '1', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '2017-09-20 15:07:14', '2017-09-20 15:07:14');
INSERT INTO `tbl_product` VALUES ('44', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '33', 'https://img.alicdn.com/imgextra/i1/50675334/TB2qBwtuctnpuFjSZFKXXalFFXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', null, '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '90.02', '150.32', '252.67', '65', '1', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '2017-09-20 15:07:14', '2017-09-20 15:07:14');
INSERT INTO `tbl_product` VALUES ('45', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '34', 'https://img.alicdn.com/imgextra/i1/50675334/TB2qBwtuctnpuFjSZFKXXalFFXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', null, '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '90.02', '150.32', '252.67', '65', '1', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '2017-09-20 15:07:14', '2017-09-20 15:07:14');
INSERT INTO `tbl_product` VALUES ('46', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '35', 'https://img.alicdn.com/imgextra/i1/50675334/TB2qBwtuctnpuFjSZFKXXalFFXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', null, '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '90.02', '150.32', '252.67', '65', '1', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '2017-09-20 15:07:14', '2017-09-20 15:07:14');
INSERT INTO `tbl_product` VALUES ('47', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '36', 'https://img.alicdn.com/imgextra/i1/50675334/TB2qBwtuctnpuFjSZFKXXalFFXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', null, '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '90.02', '150.32', '252.67', '65', '1', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '2017-09-20 15:07:14', '2017-09-20 15:07:14');
INSERT INTO `tbl_product` VALUES ('48', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '2003', 'https://img.alicdn.com/imgextra/i1/50675334/TB2qBwtuctnpuFjSZFKXXalFFXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', null, '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '90.02', '150.32', '252.67', '65', '1', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '1', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '1', '2017-09-20 15:07:14', '2017-09-20 15:07:14');
INSERT INTO `tbl_product` VALUES ('122', 'iphone X123', '2003', 'upload/2017/09/21/201709210509160554cbf53.png', 'upload/2017/09/21/2017092105091605771d1d8.jpg', 'upload/2017/09/21/20170921050916057831348.png', 'upload/2017/09/21/2017092105091605786c859.png', 'upload/2017/09/21/20170921050916057822f64.png', 'upload/2017/09/21/20170921050916057971af7.png', 'iphone X123', '123.00', '456.00', '789.00', '56', '3', '2', 'iphone X123', '1', '47', 'iphone X123', null, null, '2017-09-21 17:09:17', '2017-09-21 17:09:17');
INSERT INTO `tbl_product` VALUES ('50', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '39', 'https://img.alicdn.com/imgextra/i1/50675334/TB2qBwtuctnpuFjSZFKXXalFFXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', null, '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '90.02', '150.32', '252.67', '65', '1', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '2017-09-20 15:07:14', '2017-09-20 15:07:14');
INSERT INTO `tbl_product` VALUES ('51', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '40', 'https://img.alicdn.com/imgextra/i1/50675334/TB2qBwtuctnpuFjSZFKXXalFFXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', null, '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '90.02', '150.32', '252.67', '65', '1', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '2017-09-20 15:07:14', '2017-09-20 15:07:14');
INSERT INTO `tbl_product` VALUES ('52', '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '41', 'https://img.alicdn.com/imgextra/i1/50675334/TB2qBwtuctnpuFjSZFKXXalFFXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', 'https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg', null, '夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦', '90.02', '150.32', '252.67', '65', '1', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '1', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！', '0', '2017-09-20 15:07:14', '2017-09-20 15:07:14');

-- ----------------------------
-- Table structure for `tbl_product_category`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product_category`;
CREATE TABLE `tbl_product_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_product_category
-- ----------------------------
INSERT INTO `tbl_product_category` VALUES ('1', '上装', null, '2017-08-13 18:54:25', '43', null, null);
INSERT INTO `tbl_product_category` VALUES ('2', '下装', null, '2017-08-13 18:54:43', '43', null, null);

-- ----------------------------
-- Table structure for `tbl_product_comment`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product_comment`;
CREATE TABLE `tbl_product_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `target_id` int(255) DEFAULT NULL,
  `target_type` int(1) DEFAULT NULL COMMENT '评论的类型,1代表商品评论,其他为2',
  `create_time` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_product_comment
-- ----------------------------
INSERT INTO `tbl_product_comment` VALUES ('1', '1', '1', '2017-08-13 21:28:42', '43', '还不错', 'https://img.alicdn.com/tfs/TB1Ya3aQVXXXXa3XVXXXXXXXXXX-360-280.jpg_180x180q90.jpg', 'https://img.alicdn.com/tps/TB11EjgLVXXXXcaXFXXXXXXXXXX-90-90.jpg_120x120.jpg', null, null);
INSERT INTO `tbl_product_comment` VALUES ('2', '1', '1', '2017-08-13 21:32:39', '46', '一直用这个,下次还来帮衬', 'https://img.alicdn.com/tfs/TB1iODTSXXXXXc2aXXXXXXXXXXX-180-400.jpg_200x200.jpg', 'https://img.alicdn.com/tfs/TB1iODTSXXXXXc2aXXXXXXXXXXX-180-400.jpg_200x200.jpg', 'https://img.alicdn.com/tfs/TB1iODTSXXXXXc2aXXXXXXXXXXX-180-400.jpg_200x200.jpg', null);
INSERT INTO `tbl_product_comment` VALUES ('3', '2', '1', '2017-08-13 21:33:24', '47', '戴着很舒服,支持支持', 'https://img.alicdn.com/tps/TB1QsYnJVXXXXbVXVXXXXXXXXXX-200-200.jpg_120x120.jpg', 'https://img.alicdn.com/tps/TB1QsYnJVXXXXbVXVXXXXXXXXXX-200-200.jpg_120x120.jpg', null, null);

-- ----------------------------
-- Table structure for `tbl_product_tag`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product_tag`;
CREATE TABLE `tbl_product_tag` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_product_tag
-- ----------------------------
INSERT INTO `tbl_product_tag` VALUES ('1', '新品', null, '2017-08-13 18:55:53', '43', null, null);
INSERT INTO `tbl_product_tag` VALUES ('2', '热卖', null, '2017-08-13 18:56:08', '43', null, null);
INSERT INTO `tbl_product_tag` VALUES ('3', '推荐', null, '2017-08-13 18:56:22', '43', null, null);
INSERT INTO `tbl_product_tag` VALUES ('4', '特价', null, '2017-08-13 18:56:37', '43', null, null);

-- ----------------------------
-- Table structure for `tbl_shop`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_shop`;
CREATE TABLE `tbl_shop` (
  `shop_id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `head_url` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fixed_telephone` varchar(255) DEFAULT NULL COMMENT '固定电话',
  `grade` int(2) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL COMMENT '国家',
  `province` varchar(255) DEFAULT NULL COMMENT '省',
  `city` varchar(255) DEFAULT NULL,
  `county` varchar(255) DEFAULT NULL COMMENT '县城',
  `town` varchar(255) DEFAULT NULL COMMENT '镇',
  `village` varchar(255) DEFAULT NULL COMMENT '村',
  `address` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_shop
-- ----------------------------
INSERT INTO `tbl_shop` VALUES ('1', '我的小城迷你店', 'bZMHZN5iofs=', 'https://img.alicdn.com/imgextra/i3/99404200/TB2976tXXgkyKJjSspiXXcwBpXa_!!99404200.jpg', 'https://img.alicdn.com/tps/TB1W_vlJFXXXXXxXXXXXXXXXXXX-150-45.png', '13600055457', '0668-7579000', '1', '中国', '广东', '深圳', '龙岗', '坂田', '和磡', '20号604', null, null, '2017-08-13 18:50:47', '2017-08-13 18:50:50', null, null, null, null);
INSERT INTO `tbl_shop` VALUES ('2', '浪漫满店', 'bZMHZN5iofs=', 'https://gdp.alicdn.com/imgextra/i1/692195348/TB2VfZaz0BopuFjSZPcXXc9EpXa_!!692195348.jpg', 'https://gdp.alicdn.com/imgextra/i1/692195348/TB2VfZaz0BopuFjSZPcXXc9EpXa_!!692195348.jpg', '13428281907', '0750-32659874', '2', '中国', '广东', '深圳', '福田', '莲花', '中和', '30号203', null, null, '2017-08-13 21:09:09', '2017-08-13 21:09:12', '品牌旗舰,正品特惠,限时特价中,让您省钱也省心', null, '2017-09-24 09:43:06', null);

-- ----------------------------
-- Table structure for `tbl_shop_grade`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_shop_grade`;
CREATE TABLE `tbl_shop_grade` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_name` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `remark` varchar(255) NOT NULL,
  PRIMARY KEY (`grade_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_shop_grade
-- ----------------------------
INSERT INTO `tbl_shop_grade` VALUES ('1', '1心等级', null, '2017-08-13 18:52:31', '43', null, '');
INSERT INTO `tbl_shop_grade` VALUES ('2', '2心等级', null, '2017-08-13 18:52:55', '43', null, '');
INSERT INTO `tbl_shop_grade` VALUES ('3', '3心等级', null, '2017-08-13 18:53:09', '43', null, '');

-- ----------------------------
-- Table structure for `tbl_status`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_status`;
CREATE TABLE `tbl_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_status
-- ----------------------------
INSERT INTO `tbl_status` VALUES ('1', '可看');
INSERT INTO `tbl_status` VALUES ('2', '不可看');
INSERT INTO `tbl_status` VALUES ('3', '已删除');

-- ----------------------------
-- Table structure for `tbl_tag`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tag`;
CREATE TABLE `tbl_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_tag
-- ----------------------------
INSERT INTO `tbl_tag` VALUES ('1', '推荐', '2017-08-09 20:44:11', '2017-08-09 20:44:14', null, '43', null);
INSERT INTO `tbl_tag` VALUES ('2', '热点', '2017-08-09 20:44:59', '2017-08-09 20:45:01', null, '43', null);
INSERT INTO `tbl_tag` VALUES ('3', '搞笑', '2017-08-09 20:45:17', '2017-08-09 20:45:19', null, '43', null);
INSERT INTO `tbl_tag` VALUES ('4', '生活', '2017-08-09 20:45:31', '2017-08-09 20:45:33', null, '43', null);
INSERT INTO `tbl_tag` VALUES ('5', '时尚', '2017-08-09 20:45:45', '2017-08-09 20:45:47', null, '43', null);
INSERT INTO `tbl_tag` VALUES ('6', '社会', '2017-08-09 20:46:03', '2017-08-09 20:46:06', null, '43', null);

-- ----------------------------
-- Table structure for `tbl_token`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_token`;
CREATE TABLE `tbl_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL COMMENT '0代表普通用户 1代表商家',
  `token` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `expire_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_token
-- ----------------------------
INSERT INTO `tbl_token` VALUES ('1', '43', '0', '8359D64698D674AE828F0A915C2F72E3', '2017-08-13 16:18:02', '2017-10-20 16:18:02');
INSERT INTO `tbl_token` VALUES ('2', '46', '0', '9926A23F82BDC7ACCD9D74125EF73A7F', '2017-08-13 16:19:14', '2017-08-20 16:19:14');
INSERT INTO `tbl_token` VALUES ('3', '45', '0', '71FE757D5F0E5361B75C1AE886C74E65', '2017-08-13 16:19:55', '2017-08-20 16:19:55');
INSERT INTO `tbl_token` VALUES ('4', '47', '0', '0007AEC91EAFF66BC80908763361136D', '2017-09-21 17:24:23', '2017-09-28 17:24:23');
INSERT INTO `tbl_token` VALUES ('5', '2', '0', 'A2ED6FED672BACB3B8CB84C980BD6C0C', '2017-09-21 20:21:22', '2017-09-28 20:21:22');
INSERT INTO `tbl_token` VALUES ('6', '1', '0', 'D580B0661275A8B7AFD70535B0792E6E', '2017-09-21 20:23:58', '2017-09-28 20:23:58');
INSERT INTO `tbl_token` VALUES ('7', '2', '1', '026A94596617441AB07B9236E82675D8', '2017-09-24 09:43:06', '2017-10-01 09:43:06');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `head_url` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` int(1) DEFAULT NULL COMMENT '0代表女,1代表男',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `user_type` int(1) DEFAULT NULL COMMENT '默认为1,代表普通用户,其他有管理员用户,超级管理员用户等',
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('43', 'dark_cgd_zyy', 'WE2pongx7V/c0y4BXnYZtA==', 'http://img.blog.csdn.net/20160127143219936', '13600055457', null, '23', '1', '2017-08-13 16:30:04', '2017-08-13 16:30:24', '2017-08-13 16:30:14', null, null);
INSERT INTO `user` VALUES ('46', '迷梦', 'bZMHZN5iofs=', null, null, null, '21', '1', '2017-08-13 16:30:06', '2017-08-13 16:30:28', '2017-08-13 16:30:16', null, null);
INSERT INTO `user` VALUES ('45', '迷梦浪子', 'WE2pongx7V/c0y4BXnYZtA==', null, null, null, null, '1', '2017-08-13 16:30:08', '2017-08-13 16:30:32', '2017-08-13 16:30:20', null, null);
INSERT INTO `user` VALUES ('47', 'cyx123', 'bZMHZN5iofs=', null, null, null, '22', '1', '2017-08-13 16:30:12', '2017-08-13 16:29:33', '2017-09-21 17:24:23', null, null);
