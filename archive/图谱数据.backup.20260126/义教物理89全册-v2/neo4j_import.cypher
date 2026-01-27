// =====================================================
// 义教物理89全册课标图谱 - Neo4j导入脚本
// 生成时间: 2026-01-23T18:05:07.103257
// =====================================================

// 创建约束和索引
CREATE CONSTRAINT IF NOT EXISTS FOR (n:CoreLiteracy) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:ThemeL1) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:ThemeL3) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Chapter（8、9全册）) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:ExampleProblem) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:ThemeL2) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:CourseTarget) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:ActivitySuggestion) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Section（8、9全册）) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:AcademicQuality) REQUIRE n.identifier IS UNIQUE;

// =====================================================
// 导入实体
// =====================================================

MERGE (n:Chapter（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Chapter:1"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:1", title: "走进物理世界", description: "", subject: "SB0401", type: "Chapter（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册"};

MERGE (n:Chapter（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Chapter:2"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:2", title: "第一章 常见的运动", description: "", subject: "SB0401", type: "Chapter（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册"};

MERGE (n:Chapter（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Chapter:3"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:3", title: "第二章 质量和密度", description: "", subject: "SB0401", type: "Chapter（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册"};

MERGE (n:Chapter（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Chapter:4"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:4", title: "第三章 运动和力", description: "", subject: "SB0401", type: "Chapter（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册"};

MERGE (n:Chapter（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Chapter:5"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:5", title: "第四章 压强与浮力", description: "", subject: "SB0401", type: "Chapter（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册"};

MERGE (n:Chapter（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Chapter:6"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:6", title: "第五章 简单机械", description: "", subject: "SB0401", type: "Chapter（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册"};

MERGE (n:Chapter（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Chapter:7"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:7", title: "第六章 功和能", description: "", subject: "SB0401", type: "Chapter（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册"};

MERGE (n:Chapter（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Chapter:8"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:8", title: "第七章 热现象", description: "", subject: "SB0401", type: "Chapter（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册"};

