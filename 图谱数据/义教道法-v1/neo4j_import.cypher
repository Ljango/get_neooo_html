// =====================================================
// 义教道法课标图谱 - Neo4j导入脚本
// 生成时间: 2026-01-22T23:17:08.006773
// =====================================================

// 创建约束和索引
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Theme) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:SectionMiddle) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:ChapterMiddle) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Stage) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:SectionPrimary) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:ChapterPrimary) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Subsection) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:CoreLiteracy) REQUIRE n.identifier IS UNIQUE;

// =====================================================
// 导入实体
// =====================================================

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:01"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:01", title: "第一单元  我是小学生啦", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:02"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:02", title: "第二单元 过好校园生活", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:03"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:03", title: "第三单元 养成良好习惯", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:04"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:04", title: "第四单元 我们讲文明", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:05"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:05", title: "第一单元  我有新面貌", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:06"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:06", title: "第二单元  我们一起长大", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:07"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:07", title: "第三单元  幸福一家人", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:08"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:08", title: "第四单元  争做中国好儿童", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:09"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:09", title: "第一单元 过好节假日", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:10"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:10", title: "第二单元 我爱我们班", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:11"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:11", title: "第三单元 我的家乡美", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:12"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:12", title: "第四单元 我爱我们的祖国", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:13"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:13", title: "第一单元 让我试试看", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:14"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:14", title: "第二单元 我们好好玩", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:15"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:15", title: "第三单元 绿色小卫士", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:16"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:16", title: "第四单元 我会努力的", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:17"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:17", title: "第一单元 做学习的主人", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:18"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:18", title: "第二单元 爱科学 学科学", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:19"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:19", title: "第三单元 在集体中成长", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:20"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:20", title: "第四单元 公共生活靠大家", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:21"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:21", title: "第一单元 我和我的同伴", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:22"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:22", title: "第二单元 我在这里长大", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:23"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:23", title: "第三单元 我们的公共生活", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:24"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:24", title: "第四单元 多样的交通和通信", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:25"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:25", title: "第一单元 与班级共成长", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:26"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:26", title: "第二单元 为父母分担", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:27"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:27", title: "第三单元 信息万花筒", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:28"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:28", title: "第四单元 让生活多一些绿色", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:29"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:29", title: "第一单元 同伴与交往", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:30"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:30", title: "第二单元 做聪明的消费者", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:31"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:31", title: "第三单元 美好生活哪里来", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:32"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:32", title: "第四单元 感受家乡文化 关心家乡发展", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:33"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:33", title: "第一单元 面对成长中的新问题", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0205", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"五年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "五年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:34"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:34", title: "第二单元 我们是班级的主人", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0205", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"五年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "五年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:35"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:35", title: "第三单元 我们的国土  我们的家园", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0205", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"五年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "五年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:36"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:36", title: "第四单元 骄人祖先  灿烂文化", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0205", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"五年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "五年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:37"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:37", title: "第一单元 我们一家人", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0205", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"五年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "五年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:38"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:38", title: "第二单元 公共生活靠大家", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0205", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"五年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "五年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:39"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:39", title: "第三单元 百年追梦 复兴中华", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0205", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"五年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "五年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:40"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:40", title: "第一单元 我们的守护者", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0206", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"六年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "六年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:41"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:41", title: "第二单元 我们是公民", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0206", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"六年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "六年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:42"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:42", title: "第三单元 我们的国家机构", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0206", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"六年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "六年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:43"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:43", title: "第四单元 法律保护我们健康成长", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0206", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"六年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "六年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:44"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:44", title: "第一单元 完善自我 健康成长", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0206", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"六年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "六年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:45"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:45", title: "第二单元 爱护地球 共同责任", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0206", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"六年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "六年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:46"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:46", title: "第三单元 多样文明 多彩生活", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0206", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"六年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "六年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:ChapterPrimary {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:47"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:47", title: "第四单元 让世界更美好", description: "", subject: "SB0309", type: "ChapterPrimary", applicableLevel: "OB0206", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"六年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "小学", CJ_grade: "六年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01", title: "政治认同", description: "政治认同是指具备热爱伟大祖国、中华民族、中华文化、中国共产党、中国特色社会主义的情感，以及为中华民族伟大复兴而团结奋斗的志向，能够广泛践行社会主义核心价值观。政治认同主要表现为：（1）政治方向。明确中国共产党的核心领导地位，充分认识中国共产党领导是中国特色社会主义最本质的特征，是中国特色社会主义制度的最大优势。拥护中国共产党，坚持中国特色社会主义道路，了解习近平新时代中国特色社会主义思想实现了马克思主义中国化时代化新的飞跃，是中华文化和中国精神的时代精华。（2）价值取向。广泛践行社会主义核心价值观，弘扬以伟大建党精神为源头的中国共产党人精神谱系，坚定共产主义远大理想和中国特色社会主义共同理想，增进中华民族价值认同和文化自信。（3）家国情怀。对家庭有深厚的情感，热爱家乡，热爱伟大祖国，热爱中华民族，自觉铸牢中华民族共同体意识，有以实现中华民族伟大复兴为己任的使命感。培育学生的政治认同，有助于他们形成正确的世界观、人生观、价值观，坚定正确的政治方向，初步树立共产主义远大理想和中国特色社会主义共同理想，成为德智体美劳全面发展的社会主义建设者和接班人。", subject: "SB0309", type: "CoreLiteracy", applicableLevel: "[\"OB02\", \"OB03\"]", contentJson: "[{\"stage\": [1, 2, 3], \"performance\": \"爱祖国,爱人民,爱家乡,爱中国共产党,爱社会主义,在情感和政治上认同伟大祖国、中华民族、中华文化、中国共产党、中国特色社会主义,有强烈的中国人身份认同感。知道中国共产党是伟大光荣正确的党。在日常生活中践行和弘扬社会主义核心价值观。有以实现中华民族伟大复兴为己任的使命感。\"}, {\"stage\": [4], \"performance\": \"在政治、思想、理论、情感上认同伟大祖国、中华民族、中华文化、中国共产党、中国特色社会主义,主动践行和弘扬社会主义核心价值观,有强烈的民族自豪感,坚定理想信念,坚信马克思主义真理的力量,知道习近平新时代中国特色社会主义思想实现了马克思主义中国化时代化新的飞跃,是中华文化和中国精神的时代精华。初步树立共产主义远大理想和中国特色社会主义共同理想,有为实现中华民族伟大复兴中国梦而团结奋斗的志向。\"}]"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL02"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL02", title: "道德修养", description: "道德修养是指养成良好的道德品质和行为习惯，把道德规范内化于心、外化于行。道德修养主要表现为：（1）个人品德。践行以爱国奉献、明礼遵规、勤劳善良、宽厚正直、自强自律为主要内容的道德要求，在日常生活中养成诚实守信、团结友爱、热爱劳动等个人美德和优良品行。（2）家庭美德。践行以尊老爱幼、男女平等、勤劳节俭、邻里互助为主要内容的道德要求，做家庭的好成员。(3) 社会公德。践行以文明礼貌、相互尊重、助人为乐、爱护公物、保护环境、遵纪守法为主要内容的道德要求，做社会的好公民。（4）职业道德。树立劳动不分贵贱的观念，理解以爱岗敬业、诚实守信、办事公道、热情服务、奉献社会为主要内容的职业道德，做未来的好建设者。培育学生的道德修养，有助于他们经历从感性体验到理性认知的过程，传承中华民族传统美德，弘扬民族精神和时代精神，维护国家利益和安全，增强民族气节，明大德、守公德、严私德，形成健全的道德认知和道德情感，发展良好的道德行为。", subject: "SB0309", type: "CoreLiteracy", applicableLevel: "[\"OB02\", \"OB03\"]", contentJson: "[{\"stage\": [1, 2, 3], \"performance\": \"努力形成良好的个人品德、家庭美德、社会公德,尊敬师长、团结友爱、勤劳节俭、礼貌待人、诚实守信、助人为乐、爱护公物、保护环境,知道劳动不分贵贱。在家庭做一个好成员,在学校做一个好学生。\"}, {\"stage\": [4], \"performance\": \"初步具备正确的道德判断和道德选择能力,自觉践行良好的个人品德、家庭美德和社会公德,理解“明大德、守公德、严私德”,做一个文明的社会成员。形成诚实劳动的意识,初步了解职业道德规范,有做未来好建设者的志向。\"}]"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL03"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL03", title: "法治观念", description: "法治观念是指树立宪法法律至上、法律面前人人平等、权利义务相统一的理念，使尊法学法守法用法成为人们的共同追求和自觉行为。法治观念主要表现为：(1) 宪法法律至上。理解宪法在法律体系中具有最高的权威，任何个人和组织都必须遵守宪法和法律，尊崇宪法和法律。（2）法律面前人人平等。了解公民的合法权益一律平等地受到法律保护，对任何人的违法犯罪行为都依法予以追究，不允许任何人有超越法律的特权。（3）权利义务相统一。理解每个公民都享有宪法和法律赋予的权利，同时也必须履行宪法和法律规定的义务。（4）守法用法意识和行为。了解以民法典为代表的、与日常生活以及未成年人保护密切相关的法律法规，树立法治意识，养成守法用法的思维方式和行为习惯。（5）生命安全意识和自我保护能力。了解和识别可能危害自身安全的行为，具备自我保护意识，掌握基本的自我保护方法，预防和远离伤害。培育学生的法治观念，有助于他们形成法治信仰和维护公平正义的意识，弘扬社会主义法治精神，传承中华优秀传统法律文化，做社会主义法治的忠实崇尚者、自觉遵守者、坚定捍卫者。", subject: "SB0309", type: "CoreLiteracy", applicableLevel: "[\"OB02\", \"OB03\"]", contentJson: "[{\"stage\": [1, 2, 3], \"performance\": \"了解宪法常识,初步认识宪法的地位,具有初步的平等观念,知道法律面前人人平等,了解公民的基本权利和义务,了解生活中的法律规范,形成规则意识,知道法律能够保护自己的生活,养成遵纪守法的行为习惯,具备自我保护意识和初步的自我保护能力。\"}, {\"stage\": [4], \"performance\": \"了解习近平法治思想的基本精神与核心要义,了解法治是中国式现代化的重要保障。初步了解宪法主要内容,以及个人参与社会生活必备的基本法律常识,强化宪法法律至上、法律面前人人平等、权利与义务相统一和守法用法意识,初步树立公平正义、民主法治等观念,初步具备依法维护自身合法权益、参与社会生活的能力,具有生命安全意识和一定的自我保护能力。\"}]"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL04"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL04", title: "健全人格", description: "健全人格是指具备正确的自我认知、积极的思想品质和健康的生活态度。健全人格主要表现为：（1）自尊自信。正确认识自己，珍爱生命，能够自我调节和管理情绪，具备乐观开朗、坚韧弘毅、自立自强的健康心理素质。(2) 理性平和。开放包容, 理性表达意见, 树立正确的合作与竞争观念, 能够换位思考, 学会处理与家庭、他人、集体和社会的关系。(3) 积极向上。有效学习, 能够主动适应社会环境, 确立符合国家需要和自身实际的健康生活目标, 热爱生活, 积极进取, 具有适应变化、不怕挫折、坚韧不拔的意志品质。（4）友爱互助。真诚、友善，拥有同理心，相互支持，相互帮助，具有互助精神。培育学生的健全人格，有助于他们正确认识自我、学会学习、学会生活、学会合作，养成积极的心理品质，提高适应社会、应对挫折的能力。", subject: "SB0309", type: "CoreLiteracy", applicableLevel: "[\"OB02\", \"OB03\"]", contentJson: "[{\"stage\": [1, 2, 3], \"performance\": \"能够正确认识自己,平等对待他人,乐观开朗,自尊自信,珍惜生命,能够觉知、调节自己的情绪。能够与父母、同伴、老师等进行良好的沟通与交往;能够理解和帮助他人。具有积极向上的心理素质和道德品质,能够勇于克服困难,主动适应生活环境的变化。具有一定的同理心,能友爱互助。\"}, {\"stage\": [4], \"performance\": \"具有自立自强、理性平和、坚韧乐观的人格,懂得生命的价值和意义,能够主动调节和管理自己的情绪。能够与他人进行有效沟通,树立正确的合作与竞争观念,真诚、友善,具有互助精神。能够主动适应社会环境的变化,具备应对挫折的积极心理品质。\"}]"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05", title: "责任意识", description: "责任意识是指具备承担责任的认知、态度和情感，并能转化为实际行动。责任意识主要表现为：(1) 主人翁意识。对自己负责, 关心集体, 关心社会, 关心国家, 维护祖国统一和国家安全, 具备国家利益高于一切的观念。(2) 担当精神。具有为人民服务的奉献精神，积极参与志愿者活动、社区服务活动，热爱自然，保护自然，践行绿色生活方式。(3) 有序参与。具有民主与法治意识，守规矩，重程序，能够依规依法参与公共事务，根据规则参与校园生活的民主实践。培育学生的责任意识，有助于他们提升对自己、家庭、集体、社会、国家和人类的责任感，增强担当精神和参与能力。", subject: "SB0309", type: "CoreLiteracy", applicableLevel: "[\"OB02\", \"OB03\"]", contentJson: "[{\"stage\": [1, 2, 3], \"performance\": \"关心他人和集体,积极参加集体活动,有集体荣誉感,学会对自己负责,主动承担相应的家庭和学校事务,树立主人翁意识。热爱自然,爱护学校、社区和公共环境。树立维护民族团结、祖国统一和国家安全的责任意识。\"}, {\"stage\": [4], \"performance\": \"关心公共事务,关心国家发展和前途命运,具备国家利益高于一切的观念。积极参与志愿者活动、社区服务活动,有社会责任感,勇于担当,有为人民服务的奉献精神。具有现代生态文明观,践行绿色生活方式,自觉保护环境。具备民主与法治意识,积极参与公共事务和民主实践。\"}]"};

MERGE (n:Theme {identifier: "urn:jy:dwfz:SB0309:Theme:TH01"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Theme:TH01", title: "入学教育", description: "", subject: "SB0309", type: "Theme", applicableLevel: "[\"OB0201\", \"OB0202\"]", contentJson: "[{\"stage\": [1], \"ContentRequirements\": \"·上学了,感受自己身份的变化,初步了解学校的环境。\\n·知道课堂常规,学会整理书包和准备学习用品。学会自己的事情自己做。\\n·能制订出切实可行的目标,认真完成自己承担的任务。\\n·合理制订学习和作息计划,生活有规律。\\n·尊敬师长,对师长有礼貌。\\n·喜欢和同学、老师交往,高高兴兴地学,快快乐乐地玩。\\n·融入集体生活,爱护班级荣誉。\", \"TeachingTips\": \"·在入学适应期,通过自我介绍和参观校园等活动,熟悉校园环境,尽快适应自己的新身份。\\n·通过“我能行”活动,开展整理书包比赛,学会按照课程表准备和整理学习用品,展示基本的生活自理技能,能够遵守课堂纪律,养成自己的事情自己做的好习惯。\\n·通过分享成功励志的故事,懂得做事要有目标,实现目标要努力,不推卸,不偷懒。\\n·制作学习计划表和作息计划表,学会合理安排时间,有规律地生活。\\n·观察学习与老师、长辈见面时的礼节和礼貌用语,见到师长能主动礼貌问候。\\n·通过自我展示、游戏互动等方式认识新朋友,感受结交朋友的乐趣与美好。\\n·通过运动会等集体活动,树立集体意识,萌发集体归属感和荣誉感。\"}]"};

MERGE (n:Theme {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Theme:TH02", title: "道德教育", description: "", subject: "SB0309", type: "Theme", applicableLevel: "[\"OB02\"]", contentJson: "[{\"stage\": [1], \"ContentRequirements\": \"·乐于探究,在学习与生活中遇到问题时能够想办法解决,提高动脑动手能力。\\n·做事认真,有始有终,不拖拉。\\n·学习分辨是非,做了错事勇于承认和改正,不撒谎。\\n·能看到自己的成长和进步,学会正确对待自己的学习成绩。\\n·欣赏他人的优点,并以此激励自己不断进步。\\n·关心他人,乐于与同伴合作、分享。\\n·在遇到困难和危险时懂得求助,懂得感恩,乐于助人。\\n·亲近自然,感受自然的美,保护动物,爱护一草一木,保护自然环境。\\n·了解家乡的风景名胜和主要物产,关注家乡的发展变化。\\n·知道社会主义核心价值观的概念,能记住社会主义核心价值观。\", \"TeachingTips\": \"·围绕“热爱学习,创意生活”主题,小组合作设计制作简单、有创意的手工作品,培养动脑筋发现问题、解决问题的能力。\\n·观看影视资料,明白做事拖拉的不良后果,养成善始善终的好习惯。\\n·用讲故事、举例子的方式,了解分辨是非的标准,知道撒谎的不良后果,敢于承认错误,并积极改正。\\n·围绕“我进步了”,开展写日记和交流活动,不断发现总结自己在生活与学习中的成长和进步。\\n·围绕“寸有所长,尺有所短”展开讨论,主动发现他人的优点,学会取长补短。\\n·通过游戏活动或共同完成一项任务,体会合作的重要性,知道合作中要认真完成自己所承担的任务,愿意与他人合作。\\n·根据故事情境,进行角色扮演,认识到人与人需要互相帮助,帮助别人也会让自己快乐。\\n·通过户外活动,接触自然环境,爱护身边的动植物,为保护自然环境做力所能及的事。\\n·开展调查活动,制作家乡名片,交流展示家乡具有代表性的风景名胜和主要物产。\\n·通过看宣传画、开故事会等方式,知道社会主义核心价值观的概念,能记住社会主义核心价值观的内容。\"}]"};

MERGE (n:Theme {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Theme:TH03", title: "道德教育", description: "", subject: "SB0309", type: "Theme", applicableLevel: "[\"OB02\"]", contentJson: "[{\"stage\": [2], \"ContentRequirements\": \"·关心家庭生活，主动分担家务劳动。\\n·学习合理消费、勤俭节约的途径和方法，明白劳动创造财富的道理。\\n·学习和掌握日常生活中待人接物的基本礼仪。\\n·尊重老师,感受老师的辛劳;学会和同学平等相处,知道同学之间要相互尊重、友好交往。\\n·了解个体与集体的关系,关心集体,有互助意识,积极参加集体活动,维护集体荣誉。\\n·懂得邻里之间要和睦相处。\\n·尊重劳动者,懂得职业没有高低贵贱之分,感受并感激他们的劳动给人们生活带来的便利,珍惜他们的劳动成果。\\n·爱科学,崇尚科学精神。\\n·体验公共设施给自己生活带来的便利,形成爱护公共设施人人有责的意识。\\n·学习环境保护的基本常识,增强环境保护意识。\\n·正确运用网络和电子产品;学习基本的网络道德规范,做到文明上网。\\n·初步理解社会主义核心价值观的要求,并在日常生活和集体活动中践行社会主义核心价值观。\", \"TeachingTips\": \"·观察和体会日常生活中父母的辛苦操劳，选择自己可以承担的家务劳动，坚持去做。\\n·了解家庭经济来源和生活必要的开支，初步了解不同商品的价格。\\n·通过角色扮演，学习日常生活中得体的言谈举止和交往的基本礼仪。\\n·了解老师的日常工作;讲述同学们互相关心的事例和自己的感受,针对同学中常出现的摩擦和冲突,讨论解决的办法。\\n·尝试与同学合作完成一件事,并在班内交流参与合作活动的体会和感受。\\n·交流自家与邻居相处的情况,讨论邻里怎样才能和睦相处。\\n·在班级交流劳动模范、大国工匠、身边普通劳动者的故事,感受他们的社会贡献。\\n·通过案例,了解科学技术的作用;收集科学家的事迹,感受和弘扬科学家精神,争做未来科学家。\\n·观察生活中常见的公共设施及其使用、维护情况,提出改进的建议。\\n·进行实地调查,说明环境问题产生的原因及其危害;参与节水、节能、垃圾分类等活动,或者组织节水、节能、垃圾分类等宣传活动。\\n·分小组收集网络交往中不文明现象的资料,选取典型事例进行评价,讨论制订文明上网公约。\\n·结合图片展览等方式,初步感受社会主义核心价值观在引领社会风尚中的作用。\"}]"};

MERGE (n:Theme {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Theme:TH04", title: "道德教育", description: "", subject: "SB0309", type: "Theme", applicableLevel: "[\"OB02\"]", contentJson: "[{\"stage\": [3], \"ContentRequirements\": \"·懂得做人要诚信、自尊、自爱、自强的道理。\\n·愿意反思自己的生活和行为，学会理性思考，作出正确的判断与选择。\\n·理解平等待人的意义，懂得谦让、友善和宽容，学会尊重、同情、关心和感恩，能够相互帮助，具有团结互助精神。\\n·体贴父母长辈，能够与他们进行良好的沟通，主动参与力所能及的家务劳动，感受劳动的意义，为父母分忧，懂得感恩。\\n·关心集体，在集体中承担相应的责任，具有集体意识和团队精神。\\n·了解和感受社会生活，主动参与力所能及的服务性劳动，做一个热爱生活、乐于奉献的人，积极服务社会，增强社会责任感。\\n·助人为乐，爱护公物，遵守社会交往、公共场所中的文明规范。\", \"TeachingTips\": \"·收集道德模范的故事，了解他们如何做人，体会诚信、自尊、自爱、自强的重要性。\\n·制订生活计划，反思自己的言行，养成良好的自省习惯，提高判断和选择能力。\\n·通过情景剧，展现生活中人与人之间的交往场景，讨论怎样才能维持良好的人际关系，在生活中学会关心，学会帮助，学会感恩，团结互助，帮助弱势群体。\\n·通过与父母长辈交流，了解他们的工作情况，感受父母的辛劳和对子女的关爱。与同学交流怎样为父母分忧。\\n·开展集体活动，如体育比赛、生产劳动、社会服务等，分享合作的体验，讨论合作的意义，感受团队的力量。\\n·开展走进社会的实践活动，参加力所能及的社会公益和志愿活动等，感受团结互助的温暖。\\n·了解与自己生活密切相关的社会规则，认识规则在社会生活中的重要性，懂得做一个现代文明人不仅要靠规则约束自己，还需要用道德良知要求自己。\"}]"};

MERGE (n:Theme {identifier: "urn:jy:dwfz:SB0309:Theme:TH05"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Theme:TH05", title: "生命安全与健康教育", description: "", subject: "SB0309", type: "Theme", applicableLevel: "[\"OB02\", \"OB03\"]", contentJson: "[{\"stage\": [1], \"ContentRequirements\": \"·认识道路交通标志,掌握报警的基本常识。\\n·能够识别公共环境中的安全标识,安全有序使用和爱护公共设施。\\n·学会发现和识别身边的安全隐患,保护自己。\\n·学会用适当的方式化解自己的消极情绪。\\n·养成良好的饮食和个人卫生习惯。\\n·爱护家庭、学校和公共环境卫生。\", \"TeachingTips\": \"·观察道路交通标志,熟悉并识记常见的交通标志,识别交通信号灯。模拟生活中遇到的紧急或危险情况,掌握报警的方式、方法和基本要求。\\n·通过调查体验,了解公共设施的使用规则,培养安全有序使用和自觉爱护公共设施的意识。\\n·观察发现身边环境中的不安全因素,准确地判断分析,保护自己。\\n·看图画书、听故事,在成人的帮助下学会用恰当的方法应对消极情绪,遇到问题和困难要积极、乐观地去面对。\\n·围绕生活案例对比分析,改正不良的饮食习惯,关注自己的仪表,做到干净整洁。\\n·通过收集相关信息和图片、观看公益广告等方式,感受美好环境带给人的愉悦,树立公共卫生意识,积极参与维护公共环境卫生的活动。\"}]"};

MERGE (n:Theme {identifier: "urn:jy:dwfz:SB0309:Theme:TH06"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Theme:TH06", title: "生命安全与健康教育", description: "", subject: "SB0309", type: "Theme", applicableLevel: "[\"OB02\", \"OB03\"]", contentJson: "[{\"stage\": [2], \"ContentRequirements\": \"·了解自己,学会悦纳自己;正确对待挫折和困难,增强抗挫折能力。\\n·掌握良好的人际交往技能,学会倾听和表达,学会团结和包容,养成礼貌友好的交往品质,形成合群而独立的健康人格。\\n·初步感受学习知识的乐趣,能够自主参与各种活动,养成自主学习的习惯;正确对待学习中的困难,学会化解消极情绪。\\n·知道生命只有一次,理解生命的珍贵,懂得珍惜生命,呵护生命。\\n·树立安全自律意识,学会自我保护技能,远离危险;知道保护隐私的重要性,能够识别陌生环境,谨慎与陌生人交往。\", \"TeachingTips\": \"·通过开展“我能行,你也行”等活动,了解自己的优缺点,知晓别人的长处和特点,学会悦纳自己;举办故事分享会,与同学分享克服困难、应对挫折的经验。\\n·结合同学的日常交往讨论如何处理好同学关系,分享建立良好同学关系的经验。\\n·结合具体情境,分享学习的快乐,交流学习方法。结合学习和生活中消极情绪的案例,分析原因,与同学一起探讨解决的办法。\\n·通过模拟体验活动,体会生命来之不易,懂得感恩父母;了解生命权的有关知识,懂得珍惜自己生命、尊重他人生命。\\n·结合日常生活案例,认识安全的重要性,树立安全自律意识;通过角色扮演,讨论如何与陌生人打交道,如何拒绝不良诱惑,掌握基本的拒绝和求助方法;通过情境表演,学习应对校园欺凌的正确方法。\"}]"};

MERGE (n:Theme {identifier: "urn:jy:dwfz:SB0309:Theme:TH07"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Theme:TH07", title: "生命安全与健康教育", description: "", subject: "SB0309", type: "Theme", applicableLevel: "[\"OB02\", \"OB03\"]", contentJson: "[{\"stage\": [3], \"ContentRequirements\": \"·珍爱生命，远离烟酒，拒绝毒品，形成良好的生活方式和健康的生活习惯。\\n·了解和识别性侵害、欺凌行为的危害，学会自我保护和寻求帮助，预防和远离性侵害、欺凌和拐骗。\\n·了解公共卫生事件、社会管控措施和个人行为要求，初步树立社会安全意识和遵守公共卫生规则的意识。\\n·了解突发公共卫生事件、地震、洪水等抗疫抗灾的伟大实践，认识“把人民群众的生命安全与身体健康放在第一位”的价值理念。\", \"TeachingTips\": \"·通过案例分析，认识烟酒对健康的消极影响，毒品对生命、家庭及社会的危害，宣传并践行健康的生活方式。\\n·通过情境演练，了解如何正确把握与异性同学交往的分寸，如何对待同学之间的欺凌；通过分析典型案例，识别可能发生性侵害和拐骗的情境，学会预防性侵害、欺凌和拐骗的自我保护方法和寻求帮助的基本途径。\\n·结合近年来重大突发公共卫生事件或者其他重大突发事件，了解在不同级别下的社会管控措施和个人行为要求，遵守政府的规定，做好自我防护，维护社会安全。\\n·选取典型案例，体会、感受党和政府怎样践行“把人民群众的生命安全与身体健康放在第一位”的理念，认识“人民至上、生命至上”的意义，感受社会主义制度的优越性。\"}]"};

MERGE (n:Theme {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Theme:TH08", title: "生命安全与健康教育", description: "", subject: "SB0309", type: "Theme", applicableLevel: "[\"OB02\", \"OB03\"]", contentJson: "[{\"stage\": [4], \"ContentRequirements\": \"·了解青春期的生理和心理变化,体会青春期的美好,学会克服青春期烦恼;掌握青春期性心理知识,正确对待两性关系;提高预防性骚扰和性侵害的能力。\\n·客观认识和对待自己,形成正确的自我认同,提高自我管理能力;理解不同的社会角色,形成亲社会的行为;能正确认识和处理自己与同学、朋友的关系,个人和集体的关系,在团队活动中增强合作精神。\\n·正确认识顺境和逆境的关系,学会情绪调控,能够正确看待生活中的挫折,具备迎接挑战的能力。\\n·树立正确的人生观和价值观,尊重和敬畏生命,热爱生活,追求生命高度,成就幸福人生。\\n·遵守基本的社交礼仪,恪守诚信,理性维护社会公德,维护公共秩序,做文明的社会成员。\", \"TeachingTips\": \"·以“青春期的烦恼”为议题,探讨青春期的心理特征与性心理特点。可观看青春期性教育科普影视作品,了解个体生理及心理特点的差异,以及青春期性心理的特点和规律;可通过讨论,了解性骚扰和性侵害的可能方式,以及预防方法。\\n·以“社会中的我”为议题,通过角色扮演和讨论等方式,理解社会上各种角色,以及各种角色之间的相互关系,认识“人是社会关系的总和”;在与他人的交往中认识自我,正确理解个人与集体、社会和国家的关系。\\n·以“在逆境中自强不息”为议题,探讨应该如何正确面对困难和挫折,战胜困难,增强抗挫折能力;掌握处理负面情绪和减压的方法,学会利用专业心理干预解决心理困扰问题,预防自我伤害。\\n·以“生命的意义是什么”为议题,结合突发公共卫生事件等,感悟生命的美好,理解生命健康的重要性 和实现生命价值的意义。通过生涯规划,合理规划自己的人生,努力为国家与社会作贡献。\\n·以“我在社会中成长”为议题,探讨积极参与社会生活对于个人成长的意义,理解社会责任感的重要价值。\"}]"};

MERGE (n:Theme {identifier: "urn:jy:dwfz:SB0309:Theme:TH09"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Theme:TH09", title: "法治教育", description: "", subject: "SB0309", type: "Theme", applicableLevel: "[\"OB02\", \"OB03\"]", contentJson: "[{\"stage\": [1], \"ContentRequirements\": \"·知道学校生活有规则,树立规则意识。\\n·讲信用,守约定,承诺的事情要做到。\\n·懂得爱护国旗、国徽,知道法律不允许毁损、涂划国旗、国徽。\", \"TeachingTips\": \"·了解《中小学生守则》,知道学校规则的由来,懂得遵守规则的重要性,自觉遵守校园规则。\\n·开展“诚实守信”故事会活动,懂得做人要讲信用,不失信于人。\\n·观看升旗仪式,了解悬挂国旗、国徽,奏唱国歌的有关规定。\"}]"};

MERGE (n:Theme {identifier: "urn:jy:dwfz:SB0309:Theme:TH10"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Theme:TH10", title: "法治教育", description: "", subject: "SB0309", type: "Theme", applicableLevel: "[\"OB02\", \"OB03\"]", contentJson: "[{\"stage\": [2], \"ContentRequirements\": \"·了解制定规则要遵循一定的程序,树立参与意识和规则意识。\\n·知道法律能够保护我们的生活,了解道路交通、环境保护、消防安全等生活中常用的法律。\\n·树立民主、平等观念,积极参与民主管理,在集体生活中平等待人。\\n·初步了解国家统一和民族团结的重要性,树立维护国家统一和民族团结的意识。\", \"TeachingTips\": \"·结合公共生活中制定规则的事例,感知制定规则需要遵循一定的程序;也可以小组、班级活动的形式,模拟制定规则的流程。\\n·利用全国中小学生安全教育日、全国消防日、全国交通安全日等,开展走进消防队、警营等社会实践活动,请法治副校长讲课,普及有关生命安全、交通安全、消防安全等生活中常用的法律。\\n·通过学校和班级等集体生活,体会民主、平等在学校生活中的意义;分析班级民主参与和管理的现状,提出建议。\\n·结合国情教育主题中有关国家领土内容的学习,了解宪法有关国家统一和民族团结的规定。\"}]"};

MERGE (n:Theme {identifier: "urn:jy:dwfz:SB0309:Theme:TH11"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Theme:TH11", title: "法治教育", description: "", subject: "SB0309", type: "Theme", applicableLevel: "[\"OB02\", \"OB03\"]", contentJson: "[{\"stage\": [3], \"ContentRequirements\": \"·初步认识法律的概念及特征，感受法律对个人生活和公共生活的重要性，养成自觉守法、遇事找法、解决问题靠法的思维习惯和行为方式。\\n·初步了解宪法的主要内容，知道宪法是国家根本法、社会主义制度是中华人民共和国的根本制度。\\n·认识公民的内涵，了解公民的权利和义务，树立法律面前人人平等的观念。\\n·认识民主、自由、平等、公正对社会生活的意义，初步具备民主参与、责任担当意识。\\n·了解消费者权益保护、食品安全等法律常识，初步学会运用法律维护自己的合法权益。\\n·了解未成年人的权利，增强自我保护的意识，学会自我保护。\\n·认识未成年人不良行为的危害，知道违法要承担法律责任，自觉抵制不良行为，主动预防未成年人犯罪。\\n·初步了解危害国家安全特别是社会安全的行为及防范措施。\", \"TeachingTips\": \"·结合身边的案例，感受良好的社会秩序既需要道德的滋养，也需要法律的规范；讨论我们为什么需要法律，法律对我们意味着什么，在生活中怎样做到遵纪守法，怎样借助于法律解决问题。\\n·结合“12\\n·4”国家宪法日，组织学宪法、讲宪法等活动。\\n·结合真实案例，了解公民的权利和义务；通过角色扮演，学习行使公民权利、履行公民义务的方式和途径。\\n·通过实例观察民主、平等在学校生活中的表现，体会公共参与在社会生活中的重要性，在参与集体生活中承担责任。\\n·结合身边发生的消费者权益被侵害和食品安全方面的案例，了解消费者的权益和食品安全规定，知道合法权益受损后应如何维权。\\n·结合身边的案例，学习法律知识，掌握运用法律维护自身合法权益的途径。结合《中华人民共和国未成年人保护法》及相关案例，了解对未成年人的家庭保护、学校保护、社会保护、网络保护、政府保护、司法保护的相关规定。\\n·结合《中华人民共和国预防未成年人犯罪法》分析未成年人违法犯罪案例，认识违法犯罪的特点、危害和法律后果，培育和提高防范遭受侵害的意识和能力。\\n·通过典型案例，认识社会安全对于国家安全的重要性，了解维护社会安全的意义，初步掌握维护社会安全的技能。\"}]"};

MERGE (n:Theme {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Theme:TH12", title: "法治教育", description: "", subject: "SB0309", type: "Theme", applicableLevel: "[\"OB02\", \"OB03\"]", contentJson: "[{\"stage\": [4], \"ContentRequirements\": \"·了解习近平法治思想,理解坚持中国特色社会主义法治道路就要坚持党的领导、坚持以人民为中心。\\n·了解宪法基本知识,明确宪法的地位与作用,树立宪法法律至上观念。\\n·懂得公民的基本权利和义务,正确行使公民权利,自觉履行公民义务。\\n·初步认识法治的内涵，理解法治是中国式现代化的重要保障。\\n·认识国家统一是实现中华民族伟大复兴的历史前提和基本保证，理解“和平统一、一国两制”的重要意义，自觉维护国家统一。\\n·了解人民代表大会制度是我国的根本政治制度，理解全过程人民民主的制度优势。\\n·认识协商民主是实践全过程人民民主的重要形式，了解中国共产党领导的多党合作和政治协商制度。\\n·了解民族区域自治制度对维护和发展平等团结互助和谐的社会主义民族关系的意义。\\n·认识基层民主制度对保障人民知情权、参与权、表达权、监督权的作用。\\n·认识主要国家机关，理解权力是由人民授予的，行使权力必须受法律的约束。\\n·认识民法典对保护人身 权、财产权的意义。\\n·认识犯罪的基本概念,了 解刑罚的主要类型; 认识 未成年人违法犯罪行为的危害,培育和提高自我保 护的意识和能力,自觉抵制 校园欺凌和违法犯罪行为。\\n·辨别媒体中的不良信息, 了解网络环境中如何保护 未成年人隐私等合法权益。\\n·了解环境保护的法律规 定,树立生态文明观念, 促进人与自然和谐共生。\\n·认识国家安全的内涵,树 立国家利益至上的观念,理解国家安全是中国式现 代化行稳致远的重要基 础,了解国家新安全格 局,知道维护国家安全是 每个公民的义务,自觉维 护国家安全。\\n·了解主要国际组织,理解 维护以联合国为核心的国际体系的意义。\", \"TeachingTips\": \"·以“坚持党对全面依法治国的领导”为议题,了解习近平法治思想的核心内容,结合法治实践,说明党的领导对社会主义法治建设的重要性。\\n·以“宪法是根本法”为议题,明确宪法在我国法律体系中的地位。可观看全国“两会”和宪法宣誓的视频;可查找其他法律中体现宪法地位的条文,理解宪法的重要性。\\n·以“权利与义务相统一”为议题,探讨权利与义务的关系。\\n·以“奉法者强则国强”为议题，观看法治类节目，了解法治在推动国家治理现代化中的重要作用。\\n·以“‘和平统一、一国两制’对实现祖国完全统一的意义”为议题，了解“一国两制”基本国策的实践过程，树立维护国家统一的责任意识。\\n·以“认识国家最高权力机关”为议题，查阅资料，了解全国人民代表大会的性质和职权，增进对全过程人民民主的理解。\\n·以“中国式协商民主”为议题，查阅资料，了解政治协商的作用。\\n·以“铸牢中华民族共同体意识”为议题，认识各民族相互尊重的重要性，讨论我们能为民族团结做什么。\\n·以“走进村委会、居委会”为议题，访谈村委会、居委会工作人员，了解基层民主制度在当代中国的生动实践。\\n·以“如何把权力关进制度的笼子里”为议题，探究国家机关行使权力的方式。可选取新闻报道片段，理解中华人民共和国主席、国务院、中央军委、国家监察委员会、最高人民法院、最高人民检察院等国家机关的职权；可结合具体案例，了解国家机关行使权力的相关要求。\\n·以“民法典是社会生活的百科全书”为议题,选取有关合同、婚姻、继承等案例,了解在现实生活中如何维护自身民事权利和尊重他人民事权利。\\n·以“远离违法犯罪”为议题,以角色扮演、情景剧等方式,了解校园暴力和不良行为的表现形式及危害,做一个遵纪守法的好学生。\\n·以“如何铸牢自我保护的防火墙”为议题,讨论网络信息安全和个人隐私保护的方法与策略。可采取主题班会的形式,或者举办图片展,交流分享成功经验,或者制订安全上网指导手册。\\n·以“建设美丽中国”为议题,探讨个人如何参与环境保护,做维护生态文明的践行者。\\n·以“国家安全是头等大事”为议题,参观国家安全方面的展览,结合具体事例,懂得主权神圣不可侵犯,领土完整不容分裂,理解《反分裂国家法》《中华人民共和国香港特别行政区维护国家安全法》的意义。\\n·以“联合国与人类命运共同体”为议题,通过模拟联合国活动,理解构建人类命运共同体的意义。\"}]"};

MERGE (n:Theme {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Theme:TH13", title: "中华优秀传统文化与革命传统教育", description: "", subject: "SB0309", type: "Theme", applicableLevel: "[\"OB02\"]", contentJson: "[{\"stage\": [1], \"ContentRequirements\": \"·了解中华民族勤俭节约的传统美德,养成不浪费的习惯。\\n·尊敬父母长辈,体贴家人,承担力所能及的家务劳动。\\n·感受中华民族自强不息的传统美德。\\n·认识国旗、国徽,学唱国歌,知道自己是中国人。\\n·知道我们国家的全称是中华人民共和国,认识中国版图,了解全民国家安全教育日。\\n·知道我国是一个统一的多民族国家,有56个民族。\\n·认识党旗,热爱中国共产党,拥护中国共产党的领导,感受党的百年奋斗取得的重大成就。了解党和国家主要领导人。\\n·了解中国少年先锋队是中国少年儿童的群团组织,是少年儿童学习中国特色社会主义和共产主义的学校,是建设社会主义和共产主义的预备队。\\n·了解在民族独立、人民解放斗争中涌现出的革命领袖和英雄人物。\\n·了解当代社会生活中的英雄模范人物,见贤思齐,学习他们高尚的道德情操。\", \"TeachingTips\": \"·讲述中华民族勤俭节约的故事,感受粮食等资源的来之不易,参与“光盘行动”,懂得节约的重要性。\\n·手绘家庭树,分享亲情故事,在参与家务劳动中感受家的温暖。\\n·分享交流中华民族从古至今自强不息的奋斗故事,结合生活中的典型事例,学习继承和发扬自强不息的奋斗精神。\\n·以升旗仪式、少先队活动、重要节日活动等为契机,学唱国歌,了解国旗、国歌、国徽是国家的象征。\\n·结合国庆节活动和开国大典的资料,知道1949年10月1日是中华人民共和国宣告成立的日子;了解中国版图的形状与轮廓;知道4月15日为全民国家安全教育日;知道人民币是我国的法定货币。\\n·通过听歌曲、看视频、做调查等方式,了解我国有56个民族,是一个统一的多民族大家庭。\\n·结合7月1日建党纪念日,了解中国共产党的诞生和百年奋斗的重大成就,认识党旗、党徽。通过新闻资料,认识和了解毛泽东主席等老一辈无产阶级革命家,以及现任中国共产党中央委员会总书记、国家主席。\\n·参与“中国少年先锋队建队日”活动,以及学唱队歌、学系红领巾等活动,了解中国少年先锋队的由来,以及队旗、队徽的含义。\\n·结合中国人民抗日战争胜利纪念日、南京大屠杀死难者国家公祭日、烈士纪念日等,观看影视资料,参观纪念展馆,学习我国近代抵抗外来侵略的革命领袖和英雄人物的伟大精神。\\n·通过调查访问等方式,了解当代英雄模范人物的事迹,并向他们学习。\"}]"};

MERGE (n:Theme {identifier: "urn:jy:dwfz:SB0309:Theme:TH14"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Theme:TH14", title: "中华优秀传统文化与革命传统教育", description: "", subject: "SB0309", type: "Theme", applicableLevel: "[\"OB02\"]", contentJson: "[{\"stage\": [2], \"ContentRequirements\": \"·感受父母长辈的养育之恩,以恰当的方式表达对他们的感激、尊敬和关心。\\n·了解自己家庭的历史,知道弘扬优秀家风的意义,初步体会中国人的家庭观念。\\n·理解中华民族传统美德,如仁爱、诚信、谦逊等。\\n·知道我们辽阔的疆域是各民族共同开拓的,悠久的历史是各民族共同书写的,灿烂的文化是各民族共同创造的,伟大的精神是各民族共同培育的。\\n·知道中华优秀传统文化的主要代表性成果，初步感受中华优秀传统文化的魅力。\\n·了解革命英雄人物的故事，体会“没有共产党就没有新中国”。\\n·从衣、食、住、行等方面，感受中华人民共和国成立以来的伟大成就。\", \"TeachingTips\": \"·结合父母长辈生日和有关节日,用写信或其他方式向父母长辈表达感恩之情。\\n·向长辈了解家庭的历史,如祖辈来自什么地方、家庭住址等;收集我国古往今来优秀家风的故事。\\n·通过收集格言、故事,理解中华民族传统美德的主要内涵。\\n·选择、列举代表民族文化的实例,如传统节日、歌曲、民间传说、历史故事、服饰、建筑、饮食等,进行交流展示。\\n·列举我国古代具有代表性的科技成果、文艺作品等中华文明标识，感受中华文化源远流长、博大精深，萌发民族自豪感，树立文化自信。\\n·收集相关资料，举行“我敬佩的革命英雄人物”主题报告会，体会理想信念的力量，知道新中国来之不易。\\n·分组收集资料，以图片展等形式呈现国家在保障和改善民生方面的伟大成就，激发对中国特色社会主义的认同感。\"}]"};

MERGE (n:Theme {identifier: "urn:jy:dwfz:SB0309:Theme:TH15"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Theme:TH15", title: "中华优秀传统文化与革命传统教育", description: "", subject: "SB0309", type: "Theme", applicableLevel: "[\"OB02\"]", contentJson: "[{\"stage\": [3], \"ContentRequirements\": \"·了解中华文化的悠久历史和博大精深，体会中华优秀传统文化的精髓。\\n·了解中华民族对人类文明的贡献，为中华民族创造的文明成就感到自豪，坚定文化自信。\\n·了解不同文明之间交流互鉴的重要性，尊重不同文化的差异性，以包容的态度看待不同文明之间的交流对话。\\n·了解人民军队在不同时期称谓的演变，了解人民军队的革命历史、英雄人物，知道人民军队始终是中国人民的守护者、国家安全的维护者、世界和平的捍卫者，感受人民军队英勇顽强、不怕牺牲的革命精神。\\n·了解中国共产党的成立以及中国共产党带领中国人民取得革命胜利的历史，初步了解马克思主义中国化时代化的发展进程，知道全心全意为人民服务是中国共产党的根本宗旨，激发热爱中国共产党的情感。\\n·初步了解中华人民共和国成立实现了从几千年封建专制政治向人民民主的伟大飞跃，知道中国人民从此站起来了。明确只有社会主义才能救中国，只有社会主义才能发展中国。\", \"TeachingTips\": \"·查阅资料，了解中国的黄河流域和长江流域是人类最早的文明发祥地之一，中国以礼仪之邦著称于世。\\n·参观博物馆或收集资料，了解中华优秀传统文化的代表性成果和我国的文化遗产，积极参与文化遗产保护活动。\\n·通过收集不同文明代表性成果的资料，懂得“和而不同”的道理，理解不同文明之间交流互鉴的意义。\\n·结合八一建军节，认识中国人民解放军军旗；通过红军、八路军、新四军、东北抗日联军、解放军的故事，激发对人民军队的热爱，学习人民军队“压倒一切敌人”的英雄气概。\\n·通过组织参观革命历史博物馆、革命圣地、烈士陵园等活动，讲述中国共产党人坚持以人民为中心、把人民的利益放在首位的可歌可泣的故事，感受五四精神、伟大建党精神、长征精神等，增强对中国共产党的认同和向往。\\n·查阅资料，讲好党的故事、革命的故事、英雄模范的故事，参观革命烈士纪念馆、历史博物馆等，开展“我能为国家做什么”的讨论，增进对国家的认识，激发爱国情，砥砺强国志，增强维护国家利益和民族尊严的意识。\"}]"};

MERGE (n:Theme {identifier: "urn:jy:dwfz:SB0309:Theme:TH16"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Theme:TH16", title: "国情教育", description: "", subject: "SB0309", type: "Theme", applicableLevel: "[\"OB0203\", \"OB0204\", \"OB0205\", \"OB0206\"]", contentJson: "[{\"stage\": [2], \"ContentRequirements\": \"·知道我国的地理位置、领土面积、海陆疆域、行政区划，知道台湾是中国不可分割的一部分，祖国的领土神圣不可侵犯。\\n·了解祖国的名山大川和名胜古迹，为生活在中国而自豪。\\n·感受身边的变化，了解家乡的发展，对祖国未来充满信心。\\n·领悟“绿水青山就是金山银山”的道理，懂得人与自然和谐共生的重要性，初步树立生态文明意识。\", \"TeachingTips\": \"·进行拼地图的游戏；观看反映我国领土面积或海陆疆域的纪录片；收集、分享和探讨有关“历史上的台湾”的故事。\\n·观看有关祖国风光的影视片；收集整理名山大川和名胜古迹的图片、诗文、景点门票等资料，交流分享；选择一处名山大川或名胜古迹，进行合作探究。\\n·通过对自己家庭、所在社区的观察或调查，了解家乡改革开放以来的发展；结合某地区的具体事例，了解乡村振兴的举措。\\n·通过社会调查，了解家乡环境的变化并发现存在的问题，结合本地发展尝试提出建议；通过降碳、减污、扩绿等具体案例，认识国家加快完善落实“绿水青山就是金山银山”理念的举措。\"}]"};

MERGE (n:Theme {identifier: "urn:jy:dwfz:SB0309:Theme:TH17"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Theme:TH17", title: "国情教育", description: "", subject: "SB0309", type: "Theme", applicableLevel: "[\"OB0203\", \"OB0204\", \"OB0205\", \"OB0206\"]", contentJson: "[{\"stage\": [3], \"ContentRequirements\": \"·知道马克思主义在意识形态领域指导地位的根本制度，初步树立共产主义远大理想和中国特色社会主义共同理想。\\n·初步理解社会主义核心价值观的内涵，并在日常学习和生活中广泛践行社会主义核心价值观。\\n·了解改革开放以来我国所取得的伟大成就，明确中国特色社会主义道路是指引中国发展繁荣的正确道路，理解只有走中国特色社会主义道路才能够实现中华民族伟大复兴，初步了解中国式现代化的内涵与特征。\\n·知道中国特色社会主义进入新时代，初步了解习近平新时代中国特色社会主义思想，明确习近平新时代中国特色社会主义思想的指导地位。\\n·初步感受百年未有之大变局和世界发展大势，能够举例说明构建人类命运共同体的意义。\", \"TeachingTips\": \"·通过历史故事和模范人物事迹，以及中国特色社会主义建设的伟大成就，凝聚中国特色社会主义共同理想，坚定理想信念。\\n·列举生活中社会主义核心价值观的行为表现，讨论我们怎么做才能更好地广泛践行社会主义核心价值观，立志为建成富强民主文明和谐美丽的社会主义现代化强国而努力学习。\\n·观看有关主题展览和视频等，感知中国共产党团结带领中国人民取得的伟大成就，体会中国人民的奋斗精神和创造精神，感受中国特色社会主义的优越性，知道中国式现代化是中国共产党领导的社会主义现代化，坚定走中国特色社会主义道路的决心。\\n·通过收看和阅读新闻报道，学习有关文献，初步领悟习近平新时代中国特色社会主义思想精髓，把个人理想与中国梦联系起来，感受新时代中国社会的发展成就。\\n·通过收看新闻和查找生活中的例子，了解世界发展局势以及人类发展面临的挑战，初步感受中国坚定不移奉行互利共赢的开放战略、走和平发展道路的意义。\"}]"};

MERGE (n:Theme {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Theme:TH18", title: "国情教育", description: "", subject: "SB0309", type: "Theme", applicableLevel: "[\"OB0203\", \"OB0204\", \"OB0205\", \"OB0206\"]", contentJson: "[{\"stage\": [4], \"ContentRequirements\": \"·了解中国特色社会主义新时代是我国发展新的历史方位，中国社会的主要矛盾发生了新变化，理解中国发展的历史方位。\\n·了解世界正处于百年未有之大变局，了解全人类共同价值的内涵，领悟构建人类命运共同体的意义。\\n·了解我国统筹国内国际两个大局，统筹推进“五位一体”总体布局，协调推进“四个全面”战略布局，认识我国推进中国式现代化建设的战略部署。\\n·以实现中华民族伟大复兴为己任，树立“劳动光荣、创造伟大”的观念，进行合理的生涯规划，坚定为实现远大理想而奋斗的信念。\", \"TeachingTips\": \"·以“我们的美好生活”为议题，收集全面建成小康社会、脱贫攻坚所取得的伟大成就，知道党领导人民成功走出中国式现代化道路，创造了人类文明新形态，理解我国已开启全面建设社会主义现代化强国新征程。\\n·以“于变局中开新局”为议题，结合实例分析如何应对人类共同面对的重大挑战，认识中国的发展离不开世界，世界的繁荣也需要中国。\\n·以“中国式现代化的现实要求”为议题，分析中国式现代化的基本特征，认识中国式现代化是物质文明和精神文明相协调的现代化，是人与自然和谐共生的现代化，是走和平发展道路的现代化。\\n·以“不负青春、不负韶华、不负时代”为议题，学会依据社会发展需要和自身特点做好生涯规划，强化作为时代新人的责任担当。\"}]"};

MERGE (n:Theme {identifier: "urn:jy:dwfz:SB0309:Theme:TH19"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Theme:TH19", title: "中华优秀传统文化教育", description: "", subject: "SB0309", type: "Theme", applicableLevel: "[\"OB03\"]", contentJson: "[{\"stage\": [4], \"ContentRequirements\": \"·弘扬中华优秀传统文化讲仁爱、重民本、守诚信、崇正义、尚和合、求大同的核心理念。了解中华文明具有突出的连续性、创新性、统一性、包容性、和平性。\\n·理解中华民族孝悌忠信、礼义廉耻的荣辱观念，崇德向善、见贤思齐的社会风尚。\\n·践行中华民族自强不息、敬业乐群、脚踏实地、实事求是的思想。\\n·了解中华优秀传统文化修齐治平的理想追求，锤炼高尚人格。\\n·感悟天下兴亡、匹夫有责的担当意识，厚植爱国主义情怀。\\n·明确新时代建设社会主义文化强国新的文化使命，坚定文化自信、担当使命、奋发有为，努力学习，致力提升国家文化软实力和中华文化影响力。\", \"TeachingTips\": \"·以“中华优秀传统文化的魅力何在”为议题，探究中华优秀传统文化核心理念的当代价值。可讨论中华优秀传统文化中的“大同”理想；可讨论“己所不欲，勿施于人”的原则是否普遍适用；可举行以“和而不同”为主题的讨论活动，了解中华民族俭约自守、中和泰和的生活理念，推己及人、和而不同的处世之道。\\n·以“见贤思齐，见善则迁”为议题，收集体现正确荣辱观念的神话传说、经典故事、嘉言金句等，讨论传统荣辱观与社会主义核心价值观的关系。\\n·以“自强不息，厚德载物”为议题，讨论在新时代如何做一个脚踏实地、积极进取、自立自强的时代新人。\\n·以“如何理解‘学以成人’”为议题，理解做人做事第一位的是崇德修身。\\n·以“如何理解‘家是最小国，国是千万家’”为议题，理解家国情怀的重要性，激发为中华民族伟大复兴而奋斗的使命感。\\n·以“传统文化的创造性转化、创新性发展”为议题，结合中华民族几百万年的人类史、一万年的文化史、五千多年的文明史的发展脉络，理解中华民族对于人类文明的贡献，探讨新时代的文化使命。\"}]"};

MERGE (n:Theme {identifier: "urn:jy:dwfz:SB0309:Theme:TH20"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Theme:TH20", title: "革命传统教育", description: "", subject: "SB0309", type: "Theme", applicableLevel: "[\"OB03\"]", contentJson: "[{\"stage\": [4], \"ContentRequirements\": \"·了解中国产生了共产党,这是开天辟地的大事变,理解伟大建党精神的内涵,领悟伟大建党精神是中国共产党的精神之源。\\n·了解中国共产党领导人民解放思想、锐意进取，创造了改革开放和社会主义现代化建设的伟大成就，实现了人民生活从温饱不足到总体小康、奔向全面小康的历史性跨越，推进了中华民族从站起来到富起来的伟大飞跃，理解中国特色社会主义道路是指引中国发展繁荣的正确道路。\\n·了解中国共产党领导人民自信自强、守正创新，创造了新时代中国特色社会主义的伟大成就，中华民族迎来了从富起来到强起来的伟大飞跃，理解确立习近平新时代中国特色社会主义思想的指导地位，对新时代党和国家事业发展、对推进中华民族伟大复兴历史进程具有决定性意义。\", \"TeachingTips\": \"·以“开天辟地大事变”为议题,观看建党题材的影视剧或专题片,例举中国共产党人的精神谱系的主要内容,理解在党和人民伟大斗争中孕育的社会主义先进文化和革命文化,积淀着中华民族最深层的精神追求,代表着中华民族独特的精神标识,坚定“四个自信”,讨论新时代青少年应该如何弘扬光荣传统、赓续红色基因。\\n·以“不忘初心,牢记使命”为议题,从党史展览中的某件展品说起,回顾中国共产党百年来艰苦卓绝的奋斗历程,体会“幸福都是奋斗出来的”。\\n·以“中华民族有史以来最为广泛而深刻的社会变革”为议题,查找资料,呈现我国确立社会主义制度的伟大意义。\\n·以“改革开放铸就伟大改革开放精神”为议题，举办主题班会或展览，了解中国特色社会主义道路的开辟过程，举例说明伟大改革开放精神的作用。\"}]"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:01"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:01", title: "第一课 开启初中生活", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元 少年有梦\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元 少年有梦"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:02"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:02", title: "第二课 正确认识自我", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元 少年有梦\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元 少年有梦"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:03"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:03", title: "第三课 梦想始于当下", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元 少年有梦\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元 少年有梦"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:04"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:04", title: "单元思考与行动", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元 少年有梦\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元 少年有梦"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:05"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:05", title: "第四课 幸福和睦的家庭", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 成长的时空\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 成长的时空"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:06"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:06", title: "第五课 和谐的师生关系", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 成长的时空\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 成长的时空"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:07"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:07", title: "第六课 友谊之树常青", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 成长的时空\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 成长的时空"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:08"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:08", title: "第七课 在集体中成长", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 成长的时空\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 成长的时空"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:09"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:09", title: "单元思考与行动", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 成长的时空\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 成长的时空"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:10"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:10", title: "第八课 生命可贵", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 珍爱我们的生命\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 珍爱我们的生命"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:11"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:11", title: "第九课 守护生命安全", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 珍爱我们的生命\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 珍爱我们的生命"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:12"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:12", title: "第十课 保持身心健康", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 珍爱我们的生命\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 珍爱我们的生命"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:13"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:13", title: "单元思考与行动", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 珍爱我们的生命\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 珍爱我们的生命"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:14"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:14", title: "第十一课 确立人生目标", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 追求美好人生\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 追求美好人生"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:15"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:15", title: "第十二课 端正人生态度", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 追求美好人生\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 追求美好人生"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:16"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:16", title: "第十三课 实现人生价值", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 追求美好人生\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 追求美好人生"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:17"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:17", title: "单元思考与行动", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 追求美好人生\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 追求美好人生"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:18"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:18", title: "第一课  青春正当时", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第一单元  珍惜青春时光\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第一单元  珍惜青春时光"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:19"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:19", title: "第二课  做情绪情感的主人", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第一单元  珍惜青春时光\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第一单元  珍惜青春时光"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:20"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:20", title: "单元思考与行动", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第一单元  珍惜青春时光\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第一单元  珍惜青春时光"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:21"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:21", title: "第三课  人贵自尊", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第二单元  焕发青春活力\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第二单元  焕发青春活力"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:22"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:22", title: "第四课  自信给人力量", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第二单元  焕发青春活力\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第二单元  焕发青春活力"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:23"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:23", title: "第五课  人生当自强", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第二单元  焕发青春活力\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第二单元  焕发青春活力"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:24"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:24", title: "单元思考与行动", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第二单元  焕发青春活力\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第二单元  焕发青春活力"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:25"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:25", title: "第六课  传承核心思想理念", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第三单元  传承中华优秀传统文化\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第三单元  传承中华优秀传统文化"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:26"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:26", title: "第七课  弘扬中华人文精神", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第三单元  传承中华优秀传统文化\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第三单元  传承中华优秀传统文化"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:27"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:27", title: "第八课  践行中华传统美德", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第三单元  传承中华优秀传统文化\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第三单元  传承中华优秀传统文化"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:28"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:28", title: "单元思考与行动", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第三单元  传承中华优秀传统文化\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第三单元  传承中华优秀传统文化"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:29"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:29", title: "第九课  法律为我们护航", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第四单元  生活在法治社会\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第四单元  生活在法治社会"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:30"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:30", title: "第十课  走近民法典", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第四单元  生活在法治社会\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第四单元  生活在法治社会"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:31"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:31", title: "第十一课  远离违法犯罪", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第四单元  生活在法治社会\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第四单元  生活在法治社会"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:32"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:32", title: "单元思考与行动", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第四单元  生活在法治社会\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第四单元  生活在法治社会"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:33"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:33", title: "第一课丰富的社会生活", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元走进社会生活\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元走进社会生活"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:34"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:34", title: "第二课在社会中健康成长", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元走进社会生活\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元走进社会生活"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:35"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:35", title: "第三课共建网络美好家园", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元走进社会生活\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元走进社会生活"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:36"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:36", title: "单元思考与行动", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元走进社会生活\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元走进社会生活"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:37"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:37", title: "第四课 遵守社会规则", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 维护社会秩序\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 维护社会秩序"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:38"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:38", title: "第五课 社会生活讲道德", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 维护社会秩序\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 维护社会秩序"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:39"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:39", title: "第六课 提升法治素养", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 维护社会秩序\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 维护社会秩序"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:40"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:40", title: "单元思考与行动", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 维护社会秩序\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 维护社会秩序"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:41"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:41", title: "第七课 追求自由平等", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 勇担社会责任\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 勇担社会责任"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:42"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:42", title: "第八课 维护公平正义", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 勇担社会责任\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 勇担社会责任"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:43"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:43", title: "第九课 积极奉献社会", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 勇担社会责任\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 勇担社会责任"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:44"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:44", title: "单元思考与行动", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 勇担社会责任\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 勇担社会责任"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:45"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:45", title: "第十课 国家利益至上", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 维护国家利益\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 维护国家利益"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:46"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:46", title: "第十一课 军强才能国安", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 维护国家利益\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 维护国家利益"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:47"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:47", title: "第十二课 树立总体国家安全观", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 维护国家利益\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 维护国家利益"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:48"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:48", title: "单元思考与行动", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 维护国家利益\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 维护国家利益"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:49"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:49", title: "第一课 维护宪法权威", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第一单元 坚持宪法至上\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第一单元 坚持宪法至上"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:50"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:50", title: "第二课 保障宪法实施", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第一单元 坚持宪法至上\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第一单元 坚持宪法至上"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:51"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:51", title: "第三课 公民权利", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第二单元 理解权利义务\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第二单元 理解权利义务"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:52"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:52", title: "第四课 公民义务", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第二单元 理解权利义务\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第二单元 理解权利义务"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:53"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:53", title: "第五课 我国的政治和经济制度", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 人民当家作主\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 人民当家作主"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:54"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:54", title: "第六课 我国国家机构", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 人民当家作主\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 人民当家作主"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:55"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:55", title: "第七课 尊重自由平等", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第四单元 崇尚法治精神\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第四单元 崇尚法治精神"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:56"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:56", title: "第八课 维护公平正义", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第四单元 崇尚法治精神\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第四单元 崇尚法治精神"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:57"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:57", title: "第一课 踏上强国之路", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第一单元 富强与创新\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第一单元 富强与创新"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:58"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:58", title: "第二课 创新驱动发展", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第一单元 富强与创新\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第一单元 富强与创新"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:59"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:59", title: "第三课 追求民主价值", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第二单元 民主与法治\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第二单元 民主与法治"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:60"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:60", title: "第四课 建设法治中国", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第二单元 民主与法治\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第二单元 民主与法治"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:61"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:61", title: "第五课 守望精神家园", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第三单元 文明与家园\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第三单元 文明与家园"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:62"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:62", title: "第六课 建设美丽中国", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第三单元 文明与家园\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第三单元 文明与家园"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:63"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:63", title: "第七课 中华一家亲", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第四单元 和谐与梦想\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第四单元 和谐与梦想"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:64"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:64", title: "第八课 中国人 中国梦", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第四单元 和谐与梦想\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第四单元 和谐与梦想"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:65"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:65", title: "第一课 同住地球村", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第一单元 我们共同的世界\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第一单元 我们共同的世界"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:66"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:66", title: "第二课 构建人类命运共同体", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第一单元 我们共同的世界\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第一单元 我们共同的世界"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:67"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:67", title: "第三课 与世界紧相连", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第二单元 世界舞台上的中国\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第二单元 世界舞台上的中国"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:68"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:68", title: "第四课 与世界共发展", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第二单元 世界舞台上的中国\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第二单元 世界舞台上的中国"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:69"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:69", title: "第五课 少年的担当", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 走向未来的少年\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 走向未来的少年"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:70"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:70", title: "第六课 我的毕业季", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 走向未来的少年\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 走向未来的少年"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:71"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:71", title: "第七课 从这里出发", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 走向未来的少年\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 走向未来的少年"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:72"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:72", title: "“交往沟通”专题", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:73"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:73", title: "“人际交往的品质”专题", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:74"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:74", title: "“心中有法”专题", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:75"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:75", title: "“成长中的我”专题", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:76"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:76", title: "“新闻时事”专题", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:77"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:77", title: "中考复习", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课"};

MERGE (n:SectionMiddle {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:78"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:78", title: "其他专题", description: "", subject: "SB0309", type: "SectionMiddle", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:01"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:01", title: "第1课 开开心心上学去", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元  我是小学生啦\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元  我是小学生啦"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:02"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:02", title: "第2课 我向国旗敬个礼", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元  我是小学生啦\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元  我是小学生啦"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:03"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:03", title: "第3课 这是我们的校园", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元  我是小学生啦\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元  我是小学生啦"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:04"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:04", title: "第4课 平平安安回家来", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元  我是小学生啦\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元  我是小学生啦"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:05"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:05", title: "第5课 老师，您好！", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 过好校园生活\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 过好校园生活"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:06"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:06", title: "第6课 拉拉手，交朋友", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 过好校园生活\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 过好校园生活"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:07"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:07", title: "第7课 上课了，好好学", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 过好校园生活\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 过好校园生活"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:08"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:08", title: "第8课 课余生活真丰富", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 过好校园生活\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 过好校园生活"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:09"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:09", title: "第9课 作息有规律", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 养成良好习惯\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 养成良好习惯"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:10"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:10", title: "第10课 吃饭有讲究", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 养成良好习惯\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 养成良好习惯"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:11"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:11", title: "第11课 对人有礼貌", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 养成良好习惯\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 养成良好习惯"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:12"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:12", title: "第12课 玩也有学问", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 养成良好习惯\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 养成良好习惯"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:13"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:13", title: "第13课 我们小点儿声", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 我们讲文明\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 我们讲文明"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:14"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:14", title: "第14课 人人爱护公物", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 我们讲文明\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 我们讲文明"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:15"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:15", title: "第15课 我们不乱扔", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 我们讲文明\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 我们讲文明"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:16"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:16", title: "第16课 大家排好队", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 我们讲文明\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 我们讲文明"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:17"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:17", title: "第1课 有个新目标", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第一单元  我有新面貌\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第一单元  我有新面貌"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:18"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:18", title: "第2课 做事要仔细", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第一单元  我有新面貌\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第一单元  我有新面貌"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:19"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:19", title: "第3课 错了就要改", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第一单元  我有新面貌\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第一单元  我有新面貌"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:20"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:20", title: "第4课 我们有精神", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第一单元  我有新面貌\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第一单元  我有新面貌"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:21"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:21", title: "第5课 和大家在一起", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第二单元  我们一起长大\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第二单元  我们一起长大"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:22"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:22", title: "第6课 请帮我一下", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第二单元  我们一起长大\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第二单元  我们一起长大"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:23"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:23", title: "第7课 我们爱分享", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第二单元  我们一起长大\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第二单元  我们一起长大"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:24"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:24", title: "第8课 大家来合作", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第二单元  我们一起长大\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第二单元  我们一起长大"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:25"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:25", title: "第9课 这是我的家", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第三单元  幸福一家人\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第三单元  幸福一家人"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:26"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:26", title: "第10课 相亲相爱一家人", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第三单元  幸福一家人\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第三单元  幸福一家人"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:27"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:27", title: "第11课 让我自己来整理", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第三单元  幸福一家人\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第三单元  幸福一家人"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:28"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:28", title: "第12课 学做家务活", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第三单元  幸福一家人\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第三单元  幸福一家人"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:29"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:29", title: "第13课 快乐儿童节", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第四单元  争做中国好儿童\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第四单元  争做中国好儿童"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:30"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:30", title: "第14课 光荣的少先队", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第四单元  争做中国好儿童\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第四单元  争做中国好儿童"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:31"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:31", title: "第15课 戴上红领巾", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第四单元  争做中国好儿童\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第四单元  争做中国好儿童"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:32"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:32", title: "第16课 学先锋 做先锋", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0201", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"一年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第四单元  争做中国好儿童\"}", CJ_academicTerm: "小学", CJ_grade: "一年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第四单元  争做中国好儿童"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:33"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:33", title: "第1课 假期有收获", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元 过好节假日\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元 过好节假日"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:34"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:34", title: "第2课 教师节快乐", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元 过好节假日\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元 过好节假日"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:35"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:35", title: "第3课 团团圆圆过中秋", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元 过好节假日\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元 过好节假日"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:36"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:36", title: "第4课 欢欢喜喜庆国庆", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元 过好节假日\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元 过好节假日"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:37"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:37", title: "第5课 这是我们班", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 我爱我们班\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 我爱我们班"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:38"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:38", title: "第6课 班级生活有规则", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 我爱我们班\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 我爱我们班"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:39"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:39", title: "第7课 我是班级值日生", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 我爱我们班\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 我爱我们班"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:40"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:40", title: "第8课 我为班级作贡献", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 我爱我们班\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 我爱我们班"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:41"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:41", title: "第9课 我爱家乡山和水", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 我的家乡美\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 我的家乡美"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:42"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:42", title: "第10课 家乡物产养育我", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 我的家乡美\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 我的家乡美"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:43"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:43", title: "第11课 可亲可敬的家乡人", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 我的家乡美\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 我的家乡美"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:44"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:44", title: "第12课 家乡新变化", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 我的家乡美\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 我的家乡美"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:45"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:45", title: "第13课 美丽中国我们的家", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 我爱我们的祖国\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 我爱我们的祖国"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:46"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:46", title: "第14课 我们都是中国人", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 我爱我们的祖国\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 我爱我们的祖国"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:47"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:47", title: "第15课 红红火火中国年", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 我爱我们的祖国\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 我爱我们的祖国"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:48"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:48", title: "第16课 祖国，我为您自豪", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 我爱我们的祖国\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 我爱我们的祖国"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:49"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:49", title: "1 挑战第一次", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第一单元 让我试试看\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第一单元 让我试试看"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:50"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:50", title: "2 学做“快乐鸟”", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第一单元 让我试试看\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第一单元 让我试试看"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:51"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:51", title: "3 做个“开心果”", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第一单元 让我试试看\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第一单元 让我试试看"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:52"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:52", title: "4 试种一粒籽", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第一单元 让我试试看\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第一单元 让我试试看"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:53"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:53", title: "5 健康游戏我常玩", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第二单元 我们好好玩\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第二单元 我们好好玩"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:54"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:54", title: "6 传统游戏我会玩", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第二单元 我们好好玩\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第二单元 我们好好玩"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:55"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:55", title: "7 我们有新玩法", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第二单元 我们好好玩\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第二单元 我们好好玩"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:56"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:56", title: "8 安全地玩", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第二单元 我们好好玩\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第二单元 我们好好玩"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:57"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:57", title: "9 小水滴的诉说", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 绿色小卫士\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 绿色小卫士"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:58"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:58", title: "10 清新空气是个宝", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 绿色小卫士\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 绿色小卫士"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:59"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:59", title: "11 我是一张纸", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 绿色小卫士\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 绿色小卫士"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:60"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:60", title: "12 我的环保小搭档", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 绿色小卫士\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 绿色小卫士"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:61"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:61", title: "13 我能行", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第四单元 我会努力的\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第四单元 我会努力的"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:62"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:62", title: "14 学习有方法", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第四单元 我会努力的\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第四单元 我会努力的"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:63"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:63", title: "15 坚持才会有收获", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第四单元 我会努力的\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第四单元 我会努力的"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:64"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:64", title: "16 奖励一下自己", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0202", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"二年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第四单元 我会努力的\"}", CJ_academicTerm: "小学", CJ_grade: "二年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第四单元 我会努力的"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:65"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:65", title: "第1课 学习伴我成长", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元 做学习的主人\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元 做学习的主人"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:66"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:66", title: "第2课 我学习，我快乐", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元 做学习的主人\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元 做学习的主人"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:67"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:67", title: "第3课 学习有方法", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元 做学习的主人\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元 做学习的主人"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:68"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:68", title: "第4课 科技力量大", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 爱科学 学科学\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 爱科学 学科学"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:69"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:69", title: "第5课 走近科学家", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 爱科学 学科学\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 爱科学 学科学"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:70"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:70", title: "第6课 从小爱科学", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 爱科学 学科学\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 爱科学 学科学"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:71"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:71", title: "第7课 走近我们的老师", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 在集体中成长\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 在集体中成长"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:72"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:72", title: "第8课 同学相伴", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 在集体中成长\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 在集体中成长"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:73"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:73", title: "第9课 让我们的学校更美好", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 在集体中成长\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 在集体中成长"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:74"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:74", title: "第10课 公共场所的文明素养", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 公共生活靠大家\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 公共生活靠大家"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:75"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:75", title: "第11课 我们都是热心人", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 公共生活靠大家\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 公共生活靠大家"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:76"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:76", title: "第12课 生活离不开规则", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 公共生活靠大家\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 公共生活靠大家"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:77"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:77", title: "第13课 安全记心上", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 公共生活靠大家\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 公共生活靠大家"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:78"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:78", title: "1.我是独特的", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第一单元 我和我的同伴\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第一单元 我和我的同伴"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:79"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:79", title: "2.不一样的你我他", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第一单元 我和我的同伴\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第一单元 我和我的同伴"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:80"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:80", title: "3.我很诚实", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第一单元 我和我的同伴\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第一单元 我和我的同伴"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:81"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:81", title: "4.同学相伴", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第一单元 我和我的同伴\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第一单元 我和我的同伴"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:82"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:82", title: "5.我的家在这里", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第二单元 我在这里长大\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第二单元 我在这里长大"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:83"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:83", title: "6.我家的好邻居", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第二单元 我在这里长大\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第二单元 我在这里长大"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:84"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:84", title: "7.请到我的家乡来", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第二单元 我在这里长大\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第二单元 我在这里长大"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:85"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:85", title: "8.大家的“朋友”", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 我们的公共生活\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 我们的公共生活"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:86"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:86", title: "9.生活离不开规则", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 我们的公共生活\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 我们的公共生活"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:87"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:87", title: "10.爱心的传递者", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 我们的公共生活\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 我们的公共生活"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:88"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:88", title: "11.四通八达的交通", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第四单元 多样的交通和通信\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第四单元 多样的交通和通信"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:89"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:89", title: "12.慧眼看交通", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第四单元 多样的交通和通信\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第四单元 多样的交通和通信"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:90"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:90", title: "13.万里一线牵", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0203", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"三年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第四单元 多样的交通和通信\"}", CJ_academicTerm: "小学", CJ_grade: "三年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第四单元 多样的交通和通信"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:91"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:91", title: "1 我们班四岁了", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第一单元 与班级共成长\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第一单元 与班级共成长"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:92"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:92", title: "2 我们的班规我们订", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第一单元 与班级共成长\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第一单元 与班级共成长"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:93"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:93", title: "3 我们班 他们班", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第一单元 与班级共成长\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第一单元 与班级共成长"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:94"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:94", title: "4 少让父母为我操心", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第二单元 为父母分担\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第二单元 为父母分担"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:95"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:95", title: "5 这些事我来做", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第二单元 为父母分担\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第二单元 为父母分担"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:96"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:96", title: "6 我的家庭贡献与责任", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第二单元 为父母分担\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第二单元 为父母分担"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:97"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:97", title: "7 健康看电视", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第三单元 信息万花筒\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第三单元 信息万花筒"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:98"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:98", title: "8 网络新世界", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第三单元 信息万花筒\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第三单元 信息万花筒"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:99"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:99", title: "9 正确认识广告", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第三单元 信息万花筒\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第三单元 信息万花筒"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:100"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:100", title: "10 我们所了解的环境污染", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第四单元 让生活多一些绿色\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第四单元 让生活多一些绿色"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:101"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:101", title: "11 变废为宝有妙招", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第四单元 让生活多一些绿色\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第四单元 让生活多一些绿色"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:102"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:102", title: "12 低碳生活每一天", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第四单元 让生活多一些绿色\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第四单元 让生活多一些绿色"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:103"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:103", title: "1 我们的好朋友", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第一单元 同伴与交往\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第一单元 同伴与交往"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:104"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:104", title: "2 说话要算数", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第一单元 同伴与交往\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第一单元 同伴与交往"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:105"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:105", title: "3 当冲突发生", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第一单元 同伴与交往\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第一单元 同伴与交往"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:106"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:106", title: "4 买东西的学问", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第二单元 做聪明的消费者\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第二单元 做聪明的消费者"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:107"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:107", title: "5 合理消费", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第二单元 做聪明的消费者\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第二单元 做聪明的消费者"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:108"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:108", title: "6 有多少浪费本可避免", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第二单元 做聪明的消费者\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第二单元 做聪明的消费者"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:109"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:109", title: "7 我们的衣食之源", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 美好生活哪里来\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 美好生活哪里来"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:110"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:110", title: "8 这些东西哪里来", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 美好生活哪里来\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 美好生活哪里来"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:111"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:111", title: "9 生活离不开他们", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 美好生活哪里来\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 美好生活哪里来"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:112"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:112", title: "10 我们当地的风俗", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第四单元 感受家乡文化 关心家乡发展\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第四单元 感受家乡文化 关心家乡发展"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:113"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:113", title: "11 多姿多彩的民间艺术", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第四单元 感受家乡文化 关心家乡发展\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第四单元 感受家乡文化 关心家乡发展"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:114"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:114", title: "12 家乡的喜与忧", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0204", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"四年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第四单元 感受家乡文化 关心家乡发展\"}", CJ_academicTerm: "小学", CJ_grade: "四年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第四单元 感受家乡文化 关心家乡发展"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:115"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:115", title: "1 自主选择课余生活", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0205", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"五年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第一单元 面对成长中的新问题\"}", CJ_academicTerm: "小学", CJ_grade: "五年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第一单元 面对成长中的新问题"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:116"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:116", title: "2 学会沟通交流", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0205", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"五年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第一单元 面对成长中的新问题\"}", CJ_academicTerm: "小学", CJ_grade: "五年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第一单元 面对成长中的新问题"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:117"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:117", title: "3 主动拒绝烟酒与毒品", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0205", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"五年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第一单元 面对成长中的新问题\"}", CJ_academicTerm: "小学", CJ_grade: "五年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第一单元 面对成长中的新问题"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:118"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:118", title: "4 选举产生班委会", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0205", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"五年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第二单元 我们是班级的主人\"}", CJ_academicTerm: "小学", CJ_grade: "五年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第二单元 我们是班级的主人"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:119"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:119", title: "5 协商决定班级事务", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0205", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"五年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第二单元 我们是班级的主人\"}", CJ_academicTerm: "小学", CJ_grade: "五年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第二单元 我们是班级的主人"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:120"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:120", title: "6 我们神圣的国土", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0205", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"五年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第三单元 我们的国土  我们的家园\"}", CJ_academicTerm: "小学", CJ_grade: "五年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第三单元 我们的国土  我们的家园"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:121"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:121", title: "7 中华民族一家亲", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0205", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"五年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第三单元 我们的国土  我们的家园\"}", CJ_academicTerm: "小学", CJ_grade: "五年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第三单元 我们的国土  我们的家园"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:122"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:122", title: "8 美丽文字  民族瑰宝", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0205", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"五年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第四单元 骄人祖先  灿烂文化\"}", CJ_academicTerm: "小学", CJ_grade: "五年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第四单元 骄人祖先  灿烂文化"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:123"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:123", title: "9 古代科技  耀我中华", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0205", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"五年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第四单元 骄人祖先  灿烂文化\"}", CJ_academicTerm: "小学", CJ_grade: "五年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第四单元 骄人祖先  灿烂文化"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:124"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:124", title: "10 传统美德  源远流长", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0205", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"五年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第四单元 骄人祖先  灿烂文化\"}", CJ_academicTerm: "小学", CJ_grade: "五年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第四单元 骄人祖先  灿烂文化"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:125"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:125", title: "1 读懂彼此的心", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0205", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"五年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第一单元 我们一家人\"}", CJ_academicTerm: "小学", CJ_grade: "五年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第一单元 我们一家人"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:126"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:126", title: "2 让我们的家更美好", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0205", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"五年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第一单元 我们一家人\"}", CJ_academicTerm: "小学", CJ_grade: "五年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第一单元 我们一家人"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:127"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:127", title: "3 弘扬优秀家风", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0205", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"五年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第一单元 我们一家人\"}", CJ_academicTerm: "小学", CJ_grade: "五年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第一单元 我们一家人"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:128"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:128", title: "4 我们的公共生活", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0205", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"五年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第二单元 公共生活靠大家\"}", CJ_academicTerm: "小学", CJ_grade: "五年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第二单元 公共生活靠大家"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:129"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:129", title: "5 建立良好的公共秩序", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0205", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"五年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第二单元 公共生活靠大家\"}", CJ_academicTerm: "小学", CJ_grade: "五年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第二单元 公共生活靠大家"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:130"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:130", title: "6 我参与 我奉献", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0205", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"五年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第二单元 公共生活靠大家\"}", CJ_academicTerm: "小学", CJ_grade: "五年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第二单元 公共生活靠大家"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:131"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:131", title: "7 不甘屈辱 奋勇抗争", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0205", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"五年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 百年追梦 复兴中华\"}", CJ_academicTerm: "小学", CJ_grade: "五年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 百年追梦 复兴中华"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:132"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:132", title: "8 推翻帝制 民族觉醒", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0205", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"五年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 百年追梦 复兴中华\"}", CJ_academicTerm: "小学", CJ_grade: "五年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 百年追梦 复兴中华"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:133"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:133", title: "9 中国有了共产党", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0205", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"五年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 百年追梦 复兴中华\"}", CJ_academicTerm: "小学", CJ_grade: "五年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 百年追梦 复兴中华"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:134"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:134", title: "10 夺取抗日战争和人民解放战争的胜利", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0205", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"五年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 百年追梦 复兴中华\"}", CJ_academicTerm: "小学", CJ_grade: "五年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 百年追梦 复兴中华"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:135"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:135", title: "11 屹立在世界的东方", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0205", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"五年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 百年追梦 复兴中华\"}", CJ_academicTerm: "小学", CJ_grade: "五年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 百年追梦 复兴中华"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:136"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:136", title: "12 富起来到强起来", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0205", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"五年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 百年追梦 复兴中华\"}", CJ_academicTerm: "小学", CJ_grade: "五年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 百年追梦 复兴中华"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:137"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:137", title: "1 感受生活中的法律", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0206", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"六年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第一单元 我们的守护者\"}", CJ_academicTerm: "小学", CJ_grade: "六年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第一单元 我们的守护者"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:138"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:138", title: "2 宪法是根本法", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0206", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"六年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第一单元 我们的守护者\"}", CJ_academicTerm: "小学", CJ_grade: "六年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第一单元 我们的守护者"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:139"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:139", title: "3 公民意味着什么", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0206", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"六年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第二单元 我们是公民\"}", CJ_academicTerm: "小学", CJ_grade: "六年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第二单元 我们是公民"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:140"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:140", title: "4 公民的基本权利和义务", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0206", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"六年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第二单元 我们是公民\"}", CJ_academicTerm: "小学", CJ_grade: "六年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第二单元 我们是公民"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:141"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:141", title: "5 国家机构有哪些", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0206", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"六年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第三单元 我们的国家机构\"}", CJ_academicTerm: "小学", CJ_grade: "六年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第三单元 我们的国家机构"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:142"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:142", title: "6 人大代表为人民", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0206", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"六年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第三单元 我们的国家机构\"}", CJ_academicTerm: "小学", CJ_grade: "六年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第三单元 我们的国家机构"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:143"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:143", title: "7 权力受到制约和监督", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0206", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"六年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第三单元 我们的国家机构\"}", CJ_academicTerm: "小学", CJ_grade: "六年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第三单元 我们的国家机构"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:144"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:144", title: "8 我们受特殊保护", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0206", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"六年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第四单元 法律保护我们健康成长\"}", CJ_academicTerm: "小学", CJ_grade: "六年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第四单元 法律保护我们健康成长"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:145"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:145", title: "9 知法守法依法维权", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0206", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"六年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第四单元 法律保护我们健康成长\"}", CJ_academicTerm: "小学", CJ_grade: "六年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第四单元 法律保护我们健康成长"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:146"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:146", title: "1 学会尊重", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0206", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"六年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第一单元 完善自我 健康成长\"}", CJ_academicTerm: "小学", CJ_grade: "六年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第一单元 完善自我 健康成长"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:147"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:147", title: "2 学会宽容", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0206", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"六年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第一单元 完善自我 健康成长\"}", CJ_academicTerm: "小学", CJ_grade: "六年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第一单元 完善自我 健康成长"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:148"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:148", title: "3 学会反思", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0206", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"六年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第一单元 完善自我 健康成长\"}", CJ_academicTerm: "小学", CJ_grade: "六年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第一单元 完善自我 健康成长"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:149"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:149", title: "4 地球——我们的家园", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0206", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"六年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第二单元 爱护地球 共同责任\"}", CJ_academicTerm: "小学", CJ_grade: "六年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第二单元 爱护地球 共同责任"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:150"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:150", title: "5 应对自然灾害", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0206", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"六年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第二单元 爱护地球 共同责任\"}", CJ_academicTerm: "小学", CJ_grade: "六年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第二单元 爱护地球 共同责任"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:151"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:151", title: "6 探访古代文明", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0206", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"六年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 多样文明 多彩生活\"}", CJ_academicTerm: "小学", CJ_grade: "六年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 多样文明 多彩生活"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:152"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:152", title: "7 多元文化 多样魅力", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0206", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"六年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 多样文明 多彩生活\"}", CJ_academicTerm: "小学", CJ_grade: "六年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 多样文明 多彩生活"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:153"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:153", title: "8 科技发展 造福人类", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0206", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"六年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第四单元 让世界更美好\"}", CJ_academicTerm: "小学", CJ_grade: "六年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第四单元 让世界更美好"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:154"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:154", title: "9 日益重要的国际组织", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0206", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"六年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第四单元 让世界更美好\"}", CJ_academicTerm: "小学", CJ_grade: "六年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第四单元 让世界更美好"};

MERGE (n:SectionPrimary {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:155"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:155", title: "10 我们爱和平", description: "", subject: "SB0309", type: "SectionPrimary", applicableLevel: "OB0206", contentJson: "{\"academicTerm\": \"小学\", \"grade\": \"六年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第四单元 让世界更美好\"}", CJ_academicTerm: "小学", CJ_grade: "六年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第四单元 让世界更美好"};

MERGE (n:ChapterMiddle {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:01"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:01", title: "第一单元 少年有梦", description: "", subject: "SB0309", type: "ChapterMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:ChapterMiddle {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:02"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:02", title: "第二单元 成长的时空", description: "", subject: "SB0309", type: "ChapterMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:ChapterMiddle {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:03"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:03", title: "第三单元 珍爱我们的生命", description: "", subject: "SB0309", type: "ChapterMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:ChapterMiddle {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:04"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:04", title: "第四单元 追求美好人生", description: "", subject: "SB0309", type: "ChapterMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:ChapterMiddle {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:05"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:05", title: "第一单元 珍惜青春时光", description: "", subject: "SB0309", type: "ChapterMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new"};

MERGE (n:ChapterMiddle {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:06"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:06", title: "第二单元 焕发青春活力", description: "", subject: "SB0309", type: "ChapterMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new"};

MERGE (n:ChapterMiddle {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:07"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:07", title: "第三单元 传承中华优秀传统文化", description: "", subject: "SB0309", type: "ChapterMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new"};

MERGE (n:ChapterMiddle {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:08"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:08", title: "第四单元 生活在法治社会", description: "", subject: "SB0309", type: "ChapterMiddle", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new"};

MERGE (n:ChapterMiddle {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:09"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:09", title: "第一单元走进社会生活", description: "", subject: "SB0309", type: "ChapterMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:ChapterMiddle {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:10"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:10", title: "第二单元 维护社会秩序", description: "", subject: "SB0309", type: "ChapterMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:ChapterMiddle {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:11"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:11", title: "第三单元 勇担社会责任", description: "", subject: "SB0309", type: "ChapterMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:ChapterMiddle {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:12"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:12", title: "第四单元 维护国家利益", description: "", subject: "SB0309", type: "ChapterMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:ChapterMiddle {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:13"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:13", title: "第一单元 坚持宪法至上", description: "", subject: "SB0309", type: "ChapterMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:ChapterMiddle {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:14"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:14", title: "第二单元 理解权利义务", description: "", subject: "SB0309", type: "ChapterMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:ChapterMiddle {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:15"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:15", title: "第三单元 人民当家作主", description: "", subject: "SB0309", type: "ChapterMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:ChapterMiddle {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:16"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:16", title: "第四单元 崇尚法治精神", description: "", subject: "SB0309", type: "ChapterMiddle", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:ChapterMiddle {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:17"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:17", title: "第一单元 富强与创新", description: "", subject: "SB0309", type: "ChapterMiddle", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old"};

MERGE (n:ChapterMiddle {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:18"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:18", title: "第二单元 民主与法治", description: "", subject: "SB0309", type: "ChapterMiddle", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old"};

MERGE (n:ChapterMiddle {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:19"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:19", title: "第三单元 文明与家园", description: "", subject: "SB0309", type: "ChapterMiddle", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old"};

MERGE (n:ChapterMiddle {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:20"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:20", title: "第四单元 和谐与梦想", description: "", subject: "SB0309", type: "ChapterMiddle", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old"};

MERGE (n:ChapterMiddle {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:21"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:21", title: "第一单元 我们共同的世界", description: "", subject: "SB0309", type: "ChapterMiddle", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:ChapterMiddle {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:22"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:22", title: "第二单元 世界舞台上的中国", description: "", subject: "SB0309", type: "ChapterMiddle", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:ChapterMiddle {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:23"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:23", title: "第三单元 走向未来的少年", description: "", subject: "SB0309", type: "ChapterMiddle", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:ChapterMiddle {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:24"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:24", title: "专题复习课", description: "", subject: "SB0309", type: "ChapterMiddle", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:01"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:01", title: "奏响中学序曲", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元 少年有梦\", \"section\": \"第一课 开启初中生活\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元 少年有梦", CJ_section: "第一课 开启初中生活"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:02"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:02", title: "规划初中生活", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元 少年有梦\", \"section\": \"第一课 开启初中生活\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元 少年有梦", CJ_section: "第一课 开启初中生活"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:03"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:03", title: "认识自己", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元 少年有梦\", \"section\": \"第二课 正确认识自我\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元 少年有梦", CJ_section: "第二课 正确认识自我"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:04"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:04", title: "做更好的自己", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元 少年有梦\", \"section\": \"第二课 正确认识自我\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元 少年有梦", CJ_section: "第二课 正确认识自我"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:05"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:05", title: "做有梦想的少年", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元 少年有梦\", \"section\": \"第三课 梦想始于当下\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元 少年有梦", CJ_section: "第三课 梦想始于当下"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:06"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:06", title: "学习成就梦想", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元 少年有梦\", \"section\": \"第三课 梦想始于当下\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元 少年有梦", CJ_section: "第三课 梦想始于当下"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:07"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:07", title: "家的意味", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 成长的时空\", \"section\": \"第四课 幸福和睦的家庭\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 成长的时空", CJ_section: "第四课 幸福和睦的家庭"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:08"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:08", title: "让家更美好", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 成长的时空\", \"section\": \"第四课 幸福和睦的家庭\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 成长的时空", CJ_section: "第四课 幸福和睦的家庭"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:09"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:09", title: "走近老师", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 成长的时空\", \"section\": \"第五课 和谐的师生关系\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 成长的时空", CJ_section: "第五课 和谐的师生关系"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:10"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:10", title: "珍惜师生情谊", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 成长的时空\", \"section\": \"第五课 和谐的师生关系\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 成长的时空", CJ_section: "第五课 和谐的师生关系"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:11"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:11", title: "友谊的真谛", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 成长的时空\", \"section\": \"第六课 友谊之树常青\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 成长的时空", CJ_section: "第六课 友谊之树常青"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:12"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:12", title: "交友的智慧", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 成长的时空\", \"section\": \"第六课 友谊之树常青\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 成长的时空", CJ_section: "第六课 友谊之树常青"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:13"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:13", title: "集体生活成就我", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 成长的时空\", \"section\": \"第七课 在集体中成长\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 成长的时空", CJ_section: "第七课 在集体中成长"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:14"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:14", title: "共建美好集体", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 成长的时空\", \"section\": \"第七课 在集体中成长\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 成长的时空", CJ_section: "第七课 在集体中成长"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:15"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:15", title: "认识生命", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 珍爱我们的生命\", \"section\": \"第八课 生命可贵\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 珍爱我们的生命", CJ_section: "第八课 生命可贵"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:16"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:16", title: "敬畏生命", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 珍爱我们的生命\", \"section\": \"第八课 生命可贵\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 珍爱我们的生命", CJ_section: "第八课 生命可贵"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:17"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:17", title: "增强安全意识", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 珍爱我们的生命\", \"section\": \"第九课 守护生命安全\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 珍爱我们的生命", CJ_section: "第九课 守护生命安全"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:18"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:18", title: "提高防护能力", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 珍爱我们的生命\", \"section\": \"第九课 守护生命安全\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 珍爱我们的生命", CJ_section: "第九课 守护生命安全"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:19"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:19", title: "爱护身体", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 珍爱我们的生命\", \"section\": \"第十课 保持身心健康\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 珍爱我们的生命", CJ_section: "第十课 保持身心健康"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:20"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:20", title: "滋养心灵", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 珍爱我们的生命\", \"section\": \"第十课 保持身心健康\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 珍爱我们的生命", CJ_section: "第十课 保持身心健康"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:21"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:21", title: "探问人生目标", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 追求美好人生\", \"section\": \"第十一课 确立人生目标\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 追求美好人生", CJ_section: "第十一课 确立人生目标"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:22"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:22", title: "树立正确的人生目标", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 追求美好人生\", \"section\": \"第十一课 确立人生目标\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 追求美好人生", CJ_section: "第十一课 确立人生目标"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:23"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:23", title: "拥有积极的人生态度", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 追求美好人生\", \"section\": \"第十二课 端正人生态度\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 追求美好人生", CJ_section: "第十二课 端正人生态度"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:24"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:24", title: "正确对待顺境和逆境", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 追求美好人生\", \"section\": \"第十二课 端正人生态度\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 追求美好人生", CJ_section: "第十二课 端正人生态度"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:25"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:25", title: "在劳动中创造人生价值", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 追求美好人生\", \"section\": \"第十三课 实现人生价值\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 追求美好人生", CJ_section: "第十三课 实现人生价值"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:26"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:26", title: "在奉献中成就精彩人生", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 追求美好人生\", \"section\": \"第十三课 实现人生价值\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 追求美好人生", CJ_section: "第十三课 实现人生价值"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:27"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:27", title: "青春的邀约", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第一单元  珍惜青春时光\", \"section\": \"第一课  青春正当时\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第一单元  珍惜青春时光", CJ_section: "第一课  青春正当时"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:28"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:28", title: "男生女生", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第一单元  珍惜青春时光\", \"section\": \"第一课  青春正当时\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第一单元  珍惜青春时光", CJ_section: "第一课  青春正当时"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:29"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:29", title: "学会自我保护", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第一单元  珍惜青春时光\", \"section\": \"第一课  青春正当时\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第一单元  珍惜青春时光", CJ_section: "第一课  青春正当时"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:30"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:30", title: "揭开情绪的面纱", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第一单元  珍惜青春时光\", \"section\": \"第二课  做情绪情感的主人\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第一单元  珍惜青春时光", CJ_section: "第二课  做情绪情感的主人"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:31"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:31", title: "学会管理情绪", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第一单元  珍惜青春时光\", \"section\": \"第二课  做情绪情感的主人\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第一单元  珍惜青春时光", CJ_section: "第二课  做情绪情感的主人"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:32"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:32", title: "品味美好情感", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第一单元  珍惜青春时光\", \"section\": \"第二课  做情绪情感的主人\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第一单元  珍惜青春时光", CJ_section: "第二课  做情绪情感的主人"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:33"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:33", title: "人须有自尊", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第二单元  焕发青春活力\", \"section\": \"第三课  人贵自尊\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第二单元  焕发青春活力", CJ_section: "第三课  人贵自尊"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:34"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:34", title: "做自尊的人", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第二单元  焕发青春活力\", \"section\": \"第三课  人贵自尊\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第二单元  焕发青春活力", CJ_section: "第三课  人贵自尊"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:35"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:35", title: "人要有自信", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第二单元  焕发青春活力\", \"section\": \"第四课  自信给人力量\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第二单元  焕发青春活力", CJ_section: "第四课  自信给人力量"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:36"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:36", title: "做自信的人", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第二单元  焕发青春活力\", \"section\": \"第四课  自信给人力量\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第二单元  焕发青春活力", CJ_section: "第四课  自信给人力量"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:37"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:37", title: "人要自强", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第二单元  焕发青春活力\", \"section\": \"第五课  人生当自强\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第二单元  焕发青春活力", CJ_section: "第五课  人生当自强"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:38"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:38", title: "做自强不息的中国人", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第二单元  焕发青春活力\", \"section\": \"第五课  人生当自强\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第二单元  焕发青春活力", CJ_section: "第五课  人生当自强"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:39"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:39", title: "历久弥新的思想理念", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第三单元  传承中华优秀传统文化\", \"section\": \"第六课  传承核心思想理念\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第三单元  传承中华优秀传统文化", CJ_section: "第六课  传承核心思想理念"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:40"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:40", title: "做核心思想理念的传承者", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第三单元  传承中华优秀传统文化\", \"section\": \"第六课  传承核心思想理念\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第三单元  传承中华优秀传统文化", CJ_section: "第六课  传承核心思想理念"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:41"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:41", title: "影响深远的人文精神", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第三单元  传承中华优秀传统文化\", \"section\": \"第七课  弘扬中华人文精神\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第三单元  传承中华优秀传统文化", CJ_section: "第七课  弘扬中华人文精神"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:42"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:42", title: "做中华人文精神的弘扬者", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第三单元  传承中华优秀传统文化\", \"section\": \"第七课  弘扬中华人文精神\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第三单元  传承中华优秀传统文化", CJ_section: "第七课  弘扬中华人文精神"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:43"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:43", title: "薪火相传的传统美德", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第三单元  传承中华优秀传统文化\", \"section\": \"第八课  践行中华传统美德\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第三单元  传承中华优秀传统文化", CJ_section: "第八课  践行中华传统美德"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:44"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:44", title: "做中华传统美德的践行者", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第三单元  传承中华优秀传统文化\", \"section\": \"第八课  践行中华传统美德\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第三单元  传承中华优秀传统文化", CJ_section: "第八课  践行中华传统美德"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:45"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:45", title: "日益完善的法律体系", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第四单元  生活在法治社会\", \"section\": \"第九课  法律为我们护航\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第四单元  生活在法治社会", CJ_section: "第九课  法律为我们护航"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:46"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:46", title: "法律保障生活", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第四单元  生活在法治社会\", \"section\": \"第九课  法律为我们护航\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第四单元  生活在法治社会", CJ_section: "第九课  法律为我们护航"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:47"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:47", title: "认识民法典", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第四单元  生活在法治社会\", \"section\": \"第十课  走近民法典\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第四单元  生活在法治社会", CJ_section: "第十课  走近民法典"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:48"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:48", title: "保护人身权", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第四单元  生活在法治社会\", \"section\": \"第十课  走近民法典\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第四单元  生活在法治社会", CJ_section: "第十课  走近民法典"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:49"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:49", title: "保障财产权", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第四单元  生活在法治社会\", \"section\": \"第十课  走近民法典\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第四单元  生活在法治社会", CJ_section: "第十课  走近民法典"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:50"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:50", title: "法不可违", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第四单元  生活在法治社会\", \"section\": \"第十一课  远离违法犯罪\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第四单元  生活在法治社会", CJ_section: "第十一课  远离违法犯罪"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:51"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:51", title: "犯罪与刑罚", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第四单元  生活在法治社会\", \"section\": \"第十一课  远离违法犯罪\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第四单元  生活在法治社会", CJ_section: "第十一课  远离违法犯罪"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:52"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:52", title: "严于律己", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0301", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"new\", \"chapter\": \"第四单元  生活在法治社会\", \"section\": \"第十一课  远离违法犯罪\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "new", CJ_chapter: "第四单元  生活在法治社会", CJ_section: "第十一课  远离违法犯罪"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:53"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:53", title: "认识社会生活", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元走进社会生活\", \"section\": \"第一课丰富的社会生活\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元走进社会生活", CJ_section: "第一课丰富的社会生活"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:54"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:54", title: "我们都是社会的一员", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元走进社会生活\", \"section\": \"第一课丰富的社会生活\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元走进社会生活", CJ_section: "第一课丰富的社会生活"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:55"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:55", title: "人的社会化", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元走进社会生活\", \"section\": \"第二课在社会中健康成长\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元走进社会生活", CJ_section: "第二课在社会中健康成长"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:56"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:56", title: "养成亲社会行为", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元走进社会生活\", \"section\": \"第二课在社会中健康成长\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元走进社会生活", CJ_section: "第二课在社会中健康成长"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:57"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:57", title: "网络改变世界", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元走进社会生活\", \"section\": \"第三课共建网络美好家园\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元走进社会生活", CJ_section: "第三课共建网络美好家园"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:58"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:58", title: "营造清朗空间", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第一单元走进社会生活\", \"section\": \"第三课共建网络美好家园\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第一单元走进社会生活", CJ_section: "第三课共建网络美好家园"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:59"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:59", title: "维护秩序靠规则", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 维护社会秩序\", \"section\": \"第四课 遵守社会规则\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 维护社会秩序", CJ_section: "第四课 遵守社会规则"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:60"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:60", title: "遵守规则", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 维护社会秩序\", \"section\": \"第四课 遵守社会规则\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 维护社会秩序", CJ_section: "第四课 遵守社会规则"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:61"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:61", title: "文明有礼", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 维护社会秩序\", \"section\": \"第五课 社会生活讲道德\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 维护社会秩序", CJ_section: "第五课 社会生活讲道德"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:62"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:62", title: "诚实守信", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 维护社会秩序\", \"section\": \"第五课 社会生活讲道德\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 维护社会秩序", CJ_section: "第五课 社会生活讲道德"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:63"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:63", title: "友善待人", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 维护社会秩序\", \"section\": \"第五课 社会生活讲道德\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 维护社会秩序", CJ_section: "第五课 社会生活讲道德"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:64"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:64", title: "树立法治观念", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 维护社会秩序\", \"section\": \"第六课 提升法治素养\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 维护社会秩序", CJ_section: "第六课 提升法治素养"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:65"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:65", title: "学会依法办事", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第二单元 维护社会秩序\", \"section\": \"第六课 提升法治素养\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第二单元 维护社会秩序", CJ_section: "第六课 提升法治素养"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:66"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:66", title: "珍视自由", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 勇担社会责任\", \"section\": \"第七课 追求自由平等\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 勇担社会责任", CJ_section: "第七课 追求自由平等"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:67"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:67", title: "践行平等", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 勇担社会责任\", \"section\": \"第七课 追求自由平等\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 勇担社会责任", CJ_section: "第七课 追求自由平等"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:68"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:68", title: "坚守公平", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 勇担社会责任\", \"section\": \"第八课 维护公平正义\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 勇担社会责任", CJ_section: "第八课 维护公平正义"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:69"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:69", title: "守护正义", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 勇担社会责任\", \"section\": \"第八课 维护公平正义\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 勇担社会责任", CJ_section: "第八课 维护公平正义"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:70"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:70", title: "社会责任我担当", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 勇担社会责任\", \"section\": \"第九课 积极奉献社会\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 勇担社会责任", CJ_section: "第九课 积极奉献社会"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:71"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:71", title: "奉献社会我践行", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第三单元 勇担社会责任\", \"section\": \"第九课 积极奉献社会\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第三单元 勇担社会责任", CJ_section: "第九课 积极奉献社会"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:72"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:72", title: "国家利益高于一切", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 维护国家利益\", \"section\": \"第十课 国家利益至上\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 维护国家利益", CJ_section: "第十课 国家利益至上"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:73"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:73", title: "捍卫国家利益", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 维护国家利益\", \"section\": \"第十课 国家利益至上\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 维护国家利益", CJ_section: "第十课 国家利益至上"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:74"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:74", title: "党和人民信赖的英雄军队", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 维护国家利益\", \"section\": \"第十一课 军强才能国安\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 维护国家利益", CJ_section: "第十一课 军强才能国安"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:75"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:75", title: "全面推进国防和军队现代化", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 维护国家利益\", \"section\": \"第十一课 军强才能国安\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 维护国家利益", CJ_section: "第十一课 军强才能国安"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:76"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:76", title: "认识国家安全", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 维护国家利益\", \"section\": \"第十二课 树立总体国家安全观\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 维护国家利益", CJ_section: "第十二课 树立总体国家安全观"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:77"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:77", title: "维护国家安全", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"new\", \"chapter\": \"第四单元 维护国家利益\", \"section\": \"第十二课 树立总体国家安全观\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "new", CJ_chapter: "第四单元 维护国家利益", CJ_section: "第十二课 树立总体国家安全观"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:78"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:78", title: "公民权利的保障书", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第一单元 坚持宪法至上\", \"section\": \"第一课 维护宪法权威\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第一单元 坚持宪法至上", CJ_section: "第一课 维护宪法权威"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:79"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:79", title: "治国安邦的总章程", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第一单元 坚持宪法至上\", \"section\": \"第一课 维护宪法权威\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第一单元 坚持宪法至上", CJ_section: "第一课 维护宪法权威"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:80"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:80", title: "党的主张和人民意志的统一", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第一单元 坚持宪法至上\", \"section\": \"第一课 维护宪法权威\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第一单元 坚持宪法至上", CJ_section: "第一课 维护宪法权威"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:81"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:81", title: "坚持依宪治国", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第一单元 坚持宪法至上\", \"section\": \"第二课 保障宪法实施\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第一单元 坚持宪法至上", CJ_section: "第二课 保障宪法实施"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:82"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:82", title: "加强宪法监督", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第一单元 坚持宪法至上\", \"section\": \"第二课 保障宪法实施\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第一单元 坚持宪法至上", CJ_section: "第二课 保障宪法实施"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:83"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:83", title: "公民基本权利", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第二单元 理解权利义务\", \"section\": \"第三课 公民权利\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第二单元 理解权利义务", CJ_section: "第三课 公民权利"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:84"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:84", title: "依法行使权利", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第二单元 理解权利义务\", \"section\": \"第三课 公民权利\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第二单元 理解权利义务", CJ_section: "第三课 公民权利"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:85"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:85", title: "公民基本义务", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第二单元 理解权利义务\", \"section\": \"第四课 公民义务\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第二单元 理解权利义务", CJ_section: "第四课 公民义务"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:86"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:86", title: "依法履行义务", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第二单元 理解权利义务\", \"section\": \"第四课 公民义务\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第二单元 理解权利义务", CJ_section: "第四课 公民义务"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:87"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:87", title: "基本经济制度", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 人民当家作主\", \"section\": \"第五课 我国的政治和经济制度\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 人民当家作主", CJ_section: "第五课 我国的政治和经济制度"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:88"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:88", title: "根本政治制度", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 人民当家作主\", \"section\": \"第五课 我国的政治和经济制度\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 人民当家作主", CJ_section: "第五课 我国的政治和经济制度"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:89"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:89", title: "基本政治制度", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 人民当家作主\", \"section\": \"第五课 我国的政治和经济制度\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 人民当家作主", CJ_section: "第五课 我国的政治和经济制度"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:90"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:90", title: "国家权力机关", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 人民当家作主\", \"section\": \"第六课 我国国家机构\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 人民当家作主", CJ_section: "第六课 我国国家机构"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:91"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:91", title: "中华人民共和国主席", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 人民当家作主\", \"section\": \"第六课 我国国家机构\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 人民当家作主", CJ_section: "第六课 我国国家机构"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:92"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:92", title: "国家行政机关", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 人民当家作主\", \"section\": \"第六课 我国国家机构\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 人民当家作主", CJ_section: "第六课 我国国家机构"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:93"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:93", title: "国家监察机关", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 人民当家作主\", \"section\": \"第六课 我国国家机构\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 人民当家作主", CJ_section: "第六课 我国国家机构"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:94"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:94", title: "国家司法机关", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 人民当家作主\", \"section\": \"第六课 我国国家机构\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 人民当家作主", CJ_section: "第六课 我国国家机构"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:95"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:95", title: "自由平等的真谛", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第四单元 崇尚法治精神\", \"section\": \"第七课 尊重自由平等\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第四单元 崇尚法治精神", CJ_section: "第七课 尊重自由平等"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:96"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:96", title: "自由平等的追求", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第四单元 崇尚法治精神\", \"section\": \"第七课 尊重自由平等\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第四单元 崇尚法治精神", CJ_section: "第七课 尊重自由平等"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:97"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:97", title: "公平正义的价值", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第四单元 崇尚法治精神\", \"section\": \"第八课 维护公平正义\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第四单元 崇尚法治精神", CJ_section: "第八课 维护公平正义"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:98"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:98", title: "公平正义的守护", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0302", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第四单元 崇尚法治精神\", \"section\": \"第八课 维护公平正义\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第四单元 崇尚法治精神", CJ_section: "第八课 维护公平正义"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:99"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:99", title: "坚持改革开放", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第一单元 富强与创新\", \"section\": \"第一课 踏上强国之路\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第一单元 富强与创新", CJ_section: "第一课 踏上强国之路"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:100"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:100", title: "走向共同富裕", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第一单元 富强与创新\", \"section\": \"第一课 踏上强国之路\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第一单元 富强与创新", CJ_section: "第一课 踏上强国之路"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:101"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:101", title: "创新改变生活", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第一单元 富强与创新\", \"section\": \"第二课 创新驱动发展\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第一单元 富强与创新", CJ_section: "第二课 创新驱动发展"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:102"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:102", title: "创新永无止境", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第一单元 富强与创新\", \"section\": \"第二课 创新驱动发展\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第一单元 富强与创新", CJ_section: "第二课 创新驱动发展"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:103"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:103", title: "生活在新型民主国家", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第二单元 民主与法治\", \"section\": \"第三课 追求民主价值\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第二单元 民主与法治", CJ_section: "第三课 追求民主价值"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:104"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:104", title: "参与民主生活", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第二单元 民主与法治\", \"section\": \"第三课 追求民主价值\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第二单元 民主与法治", CJ_section: "第三课 追求民主价值"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:105"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:105", title: "夯实法治基础", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第二单元 民主与法治\", \"section\": \"第四课 建设法治中国\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第二单元 民主与法治", CJ_section: "第四课 建设法治中国"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:106"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:106", title: "凝聚法治共识", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第二单元 民主与法治\", \"section\": \"第四课 建设法治中国\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第二单元 民主与法治", CJ_section: "第四课 建设法治中国"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:107"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:107", title: "延续文化血脉", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第三单元 文明与家园\", \"section\": \"第五课 守望精神家园\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第三单元 文明与家园", CJ_section: "第五课 守望精神家园"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:108"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:108", title: "凝聚价值追求", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第三单元 文明与家园\", \"section\": \"第五课 守望精神家园\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第三单元 文明与家园", CJ_section: "第五课 守望精神家园"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:109"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:109", title: "正视发展挑战", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第三单元 文明与家园\", \"section\": \"第六课 建设美丽中国\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第三单元 文明与家园", CJ_section: "第六课 建设美丽中国"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:110"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:110", title: "共筑生命家园", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第三单元 文明与家园\", \"section\": \"第六课 建设美丽中国\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第三单元 文明与家园", CJ_section: "第六课 建设美丽中国"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:111"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:111", title: "促进民族团结", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第四单元 和谐与梦想\", \"section\": \"第七课 中华一家亲\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第四单元 和谐与梦想", CJ_section: "第七课 中华一家亲"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:112"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:112", title: "维护祖国统一", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第四单元 和谐与梦想\", \"section\": \"第七课 中华一家亲\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第四单元 和谐与梦想", CJ_section: "第七课 中华一家亲"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:113"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:113", title: "我们的梦想", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第四单元 和谐与梦想\", \"section\": \"第八课 中国人 中国梦\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第四单元 和谐与梦想", CJ_section: "第八课 中国人 中国梦"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:114"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:114", title: "共圆中国梦", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"上册\", \"year\": \"old\", \"chapter\": \"第四单元 和谐与梦想\", \"section\": \"第八课 中国人 中国梦\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "上册", CJ_year: "old", CJ_chapter: "第四单元 和谐与梦想", CJ_section: "第八课 中国人 中国梦"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:115"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:115", title: "开放互动的世界", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第一单元 我们共同的世界\", \"section\": \"第一课 同住地球村\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第一单元 我们共同的世界", CJ_section: "第一课 同住地球村"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:116"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:116", title: "复杂多变的关系", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第一单元 我们共同的世界\", \"section\": \"第一课 同住地球村\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第一单元 我们共同的世界", CJ_section: "第一课 同住地球村"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:117"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:117", title: "推动和平与发展", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第一单元 我们共同的世界\", \"section\": \"第二课 构建人类命运共同体\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第一单元 我们共同的世界", CJ_section: "第二课 构建人类命运共同体"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:118"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:118", title: "谋求互利共赢", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第一单元 我们共同的世界\", \"section\": \"第二课 构建人类命运共同体\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第一单元 我们共同的世界", CJ_section: "第二课 构建人类命运共同体"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:119"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:119", title: "中国担当", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第二单元 世界舞台上的中国\", \"section\": \"第三课 与世界紧相连\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第二单元 世界舞台上的中国", CJ_section: "第三课 与世界紧相连"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:120"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:120", title: "与世界深度互动", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第二单元 世界舞台上的中国\", \"section\": \"第三课 与世界紧相连\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第二单元 世界舞台上的中国", CJ_section: "第三课 与世界紧相连"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:121"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:121", title: "中国的机遇与挑战", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第二单元 世界舞台上的中国\", \"section\": \"第四课 与世界共发展\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第二单元 世界舞台上的中国", CJ_section: "第四课 与世界共发展"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:122"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:122", title: "携手促发展", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第二单元 世界舞台上的中国\", \"section\": \"第四课 与世界共发展\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第二单元 世界舞台上的中国", CJ_section: "第四课 与世界共发展"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:123"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:123", title: "走向世界大舞台", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 走向未来的少年\", \"section\": \"第五课 少年的担当\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 走向未来的少年", CJ_section: "第五课 少年的担当"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:124"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:124", title: "少年当自强", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 走向未来的少年\", \"section\": \"第五课 少年的担当\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 走向未来的少年", CJ_section: "第五课 少年的担当"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:125"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:125", title: "学无止境", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 走向未来的少年\", \"section\": \"第六课 我的毕业季\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 走向未来的少年", CJ_section: "第六课 我的毕业季"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:126"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:126", title: "多彩的职业", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 走向未来的少年\", \"section\": \"第六课 我的毕业季\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 走向未来的少年", CJ_section: "第六课 我的毕业季"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:127"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:127", title: "回望成长", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 走向未来的少年\", \"section\": \"第七课 从这里出发\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 走向未来的少年", CJ_section: "第七课 从这里出发"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:128"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:128", title: "走向未来", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"第三单元 走向未来的少年\", \"section\": \"第七课 从这里出发\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "第三单元 走向未来的少年", CJ_section: "第七课 从这里出发"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:129"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:129", title: "“交往沟通”专题复习一", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"“交往沟通”专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "“交往沟通”专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:130"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:130", title: "“交往沟通”专题复习二", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"“交往沟通”专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "“交往沟通”专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:131"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:131", title: "“人际交往的品质”专题复习一", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"“人际交往的品质”专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "“人际交往的品质”专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:132"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:132", title: "“人际交往的品质”专题复习二", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"“人际交往的品质”专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "“人际交往的品质”专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:133"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:133", title: "“人际交往的品质”专题复习三", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"“人际交往的品质”专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "“人际交往的品质”专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:134"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:134", title: "“人际交往的品质”专题复习四", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"“人际交往的品质”专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "“人际交往的品质”专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:135"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:135", title: "“心中有法”专题复习一", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"“心中有法”专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "“心中有法”专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:136"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:136", title: "“心中有法”专题复习二", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"“心中有法”专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "“心中有法”专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:137"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:137", title: "“心中有法”专题复习三", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"“心中有法”专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "“心中有法”专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:138"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:138", title: "“心中有法”专题复习四", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"“心中有法”专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "“心中有法”专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:139"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:139", title: "成长中的我”专题复习一", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"“成长中的我”专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "“成长中的我”专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:140"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:140", title: "“成长中的我”专题复习二", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"“成长中的我”专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "“成长中的我”专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:141"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:141", title: "“成长中的我”专题复习三", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"“成长中的我”专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "“成长中的我”专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:142"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:142", title: "“成长中的我”专题复习四", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"“成长中的我”专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "“成长中的我”专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:143"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:143", title: "“成长中的我”专题复习五", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"“成长中的我”专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "“成长中的我”专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:144"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:144", title: "新闻时事专题一", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"“新闻时事”专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "“新闻时事”专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:145"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:145", title: "新闻时事专题二", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"“新闻时事”专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "“新闻时事”专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:146"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:146", title: "新闻时事专题三", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"“新闻时事”专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "“新闻时事”专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:147"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:147", title: "新闻时事专题四", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"“新闻时事”专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "“新闻时事”专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:148"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:148", title: "新闻时事专题五", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"“新闻时事”专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "“新闻时事”专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:149"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:149", title: "新闻时事专题六", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"“新闻时事”专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "“新闻时事”专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:150"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:150", title: "新闻时事专题七", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"“新闻时事”专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "“新闻时事”专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:151"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:151", title: "新闻时事专题八", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"“新闻时事”专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "“新闻时事”专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:152"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:152", title: "新闻时事专题九", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"“新闻时事”专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "“新闻时事”专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:153"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:153", title: "新闻时事专题十", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"“新闻时事”专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "“新闻时事”专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:154"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:154", title: "新闻时事专题十一", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"“新闻时事”专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "“新闻时事”专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:155"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:155", title: "新闻时事专题十二", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"“新闻时事”专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "“新闻时事”专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:156"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:156", title: "初中政治备考及复习建议 （上）", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"中考复习\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "中考复习"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:157"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:157", title: "初中政治备考及复习建议 （中）", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"中考复习\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "中考复习"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:158"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:158", title: "初中政治备考及复习建议 （下）", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"中考复习\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "中考复习"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:159"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:159", title: "试题背后的思维方式与复习建议", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"中考复习\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "中考复习"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:160"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:160", title: "“在集体中成长”专题复习", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"其他专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "其他专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:161"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:161", title: "“亲社会行为、服务和奉献社会”专题复习", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"其他专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "其他专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:162"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:162", title: "“合理利用互联网”专题复习", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"其他专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "其他专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:163"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:163", title: "“坚持宪法至上”专题复习", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"其他专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "其他专题"};

MERGE (n:Subsection {identifier: "urn:jy:dwfz:SB0309:subsection:164"})
SET n += {identifier: "urn:jy:dwfz:SB0309:subsection:164", title: "“我国国家机构”专题复习", description: "", subject: "SB0309", type: "Subsection", applicableLevel: "OB0303", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"统编版\", \"volume\": \"下册\", \"year\": \"old\", \"chapter\": \"专题复习课\", \"section\": \"其他专题\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "统编版", CJ_volume: "下册", CJ_year: "old", CJ_chapter: "专题复习课", CJ_section: "其他专题"};

MERGE (n:Stage {identifier: "urn:jy:dwfz:SB0309:Stage:ST01"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Stage:ST01", title: "第一学段", description: "1~2年级是学校生活起步期，学生开始适应有序的集体学习生活。结合低年级段学生特点，本学段设置入学教育、道德教育、生命安全与健康教育、法治教育、中华优秀传统文化与革命传统教育等五个主题，旨在以正确的价值观、道德和法律规范对学生进行道德和法治启蒙。入学教育主要是针对一年级第一学期开展的适应性教育。", subject: "SB0309", type: "Stage", applicableLevel: "[\"OB0201\", \"OB0202\"]", contentJson: "{\"academicRequirement\": \"通过本学段的学习，学生能够形成规则意识，言行举止符合基本的道德准则和规则；初步了解国情，热爱集体，热爱家乡，热爱社会主义祖国，热爱中国共产党；养成自己的事情自己做的好习惯，能够控制消极情绪，形成做事认真、明辨是非、知错就改的品质；懂得感恩，乐于帮助他人，懂得欣赏别人的优点和长处；养成良好的卫生和生活习惯，掌握基本的安全保健常识；能够保护自然环境，爱护公共卫生；能够向英雄模范人物学习优秀品质和高尚的道德情操。\", \"academicQuality\": \"能够准确讲出中国的全称,知道国旗、国歌、国徽是国家的象征,能够认识中国版图,知道主要传统节日与纪念日的来历与含义,具有作为中国人的自豪感,能够识别道路交通和安全标识,具有一定的安全意识(政治认同、法治观念);能够结合个人与学校生活,分析自己的进步与优点,按照正确的行为要求去行动,具有良好的意志品质,知道合理调控消极情绪的方法(道德修养、健全人格);能够陈述社会主义核心价值观的概念,能够讲述老一辈无产阶级革命家和我国著名英雄模范人物的事迹及其榜样示范作用,能够结合日常生活体会勤俭节约和自强不息是中华民族传统美德(政治认同、健全人格、道德修养)。能够尊重国旗、国徽,饱含感情地唱国歌、少先队队歌(政治认同);在家庭、学校等生活情境中,能够遵守与他人的约定,正确使用礼貌用语,合作学习、共同进步,知道感恩,遵守课堂纪律和作息时间,维护学校秩序,入学适应良好,爱护公共设施(道德修养、法治观念、责任意识);在日常生活中,能够自己的事情自己做,承担力所能及的家务劳动,具有健康、安全的生活习惯,具备勤俭节约的意识,爱护大自然(道德修养、健全人格、责任意识)。\", \"stageObjectives\": [{\"coreliteracy\": \"政治认同\", \"description\": \"·认识国旗、国徽,知道自己是中国人;了解老一辈无产阶级革命家和英雄模范人物,对他们有崇敬之情。\\n文化具有亲切感。·认识党旗,热爱中国共产党,积极加入中国少年先锋队。·知道中国是社会主义国家。·知道社会主义核心价值观。\"}, {\"coreliteracy\": \"道德修养\", \"description\": \"·知道健康生活、卫生习惯的基本常识和要求。·懂礼貌,讲诚信,守约定,不撒谎,与同伴友好相处。·感知父母的辛劳,孝敬父母,尊重师长。·爱护家庭、学校和公共环境卫生,爱护公物,遵守公共秩序。\\n·爱劳动,知道财富是由劳动创造的。\"}, {\"coreliteracy\": \"法治观念\", \"description\": \"·遵守学校纪律,维护课堂秩序。·了解生活中的规则,知道在生活中人人都应遵守规则,具有初步的规则意识。·了解生活中基本的安全常识,掌握常用的求助信息。\"}, {\"coreliteracy\": \"健全人格\", \"description\": \"·热爱生命,懂得自我保护,远离伤害。·体会成长的快乐,能够看到自己的进步和不足,欣赏他人的优点和长处。·能够感知自己的消极情绪,知道可以向老师和家人寻求帮助。·乐于学习,逐渐培养专注力。\\n·能够表达自己的感受，学习倾听他人的意见。·感知并学习适应环境的变化。\"}, {\"coreliteracy\": \"责任意识\", \"description\": \"·学会自己的事情自己做，减轻父母的负担。·热爱学校和班集体，积极参与学校和班级活动，有集体荣誉感，能够关心和帮助他人。\\n·知道中华民族是一个统一的大家庭。·亲近自然,爱护动植物。\"}]}", CJ_academicRequirement: "通过本学段的学习，学生能够形成规则意识，言行举止符合基本的道德准则和规则；初步了解国情，热爱集体，热爱家乡，热爱社会主义祖国，热爱中国共产党；养成自己的事情自己做的好习惯，能够控制消极情绪，形成做事认真、明辨是非、知错就改的品质；懂得感恩，乐于帮助他人，懂得欣赏别人的优点和长处；养成良好的卫生和生活习惯，掌握基本的安全保健常识；能够保护自然环境，爱护公共卫生；能够向英雄模范人物学习优秀品质和高尚的道德情操。", CJ_academicQuality: "能够准确讲出中国的全称,知道国旗、国歌、国徽是国家的象征,能够认识中国版图,知道主要传统节日与纪念日的来历与含义,具有作为中国人的自豪感,能够识别道路交通和安全标识,具有一定的安全意识(政治认同、法治观念);能够结合个人与学校生活,分析自己的进步与优点,按照正确的行为要求去行动,具有良好的意志品质,知道合理调控消极情绪的方法(道德修养、健全人格);能够陈述社会主义核心价值观的概念,能够讲述老一辈无产阶级革命家和我国著名英雄模范人物的事迹及其榜样示范作用,能够结合日常生活体会勤俭节约和自强不息是中华民族传统美德(政治认同、健全人格、道德修养)。能够尊重国旗、国徽,饱含感情地唱国歌、少先队队歌(政治认同);在家庭、学校等生活情境中,能够遵守与他人的约定,正确使用礼貌用语,合作学习、共同进步,知道感恩,遵守课堂纪律和作息时间,维护学校秩序,入学适应良好,爱护公共设施(道德修养、法治观念、责任意识);在日常生活中,能够自己的事情自己做,承担力所能及的家务劳动,具有健康、安全的生活习惯,具备勤俭节约的意识,爱护大自然(道德修养、健全人格、责任意识)。", CJ_stageObjectives: "[{\"coreliteracy\": \"政治认同\", \"description\": \"·认识国旗、国徽,知道自己是中国人;了解老一辈无产阶级革命家和英雄模范人物,对他们有崇敬之情。\\n文化具有亲切感。·认识党旗,热爱中国共产党,积极加入中国少年先锋队。·知道中国是社会主义国家。·知道社会主义核心价值观。\"}, {\"coreliteracy\": \"道德修养\", \"description\": \"·知道健康生活、卫生习惯的基本常识和要求。·懂礼貌,讲诚信,守约定,不撒谎,与同伴友好相处。·感知父母的辛劳,孝敬父母,尊重师长。·爱护家庭、学校和公共环境卫生,爱护公物,遵守公共秩序。\\n·爱劳动,知道财富是由劳动创造的。\"}, {\"coreliteracy\": \"法治观念\", \"description\": \"·遵守学校纪律,维护课堂秩序。·了解生活中的规则,知道在生活中人人都应遵守规则,具有初步的规则意识。·了解生活中基本的安全常识,掌握常用的求助信息。\"}, {\"coreliteracy\": \"健全人格\", \"description\": \"·热爱生命,懂得自我保护,远离伤害。·体会成长的快乐,能够看到自己的进步和不足,欣赏他人的优点和长处。·能够感知自己的消极情绪,知道可以向老师和家人寻求帮助。·乐于学习,逐渐培养专注力。\\n·能够表达自己的感受，学习倾听他人的意见。·感知并学习适应环境的变化。\"}, {\"coreliteracy\": \"责任意识\", \"description\": \"·学会自己的事情自己做，减轻父母的负担。·热爱学校和班集体，积极参与学校和班级活动，有集体荣誉感，能够关心和帮助他人。\\n·知道中华民族是一个统一的大家庭。·亲近自然,爱护动植物。\"}]"};

MERGE (n:Stage {identifier: "urn:jy:dwfz:SB0309:Stage:ST02"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Stage:ST02", title: "第二学段", description: "3~4年级是从小学低年级段向高年级段的过渡期。本学段学生已经适应了学校生活，生活视野进一步扩大，具备一定的独立意识。根据以上特点，设置道德教育、生命安全与健康教育、法治教育、中华优秀传统文化与革命传统教育、国情教育等五个主题，旨在引导学生养成健康的生活习惯、良好的道德品质和健全人格，形成集体荣誉感和责任意识。", subject: "SB0309", type: "Stage", applicableLevel: "[\"OB0203\", \"OB0204\"]", contentJson: "{\"academicRequirement\": \"通过本学段的学习，学生能够遵守与日常生活密切相关的基本道德规范和法律，掌握有关生命安全与健康的基本常识和技能，初步学会调控情绪和与人沟通的方法，积极参加劳动和集体活动，尊重普通劳动者，平等待人；能够了解家乡发展和国家建设取得的重大成就，感受革命故事所体现的革命传统意义，为中华优秀传统文化感到自豪；能够积极弘扬传统美德，践行社会主义核心价值观，对伟大祖国、中华民族、中华文化、中国共产党、中国特色社会主义有强烈认同感。\", \"academicQuality\": \"在地图上能够指出家乡所在省份和地理位置,了解中华优秀传统文化的代表性成果,举例讲述新中国建设的伟大成就,对祖国未来充满信心,能够结合实例讲述维护国家统一与民族团结的意义,知道祖国领土神圣不可侵犯(政治认同、法治观念);能够讲述革命英雄人物的事迹,结合家庭与社会生活简要说明优良家风的意义,举例讲述中华民族传统美德,简要分析遵守规则的重要性,能够结合日常生活讲述爱护公共设施人人有责的意义,热爱劳动、尊重劳动者,能够结合生活中的实例讲述职业没有高低贵贱之分(政治认同、道德修养、法治观念);珍爱生命,热爱生活,具有安全自律意识(道德修养、健全人格、责任意识)。能够结合日常生活和集体生活践行社会主义核心价值观,爱护环境卫生,以恰当方式表达对长辈和老师的感激之心,遵守待人接物的基本礼仪,能够与同学平等相处、与邻里和睦相处,关心家庭,积极分担家务劳动,遵守基本的网络交往道德规范(道德修养、健全人格、责任意识);在学校和社会生活中,遵守社会规则(法治观念、道德修养、责任意识);具有良好的意志品质,明辨是非,掌握自我保护技能,勤俭节约,能够理解“绿水青山就是金山银山”的道理,自觉保护自然环境(健全人格、责任意识)。\", \"stageObjectives\": [{\"coreliteracy\": \"政治认同\", \"description\": \"·初步感知基本国情,为自己是中国人感到自豪。\\n优秀传统文化的魅力。·结合革命故事,知道没有共产党就没有新中国,热爱中国共产党,积极参加中国少年先锋队的活动。·感知中国特色社会主义的伟大成就。·初步理解社会主义核心价值观的要求,在日常生活和集体活动中加以践行。\"}, {\"coreliteracy\": \"道德修养\", \"description\": \"·初步养成健康的生活、卫生习惯,关心公共卫生。·掌握基本的交往礼仪,懂得个人成长离不开社会和他人的支持与帮助,诚实守信。·孝敬父母,尊重师长,体会父母的养育之恩和师长的辛劳。·体验公共设施给自己生活带来的便利,爱护公共设施,遵守公共秩序。\\n·树立劳动意识,积极参加劳动实践,懂得劳动光荣、劳动不分贵贱。\"}, {\"coreliteracy\": \"法治观念\", \"description\": \"·具有规则意识并学会遵守规则。·了解社会交往的基本规则,树立平等意识,互相尊重。·知道法律能够保护自己的生活。\"}, {\"coreliteracy\": \"健全人格\", \"description\": \"·初步认识和体验人的生命是可贵的,珍惜生命。·学会认识自己,理解他人,对他人有同情心。·能够识别消极情绪,学习调节情绪的方法。·做事有耐心,在克服困难中增强自信心。\\n·能够表达自己的感受和见解，倾听他人的意见，体会他人的心情和需要。·学会适应环境的变化。\"}, {\"coreliteracy\": \"责任意识\", \"description\": \"·主动参与力所能及的家务，学会承担家庭责任。·热爱集体，积极参与集体活动和民主管理，有互助意识。\\n·初步了解维护国家统一和民族团结的重要性。·热爱自然,了解自然是我们生活的共同家园,懂得保护环境、爱护动物、节约资源。\"}]}", CJ_academicRequirement: "通过本学段的学习，学生能够遵守与日常生活密切相关的基本道德规范和法律，掌握有关生命安全与健康的基本常识和技能，初步学会调控情绪和与人沟通的方法，积极参加劳动和集体活动，尊重普通劳动者，平等待人；能够了解家乡发展和国家建设取得的重大成就，感受革命故事所体现的革命传统意义，为中华优秀传统文化感到自豪；能够积极弘扬传统美德，践行社会主义核心价值观，对伟大祖国、中华民族、中华文化、中国共产党、中国特色社会主义有强烈认同感。", CJ_academicQuality: "在地图上能够指出家乡所在省份和地理位置,了解中华优秀传统文化的代表性成果,举例讲述新中国建设的伟大成就,对祖国未来充满信心,能够结合实例讲述维护国家统一与民族团结的意义,知道祖国领土神圣不可侵犯(政治认同、法治观念);能够讲述革命英雄人物的事迹,结合家庭与社会生活简要说明优良家风的意义,举例讲述中华民族传统美德,简要分析遵守规则的重要性,能够结合日常生活讲述爱护公共设施人人有责的意义,热爱劳动、尊重劳动者,能够结合生活中的实例讲述职业没有高低贵贱之分(政治认同、道德修养、法治观念);珍爱生命,热爱生活,具有安全自律意识(道德修养、健全人格、责任意识)。能够结合日常生活和集体生活践行社会主义核心价值观,爱护环境卫生,以恰当方式表达对长辈和老师的感激之心,遵守待人接物的基本礼仪,能够与同学平等相处、与邻里和睦相处,关心家庭,积极分担家务劳动,遵守基本的网络交往道德规范(道德修养、健全人格、责任意识);在学校和社会生活中,遵守社会规则(法治观念、道德修养、责任意识);具有良好的意志品质,明辨是非,掌握自我保护技能,勤俭节约,能够理解“绿水青山就是金山银山”的道理,自觉保护自然环境(健全人格、责任意识)。", CJ_stageObjectives: "[{\"coreliteracy\": \"政治认同\", \"description\": \"·初步感知基本国情,为自己是中国人感到自豪。\\n优秀传统文化的魅力。·结合革命故事,知道没有共产党就没有新中国,热爱中国共产党,积极参加中国少年先锋队的活动。·感知中国特色社会主义的伟大成就。·初步理解社会主义核心价值观的要求,在日常生活和集体活动中加以践行。\"}, {\"coreliteracy\": \"道德修养\", \"description\": \"·初步养成健康的生活、卫生习惯,关心公共卫生。·掌握基本的交往礼仪,懂得个人成长离不开社会和他人的支持与帮助,诚实守信。·孝敬父母,尊重师长,体会父母的养育之恩和师长的辛劳。·体验公共设施给自己生活带来的便利,爱护公共设施,遵守公共秩序。\\n·树立劳动意识,积极参加劳动实践,懂得劳动光荣、劳动不分贵贱。\"}, {\"coreliteracy\": \"法治观念\", \"description\": \"·具有规则意识并学会遵守规则。·了解社会交往的基本规则,树立平等意识,互相尊重。·知道法律能够保护自己的生活。\"}, {\"coreliteracy\": \"健全人格\", \"description\": \"·初步认识和体验人的生命是可贵的,珍惜生命。·学会认识自己,理解他人,对他人有同情心。·能够识别消极情绪,学习调节情绪的方法。·做事有耐心,在克服困难中增强自信心。\\n·能够表达自己的感受和见解，倾听他人的意见，体会他人的心情和需要。·学会适应环境的变化。\"}, {\"coreliteracy\": \"责任意识\", \"description\": \"·主动参与力所能及的家务，学会承担家庭责任。·热爱集体，积极参与集体活动和民主管理，有互助意识。\\n·初步了解维护国家统一和民族团结的重要性。·热爱自然,了解自然是我们生活的共同家园,懂得保护环境、爱护动物、节约资源。\"}]"};

MERGE (n:Stage {identifier: "urn:jy:dwfz:SB0309:Stage:ST03"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Stage:ST03", title: "第三学段", description: "5~6年级是小学的高年级段，延续小学低、中年级段，与初中阶段相衔接。本学段学生的生活范围不断扩大，具备一定的道德是非判断能力。基于上述特点，设置道德教育、生命安全与健康教育、法治教育、中华优秀传统文化与革命传统教育、国情教育等五个主题，旨在培养学生的道德情感、责任意识，引导学生遵守公共规则，形成深厚的爱国情感。", subject: "SB0309", type: "Stage", applicableLevel: "[\"OB0205\", \"OB0206\"]", contentJson: "{\"academicRequirement\": \"通过本学段的学习，学生能够初步了解我国社会主义革命和建设的历程及形成的革命精神，知道只有中国共产党才能救中国、只有中国特色社会主义才能发展中国的道理，明确中国特色社会主义进入新时代，初步了解习近平新时代中国特色社会主义思想精髓；了解宪法规定的公民基本权利与义务，掌握社会生活的道德规范和必备的法律常识；珍爱生命，具有安全意识，具备维护社会安全的基本技能，具有一定的法治意识和社会责任感；懂得劳动最光荣的道理，崇尚劳动，热爱劳动；能够运用所学知识，分析和明辨日常生活中的是非善恶，平等待人，乐于合作，相互帮助，具有合作意识和集体主义精神，做到遵守公共秩序，遵纪守法，担当责任，养成亲社会的行为和品格，提升道德和人格修养；能够增强对伟大祖国、中华民族、中华文化、中国共产党、中国特色社会主义的认同，关心国家大事，为实现中华民族伟大复兴而努力学习。\", \"academicQuality\": \"知道马克思主义的指导地位、中国共产党的主要革命历史与根本宗旨,初步了解中国特色社会主义道路的意义、习近平新时代中国特色社会主义思想精髓,能够讲述人民军队在不同时期的名称由来,热爱人民军队,能够结合个人与社会生活中的实例理解法律的重要性,知道宪法是国家根本法,了解公民基本权利与义务以及未成年人的权利,能够结合实例讲述法律面前人人平等的原则(政治认同、法治观念);能够结合社会生活,根据社会主义核心价值观判断是非对错,具有良好的集体意识与团队精神,举例讲述在长期奋斗中构建起的中国共产党人的精神谱系(政治认同、道德修养);能够用实例说明中华文化的源远流长与博大精深,了解中华民族对人类文明的贡献(政治认同、道德修养);能够结合实例简要说明维护国家安全的重要性,能够结合实例论述如何维护国家利益和安全(政治认同、法治观念、责任意识);能够举例说明世界文化的多样性,知道文明交流互鉴的重要性,讲述构建人类命运共同体的意义(政治认同、责任意识)。\\n能够完成学习和作息计划,形成健康生活习惯,能够用与生活相关的法律维护自己的合法权益(道德修养、健全人格、法治观念、责任意识);能够结合家庭、学校和社会生活,理性思考,平等待人,主动分担家务劳动,积极服务社会,做一名家庭好成员和社会好公民(道德修养、健全人格、责任意识);能够践行社会主义核心价值观,维护公共秩序与社会安全,遵守法律规定(政治认同、道德修养、法治观念、责任意识);能够结合生活实例阐述如何做到自尊自爱自强,能够辨识失信失德的行为表现,知道诚实守信的意义(道德修养、健全人格、法治观念);能够自我保护,有安全意识,抵制不良行为与违法行为,拒绝参与危害社会安全的活动(道德修养、法治观念、责任意识);能够讲述环境保护的重要性,就如何实现可持续发展提出建议(道德修养、法治观念、责任意识)。\", \"stageObjectives\": [{\"coreliteracy\": \"政治认同\", \"description\": \"·初步了解国情,具有维护国家利益和祖国尊严的意识与行动,形成中国人的身份认同感;初步认识重要历史事实,了解我国发展的历史方位和中国共产党的光辉历程。\\n自豪。·简要了解中国共产党的历史和革命传统,了解中国共产党带领人民彻底摆脱了被欺负、被压迫、被奴役的命运,成为国家、社会和自己命运的主人;热爱中国共产党。·初步了解中国特色社会主义制度的优越性。知道中国式现代化是中国共产党领导的社会主义现代化。·理解社会主义核心价值观的内涵,在日常生活中积极践行。\"}, {\"coreliteracy\": \"道德修养\", \"description\": \"·养成健康的生活、卫生习惯,自觉维护公共卫生。·懂得自律,诚实守信,能够得体地与人交往,团结互助,能够平等友好地与他人相处,学会合作。·孝敬父母,尊重师长,懂得感恩,养成孝敬父母、尊敬师长的良好品质。·认识到公共设施给人们生活带来的便利,自觉爱护公共设施,自觉遵守公共秩序。\\n·感受劳动创造的意义,热爱劳动,主动承担力所能及的劳动,尊重各行各业的劳动者。\"}, {\"coreliteracy\": \"法治观念\", \"description\": \"·知道宪法,感受宪法对社会和生活的重要性,形成初步的法治意识。·了解公民的基本权利和义务,树立权利和义务相统一的观念。·知道民法典,了解未成年人的权利,树立用法律保护个人生命财产安全的意识。·知道违法要承担责任,形成守法意识。\\n·了解每个人都有维护国家利益和安全的责任。\"}, {\"coreliteracy\": \"健全人格\", \"description\": \"·树立生命至上的观念,敬畏生命,掌握基本的应对灾害和保护生命安全的技能。·正确认识自己,自信乐观,与他人平等地交流与合作,建立良好的同伴关系。·学习调控情绪,掌握自我调控情绪的方法。·不怕困难,具有一定的抗挫折能力。\\n·能够清楚表达自己的感受和见解，乐于倾听他人的意见，体会他人的心情和需要。·认识个人与社会、国家和世界的关系，能够适应社会环境的变化。·初步了解自己的身心成长特征。\"}, {\"coreliteracy\": \"责任意识\", \"description\": \"·学习参与家庭决策，为父母分忧。·关心公益事业，学习民主管理的规则和程序，参加力所能及的社会公益和志愿者活动，有团队意识，能够与他人合作互助。\\n·树立维护国家统一和民族团结的责任意识。·热爱并尊重自然,自觉保护环境、爱护动物,初步了解可持续发展理念。\"}]}", CJ_academicRequirement: "通过本学段的学习，学生能够初步了解我国社会主义革命和建设的历程及形成的革命精神，知道只有中国共产党才能救中国、只有中国特色社会主义才能发展中国的道理，明确中国特色社会主义进入新时代，初步了解习近平新时代中国特色社会主义思想精髓；了解宪法规定的公民基本权利与义务，掌握社会生活的道德规范和必备的法律常识；珍爱生命，具有安全意识，具备维护社会安全的基本技能，具有一定的法治意识和社会责任感；懂得劳动最光荣的道理，崇尚劳动，热爱劳动；能够运用所学知识，分析和明辨日常生活中的是非善恶，平等待人，乐于合作，相互帮助，具有合作意识和集体主义精神，做到遵守公共秩序，遵纪守法，担当责任，养成亲社会的行为和品格，提升道德和人格修养；能够增强对伟大祖国、中华民族、中华文化、中国共产党、中国特色社会主义的认同，关心国家大事，为实现中华民族伟大复兴而努力学习。", CJ_academicQuality: "知道马克思主义的指导地位、中国共产党的主要革命历史与根本宗旨,初步了解中国特色社会主义道路的意义、习近平新时代中国特色社会主义思想精髓,能够讲述人民军队在不同时期的名称由来,热爱人民军队,能够结合个人与社会生活中的实例理解法律的重要性,知道宪法是国家根本法,了解公民基本权利与义务以及未成年人的权利,能够结合实例讲述法律面前人人平等的原则(政治认同、法治观念);能够结合社会生活,根据社会主义核心价值观判断是非对错,具有良好的集体意识与团队精神,举例讲述在长期奋斗中构建起的中国共产党人的精神谱系(政治认同、道德修养);能够用实例说明中华文化的源远流长与博大精深,了解中华民族对人类文明的贡献(政治认同、道德修养);能够结合实例简要说明维护国家安全的重要性,能够结合实例论述如何维护国家利益和安全(政治认同、法治观念、责任意识);能够举例说明世界文化的多样性,知道文明交流互鉴的重要性,讲述构建人类命运共同体的意义(政治认同、责任意识)。\n能够完成学习和作息计划,形成健康生活习惯,能够用与生活相关的法律维护自己的合法权益(道德修养、健全人格、法治观念、责任意识);能够结合家庭、学校和社会生活,理性思考,平等待人,主动分担家务劳动,积极服务社会,做一名家庭好成员和社会好公民(道德修养、健全人格、责任意识);能够践行社会主义核心价值观,维护公共秩序与社会安全,遵守法律规定(政治认同、道德修养、法治观念、责任意识);能够结合生活实例阐述如何做到自尊自爱自强,能够辨识失信失德的行为表现,知道诚实守信的意义(道德修养、健全人格、法治观念);能够自我保护,有安全意识,抵制不良行为与违法行为,拒绝参与危害社会安全的活动(道德修养、法治观念、责任意识);能够讲述环境保护的重要性,就如何实现可持续发展提出建议(道德修养、法治观念、责任意识)。", CJ_stageObjectives: "[{\"coreliteracy\": \"政治认同\", \"description\": \"·初步了解国情,具有维护国家利益和祖国尊严的意识与行动,形成中国人的身份认同感;初步认识重要历史事实,了解我国发展的历史方位和中国共产党的光辉历程。\\n自豪。·简要了解中国共产党的历史和革命传统,了解中国共产党带领人民彻底摆脱了被欺负、被压迫、被奴役的命运,成为国家、社会和自己命运的主人;热爱中国共产党。·初步了解中国特色社会主义制度的优越性。知道中国式现代化是中国共产党领导的社会主义现代化。·理解社会主义核心价值观的内涵,在日常生活中积极践行。\"}, {\"coreliteracy\": \"道德修养\", \"description\": \"·养成健康的生活、卫生习惯,自觉维护公共卫生。·懂得自律,诚实守信,能够得体地与人交往,团结互助,能够平等友好地与他人相处,学会合作。·孝敬父母,尊重师长,懂得感恩,养成孝敬父母、尊敬师长的良好品质。·认识到公共设施给人们生活带来的便利,自觉爱护公共设施,自觉遵守公共秩序。\\n·感受劳动创造的意义,热爱劳动,主动承担力所能及的劳动,尊重各行各业的劳动者。\"}, {\"coreliteracy\": \"法治观念\", \"description\": \"·知道宪法,感受宪法对社会和生活的重要性,形成初步的法治意识。·了解公民的基本权利和义务,树立权利和义务相统一的观念。·知道民法典,了解未成年人的权利,树立用法律保护个人生命财产安全的意识。·知道违法要承担责任,形成守法意识。\\n·了解每个人都有维护国家利益和安全的责任。\"}, {\"coreliteracy\": \"健全人格\", \"description\": \"·树立生命至上的观念,敬畏生命,掌握基本的应对灾害和保护生命安全的技能。·正确认识自己,自信乐观,与他人平等地交流与合作,建立良好的同伴关系。·学习调控情绪,掌握自我调控情绪的方法。·不怕困难,具有一定的抗挫折能力。\\n·能够清楚表达自己的感受和见解，乐于倾听他人的意见，体会他人的心情和需要。·认识个人与社会、国家和世界的关系，能够适应社会环境的变化。·初步了解自己的身心成长特征。\"}, {\"coreliteracy\": \"责任意识\", \"description\": \"·学习参与家庭决策，为父母分忧。·关心公益事业，学习民主管理的规则和程序，参加力所能及的社会公益和志愿者活动，有团队意识，能够与他人合作互助。\\n·树立维护国家统一和民族团结的责任意识。·热爱并尊重自然,自觉保护环境、爱护动物,初步了解可持续发展理念。\"}]"};

MERGE (n:Stage {identifier: "urn:jy:dwfz:SB0309:Stage:ST04"})
SET n += {identifier: "urn:jy:dwfz:SB0309:Stage:ST04", title: "第四学段", description: "7~9年级是初中年级段，是小学高年级段的延续，与高中阶段相衔接，是培育道德品格，形成世界观、人生观、价值观的重要时期。本学段学生正处于青春期，独立思考能力和判断能力进一步增强，情绪波动性大，可塑性强。依据上述特点，设置生命安全与健康教育、法治教育、中华优秀传统文化教育、革命传统教育、国情教育等五个主题，通过与中华优秀文化传统、革命传统、国情教育等方面的关联，从真实的社会情境角度进行道德教育，强化学生的道德体验和道德实践，旨在引导学生正确认识自己，以及个人与家庭、他人、社会、国家和人类文明的关系，了解国家发展和世界发展大势，增强社会责任感和担当意识，立志做社会主义建设者和接班人。", subject: "SB0309", type: "Stage", applicableLevel: "[\"OB0301\", \"OB0302\", \"OB0303\"]", contentJson: "{\"academicRequirement\": \"通过本学段的学习，学生能够认识中国特色社会主义的伟大建设成就，理解中国共产党在建设中国特色社会主义过程中的领导作用，理解党的领导是进一步全面深化改革、推进中国式现代化的根本保证，铸牢中华民族共同体意识，坚定对伟大祖国、中华民族、中华文化、中国共产党、中国特色社会主义的高度认同，不断推进中华民族共同体建设；能够了解我国的主要国家机构和基本经济政治制度，了解公民权利义务，具备参与社会生活的基本能力；珍爱生命，热爱生活，具备积极向上的人生态度，能在学习和生活中进行正确的判断和选择，自觉践行社会主义核心价值观；能运用自己所了解的法律知识认识和评价社会生活现象，用法律维护自己作为未成年人的权益；能以积极态度对待自己面对的各种挑战，主动承担自己力所能及的责任，具备服务社会、奉献社会的意识和能力。\", \"academicQuality\": \"能够结合史实阐明伟大建党精神是中国共产党的精神之源，是我们党领导人民向第二个百年奋斗目标进军的强大动力（政治认同、道德修养）；能够结合实例初步阐释中国共产党为什么能、中国特色社会主义为什么好，归根到底是马克思主义行，是中国化时代化的马克思主义行，了解中国发展的历史方位与中国社会的主要矛盾，能够简要论述习近平新时代中国特色社会主义思想是当代中国马克思主义、二十一世纪马克思主义，能够深刻理解中国特色社会主义进入新时代，党和国家事业取得的历史性成就、发生的历史性变革（政治认同、道德修养）；能够结合实例阐明人民代表大会制度、中国共产党领导的多党合作和政治协商制度、民族区域自治制度、基层民主制度、“一国两制”的基本内容和意义，阐明对全过程人民民主的理解（政治认同、法治观念）；能够尝试化解青春期烦恼，采取正确方法面对成长过程中的顺境和逆境，自我管理，具有亲社会行为，敬畏生命，热爱生活（道德修养、健全人格、责任意识）；能够结合社会发展和个人实际制订个人生涯发展规划，具有建设中国式现代化，实现中华民族伟大复兴的使命感和责任感（政治认同、责任意识）；了解习近平法治思想，具有宪法法律至上的观念，能够正确认识和行使公民权利、履行公民义务，运用实际案例说明与生活相关的法律规定（法治观念、责任意识）；能够举例说明社会主义先进文化、革命文化和中华优秀传统文化的主要特征，坚定文化自信，明确新时代的文化使命（道德修养、政治认同）；能够结合实例理解国家安全是民族复兴的根基，阐明如何自觉维护国家安全（政治认同、法治观念、责任意识）；知道全人类共同价值的内涵，具有初步的国际视野，了解主要的国际组织，阐明维护以联合国为核心的国际体系的意义，阐述构建人类命运共同体的意义（政治认同、责任意识）。\", \"stageObjectives\": [{\"coreliteracy\": \"政治认同\", \"description\": \"·初步了解党史、新中国史、改革开放史、社会主义发展史、中华民族发展史,知道党的百年奋斗重大成就和历史经验,领悟伟大建党精神的内涵,能够以恰当的方式弘扬爱国主义精神,开展中国共产党人精神谱系教育;了解我国决胜全面建成小康社会取得的决定性成就和全面建设社会主义现代化强国的新征程;理解中国梦的内涵,树立为中华民族伟大复兴而团结奋斗的理想。·体会中华文化的源远流长与博大精深;理解中华优秀传统文化的核心理念、人文精神和传统美德,弘扬民族精神,具有强烈的中华民族自豪感;学习和理解社会主义先进文化和革命文化,坚定文化自信。\\n·了解中国共产党带领中国人民进行革命、建设、改革的历史性成就,认识中国共产党在国家独立、人民解放、国家富强、民族复兴进程中的领导作用;积极加入中国共产主义青年团。·了解中国特色社会主义制度的优越性,了解中国式现代化的本质特征。坚定道路自信、理论自信、制度自信、文化自信,能够在生活和学习中自觉维护国家主权、尊严和利益。·理解社会主义核心价值观的内涵及其重要意义,在日常生活和社会活动中自觉践行。\"}, {\"coreliteracy\": \"道德修养\", \"description\": \"·形成健康、文明的生活方式,懂得生命的意义,热爱生活。·遵守基本的社交礼仪,理性维护社会公德;理解诚信是做人的基本要求,做到言行一致;团结同学,宽容友爱。·感念父母养育之恩、长辈关爱之情,能够以感恩的心与父母和长辈沟通,能够为父母分忧解难,尊重师长。·维护公共秩序,讲社会公德,爱护公共财物,在公共生活中做一个文明的社会成员。\\n·感知劳动创造的成就感、幸福感,领会劳动对个人和社会的价值,形成诚实劳动、劳动创造美好生活意识;初步了解职业道德规范,立志做未来的好建设者。\"}, {\"coreliteracy\": \"法治观念\", \"description\": \"·了解法律对个人生活、社会秩序和国家发展的作用,理解法治的本质及特征,了解法治是中国式现代化的重要保障。·了解宪法的主要内容,明确宪法的地位与作用,认识国家基本制度和国家机构,知道中国共产党领导是中国特色社会主义最本质的特征,是中国特色社会主义制度的最大优势。·了解以民法典为代表的、与日常生活相关的法律,理解法律是实现和维护公平正义的基本途径。·认识违法行为及其法律责任,理解犯罪的特征及后果,主动预防未成年人犯罪。\\n·了解法律对国家安全的保障作用,自觉履行维护国家安全的义务。\"}, {\"coreliteracy\": \"健全人格\", \"description\": \"·懂得生命的意义和价值,热爱生活,确立正确的人生观。·正确认识自己,能够自我反思,不断完善自我,保持乐观的态度,学会合作,树立团队意识。·能够自主调控自身的情绪波动,具有良好的沟通能力,主动建立良好的人际关系。·养成自尊自信的人生态度,在生活中磨炼意志,形成良好的抗挫折能力。\\n·能够清楚表达自己的感受和见解，善于倾听他人的意见，自我改进。\"}, {\"coreliteracy\": \"责任意识\", \"description\": \"·自觉分担家庭责任，体会敬业精神的重要性，具有较强的责任感。·关心社会，知道我国全过程人民民主的优越性，了解时政，主动参与社会公益活动和志愿者活动；在团队合作互动中增强合作精神和领导力。\\n·具备国家利益高于一切的观念,能够以实际行动维护民族团结,捍卫国家主权。·敬畏自然,具有绿色发展理念,初步形成环保意识和生态文明观;能够在日常生活中自觉践行生态文明的理念。\"}]}", CJ_academicRequirement: "通过本学段的学习，学生能够认识中国特色社会主义的伟大建设成就，理解中国共产党在建设中国特色社会主义过程中的领导作用，理解党的领导是进一步全面深化改革、推进中国式现代化的根本保证，铸牢中华民族共同体意识，坚定对伟大祖国、中华民族、中华文化、中国共产党、中国特色社会主义的高度认同，不断推进中华民族共同体建设；能够了解我国的主要国家机构和基本经济政治制度，了解公民权利义务，具备参与社会生活的基本能力；珍爱生命，热爱生活，具备积极向上的人生态度，能在学习和生活中进行正确的判断和选择，自觉践行社会主义核心价值观；能运用自己所了解的法律知识认识和评价社会生活现象，用法律维护自己作为未成年人的权益；能以积极态度对待自己面对的各种挑战，主动承担自己力所能及的责任，具备服务社会、奉献社会的意识和能力。", CJ_academicQuality: "能够结合史实阐明伟大建党精神是中国共产党的精神之源，是我们党领导人民向第二个百年奋斗目标进军的强大动力（政治认同、道德修养）；能够结合实例初步阐释中国共产党为什么能、中国特色社会主义为什么好，归根到底是马克思主义行，是中国化时代化的马克思主义行，了解中国发展的历史方位与中国社会的主要矛盾，能够简要论述习近平新时代中国特色社会主义思想是当代中国马克思主义、二十一世纪马克思主义，能够深刻理解中国特色社会主义进入新时代，党和国家事业取得的历史性成就、发生的历史性变革（政治认同、道德修养）；能够结合实例阐明人民代表大会制度、中国共产党领导的多党合作和政治协商制度、民族区域自治制度、基层民主制度、“一国两制”的基本内容和意义，阐明对全过程人民民主的理解（政治认同、法治观念）；能够尝试化解青春期烦恼，采取正确方法面对成长过程中的顺境和逆境，自我管理，具有亲社会行为，敬畏生命，热爱生活（道德修养、健全人格、责任意识）；能够结合社会发展和个人实际制订个人生涯发展规划，具有建设中国式现代化，实现中华民族伟大复兴的使命感和责任感（政治认同、责任意识）；了解习近平法治思想，具有宪法法律至上的观念，能够正确认识和行使公民权利、履行公民义务，运用实际案例说明与生活相关的法律规定（法治观念、责任意识）；能够举例说明社会主义先进文化、革命文化和中华优秀传统文化的主要特征，坚定文化自信，明确新时代的文化使命（道德修养、政治认同）；能够结合实例理解国家安全是民族复兴的根基，阐明如何自觉维护国家安全（政治认同、法治观念、责任意识）；知道全人类共同价值的内涵，具有初步的国际视野，了解主要的国际组织，阐明维护以联合国为核心的国际体系的意义，阐述构建人类命运共同体的意义（政治认同、责任意识）。", CJ_stageObjectives: "[{\"coreliteracy\": \"政治认同\", \"description\": \"·初步了解党史、新中国史、改革开放史、社会主义发展史、中华民族发展史,知道党的百年奋斗重大成就和历史经验,领悟伟大建党精神的内涵,能够以恰当的方式弘扬爱国主义精神,开展中国共产党人精神谱系教育;了解我国决胜全面建成小康社会取得的决定性成就和全面建设社会主义现代化强国的新征程;理解中国梦的内涵,树立为中华民族伟大复兴而团结奋斗的理想。·体会中华文化的源远流长与博大精深;理解中华优秀传统文化的核心理念、人文精神和传统美德,弘扬民族精神,具有强烈的中华民族自豪感;学习和理解社会主义先进文化和革命文化,坚定文化自信。\\n·了解中国共产党带领中国人民进行革命、建设、改革的历史性成就,认识中国共产党在国家独立、人民解放、国家富强、民族复兴进程中的领导作用;积极加入中国共产主义青年团。·了解中国特色社会主义制度的优越性,了解中国式现代化的本质特征。坚定道路自信、理论自信、制度自信、文化自信,能够在生活和学习中自觉维护国家主权、尊严和利益。·理解社会主义核心价值观的内涵及其重要意义,在日常生活和社会活动中自觉践行。\"}, {\"coreliteracy\": \"道德修养\", \"description\": \"·形成健康、文明的生活方式,懂得生命的意义,热爱生活。·遵守基本的社交礼仪,理性维护社会公德;理解诚信是做人的基本要求,做到言行一致;团结同学,宽容友爱。·感念父母养育之恩、长辈关爱之情,能够以感恩的心与父母和长辈沟通,能够为父母分忧解难,尊重师长。·维护公共秩序,讲社会公德,爱护公共财物,在公共生活中做一个文明的社会成员。\\n·感知劳动创造的成就感、幸福感,领会劳动对个人和社会的价值,形成诚实劳动、劳动创造美好生活意识;初步了解职业道德规范,立志做未来的好建设者。\"}, {\"coreliteracy\": \"法治观念\", \"description\": \"·了解法律对个人生活、社会秩序和国家发展的作用,理解法治的本质及特征,了解法治是中国式现代化的重要保障。·了解宪法的主要内容,明确宪法的地位与作用,认识国家基本制度和国家机构,知道中国共产党领导是中国特色社会主义最本质的特征,是中国特色社会主义制度的最大优势。·了解以民法典为代表的、与日常生活相关的法律,理解法律是实现和维护公平正义的基本途径。·认识违法行为及其法律责任,理解犯罪的特征及后果,主动预防未成年人犯罪。\\n·了解法律对国家安全的保障作用,自觉履行维护国家安全的义务。\"}, {\"coreliteracy\": \"健全人格\", \"description\": \"·懂得生命的意义和价值,热爱生活,确立正确的人生观。·正确认识自己,能够自我反思,不断完善自我,保持乐观的态度,学会合作,树立团队意识。·能够自主调控自身的情绪波动,具有良好的沟通能力,主动建立良好的人际关系。·养成自尊自信的人生态度,在生活中磨炼意志,形成良好的抗挫折能力。\\n·能够清楚表达自己的感受和见解，善于倾听他人的意见，自我改进。\"}, {\"coreliteracy\": \"责任意识\", \"description\": \"·自觉分担家庭责任，体会敬业精神的重要性，具有较强的责任感。·关心社会，知道我国全过程人民民主的优越性，了解时政，主动参与社会公益活动和志愿者活动；在团队合作互动中增强合作精神和领导力。\\n·具备国家利益高于一切的观念,能够以实际行动维护民族团结,捍卫国家主权。·敬畏自然,具有绿色发展理念,初步形成环保意识和生态文明观;能够在日常生活中自觉践行生态文明的理念。\"}]"};

// =====================================================
// 导入关系
// =====================================================

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:01"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:01"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:02"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:01"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:03"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:01"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:04"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:01"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:05"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:02"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:06"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:06"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:02"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:07"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:07"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:02"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:08"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:02"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:09"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:09"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:03"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:10"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:10"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:03"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:11"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:11"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:03"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:12"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:03"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:13"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:04"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:14"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:14"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:04"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:15"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:15"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:04"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:16"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:16"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:04"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:17"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:17"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:05"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:18"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:05"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:19"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:19"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:05"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:20"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:20"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:05"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:06"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:21"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:21"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:06"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:06"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:22"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:22"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:06"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:06"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:23"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:23"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:06"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:06"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:24"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:24"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:06"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:07"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:25"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:25"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:07"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:07"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:26"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:26"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:07"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:07"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:27"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:27"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:07"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:07"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:28"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:28"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:07"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:29"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:29"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:08"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:30"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:30"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:08"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:31"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:31"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:08"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:32"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:32"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:08"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:09"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:33"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:33"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:09"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:09"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:34"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:34"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:09"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:09"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:35"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:35"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:09"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:09"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:36"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:36"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:09"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:10"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:37"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:37"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:10"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:10"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:38"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:38"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:10"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:10"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:39"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:39"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:10"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:10"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:40"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:40"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:10"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:11"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:41"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:41"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:11"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:11"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:42"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:42"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:11"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:11"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:43"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:43"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:11"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:11"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:44"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:44"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:11"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:45"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:45"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:12"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:46"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:46"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:12"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:47"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:47"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:12"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:48"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:48"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:12"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:49"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:49"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:13"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:50"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:50"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:13"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:51"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:51"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:13"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:52"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:52"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:13"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:14"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:53"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:53"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:14"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:14"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:54"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:54"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:14"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:14"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:55"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:55"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:14"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:14"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:56"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:56"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:14"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:15"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:57"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:57"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:15"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:15"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:58"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:58"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:15"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:15"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:59"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:59"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:15"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:15"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:60"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:60"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:15"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:16"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:61"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:61"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:16"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:16"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:62"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:62"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:16"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:16"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:63"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:63"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:16"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:16"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:64"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:64"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:16"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:17"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:65"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:65"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:17"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:17"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:66"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:66"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:17"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:17"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:67"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:67"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:17"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:68"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:68"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:18"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:69"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:69"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:18"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:70"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:70"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:18"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:19"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:71"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:71"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:19"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:19"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:72"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:72"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:19"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:19"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:73"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:73"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:19"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:20"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:74"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:74"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:20"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:20"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:75"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:75"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:20"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:20"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:76"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:76"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:20"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:20"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:77"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:77"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:20"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:21"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:78"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:78"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:21"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:21"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:79"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:79"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:21"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:21"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:80"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:80"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:21"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:21"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:81"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:81"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:21"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:22"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:82"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:82"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:22"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:22"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:83"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:83"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:22"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:22"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:84"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:84"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:22"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:23"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:85"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:85"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:23"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:23"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:86"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:86"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:23"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:23"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:87"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:87"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:23"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:24"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:88"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:88"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:24"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:24"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:89"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:89"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:24"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:24"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:90"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:90"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:24"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:25"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:91"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:91"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:25"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:25"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:92"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:92"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:25"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:25"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:93"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:93"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:25"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:26"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:94"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:94"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:26"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:26"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:95"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:95"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:26"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:26"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:96"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:96"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:26"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:27"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:97"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:97"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:27"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:27"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:98"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:98"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:27"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:27"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:99"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:99"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:27"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:28"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:100"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:100"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:28"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:28"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:101"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:101"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:28"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:28"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:102"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:102"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:28"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:29"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:103"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:103"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:29"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:29"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:104"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:104"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:29"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:29"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:105"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:105"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:29"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:30"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:106"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:106"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:30"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:30"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:107"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:107"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:30"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:30"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:108"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:108"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:30"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:31"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:109"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:109"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:31"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:31"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:110"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:110"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:31"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:31"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:111"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:111"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:31"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:32"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:112"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:112"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:32"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:32"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:113"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:113"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:32"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:32"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:114"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:114"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:32"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:33"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:115"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:115"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:33"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:33"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:116"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:116"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:33"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:33"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:117"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:117"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:33"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:34"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:118"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:118"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:34"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:34"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:119"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:119"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:34"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:35"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:120"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:120"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:35"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:35"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:121"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:121"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:35"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:36"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:122"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:122"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:36"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:36"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:123"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:123"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:36"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:36"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:124"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:124"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:36"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:37"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:125"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:125"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:37"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:37"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:126"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:126"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:37"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:37"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:127"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:127"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:37"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:38"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:128"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:128"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:38"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:38"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:129"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:129"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:38"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:38"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:130"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:130"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:38"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:39"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:131"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:131"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:39"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:39"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:132"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:132"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:39"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:39"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:133"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:133"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:39"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:39"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:134"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:134"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:39"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:39"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:135"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:135"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:39"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:39"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:136"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:136"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:39"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:40"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:137"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:137"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:40"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:40"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:138"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:138"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:40"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:41"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:139"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:139"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:41"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:41"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:140"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:140"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:41"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:42"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:141"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:141"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:42"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:42"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:142"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:142"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:42"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:42"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:143"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:143"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:42"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:43"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:144"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:144"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:43"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:43"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:145"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:145"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:43"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:44"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:146"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:146"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:44"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:44"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:147"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:147"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:44"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:44"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:148"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:148"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:44"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:45"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:149"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:149"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:45"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:45"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:150"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:150"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:45"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:46"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:151"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:151"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:46"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:46"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:152"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:152"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:46"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:47"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:153"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:153"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:47"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:47"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:154"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:154"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:47"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:47"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:155"})
MERGE (source)-[r:ChapterprimaryHasSectionprimary]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:155"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chapterprimary:47"})
MERGE (source)-[r:SectionprimaryBelongsToChapterprimary]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH01"})
MERGE (source)-[r:stageSetsTheme]->(target)
SET r.label = "设置主题 / setsTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST01"})
MERGE (source)-[r:themeBelongsToStage]->(target)
SET r.label = "所属学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:stageSetsTheme]->(target)
SET r.label = "设置主题 / setsTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST01"})
MERGE (source)-[r:themeBelongsToStage]->(target)
SET r.label = "所属学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH05"})
MERGE (source)-[r:stageSetsTheme]->(target)
SET r.label = "设置主题 / setsTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST01"})
MERGE (source)-[r:themeBelongsToStage]->(target)
SET r.label = "所属学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH09"})
MERGE (source)-[r:stageSetsTheme]->(target)
SET r.label = "设置主题 / setsTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH09"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST01"})
MERGE (source)-[r:themeBelongsToStage]->(target)
SET r.label = "所属学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MERGE (source)-[r:stageSetsTheme]->(target)
SET r.label = "设置主题 / setsTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST01"})
MERGE (source)-[r:themeBelongsToStage]->(target)
SET r.label = "所属学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:stageSetsTheme]->(target)
SET r.label = "设置主题 / setsTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST02"})
MERGE (source)-[r:themeBelongsToStage]->(target)
SET r.label = "所属学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH06"})
MERGE (source)-[r:stageSetsTheme]->(target)
SET r.label = "设置主题 / setsTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH06"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST02"})
MERGE (source)-[r:themeBelongsToStage]->(target)
SET r.label = "所属学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH10"})
MERGE (source)-[r:stageSetsTheme]->(target)
SET r.label = "设置主题 / setsTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH10"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST02"})
MERGE (source)-[r:themeBelongsToStage]->(target)
SET r.label = "所属学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH14"})
MERGE (source)-[r:stageSetsTheme]->(target)
SET r.label = "设置主题 / setsTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH14"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST02"})
MERGE (source)-[r:themeBelongsToStage]->(target)
SET r.label = "所属学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH16"})
MERGE (source)-[r:stageSetsTheme]->(target)
SET r.label = "设置主题 / setsTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH16"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST02"})
MERGE (source)-[r:themeBelongsToStage]->(target)
SET r.label = "所属学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MERGE (source)-[r:stageSetsTheme]->(target)
SET r.label = "设置主题 / setsTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST03"})
MERGE (source)-[r:themeBelongsToStage]->(target)
SET r.label = "所属学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH07"})
MERGE (source)-[r:stageSetsTheme]->(target)
SET r.label = "设置主题 / setsTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH07"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST03"})
MERGE (source)-[r:themeBelongsToStage]->(target)
SET r.label = "所属学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH11"})
MERGE (source)-[r:stageSetsTheme]->(target)
SET r.label = "设置主题 / setsTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH11"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST03"})
MERGE (source)-[r:themeBelongsToStage]->(target)
SET r.label = "所属学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH15"})
MERGE (source)-[r:stageSetsTheme]->(target)
SET r.label = "设置主题 / setsTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH15"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST03"})
MERGE (source)-[r:themeBelongsToStage]->(target)
SET r.label = "所属学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH17"})
MERGE (source)-[r:stageSetsTheme]->(target)
SET r.label = "设置主题 / setsTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH17"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST03"})
MERGE (source)-[r:themeBelongsToStage]->(target)
SET r.label = "所属学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:stageSetsTheme]->(target)
SET r.label = "设置主题 / setsTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST04"})
MERGE (source)-[r:themeBelongsToStage]->(target)
SET r.label = "所属学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:stageSetsTheme]->(target)
SET r.label = "设置主题 / setsTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST04"})
MERGE (source)-[r:themeBelongsToStage]->(target)
SET r.label = "所属学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:stageSetsTheme]->(target)
SET r.label = "设置主题 / setsTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST04"})
MERGE (source)-[r:themeBelongsToStage]->(target)
SET r.label = "所属学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH19"})
MERGE (source)-[r:stageSetsTheme]->(target)
SET r.label = "设置主题 / setsTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH19"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST04"})
MERGE (source)-[r:themeBelongsToStage]->(target)
SET r.label = "所属学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH20"})
MERGE (source)-[r:stageSetsTheme]->(target)
SET r.label = "设置主题 / setsTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH20"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST04"})
MERGE (source)-[r:themeBelongsToStage]->(target)
SET r.label = "所属学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH01"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:01"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH09"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH09"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:02"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH01"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:03"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH05"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:04"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH01"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:05"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:06"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH01"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:06"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:07"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH01"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:07"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH01"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:08"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:09"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:09"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:10"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:10"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:11"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:11"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:12"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:13"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:14"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:14"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:15"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:15"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:16"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:16"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:17"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH01"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:17"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH01"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:18"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:19"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH01"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:19"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:20"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH01"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:20"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:21"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:21"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:22"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:22"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:23"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:23"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:24"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:24"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:25"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:25"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:26"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:26"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:27"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:27"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:28"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:28"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:29"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:29"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:30"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:30"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:31"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:31"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:32"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:32"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:33"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:33"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:34"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:34"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:35"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:35"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:36"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:36"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:37"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:37"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:38"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH09"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH09"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:38"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:39"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:39"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:40"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:40"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:41"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:41"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:42"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:42"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:43"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:43"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:44"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:44"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:45"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:45"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:46"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:46"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:47"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:47"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:48"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:48"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:49"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:49"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:50"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:50"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:51"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:51"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:52"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:52"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:53"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH05"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:53"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:54"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:54"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:55"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:55"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:56"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH05"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:56"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:57"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:57"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:58"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:58"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:59"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:59"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:60"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:60"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:61"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:61"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:62"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:62"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:63"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:63"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:64"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:64"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:65"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:65"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:66"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:66"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:67"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:67"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:68"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:68"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:69"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:69"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:70"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:70"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:71"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:71"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:72"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:72"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:73"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:73"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:74"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:74"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:75"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:75"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:76"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH10"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH10"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:76"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:77"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH06"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH06"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:77"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:78"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:78"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:79"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:79"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:80"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:80"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:81"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:81"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:82"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:82"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:83"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:83"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:84"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:84"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:85"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:85"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:86"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH10"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH10"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:86"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:87"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:87"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:88"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH06"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH06"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:88"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:89"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH06"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH06"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:89"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:90"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH06"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH06"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:90"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:91"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:91"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:92"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:92"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:93"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:93"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:94"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:94"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:95"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:95"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:96"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:96"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:97"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH06"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH06"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:97"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:98"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH16"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH16"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:98"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:99"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:99"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:100"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:100"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:101"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:101"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:102"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:102"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:103"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:103"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:104"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:104"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:105"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:105"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:106"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:106"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:107"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:107"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:108"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:108"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:109"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:109"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:110"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:110"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:111"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:111"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:112"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:112"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:113"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:113"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:114"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:114"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:115"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:115"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:116"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:116"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:117"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:117"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:118"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:118"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:119"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:119"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:120"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH17"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH17"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:120"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:121"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH17"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH17"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:121"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:122"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH17"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH17"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:122"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:123"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH15"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH15"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:123"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:124"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:124"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:125"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:125"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:126"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:126"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:127"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:127"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:128"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:128"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:129"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:129"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:130"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:130"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:131"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:131"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:132"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH17"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH17"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:132"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:133"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH17"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH17"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:133"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:134"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH15"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH15"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:134"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:135"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH17"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH17"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:135"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:136"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:136"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:137"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH11"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH11"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:137"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:138"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH11"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH11"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:138"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:139"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:139"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:140"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH11"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH11"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:140"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:141"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:141"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:142"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:142"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:143"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:143"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:144"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH07"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH07"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:144"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:145"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH07"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH07"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:145"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:146"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH07"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH07"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:146"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:147"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH07"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH07"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:147"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:148"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH07"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH07"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:148"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:149"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH17"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH17"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:149"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:150"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:150"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:151"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH15"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH15"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:151"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:152"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:152"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:153"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH17"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH17"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:153"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:154"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH17"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH17"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:154"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:155"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH17"})
MERGE (source)-[r:SectionprimaryBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH17"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionprimary:155"})
MERGE (source)-[r:ThemeHasSectionprimary]->(target)
SET r.label = "包含节 / hasSectionprimary";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MERGE (source)-[r:stageHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL02"})
MERGE (source)-[r:stageHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL03"})
MERGE (source)-[r:stageHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL04"})
MERGE (source)-[r:stageHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MERGE (source)-[r:stageHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MERGE (source)-[r:stageHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL02"})
MERGE (source)-[r:stageHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL03"})
MERGE (source)-[r:stageHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL04"})
MERGE (source)-[r:stageHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MERGE (source)-[r:stageHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MERGE (source)-[r:stageHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL02"})
MERGE (source)-[r:stageHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL03"})
MERGE (source)-[r:stageHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL04"})
MERGE (source)-[r:stageHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MERGE (source)-[r:stageHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MERGE (source)-[r:stageHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL02"})
MERGE (source)-[r:stageHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL03"})
MERGE (source)-[r:stageHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL04"})
MERGE (source)-[r:stageHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Stage:ST04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MERGE (source)-[r:stageHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST01"})
MERGE (source)-[r:coreLiteracyBelongsToStage]->(target)
SET r.label = "属于学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST02"})
MERGE (source)-[r:coreLiteracyBelongsToStage]->(target)
SET r.label = "属于学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST03"})
MERGE (source)-[r:coreLiteracyBelongsToStage]->(target)
SET r.label = "属于学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST04"})
MERGE (source)-[r:coreLiteracyBelongsToStage]->(target)
SET r.label = "属于学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST01"})
MERGE (source)-[r:coreLiteracyBelongsToStage]->(target)
SET r.label = "属于学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST02"})
MERGE (source)-[r:coreLiteracyBelongsToStage]->(target)
SET r.label = "属于学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST03"})
MERGE (source)-[r:coreLiteracyBelongsToStage]->(target)
SET r.label = "属于学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST04"})
MERGE (source)-[r:coreLiteracyBelongsToStage]->(target)
SET r.label = "属于学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST01"})
MERGE (source)-[r:coreLiteracyBelongsToStage]->(target)
SET r.label = "属于学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST02"})
MERGE (source)-[r:coreLiteracyBelongsToStage]->(target)
SET r.label = "属于学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST03"})
MERGE (source)-[r:coreLiteracyBelongsToStage]->(target)
SET r.label = "属于学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST04"})
MERGE (source)-[r:coreLiteracyBelongsToStage]->(target)
SET r.label = "属于学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST01"})
MERGE (source)-[r:coreLiteracyBelongsToStage]->(target)
SET r.label = "属于学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST02"})
MERGE (source)-[r:coreLiteracyBelongsToStage]->(target)
SET r.label = "属于学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST03"})
MERGE (source)-[r:coreLiteracyBelongsToStage]->(target)
SET r.label = "属于学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST04"})
MERGE (source)-[r:coreLiteracyBelongsToStage]->(target)
SET r.label = "属于学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST01"})
MERGE (source)-[r:coreLiteracyBelongsToStage]->(target)
SET r.label = "属于学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST02"})
MERGE (source)-[r:coreLiteracyBelongsToStage]->(target)
SET r.label = "属于学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST03"})
MERGE (source)-[r:coreLiteracyBelongsToStage]->(target)
SET r.label = "属于学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Stage:ST04"})
MERGE (source)-[r:coreLiteracyBelongsToStage]->(target)
SET r.label = "属于学段 / belongsToStage";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:01"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:01"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:02"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:01"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:03"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:02"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:04"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:02"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:05"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:03"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:06"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:06"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:03"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:07"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:07"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:05"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:08"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:05"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:06"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:09"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:09"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:06"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:06"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:10"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:10"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:06"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:07"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:11"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:11"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:07"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:07"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:12"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:07"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:13"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:08"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:14"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:14"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:08"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:10"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:15"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:15"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:10"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:10"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:16"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:16"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:10"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:11"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:17"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:17"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:11"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:11"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:18"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:11"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:19"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:19"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:12"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:20"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:20"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:12"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:14"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:21"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:21"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:14"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:14"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:22"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:22"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:14"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:15"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:23"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:23"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:15"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:15"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:24"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:24"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:15"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:16"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:25"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:25"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:16"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:16"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:26"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:26"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:16"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:27"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:27"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:18"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:28"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:28"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:18"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:29"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:29"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:18"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:19"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:30"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:30"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:19"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:19"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:31"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:31"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:19"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:19"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:32"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:32"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:19"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:21"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:33"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:33"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:21"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:21"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:34"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:34"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:21"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:22"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:35"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:35"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:22"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:22"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:36"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:36"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:22"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:23"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:37"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:37"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:23"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:23"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:38"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:38"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:23"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:25"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:39"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:39"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:25"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:25"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:40"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:40"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:25"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:26"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:41"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:41"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:26"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:26"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:42"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:42"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:26"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:27"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:43"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:43"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:27"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:27"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:44"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:44"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:27"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:29"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:45"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:45"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:29"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:29"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:46"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:46"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:29"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:30"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:47"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:47"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:30"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:30"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:48"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:48"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:30"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:30"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:49"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:49"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:30"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:31"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:50"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:50"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:31"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:31"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:51"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:51"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:31"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:31"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:52"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:52"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:31"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:33"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:53"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:53"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:33"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:33"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:54"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:54"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:33"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:34"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:55"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:55"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:34"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:34"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:56"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:56"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:34"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:35"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:57"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:57"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:35"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:35"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:58"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:58"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:35"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:37"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:59"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:59"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:37"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:37"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:60"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:60"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:37"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:38"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:61"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:61"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:38"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:38"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:62"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:62"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:38"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:38"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:63"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:63"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:38"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:39"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:64"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:64"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:39"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:39"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:65"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:65"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:39"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:41"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:66"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:66"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:41"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:41"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:67"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:67"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:41"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:42"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:68"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:68"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:42"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:42"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:69"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:69"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:42"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:43"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:70"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:70"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:43"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:43"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:71"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:71"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:43"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:45"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:72"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:72"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:45"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:45"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:73"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:73"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:45"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:46"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:74"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:74"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:46"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:46"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:75"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:75"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:46"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:47"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:76"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:76"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:47"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:47"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:77"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:77"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:47"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:49"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:78"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:78"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:49"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:49"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:79"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:79"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:49"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:49"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:80"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:80"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:49"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:50"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:81"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:81"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:50"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:50"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:82"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:82"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:50"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:51"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:83"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:83"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:51"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:51"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:84"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:84"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:51"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:52"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:85"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:85"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:52"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:52"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:86"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:86"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:52"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:53"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:87"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:87"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:53"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:53"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:88"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:88"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:53"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:53"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:89"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:89"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:53"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:54"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:90"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:90"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:54"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:54"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:91"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:91"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:54"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:54"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:92"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:92"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:54"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:54"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:93"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:93"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:54"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:54"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:94"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:94"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:54"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:55"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:95"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:95"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:55"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:55"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:96"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:96"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:55"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:56"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:97"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:97"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:56"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:56"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:98"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:98"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:56"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:57"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:99"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:99"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:57"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:57"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:100"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:100"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:57"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:58"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:101"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:101"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:58"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:58"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:102"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:102"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:58"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:59"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:103"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:103"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:59"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:59"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:104"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:104"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:59"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:60"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:105"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:105"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:60"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:60"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:106"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:106"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:60"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:61"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:107"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:107"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:61"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:61"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:108"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:108"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:61"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:62"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:109"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:109"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:62"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:62"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:110"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:110"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:62"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:63"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:111"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:111"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:63"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:63"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:112"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:112"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:63"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:64"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:113"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:113"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:64"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:64"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:114"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:114"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:64"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:65"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:115"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:115"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:65"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:65"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:116"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:116"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:65"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:66"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:117"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:117"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:66"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:66"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:118"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:118"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:66"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:67"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:119"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:119"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:67"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:67"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:120"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:120"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:67"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:68"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:121"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:121"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:68"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:68"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:122"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:122"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:68"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:69"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:123"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:123"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:69"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:69"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:124"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:124"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:69"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:70"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:125"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:125"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:70"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:70"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:126"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:126"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:70"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:71"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:127"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:127"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:71"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:71"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:128"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:128"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:71"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:72"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:129"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:129"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:72"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:72"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:130"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:130"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:72"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:73"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:131"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:131"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:73"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:73"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:132"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:132"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:73"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:73"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:133"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:133"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:73"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:73"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:134"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:134"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:73"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:74"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:135"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:135"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:74"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:74"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:136"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:136"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:74"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:74"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:137"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:137"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:74"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:74"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:138"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:138"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:74"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:75"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:139"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:139"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:75"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:75"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:140"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:140"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:75"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:75"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:141"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:141"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:75"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:75"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:142"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:142"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:75"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:75"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:143"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:143"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:75"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:76"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:144"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:144"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:76"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:76"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:145"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:145"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:76"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:76"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:146"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:146"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:76"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:76"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:147"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:147"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:76"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:76"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:148"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:148"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:76"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:76"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:149"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:149"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:76"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:76"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:150"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:150"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:76"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:76"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:151"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:151"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:76"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:76"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:152"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:152"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:76"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:76"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:153"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:153"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:76"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:76"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:154"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:154"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:76"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:76"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:155"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:155"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:76"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:77"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:156"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:156"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:77"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:77"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:157"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:157"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:77"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:77"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:158"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:158"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:77"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:77"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:159"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:159"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:77"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:78"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:160"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:160"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:78"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:78"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:161"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:161"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:78"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:78"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:162"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:162"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:78"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:78"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:163"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:163"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:78"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:78"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:164"})
MERGE (source)-[r:SectionmiddleHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:164"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:78"})
MERGE (source)-[r:SubsectionBelongsToSectionmiddle]->(target)
SET r.label = "属于节 / belongsToSectionmiddle";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:01"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:01"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:02"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:01"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:03"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:01"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:04"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:01"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:05"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:02"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:06"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:06"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:02"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:07"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:07"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:02"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:08"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:02"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:09"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:09"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:02"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:10"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:10"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:03"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:11"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:11"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:03"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:12"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:03"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:13"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:03"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:14"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:14"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:04"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:15"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:15"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:04"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:16"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:16"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:04"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:17"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:17"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:04"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:18"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:05"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:19"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:19"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:05"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:20"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:20"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:05"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:06"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:21"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:21"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:06"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:06"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:22"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:22"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:06"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:06"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:23"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:23"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:06"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:06"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:24"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:24"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:06"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:07"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:25"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:25"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:07"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:07"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:26"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:26"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:07"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:07"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:27"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:27"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:07"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:07"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:28"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:28"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:07"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:29"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:29"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:08"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:30"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:30"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:08"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:31"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:31"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:08"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:32"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:32"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:08"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:09"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:33"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:33"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:09"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:09"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:34"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:34"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:09"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:09"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:35"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:35"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:09"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:09"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:36"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:36"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:09"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:10"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:37"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:37"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:10"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:10"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:38"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:38"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:10"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:10"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:39"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:39"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:10"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:10"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:40"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:40"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:10"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:11"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:41"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:41"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:11"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:11"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:42"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:42"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:11"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:11"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:43"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:43"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:11"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:11"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:44"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:44"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:11"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:45"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:45"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:12"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:46"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:46"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:12"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:47"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:47"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:12"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:48"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:48"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:12"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:49"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:49"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:13"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:50"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:50"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:13"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:51"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:51"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:13"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:52"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:52"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:13"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:53"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:53"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:13"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:54"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:54"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:13"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:14"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:55"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:55"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:14"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:14"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:56"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:56"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:14"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:15"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:57"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:57"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:15"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:15"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:58"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:58"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:15"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:16"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:59"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:59"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:16"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:16"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:60"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:60"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:16"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:17"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:61"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:61"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:17"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:17"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:62"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:62"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:17"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:63"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:63"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:18"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:64"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:64"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:18"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:19"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:65"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:65"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:19"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:19"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:66"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:66"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:19"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:20"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:67"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:67"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:20"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:20"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:68"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:68"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:20"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:21"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:69"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:69"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:21"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:21"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:70"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:70"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:21"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:22"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:71"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:71"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:22"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:22"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:72"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:72"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:22"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:23"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:73"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:73"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:23"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:23"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:74"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:74"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:23"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:23"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:75"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:75"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:23"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:24"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:76"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:76"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:24"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:24"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:77"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:77"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:24"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:24"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:78"})
MERGE (source)-[r:ChaptermiddleHasSectionmiddle]->(target)
SET r.label = "包含节 / hasSection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Sectionmiddle:78"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Chaptermiddle:24"})
MERGE (source)-[r:SectionmiddleBelongsToChaptermiddle]->(target)
SET r.label = "属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:01"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:02"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:03"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:04"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:05"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:06"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:06"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:07"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:07"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:08"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:09"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:09"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:10"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:10"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:11"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:11"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:12"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:13"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:14"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:14"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:15"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:15"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:16"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:16"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:17"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:17"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:18"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:19"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:19"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:20"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:20"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:21"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:21"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:22"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:22"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:23"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:23"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:24"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:24"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:25"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:25"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:26"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:26"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:27"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:27"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:28"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:28"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:29"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:29"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:30"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:30"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:31"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:31"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:32"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:32"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:33"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:33"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:34"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:34"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:35"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:35"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:36"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:36"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:37"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:37"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:38"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:38"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:39"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH19"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH19"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:39"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:40"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH19"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH19"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:40"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:41"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH19"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH19"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:41"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:42"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH19"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH19"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:42"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:43"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH19"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH19"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:43"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:44"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH19"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH19"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:44"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:45"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:45"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:46"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:46"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:47"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:47"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:48"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:48"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:49"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:49"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:50"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:50"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:51"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:51"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:52"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:52"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:53"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:53"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:54"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:54"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:55"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:55"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:56"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:56"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:57"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:57"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:58"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:58"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:59"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:59"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:60"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:60"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:61"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:61"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:62"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:62"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:63"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:63"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:64"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:64"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:65"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:65"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:66"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:66"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:67"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:67"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:68"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:68"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:69"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:69"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:70"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:70"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:71"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:71"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:72"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:72"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:73"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:73"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:74"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH20"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH20"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:74"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:75"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:75"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:76"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:76"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:77"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:77"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:78"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:78"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:79"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:79"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:80"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:80"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:81"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:81"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:82"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:82"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:83"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:83"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:84"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:84"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:85"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:85"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:86"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:86"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:87"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:87"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:88"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:88"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:89"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:89"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:90"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:90"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:91"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:91"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:92"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:92"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:93"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:93"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:94"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:94"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:95"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:95"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:96"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:96"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:97"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:97"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:98"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:98"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:99"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:99"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:100"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:100"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:101"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:101"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:102"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:102"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:103"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:103"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:104"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:104"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:105"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:105"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:106"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:106"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:107"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH19"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH19"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:107"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:108"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:108"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:109"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:109"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:110"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:110"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:111"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:111"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:112"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:112"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:113"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:113"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:114"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:114"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:115"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:115"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:116"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:116"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:117"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:117"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:118"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:118"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:119"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:119"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:120"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:120"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:121"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:121"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:122"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:122"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:123"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:123"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:124"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:124"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:125"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:125"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:126"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:126"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:127"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:127"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:128"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:128"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:129"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:129"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:130"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:130"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:131"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:131"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:132"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:132"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:133"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:133"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:134"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:134"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:135"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:135"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:136"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:136"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:137"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:137"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:138"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:138"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:139"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:139"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:140"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:140"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:141"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:141"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:142"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:142"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:143"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:143"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:144"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:144"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:145"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:145"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:146"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:146"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:147"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:147"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:148"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:148"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:149"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:149"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:150"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:150"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:151"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:151"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:152"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:152"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:153"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:153"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:154"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:154"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:155"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:155"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:156"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:156"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:157"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:157"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:158"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:158"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:159"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:159"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:160"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:160"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:161"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:161"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:162"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:162"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:163"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:163"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:subsection:164"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:SubsectionBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:subsection:164"})
MERGE (source)-[r:ThemeHasSubsection]->(target)
SET r.label = "包含小节 / hasSubsection";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL02"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH01"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL04"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH01"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH01"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL02"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL04"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH02"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL02"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL04"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH03"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL03"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH04"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH05"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL02"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH05"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH05"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH06"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH06"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH06"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH06"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH07"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH07"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH07"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL02"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH07"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH07"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL04"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH07"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH08"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH09"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH09"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH09"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL02"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH09"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH09"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL03"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH09"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH09"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH09"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH10"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH10"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH10"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL03"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH10"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH10"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH10"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH11"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH11"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH11"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL03"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH11"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH11"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH11"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL03"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL03"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH12"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL02"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL04"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH13"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH14"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH14"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH14"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL02"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH14"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH14"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL04"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH14"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH14"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH14"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH15"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH15"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH15"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL04"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH15"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH15"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH15"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH16"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH16"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH16"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH16"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH17"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH17"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH17"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL02"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH17"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH17"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH17"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL04"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH18"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH19"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH19"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH19"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL02"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL02"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH19"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH19"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL04"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL04"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH19"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH19"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH19"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH20"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL01"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH20"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Theme:TH20"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MERGE (source)-[r:themeHasCoreLiteracy]->(target)
SET r.label = "包含核心素养 / hasCoreLiteracy";

MATCH (source {identifier: "urn:jy:dwfz:SB0309:Coreliteracy:CL05"})
MATCH (target {identifier: "urn:jy:dwfz:SB0309:Theme:TH20"})
MERGE (source)-[r:coreLiteracyBelongsToTheme]->(target)
SET r.label = "属于主题 / belongsToTheme";