MERGE (n:Chapter（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9", title: "第八章 光现象", description: "", subject: "SB0401", type: "Chapter（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册"};

MERGE (n:Chapter（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Chapter:10"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:10", title: "其他", description: "", subject: "SB0401", type: "Chapter（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册"};

MERGE (n:Chapter（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Chapter:11"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:11", title: "第九章 简单电路", description: "", subject: "SB0401", type: "Chapter（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册"};

MERGE (n:Chapter（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Chapter:12"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:12", title: "第十章 串联电路和并联电路", description: "", subject: "SB0401", type: "Chapter（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册"};

MERGE (n:Chapter（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Chapter:13"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:13", title: "第十一章 电功和电功率", description: "", subject: "SB0401", type: "Chapter（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册"};

MERGE (n:Chapter（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Chapter:14"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:14", title: "第十二章 磁现象", description: "", subject: "SB0401", type: "Chapter（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册"};

MERGE (n:Chapter（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Chapter:15"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:15", title: "第十三章 通信技术简介", description: "", subject: "SB0401", type: "Chapter（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册"};

MERGE (n:Chapter（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Chapter:16"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:16", title: "第十四章 宇宙和微观世界", description: "", subject: "SB0401", type: "Chapter（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册"};

MERGE (n:Chapter（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17", title: "科学探究", description: "", subject: "SB0401", type: "Chapter（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册"};

MERGE (n:Chapter（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Chapter:18"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:18", title: "其他", description: "", subject: "SB0401", type: "Chapter（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:physics:OB05:CoreLiteracy:1"})
SET n += {identifier: "urn:jy:physics:OB05:CoreLiteracy:1", title: "物理观念", description: "通物理观念是从物理学视角形成的关于物质、运动和相互作用、能量等内容的总体认识，是物理概念和规律等在头脑中的提炼与升华，是从物理学视角解释自然现象和解决实际问题的基础。物理观念主要包括物质观念、运动和相互作用观念、能量观念等要素。", subject: "物理SB0401", type: "CoreLiteracy", applicableLevel: "OB05", contentJson: "{}"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:physics:OB05:CoreLiteracy:2"})
SET n += {identifier: "urn:jy:physics:OB05:CoreLiteracy:2", title: "科学思维", description: "科学思维是从物理学视角对客观事物的本质属性、内在规律及相互关系的认识方式；是建构物理模型的抽象概括过程；是分析综合、推理论证等方法在科学领域的具体运用；是基于事实证据和科学推理对不同信息、观点和结论进行质疑和批判，予以检验和修正，进而提出创造性见解的品格与能力。科学思维主要包括模型建构、科学推理、科学论证、质疑创新等要素。", subject: "物理SB0401", type: "CoreLiteracy", applicableLevel: "OB05", contentJson: "{}"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:physics:OB05:CoreLiteracy:3"})
SET n += {identifier: "urn:jy:physics:OB05:CoreLiteracy:3", title: "科学探究", description: "科学探究是指基于观察和实验提出物理问题、形成猜想与假设、设计实验与制订方案、获取与处理信息、基于证据得出结论并作出解释，以及对科学探究过程和结果进行交流、评估、反思的能力。科学探究主要包括问题、证据、解释、交流等要素。", subject: "物理SB0401", type: "CoreLiteracy", applicableLevel: "OB05", contentJson: "{}"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:physics:OB05:CoreLiteracy:4"})
SET n += {identifier: "urn:jy:physics:OB05:CoreLiteracy:4", title: "科学态度与责任", description: "科学态度与责任是指，在认识科学本质和了解科学、技术、社会、环境之间关系的基础上形成的，探索自然的内在动力，严谨认真、实事求是、持之以恒的品质，热爱自然、保护环境、遵守科学伦理的自觉行为，以及推动可持续发展和实现中华民族伟大复兴的使命担当。科学态度与责任主要包括科学本质观、科学态度、社会责任等要素。", subject: "物理SB0401", type: "CoreLiteracy", applicableLevel: "OB05", contentJson: "{}"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:OB05:ThemeL2:1"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL2:1", title: "1.1 物质的形态和变化", description: "", subject: "物理SB0401", type: "ThemeL2", ThemeL1: "urn:jy:physics:OB05:ThemeL1:1", applicableLevel: "OB05", contentJson: "{}"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:OB05:ThemeL2:2"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL2:2", title: "1.2 物质的性质", description: "", subject: "物理SB0401", type: "ThemeL2", ThemeL1: "urn:jy:physics:OB05:ThemeL1:1", applicableLevel: "OB05", contentJson: "{}"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:OB05:ThemeL2:3"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL2:3", title: "1.3 物质的结构和物质世界的尺度", description: "", subject: "物理SB0401", type: "ThemeL2", ThemeL1: "urn:jy:physics:OB05:ThemeL1:1", applicableLevel: "OB05", contentJson: "{}"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:OB05:ThemeL2:4"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL2:4", title: "2.1 多种多样的运动形式", description: "", subject: "物理SB0401", type: "ThemeL2", ThemeL1: "urn:jy:physics:OB05:ThemeL1:2", applicableLevel: "OB05", contentJson: "{}"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL2:5", title: "2.2 机械运动和力", description: "", subject: "物理SB0401", type: "ThemeL2", ThemeL1: "urn:jy:physics:OB05:ThemeL1:2", applicableLevel: "OB05", contentJson: "{}"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL2:6", title: "2.3 声和光", description: "", subject: "物理SB0401", type: "ThemeL2", ThemeL1: "urn:jy:physics:OB05:ThemeL1:2", applicableLevel: "OB05", contentJson: "{}"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL2:7", title: "2.4 电和磁", description: "", subject: "物理SB0401", type: "ThemeL2", ThemeL1: "urn:jy:physics:OB05:ThemeL1:2", applicableLevel: "OB05", contentJson: "{}"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:OB05:ThemeL2:8"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL2:8", title: "3.1 能量、能量的转化和转移", description: "", subject: "物理SB0401", type: "ThemeL2", ThemeL1: "urn:jy:physics:OB05:ThemeL1:3", applicableLevel: "OB05", contentJson: "{}"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:OB05:ThemeL2:9"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL2:9", title: "3.2 机械能", description: "", subject: "物理SB0401", type: "ThemeL2", ThemeL1: "urn:jy:physics:OB05:ThemeL1:3", applicableLevel: "OB05", contentJson: "{}"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:OB05:ThemeL2:10"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL2:10", title: "3.3 内能", description: "", subject: "物理SB0401", type: "ThemeL2", ThemeL1: "urn:jy:physics:OB05:ThemeL1:3", applicableLevel: "OB05", contentJson: "{}"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:OB05:ThemeL2:11"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL2:11", title: "3.4 电磁能", description: "", subject: "物理SB0401", type: "ThemeL2", ThemeL1: "urn:jy:physics:OB05:ThemeL1:3", applicableLevel: "OB05", contentJson: "{}"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:OB05:ThemeL2:12"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL2:12", title: "3.5 能量守恒", description: "", subject: "物理SB0401", type: "ThemeL2", ThemeL1: "urn:jy:physics:OB05:ThemeL1:3", applicableLevel: "OB05", contentJson: "{}"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:OB05:ThemeL2:13"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL2:13", title: "3.6 能源与可持续发展", description: "", subject: "物理SB0401", type: "ThemeL2", ThemeL1: "urn:jy:physics:OB05:ThemeL1:3", applicableLevel: "OB05", contentJson: "{}"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL2:14", title: "4.1 测量类学生必做实验", description: "", subject: "物理SB0401", type: "ThemeL2", ThemeL1: "urn:jy:physics:OB05:ThemeL1:4", applicableLevel: "OB05", contentJson: "{}"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL2:15", title: "4.2 探究类学生必做实验", description: "", subject: "物理SB0401", type: "ThemeL2", ThemeL1: "urn:jy:physics:OB05:ThemeL1:4", applicableLevel: "OB05", contentJson: "{}"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:OB05:ThemeL2:16"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL2:16", title: "5.1 物理学与日常生活", description: "", subject: "物理SB0401", type: "ThemeL2", ThemeL1: "urn:jy:physics:OB05:ThemeL1:4", applicableLevel: "OB05", contentJson: "{}"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:OB05:ThemeL2:17"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL2:17", title: "5.2 物理学与工程实践", description: "", subject: "物理SB0401", type: "ThemeL2", ThemeL1: "urn:jy:physics:OB05:ThemeL1:4", applicableLevel: "OB05", contentJson: "{}"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:OB05:ThemeL2:18"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL2:18", title: "5.3 物理学与社会发展", description: "", subject: "物理SB0401", type: "ThemeL2", ThemeL1: "urn:jy:physics:OB05:ThemeL1:4", applicableLevel: "OB05", contentJson: "{}"};

MERGE (n:AcademicQuality {identifier: "urn:jy:physics:OB05:AcademicQuality:1"})
SET n += {identifier: "urn:jy:physics:OB05:AcademicQuality:1", title: "学业质量一", description: "能认识物质的形态、属性及结构，认识运动和力、声和光、电和磁，认识机械能、内能、电磁能及能量的转化与守恒，能掌握所学的物理概念和规律；在学习和日常生活中，能从物理学视角观察事物，把所学概念和规律与实际情境联系起来，解释常见自然现象和解决常见物理问题，能综合运用物理概念和规律，分析和解决熟悉情境下的简单物理问题，具有初步的物理观念。", subject: "物理SB0401", type: "AcademicQuality", applicableLevel: "OB05", contentJson: "{}"};

MERGE (n:AcademicQuality {identifier: "urn:jy:physics:OB05:AcademicQuality:2"})
SET n += {identifier: "urn:jy:physics:OB05:AcademicQuality:2", title: "学业质量二", description: "在熟悉的情境中，会用所学模型分析常见的实际问题；在进行简单的物理实验和其他实践活动中，能对活动中的信息进行归纳推理，得到物理结论，在面对日常生活中的实际问题时，能运用所学物理概念、规律进行简单的演绎推理，得到结论；能依照证据形成自己的看法，具有利用证据进行论证的意识；在获取信息时，有判断信息的可靠性和合理性的意识，能从物理学视角对生活中不合理的说法进行质疑并说出理由，发表自己的见解。", subject: "物理SB0401", type: "AcademicQuality", applicableLevel: "OB05", contentJson: "{}"};

MERGE (n:AcademicQuality {identifier: "urn:jy:physics:OB05:AcademicQuality:3"})
SET n += {identifier: "urn:jy:physics:OB05:AcademicQuality:3", title: "学业质量三", description: "能针对一些现象，发现并提出要探究的物理问题，能根据经验和已有知识作出猜想与假设；能针对提出的问题，运用控制变量法等制订比较合理的科学探究方案，会正确使用学生必做实验所涉及的实验器材，并根据实验方案进行规范、安全的实验操作，会正确读取和记录实验数据，能排除简单的实验故障；能根据实验目的整理信息，会用简单的图像或表格描述信息，能通过信息比较或图像分析发现其中的特点，进行初步的因果判断，形成结论并作出解释；能表述物理问题，会用物理学术语、符号、图表等描述探究过程，说明探究结果，撰写简单的科学探究报告。", subject: "物理SB0401", type: "AcademicQuality", applicableLevel: "OB05", contentJson: "{}"};

MERGE (n:AcademicQuality {identifier: "urn:jy:physics:OB05:AcademicQuality:4"})
SET n += {identifier: "urn:jy:physics:OB05:AcademicQuality:4", title: "学业质量四", description: "能初步认识科学本质，体会物理学对人类认识深化及社会发展的推动作用；能保持对自然的好奇、对物理学的兴趣，具有严谨认真和实事求是的科学态度，既坚持原则，又能与他人合作；知道科学探索、技术应用及成果发表具有一定的道德规范，初步了解科学、技术、社会、环境之间的关系，具有保护环境、节约资源、促进可持续发展的责任感和实现中华民族伟大复兴的使命感。", subject: "物理SB0401", type: "AcademicQuality", applicableLevel: "OB05", contentJson: "{}"};

MERGE (n:CourseTarget {identifier: "urn:jy:physics:OB05:CourseTarget:1"})
SET n += {identifier: "urn:jy:physics:OB05:CourseTarget:1", title: "课程目标一", description: "通认识物质的形态、属性及结构，认识运动和力、声和光、电和磁，认识机械能、内能、电磁能及能量的转化与守恒；能将所学物理知识与实际情境联系起来，能从物理学视角观察周围事物，解释有关现象，解决简单的实际问题。初步形成物质观念、运动和相互作用观念、能量观念。", subject: "物理SB0401", type: "CourseTarget", applicableLevel: "OB05", contentJson: "{}"};

MERGE (n:CourseTarget {identifier: "urn:jy:physics:OB05:CourseTarget:2"})
SET n += {identifier: "urn:jy:physics:OB05:CourseTarget:2", title: "课程目标二", description: "会用所学模型分析常见的物理问题；能对相关问题和信息进行分析并得出结论，具有初步的科学推理能力；有利用证据对所研究的问题进行分析和解释的意识，能使用简单和直接的证据表达自己的观点，具有初步的科学论证能力；能独立思考，对相关信息、方案和结论提出自己的见解，具有质疑意识、创新意识。", subject: "物理SB0401", type: "CourseTarget", applicableLevel: "OB05", contentJson: "{}"};

MERGE (n:CourseTarget {identifier: "urn:jy:physics:OB05:CourseTarget:3"})
SET n += {identifier: "urn:jy:physics:OB05:CourseTarget:3", title: "课程目标三", description: "有科学探究的意识，能发现问题、提出问题，形成猜想与假设，具有初步的观察能力和提出问题的能力；能制订简单的科学探究方案，有控制实验条件的意识，会通过实践操作等方式收集信息，初步具有获取证据的能力；能分析、处理信息，得出结论，初步具有对科学探究过程和结果作出解释的能力；能书面或口头表述自己的观点，能自我反思和听取他人意见，具有与他人交流的能力。", subject: "物理SB0401", type: "CourseTarget", applicableLevel: "OB05", contentJson: "{}"};

MERGE (n:CourseTarget {identifier: "urn:jy:physics:OB05:CourseTarget:4"})
SET n += {identifier: "urn:jy:physics:OB05:CourseTarget:4", title: "课程目标四", description: "初步认识科学本质，体会物理学对人类认识深化及社会发展的推动作用；亲近自然，崇尚科学，乐于思考与实践，具有探索自然的好奇心和求知欲，有克服困难的信心和决心，能总结成功的经验，分析失败的原因，体验战胜困难、解决问题的喜悦，严谨认真，实事求是，善于跟他人分享与合作，不迷信权威，敢于提出并坚持基于证据的个人见解，勇于放弃或修正不正确的观点；能关注科学技术对自然环境、人类生活和社会发展的影响，遵守科学伦理，有保护环境、节约资源的意识，能在力所能及的范围内为社会的可持续发展作出贡献，具有实现中华民族伟大复兴的责任感与使命感。", subject: "物理SB0401", type: "CourseTarget", applicableLevel: "OB05", contentJson: "{}"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:1-1-1"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:1-1-1", title: "1.1.1", description: "能描述固态、液态和气态三种物态的基本特征，并列举自然界和日常生活中不同物态的物质及其应用。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:1", applicableLevel: "OB05", contentJson: "{\"code\": \"1.1.1\", \"contentRequirement\": \"能描述固态、液态和气态三种物态的基本特征，并列举自然界和日常生活中不同物态的物质及其应用。\"}", CJ_code: "1.1.1", CJ_contentRequirement: "能描述固态、液态和气态三种物态的基本特征，并列举自然界和日常生活中不同物态的物质及其应用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:1-1-2"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:1-1-2", title: "1.1.2", description: "了解液体温度计的工作原理。会用常见温度计测量温度。能说出生活环境中常见的温度值，尝试对环境温度问题发表自己的见解。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:1", applicableLevel: "OB05", contentJson: "{\"code\": \"1.1.2\", \"contentRequirement\": \"了解液体温度计的工作原理。会用常见温度计测量温度。能说出生活环境中常见的温度值，尝试对环境温度问题发表自己的见解。\"}", CJ_code: "1.1.2", CJ_contentRequirement: "了解液体温度计的工作原理。会用常见温度计测量温度。能说出生活环境中常见的温度值，尝试对环境温度问题发表自己的见解。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:1-1-3"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:1-1-3", title: "1.1.3", description: "经历物态变化的实验探究过程，知道物质的熔点、凝固点和沸点，了解物态变化过程中的吸热和放热现象。能运用物态变化知识说明自然界和生活中的有关现象。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:1", applicableLevel: "OB05", contentJson: "{\"code\": \"1.1.3\", \"contentRequirement\": \"经历物态变化的实验探究过程，知道物质的熔点、凝固点和沸点，了解物态变化过程中的吸热和放热现象。能运用物态变化知识说明自然界和生活中的有关现象。\"}", CJ_code: "1.1.3", CJ_contentRequirement: "经历物态变化的实验探究过程，知道物质的熔点、凝固点和沸点，了解物态变化过程中的吸热和放热现象。能运用物态变化知识说明自然界和生活中的有关现象。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:1-1-4"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:1-1-4", title: "1.1.4", description: "能运用物态变化知识，说明自然界中的水循环现象。了解我国和当地的水资源状况，有节约用水和保护环境的意识。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:1", applicableLevel: "OB05", contentJson: "{\"code\": \"1.1.4\", \"contentRequirement\": \"能运用物态变化知识，说明自然界中的水循环现象。了解我国和当地的水资源状况，有节约用水和保护环境的意识。\"}", CJ_code: "1.1.4", CJ_contentRequirement: "能运用物态变化知识，说明自然界中的水循环现象。了解我国和当地的水资源状况，有节约用水和保护环境的意识。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:1-2-1"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:1-2-1", title: "1.2.1", description: "通过实验，了解物质的一些物理属性，如弹性、磁性、导电性和导热性等，能用语言、文字或图表描述物质的物理属性。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:2", applicableLevel: "OB05", contentJson: "{\"code\": \"1.2.1\", \"contentRequirement\": \"通过实验，了解物质的一些物理属性，如弹性、磁性、导电性和导热性等，能用语言、文字或图表描述物质的物理属性。\"}", CJ_code: "1.2.1", CJ_contentRequirement: "通过实验，了解物质的一些物理属性，如弹性、磁性、导电性和导热性等，能用语言、文字或图表描述物质的物理属性。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:1-2-2"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:1-2-2", title: "1.2.2", description: "知道质量的含义。会测量固体和液体的质量。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:2", applicableLevel: "OB05", contentJson: "{\"code\": \"1.2.2\", \"contentRequirement\": \"知道质量的含义。会测量固体和液体的质量。\"}", CJ_code: "1.2.2", CJ_contentRequirement: "知道质量的含义。会测量固体和液体的质量。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:1-2-3"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:1-2-3", title: "1.2.3", description: "通过实验，理解密度。会测量固体和液体的密度。能解释生活中与密度有关的一些物理现象。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:2", applicableLevel: "OB05", contentJson: "{\"code\": \"1.2.3\", \"contentRequirement\": \"通过实验，理解密度。会测量固体和液体的密度。能解释生活中与密度有关的一些物理现象。\"}", CJ_code: "1.2.3", CJ_contentRequirement: "通过实验，理解密度。会测量固体和液体的密度。能解释生活中与密度有关的一些物理现象。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:1-2-4"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:1-2-4", title: "1.2.4", description: "了解关于物质属性的研究对生产生活和科技进步的影响。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:2", applicableLevel: "OB05", contentJson: "{\"code\": \"1.2.4\", \"contentRequirement\": \"了解关于物质属性的研究对生产生活和科技进步的影响。\"}", CJ_code: "1.2.4", CJ_contentRequirement: "了解关于物质属性的研究对生产生活和科技进步的影响。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:1-3-1"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:1-3-1", title: "1.3.1", description: "知道常见的物质是由分子、原子构成的。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:3", applicableLevel: "OB05", contentJson: "{\"code\": \"1.3.1\", \"contentRequirement\": \"知道常见的物质是由分子、原子构成的。\"}", CJ_code: "1.3.1", CJ_contentRequirement: "知道常见的物质是由分子、原子构成的。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:1-3-2"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:1-3-2", title: "1.3.2", description: "知道原子是由原子核和电子构成的，了解原子的核式结构模型。了解人类探索微观世界的大致历程，关注人类探索微观世界的新进展。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:3", applicableLevel: "OB05", contentJson: "{\"code\": \"1.3.2\", \"contentRequirement\": \"知道原子是由原子核和电子构成的，了解原子的核式结构模型。了解人类探索微观世界的大致历程，关注人类探索微观世界的新进展。\"}", CJ_code: "1.3.2", CJ_contentRequirement: "知道原子是由原子核和电子构成的，了解原子的核式结构模型。了解人类探索微观世界的大致历程，关注人类探索微观世界的新进展。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:1-3-3"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:1-3-3", title: "1.3.3", description: "了解人类探索太阳系及宇宙的大致历程，知道人类对宇宙的探索将不断深入，关注人类探索宇宙的一些重大活动。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:3", applicableLevel: "OB05", contentJson: "{\"code\": \"1.3.3\", \"contentRequirement\": \"了解人类探索太阳系及宇宙的大致历程，知道人类对宇宙的探索将不断深入，关注人类探索宇宙的一些重大活动。\"}", CJ_code: "1.3.3", CJ_contentRequirement: "了解人类探索太阳系及宇宙的大致历程，知道人类对宇宙的探索将不断深入，关注人类探索宇宙的一些重大活动。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:1-3-4"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:1-3-4", title: "1.3.4", description: "了解物质世界的大致尺度。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:3", applicableLevel: "OB05", contentJson: "{\"code\": \"1.3.4\", \"contentRequirement\": \"了解物质世界的大致尺度。\"}", CJ_code: "1.3.4", CJ_contentRequirement: "了解物质世界的大致尺度。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:2-1-1"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:2-1-1", title: "2.1.1", description: "知道机械运动，举例说明机械运动的相对性。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:4", applicableLevel: "OB05", contentJson: "{\"code\": \"2.1.1\", \"contentRequirement\": \"知道机械运动，举例说明机械运动的相对性。\"}", CJ_code: "2.1.1", CJ_contentRequirement: "知道机械运动，举例说明机械运动的相对性。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:2-1-2"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:2-1-2", title: "2.1.2", description: "知道自然界和生活中简单的热现象。了解分子热运动的主要特点，知道分子动理论的基本观点。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:4", applicableLevel: "OB05", contentJson: "{\"code\": \"2.1.2\", \"contentRequirement\": \"知道自然界和生活中简单的热现象。了解分子热运动的主要特点，知道分子动理论的基本观点。\"}", CJ_code: "2.1.2", CJ_contentRequirement: "知道自然界和生活中简单的热现象。了解分子热运动的主要特点，知道分子动理论的基本观点。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:2-1-3"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:2-1-3", title: "2.1.3", description: "举例说明自然界存在多种多样的运动形式。知道物质在不停地运动。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:4", applicableLevel: "OB05", contentJson: "{\"code\": \"2.1.3\", \"contentRequirement\": \"举例说明自然界存在多种多样的运动形式。知道物质在不停地运动。\"}", CJ_code: "2.1.3", CJ_contentRequirement: "举例说明自然界存在多种多样的运动形式。知道物质在不停地运动。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-1"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-1", title: "2.2.1", description: "会选用适当的工具测量长度和时间，会根据生活经验估测长度和时间。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:5", applicableLevel: "OB05", contentJson: "{\"code\": \"2.2.1\", \"contentRequirement\": \"会选用适当的工具测量长度和时间，会根据生活经验估测长度和时间。\"}", CJ_code: "2.2.1", CJ_contentRequirement: "会选用适当的工具测量长度和时间，会根据生活经验估测长度和时间。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-2"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-2", title: "2.2.2", description: "能用速度描述物体运动的快慢，并能进行简单计算。会测量物体运动的速度。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:5", applicableLevel: "OB05", contentJson: "{\"code\": \"2.2.2\", \"contentRequirement\": \"能用速度描述物体运动的快慢，并能进行简单计算。会测量物体运动的速度。\"}", CJ_code: "2.2.2", CJ_contentRequirement: "能用速度描述物体运动的快慢，并能进行简单计算。会测量物体运动的速度。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-3"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-3", title: "2.2.3", description: "通过常见事物或实验，了解重力、弹力和摩擦力，认识力的作用效果。探究并了解滑动摩擦力的大小与哪些因素有关。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:5", applicableLevel: "OB05", contentJson: "{\"code\": \"2.2.3\", \"contentRequirement\": \"通过常见事物或实验，了解重力、弹力和摩擦力，认识力的作用效果。探究并了解滑动摩擦力的大小与哪些因素有关。\"}", CJ_code: "2.2.3", CJ_contentRequirement: "通过常见事物或实验，了解重力、弹力和摩擦力，认识力的作用效果。探究并了解滑动摩擦力的大小与哪些因素有关。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-4"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-4", title: "2.2.4", description: "能用示意图描述力。会测量力的大小。了解同一直线上的二力合成。知道二力平衡条件。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:5", applicableLevel: "OB05", contentJson: "{\"code\": \"2.2.4\", \"contentRequirement\": \"能用示意图描述力。会测量力的大小。了解同一直线上的二力合成。知道二力平衡条件。\"}", CJ_code: "2.2.4", CJ_contentRequirement: "能用示意图描述力。会测量力的大小。了解同一直线上的二力合成。知道二力平衡条件。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-5"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-5", title: "2.2.5", description: "通过实验和科学推理，认识牛顿第一定律。能运用物体的惯性解释自然界和生活中的有关现象。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:5", applicableLevel: "OB05", contentJson: "{\"code\": \"2.2.5\", \"contentRequirement\": \"通过实验和科学推理，认识牛顿第一定律。能运用物体的惯性解释自然界和生活中的有关现象。\"}", CJ_code: "2.2.5", CJ_contentRequirement: "通过实验和科学推理，认识牛顿第一定律。能运用物体的惯性解释自然界和生活中的有关现象。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-6"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-6", title: "2.2.6", description: "知道简单机械。探究并了解杠杆的平衡条件。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:5", applicableLevel: "OB05", contentJson: "{\"code\": \"2.2.6\", \"contentRequirement\": \"知道简单机械。探究并了解杠杆的平衡条件。\"}", CJ_code: "2.2.6", CJ_contentRequirement: "知道简单机械。探究并了解杠杆的平衡条件。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-7"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-7", title: "2.2.7", description: "通过实验，理解压强。知道增大和减小压强的方法，并了解其在生产生活中的应用。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:5", applicableLevel: "OB05", contentJson: "{\"code\": \"2.2.7\", \"contentRequirement\": \"通过实验，理解压强。知道增大和减小压强的方法，并了解其在生产生活中的应用。\"}", CJ_code: "2.2.7", CJ_contentRequirement: "通过实验，理解压强。知道增大和减小压强的方法，并了解其在生产生活中的应用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-8"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-8", title: "2.2.8", description: "探究并了解液体压强与哪些因素有关。知道大气压强及其与人类生活的关系。了解流体压强与流速的关系及其在生产生活中的应用。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:5", applicableLevel: "OB05", contentJson: "{\"code\": \"2.2.8\", \"contentRequirement\": \"探究并了解液体压强与哪些因素有关。知道大气压强及其与人类生活的关系。了解流体压强与流速的关系及其在生产生活中的应用。\"}", CJ_code: "2.2.8", CJ_contentRequirement: "探究并了解液体压强与哪些因素有关。知道大气压强及其与人类生活的关系。了解流体压强与流速的关系及其在生产生活中的应用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-9"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-9", title: "2.2.9", description: "通过实验，认识浮力。探究并了解浮力大小与哪些因素有关。知道阿基米德原理，能运用物体的浮沉条件说明生产生活中的有关现象。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:5", applicableLevel: "OB05", contentJson: "{\"code\": \"2.2.9\", \"contentRequirement\": \"通过实验，认识浮力。探究并了解浮力大小与哪些因素有关。知道阿基米德原理，能运用物体的浮沉条件说明生产生活中的有关现象。\"}", CJ_code: "2.2.9", CJ_contentRequirement: "通过实验，认识浮力。探究并了解浮力大小与哪些因素有关。知道阿基米德原理，能运用物体的浮沉条件说明生产生活中的有关现象。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-1"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-1", title: "2.3.1", description: "通过实验，认识声的产生和传播条件。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:6", applicableLevel: "OB05", contentJson: "{\"code\": \"2.3.1\", \"contentRequirement\": \"通过实验，认识声的产生和传播条件。\"}", CJ_code: "2.3.1", CJ_contentRequirement: "通过实验，认识声的产生和传播条件。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-2"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-2", title: "2.3.2", description: "了解声音的特性。了解现代技术中声学知识的一些应用。知道噪声的危害及控制方法。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:6", applicableLevel: "OB05", contentJson: "{\"code\": \"2.3.2\", \"contentRequirement\": \"了解声音的特性。了解现代技术中声学知识的一些应用。知道噪声的危害及控制方法。\"}", CJ_code: "2.3.2", CJ_contentRequirement: "了解声音的特性。了解现代技术中声学知识的一些应用。知道噪声的危害及控制方法。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-3"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-3", title: "2.3.3", description: "探究并了解光的反射定律。通过实验，了解光的折射现象及其特点。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:6", applicableLevel: "OB05", contentJson: "{\"code\": \"2.3.3\", \"contentRequirement\": \"探究并了解光的反射定律。通过实验，了解光的折射现象及其特点。\"}", CJ_code: "2.3.3", CJ_contentRequirement: "探究并了解光的反射定律。通过实验，了解光的折射现象及其特点。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-4"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-4", title: "2.3.4", description: "探究并了解平面镜成像时像与物的关系。知道平面镜成像的特点及应用。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:6", applicableLevel: "OB05", contentJson: "{\"code\": \"2.3.4\", \"contentRequirement\": \"探究并了解平面镜成像时像与物的关系。知道平面镜成像的特点及应用。\"}", CJ_code: "2.3.4", CJ_contentRequirement: "探究并了解平面镜成像时像与物的关系。知道平面镜成像的特点及应用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-5"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-5", title: "2.3.5", description: "了解凸透镜对光的会聚作用和凹透镜对光的发散作用。探究并了解凸透镜成像的规律。了解凸透镜成像规律的应用。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:6", applicableLevel: "OB05", contentJson: "{\"code\": \"2.3.5\", \"contentRequirement\": \"了解凸透镜对光的会聚作用和凹透镜对光的发散作用。探究并了解凸透镜成像的规律。了解凸透镜成像规律的应用。\"}", CJ_code: "2.3.5", CJ_contentRequirement: "了解凸透镜对光的会聚作用和凹透镜对光的发散作用。探究并了解凸透镜成像的规律。了解凸透镜成像规律的应用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-6"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-6", title: "2.3.6", description: "通过实验，了解白光的组成和不同色光混合的现象。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:6", applicableLevel: "OB05", contentJson: "{\"code\": \"2.3.6\", \"contentRequirement\": \"通过实验，了解白光的组成和不同色光混合的现象。\"}", CJ_code: "2.3.6", CJ_contentRequirement: "通过实验，了解白光的组成和不同色光混合的现象。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-1"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-1", title: "2.4.1", description: "观察摩擦起电现象，了解静电现象。了解生产生活中关于静电防止和利用的技术。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:7", applicableLevel: "OB05", contentJson: "{\"code\": \"2.4.1\", \"contentRequirement\": \"观察摩擦起电现象，了解静电现象。了解生产生活中关于静电防止和利用的技术。\"}", CJ_code: "2.4.1", CJ_contentRequirement: "观察摩擦起电现象，了解静电现象。了解生产生活中关于静电防止和利用的技术。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-2"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-2", title: "2.4.2", description: "通过实验，认识磁场。知道地磁场。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:7", applicableLevel: "OB05", contentJson: "{\"code\": \"2.4.2\", \"contentRequirement\": \"通过实验，认识磁场。知道地磁场。\"}", CJ_code: "2.4.2", CJ_contentRequirement: "通过实验，认识磁场。知道地磁场。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-3"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-3", title: "2.4.3", description: "通过实验，了解电流周围存在磁场。探究并了解通电螺线管外部磁场的方向。了解电磁铁在生产生活中的应用。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:7", applicableLevel: "OB05", contentJson: "{\"code\": \"2.4.3\", \"contentRequirement\": \"通过实验，了解电流周围存在磁场。探究并了解通电螺线管外部磁场的方向。了解电磁铁在生产生活中的应用。\"}", CJ_code: "2.4.3", CJ_contentRequirement: "通过实验，了解电流周围存在磁场。探究并了解通电螺线管外部磁场的方向。了解电磁铁在生产生活中的应用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-4"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-4", title: "2.4.4", description: "通过实验，了解通电导线在磁场中会受到力的作用，并知道力的方向与哪些因素有关。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:7", applicableLevel: "OB05", contentJson: "{\"code\": \"2.4.4\", \"contentRequirement\": \"通过实验，了解通电导线在磁场中会受到力的作用，并知道力的方向与哪些因素有关。\"}", CJ_code: "2.4.4", CJ_contentRequirement: "通过实验，了解通电导线在磁场中会受到力的作用，并知道力的方向与哪些因素有关。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-5"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-5", title: "2.4.5", description: "探究并了解导体在磁场中运动时产生感应电流的条件。了解电磁感应在生产生活中的应用。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:7", applicableLevel: "OB05", contentJson: "{\"code\": \"2.4.5\", \"contentRequirement\": \"探究并了解导体在磁场中运动时产生感应电流的条件。了解电磁感应在生产生活中的应用。\"}", CJ_code: "2.4.5", CJ_contentRequirement: "探究并了解导体在磁场中运动时产生感应电流的条件。了解电磁感应在生产生活中的应用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-6"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-6", title: "2.4.6", description: "知道电磁波。知道电磁波在真空中的传播速度。知道波长、频率和波速。了解电磁波的应用及其对人类生活和社会发展的影响。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:7", applicableLevel: "OB05", contentJson: "{\"code\": \"2.4.6\", \"contentRequirement\": \"知道电磁波。知道电磁波在真空中的传播速度。知道波长、频率和波速。了解电磁波的应用及其对人类生活和社会发展的影响。\"}", CJ_code: "2.4.6", CJ_contentRequirement: "知道电磁波。知道电磁波在真空中的传播速度。知道波长、频率和波速。了解电磁波的应用及其对人类生活和社会发展的影响。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:3-1-1"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:3-1-1", title: "3.1.1", description: "了解能量及其存在的不同形式。能描述不同形式的能量和生产生活的联系。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:8", applicableLevel: "OB05", contentJson: "{\"code\": \"3.1.1\", \"contentRequirement\": \"了解能量及其存在的不同形式。能描述不同形式的能量和生产生活的联系。\"}", CJ_code: "3.1.1", CJ_contentRequirement: "了解能量及其存在的不同形式。能描述不同形式的能量和生产生活的联系。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:3-1-2"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:3-1-2", title: "3.1.2", description: "通过实验，认识能量可以从一个物体转移到其他物体，不同形式的能量可以相互转化。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:8", applicableLevel: "OB05", contentJson: "{\"code\": \"3.1.2\", \"contentRequirement\": \"通过实验，认识能量可以从一个物体转移到其他物体，不同形式的能量可以相互转化。\"}", CJ_code: "3.1.2", CJ_contentRequirement: "通过实验，认识能量可以从一个物体转移到其他物体，不同形式的能量可以相互转化。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:3-1-3"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:3-1-3", title: "3.1.3", description: "结合实例，认识功的概念。知道做功的过程就是能量转化或转移的过程。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:8", applicableLevel: "OB05", contentJson: "{\"code\": \"3.1.3\", \"contentRequirement\": \"结合实例，认识功的概念。知道做功的过程就是能量转化或转移的过程。\"}", CJ_code: "3.1.3", CJ_contentRequirement: "结合实例，认识功的概念。知道做功的过程就是能量转化或转移的过程。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:3-2-1"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:3-2-1", title: "3.2.1", description: "知道动能、势能和机械能。通过实验，了解动能和势能的相互转化。举例说明机械能和其他形式能量的相互转化。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:9", applicableLevel: "OB05", contentJson: "{\"code\": \"3.2.1\", \"contentRequirement\": \"知道动能、势能和机械能。通过实验，了解动能和势能的相互转化。举例说明机械能和其他形式能量的相互转化。\"}", CJ_code: "3.2.1", CJ_contentRequirement: "知道动能、势能和机械能。通过实验，了解动能和势能的相互转化。举例说明机械能和其他形式能量的相互转化。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:3-2-2"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:3-2-2", title: "3.2.2", description: "知道机械功和功率。用生活中的实例说明机械功和功率的含义。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:9", applicableLevel: "OB05", contentJson: "{\"code\": \"3.2.2\", \"contentRequirement\": \"知道机械功和功率。用生活中的实例说明机械功和功率的含义。\"}", CJ_code: "3.2.2", CJ_contentRequirement: "知道机械功和功率。用生活中的实例说明机械功和功率的含义。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:3-2-3"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:3-2-3", title: "3.2.3", description: "知道机械效率。了解提高机械效率的意义和途径。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:9", applicableLevel: "OB05", contentJson: "{\"code\": \"3.2.3\", \"contentRequirement\": \"知道机械效率。了解提高机械效率的意义和途径。\"}", CJ_code: "3.2.3", CJ_contentRequirement: "知道机械效率。了解提高机械效率的意义和途径。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:3-2-4"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:3-2-4", title: "3.2.4", description: "能说出人类使用的一些机械。了解机械的使用对社会发展的作用。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:9", applicableLevel: "OB05", contentJson: "{\"code\": \"3.2.4\", \"contentRequirement\": \"能说出人类使用的一些机械。了解机械的使用对社会发展的作用。\"}", CJ_code: "3.2.4", CJ_contentRequirement: "能说出人类使用的一些机械。了解机械的使用对社会发展的作用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:3-3-1"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:3-3-1", title: "3.3.1", description: "了解内能和热量。从能量转化的角度认识燃料的热值。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:10", applicableLevel: "OB05", contentJson: "{\"code\": \"3.3.1\", \"contentRequirement\": \"了解内能和热量。从能量转化的角度认识燃料的热值。\"}", CJ_code: "3.3.1", CJ_contentRequirement: "了解内能和热量。从能量转化的角度认识燃料的热值。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:3-3-2"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:3-3-2", title: "3.3.2", description: "通过实验，了解比热容。能运用比热容说明简单的自然现象。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:10", applicableLevel: "OB05", contentJson: "{\"code\": \"3.3.2\", \"contentRequirement\": \"通过实验，了解比热容。能运用比热容说明简单的自然现象。\"}", CJ_code: "3.3.2", CJ_contentRequirement: "通过实验，了解比热容。能运用比热容说明简单的自然现象。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:3-3-3"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:3-3-3", title: "3.3.3", description: "了解热机的工作原理。知道内能的利用在人类社会发展史中的重要意义。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:10", applicableLevel: "OB05", contentJson: "{\"code\": \"3.3.3\", \"contentRequirement\": \"了解热机的工作原理。知道内能的利用在人类社会发展史中的重要意义。\"}", CJ_code: "3.3.3", CJ_contentRequirement: "了解热机的工作原理。知道内能的利用在人类社会发展史中的重要意义。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-1"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-1", title: "3.4.1", description: "从能量转化的角度认识电源和用电器的作用。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:11", applicableLevel: "OB05", contentJson: "{\"code\": \"3.4.1\", \"contentRequirement\": \"从能量转化的角度认识电源和用电器的作用。\"}", CJ_code: "3.4.1", CJ_contentRequirement: "从能量转化的角度认识电源和用电器的作用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-2"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-2", title: "3.4.2", description: "知道电压、电流和电阻。探究电流与电压、电阻的关系，理解欧姆定律。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:11", applicableLevel: "OB05", contentJson: "{\"code\": \"3.4.2\", \"contentRequirement\": \"知道电压、电流和电阻。探究电流与电压、电阻的关系，理解欧姆定律。\"}", CJ_code: "3.4.2", CJ_contentRequirement: "知道电压、电流和电阻。探究电流与电压、电阻的关系，理解欧姆定律。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-3"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-3", title: "3.4.3", description: "会使用电流表和电压表。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:11", applicableLevel: "OB05", contentJson: "{\"code\": \"3.4.3\", \"contentRequirement\": \"会使用电流表和电压表。\"}", CJ_code: "3.4.3", CJ_contentRequirement: "会使用电流表和电压表。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-4"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-4", title: "3.4.4", description: "会看、会画简单的电路图。会连接简单的串联电路和并联电路。能说出生产生活中采用简单串联电路或并联电路的实例。探究并了解串联电路和并联电路中电流、电压的特点。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:11", applicableLevel: "OB05", contentJson: "{\"code\": \"3.4.4\", \"contentRequirement\": \"会看、会画简单的电路图。会连接简单的串联电路和并联电路。能说出生产生活中采用简单串联电路或并联电路的实例。探究并了解串联电路和并联电路中电流、电压的特点。\"}", CJ_code: "3.4.4", CJ_contentRequirement: "会看、会画简单的电路图。会连接简单的串联电路和并联电路。能说出生产生活中采用简单串联电路或并联电路的实例。探究并了解串联电路和并联电路中电流、电压的特点。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-5"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-5", title: "3.4.5", description: "结合实例，了解电功和电功率。知道用电器的额定功率和实际功率。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:11", applicableLevel: "OB05", contentJson: "{\"code\": \"3.4.5\", \"contentRequirement\": \"结合实例，了解电功和电功率。知道用电器的额定功率和实际功率。\"}", CJ_code: "3.4.5", CJ_contentRequirement: "结合实例，了解电功和电功率。知道用电器的额定功率和实际功率。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-6"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-6", title: "3.4.6", description: "通过实验，了解焦耳定律。能用焦耳定律说明生产生活中的有关现象。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:11", applicableLevel: "OB05", contentJson: "{\"code\": \"3.4.6\", \"contentRequirement\": \"通过实验，了解焦耳定律。能用焦耳定律说明生产生活中的有关现象。\"}", CJ_code: "3.4.6", CJ_contentRequirement: "通过实验，了解焦耳定律。能用焦耳定律说明生产生活中的有关现象。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-7"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-7", title: "3.4.7", description: "了解家庭电路的组成。有安全用电和节约用电的意识。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:11", applicableLevel: "OB05", contentJson: "{\"code\": \"3.4.7\", \"contentRequirement\": \"了解家庭电路的组成。有安全用电和节约用电的意识。\"}", CJ_code: "3.4.7", CJ_contentRequirement: "了解家庭电路的组成。有安全用电和节约用电的意识。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:3-5-1"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:3-5-1", title: "3.5.1", description: "知道能量守恒定律。列举日常生活中能量守恒的实例。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:12", applicableLevel: "OB05", contentJson: "{\"code\": \"3.5.1\", \"contentRequirement\": \"知道能量守恒定律。列举日常生活中能量守恒的实例。\"}", CJ_code: "3.5.1", CJ_contentRequirement: "知道能量守恒定律。列举日常生活中能量守恒的实例。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:3-5-2"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:3-5-2", title: "3.5.2", description: "从能量转化和转移的角度认识效率。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:12", applicableLevel: "OB05", contentJson: "{\"code\": \"3.5.2\", \"contentRequirement\": \"从能量转化和转移的角度认识效率。\"}", CJ_code: "3.5.2", CJ_contentRequirement: "从能量转化和转移的角度认识效率。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:3-5-3"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:3-5-3", title: "3.5.3", description: "列举能量转化和转移具有方向性的常见实例。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:12", applicableLevel: "OB05", contentJson: "{\"code\": \"3.5.3\", \"contentRequirement\": \"列举能量转化和转移具有方向性的常见实例。\"}", CJ_code: "3.5.3", CJ_contentRequirement: "列举能量转化和转移具有方向性的常见实例。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:3-6-1"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:3-6-1", title: "3.6.1", description: "列举常见的不可再生能源和可再生能源。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:13", applicableLevel: "OB05", contentJson: "{\"code\": \"3.6.1\", \"contentRequirement\": \"列举常见的不可再生能源和可再生能源。\"}", CJ_code: "3.6.1", CJ_contentRequirement: "列举常见的不可再生能源和可再生能源。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:3-6-2"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:3-6-2", title: "3.6.2", description: "知道核能的特点和核能利用可能带来的问题。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:13", applicableLevel: "OB05", contentJson: "{\"code\": \"3.6.2\", \"contentRequirement\": \"知道核能的特点和核能利用可能带来的问题。\"}", CJ_code: "3.6.2", CJ_contentRequirement: "知道核能的特点和核能利用可能带来的问题。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:3-6-3"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:3-6-3", title: "3.6.3", description: "从能源开发与利用的角度体会可持续发展的重要性。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:13", applicableLevel: "OB05", contentJson: "{\"code\": \"3.6.3\", \"contentRequirement\": \"从能源开发与利用的角度体会可持续发展的重要性。\"}", CJ_code: "3.6.3", CJ_contentRequirement: "从能源开发与利用的角度体会可持续发展的重要性。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-1"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-1", title: "4.1.1", description: "用托盘天平测量物体的质量。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:14", applicableLevel: "OB05", contentJson: "{\"code\": \"4.1.1\", \"contentRequirement\": \"用托盘天平测量物体的质量。\"}", CJ_code: "4.1.1", CJ_contentRequirement: "用托盘天平测量物体的质量。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-2"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-2", title: "4.1.2", description: "测量固体和液体的密度。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:14", applicableLevel: "OB05", contentJson: "{\"code\": \"4.1.2\", \"contentRequirement\": \"测量固体和液体的密度。\"}", CJ_code: "4.1.2", CJ_contentRequirement: "测量固体和液体的密度。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-3"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-3", title: "4.1.3", description: "用常见温度计测量温度。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:14", applicableLevel: "OB05", contentJson: "{\"code\": \"4.1.3\", \"contentRequirement\": \"用常见温度计测量温度。\"}", CJ_code: "4.1.3", CJ_contentRequirement: "用常见温度计测量温度。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-4"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-4", title: "4.1.4", description: "用刻度尺测量长度，用表测量时间。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:14", applicableLevel: "OB05", contentJson: "{\"code\": \"4.1.4\", \"contentRequirement\": \"用刻度尺测量长度，用表测量时间。\"}", CJ_code: "4.1.4", CJ_contentRequirement: "用刻度尺测量长度，用表测量时间。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-5"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-5", title: "4.1.5", description: "测量物体运动的速度。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:14", applicableLevel: "OB05", contentJson: "{\"code\": \"4.1.5\", \"contentRequirement\": \"测量物体运动的速度。\"}", CJ_code: "4.1.5", CJ_contentRequirement: "测量物体运动的速度。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-6"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-6", title: "4.1.6", description: "用弹簧测力计测量力。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:14", applicableLevel: "OB05", contentJson: "{\"code\": \"4.1.6\", \"contentRequirement\": \"用弹簧测力计测量力。\"}", CJ_code: "4.1.6", CJ_contentRequirement: "用弹簧测力计测量力。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-7"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-7", title: "4.1.7", description: "用电流表测量电流。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:14", applicableLevel: "OB05", contentJson: "{\"code\": \"4.1.7\", \"contentRequirement\": \"用电流表测量电流。\"}", CJ_code: "4.1.7", CJ_contentRequirement: "用电流表测量电流。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-8"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-8", title: "4.1.8", description: "用电压表测量电压。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:14", applicableLevel: "OB05", contentJson: "{\"code\": \"4.1.8\", \"contentRequirement\": \"用电压表测量电压。\"}", CJ_code: "4.1.8", CJ_contentRequirement: "用电压表测量电压。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-9"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-9", title: "4.1.9", description: "用电流表和电压表测量电阻。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:14", applicableLevel: "OB05", contentJson: "{\"code\": \"4.1.9\", \"contentRequirement\": \"用电流表和电压表测量电阻。\"}", CJ_code: "4.1.9", CJ_contentRequirement: "用电流表和电压表测量电阻。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-1"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-1", title: "4.2.1", description: "探究水在沸腾前后温度变化的特点。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:15", applicableLevel: "OB05", contentJson: "{\"code\": \"4.2.1\", \"contentRequirement\": \"探究水在沸腾前后温度变化的特点。\"}", CJ_code: "4.2.1", CJ_contentRequirement: "探究水在沸腾前后温度变化的特点。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-2"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-2", title: "4.2.2", description: "探究滑动摩擦力大小与哪些因素有关。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:15", applicableLevel: "OB05", contentJson: "{\"code\": \"4.2.2\", \"contentRequirement\": \"探究滑动摩擦力大小与哪些因素有关。\"}", CJ_code: "4.2.2", CJ_contentRequirement: "探究滑动摩擦力大小与哪些因素有关。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-3"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-3", title: "4.2.3", description: "探究液体压强与哪些因素有关。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:15", applicableLevel: "OB05", contentJson: "{\"code\": \"4.2.3\", \"contentRequirement\": \"探究液体压强与哪些因素有关。\"}", CJ_code: "4.2.3", CJ_contentRequirement: "探究液体压强与哪些因素有关。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-4"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-4", title: "4.2.4", description: "探究浮力大小与哪些因素有关。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:15", applicableLevel: "OB05", contentJson: "{\"code\": \"4.2.4\", \"contentRequirement\": \"探究浮力大小与哪些因素有关。\"}", CJ_code: "4.2.4", CJ_contentRequirement: "探究浮力大小与哪些因素有关。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-5"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-5", title: "4.2.5", description: "探究杠杆的平衡条件。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:15", applicableLevel: "OB05", contentJson: "{\"code\": \"4.2.5\", \"contentRequirement\": \"探究杠杆的平衡条件。\"}", CJ_code: "4.2.5", CJ_contentRequirement: "探究杠杆的平衡条件。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-6"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-6", title: "4.2.6", description: "探究光的反射定律。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:15", applicableLevel: "OB05", contentJson: "{\"code\": \"4.2.6\", \"contentRequirement\": \"探究光的反射定律。\"}", CJ_code: "4.2.6", CJ_contentRequirement: "探究光的反射定律。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-7"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-7", title: "4.2.7", description: "探究平面镜成像的特点。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:15", applicableLevel: "OB05", contentJson: "{\"code\": \"4.2.7\", \"contentRequirement\": \"探究平面镜成像的特点。\"}", CJ_code: "4.2.7", CJ_contentRequirement: "探究平面镜成像的特点。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-8"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-8", title: "4.2.8", description: "探究凸透镜成像的规律。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:15", applicableLevel: "OB05", contentJson: "{\"code\": \"4.2.8\", \"contentRequirement\": \"探究凸透镜成像的规律。\"}", CJ_code: "4.2.8", CJ_contentRequirement: "探究凸透镜成像的规律。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-9"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-9", title: "4.2.9", description: "探究通电螺线管外部磁场的方向。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:15", applicableLevel: "OB05", contentJson: "{\"code\": \"4.2.9\", \"contentRequirement\": \"探究通电螺线管外部磁场的方向。\"}", CJ_code: "4.2.9", CJ_contentRequirement: "探究通电螺线管外部磁场的方向。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-10"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-10", title: "4.2.10", description: "探究导体在磁场中运动时产生感应电流的条件。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:15", applicableLevel: "OB05", contentJson: "{\"code\": \"4.2.10\", \"contentRequirement\": \"探究导体在磁场中运动时产生感应电流的条件。\"}", CJ_code: "4.2.10", CJ_contentRequirement: "探究导体在磁场中运动时产生感应电流的条件。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-11"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-11", title: "4.2.11", description: "探究串联电路和并联电路中电流、电压的特点。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:15", applicableLevel: "OB05", contentJson: "{\"code\": \"4.2.11\", \"contentRequirement\": \"探究串联电路和并联电路中电流、电压的特点。\"}", CJ_code: "4.2.11", CJ_contentRequirement: "探究串联电路和并联电路中电流、电压的特点。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-12"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-12", title: "4.2.12", description: "探究电流与电压、电阻的关系。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:15", applicableLevel: "OB05", contentJson: "{\"code\": \"4.2.12\", \"contentRequirement\": \"探究电流与电压、电阻的关系。\"}", CJ_code: "4.2.12", CJ_contentRequirement: "探究电流与电压、电阻的关系。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:5-1-1"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:5-1-1", title: "5.1.1", description: "能发现日常生活中与物理学有关的问题，提出解决方案。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:16", applicableLevel: "OB05", contentJson: "{\"code\": \"5.1.1\", \"contentRequirement\": \"能发现日常生活中与物理学有关的问题，提出解决方案。\"}", CJ_code: "5.1.1", CJ_contentRequirement: "能发现日常生活中与物理学有关的问题，提出解决方案。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:5-1-2"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:5-1-2", title: "5.1.2", description: "能运用所学知识分析日常生活中的安全问题，提出解决方案，践行安全与健康生活。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:16", applicableLevel: "OB05", contentJson: "{\"code\": \"5.1.2\", \"contentRequirement\": \"能运用所学知识分析日常生活中的安全问题，提出解决方案，践行安全与健康生活。\"}", CJ_code: "5.1.2", CJ_contentRequirement: "能运用所学知识分析日常生活中的安全问题，提出解决方案，践行安全与健康生活。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:5-1-3"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:5-1-3", title: "5.1.3", description: "能运用所学知识指导和规范个人行为，践行低碳生活，具有节能环保意识。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:16", applicableLevel: "OB05", contentJson: "{\"code\": \"5.1.3\", \"contentRequirement\": \"能运用所学知识指导和规范个人行为，践行低碳生活，具有节能环保意识。\"}", CJ_code: "5.1.3", CJ_contentRequirement: "能运用所学知识指导和规范个人行为，践行低碳生活，具有节能环保意识。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:5-2-1"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:5-2-1", title: "5.2.1", description: "了解我国古代的技术应用案例，体会我国古代科技对人类文明发展的促进作用。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:17", applicableLevel: "OB05", contentJson: "{\"code\": \"5.2.1\", \"contentRequirement\": \"了解我国古代的技术应用案例，体会我国古代科技对人类文明发展的促进作用。\"}", CJ_code: "5.2.1", CJ_contentRequirement: "了解我国古代的技术应用案例，体会我国古代科技对人类文明发展的促进作用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:5-2-2"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:5-2-2", title: "5.2.2", description: "调查物理学应用于工程技术的案例，体会物理学对工程技术发展的促进作用。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:17", applicableLevel: "OB05", contentJson: "{\"code\": \"5.2.2\", \"contentRequirement\": \"调查物理学应用于工程技术的案例，体会物理学对工程技术发展的促进作用。\"}", CJ_code: "5.2.2", CJ_contentRequirement: "调查物理学应用于工程技术的案例，体会物理学对工程技术发展的促进作用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:5-2-3"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:5-2-3", title: "5.2.3", description: "了解物理学在信息技术中的应用。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:17", applicableLevel: "OB05", contentJson: "{\"code\": \"5.2.3\", \"contentRequirement\": \"了解物理学在信息技术中的应用。\"}", CJ_code: "5.2.3", CJ_contentRequirement: "了解物理学在信息技术中的应用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:5-3-1"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:5-3-1", title: "5.3.1", description: "结合实例，尝试分析能源的开发与利用对社会发展的影响。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:18", applicableLevel: "OB05", contentJson: "{\"code\": \"5.3.1\", \"contentRequirement\": \"结合实例，尝试分析能源的开发与利用对社会发展的影响。\"}", CJ_code: "5.3.1", CJ_contentRequirement: "结合实例，尝试分析能源的开发与利用对社会发展的影响。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:5-3-2"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:5-3-2", title: "5.3.2", description: "结合实例，了解一些新材料的特点及其应用。了解新材料的研发与应用对社会发展的影响。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:18", applicableLevel: "OB05", contentJson: "{\"code\": \"5.3.2\", \"contentRequirement\": \"结合实例，了解一些新材料的特点及其应用。了解新材料的研发与应用对社会发展的影响。\"}", CJ_code: "5.3.2", CJ_contentRequirement: "结合实例，了解一些新材料的特点及其应用。了解新材料的研发与应用对社会发展的影响。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:OB05:ThemeL3:5-3-3"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL3:5-3-3", title: "5.3.3", description: "了解我国科技发展的成就，增强科技强国的责任感和使命感。", subject: "物理SB0401", type: "ThemeL3", ThemeL2: "urn:jy:physics:OB05:ThemeL2:18", applicableLevel: "OB05", contentJson: "{\"code\": \"5.3.3\", \"contentRequirement\": \"了解我国科技发展的成就，增强科技强国的责任感和使命感。\"}", CJ_code: "5.3.3", CJ_contentRequirement: "了解我国科技发展的成就，增强科技强国的责任感和使命感。"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_1:01"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_1:01", title: "节水方案设计", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:1\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:1\", \"themeCode\": \"1.1\", \"itemNo\": 1, \"activityText\": \"调查学校或家庭的用水状况，设计一个用于学校或家庭的节水方案。\", \"sourceImage\": \"page_012.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:1", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:1", CJ_themeCode: "1.1", CJ_itemNo: 1, CJ_activityText: "调查学校或家庭的用水状况，设计一个用于学校或家庭的节水方案。", CJ_sourceImage: "page_012.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_1:02"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_1:02", title: "水资源利用与保护调查", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:1\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:1\", \"themeCode\": \"1.1\", \"itemNo\": 2, \"activityText\": \"调查当地水资源的利用和保护状况，并对当地水资源的利用和保护提出自己的见解。\", \"sourceImage\": \"page_012.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:1", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:1", CJ_themeCode: "1.1", CJ_itemNo: 2, CJ_activityText: "调查当地水资源的利用和保护状况，并对当地水资源的利用和保护提出自己的见解。", CJ_sourceImage: "page_012.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_1:03"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_1:03", title: "节水灌溉技术调查", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:1\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:1\", \"themeCode\": \"1.1\", \"itemNo\": 3, \"activityText\": \"调查当地农田或城市绿化灌溉的主要方式，了解节水灌溉技术。\", \"sourceImage\": \"page_012.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:1", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:1", CJ_themeCode: "1.1", CJ_itemNo: 3, CJ_activityText: "调查当地农田或城市绿化灌溉的主要方式，了解节水灌溉技术。", CJ_sourceImage: "page_012.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_2:01"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_2:01", title: "锅具导热性能比较实验设计", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:1\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:2\", \"themeCode\": \"1.2\", \"itemNo\": 1, \"activityText\": \"设计实验方案，比较砂锅、铁锅的导热性能。\", \"sourceImage\": \"page_013.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:1", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:2", CJ_themeCode: "1.2", CJ_itemNo: 1, CJ_activityText: "设计实验方案，比较砂锅、铁锅的导热性能。", CJ_sourceImage: "page_013.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_2:02"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_2:02", title: "日用品物理属性调查", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:1\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:2\", \"themeCode\": \"1.2\", \"itemNo\": 2, \"activityText\": \"观察生活中的一些日常用品，了解它们分别应用了物质的哪些物理属性。\", \"sourceImage\": \"page_013.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:1", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:2", CJ_themeCode: "1.2", CJ_itemNo: 2, CJ_activityText: "观察生活中的一些日常用品，了解它们分别应用了物质的哪些物理属性。", CJ_sourceImage: "page_013.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_2:03"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_2:03", title: "古代青铜器铁器制造技术查阅", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:1\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:2\", \"themeCode\": \"1.2\", \"itemNo\": 3, \"activityText\": \"查阅资料，了解我国古代青铜器、铁器的制造技术及其对社会进步的推动作用。\", \"sourceImage\": \"page_013.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:1", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:2", CJ_themeCode: "1.2", CJ_itemNo: 3, CJ_activityText: "查阅资料，了解我国古代青铜器、铁器的制造技术及其对社会进步的推动作用。", CJ_sourceImage: "page_013.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_3:01"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_3:01", title: "东方红一号研制与发射历程查阅", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:1\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:3\", \"themeCode\": \"1.3\", \"itemNo\": 1, \"activityText\": \"查阅资料，了解我国第一颗人造地球卫星“东方红一号”从研制到成功发射的历程，体会这一历史性突破对我国航天技术发展的重要意义。\", \"sourceImage\": \"page_014.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:1", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:3", CJ_themeCode: "1.3", CJ_itemNo: 1, CJ_activityText: "查阅资料，了解我国第一颗人造地球卫星“东方红一号”从研制到成功发射的历程，体会这一历史性突破对我国航天技术发展的重要意义。", CJ_sourceImage: "page_014.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_3:02"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_3:02", title: "中国天眼作用与建造成就查阅", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:1\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:3\", \"themeCode\": \"1.3\", \"itemNo\": 2, \"activityText\": \"查阅资料，了解“中国天眼”在人类探索宇宙中的作用及我国科学家在建造“中国天眼”过程中的卓越贡献。\", \"sourceImage\": \"page_014.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:1", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:3", CJ_themeCode: "1.3", CJ_itemNo: 2, CJ_activityText: "查阅资料，了解“中国天眼”在人类探索宇宙中的作用及我国科学家在建造“中国天眼”过程中的卓越贡献。", CJ_sourceImage: "page_014.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_3:03"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_3:03", title: "天问一号火星探测进展查阅", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:1\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:3\", \"themeCode\": \"1.3\", \"itemNo\": 3, \"activityText\": \"查阅资料，了解“天问一号”在探索火星方面的进展及我国航天事业对人类探索宇宙的贡献。\", \"sourceImage\": \"page_014.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:1", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:3", CJ_themeCode: "1.3", CJ_itemNo: 3, CJ_activityText: "查阅资料，了解“天问一号”在探索火星方面的进展及我国航天事业对人类探索宇宙的贡献。", CJ_sourceImage: "page_014.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_1:01"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_1:01", title: "机械运动相对性观察", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:2\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:4\", \"themeCode\": \"2.1\", \"itemNo\": 1, \"activityText\": \"观察生活中的机械运动现象，说明机械运动的相对性。\", \"sourceImage\": \"page_017.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:2", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:4", CJ_themeCode: "2.1", CJ_itemNo: 1, CJ_activityText: "观察生活中的机械运动现象，说明机械运动的相对性。", CJ_sourceImage: "page_017.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_1:02"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_1:02", title: "微粒持续运动实验方案设计", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:2\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:4\", \"themeCode\": \"2.1\", \"itemNo\": 2, \"activityText\": \"利用常见物品设计实验方案，说明组成物质的微粒在不停地运动。\", \"sourceImage\": \"page_017.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:2", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:4", CJ_themeCode: "2.1", CJ_itemNo: 2, CJ_activityText: "利用常见物品设计实验方案，说明组成物质的微粒在不停地运动。", CJ_sourceImage: "page_017.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_1:03"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_1:03", title: "神舟九号与天宫一号交会对接案例讨论", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:2\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:4\", \"themeCode\": \"2.1\", \"itemNo\": 3, \"activityText\": \"以神舟九号载人飞船与天宫一号目标飞行器成功交会对接为例，讨论机械运动的相对性。\", \"sourceImage\": \"page_018.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:2", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:4", CJ_themeCode: "2.1", CJ_itemNo: 3, CJ_activityText: "以神舟九号载人飞船与天宫一号目标飞行器成功交会对接为例，讨论机械运动的相对性。", CJ_sourceImage: "page_018.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_2:01"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_2:01", title: "高速列车速度与铁路发展查阅", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:2\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:5\", \"themeCode\": \"2.2\", \"itemNo\": 1, \"activityText\": \"查阅资料，了解我国高速列车的运行速度，以及铁路交通的发展进程。\", \"sourceImage\": \"page_019.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:2", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:5", CJ_themeCode: "2.2", CJ_itemNo: 1, CJ_activityText: "查阅资料，了解我国高速列车的运行速度，以及铁路交通的发展进程。", CJ_sourceImage: "page_019.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_2:02"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_2:02", title: "中国空间站飞行速度查阅", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:2\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:5\", \"themeCode\": \"2.2\", \"itemNo\": 2, \"activityText\": \"查阅资料，了解中国空间站在太空中飞行的速度大小。\", \"sourceImage\": \"page_019.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:2", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:5", CJ_themeCode: "2.2", CJ_itemNo: 2, CJ_activityText: "查阅资料，了解中国空间站在太空中飞行的速度大小。", CJ_sourceImage: "page_019.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_2:03"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_2:03", title: "奋斗者号深潜与压强浮力因素讨论", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:2\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:5\", \"themeCode\": \"2.2\", \"itemNo\": 3, \"activityText\": \"查阅资料，了解我国“奋斗者”号载人潜水器的深潜信息，讨论影响其所受液体压强和浮力大小的因素。\", \"sourceImage\": \"page_019.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:2", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:5", CJ_themeCode: "2.2", CJ_itemNo: 3, CJ_activityText: "查阅资料，了解我国“奋斗者”号载人潜水器的深潜信息，讨论影响其所受液体压强和浮力大小的因素。", CJ_sourceImage: "page_019.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_2:04"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_2:04", title: "三峡船闸连通器原理查阅", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:2\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:5\", \"themeCode\": \"2.2\", \"itemNo\": 4, \"activityText\": \"查阅资料，了解我国长江三峡水利枢纽工程中船闸是怎样利用连通器特点让轮船通行的。\", \"sourceImage\": \"page_019.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:2", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:5", CJ_themeCode: "2.2", CJ_itemNo: 4, CJ_activityText: "查阅资料，了解我国长江三峡水利枢纽工程中船闸是怎样利用连通器特点让轮船通行的。", CJ_sourceImage: "page_019.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_3:01"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_3:01", title: "古建筑声学应用案例查阅", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:2\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:6\", \"themeCode\": \"2.3\", \"itemNo\": 1, \"activityText\": \"查阅资料，了解我国古建筑应用声学知识的案例。\", \"sourceImage\": \"page_020.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:2", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:6", CJ_themeCode: "2.3", CJ_itemNo: 1, CJ_activityText: "查阅资料，了解我国古建筑应用声学知识的案例。", CJ_sourceImage: "page_020.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_3:02"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_3:02", title: "噪声污染调查与控制建议", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:2\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:6\", \"themeCode\": \"2.3\", \"itemNo\": 2, \"activityText\": \"调查社区或工地噪声污染的情况和已采取的控制措施，提出进一步控制噪声的建议。\", \"sourceImage\": \"page_020.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:2", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:6", CJ_themeCode: "2.3", CJ_itemNo: 2, CJ_activityText: "调查社区或工地噪声污染的情况和已采取的控制措施，提出进一步控制噪声的建议。", CJ_sourceImage: "page_020.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_3:03"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_3:03", title: "简易望远镜制作与观察", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:2\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:6\", \"themeCode\": \"2.3\", \"itemNo\": 3, \"activityText\": \"用凸透镜制作简易望远镜，用其观察远处的景物。\", \"sourceImage\": \"page_020.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:2", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:6", CJ_themeCode: "2.3", CJ_itemNo: 3, CJ_activityText: "用凸透镜制作简易望远镜，用其观察远处的景物。", CJ_sourceImage: "page_020.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_3:04"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_3:04", title: "光污染调查与改进建议", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:2\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:6\", \"themeCode\": \"2.3\", \"itemNo\": 4, \"activityText\": \"调查社区或城市光污染的情况，提出改进建议。\", \"sourceImage\": \"page_020.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:2", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:6", CJ_themeCode: "2.3", CJ_itemNo: 4, CJ_activityText: "调查社区或城市光污染的情况，提出改进建议。", CJ_sourceImage: "page_020.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_4:01"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_4:01", title: "简易指南针制作与磁极作用验证", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:2\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:7\", \"themeCode\": \"2.4\", \"itemNo\": 1, \"activityText\": \"利用磁体和缝衣针制作指南针，验证同名磁极相互排斥、异名磁极相互吸引。\", \"sourceImage\": \"page_021.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:2", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:7", CJ_themeCode: "2.4", CJ_itemNo: 1, CJ_activityText: "利用磁体和缝衣针制作指南针，验证同名磁极相互排斥、异名磁极相互吸引。", CJ_sourceImage: "page_021.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_4:02"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_4:02", title: "北斗卫星导航系统与卫星通信电磁波应用查阅", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:2\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:7\", \"themeCode\": \"2.4\", \"itemNo\": 2, \"activityText\": \"查阅资料，了解我国北斗卫星导航系统的作用和优势，讨论电磁波在卫星通信技术中的应用。\", \"sourceImage\": \"page_022.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:2", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:7", CJ_themeCode: "2.4", CJ_itemNo: 2, CJ_activityText: "查阅资料，了解我国北斗卫星导航系统的作用和优势，讨论电磁波在卫星通信技术中的应用。", CJ_sourceImage: "page_022.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_4:03"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_4:03", title: "磁悬浮列车发展与电磁技术应用查阅", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:2\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:7\", \"themeCode\": \"2.4\", \"itemNo\": 3, \"activityText\": \"查阅资料，了解我国磁悬浮列车的发展状况，讨论电磁技术在其中的应用。\", \"sourceImage\": \"page_022.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:2", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:7", CJ_themeCode: "2.4", CJ_itemNo: 3, CJ_activityText: "查阅资料，了解我国磁悬浮列车的发展状况，讨论电磁技术在其中的应用。", CJ_sourceImage: "page_022.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_1:01"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_1:01", title: "太阳能转化实例列举", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:3\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:8\", \"themeCode\": \"3.1\", \"itemNo\": 1, \"activityText\": \"列举太阳能在地球上转化为其他形式能量的实例。\", \"sourceImage\": \"page_025.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:3", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:8", CJ_themeCode: "3.1", CJ_itemNo: 1, CJ_activityText: "列举太阳能在地球上转化为其他形式能量的实例。", CJ_sourceImage: "page_025.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_1:02"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_1:02", title: "滑滑梯能量转化讨论", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:3\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:8\", \"themeCode\": \"3.1\", \"itemNo\": 2, \"activityText\": \"讨论人在滑滑梯过程中能量转化的情况。\", \"sourceImage\": \"page_025.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:3", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:8", CJ_themeCode: "3.1", CJ_itemNo: 2, CJ_activityText: "讨论人在滑滑梯过程中能量转化的情况。", CJ_sourceImage: "page_025.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_2:01"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_2:01", title: "人类利用机械历程查阅交流", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:3\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:9\", \"themeCode\": \"3.2\", \"itemNo\": 1, \"activityText\": \"查阅资料，了解人类利用机械的大致历程，并与同学进行交流。\", \"sourceImage\": \"page_026.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:3", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:9", CJ_themeCode: "3.2", CJ_itemNo: 1, CJ_activityText: "查阅资料，了解人类利用机械的大致历程，并与同学进行交流。", CJ_sourceImage: "page_026.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_2:02"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_2:02", title: "古代水磨水碓调查报告", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:3\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:9\", \"themeCode\": \"3.2\", \"itemNo\": 2, \"activityText\": \"查阅资料，了解我国古代水磨、水碓等机械，写一篇弘扬中华优秀传统文化的调查报告。\", \"sourceImage\": \"page_026.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:3", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:9", CJ_themeCode: "3.2", CJ_itemNo: 2, CJ_activityText: "查阅资料，了解我国古代水磨、水碓等机械，写一篇弘扬中华优秀传统文化的调查报告。", CJ_sourceImage: "page_026.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_3:01"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_3:01", title: "燃料结构变化调查讨论", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:3\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:10\", \"themeCode\": \"3.3\", \"itemNo\": 1, \"activityText\": \"调查当地近年采矿、取暖、交通等方面燃料结构的变化，从经济与环保的角度开展讨论。\", \"sourceImage\": \"page_026.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:3", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:10", CJ_themeCode: "3.3", CJ_itemNo: 1, CJ_activityText: "调查当地近年采矿、取暖、交通等方面燃料结构的变化，从经济与环保的角度开展讨论。", CJ_sourceImage: "page_026.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_3:02"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_3:02", title: "不同燃料放热量比较查阅", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:3\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:10\", \"themeCode\": \"3.3\", \"itemNo\": 2, \"activityText\": \"燃料的种类很多，如木柴、煤、汽油、酒精、天然气等，查阅资料并比较相同质量的不同燃料完全燃烧时放出热量的多少。\", \"sourceImage\": \"page_026.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:3", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:10", CJ_themeCode: "3.3", CJ_itemNo: 2, CJ_activityText: "燃料的种类很多，如木柴、煤、汽油、酒精、天然气等，查阅资料并比较相同质量的不同燃料完全燃烧时放出热量的多少。", CJ_sourceImage: "page_026.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_4:01"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_4:01", title: "家用电能表读数与用电量计算", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:3\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:11\", \"themeCode\": \"3.4\", \"itemNo\": 1, \"activityText\": \"学读家用电能表，根据读数计算用电量。\", \"sourceImage\": \"page_027.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:3", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:11", CJ_themeCode: "3.4", CJ_itemNo: 1, CJ_activityText: "学读家用电能表，根据读数计算用电量。", CJ_sourceImage: "page_027.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_4:02"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_4:02", title: "人均用电量变化与经济发展调查", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:3\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:11\", \"themeCode\": \"3.4\", \"itemNo\": 2, \"activityText\": \"调查当地人均用电量的变化，讨论它与当地经济发展的关系。\", \"sourceImage\": \"page_027.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:3", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:11", CJ_themeCode: "3.4", CJ_itemNo: 2, CJ_activityText: "调查当地人均用电量的变化，讨论它与当地经济发展的关系。", CJ_sourceImage: "page_027.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_5:01"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_5:01", title: "内燃机热量去向与效率提升讨论", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:3\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:12\", \"themeCode\": \"3.5\", \"itemNo\": 1, \"activityText\": \"查阅资料或访问农机、汽车维修等专业人员，了解内燃机中燃料燃烧所释放热量的去向，讨论提高效率的可能途径。\", \"sourceImage\": \"page_028.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:3", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:12", CJ_themeCode: "3.5", CJ_itemNo: 1, CJ_activityText: "查阅资料或访问农机、汽车维修等专业人员，了解内燃机中燃料燃烧所释放热量的去向，讨论提高效率的可能途径。", CJ_sourceImage: "page_028.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_5:02"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_5:02", title: "炉灶能量利用效率调查报告", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:3\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:12\", \"themeCode\": \"3.5\", \"itemNo\": 2, \"activityText\": \"调查当地主要炉灶的能量利用效率，写出调查报告。\", \"sourceImage\": \"page_028.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:3", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:12", CJ_themeCode: "3.5", CJ_itemNo: 2, CJ_activityText: "调查当地主要炉灶的能量利用效率，写出调查报告。", CJ_sourceImage: "page_028.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_6:01"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_6:01", title: "能源利用环境影响研讨与对策探讨", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:3\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:13\", \"themeCode\": \"3.6\", \"itemNo\": 1, \"activityText\": \"查阅资料，举办小型研讨会，讨论能源利用带来的环境影响，如大气污染、酸雨、温室效应等，探讨可采取的应对措施。\", \"sourceImage\": \"page_028.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:3", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:13", CJ_themeCode: "3.6", CJ_itemNo: 1, CJ_activityText: "查阅资料，举办小型研讨会，讨论能源利用带来的环境影响，如大气污染、酸雨、温室效应等，探讨可采取的应对措施。", CJ_sourceImage: "page_028.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_6:02"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_6:02", title: "新能源汽车发展概况查阅", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:3\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:13\", \"themeCode\": \"3.6\", \"itemNo\": 2, \"activityText\": \"查阅资料，了解我国新能源汽车的发展概况。\", \"sourceImage\": \"page_028.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:3", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:13", CJ_themeCode: "3.6", CJ_itemNo: 2, CJ_activityText: "查阅资料，了解我国新能源汽车的发展概况。", CJ_sourceImage: "page_028.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_6:03"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_6:03", title: "低碳生活信息了解与能源调查建议", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:3\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:13\", \"themeCode\": \"3.6\", \"itemNo\": 3, \"activityText\": \"了解有关提倡低碳生活的信息，调查当地使用的主要能源及其对当地经济和环境的影响，提出开发当地可再生能源的建议。\", \"sourceImage\": \"page_028.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:3", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:13", CJ_themeCode: "3.6", CJ_itemNo: 3, CJ_activityText: "了解有关提倡低碳生活的信息，调查当地使用的主要能源及其对当地经济和环境的影响，提出开发当地可再生能源的建议。", CJ_sourceImage: "page_028.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_6:04"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_6:04", title: "受控核聚变研究进展查阅", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:3\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:13\", \"themeCode\": \"3.6\", \"itemNo\": 4, \"activityText\": \"查阅资料，了解受控核聚变（人造太阳）的研究进展，了解我国在这方面的研究成就。\", \"sourceImage\": \"page_028.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:3", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:13", CJ_themeCode: "3.6", CJ_itemNo: 4, CJ_activityText: "查阅资料，了解受控核聚变（人造太阳）的研究进展，了解我国在这方面的研究成就。", CJ_sourceImage: "page_028.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_1:01"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_1:01", title: "自行车中的跨学科知识分析小论文", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:5\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:16\", \"themeCode\": \"5.1\", \"itemNo\": 1, \"activityText\": \"通过资料查阅、商店咨询和实物考察，分析自行车中涉及的不同学科知识，选择感兴趣的主题撰写一篇小论文。\", \"sourceImage\": \"page_037.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:5", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:16", CJ_themeCode: "5.1", CJ_itemNo: 1, CJ_activityText: "通过资料查阅、商店咨询和实物考察，分析自行车中涉及的不同学科知识，选择感兴趣的主题撰写一篇小论文。", CJ_sourceImage: "page_037.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_1:02"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_1:02", title: "家庭用电安全跨学科调查报告", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:5\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:16\", \"themeCode\": \"5.1\", \"itemNo\": 2, \"activityText\": \"通过资料查阅和实物考察，探索家庭用电的安全问题，从跨学科视角撰写简单的调查报告。\", \"sourceImage\": \"page_037.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:5", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:16", CJ_themeCode: "5.1", CJ_itemNo: 2, CJ_activityText: "通过资料查阅和实物考察，探索家庭用电的安全问题，从跨学科视角撰写简单的调查报告。", CJ_sourceImage: "page_037.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_1:03"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_1:03", title: "机动车尾气排放与空气污染调查报告", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:5\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:16\", \"themeCode\": \"5.1\", \"itemNo\": 3, \"activityText\": \"通过资料查阅和实物考察，了解机动车的尾气排放情况，撰写关于城市空气污染和汽车尾气排放的调查报告。\", \"sourceImage\": \"page_037.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:5", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:16", CJ_themeCode: "5.1", CJ_itemNo: 3, CJ_activityText: "通过资料查阅和实物考察，了解机动车的尾气排放情况，撰写关于城市空气污染和汽车尾气排放的调查报告。", CJ_sourceImage: "page_037.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_2:01"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_2:01", title: "小型风力发电机制作交流", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:5\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:17\", \"themeCode\": \"5.2\", \"itemNo\": 1, \"activityText\": \"制作一台小型风力发电机，从跨学科视角与同学交流制作过程与作品。\", \"sourceImage\": \"page_038.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:5", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:17", CJ_themeCode: "5.2", CJ_itemNo: 1, CJ_activityText: "制作一台小型风力发电机，从跨学科视角与同学交流制作过程与作品。", CJ_sourceImage: "page_038.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_2:02"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_2:02", title: "物理学对信息技术发展贡献查阅", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:5\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:17\", \"themeCode\": \"5.2\", \"itemNo\": 2, \"activityText\": \"查阅资料，了解物理学对信息技术发展的贡献。\", \"sourceImage\": \"page_038.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:5", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:17", CJ_themeCode: "5.2", CJ_itemNo: 2, CJ_activityText: "查阅资料，了解物理学对信息技术发展的贡献。", CJ_sourceImage: "page_038.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_2:03"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_2:03", title: "量子计算机信息查阅与畅想交流", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:5\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:17\", \"themeCode\": \"5.2\", \"itemNo\": 3, \"activityText\": \"查阅资料，了解量子计算机相关信息，与同学交流对计算机未来发展的畅想。\", \"sourceImage\": \"page_038.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:5", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:17", CJ_themeCode: "5.2", CJ_itemNo: 3, CJ_activityText: "查阅资料，了解量子计算机相关信息，与同学交流对计算机未来发展的畅想。", CJ_sourceImage: "page_038.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_3:01"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_3:01", title: "深海太空开发利用意义小论文", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:5\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:18\", \"themeCode\": \"5.3\", \"itemNo\": 1, \"activityText\": \"查阅资料，了解深海、太空等的开发与利用对人类社会发展的意义，撰写一篇小论文。\", \"sourceImage\": \"page_039.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:5", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:18", CJ_themeCode: "5.3", CJ_itemNo: 1, CJ_activityText: "查阅资料，了解深海、太空等的开发与利用对人类社会发展的意义，撰写一篇小论文。", CJ_sourceImage: "page_039.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_3:02"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_3:02", title: "环境污染治理成功案例调查报告", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:5\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:18\", \"themeCode\": \"5.3\", \"itemNo\": 2, \"activityText\": \"查阅资料，了解环境污染治理比较成功的案例，撰写一篇调查报告。\", \"sourceImage\": \"page_039.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:5", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:18", CJ_themeCode: "5.3", CJ_itemNo: 2, CJ_activityText: "查阅资料，了解环境污染治理比较成功的案例，撰写一篇调查报告。", CJ_sourceImage: "page_039.png"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_3:03"})
SET n += {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_3:03", title: "手机改进历程典型案例查阅", description: "", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB05", contentJson: "{\"ThemeL1\": \"urn:jy:physics:OB05:ThemeL1:5\", \"ThemeL2\": \"urn:jy:physics:OB05:ThemeL2:18\", \"themeCode\": \"5.3\", \"itemNo\": 3, \"activityText\": \"查阅资料，了解手机改进历程中的典型案例，体会通信技术的进步对社会发展的影响。\", \"sourceImage\": \"page_039.png\"}", CJ_ThemeL1: "urn:jy:physics:OB05:ThemeL1:5", CJ_ThemeL2: "urn:jy:physics:OB05:ThemeL2:18", CJ_themeCode: "5.3", CJ_itemNo: 3, CJ_activityText: "查阅资料，了解手机改进历程中的典型案例，体会通信技术的进步对社会发展的影响。", CJ_sourceImage: "page_039.png"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:1"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:1", title: "一、长度和时间的测量", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第一章 常见的运动\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第一章 常见的运动"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:2"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:2", title: "二、机械运动", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第一章 常见的运动\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第一章 常见的运动"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:3"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:3", title: "三、比较运动的快慢", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第一章 常见的运动\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第一章 常见的运动"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:4"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:4", title: "四、学生实验：测量速度", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第一章 常见的运动\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第一章 常见的运动"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:5"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:5", title: "五、声音的产生和传播", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第一章 常见的运动\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第一章 常见的运动"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:6"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:6", title: "六、乐音和噪声", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第一章 常见的运动\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第一章 常见的运动"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:7"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:7", title: "七、超声波及其应用", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第一章 常见的运动\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第一章 常见的运动"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:8"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:8", title: "课外探究 水杯琴", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第一章 常见的运动\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第一章 常见的运动"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:9"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:9", title: "一、质量及其测量", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第二章 质量和密度\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第二章 质量和密度"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:10"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:10", title: "二、学生实验：测量质量", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第二章 质量和密度\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第二章 质量和密度"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:11"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:11", title: "三、物质的密度及其应用", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第二章 质量和密度\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第二章 质量和密度"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:12"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:12", title: "四、学生实验：测量密度", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第二章 质量和密度\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第二章 质量和密度"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:13"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:13", title: "一、力", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第三章 运动和力\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第三章 运动和力"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:14"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:14", title: "二、力的测量", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第三章 运动和力\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第三章 运动和力"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:15"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:15", title: "三、重力", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第三章 运动和力\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第三章 运动和力"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:16"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:16", title: "四、二力平衡", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第三章 运动和力\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第三章 运动和力"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:17"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:17", title: "五、滑动摩擦力", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第三章 运动和力\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第三章 运动和力"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:18"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:18", title: "六、运动和力的关系", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第三章 运动和力\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第三章 运动和力"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:19"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:19", title: "课外探究 防滑运动鞋", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第三章 运动和力\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第三章 运动和力"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:20"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:20", title: "一、压力 压强", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第四章 压强与浮力\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第四章 压强与浮力"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:21"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:21", title: "二、探究液体压强", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第四章 压强与浮力\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第四章 压强与浮力"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:22"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:22", title: "三、连通器", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第四章 压强与浮力\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第四章 压强与浮力"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:23"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:23", title: "四、大气压强", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第四章 压强与浮力\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第四章 压强与浮力"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:24"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:24", title: "五、流体的压强与流速", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第四章 压强与浮力\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第四章 压强与浮力"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:25"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:25", title: "六、浮力", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第四章 压强与浮力\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第四章 压强与浮力"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:26"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:26", title: "七、物体的浮沉条件", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第四章 压强与浮力\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第四章 压强与浮力"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:27", title: "一、杠杆", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第五章 简单机械\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第五章 简单机械"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:28"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:28", title: "二、学生实验：探究杠杆", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第五章 简单机械\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第五章 简单机械"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:29"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:29", title: "三、滑轮", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第五章 简单机械\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第五章 简单机械"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:30"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:30", title: "课外探究 变速自行车", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第五章 简单机械\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第五章 简单机械"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:31"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:31", title: "一、功", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第六章 功和能\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第六章 功和能"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:32"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:32", title: "二、功率", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第六章 功和能\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第六章 功和能"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:33"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:33", title: "三、功的原理", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第六章 功和能\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第六章 功和能"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:34"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:34", title: "四、机械能", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第六章 功和能\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第六章 功和能"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:35"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:35", title: "一、温度 温度计", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第七章 热现象\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第七章 热现象"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:36"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:36", title: "二、熔化和凝固", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第七章 热现象\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第七章 热现象"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:37", title: "三、汽化和液化", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第七章 热现象\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第七章 热现象"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:38", title: "四、升华和凝华", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第七章 热现象\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第七章 热现象"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:39"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:39", title: "五、物质结构的微观模型", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第七章 热现象\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第七章 热现象"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:40", title: "六、内能 能量转化", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第七章 热现象\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第七章 热现象"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:41", title: "七、比热容", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第七章 热现象\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第七章 热现象"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:42"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:42", title: "八、燃料 能源与环保", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第七章 热现象\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第七章 热现象"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:43"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:43", title: "九、热机", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第七章 热现象\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第七章 热现象"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:44"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:44", title: "一、光的传播", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第八章 光现象\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第八章 光现象"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:45"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:45", title: "二、学生实验：探究光的反射规律", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第八章 光现象\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第八章 光现象"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:46"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:46", title: "三、学生实验：探究平面镜成像", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第八章 光现象\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第八章 光现象"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:47"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:47", title: "四、探究光的折射现象", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第八章 光现象\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第八章 光现象"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:48"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:48", title: "五、透镜", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第八章 光现象\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第八章 光现象"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:49"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:49", title: "六、学生实验：探究凸透镜成像", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第八章 光现象\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第八章 光现象"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:50"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:50", title: "七、生活中的透镜", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第八章 光现象\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第八章 光现象"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:51"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:51", title: "八、眼睛和眼镜", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第八章 光现象\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第八章 光现象"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:52"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:52", title: "九、物体的颜色", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第八章 光现象\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第八章 光现象"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:53"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:53", title: "课外探究 门镜", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第八章 光现象\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第八章 光现象"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:54"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:54", title: "一、本册书中用到的物理量及其国际单位", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"其他\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "其他"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:55"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:55", title: "二、物理名词汉英对照表", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"其他\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "其他"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:56"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:56", title: "一、简单电现象", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第九章 简单电路\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第九章 简单电路"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:57"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:57", title: "二、认识电路", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第九章 简单电路\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第九章 简单电路"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:58"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:58", title: "三、不同物质的导电性能", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第九章 简单电路\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第九章 简单电路"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:59"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:59", title: "四、电流及其测量", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第九章 简单电路\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第九章 简单电路"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:60"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:60", title: "五、电压及其测量", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第九章 简单电路\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第九章 简单电路"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:61"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:61", title: "六、电阻", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第九章 简单电路\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第九章 简单电路"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:62"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:62", title: "七、变阻器", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第九章 简单电路\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第九章 简单电路"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:63"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:63", title: "课外探究 什么材料的衣服更容易带电", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第九章 简单电路\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第九章 简单电路"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:64"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:64", title: "一、学生实验：连接串、并联电路", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第十章 串联电路和并联电路\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第十章 串联电路和并联电路"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:65"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:65", title: "二、串、并联电路的特点", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第十章 串联电路和并联电路\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第十章 串联电路和并联电路"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:66"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:66", title: "三、学生实验：探究影响电流的因素", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第十章 串联电路和并联电路\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第十章 串联电路和并联电路"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:67"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:67", title: "四、欧姆定律的应用", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第十章 串联电路和并联电路\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第十章 串联电路和并联电路"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:68"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:68", title: "五、测量导体的电阻", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第十章 串联电路和并联电路\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第十章 串联电路和并联电路"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:69", title: "一、电功和电能", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第十一章 电功和电功率\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第十一章 电功和电功率"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:70"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:70", title: "二、电功率", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第十一章 电功和电功率\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第十一章 电功和电功率"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:71"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:71", title: "三、学生实验：测量小灯泡的电功率", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第十一章 电功和电功率\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第十一章 电功和电功率"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:72"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:72", title: "四、电流的热效应", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第十一章 电功和电功率\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第十一章 电功和电功率"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:73"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:73", title: "五、家庭电路", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第十一章 电功和电功率\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第十一章 电功和电功率"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:74"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:74", title: "一、简单磁现象", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第十二章 磁现象\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第十二章 磁现象"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:75"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:75", title: "二、磁场", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第十二章 磁现象\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第十二章 磁现象"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:76"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:76", title: "三、通电螺线管的磁场", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第十二章 磁现象\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第十二章 磁现象"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:77"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:77", title: "四、电磁铁及其应用", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第十二章 磁现象\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第十二章 磁现象"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:78"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:78", title: "五、磁场对通电导体的作用", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第十二章 磁现象\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第十二章 磁现象"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:79"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:79", title: "六、直流电动机", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第十二章 磁现象\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第十二章 磁现象"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:80"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:80", title: "七、电磁感应及其应用", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第十二章 磁现象\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第十二章 磁现象"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:81"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:81", title: "课外探究 影响电磁铁磁性强弱的其他因素", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第十二章 磁现象\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第十二章 磁现象"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:82"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:82", title: "一、通信发展简史", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第十三章 通信技术简介\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第十三章 通信技术简介"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:83"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:83", title: "二、电磁波", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第十三章 通信技术简介\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第十三章 通信技术简介"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:84"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:84", title: "三、广播和电视", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第十三章 通信技术简介\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第十三章 通信技术简介"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:85"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:85", title: "四、现代通信技术及发展前景", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第十三章 通信技术简介\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第十三章 通信技术简介"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:86"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:86", title: "课外探究 在不同情况下手机信号的强弱", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第十三章 通信技术简介\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第十三章 通信技术简介"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:87"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:87", title: "一、浩瀚的宇宙", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第十四章 宇宙和微观世界\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第十四章 宇宙和微观世界"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:88"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:88", title: "二、微观世界的结构", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"第十四章 宇宙和微观世界\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "第十四章 宇宙和微观世界"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:89"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:89", title: "参观科技场馆指导", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"科学探究\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "科学探究"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:90"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:90", title: "科技阅读方法指导（1）", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"科学探究\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "科学探究"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:91"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:91", title: "科技阅读方法指导（2）", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"科学探究\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "科学探究"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:92"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:92", title: "跨学科实践活动指导（1）——科技小魔术", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"科学探究\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "科学探究"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:93"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:93", title: "跨学科实践活动指导（2）——机械中的妙趣", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"科学探究\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "科学探究"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:94"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:94", title: "在科学探究中怎样提出可探究的科学问题", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"科学探究\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "科学探究"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:95"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:95", title: "科学探究中的测量与操作定义", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"科学探究\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "科学探究"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:96"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:96", title: "科学探究中怎样控制变量", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"科学探究\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "科学探究"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:97"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:97", title: "在科学探究中怎样处理实验数据", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"科学探究\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "科学探究"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:98"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:98", title: "怎样用实验证明观点错误", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"科学探究\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "科学探究"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:99"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:99", title: "从电路开关走向人工智能", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"科学探究\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "科学探究"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:100"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:100", title: "一、本册书中用到的物理量及其国际单位", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"其他\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "其他"};

MERGE (n:Section（8、9全册） {identifier: "urn:jy:physics:SB0401:OB06:Section:101"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:101", title: "二、物理名词汉英对照表", description: "", subject: "SB0401", type: "Section（8、9全册）", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"北师大版（主编：郭玉英）\", \"volume\": \"全一册\", \"chapter\": \"其他\"}", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "北师大版（主编：郭玉英）", CJ_volume: "全一册", CJ_chapter: "其他"};

MERGE (n:ThemeL1 {identifier: "urn:jy:physics:OB05:ThemeL1:1"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL1:1", title: "物质", description: "一级主题“物质”包含“物质的形态和变化”“物质的属性”“物质的结构和物质世界的尺度”三个二级主题。“物质”主题的课程内容与日常生活、自然现象及科技发展前沿密切相关。这部分内容的设计旨在引导学生从物理学的视角认识物质世界，了解身边物质的形态和变化，了解物质的属性、结构与物质世界的尺度，初步形成物质观念；引导学生学习科学研究方法，提升科学探究能力，体会科学、技术、社会、环境之间的关系，形成辩证唯物主义世界观和关心环境、保护环境的责任感。", subject: "物理SB0401", type: "ThemeL1", applicableLevel: "OB05", contentJson: "{\"achievementRequirement\": \"(1) 能描述固态、液态和气态的基本特征及在相互转化过程中的特点，能说出生活中常见的温度值，知道质量的含义，理解密度，能说出物质世界从宏观到微观的大致尺度；能根据这些知识解释有关自然现象，尝试运用这些知识解决日常生活中的有关问题，形成初步的物质观念。(2) 知道建构模型是物理研究的重要方法, 了解原子的核式结构模型; 能通过实验或实例, 归纳总结物态变化过程中的吸、放热规律; 在归纳或演绎中会引用证据, 养成使用证据的习惯; 能运用物质的弹性、磁性、导电性等知识, 对一些说法进行质疑, 发表自己的见解。  (3) 在物理学习中, 能发现并提出需要探究的物理问题, 能根据已有经验作出有关猜想与假设; 能制订简单的实验方案, 会正确使用天平、温度计等实验器材, 能按实验方案操作, 获得实验数据; 会用简单的物理图像描述数据, 根据图像特点对实验结果作出解释; 能撰写简单的实验报告。  （4）能通过物态变化等实验，感受物理研究是建立在观察、实验和推理基础上的创造性工作；能在运用密度等知识解决实际问题的过程中获得成就感，具有学好物理的自信心；能用相关知识初步解释自然界的水循环等现象，具有关心和保护环境的意识，能初步体会构建人类命运共同体的重要意义。\", \"teachingTip\": \"(1) 教学策略建议在“物质”主题教学中，应注重联系生产生活实际，体现“从生活走向物理，从物理走向社会”的课程理念，让学生感受物理学就在身边，体会物理学对科技发展和社会进步的推动作用。①树立教学的整体观，培养学生的物质观念。注重教学的整体设计，避免枯燥、碎片化的概念堆砌，引领学生从认识物质的基本形态和物理属性开始，逐步深入到了解物质的微观结构、基本特征和大致尺度等；从微观世界到宇宙天体，引导学生初步理解物质的内涵，认识物质世界的多样性，逐步形成物质观念。  ②强化实验探究，注重发展科学思维和科学探究能力。合理安排演示实验，如“低压沸腾”、碘的升华和凝华等，让学生在实验情境中提出探究问题。尤其在物态变化特点、规律的实验教学中，引导学生基于证据进行归纳、总结、解释及交流，促进学生科学思维和科学探究能力的发展③丰富教学活动，培养学生的科学态度和社会责任感。开展各类教学活动，如举办“密度、物态变化与生产生活的联系”“温室效应与环境保护”等主题小论坛，让学生在思辨与交流中成长，开阔学生视野，激发学生学习兴趣。引导学生在社会调查、课外阅读中，观察和认识物质世界，如组织学生调查当地的水资源状况，增强学生的环境保护意识，使其感受物理学在解决社会问题、推动社会发展中的作用，培养学生致力学习科学技术、立志造福人类的责任感与使命感。# (2) 情境素材建议：“物质”主题与自然现象、生产生活密切相关。下面侧重提出与物态变化、物质密度、古代科技等相关的常见情境素材建议。①与物态变化相关的素材：自然界中的雨、露、霜、雾、冰、雪等现象，都是由于水的物态发生变化而形成的；将装有酒精的密封塑料袋先后放在热水和冷水中，能观察到明显的汽化和液化现象；夏天从冰箱冷藏柜拿出的饮料罐表面会出现水珠，从冷冻柜取出的物品表面会结霜；吐鲁番的坎儿井能有效减少水的蒸发；给汽车水箱加注防冻液，以防冬天水箱结冰。②与物质密度相关的素材：影视剧拍摄中倒塌的楼房、滚落的石块等道具通常是用泡沫塑料制作的，这利用了泡沫塑料密度小的特点，可避免对演员造成伤害；体育竞赛中的铅球，则是用密度大的材料制成的，这能使相同质量的球体积更小；运用密度知识可鉴别身边的一些物质。(3)与古代科技相关的素材：冶铁技术的出现，为人类大规模制造工具、机械提供了材料支持，使人类文明向前迈出了一大步；我国古人利用天然材料加工制成了纸张、火药，利用磁性材料的特性制成了指南针。\"}", CJ_achievementRequirement: "(1) 能描述固态、液态和气态的基本特征及在相互转化过程中的特点，能说出生活中常见的温度值，知道质量的含义，理解密度，能说出物质世界从宏观到微观的大致尺度；能根据这些知识解释有关自然现象，尝试运用这些知识解决日常生活中的有关问题，形成初步的物质观念。(2) 知道建构模型是物理研究的重要方法, 了解原子的核式结构模型; 能通过实验或实例, 归纳总结物态变化过程中的吸、放热规律; 在归纳或演绎中会引用证据, 养成使用证据的习惯; 能运用物质的弹性、磁性、导电性等知识, 对一些说法进行质疑, 发表自己的见解。  (3) 在物理学习中, 能发现并提出需要探究的物理问题, 能根据已有经验作出有关猜想与假设; 能制订简单的实验方案, 会正确使用天平、温度计等实验器材, 能按实验方案操作, 获得实验数据; 会用简单的物理图像描述数据, 根据图像特点对实验结果作出解释; 能撰写简单的实验报告。  （4）能通过物态变化等实验，感受物理研究是建立在观察、实验和推理基础上的创造性工作；能在运用密度等知识解决实际问题的过程中获得成就感，具有学好物理的自信心；能用相关知识初步解释自然界的水循环等现象，具有关心和保护环境的意识，能初步体会构建人类命运共同体的重要意义。", CJ_teachingTip: "(1) 教学策略建议在“物质”主题教学中，应注重联系生产生活实际，体现“从生活走向物理，从物理走向社会”的课程理念，让学生感受物理学就在身边，体会物理学对科技发展和社会进步的推动作用。①树立教学的整体观，培养学生的物质观念。注重教学的整体设计，避免枯燥、碎片化的概念堆砌，引领学生从认识物质的基本形态和物理属性开始，逐步深入到了解物质的微观结构、基本特征和大致尺度等；从微观世界到宇宙天体，引导学生初步理解物质的内涵，认识物质世界的多样性，逐步形成物质观念。  ②强化实验探究，注重发展科学思维和科学探究能力。合理安排演示实验，如“低压沸腾”、碘的升华和凝华等，让学生在实验情境中提出探究问题。尤其在物态变化特点、规律的实验教学中，引导学生基于证据进行归纳、总结、解释及交流，促进学生科学思维和科学探究能力的发展③丰富教学活动，培养学生的科学态度和社会责任感。开展各类教学活动，如举办“密度、物态变化与生产生活的联系”“温室效应与环境保护”等主题小论坛，让学生在思辨与交流中成长，开阔学生视野，激发学生学习兴趣。引导学生在社会调查、课外阅读中，观察和认识物质世界，如组织学生调查当地的水资源状况，增强学生的环境保护意识，使其感受物理学在解决社会问题、推动社会发展中的作用，培养学生致力学习科学技术、立志造福人类的责任感与使命感。# (2) 情境素材建议：“物质”主题与自然现象、生产生活密切相关。下面侧重提出与物态变化、物质密度、古代科技等相关的常见情境素材建议。①与物态变化相关的素材：自然界中的雨、露、霜、雾、冰、雪等现象，都是由于水的物态发生变化而形成的；将装有酒精的密封塑料袋先后放在热水和冷水中，能观察到明显的汽化和液化现象；夏天从冰箱冷藏柜拿出的饮料罐表面会出现水珠，从冷冻柜取出的物品表面会结霜；吐鲁番的坎儿井能有效减少水的蒸发；给汽车水箱加注防冻液，以防冬天水箱结冰。②与物质密度相关的素材：影视剧拍摄中倒塌的楼房、滚落的石块等道具通常是用泡沫塑料制作的，这利用了泡沫塑料密度小的特点，可避免对演员造成伤害；体育竞赛中的铅球，则是用密度大的材料制成的，这能使相同质量的球体积更小；运用密度知识可鉴别身边的一些物质。(3)与古代科技相关的素材：冶铁技术的出现，为人类大规模制造工具、机械提供了材料支持，使人类文明向前迈出了一大步；我国古人利用天然材料加工制成了纸张、火药，利用磁性材料的特性制成了指南针。"};

MERGE (n:ThemeL1 {identifier: "urn:jy:physics:OB05:ThemeL1:2"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL1:2", title: "运动和相互作用", description: "力一级主题“运动和相互作用”包含“多种多样的运动形式”“机械运动和力”“声和光”“电和磁”四个二级主题。“运动和相互作用”主题的课程内容包含较多的物理概念和规律，与生产生活密切相关。这部分内容的设计旨在引导学生从物理学视角认识运动和相互作用，了解身边的运动形式及相互作用，了解声、光、电、磁的含义，初步形成运动和相互作用观念；发展学生的推理论证能力及交流合作能力，引导学生了解我国古代和现代的相关科技成就，体会中华民族的智慧，培养学生的科学态度和实现中华民族伟大复兴的责任感与使命感。", subject: "物理SB0401", type: "ThemeL1", applicableLevel: "OB05", contentJson: "{\"achievementRequirement\": \"(1) 了解机械运动、分子热运动、声和光、电和磁, 了解重力、弹力、摩擦力, 通过牛顿第一定律和力的作用效果, 认识机械运动和力的关系; 能用这些知识解释自然界的有关现象, 解决日常生活中的有关问题, 形成初步的运动和相互作用观念。  (2) 知道匀速直线运动、杠杆、光线等物理模型; 能运用运动和力、声和光、电和磁的一些规律分析简单问题, 并获得结论; 能在解释自然现象和解决实际问题时引用证据, 具有使用科学证据的意识; 能根据运动和相互作用的知识, 指出交流中有关说法的不当之处, 并能提出自己的见解。  (3) 能基于观察和实验，提出与运动和力、声和光、电和磁等现象有关的科学探究问题，并作出有依据的猜想与假设；在关于杠杆、浮力、光的反射、平面镜成像、凸透镜成像、通电螺线管等科学探究中，能制订初步的实验方案；能正确使用弹簧测力计、刻度尺等相关器材获取实验数据；能通过对数据的比较与分析，发现数据的特点，进行初步的因果判断，得出实验结论；能表述实验过程和结果，撰写实验报告。  (4) 知道物理学是对相关自然现象的描述与解释, 物理学研究需要观察、实验和推理, 体会物理学对人类生活和社会发展的影响; 具有对运动和力、声和光、电和磁等知识的学习兴趣和严谨认真、实事求是的科学态度; 关心我国古代和现代科技成就, 为中华民族的科技成就感到自豪, 逐步养成实现中华民族伟大复兴的责任感与使命感。。\", \"teachingTip\": \"（1）教学策略建议在“运动和相互作用”主题的教学中，建议从学生的已有经验和认知水平出发，设计多种学习活动，重视物理概念的建构过程，促进学生对抽象概念的理解，引导学生在问题解决中提升能力，发展核心素养。①联系生产生活实际创设学习情境。例如：在建立机械运动概念时，建议创设学生熟悉的情境，启发并引导学生对真实情境中的物理问题进行思维加工，概括它们的共同特征等；在声和光、电和磁部分，建议结合生活中的实际情境，进行相关内容的学习。  ②渗透科学研究方法，培养学生的科学思维。例如，通过实验引导学生认识光线等物理模型，体会物理模型的重要作用。引导学生通过实验寻找证据，归纳总结出一般性的规律，鼓励学生勇于质疑，敢于表达自己的观点。  ③注重问题导向，合理设计探究活动。在探究力的作用效果、牛顿第一定律、压强大小的影响因素、声音的产生和传播条件、光的传播规律、电和磁的相互作用等学习活动中，注重发挥学生的积极性和主动性，给学生留出恰当的时间和空间；鼓励学生发现问题、提出问题，通过科学方法收集证据、得出结论；引导学生解释得出结论的理由，并对探究过程和结果进行评估、反思与交流。  ④充分利用科学史料，培养学生的科学态度与社会责任感。建议将我国的相关科技成就引入课堂，如通过分析和讨论孔明灯、司南等与中华优秀传统文化有关的素材和5G技术、北斗卫星导航系统、高速动车组列车、“奋斗者”号载人潜水器等我国现代化建设新成就，培养学生的爱国情怀，提升学生的民族自豪感和实现中华民族伟大复兴的使命感。还可通过项目式学习，开展制作小型电动机、小型发电机等项目活动，让学生体会法拉第等科学家所取得的成就及其对社会发展的贡献。# (2）情境素材建议“运动和相互作用”主题与生产生活实际密切相关。下面侧重提出与运动、力及其作用效果、声和光、电和磁相关的常见情境素材建议。①与运动相关的素材：从星系、天体的运动，到汽车、火车的运动，再到分子的运动等都是运动的例证；介绍伽利略、牛顿等科学家的事迹，让学生感受科学家研究问题的方法和严谨认真、实事求是的科学态度。  (2)与力及其作用效果相关的素材：利用弹簧测力计感受和测量力，利用撬棒、剪刀等分析杠杆的特点，利用气球演示力的作用效果，利用砖块的不同侧面演示压力的作用效果，利用液体压强计测量不同密度的液体内部不同深度处的压强，利用自制潜水艇等研究物体的浮沉条件。  ③与声和光相关的素材：通过分析声带振动、鼓面振动等现象归纳声音产生的原因，利用“土电话”、真空罩等研究声音的传播条件，利用吉他、钢琴等乐器分析声音的特性；讨论分析“楼台倒影入池塘”“潭清疑水浅”等诗句所反映的光学原理，讨论分析放大镜的成像原理和近视眼镜矫正视力的原理。  (4)与电和磁相关的素材：通过摩擦过的塑料梳子吸引轻小物体或水流等现象演示静电作用，利用小磁针探究磁体和通电导线周围的磁场，分析电动机和发电机模型等，让学生认识电磁的应用，体会物理学发展对社会进步的推动作用\"}", CJ_achievementRequirement: "(1) 了解机械运动、分子热运动、声和光、电和磁, 了解重力、弹力、摩擦力, 通过牛顿第一定律和力的作用效果, 认识机械运动和力的关系; 能用这些知识解释自然界的有关现象, 解决日常生活中的有关问题, 形成初步的运动和相互作用观念。  (2) 知道匀速直线运动、杠杆、光线等物理模型; 能运用运动和力、声和光、电和磁的一些规律分析简单问题, 并获得结论; 能在解释自然现象和解决实际问题时引用证据, 具有使用科学证据的意识; 能根据运动和相互作用的知识, 指出交流中有关说法的不当之处, 并能提出自己的见解。  (3) 能基于观察和实验，提出与运动和力、声和光、电和磁等现象有关的科学探究问题，并作出有依据的猜想与假设；在关于杠杆、浮力、光的反射、平面镜成像、凸透镜成像、通电螺线管等科学探究中，能制订初步的实验方案；能正确使用弹簧测力计、刻度尺等相关器材获取实验数据；能通过对数据的比较与分析，发现数据的特点，进行初步的因果判断，得出实验结论；能表述实验过程和结果，撰写实验报告。  (4) 知道物理学是对相关自然现象的描述与解释, 物理学研究需要观察、实验和推理, 体会物理学对人类生活和社会发展的影响; 具有对运动和力、声和光、电和磁等知识的学习兴趣和严谨认真、实事求是的科学态度; 关心我国古代和现代科技成就, 为中华民族的科技成就感到自豪, 逐步养成实现中华民族伟大复兴的责任感与使命感。。", CJ_teachingTip: "（1）教学策略建议在“运动和相互作用”主题的教学中，建议从学生的已有经验和认知水平出发，设计多种学习活动，重视物理概念的建构过程，促进学生对抽象概念的理解，引导学生在问题解决中提升能力，发展核心素养。①联系生产生活实际创设学习情境。例如：在建立机械运动概念时，建议创设学生熟悉的情境，启发并引导学生对真实情境中的物理问题进行思维加工，概括它们的共同特征等；在声和光、电和磁部分，建议结合生活中的实际情境，进行相关内容的学习。  ②渗透科学研究方法，培养学生的科学思维。例如，通过实验引导学生认识光线等物理模型，体会物理模型的重要作用。引导学生通过实验寻找证据，归纳总结出一般性的规律，鼓励学生勇于质疑，敢于表达自己的观点。  ③注重问题导向，合理设计探究活动。在探究力的作用效果、牛顿第一定律、压强大小的影响因素、声音的产生和传播条件、光的传播规律、电和磁的相互作用等学习活动中，注重发挥学生的积极性和主动性，给学生留出恰当的时间和空间；鼓励学生发现问题、提出问题，通过科学方法收集证据、得出结论；引导学生解释得出结论的理由，并对探究过程和结果进行评估、反思与交流。  ④充分利用科学史料，培养学生的科学态度与社会责任感。建议将我国的相关科技成就引入课堂，如通过分析和讨论孔明灯、司南等与中华优秀传统文化有关的素材和5G技术、北斗卫星导航系统、高速动车组列车、“奋斗者”号载人潜水器等我国现代化建设新成就，培养学生的爱国情怀，提升学生的民族自豪感和实现中华民族伟大复兴的使命感。还可通过项目式学习，开展制作小型电动机、小型发电机等项目活动，让学生体会法拉第等科学家所取得的成就及其对社会发展的贡献。# (2）情境素材建议“运动和相互作用”主题与生产生活实际密切相关。下面侧重提出与运动、力及其作用效果、声和光、电和磁相关的常见情境素材建议。①与运动相关的素材：从星系、天体的运动，到汽车、火车的运动，再到分子的运动等都是运动的例证；介绍伽利略、牛顿等科学家的事迹，让学生感受科学家研究问题的方法和严谨认真、实事求是的科学态度。  (2)与力及其作用效果相关的素材：利用弹簧测力计感受和测量力，利用撬棒、剪刀等分析杠杆的特点，利用气球演示力的作用效果，利用砖块的不同侧面演示压力的作用效果，利用液体压强计测量不同密度的液体内部不同深度处的压强，利用自制潜水艇等研究物体的浮沉条件。  ③与声和光相关的素材：通过分析声带振动、鼓面振动等现象归纳声音产生的原因，利用“土电话”、真空罩等研究声音的传播条件，利用吉他、钢琴等乐器分析声音的特性；讨论分析“楼台倒影入池塘”“潭清疑水浅”等诗句所反映的光学原理，讨论分析放大镜的成像原理和近视眼镜矫正视力的原理。  (4)与电和磁相关的素材：通过摩擦过的塑料梳子吸引轻小物体或水流等现象演示静电作用，利用小磁针探究磁体和通电导线周围的磁场，分析电动机和发电机模型等，让学生认识电磁的应用，体会物理学发展对社会进步的推动作用"};

MERGE (n:ThemeL1 {identifier: "urn:jy:physics:OB05:ThemeL1:3"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL1:3", title: "能量", description: "一级主题“能量”包含“能量、能量的转化和转移”“机械能”“内能”“电磁能”“能量守恒”“能源与可持续发展”六个二级主题。“能量”主题的课程内容具有一定的综合性和跨学科性，与生产生活及社会发展密切相关。这部分内容的设计旨在引导学生从物理学视角认识能量，了解不同形式的能量，认识能量转化与守恒的普遍规律，了解节约能源与可持续发展的重要性，初步形成能量观念；发展学生综合分析问题和解决问题的能力，培养学生为可持续发展作贡献、将科学服务于人类的使命感。", subject: "物理SB0401", type: "ThemeL1", applicableLevel: "OB05", contentJson: "{\"achievementRequirement\": \"(1) 能列举能量转化和转移的实例, 知道能量在转化和转移过程中是守恒的，认识机械功、热量、电功、热值等是与能量转化或转移密切相关的物理量，知道它们的含义；能用能量转化与守恒的观点解释常见的自然现象，解决日常生活中的有关问题，形成初步的能量观念。(2) 知道能量的利用存在效率问题,  $100%$  的能量利用率只是一种理想情况; 能用能量转化与守恒的规律对有关具体问题进行科学推理, 并形成结论; 在对能量问题进行推理时, 能从信息中寻找证据并作出说明; 具有根据能量守恒的观点对一些不当说法进行质疑的意识。  (3) 能通过观察周围事物, 发现并提出关于能量的问题, 能根据已有知识对问题作出猜想与假设; 能根据控制变量法制订简单的探究方案, 会正确使用电压表、电流表测量基本的电学量, 正确读取和记录实验数据, 并排除简单的实验故障; 能用表格、图像等多种方式展示实验数据, 并通过分析和处理数据得出实验结论; 能撰写实验报告, 书面或口头表述科学探究的过程和结果。  （4）能从热机对社会发展所产生影响的角度，体会科技进步对人类和社会发展的推动作用；能从能量转化的角度认识提高效率的重大意义，增强学习物理学的动力；能从能量的转化和转移具有一定方向性的角度，体会节约能源与可持续发展的重要性。\", \"teachingTip\": \"(1) 教学策略建议在“能量”主题教学中，建议结合学生的认知特点，循序渐进地引导学生学习相关内容，从能量守恒、能量转化和转移的方向性等角度，让学生了解环境保护、可持续发展的重要性，启发学生在力所能及的范围内践行低碳生活。①灵活选用教学方式，帮助学生逐步形成能量观念。例如：通过情境创设、实验探究等，引导学生认识机械能、内能、电磁能等能量的不同存在形式；通过科学探究、课堂讨论，引导学生理解太阳能在地球上是怎样转化成其他形式能量的，体会能量转化和守恒的思想，逐步形成能量观念。②理论联系实际，提高学生分析问题、解决问题的能力。例如：通过解决生产生活中的具体问题，使学生了解功、功率、电功、电功率及焦耳定律等知识，形成将物理知识与生产生活相联系的意识；在用能量守恒定律等解决问题的过程中，引导学生领悟从守恒的角度分析、解决问题的方法，提高分析、解决实际问题的能力。③重视探究教学，提高学生的科学探究能力。例如，通过探究电流与电压、电阻的关系等实验，引导学生明确实验目的，运用控制变量等方法制订简单的探究方案，学会分析和处理实验数据，正确表述科学探究的过程和结果，提高科学探究能力。④设计丰富的实践活动，提高学生的共通性素养。通过调查研究活动，启发学生关注科学、技术、社会、环境之间的关系，引导学生认识环境保护的重要性，认同人与自然和谐共生的理念。例如：通过查阅资料等，了解核能的特点和处理核废料的常用方法，讨论核能利用可能带来的问题；调查当地太阳能的利用情况，估算太阳能的转化效率；调查家庭或学校可能存在的安全用电隐患，提高安全用电的意识。通过设计制作等活动，引导学生加深对节约能源与促进可持续发展的认识，提高节能意识，践行低碳生活，促进其科学态度与责任感的养成。# (2) 情境素材建议“能量”主题内容跨度大，层次多，教学活动丰富。相关的情境素材可来源于自然现象、物理实验、物理学史、日常生活和社会热点等。下面侧重提出与能量转化和转移，机械能、内能和电磁能，能量守恒与可持续发展相关的情境素材建议。①与能量转化和转移相关的素材：讨论和分析水轮机带动发电机发电、电风扇通电后扇叶转动、加热试管中的水后橡胶塞从管口弹出、金属丝通电后发热等过程中能量的转化和转移情况。②与机械能、内能和电磁能相关的素材：用荡秋千的过程定性说明动能和势能的转化情况；展示常见机械的铭牌，比较它们的功率；分析为什么通常沿海地区昼夜温差较小，而沙漠地区昼夜温差较大；展示家用电能表，通过电能表计算用电量。  ③与能量守恒与可持续发展相关的素材：讨论和分析我国古代的一些机械，列举不同历史时期人类利用的主要能源。\"}", CJ_achievementRequirement: "(1) 能列举能量转化和转移的实例, 知道能量在转化和转移过程中是守恒的，认识机械功、热量、电功、热值等是与能量转化或转移密切相关的物理量，知道它们的含义；能用能量转化与守恒的观点解释常见的自然现象，解决日常生活中的有关问题，形成初步的能量观念。(2) 知道能量的利用存在效率问题,  $100%$  的能量利用率只是一种理想情况; 能用能量转化与守恒的规律对有关具体问题进行科学推理, 并形成结论; 在对能量问题进行推理时, 能从信息中寻找证据并作出说明; 具有根据能量守恒的观点对一些不当说法进行质疑的意识。  (3) 能通过观察周围事物, 发现并提出关于能量的问题, 能根据已有知识对问题作出猜想与假设; 能根据控制变量法制订简单的探究方案, 会正确使用电压表、电流表测量基本的电学量, 正确读取和记录实验数据, 并排除简单的实验故障; 能用表格、图像等多种方式展示实验数据, 并通过分析和处理数据得出实验结论; 能撰写实验报告, 书面或口头表述科学探究的过程和结果。  （4）能从热机对社会发展所产生影响的角度，体会科技进步对人类和社会发展的推动作用；能从能量转化的角度认识提高效率的重大意义，增强学习物理学的动力；能从能量的转化和转移具有一定方向性的角度，体会节约能源与可持续发展的重要性。", CJ_teachingTip: "(1) 教学策略建议在“能量”主题教学中，建议结合学生的认知特点，循序渐进地引导学生学习相关内容，从能量守恒、能量转化和转移的方向性等角度，让学生了解环境保护、可持续发展的重要性，启发学生在力所能及的范围内践行低碳生活。①灵活选用教学方式，帮助学生逐步形成能量观念。例如：通过情境创设、实验探究等，引导学生认识机械能、内能、电磁能等能量的不同存在形式；通过科学探究、课堂讨论，引导学生理解太阳能在地球上是怎样转化成其他形式能量的，体会能量转化和守恒的思想，逐步形成能量观念。②理论联系实际，提高学生分析问题、解决问题的能力。例如：通过解决生产生活中的具体问题，使学生了解功、功率、电功、电功率及焦耳定律等知识，形成将物理知识与生产生活相联系的意识；在用能量守恒定律等解决问题的过程中，引导学生领悟从守恒的角度分析、解决问题的方法，提高分析、解决实际问题的能力。③重视探究教学，提高学生的科学探究能力。例如，通过探究电流与电压、电阻的关系等实验，引导学生明确实验目的，运用控制变量等方法制订简单的探究方案，学会分析和处理实验数据，正确表述科学探究的过程和结果，提高科学探究能力。④设计丰富的实践活动，提高学生的共通性素养。通过调查研究活动，启发学生关注科学、技术、社会、环境之间的关系，引导学生认识环境保护的重要性，认同人与自然和谐共生的理念。例如：通过查阅资料等，了解核能的特点和处理核废料的常用方法，讨论核能利用可能带来的问题；调查当地太阳能的利用情况，估算太阳能的转化效率；调查家庭或学校可能存在的安全用电隐患，提高安全用电的意识。通过设计制作等活动，引导学生加深对节约能源与促进可持续发展的认识，提高节能意识，践行低碳生活，促进其科学态度与责任感的养成。# (2) 情境素材建议“能量”主题内容跨度大，层次多，教学活动丰富。相关的情境素材可来源于自然现象、物理实验、物理学史、日常生活和社会热点等。下面侧重提出与能量转化和转移，机械能、内能和电磁能，能量守恒与可持续发展相关的情境素材建议。①与能量转化和转移相关的素材：讨论和分析水轮机带动发电机发电、电风扇通电后扇叶转动、加热试管中的水后橡胶塞从管口弹出、金属丝通电后发热等过程中能量的转化和转移情况。②与机械能、内能和电磁能相关的素材：用荡秋千的过程定性说明动能和势能的转化情况；展示常见机械的铭牌，比较它们的功率；分析为什么通常沿海地区昼夜温差较小，而沙漠地区昼夜温差较大；展示家用电能表，通过电能表计算用电量。  ③与能量守恒与可持续发展相关的素材：讨论和分析我国古代的一些机械，列举不同历史时期人类利用的主要能源。"};

MERGE (n:ThemeL1 {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL1:4", title: "实验探究", description: "一级主题“实验探究”包含测量类和探究类学生必做实验。这两类学生必做实验相互关联，各有侧重，旨在体现物理课程实践性的特点，培养学生发现问题和提出问题的能力、动手操作和收集数据的能力、分析和处理数据的能力、解释数据的能力、表达和交流的能力，引导学生学会学习、学会合作，培养学生严谨认真、实事求是的科学态度。", subject: "物理SB0401", type: "ThemeL1", applicableLevel: "OB05", contentJson: "{\"achievementRequirement\": \"（1）能通过物理实验建构物理概念，深化对物理规律的认识，领悟其内涵及相互联系；有将实验探究方法及安全操作规范等运用于解决日常问题的意识，能根据所学知识和说明书等解决现实中的简单问题。  (2) 知道科学探究会受到各种因素的影响，在实验中能关注主要因素，忽略次要因素；能根据实验数据通过归纳推理获得探究结论；有判断实验数据是否合理、有效的意识；能对实验进行反思，提出改进建议。  （3）在实验中有发现问题、提出问题的意识；能根据实验目的设计实验方案，会正确使用已学实验器材收集数据，能遵守实验室规则，注意实验中的安全问题；能对收集的数据进行整理，归纳总结，形成结论并作出解释；有合作交流的团队意识，能撰写简单的实验报告。(4) 能初步体会物理研究是建立在观察和实验基础上的创造性工作; 能通过实验获得结论, 产生成就感, 有学习物理的兴趣和严谨认真、实事求是的科学态度; 有节约资源、保护环境的责任感及自觉行为。\", \"teachingTip\": \"(1) 教学策略建议“实验探究”主题中所列三级主题，均为学生必做实验。教师应提前做好实验教学设计，准备好实验器材和场地等，规划好教学时间。教学中，要求每个学生动手动脑完成实验。有条件的学校应尽可能多地给学生创造动手实验的机会，以发挥实验的育人功能，促进学生核心素养的养成。①引导学生发现问题、提出问题，启发学生作出猜想与假设。尽量利用身边的情境引导学生去发现问题、提出问题。例如，用平面镜将室外的阳光反射进教室，调整小镜子的摆放角度，可发现阳光进入教室的角度、位置随之发生变化，引导学生思考太阳光的亮斑为什么不是固定在某个位置，进而思考光的反射现象，提出反射是否会遵循一定的规律。  ②关注对学生设计实验方案、收集证据能力的培养。注重发挥每个学生的创新潜力，鼓励学生设计实验方案、自制实验器材、改进实验装置及操作方法，给学生提供自主探究的时间和空间。增加实验室开放时间，为有兴趣的学生提供场地、器材、指导等方面的支持，在确保安全的前提下，鼓励学生利用课外活动时间，在校内外利用简单的器材开展科学探究活动。  ③引导学生通过分析论证得出结论并作出解释，培养学生分析论证的能力。例如：在探究杠杆的平衡条件时，引导学生思考为什么要通过表格记录杠杆平衡时不同的动力、动力臂与阻力、阻力臂数值，通过分析数据寻找定量关系——动力与阻力不同时，动力臂与阻力臂也不同，但动力与动力臂的乘积等于阻力与阻力臂的乘积；组织学生根据数据归纳出杠杆的平衡条件，讨论分析个别数据存在问题的原因，分享更多数据，找到普遍规律。  ④注重对学生交流合作、评估反思能力的培养。组织学生对实验方案、实验探究过程和结果等进行评估与交流，鼓励学生充分发表见解，调动学生在探究活动中的积极性和主动性。例如：在探究滑动摩擦力大小与哪些因素有关时，会发现物块被拉动时难以保持匀速运动，引导学生思考如何实现物块相对于不同接触面做缓慢匀速运动，以保证弹簧测力计示数等于物块所受滑动摩擦力的大小，组织学生交流并改进；在探究电流与电压、电阻的关系时，让学生设计实验方案并动手操作，发现问题后组织学生对器材或电路进行评估，找到改进实验的方法。# (2) 实验器材建议“实验探究”主题中所列的实验，涉及的器材多与实验室或生活中的器材有关。下面分别提出与测量类和探究类学生必做实验相关的实验器材建议。①与测量类学生必做实验相关的器材：在测量物体质量时，可用托盘天平；在测量物体密度时，可用电子天平测量质量，以使实验更加便捷；可用量筒和天平测量形状不规则的石块和蜡块的密度；在测量物体运动的速度时，可测量人步行的速度；用常见温度计测量温度时，可用实验室温度计测量棉手套内的温度和室内空气温度，并进行对比。②与探究类学生必做实验相关的器材：在探究浮力大小与哪些因素有关时，可用相同大小的玻璃珠等进行实验；在探究杠杆的平衡条件时，可在杠杆两侧悬吊学生常见的物体使杠杆平衡，用弹簧测力计测量物体所受的重力，用刻度尺测量力臂；在探究凸透镜成像规律的实验中，可用发光二极管等光源做成F形作为发光物屏，以判断像的正倒和测量像的长度，可用刻度尺测量物距和像距；在探究导体在磁场中运动产生感应电流的条件时，可用磁性较强的磁体进行实验；在探究串联电路和并联电路中电流、电压的特点时，可用电阻、小灯泡等不同的用电器连接串、并联电路，使用指针式仪表或数字式仪表测量电流和电压，探究出串联电路和并联电路中电流、电压的特点.\"}", CJ_achievementRequirement: "（1）能通过物理实验建构物理概念，深化对物理规律的认识，领悟其内涵及相互联系；有将实验探究方法及安全操作规范等运用于解决日常问题的意识，能根据所学知识和说明书等解决现实中的简单问题。  (2) 知道科学探究会受到各种因素的影响，在实验中能关注主要因素，忽略次要因素；能根据实验数据通过归纳推理获得探究结论；有判断实验数据是否合理、有效的意识；能对实验进行反思，提出改进建议。  （3）在实验中有发现问题、提出问题的意识；能根据实验目的设计实验方案，会正确使用已学实验器材收集数据，能遵守实验室规则，注意实验中的安全问题；能对收集的数据进行整理，归纳总结，形成结论并作出解释；有合作交流的团队意识，能撰写简单的实验报告。(4) 能初步体会物理研究是建立在观察和实验基础上的创造性工作; 能通过实验获得结论, 产生成就感, 有学习物理的兴趣和严谨认真、实事求是的科学态度; 有节约资源、保护环境的责任感及自觉行为。", CJ_teachingTip: "(1) 教学策略建议“实验探究”主题中所列三级主题，均为学生必做实验。教师应提前做好实验教学设计，准备好实验器材和场地等，规划好教学时间。教学中，要求每个学生动手动脑完成实验。有条件的学校应尽可能多地给学生创造动手实验的机会，以发挥实验的育人功能，促进学生核心素养的养成。①引导学生发现问题、提出问题，启发学生作出猜想与假设。尽量利用身边的情境引导学生去发现问题、提出问题。例如，用平面镜将室外的阳光反射进教室，调整小镜子的摆放角度，可发现阳光进入教室的角度、位置随之发生变化，引导学生思考太阳光的亮斑为什么不是固定在某个位置，进而思考光的反射现象，提出反射是否会遵循一定的规律。  ②关注对学生设计实验方案、收集证据能力的培养。注重发挥每个学生的创新潜力，鼓励学生设计实验方案、自制实验器材、改进实验装置及操作方法，给学生提供自主探究的时间和空间。增加实验室开放时间，为有兴趣的学生提供场地、器材、指导等方面的支持，在确保安全的前提下，鼓励学生利用课外活动时间，在校内外利用简单的器材开展科学探究活动。  ③引导学生通过分析论证得出结论并作出解释，培养学生分析论证的能力。例如：在探究杠杆的平衡条件时，引导学生思考为什么要通过表格记录杠杆平衡时不同的动力、动力臂与阻力、阻力臂数值，通过分析数据寻找定量关系——动力与阻力不同时，动力臂与阻力臂也不同，但动力与动力臂的乘积等于阻力与阻力臂的乘积；组织学生根据数据归纳出杠杆的平衡条件，讨论分析个别数据存在问题的原因，分享更多数据，找到普遍规律。  ④注重对学生交流合作、评估反思能力的培养。组织学生对实验方案、实验探究过程和结果等进行评估与交流，鼓励学生充分发表见解，调动学生在探究活动中的积极性和主动性。例如：在探究滑动摩擦力大小与哪些因素有关时，会发现物块被拉动时难以保持匀速运动，引导学生思考如何实现物块相对于不同接触面做缓慢匀速运动，以保证弹簧测力计示数等于物块所受滑动摩擦力的大小，组织学生交流并改进；在探究电流与电压、电阻的关系时，让学生设计实验方案并动手操作，发现问题后组织学生对器材或电路进行评估，找到改进实验的方法。# (2) 实验器材建议“实验探究”主题中所列的实验，涉及的器材多与实验室或生活中的器材有关。下面分别提出与测量类和探究类学生必做实验相关的实验器材建议。①与测量类学生必做实验相关的器材：在测量物体质量时，可用托盘天平；在测量物体密度时，可用电子天平测量质量，以使实验更加便捷；可用量筒和天平测量形状不规则的石块和蜡块的密度；在测量物体运动的速度时，可测量人步行的速度；用常见温度计测量温度时，可用实验室温度计测量棉手套内的温度和室内空气温度，并进行对比。②与探究类学生必做实验相关的器材：在探究浮力大小与哪些因素有关时，可用相同大小的玻璃珠等进行实验；在探究杠杆的平衡条件时，可在杠杆两侧悬吊学生常见的物体使杠杆平衡，用弹簧测力计测量物体所受的重力，用刻度尺测量力臂；在探究凸透镜成像规律的实验中，可用发光二极管等光源做成F形作为发光物屏，以判断像的正倒和测量像的长度，可用刻度尺测量物距和像距；在探究导体在磁场中运动产生感应电流的条件时，可用磁性较强的磁体进行实验；在探究串联电路和并联电路中电流、电压的特点时，可用电阻、小灯泡等不同的用电器连接串、并联电路，使用指针式仪表或数字式仪表测量电流和电压，探究出串联电路和并联电路中电流、电压的特点."};

MERGE (n:ThemeL1 {identifier: "urn:jy:physics:OB05:ThemeL1:5"})
SET n += {identifier: "urn:jy:physics:OB05:ThemeL1:5", title: "跨学科实践", description: "一级主题“跨学科实践”包含“物理学与日常生活”“物理学与工程实践”“物理学与社会发展”三个二级主题。“跨学科实践”主题的内容具有跨学科性和实践性特点，与日常生活、工程实践及社会热点问题密切相关。这部分内容的设计旨在发展学生跨学科运用知识的能力、分析和解决问题的综合能力、动手操作的实践能力，培养学生积极认真的学习态度和乐于实践、敢于创新的精神。", subject: "物理SB0401", type: "ThemeL1", applicableLevel: "OB05", contentJson: "{\"achievementRequirement\": \"(1) 能在跨学科实践中综合认识所涉及的知识; 能用物理及其他学科知识解释与健康、安全等有关的日常生活问题, 探索一些简单的工程与技术问题, 分析与能源、环境等有关的社会热点问题, 初步具有运用跨学科知识解决简单问题的能力。  (2) 能在跨学科实践中尝试找出影响活动成效的主要因素, 能运用简单模型解决问题; 能利用归纳或演绎的方法对跨学科问题进行推理, 获得结论; 能基于证据说明操作的合理性; 能在操作中独立思考，提出自己的见解。（3）能在真实、综合的情境中发现问题，提出假设；能设计简单的跨学科实践方案，能通过调查等方式收集信息，提出证据；能对跨学科实践活动方案、实施过程及结果进行解释；能与他人共同实施方案，合作交流，并撰写简单的活动报告。  （4）为我国古代科技发明感到自豪，能体会物理学对人类生活、工程实践和社会发展的影响；乐于思考与实践，敢于探索，勇于创新，进一步增强安全意识，践行健康生活；具有节能环保、促进可持续发展的责任感。\", \"teachingTip\": \"# (1) 教学策略建议跨学科实践要紧密结合物理教学内容，体现综合性和实践性，注重激发学生的求知欲和学习热情，促进学生学以致用，养成良好学习习惯，提升团队意识和协作能力。(1)选择具有综合性、实践性的课题。结合当地特点，围绕现实生活和社会发展的热点问题，从多学科角度观察、思考和分析问题，挖掘、选取有教育意义的素材，将其改造成跨学科实践的问题或任务。  ②合理制订跨学科实践方案。以问题的解决过程为线索设计方案，将跨学科实践的课题分解为若干驱动性任务，以观察、实验、设计、制作、调查等方式设计活动，将跨学科实践的课题转化为可操作的教学设计和实施方案。  ③科学引导、循序渐进实施跨学科实践。布置适当的预习任务，引导学生提前了解活动的流程和要求，以及所需知识、方法和设备等；进行合理分组，使学生能相互取长补短、共同完成活动。引导学生主动学习、独立思考、大胆设计、敢于创新，在学生遇到困难时给予适当的指导和帮助。  ④重视活动成果的呈现和交流。注重活动总结，以设计作品、制作模型、撰写报告等多种形式呈现成果。根据物化形式的特点，组织开展成果展览、报告会、研讨会等多种方式的交流活动。# (2) 情境素材建议“跨学科实践”主题的情境素材很丰富，如与日常生活议题、实践操作、社会发展热点等有关的素材均可选择。下面侧重提出与日常生活、工程实践、社会发展相关的情境素材建议。①与日常生活相关的素材：观察和体验人在活动或劳动过程中的杠杆模型，从具体事例分析省力杠杆和省距离杠杆，尝试综合运用多学科知识解释生活现象；举办“自行车中的科学知识挑战赛”，以自行车为研究对象，确定挑战赛规则，通过趣味比赛引导学生理论联系实际，综合解决问题。 ②与工程实践相关的素材：举办关于我国古代科技发明的作品展览；举办“简易滑翔机制作比赛”，让学生利用所学知识分析原理、绘制设计图、选用材料、制作样机，进行比赛；了解水火箭的原理、结构、材料等，小组合作设计并制作简单的水火箭。  ③与社会发展相关的素材：设计一个节能环保小屋，思考如何在保护和改善环境的前提下利用太阳能、地热能、风能等能源，从地理位置、气候、成本等方面讨论每种能源利用的可行性，尝试制作节能环保小屋模型；举办“新材料研制与应用报告会”，小组合作收集和整理相关资料，在课堂上进行成果展示与答辩。\"}", CJ_achievementRequirement: "(1) 能在跨学科实践中综合认识所涉及的知识; 能用物理及其他学科知识解释与健康、安全等有关的日常生活问题, 探索一些简单的工程与技术问题, 分析与能源、环境等有关的社会热点问题, 初步具有运用跨学科知识解决简单问题的能力。  (2) 能在跨学科实践中尝试找出影响活动成效的主要因素, 能运用简单模型解决问题; 能利用归纳或演绎的方法对跨学科问题进行推理, 获得结论; 能基于证据说明操作的合理性; 能在操作中独立思考，提出自己的见解。（3）能在真实、综合的情境中发现问题，提出假设；能设计简单的跨学科实践方案，能通过调查等方式收集信息，提出证据；能对跨学科实践活动方案、实施过程及结果进行解释；能与他人共同实施方案，合作交流，并撰写简单的活动报告。  （4）为我国古代科技发明感到自豪，能体会物理学对人类生活、工程实践和社会发展的影响；乐于思考与实践，敢于探索，勇于创新，进一步增强安全意识，践行健康生活；具有节能环保、促进可持续发展的责任感。", CJ_teachingTip: "# (1) 教学策略建议跨学科实践要紧密结合物理教学内容，体现综合性和实践性，注重激发学生的求知欲和学习热情，促进学生学以致用，养成良好学习习惯，提升团队意识和协作能力。(1)选择具有综合性、实践性的课题。结合当地特点，围绕现实生活和社会发展的热点问题，从多学科角度观察、思考和分析问题，挖掘、选取有教育意义的素材，将其改造成跨学科实践的问题或任务。  ②合理制订跨学科实践方案。以问题的解决过程为线索设计方案，将跨学科实践的课题分解为若干驱动性任务，以观察、实验、设计、制作、调查等方式设计活动，将跨学科实践的课题转化为可操作的教学设计和实施方案。  ③科学引导、循序渐进实施跨学科实践。布置适当的预习任务，引导学生提前了解活动的流程和要求，以及所需知识、方法和设备等；进行合理分组，使学生能相互取长补短、共同完成活动。引导学生主动学习、独立思考、大胆设计、敢于创新，在学生遇到困难时给予适当的指导和帮助。  ④重视活动成果的呈现和交流。注重活动总结，以设计作品、制作模型、撰写报告等多种形式呈现成果。根据物化形式的特点，组织开展成果展览、报告会、研讨会等多种方式的交流活动。# (2) 情境素材建议“跨学科实践”主题的情境素材很丰富，如与日常生活议题、实践操作、社会发展热点等有关的素材均可选择。下面侧重提出与日常生活、工程实践、社会发展相关的情境素材建议。①与日常生活相关的素材：观察和体验人在活动或劳动过程中的杠杆模型，从具体事例分析省力杠杆和省距离杠杆，尝试综合运用多学科知识解释生活现象；举办“自行车中的科学知识挑战赛”，以自行车为研究对象，确定挑战赛规则，通过趣味比赛引导学生理论联系实际，综合解决问题。 ②与工程实践相关的素材：举办关于我国古代科技发明的作品展览；举办“简易滑翔机制作比赛”，让学生利用所学知识分析原理、绘制设计图、选用材料、制作样机，进行比赛；了解水火箭的原理、结构、材料等，小组合作设计并制作简单的水火箭。  ③与社会发展相关的素材：设计一个节能环保小屋，思考如何在保护和改善环境的前提下利用太阳能、地热能、风能等能源，从地理位置、气候、成本等方面讨论每种能源利用的可行性，尝试制作节能环保小屋模型；举办“新材料研制与应用报告会”，小组合作收集和整理相关资料，在课堂上进行成果展示与答辩。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:001"})
SET n += {identifier: "urn:jy:physics:OB05:Example:001", title: "例1", description: "尝试对温室效应、热岛效应等发表自己的见解。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_012.png\", \"exampleLabel\": \"例1\", \"text\": \"尝试对温室效应、热岛效应等发表自己的见解。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:1", CJ_sourceImage: "page_012.png", CJ_exampleLabel: "例1", CJ_text: "尝试对温室效应、热岛效应等发表自己的见解。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:002"})
SET n += {identifier: "urn:jy:physics:OB05:Example:002", title: "例2", description: "能运用物态变化知识，说明冰熔化、水沸腾等现象。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_012.png\", \"exampleLabel\": \"例2\", \"text\": \"能运用物态变化知识，说明冰熔化、水沸腾等现象。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:1", CJ_sourceImage: "page_012.png", CJ_exampleLabel: "例2", CJ_text: "能运用物态变化知识，说明冰熔化、水沸腾等现象。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:003"})
SET n += {identifier: "urn:jy:physics:OB05:Example:003", title: "例3", description: "了解我国古代的铸造技术，并尝试运用物态变化知识进行解释。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_012.png\", \"exampleLabel\": \"例3\", \"text\": \"了解我国古代的铸造技术，并尝试运用物态变化知识进行解释。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:1", CJ_sourceImage: "page_012.png", CJ_exampleLabel: "例3", CJ_text: "了解我国古代的铸造技术，并尝试运用物态变化知识进行解释。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:004"})
SET n += {identifier: "urn:jy:physics:OB05:Example:004", title: "例1", description: "通过实验，了解橡胶的弹性。列举弹性在生活中的应用实例。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_013.png\", \"exampleLabel\": \"例1\", \"text\": \"通过实验，了解橡胶的弹性。列举弹性在生活中的应用实例。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:2", CJ_sourceImage: "page_013.png", CJ_exampleLabel: "例1", CJ_text: "通过实验，了解橡胶的弹性。列举弹性在生活中的应用实例。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:005"})
SET n += {identifier: "urn:jy:physics:OB05:Example:005", title: "例2", description: "通过实验，了解物质的磁性和磁化现象。调查磁性材料在生活中的应用。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_013.png\", \"exampleLabel\": \"例2\", \"text\": \"通过实验，了解物质的磁性和磁化现象。调查磁性材料在生活中的应用。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:2", CJ_sourceImage: "page_013.png", CJ_exampleLabel: "例2", CJ_text: "通过实验，了解物质的磁性和磁化现象。调查磁性材料在生活中的应用。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:006"})
SET n += {identifier: "urn:jy:physics:OB05:Example:006", title: "例3", description: "通过实验，了解物质的导电性，比较导体、半导体、绝缘体导电性能的差异。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_013.png\", \"exampleLabel\": \"例3\", \"text\": \"通过实验，了解物质的导电性，比较导体、半导体、绝缘体导电性能的差异。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:2", CJ_sourceImage: "page_013.png", CJ_exampleLabel: "例3", CJ_text: "通过实验，了解物质的导电性，比较导体、半导体、绝缘体导电性能的差异。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:007"})
SET n += {identifier: "urn:jy:physics:OB05:Example:007", title: "例4", description: "通过实验，了解金属与木材导热性能的差异。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_013.png\", \"exampleLabel\": \"例4\", \"text\": \"通过实验，了解金属与木材导热性能的差异。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:2", CJ_sourceImage: "page_013.png", CJ_exampleLabel: "例4", CJ_text: "通过实验，了解金属与木材导热性能的差异。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:008"})
SET n += {identifier: "urn:jy:physics:OB05:Example:008", title: "例5", description: "列举质量为几克、几十克、几百克和几千克的一些物品，能估测常见物体的质量。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_013.png\", \"exampleLabel\": \"例5\", \"text\": \"列举质量为几克、几十克、几百克和几千克的一些物品，能估测常见物体的质量。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:2", CJ_sourceImage: "page_013.png", CJ_exampleLabel: "例5", CJ_text: "列举质量为几克、几十克、几百克和几千克的一些物品，能估测常见物体的质量。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:009"})
SET n += {identifier: "urn:jy:physics:OB05:Example:009", title: "例1", description: "用图形、文字或语言描述原子的核式结构模型。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_014.png\", \"exampleLabel\": \"例1\", \"text\": \"用图形、文字或语言描述原子的核式结构模型。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:3", CJ_sourceImage: "page_014.png", CJ_exampleLabel: "例1", CJ_text: "用图形、文字或语言描述原子的核式结构模型。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:010"})
SET n += {identifier: "urn:jy:physics:OB05:Example:010", title: "例2", description: "了解我国在载人航天及其他航天科技方面的新成就，体会我国航天人热爱祖国、为国争光的坚定信念和勇于登攀、敢于超越的进取精神。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_014.png\", \"exampleLabel\": \"例2\", \"text\": \"了解我国在载人航天及其他航天科技方面的新成就，体会我国航天人热爱祖国、为国争光的坚定信念和勇于登攀、敢于超越的进取精神。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:3", CJ_sourceImage: "page_014.png", CJ_exampleLabel: "例2", CJ_text: "了解我国在载人航天及其他航天科技方面的新成就，体会我国航天人热爱祖国、为国争光的坚定信念和勇于登攀、敢于超越的进取精神。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:011"})
SET n += {identifier: "urn:jy:physics:OB05:Example:011", title: "例3", description: "设计表格，按空间尺度大小的顺序排列列一些从宏观到微观有代表性的物体（如银河系、太阳系、地球、人、原子、原子核、夸克等）。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_014.png\", \"exampleLabel\": \"例3\", \"text\": \"设计表格，按空间尺度大小的顺序排列列一些从宏观到微观有代表性的物体（如银河系、太阳系、地球、人、原子、原子核、夸克等）。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:3", CJ_sourceImage: "page_014.png", CJ_exampleLabel: "例3", CJ_text: "设计表格，按空间尺度大小的顺序排列列一些从宏观到微观有代表性的物体（如银河系、太阳系、地球、人、原子、原子核、夸克等）。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:012"})
SET n += {identifier: "urn:jy:physics:OB05:Example:012", title: "例4", description: "了解一些典型天体、粒子寿命的时间尺度。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_014.png\", \"exampleLabel\": \"例4\", \"text\": \"了解一些典型天体、粒子寿命的时间尺度。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:3", CJ_sourceImage: "page_014.png", CJ_exampleLabel: "例4", CJ_text: "了解一些典型天体、粒子寿命的时间尺度。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:013"})
SET n += {identifier: "urn:jy:physics:OB05:Example:013", title: "例", description: "观察扩散现象，能用分子动理论的观点加以说明。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_017.png\", \"exampleLabel\": \"例\", \"text\": \"观察扩散现象，能用分子动理论的观点加以说明。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:4", CJ_sourceImage: "page_017.png", CJ_exampleLabel: "例", CJ_text: "观察扩散现象，能用分子动理论的观点加以说明。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:014"})
SET n += {identifier: "urn:jy:physics:OB05:Example:014", title: "例1", description: "会利用自身的尺度（如步长）估测教室的长度。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_018.png\", \"exampleLabel\": \"例1\", \"text\": \"会利用自身的尺度（如步长）估测教室的长度。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:5", CJ_sourceImage: "page_018.png", CJ_exampleLabel: "例1", CJ_text: "会利用自身的尺度（如步长）估测教室的长度。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:015"})
SET n += {identifier: "urn:jy:physics:OB05:Example:015", title: "例2", description: "了解我国古代测量长度和时间的工具，体会古人解决问题的智慧。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_018.png\", \"exampleLabel\": \"例2\", \"text\": \"了解我国古代测量长度和时间的工具，体会古人解决问题的智慧。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:5", CJ_sourceImage: "page_018.png", CJ_exampleLabel: "例2", CJ_text: "了解我国古代测量长度和时间的工具，体会古人解决问题的智慧。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:016"})
SET n += {identifier: "urn:jy:physics:OB05:Example:016", title: "例3", description: "通过实验，认识力的作用是相互的。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_018.png\", \"exampleLabel\": \"例3\", \"text\": \"通过实验，认识力的作用是相互的。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:5", CJ_sourceImage: "page_018.png", CJ_exampleLabel: "例3", CJ_text: "通过实验，认识力的作用是相互的。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:017"})
SET n += {identifier: "urn:jy:physics:OB05:Example:017", title: "例4", description: "通过实验，认识力可以改变物体运动的方向和快慢，也可以改变物体的形状。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_018.png\", \"exampleLabel\": \"例4\", \"text\": \"通过实验，认识力可以改变物体运动的方向和快慢，也可以改变物体的形状。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:5", CJ_sourceImage: "page_018.png", CJ_exampleLabel: "例4", CJ_text: "通过实验，认识力可以改变物体运动的方向和快慢，也可以改变物体的形状。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:018"})
SET n += {identifier: "urn:jy:physics:OB05:Example:018", title: "例5", description: "分析静止在水平桌面上杯子的受力情况。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_018.png\", \"exampleLabel\": \"例5\", \"text\": \"分析静止在水平桌面上杯子的受力情况。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:5", CJ_sourceImage: "page_018.png", CJ_exampleLabel: "例5", CJ_text: "分析静止在水平桌面上杯子的受力情况。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:019"})
SET n += {identifier: "urn:jy:physics:OB05:Example:019", title: "例6", description: "了解伽利略在探究与物体惯性有关问题时采用的思想实验，体会科学推理在科学研究中的作用。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_018.png\", \"exampleLabel\": \"例6\", \"text\": \"了解伽利略在探究与物体惯性有关问题时采用的思想实验，体会科学推理在科学研究中的作用。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:5", CJ_sourceImage: "page_018.png", CJ_exampleLabel: "例6", CJ_text: "了解伽利略在探究与物体惯性有关问题时采用的思想实验，体会科学推理在科学研究中的作用。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:020"})
SET n += {identifier: "urn:jy:physics:OB05:Example:020", title: "例7", description: "能运用惯性，解释当汽车急刹车、转弯时，车内可能发生的现象，讨论系安全带等保护措施的必要性。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_018.png\", \"exampleLabel\": \"例7\", \"text\": \"能运用惯性，解释当汽车急刹车、转弯时，车内可能发生的现象，讨论系安全带等保护措施的必要性。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:5", CJ_sourceImage: "page_018.png", CJ_exampleLabel: "例7", CJ_text: "能运用惯性，解释当汽车急刹车、转弯时，车内可能发生的现象，讨论系安全带等保护措施的必要性。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:021"})
SET n += {identifier: "urn:jy:physics:OB05:Example:021", title: "例8", description: "估测自己站立时对地面的压强。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_019.png\", \"exampleLabel\": \"例8\", \"text\": \"估测自己站立时对地面的压强。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:5", CJ_sourceImage: "page_019.png", CJ_exampleLabel: "例8", CJ_text: "估测自己站立时对地面的压强。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:022"})
SET n += {identifier: "urn:jy:physics:OB05:Example:022", title: "例9", description: "了解铁路站台上设置安全线的必要性。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_019.png\", \"exampleLabel\": \"例9\", \"text\": \"了解铁路站台上设置安全线的必要性。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:5", CJ_sourceImage: "page_019.png", CJ_exampleLabel: "例9", CJ_text: "了解铁路站台上设置安全线的必要性。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:023"})
SET n += {identifier: "urn:jy:physics:OB05:Example:023", title: "例10", description: "了解潜水艇的浮沉原理。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_019.png\", \"exampleLabel\": \"例10\", \"text\": \"了解潜水艇的浮沉原理。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:5", CJ_sourceImage: "page_019.png", CJ_exampleLabel: "例10", CJ_text: "了解潜水艇的浮沉原理。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:024"})
SET n += {identifier: "urn:jy:physics:OB05:Example:024", title: "例1", description: "在鼓面上放碎纸屑，敲击鼓面，观察纸屑的运动；敲击音叉，观察与其接触的物体的运动。了解实验中将微小变化放大的方法。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_019.png\", \"exampleLabel\": \"例1\", \"text\": \"在鼓面上放碎纸屑，敲击鼓面，观察纸屑的运动；敲击音叉，观察与其接触的物体的运动。了解实验中将微小变化放大的方法。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:6", CJ_sourceImage: "page_019.png", CJ_exampleLabel: "例1", CJ_text: "在鼓面上放碎纸屑，敲击鼓面，观察纸屑的运动；敲击音叉，观察与其接触的物体的运动。了解实验中将微小变化放大的方法。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:025"})
SET n += {identifier: "urn:jy:physics:OB05:Example:025", title: "例2", description: "将发声器放入玻璃罩中，逐渐抽出罩内空气，会听到发声器发出的声音逐渐变小，分析导致该现象的原因。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_019.png\", \"exampleLabel\": \"例2\", \"text\": \"将发声器放入玻璃罩中，逐渐抽出罩内空气，会听到发声器发出的声音逐渐变小，分析导致该现象的原因。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:6", CJ_sourceImage: "page_019.png", CJ_exampleLabel: "例2", CJ_text: "将发声器放入玻璃罩中，逐渐抽出罩内空气，会听到发声器发出的声音逐渐变小，分析导致该现象的原因。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:026"})
SET n += {identifier: "urn:jy:physics:OB05:Example:026", title: "例3", description: "了解超声波在生产生活和科学研究等方面的应用，如超声雷达、金属探伤、医学检查等。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_020.png\", \"exampleLabel\": \"例3\", \"text\": \"了解超声波在生产生活和科学研究等方面的应用，如超声雷达、金属探伤、医学检查等。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:6", CJ_sourceImage: "page_020.png", CJ_exampleLabel: "例3", CJ_text: "了解超声波在生产生活和科学研究等方面的应用，如超声雷达、金属探伤、医学检查等。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:027"})
SET n += {identifier: "urn:jy:physics:OB05:Example:027", title: "例4", description: "举例说明如何减弱生活环境中的噪声，具有保护自己、关心他人的意识。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_020.png\", \"exampleLabel\": \"例4\", \"text\": \"举例说明如何减弱生活环境中的噪声，具有保护自己、关心他人的意识。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:6", CJ_sourceImage: "page_020.png", CJ_exampleLabel: "例4", CJ_text: "举例说明如何减弱生活环境中的噪声，具有保护自己、关心他人的意识。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:028"})
SET n += {identifier: "urn:jy:physics:OB05:Example:028", title: "例5", description: "探究并了解光束在平面镜上反射时，反射角与入射角的关系。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_020.png\", \"exampleLabel\": \"例5\", \"text\": \"探究并了解光束在平面镜上反射时，反射角与入射角的关系。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:6", CJ_sourceImage: "page_020.png", CJ_exampleLabel: "例5", CJ_text: "探究并了解光束在平面镜上反射时，反射角与入射角的关系。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:029"})
SET n += {identifier: "urn:jy:physics:OB05:Example:029", title: "例6", description: "通过光束从空气射入水（或玻璃）中的实验，了解光的折射现象及其特点。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_020.png\", \"exampleLabel\": \"例6\", \"text\": \"通过光束从空气射入水（或玻璃）中的实验，了解光的折射现象及其特点。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:6", CJ_sourceImage: "page_020.png", CJ_exampleLabel: "例6", CJ_text: "通过光束从空气射入水（或玻璃）中的实验，了解光的折射现象及其特点。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:030"})
SET n += {identifier: "urn:jy:physics:OB05:Example:030", title: "例7", description: "了解凸透镜成像规律在放大镜、照相机中的应用。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_020.png\", \"exampleLabel\": \"例7\", \"text\": \"了解凸透镜成像规律在放大镜、照相机中的应用。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:6", CJ_sourceImage: "page_020.png", CJ_exampleLabel: "例7", CJ_text: "了解凸透镜成像规律在放大镜、照相机中的应用。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:031"})
SET n += {identifier: "urn:jy:physics:OB05:Example:031", title: "例8", description: "了解人眼成像的原理，了解近视眼和远视眼的成因与矫正方法。具有保护视力的意识。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_020.png\", \"exampleLabel\": \"例8\", \"text\": \"了解人眼成像的原理，了解近视眼和远视眼的成因与矫正方法。具有保护视力的意识。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:6", CJ_sourceImage: "page_020.png", CJ_exampleLabel: "例8", CJ_text: "了解人眼成像的原理，了解近视眼和远视眼的成因与矫正方法。具有保护视力的意识。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:032"})
SET n += {identifier: "urn:jy:physics:OB05:Example:032", title: "例9", description: "观察红、绿、蓝三束光照射在白墙上重叠部分的颜色。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_020.png\", \"exampleLabel\": \"例9\", \"text\": \"观察红、绿、蓝三束光照射在白墙上重叠部分的颜色。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:6", CJ_sourceImage: "page_020.png", CJ_exampleLabel: "例9", CJ_text: "观察红、绿、蓝三束光照射在白墙上重叠部分的颜色。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:033"})
SET n += {identifier: "urn:jy:physics:OB05:Example:033", title: "例1", description: "举例说明生活中的静电现象。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_021.png\", \"exampleLabel\": \"例1\", \"text\": \"举例说明生活中的静电现象。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:7", CJ_sourceImage: "page_021.png", CJ_exampleLabel: "例1", CJ_text: "举例说明生活中的静电现象。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:034"})
SET n += {identifier: "urn:jy:physics:OB05:Example:034", title: "例2", description: "查阅资料，了解静电防止和利用的常用方法。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_021.png\", \"exampleLabel\": \"例2\", \"text\": \"查阅资料，了解静电防止和利用的常用方法。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:7", CJ_sourceImage: "page_021.png", CJ_exampleLabel: "例2", CJ_text: "查阅资料，了解静电防止和利用的常用方法。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:035"})
SET n += {identifier: "urn:jy:physics:OB05:Example:035", title: "例3", description: "查阅资料，了解我国古代指南针的发明对人类社会发展的贡献。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_021.png\", \"exampleLabel\": \"例3\", \"text\": \"查阅资料，了解我国古代指南针的发明对人类社会发展的贡献。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:7", CJ_sourceImage: "page_021.png", CJ_exampleLabel: "例3", CJ_text: "查阅资料，了解我国古代指南针的发明对人类社会发展的贡献。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:036"})
SET n += {identifier: "urn:jy:physics:OB05:Example:036", title: "例4", description: "了解动圈式扬声器的结构和原理。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_021.png\", \"exampleLabel\": \"例4\", \"text\": \"了解动圈式扬声器的结构和原理。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:7", CJ_sourceImage: "page_021.png", CJ_exampleLabel: "例4", CJ_text: "了解动圈式扬声器的结构和原理。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:037"})
SET n += {identifier: "urn:jy:physics:OB05:Example:037", title: "例5", description: "了解直流电动机的工作原理。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_021.png\", \"exampleLabel\": \"例5\", \"text\": \"了解直流电动机的工作原理。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:7", CJ_sourceImage: "page_021.png", CJ_exampleLabel: "例5", CJ_text: "了解直流电动机的工作原理。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:038"})
SET n += {identifier: "urn:jy:physics:OB05:Example:038", title: "例6", description: "了解发电机的工作原理。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_021.png\", \"exampleLabel\": \"例6\", \"text\": \"了解发电机的工作原理。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:7", CJ_sourceImage: "page_021.png", CJ_exampleLabel: "例6", CJ_text: "了解发电机的工作原理。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:039"})
SET n += {identifier: "urn:jy:physics:OB05:Example:039", title: "例7", description: "举例说明电磁波的存在。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_021.png\", \"exampleLabel\": \"例7\", \"text\": \"举例说明电磁波的存在。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:7", CJ_sourceImage: "page_021.png", CJ_exampleLabel: "例7", CJ_text: "举例说明电磁波的存在。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:040"})
SET n += {identifier: "urn:jy:physics:OB05:Example:040", title: "例8", description: "了解广播电台节目的发射频率和波长。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_021.png\", \"exampleLabel\": \"例8\", \"text\": \"了解广播电台节目的发射频率和波长。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:7", CJ_sourceImage: "page_021.png", CJ_exampleLabel: "例8", CJ_text: "了解广播电台节目的发射频率和波长。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:041"})
SET n += {identifier: "urn:jy:physics:OB05:Example:041", title: "例9", description: "知道移动通信和卫星通信等都应用了电磁波。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_021.png\", \"exampleLabel\": \"例9\", \"text\": \"知道移动通信和卫星通信等都应用了电磁波。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:7", CJ_sourceImage: "page_021.png", CJ_exampleLabel: "例9", CJ_text: "知道移动通信和卫星通信等都应用了电磁波。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:042"})
SET n += {identifier: "urn:jy:physics:OB05:Example:042", title: "例1", description: "列举几种与生活密切相关的能量。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_025.png\", \"exampleLabel\": \"例1\", \"text\": \"列举几种与生活密切相关的能量。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:8", CJ_sourceImage: "page_025.png", CJ_exampleLabel: "例1", CJ_text: "列举几种与生活密切相关的能量。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:043"})
SET n += {identifier: "urn:jy:physics:OB05:Example:043", title: "例2", description: "列举生活中能量转移和转化的实例。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_025.png\", \"exampleLabel\": \"例2\", \"text\": \"列举生活中能量转移和转化的实例。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:8", CJ_sourceImage: "page_025.png", CJ_exampleLabel: "例2", CJ_text: "列举生活中能量转移和转化的实例。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:044"})
SET n += {identifier: "urn:jy:physics:OB05:Example:044", title: "例1", description: "定性说明荡秋千过程中动能和势能的相互转化。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_025.png\", \"exampleLabel\": \"例1\", \"text\": \"定性说明荡秋千过程中动能和势能的相互转化。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:9", CJ_sourceImage: "page_025.png", CJ_exampleLabel: "例1", CJ_text: "定性说明荡秋千过程中动能和势能的相互转化。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:045"})
SET n += {identifier: "urn:jy:physics:OB05:Example:045", title: "例2", description: "分析《天工开物》中汲水装置工作时的能量的相互转化。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_026.png\", \"exampleLabel\": \"例2\", \"text\": \"分析《天工开物》中汲水装置工作时的能量的相互转化。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:9", CJ_sourceImage: "page_026.png", CJ_exampleLabel: "例2", CJ_text: "分析《天工开物》中汲水装置工作时的能量的相互转化。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:046"})
SET n += {identifier: "urn:jy:physics:OB05:Example:046", title: "例3", description: "测量某种简单机械的机械效率。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_026.png\", \"exampleLabel\": \"例3\", \"text\": \"测量某种简单机械的机械效率。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:9", CJ_sourceImage: "page_026.png", CJ_exampleLabel: "例3", CJ_text: "测量某种简单机械的机械效率。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:047"})
SET n += {identifier: "urn:jy:physics:OB05:Example:047", title: "例1", description: "能运用比热容说明为什么沙漠中的昼夜温差比海边的大。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_026.png\", \"exampleLabel\": \"例1\", \"text\": \"能运用比热容说明为什么沙漠中的昼夜温差比海边的大。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:10", CJ_sourceImage: "page_026.png", CJ_exampleLabel: "例1", CJ_text: "能运用比热容说明为什么沙漠中的昼夜温差比海边的大。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:048"})
SET n += {identifier: "urn:jy:physics:OB05:Example:048", title: "例2", description: "了解热机对社会发展所起的作用和对环境的影响。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_026.png\", \"exampleLabel\": \"例2\", \"text\": \"了解热机对社会发展所起的作用和对环境的影响。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:10", CJ_sourceImage: "page_026.png", CJ_exampleLabel: "例2", CJ_text: "了解热机对社会发展所起的作用和对环境的影响。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:049"})
SET n += {identifier: "urn:jy:physics:OB05:Example:049", title: "例1", description: "定性说明发电机、电热水壶、电风扇工作过程中能量转化的情况。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_027.png\", \"exampleLabel\": \"例1\", \"text\": \"定性说明发电机、电热水壶、电风扇工作过程中能量转化的情况。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:11", CJ_sourceImage: "page_027.png", CJ_exampleLabel: "例1", CJ_text: "定性说明发电机、电热水壶、电风扇工作过程中能量转化的情况。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:050"})
SET n += {identifier: "urn:jy:physics:OB05:Example:050", title: "例2", description: "调查常见用电器的铭牌，比较它们的电功率。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_027.png\", \"exampleLabel\": \"例2\", \"text\": \"调查常见用电器的铭牌，比较它们的电功率。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:11", CJ_sourceImage: "page_027.png", CJ_exampleLabel: "例2", CJ_text: "调查常见用电器的铭牌，比较它们的电功率。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:051"})
SET n += {identifier: "urn:jy:physics:OB05:Example:051", title: "例3", description: "了解我国家庭用电的电压和频率，在家庭用电中有保护自己和他人的安全意识。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_027.png\", \"exampleLabel\": \"例3\", \"text\": \"了解我国家庭用电的电压和频率，在家庭用电中有保护自己和他人的安全意识。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:11", CJ_sourceImage: "page_027.png", CJ_exampleLabel: "例3", CJ_text: "了解我国家庭用电的电压和频率，在家庭用电中有保护自己和他人的安全意识。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:052"})
SET n += {identifier: "urn:jy:physics:OB05:Example:052", title: "例1", description: "了解处理核废料的常用方法。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_028.png\", \"exampleLabel\": \"例1\", \"text\": \"了解处理核废料的常用方法。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:13", CJ_sourceImage: "page_028.png", CJ_exampleLabel: "例1", CJ_text: "了解处理核废料的常用方法。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:053"})
SET n += {identifier: "urn:jy:physics:OB05:Example:053", title: "例2", description: "了解太阳能、风能、氢能等能源的开发对可持续发展的意义。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_028.png\", \"exampleLabel\": \"例2\", \"text\": \"了解太阳能、风能、氢能等能源的开发对可持续发展的意义。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:13", CJ_sourceImage: "page_028.png", CJ_exampleLabel: "例2", CJ_text: "了解太阳能、风能、氢能等能源的开发对可持续发展的意义。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:054"})
SET n += {identifier: "urn:jy:physics:OB05:Example:054", title: "例1", description: "用托盘天平测量小木块和杯中水的质量。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_031.png\", \"exampleLabel\": \"例1\", \"text\": \"用托盘天平测量小木块和杯中水的质量。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:14", CJ_sourceImage: "page_031.png", CJ_exampleLabel: "例1", CJ_text: "用托盘天平测量小木块和杯中水的质量。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:055"})
SET n += {identifier: "urn:jy:physics:OB05:Example:055", title: "例2", description: "用天平、量筒等测量小石块和盐水的密度。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_031.png\", \"exampleLabel\": \"例2\", \"text\": \"用天平、量筒等测量小石块和盐水的密度。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:14", CJ_sourceImage: "page_031.png", CJ_exampleLabel: "例2", CJ_text: "用天平、量筒等测量小石块和盐水的密度。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:056"})
SET n += {identifier: "urn:jy:physics:OB05:Example:056", title: "例3", description: "用实验室温度计测量水的温度，用体温计测量自己的体温。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_031.png\", \"exampleLabel\": \"例3\", \"text\": \"用实验室温度计测量水的温度，用体温计测量自己的体温。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:14", CJ_sourceImage: "page_031.png", CJ_exampleLabel: "例3", CJ_text: "用实验室温度计测量水的温度，用体温计测量自己的体温。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:057"})
SET n += {identifier: "urn:jy:physics:OB05:Example:057", title: "例4", description: "用刻度尺测量物理教科书的长和宽，利用具有秒表功能的设备测量自己脉搏跳动30次所用的时间。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_031.png\", \"exampleLabel\": \"例4\", \"text\": \"用刻度尺测量物理教科书的长和宽，利用具有秒表功能的设备测量自己脉搏跳动30次所用的时间。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:14", CJ_sourceImage: "page_031.png", CJ_exampleLabel: "例4", CJ_text: "用刻度尺测量物理教科书的长和宽，利用具有秒表功能的设备测量自己脉搏跳动30次所用的时间。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:058"})
SET n += {identifier: "urn:jy:physics:OB05:Example:058", title: "例5", description: "用秒表和刻度尺，测量小球通过某段距离的速度。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_032.png\", \"exampleLabel\": \"例5\", \"text\": \"用秒表和刻度尺，测量小球通过某段距离的速度。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:14", CJ_sourceImage: "page_032.png", CJ_exampleLabel: "例5", CJ_text: "用秒表和刻度尺，测量小球通过某段距离的速度。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:059"})
SET n += {identifier: "urn:jy:physics:OB05:Example:059", title: "例6", description: "用手拉动弹簧测力计体验1 N、2 N、4 N力的大小，测量一本物理教科书所受的重力。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_032.png\", \"exampleLabel\": \"例6\", \"text\": \"用手拉动弹簧测力计体验1 N、2 N、4 N力的大小，测量一本物理教科书所受的重力。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:14", CJ_sourceImage: "page_032.png", CJ_exampleLabel: "例6", CJ_text: "用手拉动弹簧测力计体验1 N、2 N、4 N力的大小，测量一本物理教科书所受的重力。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:060"})
SET n += {identifier: "urn:jy:physics:OB05:Example:060", title: "例7", description: "用实验室指针式电流表，测量直流电路中的电流。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_032.png\", \"exampleLabel\": \"例7\", \"text\": \"用实验室指针式电流表，测量直流电路中的电流。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:14", CJ_sourceImage: "page_032.png", CJ_exampleLabel: "例7", CJ_text: "用实验室指针式电流表，测量直流电路中的电流。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:061"})
SET n += {identifier: "urn:jy:physics:OB05:Example:061", title: "例8", description: "用实验室指针式电压表，测量直流电路中的电压。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_032.png\", \"exampleLabel\": \"例8\", \"text\": \"用实验室指针式电压表，测量直流电路中的电压。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:14", CJ_sourceImage: "page_032.png", CJ_exampleLabel: "例8", CJ_text: "用实验室指针式电压表，测量直流电路中的电压。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:062"})
SET n += {identifier: "urn:jy:physics:OB05:Example:062", title: "例9", description: "用电流表、电压表、滑动变阻器等，测量小灯泡正常发光时的电阻。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_032.png\", \"exampleLabel\": \"例9\", \"text\": \"用电流表、电压表、滑动变阻器等，测量小灯泡正常发光时的电阻。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:14", CJ_sourceImage: "page_032.png", CJ_exampleLabel: "例9", CJ_text: "用电流表、电压表、滑动变阻器等，测量小灯泡正常发光时的电阻。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:063"})
SET n += {identifier: "urn:jy:physics:OB05:Example:063", title: "例1", description: "用酒精灯、烧杯、温度计等，探究水在沸腾前后温度变化的特点。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_032.png\", \"exampleLabel\": \"例1\", \"text\": \"用酒精灯、烧杯、温度计等，探究水在沸腾前后温度变化的特点。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:15", CJ_sourceImage: "page_032.png", CJ_exampleLabel: "例1", CJ_text: "用酒精灯、烧杯、温度计等，探究水在沸腾前后温度变化的特点。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:064"})
SET n += {identifier: "urn:jy:physics:OB05:Example:064", title: "例2", description: "用弹簧测力计、平板、细绳、长方体物块、棉布、毛巾等，探究滑动摩擦力大小与哪些因素有关。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_032.png\", \"exampleLabel\": \"例2\", \"text\": \"用弹簧测力计、平板、细绳、长方体物块、棉布、毛巾等，探究滑动摩擦力大小与哪些因素有关。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:15", CJ_sourceImage: "page_032.png", CJ_exampleLabel: "例2", CJ_text: "用弹簧测力计、平板、细绳、长方体物块、棉布、毛巾等，探究滑动摩擦力大小与哪些因素有关。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:065"})
SET n += {identifier: "urn:jy:physics:OB05:Example:065", title: "例3", description: "用水、盐水、压强计等，探究液体压强与哪些因素有关。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_032.png\", \"exampleLabel\": \"例3\", \"text\": \"用水、盐水、压强计等，探究液体压强与哪些因素有关。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:15", CJ_sourceImage: "page_032.png", CJ_exampleLabel: "例3", CJ_text: "用水、盐水、压强计等，探究液体压强与哪些因素有关。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:066"})
SET n += {identifier: "urn:jy:physics:OB05:Example:066", title: "例4", description: "用水、盐水、金属块、弹簧测力计等，探究金属块所受浮力与哪些因素有关。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_033.png\", \"exampleLabel\": \"例4\", \"text\": \"用水、盐水、金属块、弹簧测力计等，探究金属块所受浮力与哪些因素有关。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:15", CJ_sourceImage: "page_033.png", CJ_exampleLabel: "例4", CJ_text: "用水、盐水、金属块、弹簧测力计等，探究金属块所受浮力与哪些因素有关。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:067"})
SET n += {identifier: "urn:jy:physics:OB05:Example:067", title: "例5", description: "用杠杆、铁架台、钩码和弹簧测力计，探究杠杆平衡时动力、动力臂与阻力、阻力臂之间的定量关系。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_033.png\", \"exampleLabel\": \"例5\", \"text\": \"用杠杆、铁架台、钩码和弹簧测力计，探究杠杆平衡时动力、动力臂与阻力、阻力臂之间的定量关系。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:15", CJ_sourceImage: "page_033.png", CJ_exampleLabel: "例5", CJ_text: "用杠杆、铁架台、钩码和弹簧测力计，探究杠杆平衡时动力、动力臂与阻力、阻力臂之间的定量关系。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:068"})
SET n += {identifier: "urn:jy:physics:OB05:Example:068", title: "例6", description: "用激光笔、平面镜、光屏及量角器等探究光的反射定律。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_033.png\", \"exampleLabel\": \"例6\", \"text\": \"用激光笔、平面镜、光屏及量角器等探究光的反射定律。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:15", CJ_sourceImage: "page_033.png", CJ_exampleLabel: "例6", CJ_text: "用激光笔、平面镜、光屏及量角器等探究光的反射定律。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:069"})
SET n += {identifier: "urn:jy:physics:OB05:Example:069", title: "例7", description: "用蜡烛（或其他物品）、平板玻璃、刻度尺、白纸等，探究平面镜成像时，像的大小、位置、虚实等有什么特点。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_033.png\", \"exampleLabel\": \"例7\", \"text\": \"用蜡烛（或其他物品）、平板玻璃、刻度尺、白纸等，探究平面镜成像时，像的大小、位置、虚实等有什么特点。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:15", CJ_sourceImage: "page_033.png", CJ_exampleLabel: "例7", CJ_text: "用蜡烛（或其他物品）、平板玻璃、刻度尺、白纸等，探究平面镜成像时，像的大小、位置、虚实等有什么特点。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:070"})
SET n += {identifier: "urn:jy:physics:OB05:Example:070", title: "例8", description: "用蜡烛（或F形光源）、凸透镜、光具座、光屏等，探究凸透镜成像时，像的正倒、大小、位置、虚实等与物距的关系。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_033.png\", \"exampleLabel\": \"例8\", \"text\": \"用蜡烛（或F形光源）、凸透镜、光具座、光屏等，探究凸透镜成像时，像的正倒、大小、位置、虚实等与物距的关系。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:15", CJ_sourceImage: "page_033.png", CJ_exampleLabel: "例8", CJ_text: "用蜡烛（或F形光源）、凸透镜、光具座、光屏等，探究凸透镜成像时，像的正倒、大小、位置、虚实等与物距的关系。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:071"})
SET n += {identifier: "urn:jy:physics:OB05:Example:071", title: "例9", description: "用小磁针、通电螺线管等，探究通电螺线管外部磁场的方向。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_033.png\", \"exampleLabel\": \"例9\", \"text\": \"用小磁针、通电螺线管等，探究通电螺线管外部磁场的方向。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:15", CJ_sourceImage: "page_033.png", CJ_exampleLabel: "例9", CJ_text: "用小磁针、通电螺线管等，探究通电螺线管外部磁场的方向。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:072"})
SET n += {identifier: "urn:jy:physics:OB05:Example:072", title: "例10", description: "用矩形线圈或单根导线、磁体、灵敏电流计等探究产生感应电流的条件。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_033.png\", \"exampleLabel\": \"例10\", \"text\": \"用矩形线圈或单根导线、磁体、灵敏电流计等探究产生感应电流的条件。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:15", CJ_sourceImage: "page_033.png", CJ_exampleLabel: "例10", CJ_text: "用矩形线圈或单根导线、磁体、灵敏电流计等探究产生感应电流的条件。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:073"})
SET n += {identifier: "urn:jy:physics:OB05:Example:073", title: "例11", description: "用电流表和电压表，分别探究串联电路和并联电路中电流、电压的特点。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_033.png\", \"exampleLabel\": \"例11\", \"text\": \"用电流表和电压表，分别探究串联电路和并联电路中电流、电压的特点。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:15", CJ_sourceImage: "page_033.png", CJ_exampleLabel: "例11", CJ_text: "用电流表和电压表，分别探究串联电路和并联电路中电流、电压的特点。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:074"})
SET n += {identifier: "urn:jy:physics:OB05:Example:074", title: "例12", description: "用定值电阻、滑动变阻器、电流表、电压表等，探究电流与电压、电阻的关系。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_033.png\", \"exampleLabel\": \"例12\", \"text\": \"用定值电阻、滑动变阻器、电流表、电压表等，探究电流与电压、电阻的关系。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:15", CJ_sourceImage: "page_033.png", CJ_exampleLabel: "例12", CJ_text: "用定值电阻、滑动变阻器、电流表、电压表等，探究电流与电压、电阻的关系。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:075"})
SET n += {identifier: "urn:jy:physics:OB05:Example:075", title: "例1", description: "调查日常生活用品（如厨房用品）使用中的问题，并提出改进建议，能运用所学的知识论证自己所提建议的合理性。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_037.png\", \"exampleLabel\": \"例1\", \"text\": \"调查日常生活用品（如厨房用品）使用中的问题，并提出改进建议，能运用所学的知识论证自己所提建议的合理性。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:16", CJ_sourceImage: "page_037.png", CJ_exampleLabel: "例1", CJ_text: "调查日常生活用品（如厨房用品）使用中的问题，并提出改进建议，能运用所学的知识论证自己所提建议的合理性。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:076"})
SET n += {identifier: "urn:jy:physics:OB05:Example:076", title: "例2", description: "调查生活中（如用电、乘车、住高楼等）存在的安全隐患，提出安全与健康生活的建议。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_037.png\", \"exampleLabel\": \"例2\", \"text\": \"调查生活中（如用电、乘车、住高楼等）存在的安全隐患，提出安全与健康生活的建议。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:16", CJ_sourceImage: "page_037.png", CJ_exampleLabel: "例2", CJ_text: "调查生活中（如用电、乘车、住高楼等）存在的安全隐患，提出安全与健康生活的建议。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:077"})
SET n += {identifier: "urn:jy:physics:OB05:Example:077", title: "例3", description: "了解当地空气质量状况，并调查相关原因。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_037.png\", \"exampleLabel\": \"例3\", \"text\": \"了解当地空气质量状况，并调查相关原因。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:16", CJ_sourceImage: "page_037.png", CJ_exampleLabel: "例3", CJ_text: "了解当地空气质量状况，并调查相关原因。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:078"})
SET n += {identifier: "urn:jy:physics:OB05:Example:078", title: "例4", description: "拟订《个人低碳生活行为指南》，对个人节能环保行为提出具体要求。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_037.png\", \"exampleLabel\": \"例4\", \"text\": \"拟订《个人低碳生活行为指南》，对个人节能环保行为提出具体要求。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:16", CJ_sourceImage: "page_037.png", CJ_exampleLabel: "例4", CJ_text: "拟订《个人低碳生活行为指南》，对个人节能环保行为提出具体要求。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:079"})
SET n += {identifier: "urn:jy:physics:OB05:Example:079", title: "例1", description: "了解我国古代“龙骨水车”的工作原理，尝试设计相关装置。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_038.png\", \"exampleLabel\": \"例1\", \"text\": \"了解我国古代“龙骨水车”的工作原理，尝试设计相关装置。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:17", CJ_sourceImage: "page_038.png", CJ_exampleLabel: "例1", CJ_text: "了解我国古代“龙骨水车”的工作原理，尝试设计相关装置。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:080"})
SET n += {identifier: "urn:jy:physics:OB05:Example:080", title: "例2", description: "调查物理学在桥梁建筑技术方面的应用案例，体会物理学对桥梁发展的促进作用。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_038.png\", \"exampleLabel\": \"例2\", \"text\": \"调查物理学在桥梁建筑技术方面的应用案例，体会物理学对桥梁发展的促进作用。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:17", CJ_sourceImage: "page_038.png", CJ_exampleLabel: "例2", CJ_text: "调查物理学在桥梁建筑技术方面的应用案例，体会物理学对桥梁发展的促进作用。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:081"})
SET n += {identifier: "urn:jy:physics:OB05:Example:081", title: "例3", description: "了解物理学在信息记录或传播中的应用。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_038.png\", \"exampleLabel\": \"例3\", \"text\": \"了解物理学在信息记录或传播中的应用。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:17", CJ_sourceImage: "page_038.png", CJ_exampleLabel: "例3", CJ_text: "了解物理学在信息记录或传播中的应用。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:082"})
SET n += {identifier: "urn:jy:physics:OB05:Example:082", title: "例1", description: "查阅资料并举办报告会，讨论能源利用对环境的影响，结合对当地能源利用现状的调查，提出改进建议。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_038.png\", \"exampleLabel\": \"例1\", \"text\": \"查阅资料并举办报告会，讨论能源利用对环境的影响，结合对当地能源利用现状的调查，提出改进建议。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:18", CJ_sourceImage: "page_038.png", CJ_exampleLabel: "例1", CJ_text: "查阅资料并举办报告会，讨论能源利用对环境的影响，结合对当地能源利用现状的调查，提出改进建议。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:083"})
SET n += {identifier: "urn:jy:physics:OB05:Example:083", title: "例2", description: "了解半导体、超导体的主要特点，展望超导体应用对社会发展的影响。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_039.png\", \"exampleLabel\": \"例2\", \"text\": \"了解半导体、超导体的主要特点，展望超导体应用对社会发展的影响。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:18", CJ_sourceImage: "page_039.png", CJ_exampleLabel: "例2", CJ_text: "了解半导体、超导体的主要特点，展望超导体应用对社会发展的影响。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:084"})
SET n += {identifier: "urn:jy:physics:OB05:Example:084", title: "例3", description: "了解纳米材料等新型材料的主要特点，以及这些新材料技术的应用对社会发展的影响。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_039.png\", \"exampleLabel\": \"例3\", \"text\": \"了解纳米材料等新型材料的主要特点，以及这些新材料技术的应用对社会发展的影响。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:18", CJ_sourceImage: "page_039.png", CJ_exampleLabel: "例3", CJ_text: "了解纳米材料等新型材料的主要特点，以及这些新材料技术的应用对社会发展的影响。"};

MERGE (n:ExampleProblem {identifier: "urn:jy:physics:OB05:Example:085"})
SET n += {identifier: "urn:jy:physics:OB05:Example:085", title: "例4", description: "了解我国“两弹一星”的成就，体会科技作为国家发展战略支撑的重大意义，树立科技自立自强的信念；知道赵忠尧、钱学森、邓稼先等科学家的杰出贡献和爱国情怀，发扬勇攀科技高峰的精神。", subject: "SB0401", type: "ExampleProblem", applicableLevel: "OB05", contentJson: "{\"sourceImage\": \"page_039.png\", \"exampleLabel\": \"例4\", \"text\": \"了解我国“两弹一星”的成就，体会科技作为国家发展战略支撑的重大意义，树立科技自立自强的信念；知道赵忠尧、钱学森、邓稼先等科学家的杰出贡献和爱国情怀，发扬勇攀科技高峰的精神。\"}", ThemeL2: "urn:jy:physics:OB05:ThemeL2:18", CJ_sourceImage: "page_039.png", CJ_exampleLabel: "例4", CJ_text: "了解我国“两弹一星”的成就，体会科技作为国家发展战略支撑的重大意义，树立科技自立自强的信念；知道赵忠尧、钱学森、邓稼先等科学家的杰出贡献和爱国情怀，发扬勇攀科技高峰的精神。"};

// =====================================================
// 导入关系
// =====================================================

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.1.1"})
MERGE (source)-[r:themeL1IncludesExperiment]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / includes";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.1.1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MERGE (source)-[r:experimentBelongsToThemeL1]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / belongsTo";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.1.2"})
MERGE (source)-[r:themeL1IncludesExperiment]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / includes";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.1.2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MERGE (source)-[r:experimentBelongsToThemeL1]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / belongsTo";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.1.3"})
MERGE (source)-[r:themeL1IncludesExperiment]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / includes";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.1.3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MERGE (source)-[r:experimentBelongsToThemeL1]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / belongsTo";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.1.4"})
MERGE (source)-[r:themeL1IncludesExperiment]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / includes";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.1.4"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MERGE (source)-[r:experimentBelongsToThemeL1]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / belongsTo";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.1.5"})
MERGE (source)-[r:themeL1IncludesExperiment]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / includes";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.1.5"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MERGE (source)-[r:experimentBelongsToThemeL1]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / belongsTo";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.1.6"})
MERGE (source)-[r:themeL1IncludesExperiment]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / includes";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.1.6"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MERGE (source)-[r:experimentBelongsToThemeL1]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / belongsTo";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.1.7"})
MERGE (source)-[r:themeL1IncludesExperiment]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / includes";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.1.7"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MERGE (source)-[r:experimentBelongsToThemeL1]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / belongsTo";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.1.8"})
MERGE (source)-[r:themeL1IncludesExperiment]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / includes";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.1.8"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MERGE (source)-[r:experimentBelongsToThemeL1]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / belongsTo";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.1.9"})
MERGE (source)-[r:themeL1IncludesExperiment]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / includes";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.1.9"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MERGE (source)-[r:experimentBelongsToThemeL1]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / belongsTo";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.1"})
MERGE (source)-[r:themeL1IncludesExperiment]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / includes";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MERGE (source)-[r:experimentBelongsToThemeL1]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / belongsTo";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.2"})
MERGE (source)-[r:themeL1IncludesExperiment]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / includes";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MERGE (source)-[r:experimentBelongsToThemeL1]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / belongsTo";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.3"})
MERGE (source)-[r:themeL1IncludesExperiment]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / includes";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MERGE (source)-[r:experimentBelongsToThemeL1]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / belongsTo";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.4"})
MERGE (source)-[r:themeL1IncludesExperiment]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / includes";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.4"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MERGE (source)-[r:experimentBelongsToThemeL1]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / belongsTo";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.4"})
MERGE (source)-[r:themeL1IncludesExperiment]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / includes";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.4"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MERGE (source)-[r:experimentBelongsToThemeL1]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / belongsTo";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.5"})
MERGE (source)-[r:themeL1IncludesExperiment]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / includes";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.5"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MERGE (source)-[r:experimentBelongsToThemeL1]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / belongsTo";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.6"})
MERGE (source)-[r:themeL1IncludesExperiment]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / includes";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.6"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MERGE (source)-[r:experimentBelongsToThemeL1]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / belongsTo";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.7"})
MERGE (source)-[r:themeL1IncludesExperiment]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / includes";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.7"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MERGE (source)-[r:experimentBelongsToThemeL1]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / belongsTo";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.8"})
MERGE (source)-[r:themeL1IncludesExperiment]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / includes";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.8"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MERGE (source)-[r:experimentBelongsToThemeL1]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / belongsTo";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.9"})
MERGE (source)-[r:themeL1IncludesExperiment]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / includes";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.9"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MERGE (source)-[r:experimentBelongsToThemeL1]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / belongsTo";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.10"})
MERGE (source)-[r:themeL1IncludesExperiment]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / includes";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.10"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MERGE (source)-[r:experimentBelongsToThemeL1]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / belongsTo";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.11"})
MERGE (source)-[r:themeL1IncludesExperiment]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / includes";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.11"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MERGE (source)-[r:experimentBelongsToThemeL1]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / belongsTo";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.12"})
MERGE (source)-[r:themeL1IncludesExperiment]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / includes";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.12"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MERGE (source)-[r:experimentBelongsToThemeL1]->(target)
SET r.label = "一级主题“实验探究”包含测量类和探究类学生必做实验。 / belongsTo";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_2:01"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:58"})
MERGE (source)-[r:activitySuggestionRequiresSection]->(target)
SET r.label = "活动建议需要节知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:58"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_2:01"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_2:02"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:50"})
MERGE (source)-[r:activitySuggestionRequiresSection]->(target)
SET r.label = "活动建议需要节知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:50"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_2:02"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_2:02"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:11"})
MERGE (source)-[r:activitySuggestionRequiresSection]->(target)
SET r.label = "活动建议需要节知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:11"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_2:02"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_2:03"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:85"})
MERGE (source)-[r:activitySuggestionRequiresSection]->(target)
SET r.label = "活动建议需要节知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:85"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_2:03"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_1:01"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:2"})
MERGE (source)-[r:activitySuggestionRequiresSection]->(target)
SET r.label = "活动建议需要节知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_1:01"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_1:01"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:50"})
MERGE (source)-[r:activitySuggestionRequiresSection]->(target)
SET r.label = "活动建议需要节知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:50"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_1:01"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_1:03"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:2"})
MERGE (source)-[r:activitySuggestionRequiresSection]->(target)
SET r.label = "活动建议需要节知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_1:03"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_2:03"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:21"})
MERGE (source)-[r:activitySuggestionRequiresSection]->(target)
SET r.label = "活动建议需要节知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:21"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_2:03"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_2:03"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:25"})
MERGE (source)-[r:activitySuggestionRequiresSection]->(target)
SET r.label = "活动建议需要节知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:25"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_2:03"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_2:04"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:22"})
MERGE (source)-[r:activitySuggestionRequiresSection]->(target)
SET r.label = "活动建议需要节知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:22"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_2:04"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_3:02"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:6"})
MERGE (source)-[r:activitySuggestionRequiresSection]->(target)
SET r.label = "活动建议需要节知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:6"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_3:02"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_3:02"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:96"})
MERGE (source)-[r:activitySuggestionRequiresSection]->(target)
SET r.label = "活动建议需要节知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:96"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_3:02"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_3:03"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:49"})
MERGE (source)-[r:activitySuggestionRequiresSection]->(target)
SET r.label = "活动建议需要节知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:49"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_3:03"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_4:02"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:83"})
MERGE (source)-[r:activitySuggestionRequiresSection]->(target)
SET r.label = "活动建议需要节知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:83"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_4:02"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_4:02"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:85"})
MERGE (source)-[r:activitySuggestionRequiresSection]->(target)
SET r.label = "活动建议需要节知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:85"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_4:02"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_1:01"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MERGE (source)-[r:activitySuggestionRequiresSection]->(target)
SET r.label = "活动建议需要节知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_1:01"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_1:02"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MERGE (source)-[r:activitySuggestionRequiresSection]->(target)
SET r.label = "活动建议需要节知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_1:02"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_3:01"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:42"})
MERGE (source)-[r:activitySuggestionRequiresSection]->(target)
SET r.label = "活动建议需要节知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:42"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_3:01"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_3:01"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:39"})
MERGE (source)-[r:activitySuggestionRequiresSection]->(target)
SET r.label = "活动建议需要节知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:39"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_3:01"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_4:02"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:18"})
MERGE (source)-[r:activitySuggestionRequiresSection]->(target)
SET r.label = "活动建议需要节知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:18"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_4:02"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_1:01"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:30"})
MERGE (source)-[r:activitySuggestionRequiresSection]->(target)
SET r.label = "活动建议需要节知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:30"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_1:01"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_1:02"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:92"})
MERGE (source)-[r:activitySuggestionRequiresSection]->(target)
SET r.label = "活动建议需要节知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:92"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_1:02"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_1:02"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:93"})
MERGE (source)-[r:activitySuggestionRequiresSection]->(target)
SET r.label = "活动建议需要节知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:93"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_1:02"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_3:03"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:85"})
MERGE (source)-[r:activitySuggestionRequiresSection]->(target)
SET r.label = "活动建议需要节知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:85"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_3:03"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_3:03"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:82"})
MERGE (source)-[r:activitySuggestionRequiresSection]->(target)
SET r.label = "活动建议需要节知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:82"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_3:03"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:OB05:AcademicQuality:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:CoreLiteracy:1"})
MERGE (source)-[r:academicQualityAlignedToCoreLiteracy]->(target)
SET r.label = "反映核心素养。";

MATCH (source {identifier: "urn:jy:physics:OB05:CoreLiteracy:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:AcademicQuality:1"})
MERGE (source)-[r:coreLiteracyManifestedByAcademicQuality]->(target)
SET r.label = "要求学业质量。";

MATCH (source {identifier: "urn:jy:physics:OB05:AcademicQuality:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:CoreLiteracy:2"})
MERGE (source)-[r:academicQualityAlignedToCoreLiteracy]->(target)
SET r.label = "反映核心素养。";

MATCH (source {identifier: "urn:jy:physics:OB05:CoreLiteracy:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:AcademicQuality:2"})
MERGE (source)-[r:coreLiteracyManifestedByAcademicQuality]->(target)
SET r.label = "要求学业质量。";

MATCH (source {identifier: "urn:jy:physics:OB05:AcademicQuality:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:CoreLiteracy:3"})
MERGE (source)-[r:academicQualityAlignedToCoreLiteracy]->(target)
SET r.label = "反映核心素养。";

MATCH (source {identifier: "urn:jy:physics:OB05:CoreLiteracy:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:AcademicQuality:3"})
MERGE (source)-[r:coreLiteracyManifestedByAcademicQuality]->(target)
SET r.label = "要求学业质量。";

MATCH (source {identifier: "urn:jy:physics:OB05:AcademicQuality:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:CoreLiteracy:4"})
MERGE (source)-[r:academicQualityAlignedToCoreLiteracy]->(target)
SET r.label = "反映核心素养。";

MATCH (source {identifier: "urn:jy:physics:OB05:CoreLiteracy:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:AcademicQuality:4"})
MERGE (source)-[r:coreLiteracyManifestedByAcademicQuality]->(target)
SET r.label = "要求学业质量。";

MATCH (source {identifier: "urn:jy:physics:OB05:CoreLiteracy:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:1"})
MERGE (source)-[r:coreLiteracyCultivatedByThemeL1]->(target)
SET r.label = "核心素养由一级主题培养 / cultivatedByThemeL1";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:CoreLiteracy:1"})
MERGE (source)-[r:themeL1CultivatesCoreLiteracy]->(target)
SET r.label = "一级主题培养核心素养 / cultivatesCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:OB05:CoreLiteracy:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:2"})
MERGE (source)-[r:coreLiteracyCultivatedByThemeL1]->(target)
SET r.label = "核心素养由一级主题培养 / cultivatedByThemeL1";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:CoreLiteracy:1"})
MERGE (source)-[r:themeL1CultivatesCoreLiteracy]->(target)
SET r.label = "一级主题培养核心素养 / cultivatesCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:OB05:CoreLiteracy:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:3"})
MERGE (source)-[r:coreLiteracyCultivatedByThemeL1]->(target)
SET r.label = "核心素养由一级主题培养 / cultivatedByThemeL1";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:CoreLiteracy:1"})
MERGE (source)-[r:themeL1CultivatesCoreLiteracy]->(target)
SET r.label = "一级主题培养核心素养 / cultivatesCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:OB05:CoreLiteracy:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:1"})
MERGE (source)-[r:coreLiteracyCultivatedByThemeL1]->(target)
SET r.label = "核心素养由一级主题培养 / cultivatedByThemeL1";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:CoreLiteracy:2"})
MERGE (source)-[r:themeL1CultivatesCoreLiteracy]->(target)
SET r.label = "一级主题培养核心素养 / cultivatesCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:OB05:CoreLiteracy:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:2"})
MERGE (source)-[r:coreLiteracyCultivatedByThemeL1]->(target)
SET r.label = "核心素养由一级主题培养 / cultivatedByThemeL1";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:CoreLiteracy:2"})
MERGE (source)-[r:themeL1CultivatesCoreLiteracy]->(target)
SET r.label = "一级主题培养核心素养 / cultivatesCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:OB05:CoreLiteracy:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:3"})
MERGE (source)-[r:coreLiteracyCultivatedByThemeL1]->(target)
SET r.label = "核心素养由一级主题培养 / cultivatedByThemeL1";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:CoreLiteracy:2"})
MERGE (source)-[r:themeL1CultivatesCoreLiteracy]->(target)
SET r.label = "一级主题培养核心素养 / cultivatesCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:OB05:CoreLiteracy:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MERGE (source)-[r:coreLiteracyCultivatedByThemeL1]->(target)
SET r.label = "核心素养由一级主题培养 / cultivatedByThemeL1";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:CoreLiteracy:2"})
MERGE (source)-[r:themeL1CultivatesCoreLiteracy]->(target)
SET r.label = "一级主题培养核心素养 / cultivatesCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:OB05:CoreLiteracy:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:5"})
MERGE (source)-[r:coreLiteracyCultivatedByThemeL1]->(target)
SET r.label = "核心素养由一级主题培养 / cultivatedByThemeL1";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:5"})
MATCH (target {identifier: "urn:jy:physics:OB05:CoreLiteracy:2"})
MERGE (source)-[r:themeL1CultivatesCoreLiteracy]->(target)
SET r.label = "一级主题培养核心素养 / cultivatesCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:OB05:CoreLiteracy:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:1"})
MERGE (source)-[r:coreLiteracyCultivatedByThemeL1]->(target)
SET r.label = "核心素养由一级主题培养 / cultivatedByThemeL1";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:CoreLiteracy:3"})
MERGE (source)-[r:themeL1CultivatesCoreLiteracy]->(target)
SET r.label = "一级主题培养核心素养 / cultivatesCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:OB05:CoreLiteracy:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:2"})
MERGE (source)-[r:coreLiteracyCultivatedByThemeL1]->(target)
SET r.label = "核心素养由一级主题培养 / cultivatedByThemeL1";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:CoreLiteracy:3"})
MERGE (source)-[r:themeL1CultivatesCoreLiteracy]->(target)
SET r.label = "一级主题培养核心素养 / cultivatesCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:OB05:CoreLiteracy:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:3"})
MERGE (source)-[r:coreLiteracyCultivatedByThemeL1]->(target)
SET r.label = "核心素养由一级主题培养 / cultivatedByThemeL1";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:CoreLiteracy:3"})
MERGE (source)-[r:themeL1CultivatesCoreLiteracy]->(target)
SET r.label = "一级主题培养核心素养 / cultivatesCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:OB05:CoreLiteracy:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MERGE (source)-[r:coreLiteracyCultivatedByThemeL1]->(target)
SET r.label = "核心素养由一级主题培养 / cultivatedByThemeL1";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:CoreLiteracy:3"})
MERGE (source)-[r:themeL1CultivatesCoreLiteracy]->(target)
SET r.label = "一级主题培养核心素养 / cultivatesCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:OB05:CoreLiteracy:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:5"})
MERGE (source)-[r:coreLiteracyCultivatedByThemeL1]->(target)
SET r.label = "核心素养由一级主题培养 / cultivatedByThemeL1";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:5"})
MATCH (target {identifier: "urn:jy:physics:OB05:CoreLiteracy:3"})
MERGE (source)-[r:themeL1CultivatesCoreLiteracy]->(target)
SET r.label = "一级主题培养核心素养 / cultivatesCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:OB05:CoreLiteracy:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:1"})
MERGE (source)-[r:coreLiteracyCultivatedByThemeL1]->(target)
SET r.label = "核心素养由一级主题培养 / cultivatedByThemeL1";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:CoreLiteracy:4"})
MERGE (source)-[r:themeL1CultivatesCoreLiteracy]->(target)
SET r.label = "一级主题培养核心素养 / cultivatesCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:OB05:CoreLiteracy:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:2"})
MERGE (source)-[r:coreLiteracyCultivatedByThemeL1]->(target)
SET r.label = "核心素养由一级主题培养 / cultivatedByThemeL1";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:CoreLiteracy:4"})
MERGE (source)-[r:themeL1CultivatesCoreLiteracy]->(target)
SET r.label = "一级主题培养核心素养 / cultivatesCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:OB05:CoreLiteracy:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:3"})
MERGE (source)-[r:coreLiteracyCultivatedByThemeL1]->(target)
SET r.label = "核心素养由一级主题培养 / cultivatedByThemeL1";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:CoreLiteracy:4"})
MERGE (source)-[r:themeL1CultivatesCoreLiteracy]->(target)
SET r.label = "一级主题培养核心素养 / cultivatesCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:OB05:CoreLiteracy:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MERGE (source)-[r:coreLiteracyCultivatedByThemeL1]->(target)
SET r.label = "核心素养由一级主题培养 / cultivatedByThemeL1";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:CoreLiteracy:4"})
MERGE (source)-[r:themeL1CultivatesCoreLiteracy]->(target)
SET r.label = "一级主题培养核心素养 / cultivatesCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:OB05:CoreLiteracy:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:5"})
MERGE (source)-[r:coreLiteracyCultivatedByThemeL1]->(target)
SET r.label = "核心素养由一级主题培养 / cultivatedByThemeL1";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:5"})
MATCH (target {identifier: "urn:jy:physics:OB05:CoreLiteracy:4"})
MERGE (source)-[r:themeL1CultivatesCoreLiteracy]->(target)
SET r.label = "一级主题培养核心素养 / cultivatesCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:2"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:1"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:2"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:2"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:2"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:3"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:2"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:4"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:2"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:5"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:2"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:6"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:2"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:7"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:2"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:8"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:3"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:9"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:10"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:3"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:10"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:3"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:11"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:3"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:12"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:13"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:4"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:13"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:4"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:14"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:4"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:15"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:16"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:4"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:16"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:4"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:17"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:18"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:4"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:18"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:19"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:4"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:19"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:20"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:5"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:20"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:5"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:21"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:5"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:22"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:23"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:5"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:23"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:5"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:24"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:5"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:25"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:5"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:26"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:6"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:6"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:28"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:6"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:29"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:6"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:30"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:7"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:31"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:32"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:7"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:32"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:33"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:7"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:33"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:34"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:7"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:34"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:35"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:8"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:35"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:36"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:8"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:36"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:8"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:8"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:39"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:8"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:39"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:8"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:8"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:42"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:8"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:42"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:43"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:8"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:43"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:44"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:44"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:45"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:45"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:46"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:46"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:47"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:47"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:48"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:48"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:49"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:49"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:50"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:50"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:51"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:51"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:52"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:52"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:53"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:53"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:54"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:18"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:18"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:54"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:55"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:18"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:18"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:55"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:56"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:11"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:56"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:57"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:11"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:57"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:58"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:11"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:58"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:59"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:11"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:59"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:60"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:11"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:60"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:61"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:11"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:61"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:62"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:11"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:62"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:63"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:11"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:63"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:64"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:12"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:64"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:65"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:12"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:65"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:66"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:12"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:66"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:67"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:12"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:67"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:68"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:12"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:68"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:13"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:13"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:70"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:13"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:13"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:70"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:71"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:13"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:13"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:71"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:72"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:13"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:13"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:72"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:73"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:13"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:13"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:73"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:74"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:14"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:74"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:75"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:14"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:75"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:76"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:14"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:76"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:77"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:14"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:77"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:78"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:14"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:78"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:79"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:14"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:79"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:80"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:14"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:80"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:81"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:14"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:81"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:82"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:15"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:82"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:83"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:15"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:83"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:84"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:15"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:84"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:85"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:15"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:85"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:86"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:15"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:86"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:87"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:16"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:16"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:87"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:88"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:16"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:16"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:88"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:89"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:89"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:90"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:90"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:91"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:91"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:92"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:92"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:93"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:93"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:94"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:94"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:95"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:95"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:96"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:96"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:97"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:97"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:98"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:98"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:99"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:99"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:100"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:18"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:18"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:100"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:101"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:18"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节属于章 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:18"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:101"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:1"})
MERGE (source)-[r:themeL2BelongsToThemeL1]->(target)
SET r.label = "一级主题包含二级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:1"})
MERGE (source)-[r:themeL1IncludesThemeL2]->(target)
SET r.label = "二级主题属于一级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:1"})
MERGE (source)-[r:themeL2BelongsToThemeL1]->(target)
SET r.label = "一级主题包含二级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:2"})
MERGE (source)-[r:themeL1IncludesThemeL2]->(target)
SET r.label = "二级主题属于一级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:1"})
MERGE (source)-[r:themeL2BelongsToThemeL1]->(target)
SET r.label = "一级主题包含二级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:3"})
MERGE (source)-[r:themeL1IncludesThemeL2]->(target)
SET r.label = "二级主题属于一级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:2"})
MERGE (source)-[r:themeL2BelongsToThemeL1]->(target)
SET r.label = "一级主题包含二级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:4"})
MERGE (source)-[r:themeL1IncludesThemeL2]->(target)
SET r.label = "二级主题属于一级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:2"})
MERGE (source)-[r:themeL2BelongsToThemeL1]->(target)
SET r.label = "一级主题包含二级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MERGE (source)-[r:themeL1IncludesThemeL2]->(target)
SET r.label = "二级主题属于一级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:2"})
MERGE (source)-[r:themeL2BelongsToThemeL1]->(target)
SET r.label = "一级主题包含二级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MERGE (source)-[r:themeL1IncludesThemeL2]->(target)
SET r.label = "二级主题属于一级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:2"})
MERGE (source)-[r:themeL2BelongsToThemeL1]->(target)
SET r.label = "一级主题包含二级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MERGE (source)-[r:themeL1IncludesThemeL2]->(target)
SET r.label = "二级主题属于一级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:8"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:3"})
MERGE (source)-[r:themeL2BelongsToThemeL1]->(target)
SET r.label = "一级主题包含二级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:8"})
MERGE (source)-[r:themeL1IncludesThemeL2]->(target)
SET r.label = "二级主题属于一级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:9"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:3"})
MERGE (source)-[r:themeL2BelongsToThemeL1]->(target)
SET r.label = "一级主题包含二级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:9"})
MERGE (source)-[r:themeL1IncludesThemeL2]->(target)
SET r.label = "二级主题属于一级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:10"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:3"})
MERGE (source)-[r:themeL2BelongsToThemeL1]->(target)
SET r.label = "一级主题包含二级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:10"})
MERGE (source)-[r:themeL1IncludesThemeL2]->(target)
SET r.label = "二级主题属于一级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:11"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:3"})
MERGE (source)-[r:themeL2BelongsToThemeL1]->(target)
SET r.label = "一级主题包含二级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:11"})
MERGE (source)-[r:themeL1IncludesThemeL2]->(target)
SET r.label = "二级主题属于一级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:12"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:3"})
MERGE (source)-[r:themeL2BelongsToThemeL1]->(target)
SET r.label = "一级主题包含二级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:12"})
MERGE (source)-[r:themeL1IncludesThemeL2]->(target)
SET r.label = "二级主题属于一级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:13"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:3"})
MERGE (source)-[r:themeL2BelongsToThemeL1]->(target)
SET r.label = "一级主题包含二级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:13"})
MERGE (source)-[r:themeL1IncludesThemeL2]->(target)
SET r.label = "二级主题属于一级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MERGE (source)-[r:themeL2BelongsToThemeL1]->(target)
SET r.label = "一级主题包含二级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MERGE (source)-[r:themeL1IncludesThemeL2]->(target)
SET r.label = "二级主题属于一级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MERGE (source)-[r:themeL2BelongsToThemeL1]->(target)
SET r.label = "一级主题包含二级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MERGE (source)-[r:themeL1IncludesThemeL2]->(target)
SET r.label = "二级主题属于一级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:16"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MERGE (source)-[r:themeL2BelongsToThemeL1]->(target)
SET r.label = "一级主题包含二级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:16"})
MERGE (source)-[r:themeL1IncludesThemeL2]->(target)
SET r.label = "二级主题属于一级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:17"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MERGE (source)-[r:themeL2BelongsToThemeL1]->(target)
SET r.label = "一级主题包含二级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:17"})
MERGE (source)-[r:themeL1IncludesThemeL2]->(target)
SET r.label = "二级主题属于一级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:18"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MERGE (source)-[r:themeL2BelongsToThemeL1]->(target)
SET r.label = "一级主题包含二级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL1:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:18"})
MERGE (source)-[r:themeL1IncludesThemeL2]->(target)
SET r.label = "二级主题属于一级主题";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:1-1-1"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:1-1-1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:1"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:1-1-2"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:1-1-2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:1"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:1-1-3"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:1-1-3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:1"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:1-1-4"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:1-1-4"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:1"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:1-2-1"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:1-2-1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:2"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:1-2-2"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:1-2-2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:2"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:1-2-3"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:1-2-3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:2"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:1-2-4"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:1-2-4"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:2"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:1-3-1"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:1-3-1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:3"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:1-3-2"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:1-3-2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:3"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:1-3-3"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:1-3-3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:3"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:1-3-4"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:1-3-4"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:3"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-1-1"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-1-1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:4"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-1-2"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-1-2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:4"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-1-3"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-1-3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:4"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-1"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-2"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-3"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-4"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-4"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-5"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-5"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-6"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-6"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-7"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-7"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-8"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-8"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-9"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-9"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-1"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-2"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-3"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-4"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-4"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-5"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-5"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-6"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-6"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-1"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-2"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-3"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-4"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-4"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-5"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-5"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-6"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-6"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:8"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-1-1"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-1-1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:8"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:8"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-1-2"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-1-2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:8"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:8"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-1-3"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-1-3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:8"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:9"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-2-1"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-2-1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:9"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:9"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-2-2"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-2-2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:9"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:9"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-2-3"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-2-3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:9"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:9"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-2-4"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-2-4"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:9"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:10"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-3-1"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-3-1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:10"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:10"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-3-2"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-3-2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:10"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:10"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-3-3"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-3-3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:10"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:11"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-1"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:11"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:11"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-2"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:11"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:11"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-3"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:11"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:11"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-4"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-4"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:11"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:11"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-5"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-5"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:11"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:11"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-6"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-6"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:11"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:11"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-7"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-7"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:11"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:12"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-5-1"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-5-1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:12"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:12"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-5-2"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-5-2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:12"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:12"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-5-3"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-5-3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:12"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:13"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-6-1"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-6-1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:13"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:13"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-6-2"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-6-2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:13"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:13"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-6-3"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-6-3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:13"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-1"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-2"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-3"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-4"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-4"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-5"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-5"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-6"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-6"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-7"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-7"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-8"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-8"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-9"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-9"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-1"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-2"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-3"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-4"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-4"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-5"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-5"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-6"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-6"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-7"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-7"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-8"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-8"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-9"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-9"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-10"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-10"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-11"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-11"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-12"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-12"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:16"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:5-1-1"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:5-1-1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:16"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:16"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:5-1-2"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:5-1-2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:16"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:16"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:5-1-3"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:5-1-3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:16"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:17"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:5-2-1"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:5-2-1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:17"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:17"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:5-2-2"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:5-2-2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:17"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:17"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:5-2-3"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:5-2-3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:17"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:18"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:5-3-1"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:5-3-1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:18"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:18"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:5-3-2"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:5-3-2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:18"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:18"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:5-3-3"})
MERGE (source)-[r:themeL2ContainsThemeL3]->(target)
SET r.label = "二级主题含三级主题及样例 / containsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:5-3-3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:18"})
MERGE (source)-[r:themeL3ContainedInThemeL2]->(target)
SET r.label = "二级主题含三级主题及样例 / containedInThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:001"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:1"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:001"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:002"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:1"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:002"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:003"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:1"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:003"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:004"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:2"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:004"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:005"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:2"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:005"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:006"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:2"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:006"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:007"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:2"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:007"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:008"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:2"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:008"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:009"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:3"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:009"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:010"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:3"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:010"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:011"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:3"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:011"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:012"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:3"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:012"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:013"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:4"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:013"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:014"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:014"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:015"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:015"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:016"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:016"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:017"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:017"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:018"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:018"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:019"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:019"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:020"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:020"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:021"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:021"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:022"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:022"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:023"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:023"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:024"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:024"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:025"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:025"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:026"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:026"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:027"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:027"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:028"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:028"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:029"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:029"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:030"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:030"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:031"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:031"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:032"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:032"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:033"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:033"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:034"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:034"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:035"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:035"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:036"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:036"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:037"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:037"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:038"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:038"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:039"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:039"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:040"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:040"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:041"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:041"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:042"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:8"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:8"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:042"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:043"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:8"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:8"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:043"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:044"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:9"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:9"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:044"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:045"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:9"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:9"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:045"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:046"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:9"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:9"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:046"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:047"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:10"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:10"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:047"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:048"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:10"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:10"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:048"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:049"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:11"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:11"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:049"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:050"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:11"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:11"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:050"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:051"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:11"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:11"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:051"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:052"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:13"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:13"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:052"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:053"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:13"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:13"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:053"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:054"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:054"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:055"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:055"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:056"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:056"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:057"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:057"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:058"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:058"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:059"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:059"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:060"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:060"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:061"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:061"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:062"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:14"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:062"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:063"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:063"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:064"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:064"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:065"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:065"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:066"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:066"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:067"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:067"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:068"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:068"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:069"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:069"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:070"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:070"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:071"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:071"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:072"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:072"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:073"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:073"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:074"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:074"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:075"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:16"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:16"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:075"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:076"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:16"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:16"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:076"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:077"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:16"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:16"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:077"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:078"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:16"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:16"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:078"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:079"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:17"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:17"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:079"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:080"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:17"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:17"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:080"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:081"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:17"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:17"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:081"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:082"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:18"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:18"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:082"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:083"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:18"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:18"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:083"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:084"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:18"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:18"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:084"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:085"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:18"})
MERGE (source)-[r:exampleProblemBelongsToThemeL2]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:18"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:085"})
MERGE (source)-[r:themeL2HasExampleProblem]->(target)
SET r.label = "二级主题包含例题 / hasExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:1-1-2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:35"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:35"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:1-1-2"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:1-1-3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:36"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:36"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:1-1-3"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:1-2-1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:1-2-1"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:1-2-1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:81"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:81"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:1-2-1"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:1-2-2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:9"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:9"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:1-2-2"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:1-2-2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:10"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:10"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:1-2-2"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:1-2-3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:11"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:11"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:1-2-3"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:1-2-3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:12"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:12"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:1-2-3"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:1-3-2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:1-3-2"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:1-3-2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:64"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:64"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:1-3-2"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-1-1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:2"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-1-1"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-1-1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:3"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-1-1"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-1-2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:2"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-1-2"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-1-2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:3"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-1-2"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-1-3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:2"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-1-3"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-1-3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:3"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-1-3"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:1"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-1"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:2"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-2"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:3"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-2"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:15"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:15"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-3"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:17"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:17"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-3"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:13"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:13"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-4"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:14"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:14"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-4"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-6"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:28"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:28"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-6"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:20"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:20"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-7"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:21"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:21"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-7"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:23"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:23"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-8"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:24"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:24"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-8"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:25"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:25"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-9"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:20"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:20"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-2-9"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:5"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:5"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-2"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:45"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:45"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-3"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:47"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:47"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-3"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:46"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:46"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-4"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:49"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:49"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-4"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:49"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:49"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-5"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:44"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:44"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-5"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:44"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:44"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-6"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:45"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:45"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-3-6"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-1"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:64"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:64"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-1"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:75"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:75"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-2"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:76"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:76"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-2"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:81"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:81"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-3"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:66"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:66"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-3"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-4"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:76"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:76"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-4"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:80"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:80"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-5"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:81"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:81"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-5"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:81"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:81"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-6"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:2-4-6"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-1-1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-1-1"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-1-2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-1-2"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-1-3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-1-3"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-1-3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:70"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:70"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-1-3"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-2-1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:34"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:34"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-2-1"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-2-1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-2-1"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-2-2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:70"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:70"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-2-2"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-2-2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:71"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:71"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-2-2"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-3-1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-3-1"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-3-2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-3-2"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-3-3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-3-3"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-3-3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:43"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:43"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-3-3"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-1"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:64"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:64"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-1"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:66"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:66"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-2"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:68"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:68"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-2"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:66"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:66"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-3"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-3"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:64"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:64"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-4"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:65"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:65"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-4"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:70"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:70"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-5"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:71"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:71"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-5"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:64"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:64"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-7"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:65"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:65"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-4-7"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-5-1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-5-1"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-5-2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-5-2"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:3-5-3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:3-5-3"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:9"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:9"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-1"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:10"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:10"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-1"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:11"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:11"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-2"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:12"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:12"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-2"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:35"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:35"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-3"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:1"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-4"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:2"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-5"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:3"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-5"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:13"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:13"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-6"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:14"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:14"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-6"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:66"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:66"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-7"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-7"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-8"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:60"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:60"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-8"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:66"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:66"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-9"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:68"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:68"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-1-9"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:35"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:35"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-1"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:17"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:17"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-2"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:13"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:13"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-2"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:20"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:20"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-3"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:21"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:21"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-3"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:25"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:25"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-4"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:20"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:20"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-4"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-5"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:28"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:28"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-5"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:45"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:45"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-6"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:44"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:44"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-6"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:46"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:46"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-7"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:49"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:49"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-7"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:49"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:49"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-8"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:46"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:46"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-8"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-9"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:76"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:76"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-9"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-10"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:66"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:66"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-10"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-10"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-10"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:64"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:64"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-11"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:65"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:65"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-11"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:66"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:66"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-12"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:68"})
MERGE (source)-[r:themeL3RequiresSection]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:68"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL3:4-2-12"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:OB05:CourseTarget:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:AcademicQuality:1"})
MERGE (source)-[r:courseTargetCorrespondsToAcademicQuality]->(target)
SET r.label = "对应学业质量 / correspondsToAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:OB05:AcademicQuality:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:CourseTarget:1"})
MERGE (source)-[r:academicQualityCorrespondsToCourseTarget]->(target)
SET r.label = "对应课程目标 / correspondsToCourseTarget";

MATCH (source {identifier: "urn:jy:physics:OB05:CourseTarget:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:AcademicQuality:2"})
MERGE (source)-[r:courseTargetCorrespondsToAcademicQuality]->(target)
SET r.label = "对应学业质量 / correspondsToAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:OB05:AcademicQuality:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:CourseTarget:2"})
MERGE (source)-[r:academicQualityCorrespondsToCourseTarget]->(target)
SET r.label = "对应课程目标 / correspondsToCourseTarget";

MATCH (source {identifier: "urn:jy:physics:OB05:CourseTarget:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:AcademicQuality:3"})
MERGE (source)-[r:courseTargetCorrespondsToAcademicQuality]->(target)
SET r.label = "对应学业质量 / correspondsToAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:OB05:AcademicQuality:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:CourseTarget:3"})
MERGE (source)-[r:academicQualityCorrespondsToCourseTarget]->(target)
SET r.label = "对应课程目标 / correspondsToCourseTarget";

MATCH (source {identifier: "urn:jy:physics:OB05:CourseTarget:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:AcademicQuality:4"})
MERGE (source)-[r:courseTargetCorrespondsToAcademicQuality]->(target)
SET r.label = "对应学业质量 / correspondsToAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:OB05:AcademicQuality:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:CourseTarget:4"})
MERGE (source)-[r:academicQualityCorrespondsToCourseTarget]->(target)
SET r.label = "对应课程目标 / correspondsToCourseTarget";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:001"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:72"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:72"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:001"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:002"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:36"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:36"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:002"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:003"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:85"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:85"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:003"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:004"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:50"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:50"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:004"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:005"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:50"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:50"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:005"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:006"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:58"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:58"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:006"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:007"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:98"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:98"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:007"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:008"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:9"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:9"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:008"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:009"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:39"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:39"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:009"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:010"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:54"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:54"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:010"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:011"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:88"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:88"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:011"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:012"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:1"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:012"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:013"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:47"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:47"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:013"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:014"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:1"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:014"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:015"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:1"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:015"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:016"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:78"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:78"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:016"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:017"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:3"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:017"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:018"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:86"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:86"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:018"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:019"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:94"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:94"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:019"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:019"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:97"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:97"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:019"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:020"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:47"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:47"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:020"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:021"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:24"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:24"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:021"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:023"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:26"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:26"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:023"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:024"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:2"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:024"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:025"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:47"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:47"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:025"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:026"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:7"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:7"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:026"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:027"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:50"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:50"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:027"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:028"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:46"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:46"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:028"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:029"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:47"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:47"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:029"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:030"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:49"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:49"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:030"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:031"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:33"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:33"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:031"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:032"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:52"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:52"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:032"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:033"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:50"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:50"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:033"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:034"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:90"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:90"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:034"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:035"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:82"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:82"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:035"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:036"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:88"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:88"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:036"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:037"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:79"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:79"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:037"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:038"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:33"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:33"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:038"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:039"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:83"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:83"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:039"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:040"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:84"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:84"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:040"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:041"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:83"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:83"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:041"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:042"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:042"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:043"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:043"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:044"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:044"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:045"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:045"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:046"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:046"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:046"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:29"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:29"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:046"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:046"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:28"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:28"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:046"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:047"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:047"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:048"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:78"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:78"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:048"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:049"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:049"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:050"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:71"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:71"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:050"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:050"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:70"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:70"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:050"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:051"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:73"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:73"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:051"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:052"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:90"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:90"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:052"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:053"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:42"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:42"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:053"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:054"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:9"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:9"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:054"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:055"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:11"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:11"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:055"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:056"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:35"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:35"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:056"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:057"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:1"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:057"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:058"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:71"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:71"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:058"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:059"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:14"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:14"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:059"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:060"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:66"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:66"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:060"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:061"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:60"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:60"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:061"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:062"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:71"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:71"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:062"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:063"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:35"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:35"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:063"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:064"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:17"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:17"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:064"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:065"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:21"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:21"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:065"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:065"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:24"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:24"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:065"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:065"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:20"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:20"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:065"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:066"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:94"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:94"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:066"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:067"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:28"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:28"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:067"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:068"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:45"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:45"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:068"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:069"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:46"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:46"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:069"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:070"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:49"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:49"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:070"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:071"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:76"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:76"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:071"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:072"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:66"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:66"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:072"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:073"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:65"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:65"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:073"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:073"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:64"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:64"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:073"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:073"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:66"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:66"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:073"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:074"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:62"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:62"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:074"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:075"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:50"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:50"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:075"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:076"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:50"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:50"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:076"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:077"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:9"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:9"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:077"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:078"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:50"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:50"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:078"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:079"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:33"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:33"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:079"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:080"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:67"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:67"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:080"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:081"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:67"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:67"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:081"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:082"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:42"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:42"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:082"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:083"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:78"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:78"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:083"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:084"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:63"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:63"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:084"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:Example:085"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:89"})
MERGE (source)-[r:exampleRequiresSection]->(target)
SET r.label = "解决例题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:89"})
MATCH (target {identifier: "urn:jy:physics:OB05:Example:085"})
MERGE (source)-[r:sectionSupportsExample]->(target)
SET r.label = "节支撑例题 / supportsExampleProblem";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_1:01"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_1:01"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:1"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_1:02"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_1:02"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:1"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:1"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_1:03"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_1:03"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:1"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_2:01"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_2:01"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:2"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_2:02"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_2:02"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:2"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:2"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_2:03"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_2:03"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:2"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_3:01"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_3:01"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:3"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_3:02"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_3:02"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:3"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:3"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_3:03"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:1_3:03"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:3"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_1:01"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_1:01"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:4"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_1:02"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_1:02"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:4"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:4"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_1:03"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_1:03"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:4"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_2:01"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_2:01"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_2:02"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_2:02"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_2:03"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_2:03"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_2:04"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_2:04"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:5"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_3:01"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_3:01"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_3:02"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_3:02"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_3:03"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_3:03"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_3:04"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_3:04"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:6"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_4:01"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_4:01"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_4:02"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_4:02"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_4:03"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:2_4:03"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:7"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:8"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_1:01"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_1:01"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:8"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:8"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_1:02"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_1:02"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:8"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:9"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_2:01"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_2:01"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:9"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:9"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_2:02"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_2:02"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:9"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:10"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_3:01"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_3:01"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:10"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:10"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_3:02"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_3:02"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:10"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:11"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_4:01"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_4:01"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:11"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:11"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_4:02"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_4:02"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:11"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:12"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_5:01"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_5:01"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:12"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:12"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_5:02"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_5:02"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:12"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:13"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_6:01"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_6:01"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:13"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:13"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_6:02"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_6:02"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:13"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:13"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_6:03"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_6:03"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:13"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:13"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_6:04"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:3_6:04"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:13"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:16"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_1:01"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_1:01"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:16"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:16"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_1:02"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_1:02"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:16"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:16"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_1:03"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_1:03"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:16"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:17"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_2:01"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_2:01"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:17"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:17"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_2:02"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_2:02"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:17"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:17"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_2:03"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_2:03"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:17"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:18"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_3:01"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_3:01"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:18"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:18"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_3:02"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_3:02"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:18"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:ThemeL2:18"})
MATCH (target {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_3:03"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联";

MATCH (source {identifier: "urn:jy:physics:OB05:ActivitySuggestion:5_3:03"})
MATCH (target {identifier: "urn:jy:physics:OB05:ThemeL2:18"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.1.1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.1.1"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.1.1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.1.1"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.1.2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.1.2"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.1.2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.1.2"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.1.3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.1.3"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.1.3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.1.3"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.1.4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.1.4"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.1.4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.1.4"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.1.5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.1.5"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.1.5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.1.5"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.1.6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.1.6"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.1.6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.1.6"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.1.7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.1.7"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.1.7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.1.7"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.1.8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.1.8"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.1.8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.1.8"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.1.9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.1.9"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.1.9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.1.9"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.1"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.1"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.2"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.2"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.3"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.3"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.4"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.4"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.4"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.4"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.5"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.5"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.6"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.6"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.7"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.7"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.8"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.8"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.9"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.9"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.10"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.10"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.10"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.10"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.11"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.11"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.12"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:OB05:Experiment:4.2.12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:experimentRequiresSection]->(target)
SET r.label = "完成实验所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:OB05:Experiment:4.2.12"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";
