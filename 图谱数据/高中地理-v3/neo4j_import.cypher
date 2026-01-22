// =====================================================
// 高中地理课标图谱 - Neo4j导入脚本
// 生成时间: 2026-01-22T23:17:07.123822
// =====================================================

// 创建约束和索引
CREATE CONSTRAINT IF NOT EXISTS FOR (n:CourseTarget) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Section) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:CourseModel) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:ModuleAspect) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:BookModule) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Chapter) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:LearningTheme) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:AcademicQuality) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:CoreLiteracy-level) REQUIRE n.identifier IS UNIQUE;

// =====================================================
// 导入实体
// =====================================================

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:001"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:001", title: "宇宙环境与太阳对地球的影响", description: "运用资料，描述地球所处的宇宙环境，说明太阳对地球的影响。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"必修课程\", \"BookModule\": \"地理1\"}", CJ_courseModule: "必修课程", CJ_BookModule: "地理1"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:002"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:002", title: "地球的圈层结构", description: "运用示意图，说明地球的圈层结构。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"必修课程\", \"BookModule\": \"地理1\"}", CJ_courseModule: "必修课程", CJ_BookModule: "地理1"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:003"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:003", title: "地球的演化过程", description: "运用地质年代表等资料，简要描述地球的演化过程。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"必修课程\", \"BookModule\": \"地理1\"}", CJ_courseModule: "必修课程", CJ_BookModule: "地理1"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:004"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:004", title: "地貌识别与景观特点", description: "通过野外观察或运用视频、图像，识别3—4类地貌，描述其景观的主要特点。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"必修课程\", \"BookModule\": \"地理1\"}", CJ_courseModule: "必修课程", CJ_BookModule: "地理1"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:005"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:005", title: "大气的组成和垂直分层", description: "运用图表等资料，说明大气的组成和垂直分层，及其与生产和生活的联系。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"必修课程\", \"BookModule\": \"地理1\"}", CJ_courseModule: "必修课程", CJ_BookModule: "地理1"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:006"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:006", title: "大气受热过程与热力环流", description: "运用示意图等，说明大气受热过程与热力环流原理，并解释相关现象。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"必修课程\", \"BookModule\": \"地理1\"}", CJ_courseModule: "必修课程", CJ_BookModule: "地理1"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:007"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:007", title: "水循环的过程及其地理意义", description: "运用示意图，说明水循环的过程及其地理意义。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"必修课程\", \"BookModule\": \"地理1\"}", CJ_courseModule: "必修课程", CJ_BookModule: "地理1"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:008"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:008", title: "海水性质和运动对人类活动的影响", description: "运用图表等资料，说明海水性质和运动对人类活动的影响。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"必修课程\", \"BookModule\": \"地理1\"}", CJ_courseModule: "必修课程", CJ_BookModule: "地理1"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:009"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:009", title: "土壤的主要形成因素", description: "通过野外观察或运用土壤标本，说明土壤的主要形成因素。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"必修课程\", \"BookModule\": \"地理1\"}", CJ_courseModule: "必修课程", CJ_BookModule: "地理1"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:010"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:010", title: "主要植被与自然环境的关系", description: "通过野外观察或运用视频、图像，识别主要植被，说明其与自然环境的关系。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"必修课程\", \"BookModule\": \"地理1\"}", CJ_courseModule: "必修课程", CJ_BookModule: "地理1"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:011"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:011", title: "常见自然灾害的成因与防灾减灾", description: "运用资料，说明常见自然灾害的成因，列举防灾减灾的措施。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"必修课程\", \"BookModule\": \"地理1\"}", CJ_courseModule: "必修课程", CJ_BookModule: "地理1"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:012"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:012", title: "自然地理问题与地理信息技术", description: "通过探究有关自然地理问题，了解地理信息技术的应用。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"必修课程\", \"BookModule\": \"地理1\"}", CJ_courseModule: "必修课程", CJ_BookModule: "地理1"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:013"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:013", title: "人口分布、迁移的特点及影响因素", description: "运用资料，描述人口分布、迁移的特点，说明其影响因素，并结合实例，解释区域资源环境承载力、人口合理容量。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"必修课程\", \"BookModule\": \"地理2\"}", CJ_courseModule: "必修课程", CJ_BookModule: "地理2"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:014"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:014", title: "城镇和乡村内部的空间结构", description: "结合实例，解释城镇和乡村内部的空间结构，说明合理利用城乡空间、城乡融合发展的意义。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"必修课程\", \"BookModule\": \"地理2\"}", CJ_courseModule: "必修课程", CJ_BookModule: "地理2"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:015"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:015", title: "地域文化在城乡景观中的体现", description: "结合实例，说明地域文化在城乡景观中的体现。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"必修课程\", \"BookModule\": \"地理2\"}", CJ_courseModule: "必修课程", CJ_BookModule: "地理2"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:016"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:016", title: "不同地区城镇化的过程和特点", description: "运用资料，说明不同地区城镇化的过程和特点，以及城镇化的利弊。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"必修课程\", \"BookModule\": \"地理2\"}", CJ_courseModule: "必修课程", CJ_BookModule: "地理2"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:017"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:017", title: "工业、农业和服务业的区位因素", description: "结合实例，说明工业、农业和服务业的区位因素。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"必修课程\", \"BookModule\": \"地理2\"}", CJ_courseModule: "必修课程", CJ_BookModule: "地理2"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:018"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:018", title: "运输方式和交通布局与区域发展的关系", description: "结合实例，说明运输方式和交通布局与区域发展的关系。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"必修课程\", \"BookModule\": \"地理2\"}", CJ_courseModule: "必修课程", CJ_BookModule: "地理2"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:019"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:019", title: "国家重大发展战略的地理背景", description: "运用不同类型的专题地图，说明国家某项重大发展战略的地理背景。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"必修课程\", \"BookModule\": \"地理2\"}", CJ_courseModule: "必修课程", CJ_BookModule: "地理2"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:020"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:020", title: "维护国家海洋权益和海洋发展战略", description: "结合实例，说明维护国家海洋权益和重视海洋发展战略的重要意义。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"必修课程\", \"BookModule\": \"地理2\"}", CJ_courseModule: "必修课程", CJ_BookModule: "地理2"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:021"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:021", title: "南海诸岛和钓鱼岛及其附属岛屿的主权", description: "运用资料，说明南海诸岛是中国领土的组成部分，钓鱼岛及其附属岛屿是中国固有领土，中国对其拥有无可争辩的主权。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"必修课程\", \"BookModule\": \"地理2\"}", CJ_courseModule: "必修课程", CJ_BookModule: "地理2"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:022"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:022", title: "人类面临的主要环境问题与可持续发展", description: "运用资料，归纳人类面临的主要环境问题，说明协调人地关系和可持续发展的主要途径。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"必修课程\", \"BookModule\": \"地理2\"}", CJ_courseModule: "必修课程", CJ_BookModule: "地理2"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:023"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:023", title: "人文地理问题与地理信息技术", description: "通过探究有关人文地理问题，了解地理信息技术的应用。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"必修课程\", \"BookModule\": \"地理2\"}", CJ_courseModule: "必修课程", CJ_BookModule: "地理2"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:024"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:024", title: "地球运动的地理意义", description: "结合实例，说明地球运动的地理意义。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修1 自然地理基础\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修1 自然地理基础"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:025"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:025", title: "岩石圈物质循环过程", description: "运用示意图，说明岩石圈物质循环过程。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修1 自然地理基础\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修1 自然地理基础"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:026"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:026", title: "内力、外力对地表形态变化的影响", description: "结合实例，解释内力和外力对地表形态变化的影响，并说明人类活动与地表形态的关系。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修1 自然地理基础\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修1 自然地理基础"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:027"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:027", title: "锋、低压、高压等天气系统", description: "运用示意图，分析锋、低压（气旋）、高压（反气旋）等天气系统，并运用简易天气图，解释常见天气现象的成因。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修1 自然地理基础\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修1 自然地理基础"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:028"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:028", title: "气压带、风带的分布与气候形成", description: "运用示意图，说明气压带、风带的分布，并分析气压带、风带对气候形成的作用，以及气候对自然地理景观形成的影响。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修1 自然地理基础\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修1 自然地理基础"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:029"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:029", title: "陆地水体之间的相互关系", description: "绘制示意图，解释各类陆地水体之间的相互关系。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修1 自然地理基础\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修1 自然地理基础"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:030"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:030", title: "世界洋流的分布规律", description: "运用世界洋流分布图，说明世界洋流的分布规律，并举例说明洋流对地理环境和人类活动的影响。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修1 自然地理基础\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修1 自然地理基础"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:031"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:031", title: "海-气相互作用", description: "运用图表，分析海一气相互作用对全球水热平衡的影响，解释厄尔尼诺、拉尼娜现象对全球气候和人类活动的影响。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修1 自然地理基础\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修1 自然地理基础"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:032"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:032", title: "自然环境的整体性和差异性", description: "运用图表并结合实例，分析自然环境的整体性和差异性。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修1 自然地理基础\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修1 自然地理基础"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:033"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:033", title: "区域的含义及类型", description: "结合实例，说明区域的含义及类型。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修2 区域发展\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修2 区域发展"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:034"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:034", title: "区域发展的异同与因地制宜", description: "结合实例，从地理环境整体性和区域关联的角度，比较不同区域发展的异同，说明因地制宜对于区域发展的重要意义。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修2 区域发展\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修2 区域发展"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:035"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:035", title: "大都市辐射功能", description: "以某大都市为例，从区域空间组织的视角出发，说明大都市辐射功能。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修2 区域发展\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修2 区域发展"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:036"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:036", title: "地区产业结构变化", description: "以某地区为例，分析地区产业结构变化过程及原因。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修2 区域发展\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修2 区域发展"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:037"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:037", title: "资源枯竭型城市转型发展", description: "以某资源枯竭型城市为例，分析该类城市转型发展的方向。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修2 区域发展\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修2 区域发展"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:038"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:038", title: "生态脆弱区环境与发展问题及综合治理", description: "以某生态脆弱区为例，说明该类地区存在的环境与发展问题，以及综合治理措施。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修2 区域发展\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修2 区域发展"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:039"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:039", title: "产业转移和资源跨区域调配", description: "以某区域为例，说明产业转移和资源跨区域调配对区域发展的影响。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修2 区域发展\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修2 区域发展"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:040"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:040", title: "流域内部协作开发与协调发展", description: "以某流域为例，说明流域内部协作开发水资源、协调发展、保护环境的意义。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修2 区域发展\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修2 区域发展"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:041"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:041", title: "国际合作的重要意义", description: "结合“一带一路”建设，说明国际合作的重要意义。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修2 区域发展\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修2 区域发展"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:042"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:042", title: "自然资源与人类活动的关系", description: "结合实例，说明自然资源的数量、质量、空间分布与人类活动的关系。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修3 资源、环境与国家安全\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修3 资源、环境与国家安全"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:043"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:043", title: "战略性矿产资源分布与开发利用", description: "以某种战略性矿产资源为例，分析其分布特点及开发利用现状。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修3 资源、环境与国家安全\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修3 资源、环境与国家安全"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:044"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:044", title: "中国耕地资源与粮食安全", description: "运用图表，描述中国耕地资源的分布，说明其开发利用现状，以及耕地保护与粮食安全的关系。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修3 资源、环境与国家安全\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修3 资源、环境与国家安全"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:045"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:045", title: "海洋空间资源开发对国家安全的影响", description: "结合实例，说明海洋空间资源开发对国家安全的影响。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修3 资源、环境与国家安全\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修3 资源、环境与国家安全"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:046"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:046", title: "碳排放与国际合作", description: "结合实例，运用碳循环和温室效应原理，分析碳排放对环境的影响，说明碳减排国际合作的重要性。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修3 资源、环境与国家安全\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修3 资源、环境与国家安全"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:047"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:047", title: "设立自然保护地对生态安全的意义", description: "结合实例，说明设立自然保护地对生态安全的意义。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修3 资源、环境与国家安全\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修3 资源、环境与国家安全"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:048"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:048", title: "污染物跨境转移对环境安全的影响", description: "结合实例，说明污染物跨境转移对环境安全的影响。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修3 资源、环境与国家安全\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修3 资源、环境与国家安全"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:049"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:049", title: "环境保护政策、措施与国家安全", description: "举例说明环境保护政策、措施与国家安全的关系。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修3 资源、环境与国家安全\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修3 资源、环境与国家安全"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:050"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:050", title: "认识主要星座和四季星空", description: "在星图、天球仪上认识主要星座，辨认四季星空的主要星座，说出部分星座的地理导向意义。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修1 天文学基础\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修1 天文学基础"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:051"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:051", title: "现代天文学工具", description: "了解现代天文学工具。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修1 天文学基础\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修1 天文学基础"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:052"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:052", title: "太阳系的发现和起源", description: "简述太阳系的发现和起源。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修1 天文学基础\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修1 天文学基础"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:053"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:053", title: "太阳系的结构和行星运动特征", description: "运用太阳系模式图和其他资料，描述太阳系的结构和行星运动特征。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修1 天文学基础\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修1 天文学基础"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:054"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:054", title: "地月系的组成及其运动特征", description: "运用图表、软件等资料，简述地月系的组成及其运动特征。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修1 天文学基础\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修1 天文学基础"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:055"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:055", title: "月相、月食、日食、潮汐等现象", description: "观察并描述月相、月食、日食、潮汐等现象，并运用图表等资料解释其成因。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修1 天文学基础\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修1 天文学基础"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:056"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:056", title: "太阳大气的圈层结构和太阳活动", description: "绘制太阳大气的圈层结构图，说明太阳活动及其对地球的影响。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修1 天文学基础\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修1 天文学基础"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:057"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:057", title: "恒星概况及其演化过程", description: "运用图表等资料，描述恒星概况，说明其演化过程。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修1 天文学基础\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修1 天文学基础"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:058"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:058", title: "银河系的外貌、结构和演化", description: "观察并运用图表等资料，描述银河系的外貌和结构，说明其演化过程。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修1 天文学基础\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修1 天文学基础"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:059"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:059", title: "宇宙大爆炸假说和宇宙基本组分", description: "简述“宇宙大爆炸”假说的主要观点，描述宇宙的基本组分。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修1 天文学基础\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修1 天文学基础"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:060"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:060", title: "海岸的主要类型和地形变化", description: "运用图片资料，说明海岸的主要类型以及从海岸到海洋的地形变化特点。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修2 海洋地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修2 海洋地理"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:061"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:061", title: "海底地形特点和形成过程", description: "观察海底地形图，运用大陆漂移学说、海底扩张理论与板块构造学说原理，分析海底地形的特点和形成过程。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修2 海洋地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修2 海洋地理"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:062"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:062", title: "海水水文特征及海水运动形式", description: "说明从近海到大洋的海水水文特征以及海水运动形式。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修2 海洋地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修2 海洋地理"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:063"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:063", title: "海洋与大气的相互作用", description: "解释海洋与大气的相互作用关系，运用图表说明其对全球水循环和水热平衡的影响。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修2 海洋地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修2 海洋地理"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:064"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:064", title: "主要海洋资源的基本特点和应用前景", description: "说明主要海洋资源的基本特点和应用前景。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修2 海洋地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修2 海洋地理"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:065"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:065", title: "海洋资源开发重大技术的应用", description: "举例说明当前海洋资源开发重大技术的应用。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修2 海洋地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修2 海洋地理"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:066"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:066", title: "主要海洋灾害及其防灾减灾", description: "举例说明主要的海洋灾害及其成因，以及相应的防灾减灾举措。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修2 海洋地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修2 海洋地理"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:067"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:067", title: "海洋污染的形成及保护对策", description: "说明海洋污染的形成及其对海洋环境的危害，简述保护海洋环境的主要对策。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修2 海洋地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修2 海洋地理"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:068"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:068", title: "沿海地区开发对国家经济发展的重要作用", description: "结合实例，说明沿海地区的开发对国家经济发展的重要作用。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修2 海洋地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修2 海洋地理"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:069"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:069", title: "《联合国海洋法公约》相关概念", description: "根据《联合国海洋法公约》，解释内水、领海、毗连区、专属经济区、大陆架、公海和国际海底区域等概念。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修2 海洋地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修2 海洋地理"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:070"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:070", title: "维护国家领土主权和海洋权益", description: "结合近些年发生的海洋争端事件，了解钓鱼岛及其附属岛屿、南海诸岛属于中国的立场和依据，说明维护国家领土主权和海洋权益的重要性。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修2 海洋地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修2 海洋地理"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:071"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:071", title: "自然灾害的类型及其影响", description: "说明自然灾害的类型及其对人类社会的影响。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修3 自然灾害与防治\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修3 自然灾害与防治"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:072"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:072", title: "地震、泥石流、滑坡等地质灾害", description: "解释地震、泥石流、滑坡等地质灾害的成因与危害。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修3 自然灾害与防治\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修3 自然灾害与防治"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:073"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:073", title: "台风、寒潮、干旱、洪涝、风暴潮等气象灾害", description: "分析台风、寒潮、干旱、洪涝、风暴潮等气象灾害的成因与危害。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修3 自然灾害与防治\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修3 自然灾害与防治"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:074"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:074", title: "虫灾、鼠灾等生物灾害", description: "举例说明虫灾、鼠灾等生物灾害的危害。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修3 自然灾害与防治\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修3 自然灾害与防治"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:075"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:075", title: "人类活动对自然灾害的影响", description: "举例说明人类活动对自然灾害的影响。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修3 自然灾害与防治\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修3 自然灾害与防治"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:076"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:076", title: "世界主要自然灾害的空间分布", description: "运用图表资料，说明世界主要自然灾害的空间分布，比较同一自然灾害危害程度的地域差异。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修3 自然灾害与防治\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修3 自然灾害与防治"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:077"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:077", title: "中国自然灾害多发区的环境特点", description: "结合实例，说明中国自然灾害多发区的环境特点。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修3 自然灾害与防治\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修3 自然灾害与防治"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:078"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:078", title: "自然灾害的先兆及预报方法", description: "结合实例，说明某些自然灾害爆发的先兆及预报方法。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修3 自然灾害与防治\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修3 自然灾害与防治"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:079"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:079", title: "地震等自然灾害的应对方法", description: "以地震等自然灾害为例，列举适当的应对方法或应急措施。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修3 自然灾害与防治\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修3 自然灾害与防治"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:080"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:080", title: "地理信息技术在自然灾害中的应用", description: "说明地理信息技术在自然灾害预测、灾情监测和评估中的运用。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修3 自然灾害与防治\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修3 自然灾害与防治"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:081"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:081", title: "碳、氮、氧等元素循环的过程及影响", description: "简要说明地球上碳、氮、氧等元素循环的过程及其对环境的影响。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修4 环境保护\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修4 环境保护"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:082"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:082", title: "全球主要环境问题与环境保护", description: "运用资料，说明全球主要环境问题、环境保护与修复措施及成效。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修4 环境保护\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修4 环境保护"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:083"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:083", title: "中国水资源概况和水环境污染", description: "运用资料，说明中国水资源概况和水环境污染的状况，以及水污染的治理及成效。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修4 环境保护\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修4 环境保护"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:084"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:084", title: "水质采样及检测方法", description: "学会水质采样方法及方案设计，学会用简易方法检测水质。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修4 环境保护\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修4 环境保护"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:085"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:085", title: "水资源保护方案设计", description: "针对某一具体区域，设计水资源保护方案。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修4 环境保护\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修4 环境保护"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:086"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:086", title: "全球变暖与碳达峰碳中和战略", description: "结合实例，说明全球变暖对生态环境的影响，正确认识和把握碳达峰碳中和战略决策的重大意义。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修4 环境保护\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修4 环境保护"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:087"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:087", title: "大气污染的基本机理及防治", description: "解释形成大气污染的基本机理，举例说明大气污染的危害及防治措施。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修4 环境保护\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修4 环境保护"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:088"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:088", title: "中国重污染天气的时空分布与治理", description: "结合资料，分析中国重污染天气的时空分布特征与成因，说明主要治理措施及成效。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修4 环境保护\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修4 环境保护"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:089"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:089", title: "中国固体废弃物污染治理和资源化利用", description: "运用资料，分析中国固体废弃物污染治理和资源化利用的主要措施及成效。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修4 环境保护\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修4 环境保护"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:090"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:090", title: "土壤污染的成因、特点及修复", description: "解释土壤污染的成因和特点，说明常见的土壤污染类型及修复成效。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修4 环境保护\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修4 环境保护"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:091"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:091", title: "土壤样品采集与污染检测修复", description: "学会土壤样品采集方法和方案设计，了解土壤污染的检测方法，以及被污染土壤的修复方法和技术。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修4 环境保护\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修4 环境保护"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:092"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:092", title: "环境管理的基本内容和主要手段", description: "结合实例，说明环境管理的基本内容和主要手段。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修4 环境保护\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修4 环境保护"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:093"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:093", title: "旅游资源的分类和内涵", description: "描述旅游资源的分类和内涵。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修5 旅游地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修5 旅游地理"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:094"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:094", title: "旅游资源的成因和价值", description: "举例说明某种旅游资源的成因和价值。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修5 旅游地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修5 旅游地理"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:095"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:095", title: "自然遗产和文化遗产的保护", description: "区别自然遗产和文化遗产的基本概念，结合实例说明保护世界遗产的方式和意义。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修5 旅游地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修5 旅游地理"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:096"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:096", title: "旅游资源的开发条件评价", description: "结合实例，评价旅游资源的开发条件。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修5 旅游地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修5 旅游地理"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:097"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:097", title: "旅游目的地和旅游客源地关系", description: "结合实例，分析旅游目的地和旅游客源地之间的关系。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修5 旅游地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修5 旅游地理"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:098"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:098", title: "旅游业对区域发展的带动作用", description: "结合实例，分析旅游业对区域经济、社会、文化发展的带动作用。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修5 旅游地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修5 旅游地理"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:099"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:099", title: "旅游开发过程中的环境保护措施", description: "举例说明旅游开发过程中的环境保护措施。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修5 旅游地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修5 旅游地理"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:100"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:100", title: "旅游方案设计", description: "结合实例，设计旅游方案，包括旅游目的地、时间规划、交通路线、游览内容、相关准备等。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修5 旅游地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修5 旅游地理"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:101"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:101", title: "旅游安全与自然地理条件", description: "举例说明自然地理条件与旅游安全的关系，以及对应的安全措施。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修5 旅游地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修5 旅游地理"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:102"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:102", title: "城市的形成和发展", description: "举例说明城市的形成和发展，归纳城市在不同阶段的基本特征。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修6 城乡规划\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修6 城乡规划"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:103"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:103", title: "乡村聚落的特征及成因", description: "举例说明不同地理环境中乡村聚落的特征，并分析其成因。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修6 城乡规划\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修6 城乡规划"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:104"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:104", title: "城镇与乡村的空间形态和景观特色", description: "结合实例，分析城镇与乡村的空间形态和景观特色。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修6 城乡规划\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修6 城乡规划"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:105"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:105", title: "新型城镇化的内涵和意义", description: "运用资料，阐述新型城镇化的内涵和意义。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修6 城乡规划\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修6 城乡规划"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:106"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:106", title: "促进城镇合理布局和协调发展", description: "举例说明促进城镇合理布局和协调发展的途径。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修6 城乡规划\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修6 城乡规划"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:107"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:107", title: "交通运输对城市分布和空间形态的影响", description: "举例说明交通运输对城市分布和空间形态的影响。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修6 城乡规划\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修6 城乡规划"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:108"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:108", title: "城乡规划的主要作用和重要意义", description: "运用资料，说明城乡规划的主要作用和重要意义，了解城乡总体规划的基本方法。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修6 城乡规划\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修6 城乡规划"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:109"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:109", title: "城乡规划中各类产业的布局原理", description: "结合实例，说明城乡规划中工业、农业、交通运输业、商业的布局原理。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修6 城乡规划\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修6 城乡规划"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:110"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:110", title: "居住地的区位与环境特点评价", description: "结合实例，评价居住地的区位与环境特点。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修6 城乡规划\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修6 城乡规划"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:111"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:111", title: "保护传统文化和特色景观的对策", description: "运用资料，说明保护传统文化和特色景观应采取的对策。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修6 城乡规划\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修6 城乡规划"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:112"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:112", title: "国家领土的概念和基本特征", description: "解释国家领土的概念，从领土的角度说明国家的基本特征。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修7 政治地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修7 政治地理"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:113"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:113", title: "中国国家版图的空间构成", description: "说明中国国家版图的空间构成，认识国家版图统一、完整的重要意义。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修7 政治地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修7 政治地理"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:114"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:114", title: "首都的职能与作用", description: "结合首都选址实例，说明首都的职能与作用。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修7 政治地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修7 政治地理"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:115"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:115", title: "边界纠纷与解决途径", description: "结合实例，了解边界纠纷与解决途径。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修7 政治地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修7 政治地理"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:116"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:116", title: "综合国力的概念和基本要素", description: "解释综合国力的概念，并举例说明综合国力的基本要素。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修7 政治地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修7 政治地理"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:117"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:117", title: "分析综合国力的方法及提高途径", description: "结合实例，说明分析综合国力的方法，以及提高综合国力的主要途径。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修7 政治地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修7 政治地理"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:118"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:118", title: "当代国际政治格局与世界政治多极化", description: "描述当代国际政治格局及世界政治多极化形势，认识构建人类命运共同体的重要意义。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修7 政治地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修7 政治地理"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:119"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:119", title: "国际合作与冲突", description: "结合实例，说明国际合作与冲突的背景、表现形式和前景。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修7 政治地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修7 政治地理"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:120"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:120", title: "世界经济全球化趋势与中国的立场", description: "结合实例，说明目前世界经济全球化趋势，以及中国的基本立场和应对措施。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修7 政治地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修7 政治地理"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:121"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:121", title: "国际组织、区域组织、跨国组织的作用", description: "结合实例，说明国际组织、区域组织、跨国组织在国际政治、经济中的作用。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修7 政治地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修7 政治地理"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:122"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:122", title: "地理信息技术的基本内容", description: "描述地理信息技术的基本内容。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修8 地理信息技术应用\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修8 地理信息技术应用"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:123"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:123", title: "数字地球、数字城市等概念", description: "解释数字地球、数字城市等概念，说明其对人们生产、生活的影响。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修8 地理信息技术应用\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修8 地理信息技术应用"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:124"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:124", title: "数字地图与地理信息系统软件", description: "了解数字地图的概念，说出常见的地理信息系统软件名称和基本特点。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修8 地理信息技术应用\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修8 地理信息技术应用"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:125"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:125", title: "地图数字化与地理信息系统数据表", description: "解释地图数字化的过程，学会建立地理信息系统数据表。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修8 地理信息技术应用\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修8 地理信息技术应用"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:126"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:126", title: "地理信息系统条件查询与分析", description: "学会在地理信息系统软件中进行简单的条件查询，分析地理要素的分布规律。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修8 地理信息技术应用\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修8 地理信息技术应用"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:127"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:127", title: "专题地图制作", description: "学会使用地理信息系统软件制作人口、资源分布等相关专题地图。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修8 地理信息技术应用\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修8 地理信息技术应用"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:128"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:128", title: "遥感的基本原理和类型", description: "解释遥感的基本原理，并结合遥感图像说明遥感的基本类型。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修8 地理信息技术应用\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修8 地理信息技术应用"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:129"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:129", title: "遥感图像判读", description: "说明遥感图像判读的基本原理和方法，判读某地的遥感图像。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修8 地理信息技术应用\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修8 地理信息技术应用"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:130"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:130", title: "全球卫星导航系统的基本原理", description: "解释全球卫星导航系统的基本原理，说出主要的卫星导航系统。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修8 地理信息技术应用\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修8 地理信息技术应用"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:131"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:131", title: "北斗卫星导航系统的操作", description: "学会运用北斗卫星导航系统（BDS）或其他全球卫星导航系统（GNSS）进行定位、路径查询等操作。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修8 地理信息技术应用\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修8 地理信息技术应用"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:132"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:132", title: "野外实习方案设计与野外生存常识", description: "学会运用多种手段收集和提取地理信息，设计野外实习方案，了解野外生存常识。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修9 地理野外实习\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修9 地理野外实习"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:133"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:133", title: "野外定向、定位与地理信息获取", description: "运用地理工具在野外进行定向、定位并获取野外地理信息。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修9 地理野外实习\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修9 地理野外实习"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:134"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:134", title: "地形图、地质构造图及遥感图像阅读", description: "阅读地形图、地质构造图以及遥感图像等，识别主要地形区、基本地质构造和地貌特点。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修9 地理野外实习\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修9 地理野外实习"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:135"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:135", title: "野外观察、绘图与景观分析", description: "观察某地区地质、地貌、植被、土地利用方式等景观要素，绘制示意图及剖面图，分析影响景观形成的主要因素，以及景观要素间的相互关系。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修9 地理野外实习\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修9 地理野外实习"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:136"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:136", title: "野外观察、测量与样品采集", description: "学会在野外观察、测量和分析地质、地貌基本形态的方法，并采集样品。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修9 地理野外实习\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修9 地理野外实习"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:137"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:137", title: "主要造岩矿物和常见岩石识别", description: "识别主要造岩矿物和常见岩石，认识不同性质岩石对地貌发育的影响。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修9 地理野外实习\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修9 地理野外实习"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:138"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:138", title: "地貌野外观察与形成过程推断", description: "在野外观察某种地貌，推断其形成过程。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修9 地理野外实习\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修9 地理野外实习"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:139"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:139", title: "收集天气谚语与观云识天气", description: "学会收集并理解天气谚语，在室外观云识天气。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修9 地理野外实习\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修9 地理野外实习"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:140"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:140", title: "社会调查的基本方法与城乡实地调查", description: "学会社会调查的基本方法，并进行城乡实地调查。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修9 地理野外实习\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修9 地理野外实习"};

MERGE (n:LearningTheme {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:141"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:141", title: "野外考察报告的撰写与汇报交流", description: "学会撰写野外考察报告并进行汇报交流。", subject: "SB0308", type: "LearningTheme", applicableLevel: "OB06", contentJson: "{\"period\": null, \"courseModule\": \"选修课程\", \"BookModule\": \"选修9 地理野外实习\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修9 地理野外实习"};

MERGE (n:BookModule {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01", title: "地理1", description: "本模块主要包括三方面内容：地球科学基础，自然地理实践，自然环境与人类活动的关系。本模块旨在帮助学生了解基本的地球科学知识，理解一些自然地理现象的过程与原理，增强对生活中的自然地理现象进行观察、识别、描述、解释、欣赏的意识与能力，树立尊重自然、顺应自然、保护自然，人与自然和谐共生的理念。", subject: "SB0308", type: "BookModule", applicableLevel: "OB06", contentJson: "{\"contentRequirement\": \"1.1 运用资料，描述地球所处的宇宙环境，说明太阳对地球的影响。1.2 运用示意图，说明地球的圈层结构。1.3 运用地质年代表等资料，简要描述地球的演化过程。1.4 通过野外观察或运用视频、图像，识别3—4类地貌，描述其景观的主要特点。1.5 运用图表等资料，说明大气的组成和垂直分层，及其与生产和生活的联系。1.6 运用示意图等，说明大气受热过程与热力环流原理，并解释相关现象。1.7 运用示意图，说明水循环的过程及其地理意义。1.8 运用图表等资料，说明海水性质和运动对人类活动的影响。1.9 通过野外观察或运用土壤标本，说明土壤的主要形成因素。1.10 通过野外观察或运用视频、图像，识别主要植被，说明其与自然环境的关系。1.11 运用资料，说明常见自然灾害的成因，列举防灾减灾的措施。1.12 通过探究有关自然地理问题，了解地理信息技术的应用。\", \"achievementRequirement\": \"学习本模块之后，学生能够运用地理信息技术或其他地理工具，观察、识别、描述与地貌、大气、水、土壤、植被等有关的自然现象，并说明一些自然现象之间的关系和变化过程。能够在一定程度上合理描述和解释特定区域的自然现象，并说明其对人类活动的影响。在地理野外考察、模拟实验等实践活动中，能够运用恰当的方法，认真完成预设的各项任务，展现出求真务实的科学态度和行动力。\", \"teachingTip\": \"以认识自然地理要素及其与人类活动的关系为线索组织教学。充分利用地图、景观图像、地理视频、虚拟技术、地理信息技术和周边自然与社会资源支持教学。指导学生运用观察、观测、实验等方式在室内和野外开展地理实践活动，增强学习体验。帮助学生理解自然环境是人类生存、发展的基础，辩证看待自然环境及其变化对人类活动的各种影响。\", \"period\": \"\", \"courseModule\": \"必修课程\"}", CJ_contentRequirement: "1.1 运用资料，描述地球所处的宇宙环境，说明太阳对地球的影响。1.2 运用示意图，说明地球的圈层结构。1.3 运用地质年代表等资料，简要描述地球的演化过程。1.4 通过野外观察或运用视频、图像，识别3—4类地貌，描述其景观的主要特点。1.5 运用图表等资料，说明大气的组成和垂直分层，及其与生产和生活的联系。1.6 运用示意图等，说明大气受热过程与热力环流原理，并解释相关现象。1.7 运用示意图，说明水循环的过程及其地理意义。1.8 运用图表等资料，说明海水性质和运动对人类活动的影响。1.9 通过野外观察或运用土壤标本，说明土壤的主要形成因素。1.10 通过野外观察或运用视频、图像，识别主要植被，说明其与自然环境的关系。1.11 运用资料，说明常见自然灾害的成因，列举防灾减灾的措施。1.12 通过探究有关自然地理问题，了解地理信息技术的应用。", CJ_achievementRequirement: "学习本模块之后，学生能够运用地理信息技术或其他地理工具，观察、识别、描述与地貌、大气、水、土壤、植被等有关的自然现象，并说明一些自然现象之间的关系和变化过程。能够在一定程度上合理描述和解释特定区域的自然现象，并说明其对人类活动的影响。在地理野外考察、模拟实验等实践活动中，能够运用恰当的方法，认真完成预设的各项任务，展现出求真务实的科学态度和行动力。", CJ_teachingTip: "以认识自然地理要素及其与人类活动的关系为线索组织教学。充分利用地图、景观图像、地理视频、虚拟技术、地理信息技术和周边自然与社会资源支持教学。指导学生运用观察、观测、实验等方式在室内和野外开展地理实践活动，增强学习体验。帮助学生理解自然环境是人类生存、发展的基础，辩证看待自然环境及其变化对人类活动的各种影响。", CJ_period: "", CJ_courseModule: "必修课程"};

MERGE (n:BookModule {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02", title: "地理2", description: "本模块主要包括四方面内容：人口，城镇和乡村，产业区位选择，环境与发展。本模块旨在帮助学生了解基本社会经济活动的空间特点，树立绿色发展、共同发展、人地协调发展的观念。", subject: "SB0308", type: "BookModule", applicableLevel: "OB06", contentJson: "{\"contentRequirement\": \"2.1 运用资料，描述人口分布、迁移的特点，说明其影响因素，并结合实例，解释区域资源环境承载力、人口合理容量。2.2 结合实例，解释城镇和乡村内部的空间结构，说明合理利用城乡空间、城乡融合发展的意义。2.3 结合实例，说明地域文化在城乡景观中的体现。2.4 运用资料，说明不同地区城镇化的过程和特点，以及城镇化的利弊。2.5 结合实例，说明工业、农业和服务业的区位因素。2.6 结合实例，说明运输方式和交通布局与区域发展的关系。2.7 运用不同类型的专题地图，说明国家某项重大发展战略的地理背景。2.8 结合实例，说明维护国家海洋权益和重视海洋发展战略的重要意义。2.9 运用资料，说明南海诸岛是中国领土的组成部分，钓鱼岛及其附属岛屿是中国固有领土，中国对其拥有无可争辩的主权。2.10 运用资料，归纳人类面临的主要环境问题，说明协调人地关系和可持续发展的主要途径。2.11 通过探究有关人文地理问题，了解地理信息技术的应用。\", \"achievementRequirement\": \"学习本模块之后，学生能够运用地理信息技术或其他地理工具，收集或分析真实情境中有关人口、城乡、产业活动等人文地理数据、图表和地图，并据此描述人文地理事物的空间现象及其变化。能够用实例解释不同地方的人们如何对产业活动进行区位选择，展现出对人类活动与资源环境关系的判断力。在地理社会调查等实践活动中，能够运用恰当的方法，认真完成预设的各项任务，展现出求真务实的科学态度和行动力。\", \"teachingTip\": \"以基本社会经济活动的空间特点为线索组织教学内容。采用案例学习的方法，具体分析体现人类活动与自然环境关系的典型实例，指导学生收集、运用人文地理信息，掌握分析人文地理问题的基本思路和方法。注重运用社会调查等方法，帮助学生理解党和国家提出的新发展理念，提高联系实际解决现实问题的能力。\", \"period\": \"\", \"courseModule\": \"必修课程\"}", CJ_contentRequirement: "2.1 运用资料，描述人口分布、迁移的特点，说明其影响因素，并结合实例，解释区域资源环境承载力、人口合理容量。2.2 结合实例，解释城镇和乡村内部的空间结构，说明合理利用城乡空间、城乡融合发展的意义。2.3 结合实例，说明地域文化在城乡景观中的体现。2.4 运用资料，说明不同地区城镇化的过程和特点，以及城镇化的利弊。2.5 结合实例，说明工业、农业和服务业的区位因素。2.6 结合实例，说明运输方式和交通布局与区域发展的关系。2.7 运用不同类型的专题地图，说明国家某项重大发展战略的地理背景。2.8 结合实例，说明维护国家海洋权益和重视海洋发展战略的重要意义。2.9 运用资料，说明南海诸岛是中国领土的组成部分，钓鱼岛及其附属岛屿是中国固有领土，中国对其拥有无可争辩的主权。2.10 运用资料，归纳人类面临的主要环境问题，说明协调人地关系和可持续发展的主要途径。2.11 通过探究有关人文地理问题，了解地理信息技术的应用。", CJ_achievementRequirement: "学习本模块之后，学生能够运用地理信息技术或其他地理工具，收集或分析真实情境中有关人口、城乡、产业活动等人文地理数据、图表和地图，并据此描述人文地理事物的空间现象及其变化。能够用实例解释不同地方的人们如何对产业活动进行区位选择，展现出对人类活动与资源环境关系的判断力。在地理社会调查等实践活动中，能够运用恰当的方法，认真完成预设的各项任务，展现出求真务实的科学态度和行动力。", CJ_teachingTip: "以基本社会经济活动的空间特点为线索组织教学内容。采用案例学习的方法，具体分析体现人类活动与自然环境关系的典型实例，指导学生收集、运用人文地理信息，掌握分析人文地理问题的基本思路和方法。注重运用社会调查等方法，帮助学生理解党和国家提出的新发展理念，提高联系实际解决现实问题的能力。", CJ_period: "", CJ_courseModule: "必修课程"};

MERGE (n:BookModule {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03", title: "选择性必修1 自然地理基础", description: "本模块主要包括三方面内容：地球运动，自然环境中的物质运动与能量交换，自然环境的整体性和差异性。本模块旨在帮助学生了解人类生存的自然环境特征，理解自然环境及其演变过程对人类活动的影响，提升认识自然环境的能力水平，树立人与自然和谐共生的理念。", subject: "SB0308", type: "BookModule", applicableLevel: "OB06", contentJson: "{\"contentRequirement\": \"1.1 结合实例，说明地球运动的地理意义。1.2 运用示意图，说明岩石圈物质循环过程。1.3 结合实例，解释内力和外力对地表形态变化的影响，并说明人类活动与地表形态的关系。1.4 运用示意图，分析锋、低压（气旋）、高压（反气旋）等天气系统，并运用简易天气图，解释常见天气现象的成因。1.5 运用示意图，说明气压带、风带的分布，并分析气压带、风带对气候形成的作用，以及气候对自然地理景观形成的影响。1.6 绘制示意图，解释各类陆地水体之间的相互关系。1.7 运用世界洋流分布图，说明世界洋流的分布规律，并举例说明洋流对地理环境和人类活动的影响。1.8 运用图表，分析海一气相互作用对全球水热平衡的影响，解释厄尔尼诺、拉尼娜现象对全球气候和人类活动的影响。1.9 运用图表并结合实例，分析自然环境的整体性和差异性。\", \"achievementRequirement\": \"学习本模块之后，学生能够运用地理信息技术或其他地理工具，从自然环境要素的物质运动和能量交换的角度，分析现实世界一些自然现象的成因、过程及其对人类活动的影响。能够运用自然环境整体性和差异性规律，联系特定区域实例说明区域整体自然环境特征、区域内部自然环境差异，以及人们因地制宜的生产生活智慧。在地理野外考察、地理实验等实践活动中，能够熟练运用恰当的方法，认真完成预设的各项任务，展现出求真务实的科学态度和行动力。\", \"teachingTip\": \"以自然环境系统及其要素发展、演变过程对人类活动的影响为线索组织教学。提倡用任务驱动、案例分析、专题研讨等方法，设计特定的学习情境，引导学生关注自然环境各要素的特征、演变过程及自然环境的整体性和差异性。注重运用地理信息技术，采取野外考察、地理实验等方法，提高学生解释地理事物和现象与认识自然环境的能力。\", \"period\": \"\", \"courseModule\": \"选择性必修课程\"}", CJ_contentRequirement: "1.1 结合实例，说明地球运动的地理意义。1.2 运用示意图，说明岩石圈物质循环过程。1.3 结合实例，解释内力和外力对地表形态变化的影响，并说明人类活动与地表形态的关系。1.4 运用示意图，分析锋、低压（气旋）、高压（反气旋）等天气系统，并运用简易天气图，解释常见天气现象的成因。1.5 运用示意图，说明气压带、风带的分布，并分析气压带、风带对气候形成的作用，以及气候对自然地理景观形成的影响。1.6 绘制示意图，解释各类陆地水体之间的相互关系。1.7 运用世界洋流分布图，说明世界洋流的分布规律，并举例说明洋流对地理环境和人类活动的影响。1.8 运用图表，分析海一气相互作用对全球水热平衡的影响，解释厄尔尼诺、拉尼娜现象对全球气候和人类活动的影响。1.9 运用图表并结合实例，分析自然环境的整体性和差异性。", CJ_achievementRequirement: "学习本模块之后，学生能够运用地理信息技术或其他地理工具，从自然环境要素的物质运动和能量交换的角度，分析现实世界一些自然现象的成因、过程及其对人类活动的影响。能够运用自然环境整体性和差异性规律，联系特定区域实例说明区域整体自然环境特征、区域内部自然环境差异，以及人们因地制宜的生产生活智慧。在地理野外考察、地理实验等实践活动中，能够熟练运用恰当的方法，认真完成预设的各项任务，展现出求真务实的科学态度和行动力。", CJ_teachingTip: "以自然环境系统及其要素发展、演变过程对人类活动的影响为线索组织教学。提倡用任务驱动、案例分析、专题研讨等方法，设计特定的学习情境，引导学生关注自然环境各要素的特征、演变过程及自然环境的整体性和差异性。注重运用地理信息技术，采取野外考察、地理实验等方法，提高学生解释地理事物和现象与认识自然环境的能力。", CJ_period: "", CJ_courseModule: "选择性必修课程"};

MERGE (n:BookModule {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:04"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:04", title: "选择性必修2 区域发展", description: "本模块主要包括三方面内容：区域的概念和类型，区域发展，区域协调。本模块旨在帮助学生了解区域特征及发展路径，理解区域高质量发展的重要意义，树立因地制宜、优势互补、人地和谐的区城协调发展观，增强人类命运共同体意识。", subject: "SB0308", type: "BookModule", applicableLevel: "OB06", contentJson: "{\"contentRequirement\": \"2.1 结合实例，说明区域的含义及类型。2.2 结合实例，从地理环境整体性和区域关联的角度，比较不同区域发展的异同，说明因地制宜对于区域发展的重要意义。2.3 以某大都市为例，从区域空间组织的视角出发，说明大都市辐射功能。2.4 以某地区为例，分析地区产业结构变化过程及原因。2.5 以某资源枯竭型城市为例，分析该类城市转型发展的方向。2.6 以某生态脆弱区为例，说明该类地区存在的环境与发展问题，以及综合治理措施。2.7 以某区域为例，说明产业转移和资源跨区域调配对区域发展的影响。2.8 以某流域为例，说明流域内部协作开发水资源、协调发展、保护环境的意义。2.9 结合一带一路建设，说明国际合作的重要意义。\", \"achievementRequirement\": \"学习本模块之后，学生能够运用地理信息技术或其他地理工具，通过案例分析、数据采集、实地调查等方式，比较、归纳不同区域发展的异同。能够根据不同类型区域的发展条件和现状，分类思考和分析区域发展问题及原因。能够从人地协调的角度，对不同类型区域的发展路径作出简要解释。在地理社会调查等实践活动中，能够熟练运用恰当的方法，认真完成预设的各项任务，展现出求真务实的科学态度和行动力。\", \"teachingTip\": \"以认识区域地理条件、区域特征和发展方向为线索组织教学内容。结合典型的或身边的案例，也可结合我国区域协调发展战略，引导学生分析区域及其发展的多样性，理解人地协调是区域可持续发展的必然选择。给学生提供基本的区域数据来源，帮助学生了解这些数据对分析社会经济和人地关系问题的支撑作用。依据调查资料，探究区域整体性和差异性、区域变化及发展方向等地理问题。\", \"period\": \"\", \"courseModule\": \"选择性必修课程\"}", CJ_contentRequirement: "2.1 结合实例，说明区域的含义及类型。2.2 结合实例，从地理环境整体性和区域关联的角度，比较不同区域发展的异同，说明因地制宜对于区域发展的重要意义。2.3 以某大都市为例，从区域空间组织的视角出发，说明大都市辐射功能。2.4 以某地区为例，分析地区产业结构变化过程及原因。2.5 以某资源枯竭型城市为例，分析该类城市转型发展的方向。2.6 以某生态脆弱区为例，说明该类地区存在的环境与发展问题，以及综合治理措施。2.7 以某区域为例，说明产业转移和资源跨区域调配对区域发展的影响。2.8 以某流域为例，说明流域内部协作开发水资源、协调发展、保护环境的意义。2.9 结合一带一路建设，说明国际合作的重要意义。", CJ_achievementRequirement: "学习本模块之后，学生能够运用地理信息技术或其他地理工具，通过案例分析、数据采集、实地调查等方式，比较、归纳不同区域发展的异同。能够根据不同类型区域的发展条件和现状，分类思考和分析区域发展问题及原因。能够从人地协调的角度，对不同类型区域的发展路径作出简要解释。在地理社会调查等实践活动中，能够熟练运用恰当的方法，认真完成预设的各项任务，展现出求真务实的科学态度和行动力。", CJ_teachingTip: "以认识区域地理条件、区域特征和发展方向为线索组织教学内容。结合典型的或身边的案例，也可结合我国区域协调发展战略，引导学生分析区域及其发展的多样性，理解人地协调是区域可持续发展的必然选择。给学生提供基本的区域数据来源，帮助学生了解这些数据对分析社会经济和人地关系问题的支撑作用。依据调查资料，探究区域整体性和差异性、区域变化及发展方向等地理问题。", CJ_period: "", CJ_courseModule: "选择性必修课程"};

MERGE (n:BookModule {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:05"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:05", title: "选择性必修3 资源、环境与国家安全", description: "本模块主要包括三方面内容：自然资源开发利用，环境保护，资源、环境对国家安全的重要意义。本模块旨在帮助学生了解资源、环境与国家安全的关系，增强保护资源与环境的意识，树立总体国家安全观。", subject: "SB0308", type: "BookModule", applicableLevel: "OB06", contentJson: "{\"contentRequirement\": \"3.1 结合实例，说明自然资源的数量、质量、空间分布与人类活动的关系。3.2 以某种战略性矿产资源为例，分析其分布特点及开发利用现状。3.3 运用图表，描述中国耕地资源的分布，说明其开发利用现状，以及耕地保护与粮食安全的关系。3.4 结合实例，说明海洋空间资源开发对国家安全的影响。3.5 结合实例，运用碳循环和温室效应原理，分析碳排放对环境的影响，说明碳减排国际合作的重要性。3.6 结合实例，说明设立自然保护地对生态安全的意义。3.7 结合实例，说明污染物跨境转移对环境安全的影响。3.8 举例说明环境保护政策、措施与国家安全的关系。\", \"achievementRequirement\": \"学习本模块之后，学生能够运用地理信息技术或其他地理工具，通过收集案例、分析数据等方式，归纳、说明全球性或区域性的资源和环境问题及其对国家安全的影响。能够用事实说明我国自然资源利用现状及政策和法规对维护国家安全的意义。能够结合家乡出现的自然资源、生态环境问题，分析成因，有理有据地提出可行性对策。在地理野外考察、社会调查等实践活动中，能够熟练运用恰当的方法，认真完成预设的各项任务，展现出求真务实的科学态度和行动力。\", \"teachingTip\": \"以资源、环境与国家安全的关系为线索组织教学内容。提倡精选案例，创设真实情境，采用图表判读、综合分析等方法，帮助学生了解资源、环境问题的基本内涵，以及资源、环境问题对国家安全的重要影响。组织学生开展社会调查和专题探究，例如：调查家乡的自然资源、生态环境状况，讨论节约资源和保护环境的重要意义，树立绿水青山就是金山银山的理念；探究我国建设国家公园的意义；研讨我国积极稳妥推进碳达峰碳中和战略对人类社会可持续发展的贡献。\", \"period\": \"\", \"courseModule\": \"选择性必修课程\"}", CJ_contentRequirement: "3.1 结合实例，说明自然资源的数量、质量、空间分布与人类活动的关系。3.2 以某种战略性矿产资源为例，分析其分布特点及开发利用现状。3.3 运用图表，描述中国耕地资源的分布，说明其开发利用现状，以及耕地保护与粮食安全的关系。3.4 结合实例，说明海洋空间资源开发对国家安全的影响。3.5 结合实例，运用碳循环和温室效应原理，分析碳排放对环境的影响，说明碳减排国际合作的重要性。3.6 结合实例，说明设立自然保护地对生态安全的意义。3.7 结合实例，说明污染物跨境转移对环境安全的影响。3.8 举例说明环境保护政策、措施与国家安全的关系。", CJ_achievementRequirement: "学习本模块之后，学生能够运用地理信息技术或其他地理工具，通过收集案例、分析数据等方式，归纳、说明全球性或区域性的资源和环境问题及其对国家安全的影响。能够用事实说明我国自然资源利用现状及政策和法规对维护国家安全的意义。能够结合家乡出现的自然资源、生态环境问题，分析成因，有理有据地提出可行性对策。在地理野外考察、社会调查等实践活动中，能够熟练运用恰当的方法，认真完成预设的各项任务，展现出求真务实的科学态度和行动力。", CJ_teachingTip: "以资源、环境与国家安全的关系为线索组织教学内容。提倡精选案例，创设真实情境，采用图表判读、综合分析等方法，帮助学生了解资源、环境问题的基本内涵，以及资源、环境问题对国家安全的重要影响。组织学生开展社会调查和专题探究，例如：调查家乡的自然资源、生态环境状况，讨论节约资源和保护环境的重要意义，树立绿水青山就是金山银山的理念；探究我国建设国家公园的意义；研讨我国积极稳妥推进碳达峰碳中和战略对人类社会可持续发展的贡献。", CJ_period: "", CJ_courseModule: "选择性必修课程"};

MERGE (n:BookModule {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06", title: "选修1 天文学基础", description: "本模块主要包括四部分内容：天体观测，地月系和太阳系，恒星和银河系，宇宙。本模块旨在帮助学生形成对天文现象的正确认识，激发探索宇宙奥秘的兴趣，逐步建立科学的宇宙观。", subject: "SB0308", type: "BookModule", applicableLevel: "OB06", contentJson: "{\"contentRequirement\": \"1.1 在星图、天球仪上认识主要星座，辨认四季星空的主要星座，说出部分星座的地理导向意义。1.2 了解现代天文学工具。1.3 简述太阳系的发现和起源。1.4 运用太阳系模式图和其他资料，描述太阳系的结构和行星运动特征。1.5 运用图表、软件等资料，简述地月系的组成及其运动特征。1.6 观察并描述月相、月食、日食、潮汐等现象，并运用图表等资料解释其成因。1.7 绘制太阳大气的圈层结构图，说明太阳活动及其对地球的影响。1.8 运用图表等资料，描述恒星概况，说明其演化过程。1.9 观察并运用图表等资料，描述银河系的外貌和结构，说明其演化过程。1.10 简述宇宙大爆炸假说的主要观点，描述宇宙的基本组分。\", \"achievementRequirement\": \"\", \"teachingTip\": \"帮助学生形成对天文现象的正确认识，逐步建立科学的宇宙观。组织学生观察星空，参观天文馆、天文台，请科学家作讲座等，提高学生对天文学的兴趣，激发探索宇宙的愿望。组织阅读、辩论、撰写天文学小论文等活动，鼓励学生表达对天体形成、宇宙演化的看法。帮助学生掌握天象拍摄的基本方法，制作简单的天文模型，如月相变化模型。在课堂上讲述星云、星系鉴赏等内容，增强学生对宇宙天体的欣赏能力。\", \"period\": \"\", \"courseModule\": \"选修课程\"}", CJ_contentRequirement: "1.1 在星图、天球仪上认识主要星座，辨认四季星空的主要星座，说出部分星座的地理导向意义。1.2 了解现代天文学工具。1.3 简述太阳系的发现和起源。1.4 运用太阳系模式图和其他资料，描述太阳系的结构和行星运动特征。1.5 运用图表、软件等资料，简述地月系的组成及其运动特征。1.6 观察并描述月相、月食、日食、潮汐等现象，并运用图表等资料解释其成因。1.7 绘制太阳大气的圈层结构图，说明太阳活动及其对地球的影响。1.8 运用图表等资料，描述恒星概况，说明其演化过程。1.9 观察并运用图表等资料，描述银河系的外貌和结构，说明其演化过程。1.10 简述宇宙大爆炸假说的主要观点，描述宇宙的基本组分。", CJ_achievementRequirement: "", CJ_teachingTip: "帮助学生形成对天文现象的正确认识，逐步建立科学的宇宙观。组织学生观察星空，参观天文馆、天文台，请科学家作讲座等，提高学生对天文学的兴趣，激发探索宇宙的愿望。组织阅读、辩论、撰写天文学小论文等活动，鼓励学生表达对天体形成、宇宙演化的看法。帮助学生掌握天象拍摄的基本方法，制作简单的天文模型，如月相变化模型。在课堂上讲述星云、星系鉴赏等内容，增强学生对宇宙天体的欣赏能力。", CJ_period: "", CJ_courseModule: "选修课程"};

MERGE (n:BookModule {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07", title: "选修2 海洋地理", description: "本模块主要包括四方面内容：海岸与海洋，海洋资源与开发，海洋灾害与污染，海洋权益。本模块旨在帮助学生感知海洋的浩瀚，认识不同海洋区域的共性和差异性，理解海洋对人类的重要意义，以及人类对海洋的深刻影响。", subject: "SB0308", type: "BookModule", applicableLevel: "OB06", contentJson: "{\"contentRequirement\": \"2.1 运用图片资料，说明海岸的主要类型以及从海岸到海洋的地形变化特点。2.2 观察海底地形图，运用大陆漂移学说、海底扩张理论与板块构造学说原理，分析海底地形的特点和形成过程。2.3 说明从近海到大洋的海水水文特征以及海水运动形式。2.4 解释海洋与大气的相互作用关系，运用图表说明其对全球水循环和水热平衡的影响。2.5 说明主要海洋资源的基本特点和应用前景。2.6 举例说明当前海洋资源开发重大技术的应用。2.7 举例说明主要的海洋灾害及其成因，以及相应的防灾减灾举措。2.8 说明海洋污染的形成及其对海洋环境的危害，简述保护海洋环境的主要对策。2.9 结合实例，说明沿海地区的开发对国家经济发展的重要作用。2.10 根据《联合国海洋法公约》，解释内水、领海、毗连区、专属经济区、大陆架、公海和国际海底区域等概念。2.11 结合近些年发生的海洋争端事件，了解钓鱼岛及其附属岛屿、南海诸岛属于中国的立场和依据，说明维护国家领土主权和海洋权益的重要性。\", \"achievementRequirement\": \"\", \"teachingTip\": \"帮助学生从海岸到海洋、海表面到海底两大空间维度认识海洋，关注海洋自然特征、海洋资源、海洋保护、海洋权益等问题。引导学生运用综合分析的方法，理解人类与海洋、海洋与大气的相互关系，感知不同海洋区域的差异性，增强海洋意识，了解坚持陆海统筹、建设海洋强国的意义。有条件的学校尽可能在海洋自然环境或与海洋事件有关的真实情境下教学。\", \"period\": \"\", \"courseModule\": \"选修课程\"}", CJ_contentRequirement: "2.1 运用图片资料，说明海岸的主要类型以及从海岸到海洋的地形变化特点。2.2 观察海底地形图，运用大陆漂移学说、海底扩张理论与板块构造学说原理，分析海底地形的特点和形成过程。2.3 说明从近海到大洋的海水水文特征以及海水运动形式。2.4 解释海洋与大气的相互作用关系，运用图表说明其对全球水循环和水热平衡的影响。2.5 说明主要海洋资源的基本特点和应用前景。2.6 举例说明当前海洋资源开发重大技术的应用。2.7 举例说明主要的海洋灾害及其成因，以及相应的防灾减灾举措。2.8 说明海洋污染的形成及其对海洋环境的危害，简述保护海洋环境的主要对策。2.9 结合实例，说明沿海地区的开发对国家经济发展的重要作用。2.10 根据《联合国海洋法公约》，解释内水、领海、毗连区、专属经济区、大陆架、公海和国际海底区域等概念。2.11 结合近些年发生的海洋争端事件，了解钓鱼岛及其附属岛屿、南海诸岛属于中国的立场和依据，说明维护国家领土主权和海洋权益的重要性。", CJ_achievementRequirement: "", CJ_teachingTip: "帮助学生从海岸到海洋、海表面到海底两大空间维度认识海洋，关注海洋自然特征、海洋资源、海洋保护、海洋权益等问题。引导学生运用综合分析的方法，理解人类与海洋、海洋与大气的相互关系，感知不同海洋区域的差异性，增强海洋意识，了解坚持陆海统筹、建设海洋强国的意义。有条件的学校尽可能在海洋自然环境或与海洋事件有关的真实情境下教学。", CJ_period: "", CJ_courseModule: "选修课程"};

MERGE (n:BookModule {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08", title: "选修3 自然灾害与防治", description: "本模块主要包括四方面内容：自然灾害的构成要素，主要自然灾害的成因、特点与危害，自然灾害的地域差异与空间分布，防灾减灾的策略与措施。本模块旨在帮助学生认识自然灾害发生与分布的规律，树立科学的灾害观与减灾意识，提高其生存能力。", subject: "SB0308", type: "BookModule", applicableLevel: "OB06", contentJson: "{\"contentRequirement\": \"3.1 说明自然灾害的类型及其对人类社会的影响。3.2 解释地震、泥石流、滑坡等地质灾害的成因与危害。3.3 分析台风、寒潮、干旱、洪涝、风暴潮等气象灾害的成因与危害。3.4 举例说明虫灾、鼠灾等生物灾害的危害。3.5 举例说明人类活动对自然灾害的影响。3.6 运用图表资料，说明世界主要自然灾害的空间分布，比较同一自然灾害危害程度的地域差异。3.7 结合实例，说明中国自然灾害多发区的环境特点。3.8 结合实例，说明某些自然灾害爆发的先兆及预报方法。3.9 以地震等自然灾害为例，列举适当的应对方法或应急措施。3.10 说明地理信息技术在自然灾害预测、灾情监测和评估中的运用。\", \"achievementRequirement\": \"\", \"teachingTip\": \"帮助学生认识自然灾害的形成机制和危害，增强防灾减灾意识。创设与自然灾害事件有关的情境，引导学生综合分析自然灾害的成因与特征，树立科学的灾害观与减灾意识。创设自然灾害危害的模拟性情境，引导学生探讨某一灾害发生前、发生时和发生后应采取的预防、自救、互救等措施。\", \"period\": \"\", \"courseModule\": \"选修课程\"}", CJ_contentRequirement: "3.1 说明自然灾害的类型及其对人类社会的影响。3.2 解释地震、泥石流、滑坡等地质灾害的成因与危害。3.3 分析台风、寒潮、干旱、洪涝、风暴潮等气象灾害的成因与危害。3.4 举例说明虫灾、鼠灾等生物灾害的危害。3.5 举例说明人类活动对自然灾害的影响。3.6 运用图表资料，说明世界主要自然灾害的空间分布，比较同一自然灾害危害程度的地域差异。3.7 结合实例，说明中国自然灾害多发区的环境特点。3.8 结合实例，说明某些自然灾害爆发的先兆及预报方法。3.9 以地震等自然灾害为例，列举适当的应对方法或应急措施。3.10 说明地理信息技术在自然灾害预测、灾情监测和评估中的运用。", CJ_achievementRequirement: "", CJ_teachingTip: "帮助学生认识自然灾害的形成机制和危害，增强防灾减灾意识。创设与自然灾害事件有关的情境，引导学生综合分析自然灾害的成因与特征，树立科学的灾害观与减灾意识。创设自然灾害危害的模拟性情境，引导学生探讨某一灾害发生前、发生时和发生后应采取的预防、自救、互救等措施。", CJ_period: "", CJ_courseModule: "选修课程"};

MERGE (n:BookModule {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09", title: "选修4 环境保护", description: "本模块主要包括五方面内容：环境问题与环境过程，水环境，大气环境，土壤环境，环境管理。本模块旨在帮助学生认识环境状况，了解环境问题的形成，以及环境保护的措施，理解加快经济社会发展全面绿色转型，健全生态环境治理体系，推进生态优先、节约集约、绿色低碳发展等，是建设美丽中国的重要举措。", subject: "SB0308", type: "BookModule", applicableLevel: "OB06", contentJson: "{\"contentRequirement\": \"4.1 简要说明地球上碳、氮、氧等元素循环的过程及其对环境的影响。4.2 运用资料，说明全球主要环境问题、环境保护与修复措施及成效。4.3 运用资料，说明中国水资源概况和水环境污染的状况，以及水污染的治理及成效。4.4 学会水质采样方法及方案设计，学会用简易方法检测水质。4.5 针对某一具体区域，设计水资源保护方案。4.6 结合实例，说明全球变暖对生态环境的影响，正确认识和把握碳达峰碳中和战略决策的重大意义。4.7 解释形成大气污染的基本机理，举例说明大气污染的危害及防治措施。4.8 结合资料，分析中国重污染天气的时空分布特征与成因，说明主要治理措施及成效。4.9 运用资料，分析中国固体废弃物污染治理和资源化利用的主要措施及成效。4.10 解释土壤污染的成因和特点，说明常见的土壤污染类型及修复成效。4.11 学会土壤样品采集方法和方案设计，了解土壤污染的检测方法，以及被污染土壤的修复方法和技术。4.12 结合实例，说明环境管理的基本内容和主要手段。\", \"achievementRequirement\": \"\", \"teachingTip\": \"帮助学生了解环境问题、环境保护与修复措施等，懂得全民共治、源头防治的重要性。除课堂讲授外，鼓励学生主动探究身边的环境问题，提出相应的解决措施。鼓励学生走访调研，例如：了解居住地附近垃圾分类情况，提出改进措施；调查学校附近农田农药、地膜、化肥的使用情况；采集农田土样，分析土壤污染情况；采集家乡河流水样，测试水质状况，提出水资源保护方案。\", \"period\": \"\", \"courseModule\": \"选修课程\"}", CJ_contentRequirement: "4.1 简要说明地球上碳、氮、氧等元素循环的过程及其对环境的影响。4.2 运用资料，说明全球主要环境问题、环境保护与修复措施及成效。4.3 运用资料，说明中国水资源概况和水环境污染的状况，以及水污染的治理及成效。4.4 学会水质采样方法及方案设计，学会用简易方法检测水质。4.5 针对某一具体区域，设计水资源保护方案。4.6 结合实例，说明全球变暖对生态环境的影响，正确认识和把握碳达峰碳中和战略决策的重大意义。4.7 解释形成大气污染的基本机理，举例说明大气污染的危害及防治措施。4.8 结合资料，分析中国重污染天气的时空分布特征与成因，说明主要治理措施及成效。4.9 运用资料，分析中国固体废弃物污染治理和资源化利用的主要措施及成效。4.10 解释土壤污染的成因和特点，说明常见的土壤污染类型及修复成效。4.11 学会土壤样品采集方法和方案设计，了解土壤污染的检测方法，以及被污染土壤的修复方法和技术。4.12 结合实例，说明环境管理的基本内容和主要手段。", CJ_achievementRequirement: "", CJ_teachingTip: "帮助学生了解环境问题、环境保护与修复措施等，懂得全民共治、源头防治的重要性。除课堂讲授外，鼓励学生主动探究身边的环境问题，提出相应的解决措施。鼓励学生走访调研，例如：了解居住地附近垃圾分类情况，提出改进措施；调查学校附近农田农药、地膜、化肥的使用情况；采集农田土样，分析土壤污染情况；采集家乡河流水样，测试水质状况，提出水资源保护方案。", CJ_period: "", CJ_courseModule: "选修课程"};

MERGE (n:BookModule {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10", title: "选修5 旅游地理", description: "本模块主要包括三方面内容：旅游资源及其空间分布，旅游产业活动及其空间分布，旅游资源和旅游地的保护。本模块旨在帮助学生形成发现区域旅游资源的意识，学会欣赏区域环境差异带来的美感，成为尊崇自然、尊重文化的人。", subject: "SB0308", type: "BookModule", applicableLevel: "OB06", contentJson: "{\"contentRequirement\": \"5.1 描述旅游资源的分类和内涵。5.2 举例说明某种旅游资源的成因和价值。5.3 区别自然遗产和文化遗产的基本概念，结合实例说明保护世界遗产的方式和意义。5.4 结合实例，评价旅游资源的开发条件。5.5 结合实例，分析旅游目的地和旅游客源地之间的关系。5.6 结合实例，分析旅游业对区域经济、社会、文化发展的带动作用。5.7 举例说明旅游开发过程中的环境保护措施。5.8 结合实例，设计旅游方案，包括旅游目的地、时间规划、交通路线、游览内容、相关准备等。5.9 举例说明自然地理条件与旅游安全的关系，以及对应的安全措施。\", \"achievementRequirement\": \"\", \"teachingTip\": \"帮助学生初步掌握发掘区域自然和人文旅游资源的基本方法，以及旅游资源评价和分级的简单方法。注重创设情境，帮助学生了解旅游资源的开发条件，以及旅游开发对区域经济、社会、文化和环境的影响；尝试设计旅游活动的时间和路线。利用角色扮演，了解游客、旅游地居民、开发商等对待旅游地开发与保护的立场，思考旅游地可持续发展的问题。观看相关的影视资料或进行实地考察，提升学生对旅游地自然和人文景观的欣赏能力和品位。\", \"period\": \"\", \"courseModule\": \"选修课程\"}", CJ_contentRequirement: "5.1 描述旅游资源的分类和内涵。5.2 举例说明某种旅游资源的成因和价值。5.3 区别自然遗产和文化遗产的基本概念，结合实例说明保护世界遗产的方式和意义。5.4 结合实例，评价旅游资源的开发条件。5.5 结合实例，分析旅游目的地和旅游客源地之间的关系。5.6 结合实例，分析旅游业对区域经济、社会、文化发展的带动作用。5.7 举例说明旅游开发过程中的环境保护措施。5.8 结合实例，设计旅游方案，包括旅游目的地、时间规划、交通路线、游览内容、相关准备等。5.9 举例说明自然地理条件与旅游安全的关系，以及对应的安全措施。", CJ_achievementRequirement: "", CJ_teachingTip: "帮助学生初步掌握发掘区域自然和人文旅游资源的基本方法，以及旅游资源评价和分级的简单方法。注重创设情境，帮助学生了解旅游资源的开发条件，以及旅游开发对区域经济、社会、文化和环境的影响；尝试设计旅游活动的时间和路线。利用角色扮演，了解游客、旅游地居民、开发商等对待旅游地开发与保护的立场，思考旅游地可持续发展的问题。观看相关的影视资料或进行实地考察，提升学生对旅游地自然和人文景观的欣赏能力和品位。", CJ_period: "", CJ_courseModule: "选修课程"};

MERGE (n:BookModule {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11", title: "选修6 城乡规划", description: "本模块主要包括三方面内容：城镇和乡村，城镇化，城乡布局和规划。本模块旨在帮助学生形成城乡融合发展观念，以及在城乡规划中保护环境和传统文化的意识。", subject: "SB0308", type: "BookModule", applicableLevel: "OB06", contentJson: "{\"contentRequirement\": \"6.1 举例说明城市的形成和发展，归纳城市在不同阶段的基本特征。6.2 举例说明不同地理环境中乡村聚落的特征，并分析其成因。6.3 结合实例，分析城镇与乡村的空间形态和景观特色。6.4 运用资料，阐述新型城镇化的内涵和意义。6.5 举例说明促进城镇合理布局和协调发展的途径。6.6 举例说明交通运输对城市分布和空间形态的影响。6.7 运用资料，说明城乡规划的主要作用和重要意义，了解城乡总体规划的基本方法。6.8 结合实例，说明城乡规划中工业、农业、交通运输业、商业的布局原理。6.9 结合实例，评价居住地的区位与环境特点。6.10 运用资料，说明保护传统文化和特色景观应采取的对策。\", \"achievementRequirement\": \"\", \"teachingTip\": \"帮助学生正确认识城乡规划的基本内涵，了解城乡规划的原理和方法。除课堂讲授外，注重组织学生收集资料，进行案例分析，开展专题探究，如城乡融合、城市更新、乡村片区组团等，培养学生的学习兴趣。可以运用有关资料，开展城乡规划的模拟活动，让学生以规划者的身份，提交规划方案，开展比较评价。还可以组织学生开展关于社区公共服务设施布局或乡村振兴规划的问卷调查，撰写调查报告。\", \"period\": \"\", \"courseModule\": \"选修课程\"}", CJ_contentRequirement: "6.1 举例说明城市的形成和发展，归纳城市在不同阶段的基本特征。6.2 举例说明不同地理环境中乡村聚落的特征，并分析其成因。6.3 结合实例，分析城镇与乡村的空间形态和景观特色。6.4 运用资料，阐述新型城镇化的内涵和意义。6.5 举例说明促进城镇合理布局和协调发展的途径。6.6 举例说明交通运输对城市分布和空间形态的影响。6.7 运用资料，说明城乡规划的主要作用和重要意义，了解城乡总体规划的基本方法。6.8 结合实例，说明城乡规划中工业、农业、交通运输业、商业的布局原理。6.9 结合实例，评价居住地的区位与环境特点。6.10 运用资料，说明保护传统文化和特色景观应采取的对策。", CJ_achievementRequirement: "", CJ_teachingTip: "帮助学生正确认识城乡规划的基本内涵，了解城乡规划的原理和方法。除课堂讲授外，注重组织学生收集资料，进行案例分析，开展专题探究，如城乡融合、城市更新、乡村片区组团等，培养学生的学习兴趣。可以运用有关资料，开展城乡规划的模拟活动，让学生以规划者的身份，提交规划方案，开展比较评价。还可以组织学生开展关于社区公共服务设施布局或乡村振兴规划的问卷调查，撰写调查报告。", CJ_period: "", CJ_courseModule: "选修课程"};

MERGE (n:BookModule {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12", title: "选修7 政治地理", description: "本模块主要包括三方面内容：国家领土观念，综合国力，世界政治地理格局。本模块旨在帮助学生从国家领土观念、综合国力、世界政治地理格局等方面，认识当今世界政治地理的基本问题和背景，理解国际政治、经济发展的变化和趋势，认识我国周边地缘政治的主要问题和背景，懂得和平发展、互利共赢的重要性。", subject: "SB0308", type: "BookModule", applicableLevel: "OB06", contentJson: "{\"contentRequirement\": \"7.1 解释国家领土的概念，从领土的角度说明国家的基本特征。7.2 说明中国国家版图的空间构成，认识国家版图统一、完整的重要意义。7.3 结合首都选址实例，说明首都的职能与作用。7.4 结合实例，了解边界纠纷与解决途径。7.5 解释综合国力的概念，并举例说明综合国力的基本要素。7.6 结合实例，说明分析综合国力的方法，以及提高综合国力的主要途径。7.7 描述当代国际政治格局及世界政治多极化形势，认识构建人类命运共同体的重要意义。7.8 结合实例，说明国际合作与冲突的背景、表现形式和前景。7.9 结合实例，说明目前世界经济全球化趋势，以及中国的基本立场和应对措施。7.10 结合实例，说明国际组织、区域组织、跨国组织在国际政治、经济中的作用。\", \"achievementRequirement\": \"\", \"teachingTip\": \"帮助学生获得对政治地理现象的感知，提示学生经常观看、阅读国际新闻，创设以问题解决为中心的国际政治地理学习情境。采用角色扮演、时事分析、社会调查等方法，使学生增强对特定政治地理现象的体验和感受。结合线上和线下学习，引导学生关注世界和平、全球发展、国际秩序等问题。\", \"period\": \"\", \"courseModule\": \"选修课程\"}", CJ_contentRequirement: "7.1 解释国家领土的概念，从领土的角度说明国家的基本特征。7.2 说明中国国家版图的空间构成，认识国家版图统一、完整的重要意义。7.3 结合首都选址实例，说明首都的职能与作用。7.4 结合实例，了解边界纠纷与解决途径。7.5 解释综合国力的概念，并举例说明综合国力的基本要素。7.6 结合实例，说明分析综合国力的方法，以及提高综合国力的主要途径。7.7 描述当代国际政治格局及世界政治多极化形势，认识构建人类命运共同体的重要意义。7.8 结合实例，说明国际合作与冲突的背景、表现形式和前景。7.9 结合实例，说明目前世界经济全球化趋势，以及中国的基本立场和应对措施。7.10 结合实例，说明国际组织、区域组织、跨国组织在国际政治、经济中的作用。", CJ_achievementRequirement: "", CJ_teachingTip: "帮助学生获得对政治地理现象的感知，提示学生经常观看、阅读国际新闻，创设以问题解决为中心的国际政治地理学习情境。采用角色扮演、时事分析、社会调查等方法，使学生增强对特定政治地理现象的体验和感受。结合线上和线下学习，引导学生关注世界和平、全球发展、国际秩序等问题。", CJ_period: "", CJ_courseModule: "选修课程"};

MERGE (n:BookModule {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13", title: "选修8 地理信息技术应用", description: "本模块主要包括四方面内容：地理信息系统（GIS），遥感（RS），全球卫星导航系统（GNSS），数字化生存。本模块旨在帮助学生掌握初步的数字化生存技能，在生活或工作中学会用电子地图、遥感、定位系统等解决问题，并会使用地理信息技术分析地理问题。", subject: "SB0308", type: "BookModule", applicableLevel: "OB06", contentJson: "{\"contentRequirement\": \"8.1 描述地理信息技术的基本内容。8.2 解释数字地球、数字城市等概念，说明其对人们生产、生活的影响。8.3 了解数字地图的概念，说出常见的地理信息系统软件名称和基本特点。8.4 解释地图数字化的过程，学会建立地理信息系统数据表。8.5 学会在地理信息系统软件中进行简单的条件查询，分析地理要素的分布规律。8.6 学会使用地理信息系统软件制作人口、资源分布等相关专题地图。8.7 解释遥感的基本原理，并结合遥感图像说明遥感的基本类型。8.8 说明遥感图像判读的基本原理和方法，判读某地的遥感图像。8.9 解释全球卫星导航系统的基本原理，说出主要的卫星导航系统。8.10 学会运用北斗卫星导航系统（BDS）或其他全球卫星导航系统（GNSS）进行定位、路径查询等操作。\", \"achievementRequirement\": \"\", \"teachingTip\": \"帮助学生将理论与实践相结合，提倡上机操作。使用任务驱动教学法、小组合作学习法、探究学习法等，运用地理信息系统、全球卫星导航系统、遥感图像等，帮助学生学习和掌握相关知识与技能。\", \"period\": \"\", \"courseModule\": \"选修课程\"}", CJ_contentRequirement: "8.1 描述地理信息技术的基本内容。8.2 解释数字地球、数字城市等概念，说明其对人们生产、生活的影响。8.3 了解数字地图的概念，说出常见的地理信息系统软件名称和基本特点。8.4 解释地图数字化的过程，学会建立地理信息系统数据表。8.5 学会在地理信息系统软件中进行简单的条件查询，分析地理要素的分布规律。8.6 学会使用地理信息系统软件制作人口、资源分布等相关专题地图。8.7 解释遥感的基本原理，并结合遥感图像说明遥感的基本类型。8.8 说明遥感图像判读的基本原理和方法，判读某地的遥感图像。8.9 解释全球卫星导航系统的基本原理，说出主要的卫星导航系统。8.10 学会运用北斗卫星导航系统（BDS）或其他全球卫星导航系统（GNSS）进行定位、路径查询等操作。", CJ_achievementRequirement: "", CJ_teachingTip: "帮助学生将理论与实践相结合，提倡上机操作。使用任务驱动教学法、小组合作学习法、探究学习法等，运用地理信息系统、全球卫星导航系统、遥感图像等，帮助学生学习和掌握相关知识与技能。", CJ_period: "", CJ_courseModule: "选修课程"};

MERGE (n:BookModule {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14", title: "选修9 地理野外实习", description: "本模块主要包括四方面内容：考察工具的应用，野外观察、发现与欣赏，野外地理信息获取与样品采集，考察报告撰写与交流。本模块旨在通过实践训练，提升学生使用各种工具获取野外地理信息，观察、发现、提出并获取证据，分析论证地理问题的能力，培养学生欣赏大自然的情趣。", subject: "SB0308", type: "BookModule", applicableLevel: "OB06", contentJson: "{\"contentRequirement\": \"9.1 学会运用多种手段收集和提取地理信息，设计野外实习方案，了解野外生存常识。9.2 运用地理工具在野外进行定向、定位并获取野外地理信息。9.3 阅读地形图、地质构造图以及遥感图像等，识别主要地形区、基本地质构造和地貌特点。9.4 观察某地区地质、地貌、植被、土地利用方式等景观要素，绘制示意图及剖面图，分析影响景观形成的主要因素，以及景观要素间的相互关系。9.5 学会在野外观察、测量和分析地质、地貌基本形态的方法，并采集样品。9.6 识别主要造岩矿物和常见岩石，认识不同性质岩石对地貌发育的影响。9.7 在野外观察某种地貌，推断其形成过程。9.8 学会收集并理解天气谚语，在室外观云识天气。9.9 学会社会调查的基本方法，并进行城乡实地调查。9.10 学会撰写野外考察报告并进行汇报交流。\", \"achievementRequirement\": \"\", \"teachingTip\": \"帮助学生在实践中体验中学习地理知识和技能，了解野外生存的常识，提高防避各种灾害的本领。在野外环境中，指导学生阅读各种地理图像，运用不同地理工具，观察描述地理现象，提出地理问题，获取地理信息，取证、分析并论证形成过程。引导学生客观地认识自然界及人类活动与自然环境的相互作用，提升学生认识自然的能力和自我生存能力，帮助学生科学认识地理环境。\", \"period\": \"\", \"courseModule\": \"选修课程\"}", CJ_contentRequirement: "9.1 学会运用多种手段收集和提取地理信息，设计野外实习方案，了解野外生存常识。9.2 运用地理工具在野外进行定向、定位并获取野外地理信息。9.3 阅读地形图、地质构造图以及遥感图像等，识别主要地形区、基本地质构造和地貌特点。9.4 观察某地区地质、地貌、植被、土地利用方式等景观要素，绘制示意图及剖面图，分析影响景观形成的主要因素，以及景观要素间的相互关系。9.5 学会在野外观察、测量和分析地质、地貌基本形态的方法，并采集样品。9.6 识别主要造岩矿物和常见岩石，认识不同性质岩石对地貌发育的影响。9.7 在野外观察某种地貌，推断其形成过程。9.8 学会收集并理解天气谚语，在室外观云识天气。9.9 学会社会调查的基本方法，并进行城乡实地调查。9.10 学会撰写野外考察报告并进行汇报交流。", CJ_achievementRequirement: "", CJ_teachingTip: "帮助学生在实践中体验中学习地理知识和技能，了解野外生存的常识，提高防避各种灾害的本领。在野外环境中，指导学生阅读各种地理图像，运用不同地理工具，观察描述地理现象，提出地理问题，获取地理信息，取证、分析并论证形成过程。引导学生客观地认识自然界及人类活动与自然环境的相互作用，提升学生认识自然的能力和自我生存能力，帮助学生科学认识地理环境。", CJ_period: "", CJ_courseModule: "选修课程"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:01"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:01", type: "Chapter", title: "第一章 宇宙中的地球", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"year\": \"old\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_year: "old"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:02"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:02", type: "Chapter", title: "第二章 地球上的大气", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"year\": \"old\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_year: "old"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:03"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:03", type: "Chapter", title: "第三章 地球上的水", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"year\": \"old\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_year: "old"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:04"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:04", type: "Chapter", title: "第四章 地貌", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"year\": \"old\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_year: "old"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:05"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:05", type: "Chapter", title: "第五章 植被与土壤", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"year\": \"old\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_year: "old"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:06"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:06", type: "Chapter", title: "第六章 自然灾害", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"year\": \"old\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_year: "old"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:07"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:07", type: "Chapter", title: "第一章 人口", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"year\": \"old\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_year: "old"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:08"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:08", type: "Chapter", title: "第二章 乡村和城镇", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"year\": \"old\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_year: "old"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:09"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:09", type: "Chapter", title: "第三章 产业区位因素", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"year\": \"old\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_year: "old"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:10"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:10", type: "Chapter", title: "第四章 交通运输布局与区域发展", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"year\": \"old\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_year: "old"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:11"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:11", type: "Chapter", title: "第五章 环境与发展", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"year\": \"old\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_year: "old"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:12"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:12", type: "Chapter", title: "第一章 地球的运动", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修1 自然地理基础\", \"year\": \"old\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修1 自然地理基础", CJ_year: "old"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:13"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:13", type: "Chapter", title: "第二章 地表形态的塑造", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修1 自然地理基础\", \"year\": \"old\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修1 自然地理基础", CJ_year: "old"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:14"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:14", type: "Chapter", title: "第三章 大气的运动", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修1 自然地理基础\", \"year\": \"old\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修1 自然地理基础", CJ_year: "old"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:15"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:15", type: "Chapter", title: "第四章 水的运动", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修1 自然地理基础\", \"year\": \"old\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修1 自然地理基础", CJ_year: "old"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:16"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:16", type: "Chapter", title: "第五章 自然环境的整体性与差异性", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修1 自然地理基础\", \"year\": \"old\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修1 自然地理基础", CJ_year: "old"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:17"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:17", type: "Chapter", title: "第一章 区域与区域发展", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修2 区域发展\", \"year\": \"old\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修2 区域发展", CJ_year: "old"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:18"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:18", type: "Chapter", title: "第二章 资源、环境与区域发展", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修2 区域发展\", \"year\": \"old\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修2 区域发展", CJ_year: "old"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:19"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:19", type: "Chapter", title: "第三章 城市、产业与区域发展", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修2 区域发展\", \"year\": \"old\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修2 区域发展", CJ_year: "old"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:20"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:20", type: "Chapter", title: "第四章 区域联系与区域协调发展", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修2 区域发展\", \"year\": \"old\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修2 区域发展", CJ_year: "old"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:21"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:21", type: "Chapter", title: "第一章 自然环境与人类社会", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修3 资源、环境与国家安全\", \"year\": \"old\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修3 资源、环境与国家安全", CJ_year: "old"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:22"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:22", type: "Chapter", title: "第二章 资源安全与国家安全", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修3 资源、环境与国家安全\", \"year\": \"old\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修3 资源、环境与国家安全", CJ_year: "old"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:23"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:23", type: "Chapter", title: "第三章 环境安全与国家安全", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修3 资源、环境与国家安全\", \"year\": \"old\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修3 资源、环境与国家安全", CJ_year: "old"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:24"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:24", type: "Chapter", title: "第四章 保障国家安全的资源、环境战略与行动", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修3 资源、环境与国家安全\", \"year\": \"old\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修3 资源、环境与国家安全", CJ_year: "old"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:01"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:01", type: "Section", title: "第一节 地球的宇宙环境", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"year\": \"old\", \"chapterTitle\": \"第一章 宇宙中的地球\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_year: "old", CJ_chapterTitle: "第一章 宇宙中的地球"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:02"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:02", type: "Section", title: "第二节 太阳对地球的影响", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"year\": \"old\", \"chapterTitle\": \"第一章 宇宙中的地球\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_year: "old", CJ_chapterTitle: "第一章 宇宙中的地球"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:03"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:03", type: "Section", title: "第三节 地球的历史", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"year\": \"old\", \"chapterTitle\": \"第一章 宇宙中的地球\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_year: "old", CJ_chapterTitle: "第一章 宇宙中的地球"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:04"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:04", type: "Section", title: "第四节 地球的圈层结构", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"year\": \"old\", \"chapterTitle\": \"第一章 宇宙中的地球\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_year: "old", CJ_chapterTitle: "第一章 宇宙中的地球"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:05"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:05", type: "Section", title: "问题研究  火星基地应该是什么样子", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"year\": \"old\", \"chapterTitle\": \"第一章 宇宙中的地球\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_year: "old", CJ_chapterTitle: "第一章 宇宙中的地球"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:06"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:06", type: "Section", title: "第一节 大气的组成和垂直结构", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"year\": \"old\", \"chapterTitle\": \"第二章 地球上的大气\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_year: "old", CJ_chapterTitle: "第二章 地球上的大气"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:07"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:07", type: "Section", title: "第二节 热力环流和锋面系统", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"year\": \"old\", \"chapterTitle\": \"第二章 地球上的大气\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_year: "old", CJ_chapterTitle: "第二章 地球上的大气"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:08"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:08", type: "Section", title: "第三节 气候的形成和变化", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"year\": \"old\", \"chapterTitle\": \"第二章 地球上的大气\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_year: "old", CJ_chapterTitle: "第二章 地球上的大气"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:09"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:09", type: "Section", title: "问题研究  极端天气气候事件对人类生活有什么影响", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"year\": \"old\", \"chapterTitle\": \"第二章 地球上的大气\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_year: "old", CJ_chapterTitle: "第二章 地球上的大气"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:10"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:10", type: "Section", title: "第一节 水循环和海陆水分布", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"year\": \"old\", \"chapterTitle\": \"第三章 地球上的水\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_year: "old", CJ_chapterTitle: "第三章 地球上的水"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:11"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:11", type: "Section", title: "第二节 海水的运动和海洋资源开发", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"year\": \"old\", \"chapterTitle\": \"第三章 地球上的水\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_year: "old", CJ_chapterTitle: "第三章 地球上的水"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:12"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:12", type: "Section", title: "问题研究  如何实现海洋资源的开发与保护", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"year\": \"old\", \"chapterTitle\": \"第三章 地球上的水\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_year: "old", CJ_chapterTitle: "第三章 地球上的水"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:13"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:13", type: "Section", title: "第一节 内力作用和地貌", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"year\": \"old\", \"chapterTitle\": \"第四章 地貌\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_year: "old", CJ_chapterTitle: "第四章 地貌"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:14"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:14", type: "Section", title: "第二节 外力作用和地貌", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"year\": \"old\", \"chapterTitle\": \"第四章 地貌\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_year: "old", CJ_chapterTitle: "第四章 地貌"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:15"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:15", type: "Section", title: "问题研究  如何在喀斯特地区实现“村美民富”", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"year\": \"old\", \"chapterTitle\": \"第四章 地貌\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_year: "old", CJ_chapterTitle: "第四章 地貌"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:16"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:16", type: "Section", title: "第一节 植被", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"year\": \"old\", \"chapterTitle\": \"第五章 植被与土壤\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_year: "old", CJ_chapterTitle: "第五章 植被与土壤"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:17"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:17", type: "Section", title: "第二节 土壤", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"year\": \"old\", \"chapterTitle\": \"第五章 植被与土壤\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_year: "old", CJ_chapterTitle: "第五章 植被与土壤"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:18"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:18", type: "Section", title: "问题研究  如何提高城市绿地系统的生态服务功能", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"year\": \"old\", \"chapterTitle\": \"第五章 植被与土壤\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_year: "old", CJ_chapterTitle: "第五章 植被与土壤"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:19"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:19", type: "Section", title: "第一节 气象灾害", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"year\": \"old\", \"chapterTitle\": \"第六章 自然灾害\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_year: "old", CJ_chapterTitle: "第六章 自然灾害"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:20"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:20", type: "Section", title: "第二节 地质灾害", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"year\": \"old\", \"chapterTitle\": \"第六章 自然灾害\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_year: "old", CJ_chapterTitle: "第六章 自然灾害"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:21"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:21", type: "Section", title: "第三节 防灾减灾", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"year\": \"old\", \"chapterTitle\": \"第六章 自然灾害\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_year: "old", CJ_chapterTitle: "第六章 自然灾害"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:22"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:22", type: "Section", title: "第四节 地理信息技术在防灾减灾中的应用", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"year\": \"old\", \"chapterTitle\": \"第六章 自然灾害\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_year: "old", CJ_chapterTitle: "第六章 自然灾害"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:23"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:23", type: "Section", title: "问题研究  救灾物资储备库应该建在哪里", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"year\": \"old\", \"chapterTitle\": \"第六章 自然灾害\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_year: "old", CJ_chapterTitle: "第六章 自然灾害"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:24"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:24", type: "Section", title: "第一节 人口分布", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"year\": \"old\", \"chapterTitle\": \"第一章 人口\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_year: "old", CJ_chapterTitle: "第一章 人口"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:25"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:25", type: "Section", title: "第二节 人口迁移", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"year\": \"old\", \"chapterTitle\": \"第一章 人口\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_year: "old", CJ_chapterTitle: "第一章 人口"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:26"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:26", type: "Section", title: "第三节 人口容量", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"year\": \"old\", \"chapterTitle\": \"第一章 人口\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_year: "old", CJ_chapterTitle: "第一章 人口"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:27"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:27", type: "Section", title: "问题研究 如何看待农民工现象", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"year\": \"old\", \"chapterTitle\": \"第一章 人口\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_year: "old", CJ_chapterTitle: "第一章 人口"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:28"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:28", type: "Section", title: "第一节 乡村聚落的形成与发展", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"year\": \"old\", \"chapterTitle\": \"第二章 乡村和城镇\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_year: "old", CJ_chapterTitle: "第二章 乡村和城镇"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:29"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:29", type: "Section", title: "第二节 城镇的发展与功能分区", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"year\": \"old\", \"chapterTitle\": \"第二章 乡村和城镇\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_year: "old", CJ_chapterTitle: "第二章 乡村和城镇"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:30"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:30", type: "Section", title: "第三节 城乡空间结构及其变化", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"year\": \"old\", \"chapterTitle\": \"第二章 乡村和城镇\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_year: "old", CJ_chapterTitle: "第二章 乡村和城镇"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:31"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:31", type: "Section", title: "问题研究 如何建设美丽乡村", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"year\": \"old\", \"chapterTitle\": \"第二章 乡村和城镇\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_year: "old", CJ_chapterTitle: "第二章 乡村和城镇"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:32"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:32", type: "Section", title: "第一节 农业区位因素及其变化", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"year\": \"old\", \"chapterTitle\": \"第三章 产业区位因素\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_year: "old", CJ_chapterTitle: "第三章 产业区位因素"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:33"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:33", type: "Section", title: "第二节 工业区位因素及其变化", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"year\": \"old\", \"chapterTitle\": \"第三章 产业区位因素\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_year: "old", CJ_chapterTitle: "第三章 产业区位因素"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:34"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:34", type: "Section", title: "第三节 服务业区位因素及其变化", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"year\": \"old\", \"chapterTitle\": \"第三章 产业区位因素\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_year: "old", CJ_chapterTitle: "第三章 产业区位因素"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:35"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:35", type: "Section", title: "问题研究 实体商店何去何从", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"year\": \"old\", \"chapterTitle\": \"第三章 产业区位因素\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_year: "old", CJ_chapterTitle: "第三章 产业区位因素"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:36"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:36", type: "Section", title: "第一节 区域发展对交通运输布局的影响", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"year\": \"old\", \"chapterTitle\": \"第四章 交通运输布局与区域发展\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_year: "old", CJ_chapterTitle: "第四章 交通运输布局与区域发展"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:37"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:37", type: "Section", title: "第二节 交通运输布局对区域发展的影响", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"year\": \"old\", \"chapterTitle\": \"第四章 交通运输布局与区域发展\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_year: "old", CJ_chapterTitle: "第四章 交通运输布局与区域发展"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:38"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:38", type: "Section", title: "问题研究 城市交通如何疏堵", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"year\": \"old\", \"chapterTitle\": \"第四章 交通运输布局与区域发展\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_year: "old", CJ_chapterTitle: "第四章 交通运输布局与区域发展"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:39"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:39", type: "Section", title: "第一节 人类面临的主要环境问题", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"year\": \"old\", \"chapterTitle\": \"第五章 环境与发展\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_year: "old", CJ_chapterTitle: "第五章 环境与发展"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:40"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:40", type: "Section", title: "第二节 走向人地协调——可持续发展", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"year\": \"old\", \"chapterTitle\": \"第五章 环境与发展\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_year: "old", CJ_chapterTitle: "第五章 环境与发展"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:41"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:41", type: "Section", title: "第三节 中国国家发展战略举例", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"year\": \"old\", \"chapterTitle\": \"第五章 环境与发展\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_year: "old", CJ_chapterTitle: "第五章 环境与发展"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:42"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:42", type: "Section", title: "问题研究 低碳食品知多少", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"year\": \"old\", \"chapterTitle\": \"第五章 环境与发展\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_year: "old", CJ_chapterTitle: "第五章 环境与发展"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:43"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:43", type: "Section", title: "第一节 地球的自转和公转", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修1 自然地理基础\", \"year\": \"old\", \"chapterTitle\": \"第一章 地球的运动\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修1 自然地理基础", CJ_year: "old", CJ_chapterTitle: "第一章 地球的运动"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:44"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:44", type: "Section", title: "第二节 地球运动的地理意义", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修1 自然地理基础\", \"year\": \"old\", \"chapterTitle\": \"第一章 地球的运动\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修1 自然地理基础", CJ_year: "old", CJ_chapterTitle: "第一章 地球的运动"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:45"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:45", type: "Section", title: "问题研究 人类是否需要人造月亮", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修1 自然地理基础\", \"year\": \"old\", \"chapterTitle\": \"第一章 地球的运动\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修1 自然地理基础", CJ_year: "old", CJ_chapterTitle: "第一章 地球的运动"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:46"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:46", type: "Section", title: "第一节 内力作用塑造地表形态", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修1 自然地理基础\", \"year\": \"old\", \"chapterTitle\": \"第二章 地表形态的塑造\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修1 自然地理基础", CJ_year: "old", CJ_chapterTitle: "第二章 地表形态的塑造"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:47"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:47", type: "Section", title: "第二节 外力作用塑造地表形态", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修1 自然地理基础\", \"year\": \"old\", \"chapterTitle\": \"第二章 地表形态的塑造\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修1 自然地理基础", CJ_year: "old", CJ_chapterTitle: "第二章 地表形态的塑造"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:48"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:48", type: "Section", title: "问题研究 我国如何适应全球环境变化带来的影响", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修1 自然地理基础\", \"year\": \"old\", \"chapterTitle\": \"第二章 地表形态的塑造\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修1 自然地理基础", CJ_year: "old", CJ_chapterTitle: "第二章 地表形态的塑造"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:49"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:49", type: "Section", title: "第一节 大气的受热过程和热量收支", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修1 自然地理基础\", \"year\": \"old\", \"chapterTitle\": \"第三章 大气的运动\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修1 自然地理基础", CJ_year: "old", CJ_chapterTitle: "第三章 大气的运动"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:50"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:50", type: "Section", title: "第二节 气压带和风带", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修1 自然地理基础\", \"year\": \"old\", \"chapterTitle\": \"第三章 大气的运动\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修1 自然地理基础", CJ_year: "old", CJ_chapterTitle: "第三章 大气的运动"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:51"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:51", type: "Section", title: "第三节 气压带和风带对气候的影响", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修1 自然地理基础\", \"year\": \"old\", \"chapterTitle\": \"第三章 大气的运动\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修1 自然地理基础", CJ_year: "old", CJ_chapterTitle: "第三章 大气的运动"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:52"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:52", type: "Section", title: "问题研究 阿联酋“造山引雨”是否可行", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修1 自然地理基础\", \"year\": \"old\", \"chapterTitle\": \"第三章 大气的运动\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修1 自然地理基础", CJ_year: "old", CJ_chapterTitle: "第三章 大气的运动"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:53"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:53", type: "Section", title: "第一节 陆地水体及其相互关系", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修1 自然地理基础\", \"year\": \"old\", \"chapterTitle\": \"第四章 水的运动\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修1 自然地理基础", CJ_year: "old", CJ_chapterTitle: "第四章 水的运动"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:54"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:54", type: "Section", title: "第二节 洋流", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修1 自然地理基础\", \"year\": \"old\", \"chapterTitle\": \"第四章 水的运动\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修1 自然地理基础", CJ_year: "old", CJ_chapterTitle: "第四章 水的运动"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:55"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:55", type: "Section", title: "第三节 海—气相互作用", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修1 自然地理基础\", \"year\": \"old\", \"chapterTitle\": \"第四章 水的运动\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修1 自然地理基础", CJ_year: "old", CJ_chapterTitle: "第四章 水的运动"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:56"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:56", type: "Section", title: "问题研究 能否利用南极冰山解决沙特阿拉伯的缺水问题", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修1 自然地理基础\", \"year\": \"old\", \"chapterTitle\": \"第四章 水的运动\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修1 自然地理基础", CJ_year: "old", CJ_chapterTitle: "第四章 水的运动"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:57"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:57", type: "Section", title: "第一节 自然环境的整体性", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修1 自然地理基础\", \"year\": \"old\", \"chapterTitle\": \"第五章 自然环境的整体性与差异性\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修1 自然地理基础", CJ_year: "old", CJ_chapterTitle: "第五章 自然环境的整体性与差异性"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:58"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:58", type: "Section", title: "第二节 自然环境的地域差异性", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修1 自然地理基础\", \"year\": \"old\", \"chapterTitle\": \"第五章 自然环境的整体性与差异性\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修1 自然地理基础", CJ_year: "old", CJ_chapterTitle: "第五章 自然环境的整体性与差异性"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:59"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:59", type: "Section", title: "问题研究 如何看待我国西北地区城市引进欧洲冷季型草坪", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修1 自然地理基础\", \"year\": \"old\", \"chapterTitle\": \"第五章 自然环境的整体性与差异性\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修1 自然地理基础", CJ_year: "old", CJ_chapterTitle: "第五章 自然环境的整体性与差异性"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:60"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:60", type: "Section", title: "第一节 区域与区域发展", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修2 区域发展\", \"year\": \"old\", \"chapterTitle\": \"第一章 区域与区域发展\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修2 区域发展", CJ_year: "old", CJ_chapterTitle: "第一章 区域与区域发展"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:61"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:61", type: "Section", title: "第二节 区域研究的方法", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修2 区域发展\", \"year\": \"old\", \"chapterTitle\": \"第一章 区域与区域发展\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修2 区域发展", CJ_year: "old", CJ_chapterTitle: "第一章 区域与区域发展"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:62"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:62", type: "Section", title: "问题研究 如何开展某区域人地关系现状调查与评价", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修2 区域发展\", \"year\": \"old\", \"chapterTitle\": \"第一章 区域与区域发展\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修2 区域发展", CJ_year: "old", CJ_chapterTitle: "第一章 区域与区域发展"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:63"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:63", type: "Section", title: "第一节 资源开发与区域发展", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修2 区域发展\", \"year\": \"old\", \"chapterTitle\": \"第二章 资源、环境与区域发展\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修2 区域发展", CJ_year: "old", CJ_chapterTitle: "第二章 资源、环境与区域发展"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:64"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:64", type: "Section", title: "第二节 环境保护与区域发展", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修2 区域发展\", \"year\": \"old\", \"chapterTitle\": \"第二章 资源、环境与区域发展\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修2 区域发展", CJ_year: "old", CJ_chapterTitle: "第二章 资源、环境与区域发展"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:65"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:65", type: "Section", title: "问题研究 南水北调工程对区域发展的影响", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修2 区域发展\", \"year\": \"old\", \"chapterTitle\": \"第二章 资源、环境与区域发展\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修2 区域发展", CJ_year: "old", CJ_chapterTitle: "第二章 资源、环境与区域发展"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:66"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:66", type: "Section", title: "第一节 城市与城市化进程", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修2 区域发展\", \"year\": \"old\", \"chapterTitle\": \"第三章 城市、产业与区域发展\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修2 区域发展", CJ_year: "old", CJ_chapterTitle: "第三章 城市、产业与区域发展"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:67"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:67", type: "Section", title: "第二节 产业发展与区域经济布局", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修2 区域发展\", \"year\": \"old\", \"chapterTitle\": \"第三章 城市、产业与区域发展\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修2 区域发展", CJ_year: "old", CJ_chapterTitle: "第三章 城市、产业与区域发展"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:68"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:68", type: "Section", title: "问题研究 我国城市群发展对区域发展的影响", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修2 区域发展\", \"year\": \"old\", \"chapterTitle\": \"第三章 城市、产业与区域发展\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修2 区域发展", CJ_year: "old", CJ_chapterTitle: "第三章 城市、产业与区域发展"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:69"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:69", type: "Section", title: "第一节 区域联系与区域协同发展", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修2 区域发展\", \"year\": \"old\", \"chapterTitle\": \"第四章 区域联系与区域协调发展\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修2 区域发展", CJ_year: "old", CJ_chapterTitle: "第四章 区域联系与区域协调发展"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:70"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:70", type: "Section", title: "第二节 城市群与城市带的区域联系", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修2 区域发展\", \"year\": \"old\", \"chapterTitle\": \"第四章 区域联系与区域协调发展\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修2 区域发展", CJ_year: "old", CJ_chapterTitle: "第四章 区域联系与区域协调发展"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:71"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:71", type: "Section", title: "问题研究 一带一路倡议与我国区域发展新格局", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修2 区域发展\", \"year\": \"old\", \"chapterTitle\": \"第四章 区域联系与区域协调发展\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修2 区域发展", CJ_year: "old", CJ_chapterTitle: "第四章 区域联系与区域协调发展"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:72"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:72", type: "Section", title: "第一节 自然环境与国家安全", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修3 资源、环境与国家安全\", \"year\": \"old\", \"chapterTitle\": \"第一章 自然环境与人类社会\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修3 资源、环境与国家安全", CJ_year: "old", CJ_chapterTitle: "第一章 自然环境与人类社会"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:73"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:73", type: "Section", title: "第二节 自然灾害与国家安全", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修3 资源、环境与国家安全\", \"year\": \"old\", \"chapterTitle\": \"第一章 自然环境与人类社会\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修3 资源、环境与国家安全", CJ_year: "old", CJ_chapterTitle: "第一章 自然环境与人类社会"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:74"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:74", type: "Section", title: "问题研究 如何绘制某地自然灾害风险分布图", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修3 资源、环境与国家安全\", \"year\": \"old\", \"chapterTitle\": \"第一章 自然环境与人类社会\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修3 资源、环境与国家安全", CJ_year: "old", CJ_chapterTitle: "第一章 自然环境与人类社会"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:75"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:75", type: "Section", title: "第一节 能源资源安全与国家安全", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修3 资源、环境与国家安全\", \"year\": \"old\", \"chapterTitle\": \"第二章 资源安全与国家安全\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修3 资源、环境与国家安全", CJ_year: "old", CJ_chapterTitle: "第二章 资源安全与国家安全"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:76"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:76", type: "Section", title: "第二节 水资源安全与国家安全", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修3 资源、环境与国家安全\", \"year\": \"old\", \"chapterTitle\": \"第二章 资源安全与国家安全\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修3 资源、环境与国家安全", CJ_year: "old", CJ_chapterTitle: "第二章 资源安全与国家安全"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:77"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:77", type: "Section", title: "第三节 食物资源安全与国家安全", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修3 资源、环境与国家安全\", \"year\": \"old\", \"chapterTitle\": \"第二章 资源安全与国家安全\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修3 资源、环境与国家安全", CJ_year: "old", CJ_chapterTitle: "第二章 资源安全与国家安全"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:78"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:78", type: "Section", title: "问题研究 如何绘制我国能源资源安全形势图", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修3 资源、环境与国家安全\", \"year\": \"old\", \"chapterTitle\": \"第二章 资源安全与国家安全\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修3 资源、环境与国家安全", CJ_year: "old", CJ_chapterTitle: "第二章 资源安全与国家安全"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:79"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:79", type: "Section", title: "第一节 环境污染与国家安全", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修3 资源、环境与国家安全\", \"year\": \"old\", \"chapterTitle\": \"第三章 环境安全与国家安全\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修3 资源、环境与国家安全", CJ_year: "old", CJ_chapterTitle: "第三章 环境安全与国家安全"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:80"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:80", type: "Section", title: "第二节 全球环境问题与国家安全", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修3 资源、环境与国家安全\", \"year\": \"old\", \"chapterTitle\": \"第三章 环境安全与国家安全\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修3 资源、环境与国家安全", CJ_year: "old", CJ_chapterTitle: "第三章 环境安全与国家安全"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:81"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:81", type: "Section", title: "第三节 环境保护与国家安全战略", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修3 资源、环境与国家安全\", \"year\": \"old\", \"chapterTitle\": \"第三章 环境安全与国家安全\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修3 资源、环境与国家安全", CJ_year: "old", CJ_chapterTitle: "第三章 环境安全与国家安全"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:82"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:82", type: "Section", title: "问题研究 如何绘制某地的环境安全形势图", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修3 资源、环境与国家安全\", \"year\": \"old\", \"chapterTitle\": \"第三章 环境安全与国家安全\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修3 资源、环境与国家安全", CJ_year: "old", CJ_chapterTitle: "第三章 环境安全与国家安全"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:83"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:83", type: "Section", title: "第一节 国家资源安全战略与行动", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修3 资源、环境与国家安全\", \"year\": \"old\", \"chapterTitle\": \"第四章 保障国家安全的资源、环境战略与行动\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修3 资源、环境与国家安全", CJ_year: "old", CJ_chapterTitle: "第四章 保障国家安全的资源、环境战略与行动"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:84"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:84", type: "Section", title: "第二节 国家环境安全战略与行动", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修3 资源、环境与国家安全\", \"year\": \"old\", \"chapterTitle\": \"第四章 保障国家安全的资源、环境战略与行动\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修3 资源、环境与国家安全", CJ_year: "old", CJ_chapterTitle: "第四章 保障国家安全的资源、环境战略与行动"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:85"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:85", type: "Section", title: "第三节 国际合作与资源、环境安全", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修3 资源、环境与国家安全\", \"year\": \"old\", \"chapterTitle\": \"第四章 保障国家安全的资源、环境战略与行动\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修3 资源、环境与国家安全", CJ_year: "old", CJ_chapterTitle: "第四章 保障国家安全的资源、环境战略与行动"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:86"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:86", type: "Section", title: "问题研究 如何做中学生环境安全意识问卷调查", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修3 资源、环境与国家安全\", \"year\": \"old\", \"chapterTitle\": \"第三章 环境安全与国家安全\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修3 资源、环境与国家安全", CJ_year: "old", CJ_chapterTitle: "第三章 环境安全与国家安全"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:87"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:87", type: "Section", title: "问题研究 如何绘制某地资源安全形势图", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修3 资源、环境与国家安全\", \"year\": \"old\", \"chapterTitle\": \"第二章 资源安全与国家安全\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修3 资源、环境与国家安全", CJ_year: "old", CJ_chapterTitle: "第二章 资源安全与国家安全"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:88"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:88", type: "Section", title: "问题研究 如何评估某地自然环境与国家安全的关系", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修3 资源、环境与国家安全\", \"year\": \"old\", \"chapterTitle\": \"第一章 自然环境与人类社会\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修3 资源、环境与国家安全", CJ_year: "old", CJ_chapterTitle: "第一章 自然环境与人类社会"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:89"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:89", type: "Section", title: "问题研究 如何通过国际合作保障资源、环境安全", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修3 资源、环境与国家安全\", \"year\": \"old\", \"chapterTitle\": \"第四章 保障国家安全的资源、环境战略与行动\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修3 资源、环境与国家安全", CJ_year: "old", CJ_chapterTitle: "第四章 保障国家安全的资源、环境战略与行动"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:90"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:90", type: "Section", title: "问题研究 如何编制某地环境安全改善规划", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修3 资源、环境与国家安全\", \"year\": \"old\", \"chapterTitle\": \"第三章 环境安全与国家安全\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修3 资源、环境与国家安全", CJ_year: "old", CJ_chapterTitle: "第三章 环境安全与国家安全"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:91"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:91", type: "Section", title: "问题研究 如何评估某地资源、环境安全战略的实施效果", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修3 资源、环境与国家安全\", \"year\": \"old\", \"chapterTitle\": \"第四章 保障国家安全的资源、环境战略与行动\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修3 资源、环境与国家安全", CJ_year: "old", CJ_chapterTitle: "第四章 保障国家安全的资源、环境战略与行动"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:92"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:92", type: "Section", title: "问题研究 如何提升社会公众的资源安全意识", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修3 资源、环境与国家安全\", \"year\": \"old\", \"chapterTitle\": \"第二章 资源安全与国家安全\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修3 资源、环境与国家安全", CJ_year: "old", CJ_chapterTitle: "第二章 资源安全与国家安全"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB06:Section:93"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:Section:93", type: "Section", title: "问题研究 如何做中学生资源、环境安全意识问卷调查", description: "", subject: "SB0308", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修3 资源、环境与国家安全\", \"year\": \"old\", \"chapterTitle\": \"第四章 保障国家安全的资源、环境战略与行动\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修3 资源、环境与国家安全", CJ_year: "old", CJ_chapterTitle: "第四章 保障国家安全的资源、环境战略与行动"};

MERGE (n:CourseModel {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:01"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:01", title: "必修课程", description: "必修课程的内容精选学生终身发展必备的地理基础知识和基本技能，以满足全体学生基本的地理学习需要。必修课程包括两个模块，即地理1和地理2。", subject: "SB0308", type: "CourseModel", applicableLevel: "OB06", contentJson: "{}"};

MERGE (n:CourseModel {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:02"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:02", title: "选择性必修课程", description: "选择性必修课程内容在必修课程的基础上加深或拓展，以满足部分学生升学考试或就业的需要。选择性必修课程包括三个模块，即自然地理基础，区域发展，资源、环境与国家安全。", subject: "SB0308", type: "CourseModel", applicableLevel: "OB06", contentJson: "{}"};

MERGE (n:CourseModel {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:03"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:03", title: "选修课程", description: "选修课程为校本课程，提供多样化的课程清单，以满足不同学生基于兴趣爱好、学业发展、职业倾向等选课的需要。选修课程包括九个模块，分别侧重自然领域、人文领域、技术与实践领域。", subject: "SB0308", type: "CourseModel", applicableLevel: "OB06", contentJson: "{}"};

MERGE (n:CoreLiteracy-level {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:01"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:01", title: "人地协调观-水平1", description: "指人们对人类与地理环境之间关系秉持的正确价值观。人地关系是地理学研究的核心主题。面对不断出现的人口、资源、环境和发展问题，人们越来越深刻地认识到，人类社会要更好地发展，必须尊重自然规律，协调好人类活动与地理环境的关系。人地协调观的培养，有助于学生形成尊重自然、顺应自然、保护自然的意识，树立绿色发展、国家安全等观念，涵养人文情怀，增强社会责任感。", subject: "SB0308", type: "CoreLiteracy-level", applicableLevel: "OB06", contentJson: "{\"performance\": \"（1）能够理解自然环境是人类生存、发展的基础，并能够辩证看待自然环境对人类活动的各种影响。（2）能够理解人类活动影响地理环境有不同的方式、强度和后果，懂得尊重自然规律的重要性和必要性。（3）能够分析评价现实人地关系问题，理解协调人地关系的政策与措施。\", \"standard\": \"水平1\", \"standardRequirement\": \"在结构良好的地理情境中，能够从人地关系的角度，简要描述地理环境为人类活动提供基础、人类活动对地理环境产生积极与消极影响的事实；简要说明出现的人地关系问题及解决的途径和方法。\"}", CJ_performance: "（1）能够理解自然环境是人类生存、发展的基础，并能够辩证看待自然环境对人类活动的各种影响。（2）能够理解人类活动影响地理环境有不同的方式、强度和后果，懂得尊重自然规律的重要性和必要性。（3）能够分析评价现实人地关系问题，理解协调人地关系的政策与措施。", CJ_standard: "水平1", CJ_standardRequirement: "在结构良好的地理情境中，能够从人地关系的角度，简要描述地理环境为人类活动提供基础、人类活动对地理环境产生积极与消极影响的事实；简要说明出现的人地关系问题及解决的途径和方法。"};

MERGE (n:CoreLiteracy-level {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:02"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:02", title: "人地协调观-水平2", description: "指人们对人类与地理环境之间关系秉持的正确价值观。人地关系是地理学研究的核心主题。面对不断出现的人口、资源、环境和发展问题，人们越来越深刻地认识到，人类社会要更好地发展，必须尊重自然规律，协调好人类活动与地理环境的关系。人地协调观的培养，有助于学生形成尊重自然、顺应自然、保护自然的意识，树立绿色发展、国家安全等观念，涵养人文情怀，增强社会责任感。", subject: "SB0308", type: "CoreLiteracy-level", applicableLevel: "OB06", contentJson: "{\"performance\": \"（1）能够理解自然环境是人类生存、发展的基础，并能够辩证看待自然环境对人类活动的各种影响。（2）能够理解人类活动影响地理环境有不同的方式、强度和后果，懂得尊重自然规律的重要性和必要性。（3）能够分析评价现实人地关系问题，理解协调人地关系的政策与措施。\", \"standard\": \"水平2\", \"standardRequirement\": \"在结构不良的地理情境中，能够从人地关系的角度，说明地理环境对人类活动的影响，以及人类活动影响地理环境的方式和强度；分类描述具有全球性和区域性的人地关系问题，并对解决问题的途径和方法进行评价。\"}", CJ_performance: "（1）能够理解自然环境是人类生存、发展的基础，并能够辩证看待自然环境对人类活动的各种影响。（2）能够理解人类活动影响地理环境有不同的方式、强度和后果，懂得尊重自然规律的重要性和必要性。（3）能够分析评价现实人地关系问题，理解协调人地关系的政策与措施。", CJ_standard: "水平2", CJ_standardRequirement: "在结构不良的地理情境中，能够从人地关系的角度，说明地理环境对人类活动的影响，以及人类活动影响地理环境的方式和强度；分类描述具有全球性和区域性的人地关系问题，并对解决问题的途径和方法进行评价。"};

MERGE (n:CoreLiteracy-level {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:03"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:03", title: "人地协调观-水平3", description: "指人们对人类与地理环境之间关系秉持的正确价值观。人地关系是地理学研究的核心主题。面对不断出现的人口、资源、环境和发展问题，人们越来越深刻地认识到，人类社会要更好地发展，必须尊重自然规律，协调好人类活动与地理环境的关系。人地协调观的培养，有助于学生形成尊重自然、顺应自然、保护自然的意识，树立绿色发展、国家安全等观念，涵养人文情怀，增强社会责任感。", subject: "SB0308", type: "CoreLiteracy-level", applicableLevel: "OB06", contentJson: "{\"performance\": \"（1）能够理解自然环境是人类生存、发展的基础，并能够辩证看待自然环境对人类活动的各种影响。（2）能够理解人类活动影响地理环境有不同的方式、强度和后果，懂得尊重自然规律的重要性和必要性。（3）能够分析评价现实人地关系问题，理解协调人地关系的政策与措施。\", \"standard\": \"水平3\", \"standardRequirement\": \"在结构不良的地理情境中，能够从人地关系的角度，说明不同空间尺度区域中人口、资源、环境、发展之间的相互关系，用证据说明人地关系是对立统一的，并分析、评价人地关系中存在的问题，提出自己的见解。\"}", CJ_performance: "（1）能够理解自然环境是人类生存、发展的基础，并能够辩证看待自然环境对人类活动的各种影响。（2）能够理解人类活动影响地理环境有不同的方式、强度和后果，懂得尊重自然规律的重要性和必要性。（3）能够分析评价现实人地关系问题，理解协调人地关系的政策与措施。", CJ_standard: "水平3", CJ_standardRequirement: "在结构不良的地理情境中，能够从人地关系的角度，说明不同空间尺度区域中人口、资源、环境、发展之间的相互关系，用证据说明人地关系是对立统一的，并分析、评价人地关系中存在的问题，提出自己的见解。"};

MERGE (n:CoreLiteracy-level {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04", title: "综合思维-水平1", description: "指人们从综合的视角认识地理环境及人地关系的思维方式和能力。人类生存的地理环境是一个综合体，在不同时空组合条件下，地理要素相互作用，综合决定着地理环境的形成和发展。综合思维的培养，有助于学生形成系统、动态、辩证的思维方式，树立求真务实、开拓创新的科学精神。", subject: "SB0308", type: "CoreLiteracy-level", applicableLevel: "OB06", contentJson: "{\"performance\": \"（1）能够从地理要素综合的角度，认识地理事物的整体性，地理要素相互作用、相互影响的关系。（2）能够从空间和时间综合的角度，分析地理事象的发生、发展和演化。（3）能够从地方或区域综合的角度，分析地方或区域自然和人文要素对区域特征形成的影响，以及区域人地关系问题。\", \"standard\": \"水平1\", \"standardRequirement\": \"在结构良好的地理情境中，能够从地理要素相互影响、相互制约的角度，简单分析地理事物和现象的成因、结果和影响，并关联时间和空间，合理推断其发展变化过程；综合地理要素相互作用和时空变化过程，简要解释区域地理环境特征的形成。\"}", CJ_performance: "（1）能够从地理要素综合的角度，认识地理事物的整体性，地理要素相互作用、相互影响的关系。（2）能够从空间和时间综合的角度，分析地理事象的发生、发展和演化。（3）能够从地方或区域综合的角度，分析地方或区域自然和人文要素对区域特征形成的影响，以及区域人地关系问题。", CJ_standard: "水平1", CJ_standardRequirement: "在结构良好的地理情境中，能够从地理要素相互影响、相互制约的角度，简单分析地理事物和现象的成因、结果和影响，并关联时间和空间，合理推断其发展变化过程；综合地理要素相互作用和时空变化过程，简要解释区域地理环境特征的形成。"};

MERGE (n:CoreLiteracy-level {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:05"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:05", title: "综合思维-水平2", description: "指人们从综合的视角认识地理环境及人地关系的思维方式和能力。人类生存的地理环境是一个综合体，在不同时空组合条件下，地理要素相互作用，综合决定着地理环境的形成和发展。综合思维的培养，有助于学生形成系统、动态、辩证的思维方式，树立求真务实、开拓创新的科学精神。", subject: "SB0308", type: "CoreLiteracy-level", applicableLevel: "OB06", contentJson: "{\"performance\": \"（1）能够从地理要素综合的角度，认识地理事物的整体性，地理要素相互作用、相互影响的关系。（2）能够从空间和时间综合的角度，分析地理事象的发生、发展和演化。（3）能够从地方或区域综合的角度，分析地方或区域自然和人文要素对区域特征形成的影响，以及区域人地关系问题。\", \"standard\": \"水平2\", \"standardRequirement\": \"在结构不良的地理情境中，能够从地理要素相互影响、相互制约的角度，解释地理事物和现象复杂的因果关系，及其产生的结果和影响；从时空相互关联的角度，分析地理事物和现象的现状，推测其形成过程及发展方向；综合地理要素相互作用和时空变化过程，解释区域地理环境的形成、特征和变化。\"}", CJ_performance: "（1）能够从地理要素综合的角度，认识地理事物的整体性，地理要素相互作用、相互影响的关系。（2）能够从空间和时间综合的角度，分析地理事象的发生、发展和演化。（3）能够从地方或区域综合的角度，分析地方或区域自然和人文要素对区域特征形成的影响，以及区域人地关系问题。", CJ_standard: "水平2", CJ_standardRequirement: "在结构不良的地理情境中，能够从地理要素相互影响、相互制约的角度，解释地理事物和现象复杂的因果关系，及其产生的结果和影响；从时空相互关联的角度，分析地理事物和现象的现状，推测其形成过程及发展方向；综合地理要素相互作用和时空变化过程，解释区域地理环境的形成、特征和变化。"};

MERGE (n:CoreLiteracy-level {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:06"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:06", title: "综合思维-水平3", description: "指人们从综合的视角认识地理环境及人地关系的思维方式和能力。人类生存的地理环境是一个综合体，在不同时空组合条件下，地理要素相互作用，综合决定着地理环境的形成和发展。综合思维的培养，有助于学生形成系统、动态、辩证的思维方式，树立求真务实、开拓创新的科学精神。", subject: "SB0308", type: "CoreLiteracy-level", applicableLevel: "OB06", contentJson: "{\"performance\": \"（1）能够从地理要素综合的角度，认识地理事物的整体性，地理要素相互作用、相互影响的关系。（2）能够从空间和时间综合的角度，分析地理事象的发生、发展和演化。（3）能够从地方或区域综合的角度，分析地方或区域自然和人文要素对区域特征形成的影响，以及区域人地关系问题。\", \"standard\": \"水平3\", \"standardRequirement\": \"在结构不良的地理情境中，能够运用要素综合、时空综合、地方综合的思路，综合分析地理事物和现象的主要特征、成因及变化过程，对现实的地理问题展现出较强的洞察和综合分析能力。\"}", CJ_performance: "（1）能够从地理要素综合的角度，认识地理事物的整体性，地理要素相互作用、相互影响的关系。（2）能够从空间和时间综合的角度，分析地理事象的发生、发展和演化。（3）能够从地方或区域综合的角度，分析地方或区域自然和人文要素对区域特征形成的影响，以及区域人地关系问题。", CJ_standard: "水平3", CJ_standardRequirement: "在结构不良的地理情境中，能够运用要素综合、时空综合、地方综合的思路，综合分析地理事物和现象的主要特征、成因及变化过程，对现实的地理问题展现出较强的洞察和综合分析能力。"};

MERGE (n:CoreLiteracy-level {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:07"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:07", title: "区域认知-水平1", description: "指人们从空间—区域的视角认识地理环境及人地关系的思维方式和能力。人类生存的地理环境复杂多样，将其划分成不同空间尺度、不同类型的区域加以认识，是人们认识地理环境复杂性的基本方法。区域认知的培养，有助于学生建立地理空间观念，认识不同的区域既各有特色，又相互联系，增强热爱家乡的情感和国家认同感，增进对世界的理解，逐步形成人类命运共同体意识。", subject: "SB0308", type: "CoreLiteracy-level", applicableLevel: "OB06", contentJson: "{\"performance\": \"（1）能够从空间一区域的视角，认识区域地理环境的整体性特征。（2）能够从空间一区域的视角，认识不同区域的差异和联系。（3）能够正确解释、评析区域开发利用决策的得失。\", \"standard\": \"水平1\", \"standardRequirement\": \"在结构良好的地理情境中，能够从区域整体性的角度，简要描述区域中地理环境和人类活动具有相对一致性的事实，并刻画区域主要特征；从区域差异性的角度，比较不同区域的特征、联系和结果；简要分析区域发展的地理背景。\"}", CJ_performance: "（1）能够从空间一区域的视角，认识区域地理环境的整体性特征。（2）能够从空间一区域的视角，认识不同区域的差异和联系。（3）能够正确解释、评析区域开发利用决策的得失。", CJ_standard: "水平1", CJ_standardRequirement: "在结构良好的地理情境中，能够从区域整体性的角度，简要描述区域中地理环境和人类活动具有相对一致性的事实，并刻画区域主要特征；从区域差异性的角度，比较不同区域的特征、联系和结果；简要分析区域发展的地理背景。"};

MERGE (n:CoreLiteracy-level {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08", title: "区域认知-水平2", description: "指人们从空间—区域的视角认识地理环境及人地关系的思维方式和能力。人类生存的地理环境复杂多样，将其划分成不同空间尺度、不同类型的区域加以认识，是人们认识地理环境复杂性的基本方法。区域认知的培养，有助于学生建立地理空间观念，认识不同的区域既各有特色，又相互联系，增强热爱家乡的情感和国家认同感，增进对世界的理解，逐步形成人类命运共同体意识。", subject: "SB0308", type: "CoreLiteracy-level", applicableLevel: "OB06", contentJson: "{\"performance\": \"（1）能够从空间一区域的视角，认识区域地理环境的整体性特征。（2）能够从空间一区域的视角，认识不同区域的差异和联系。（3）能够正确解释、评析区域开发利用决策的得失。\", \"standard\": \"水平2\", \"standardRequirement\": \"在结构不良的地理情境中，能够从区域整体性的角度，收集、整理区域重要信息，发现并归纳区域地理事物和现象的空间分布，并分析其原因；从区域差异性的角度，采用恰当的认识区域的方法，选择具有可比性的区域，分析区域差异和区域联系；为赞同或质疑某一区域发展决策提出相关论据。\"}", CJ_performance: "（1）能够从空间一区域的视角，认识区域地理环境的整体性特征。（2）能够从空间一区域的视角，认识不同区域的差异和联系。（3）能够正确解释、评析区域开发利用决策的得失。", CJ_standard: "水平2", CJ_standardRequirement: "在结构不良的地理情境中，能够从区域整体性的角度，收集、整理区域重要信息，发现并归纳区域地理事物和现象的空间分布，并分析其原因；从区域差异性的角度，采用恰当的认识区域的方法，选择具有可比性的区域，分析区域差异和区域联系；为赞同或质疑某一区域发展决策提出相关论据。"};

MERGE (n:CoreLiteracy-level {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:09"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:09", title: "区域认知-水平3", description: "指人们从空间—区域的视角认识地理环境及人地关系的思维方式和能力。人类生存的地理环境复杂多样，将其划分成不同空间尺度、不同类型的区域加以认识，是人们认识地理环境复杂性的基本方法。区域认知的培养，有助于学生建立地理空间观念，认识不同的区域既各有特色，又相互联系，增强热爱家乡的情感和国家认同感，增进对世界的理解，逐步形成人类命运共同体意识。", subject: "SB0308", type: "CoreLiteracy-level", applicableLevel: "OB06", contentJson: "{\"performance\": \"（1）能够从空间一区域的视角，认识区域地理环境的整体性特征。（2）能够从空间一区域的视角，认识不同区域的差异和联系。（3）能够正确解释、评析区域开发利用决策的得失。\", \"standard\": \"水平3\", \"standardRequirement\": \"在结构不良的地理情境中，能够从区域整体性的角度，收集、整理区域重要信息，发现并归纳区域地理事物和现象的空间分布，并说明区域内一个环境条件改变对其原有空间分布的影响；从区域差异性的角度，运用认识区域的方法和工具，综合分析不同区域的发展条件、路径和结果；较全面地评析某一区域发展决策的得失，并提出较为可行的改进建议。\"}", CJ_performance: "（1）能够从空间一区域的视角，认识区域地理环境的整体性特征。（2）能够从空间一区域的视角，认识不同区域的差异和联系。（3）能够正确解释、评析区域开发利用决策的得失。", CJ_standard: "水平3", CJ_standardRequirement: "在结构不良的地理情境中，能够从区域整体性的角度，收集、整理区域重要信息，发现并归纳区域地理事物和现象的空间分布，并说明区域内一个环境条件改变对其原有空间分布的影响；从区域差异性的角度，运用认识区域的方法和工具，综合分析不同区域的发展条件、路径和结果；较全面地评析某一区域发展决策的得失，并提出较为可行的改进建议。"};

MERGE (n:CoreLiteracy-level {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10", title: "地理实践力-水平1", description: "指人们在野外考察、社会调查、地理实验等地理实践活动中所具备的行动力和意志品质。野外考察、社会调查、地理实验等地理学常用的研究方法，也是地理课程重要的学习方式。地理实践力的培养，有助于学生在真实或模拟环境中通过地理实践活动，观察和认识地理环境，体验和感悟人地关系，并在过程中养成不畏困难、乐学善学的品质，实现知行合一。", subject: "SB0308", type: "CoreLiteracy-level", applicableLevel: "OB06", contentJson: "{\"performance\": \"（1）能够用观察、调查等方法收集和处理地理信息，有发现问题、探索问题的兴趣。（2）能够与他人合作或独立设计地理实践活动的方案，思考并选择适当的地理工具。（3）能够实施活动方案，主动从体验和反思中学习，实事求是，有克服困难的勇气和方法。\", \"standard\": \"水平1\", \"standardRequirement\": \"在结构良好的地理情境中，能够进行细微观察和调查，获取和处理信息，有探索问题的兴趣；能够使用地理工具，设计和实施较简单的地理实践活动，用证据解释实践结论；在参与地理实践的过程中，有自己的想法，主动从体验和反思中学习，有克服困难的勇气和方法。\"}", CJ_performance: "（1）能够用观察、调查等方法收集和处理地理信息，有发现问题、探索问题的兴趣。（2）能够与他人合作或独立设计地理实践活动的方案，思考并选择适当的地理工具。（3）能够实施活动方案，主动从体验和反思中学习，实事求是，有克服困难的勇气和方法。", CJ_standard: "水平1", CJ_standardRequirement: "在结构良好的地理情境中，能够进行细微观察和调查，获取和处理信息，有探索问题的兴趣；能够使用地理工具，设计和实施较简单的地理实践活动，用证据解释实践结论；在参与地理实践的过程中，有自己的想法，主动从体验和反思中学习，有克服困难的勇气和方法。"};

MERGE (n:CoreLiteracy-level {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:11"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:11", title: "地理实践力-水平2", description: "指人们在野外考察、社会调查、地理实验等地理实践活动中所具备的行动力和意志品质。野外考察、社会调查、地理实验等地理学常用的研究方法，也是地理课程重要的学习方式。地理实践力的培养，有助于学生在真实或模拟环境中通过地理实践活动，观察和认识地理环境，体验和感悟人地关系，并在过程中养成不畏困难、乐学善学的品质，实现知行合一。", subject: "SB0308", type: "CoreLiteracy-level", applicableLevel: "OB06", contentJson: "{\"performance\": \"（1）能够用观察、调查等方法收集和处理地理信息，有发现问题、探索问题的兴趣。（2）能够与他人合作或独立设计地理实践活动的方案，思考并选择适当的地理工具。（3）能够实施活动方案，主动从体验和反思中学习，实事求是，有克服困难的勇气和方法。\", \"standard\": \"水平2\", \"standardRequirement\": \"在结构不良的地理情境中，能够进行分类观察和调查，获取和处理较复杂的信息，主动发现和探索问题；能够使用地理工具，设计和实施较复杂的地理实践活动，并有物化形式的实践结果，善于在实践和总结中不断提升行动力；在参与实践的过程中既有自己的想法，又与同伴互助交流，有克服困难的勇气和方法。\"}", CJ_performance: "（1）能够用观察、调查等方法收集和处理地理信息，有发现问题、探索问题的兴趣。（2）能够与他人合作或独立设计地理实践活动的方案，思考并选择适当的地理工具。（3）能够实施活动方案，主动从体验和反思中学习，实事求是，有克服困难的勇气和方法。", CJ_standard: "水平2", CJ_standardRequirement: "在结构不良的地理情境中，能够进行分类观察和调查，获取和处理较复杂的信息，主动发现和探索问题；能够使用地理工具，设计和实施较复杂的地理实践活动，并有物化形式的实践结果，善于在实践和总结中不断提升行动力；在参与实践的过程中既有自己的想法，又与同伴互助交流，有克服困难的勇气和方法。"};

MERGE (n:CoreLiteracy-level {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:12"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:12", title: "地理实践力-水平3", description: "指人们在野外考察、社会调查、地理实验等地理实践活动中所具备的行动力和意志品质。野外考察、社会调查、地理实验等地理学常用的研究方法，也是地理课程重要的学习方式。地理实践力的培养，有助于学生在真实或模拟环境中通过地理实践活动，观察和认识地理环境，体验和感悟人地关系，并在过程中养成不畏困难、乐学善学的品质，实现知行合一。", subject: "SB0308", type: "CoreLiteracy-level", applicableLevel: "OB06", contentJson: "{\"performance\": \"（1）能够用观察、调查等方法收集和处理地理信息，有发现问题、探索问题的兴趣。（2）能够与他人合作或独立设计地理实践活动的方案，思考并选择适当的地理工具。（3）能够实施活动方案，主动从体验和反思中学习，实事求是，有克服困难的勇气和方法。\", \"standard\": \"水平3\", \"standardRequirement\": \"在结构不良的地理情境中，能够进行较系统的观察和调查，用科学方法对获取的数据、资料进行处理，主动发现、探索和解决问题；能够使用地理工具，有创意地设计和实施地理实践活动，并有证据充分的、以物化形式呈现的实践结果，对解决实际问题有一定作用；在参与实践的过程中既有创造性的想法，又能博采众长，有克服困难的勇气和方法，并体现出一定的组织领导力。\"}", CJ_performance: "（1）能够用观察、调查等方法收集和处理地理信息，有发现问题、探索问题的兴趣。（2）能够与他人合作或独立设计地理实践活动的方案，思考并选择适当的地理工具。（3）能够实施活动方案，主动从体验和反思中学习，实事求是，有克服困难的勇气和方法。", CJ_standard: "水平3", CJ_standardRequirement: "在结构不良的地理情境中，能够进行较系统的观察和调查，用科学方法对获取的数据、资料进行处理，主动发现、探索和解决问题；能够使用地理工具，有创意地设计和实施地理实践活动，并有证据充分的、以物化形式呈现的实践结果，对解决实际问题有一定作用；在参与实践的过程中既有创造性的想法，又能博采众长，有克服困难的勇气和方法，并体现出一定的组织领导力。"};

MERGE (n:CourseTarget {identifier: "urn:jy:Geography:SB0308:OB06:CourseTarget:01"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:CourseTarget:01", title: "人地协调观目标要求", description: "学生能够正确看待地理环境与人类活动的相互影响，深入认识两者相互影响的不同方式、强度和后果，理解人们对人地关系认识的阶段性表现及其原因，认识人地协调对可持续发展的重要意义，形成尊重自然、和谐发展的态度，认同中国式现代化是人与自然和谐共生的现代化。", subject: "SB0308", type: "CourseTarget", applicableLevel: "OB06", contentJson: "{}"};

MERGE (n:CourseTarget {identifier: "urn:jy:Geography:SB0308:OB06:CourseTarget:02"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:CourseTarget:02", title: "综合思维目标要求", description: "学生能够形成从综合的视角认识地理事物和现象的意识，对地理各要素之间的相互作用关系有较强的分析能力，并在一定程度上解释地理事物和现象发生、发展的过程，从而较全面地观察、分析和认识不同地方的地理环境特点，辩证地看待地理问题。", subject: "SB0308", type: "CourseTarget", applicableLevel: "OB06", contentJson: "{}"};

MERGE (n:CourseTarget {identifier: "urn:jy:Geography:SB0308:OB06:CourseTarget:03"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:CourseTarget:03", title: "区域认知目标要求", description: "学生能够形成从空间一区域的视角认识地理事物和现象的意识，对地理事物和现象的空间格局有较强的观察力，并运用区域综合分析、区域比较、区域关联等方法认识区域，简要评价解决区域发展问题的对策，理解区域协调发展、合作共赢的意义。", subject: "SB0308", type: "CourseTarget", applicableLevel: "OB06", contentJson: "{}"};

MERGE (n:CourseTarget {identifier: "urn:jy:Geography:SB0308:OB06:CourseTarget:04"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:CourseTarget:04", title: "地理实践力目标要求", description: "学生能够运用所学知识和地理工具，在室内外真实环境中，通过考察、调查、实验等方式获取地理信息，探索和尝试解决实际问题，具备活动策划、实施等行动能力，在实践中提升创新意识，增强社会责任感，锤炼意志品质。", subject: "SB0308", type: "CourseTarget", applicableLevel: "OB06", contentJson: "{}"};

MERGE (n:AcademicQuality {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:01"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:01", title: "学业质量", description: "学业质量是学生在完成本学科课程学习后学业成就的综合表现，体现课程目标的达成程度，反映核心素养发展状况。学业质量标准依据学科核心素养水平划分（附录2），结合结构化课程内容，描述学习结果的典型表现，整体标识和刻画学业质量的不同水平。", subject: "SB0308", type: "AcademicQuality", applicableLevel: "OB06", contentJson: "{\"aspect\": \"综合性\", \"standard\": \"1\", \"standardRequirement\": \"在结构良好的地理情境中，运用恰当的地理工具与方法，辨识情境中较明显的地理要素，解释地理要素相互影响的方式和结果；描述情境中地理事物和现象的分布、特征等信息；运用相关证据简要说明地理环境为人类活动提供的基础或限制，以及人类活动对地理环境产生的影响。\"}", CJ_aspect: "综合性", CJ_standard: "1", CJ_standardRequirement: "在结构良好的地理情境中，运用恰当的地理工具与方法，辨识情境中较明显的地理要素，解释地理要素相互影响的方式和结果；描述情境中地理事物和现象的分布、特征等信息；运用相关证据简要说明地理环境为人类活动提供的基础或限制，以及人类活动对地理环境产生的影响。"};

MERGE (n:AcademicQuality {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:02"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:02", title: "学业质量", description: "学业质量是学生在完成本学科课程学习后学业成就的综合表现，体现课程目标的达成程度，反映核心素养发展状况。学业质量标准依据学科核心素养水平划分（附录2），结合结构化课程内容，描述学习结果的典型表现，整体标识和刻画学业质量的不同水平。", subject: "SB0308", type: "AcademicQuality", applicableLevel: "OB06", contentJson: "{\"aspect\": \"区域性\", \"standard\": \"1\", \"standardRequirement\": \"在结构良好的地理情境中，运用恰当的地理工具与方法，描述区域地理环境的明显特征，简要解释其成因；说明区域地理环境对人类活动的影响；比较不同区域地理环境某些方面的差异；运用相关证据说明不同区域的联系方式和结果；分析情境中区域发展的地理背景和发展方向，说明解决区域发展问题的途径和方法。\"}", CJ_aspect: "区域性", CJ_standard: "1", CJ_standardRequirement: "在结构良好的地理情境中，运用恰当的地理工具与方法，描述区域地理环境的明显特征，简要解释其成因；说明区域地理环境对人类活动的影响；比较不同区域地理环境某些方面的差异；运用相关证据说明不同区域的联系方式和结果；分析情境中区域发展的地理背景和发展方向，说明解决区域发展问题的途径和方法。"};

MERGE (n:AcademicQuality {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:03"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:03", title: "学业质量", description: "学业质量是学生在完成本学科课程学习后学业成就的综合表现，体现课程目标的达成程度，反映核心素养发展状况。学业质量标准依据学科核心素养水平划分（附录2），结合结构化课程内容，描述学习结果的典型表现，整体标识和刻画学业质量的不同水平。", subject: "SB0308", type: "AcademicQuality", applicableLevel: "OB06", contentJson: "{\"aspect\": \"实践性\", \"standard\": \"1\", \"standardRequirement\": \"在结构良好的地理情境中，运用恰当的地理工具与方法，结合特定区域的地理环境和人地关系状况，提出简单的地理探究问题或任务，并针对问题或任务设计可操作的地理实践活动方案；秉持求真务实的科学态度，运用科学探究的基本方法，完成野外考察、社会调查、地理实验等室外收集信息工作，并处理数据得出结论；在地理实践的过程中，表现出对科学探究的兴趣和克服困难的勇气。\"}", CJ_aspect: "实践性", CJ_standard: "1", CJ_standardRequirement: "在结构良好的地理情境中，运用恰当的地理工具与方法，结合特定区域的地理环境和人地关系状况，提出简单的地理探究问题或任务，并针对问题或任务设计可操作的地理实践活动方案；秉持求真务实的科学态度，运用科学探究的基本方法，完成野外考察、社会调查、地理实验等室外收集信息工作，并处理数据得出结论；在地理实践的过程中，表现出对科学探究的兴趣和克服困难的勇气。"};

MERGE (n:AcademicQuality {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:04"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:04", title: "学业质量", description: "学业质量是学生在完成本学科课程学习后学业成就的综合表现，体现课程目标的达成程度，反映核心素养发展状况。学业质量标准依据学科核心素养水平划分（附录2），结合结构化课程内容，描述学习结果的典型表现，整体标识和刻画学业质量的不同水平。", subject: "SB0308", type: "AcademicQuality", applicableLevel: "OB06", contentJson: "{\"aspect\": \"综合性\", \"standard\": \"2\", \"standardRequirement\": \"在结构不良的地理情境中，运用恰当的地理工具与方法，较为准确地辨识情境中明显的地理要素，分析地理要素相互影响的方式和结果，得出综合性较强的结论；分析情境中地理事物和现象的分布、特征等信息，结合时空变化，说明地理分布、特征等的形成过程或原因、条件；运用相关证据说明地理环境与人类活动相互影响的方式、强度和结果，分类描述具有全球性或区域性的人地关系问题，并对解决这些问题的不同途径与方法进行评价。\"}", CJ_aspect: "综合性", CJ_standard: "2", CJ_standardRequirement: "在结构不良的地理情境中，运用恰当的地理工具与方法，较为准确地辨识情境中明显的地理要素，分析地理要素相互影响的方式和结果，得出综合性较强的结论；分析情境中地理事物和现象的分布、特征等信息，结合时空变化，说明地理分布、特征等的形成过程或原因、条件；运用相关证据说明地理环境与人类活动相互影响的方式、强度和结果，分类描述具有全球性或区域性的人地关系问题，并对解决这些问题的不同途径与方法进行评价。"};

MERGE (n:AcademicQuality {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:05"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:05", title: "学业质量", description: "学业质量是学生在完成本学科课程学习后学业成就的综合表现，体现课程目标的达成程度，反映核心素养发展状况。学业质量标准依据学科核心素养水平划分（附录2），结合结构化课程内容，描述学习结果的典型表现，整体标识和刻画学业质量的不同水平。", subject: "SB0308", type: "AcademicQuality", applicableLevel: "OB06", contentJson: "{\"aspect\": \"区域性\", \"standard\": \"2\", \"standardRequirement\": \"在结构不良的地理情境中，运用恰当的地理工具与方法，分析区域地理环境整体特征的主要方面，解释其成因；运用相关证据说明区域内一个环境条件改变对区域地理环境整体的影响，以及对人类活动的影响；比较不同区域地理环境、地理过程的差异；运用相关证据说明区域间联系的原因、方式和结果；分析区域发展的地理背景，面临的主要问题，提出区域可持续发展对策。\"}", CJ_aspect: "区域性", CJ_standard: "2", CJ_standardRequirement: "在结构不良的地理情境中，运用恰当的地理工具与方法，分析区域地理环境整体特征的主要方面，解释其成因；运用相关证据说明区域内一个环境条件改变对区域地理环境整体的影响，以及对人类活动的影响；比较不同区域地理环境、地理过程的差异；运用相关证据说明区域间联系的原因、方式和结果；分析区域发展的地理背景，面临的主要问题，提出区域可持续发展对策。"};

MERGE (n:AcademicQuality {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:06"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:06", title: "学业质量", description: "学业质量是学生在完成本学科课程学习后学业成就的综合表现，体现课程目标的达成程度，反映核心素养发展状况。学业质量标准依据学科核心素养水平划分（附录2），结合结构化课程内容，描述学习结果的典型表现，整体标识和刻画学业质量的不同水平。", subject: "SB0308", type: "AcademicQuality", applicableLevel: "OB06", contentJson: "{\"aspect\": \"实践性\", \"standard\": \"2\", \"standardRequirement\": \"在结构不良的地理情境中，运用恰当的地理工具与方法，结合特定区域的地理环境和人地关系状况，提出较复杂的地理探究问题或任务，并针对问题或任务设计可操作且完整的地理实践活动方案；秉持求真务实的科学态度，较熟练地运用科学探究的基本方法，完成多角度野外考察、社会调查、地理实验等室外收集信息工作，并用分类、综合比较等方法对复杂信息进行处理，得出结论；在地理实践的过程中，表现出提出独立见解的主动性、与同伴合作的积极性，以及对科学探究的兴趣和克服困难的勇气。\"}", CJ_aspect: "实践性", CJ_standard: "2", CJ_standardRequirement: "在结构不良的地理情境中，运用恰当的地理工具与方法，结合特定区域的地理环境和人地关系状况，提出较复杂的地理探究问题或任务，并针对问题或任务设计可操作且完整的地理实践活动方案；秉持求真务实的科学态度，较熟练地运用科学探究的基本方法，完成多角度野外考察、社会调查、地理实验等室外收集信息工作，并用分类、综合比较等方法对复杂信息进行处理，得出结论；在地理实践的过程中，表现出提出独立见解的主动性、与同伴合作的积极性，以及对科学探究的兴趣和克服困难的勇气。"};

MERGE (n:AcademicQuality {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:07"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:07", title: "学业质量", description: "学业质量是学生在完成本学科课程学习后学业成就的综合表现，体现课程目标的达成程度，反映核心素养发展状况。学业质量标准依据学科核心素养水平划分（附录2），结合结构化课程内容，描述学习结果的典型表现，整体标识和刻画学业质量的不同水平。", subject: "SB0308", type: "AcademicQuality", applicableLevel: "OB06", contentJson: "{\"aspect\": \"综合性\", \"standard\": \"3\", \"standardRequirement\": \"在结构不良的地理情境中，运用恰当的地理工具与方法，准确分析情境中的地理要素，综合分析地理要素相互影响的方式和结果，得出综合性强的结论；分析情境中地理事物和现象的分布、特征等信息，结合时空变化，综合分析地理分布、特征等的形成过程或原因、条件，并解释地理过程前后承袭、时间变化等的特点和规律；运用相关证据辨证分析地理环境满足人类活动具有的潜力和有限性，说明区域中人口、资源、环境、发展之间的相互关系，提出实现人地关系协调发展的见解。\"}", CJ_aspect: "综合性", CJ_standard: "3", CJ_standardRequirement: "在结构不良的地理情境中，运用恰当的地理工具与方法，准确分析情境中的地理要素，综合分析地理要素相互影响的方式和结果，得出综合性强的结论；分析情境中地理事物和现象的分布、特征等信息，结合时空变化，综合分析地理分布、特征等的形成过程或原因、条件，并解释地理过程前后承袭、时间变化等的特点和规律；运用相关证据辨证分析地理环境满足人类活动具有的潜力和有限性，说明区域中人口、资源、环境、发展之间的相互关系，提出实现人地关系协调发展的见解。"};

MERGE (n:AcademicQuality {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:08"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:08", title: "学业质量", description: "学业质量是学生在完成本学科课程学习后学业成就的综合表现，体现课程目标的达成程度，反映核心素养发展状况。学业质量标准依据学科核心素养水平划分（附录2），结合结构化课程内容，描述学习结果的典型表现，整体标识和刻画学业质量的不同水平。", subject: "SB0308", type: "AcademicQuality", applicableLevel: "OB06", contentJson: "{\"aspect\": \"区域性\", \"standard\": \"3\", \"standardRequirement\": \"在结构不良的地理情境中，运用恰当的地理工具与方法，综合分析区域地理环境的整体特征及时空变化特点，解释其成因；举出典型的正反例证，较为辩证地分析，说明区域内一个环境条件改变对区域地理环境整体的影响，以及对人类活动的影响；综合比较不同区域地理环境、地理过程的差异；运用相关证据说明区域间物质流动、人员流动和信息流动的方式、强度，以及空间组织形式；对比、分析不同区域发展的地理背景，对不同区域因地制宜发展的路径和方法进行有观点、有论据的综合评价。\"}", CJ_aspect: "区域性", CJ_standard: "3", CJ_standardRequirement: "在结构不良的地理情境中，运用恰当的地理工具与方法，综合分析区域地理环境的整体特征及时空变化特点，解释其成因；举出典型的正反例证，较为辩证地分析，说明区域内一个环境条件改变对区域地理环境整体的影响，以及对人类活动的影响；综合比较不同区域地理环境、地理过程的差异；运用相关证据说明区域间物质流动、人员流动和信息流动的方式、强度，以及空间组织形式；对比、分析不同区域发展的地理背景，对不同区域因地制宜发展的路径和方法进行有观点、有论据的综合评价。"};

MERGE (n:AcademicQuality {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:09"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:09", title: "学业质量", description: "学业质量是学生在完成本学科课程学习后学业成就的综合表现，体现课程目标的达成程度，反映核心素养发展状况。学业质量标准依据学科核心素养水平划分（附录2），结合结构化课程内容，描述学习结果的典型表现，整体标识和刻画学业质量的不同水平。", subject: "SB0308", type: "AcademicQuality", applicableLevel: "OB06", contentJson: "{\"aspect\": \"实践性\", \"standard\": \"3\", \"standardRequirement\": \"在结构不良的地理情境中，运用恰当的地理工具与方法，结合特定区域的地理环境和人地关系状况，提出复杂的地理探究问题或任务，并针对问题或任务设计可操作且完整、有创意的地理实践活动方案；秉持求真务实的科学态度，熟练地运用科学探究的基本方法，完成多角度、有创意的野外考察、社会调查、地理实验等室外收集信息工作，并采用统计方法等分析数据，得出有数据支撑的结论，撰写研究报告；在地理实践过程中，表现出敢于创新的品质、团队合作的态度和克服困难的勇气，以及一定的组织领导力。\"}", CJ_aspect: "实践性", CJ_standard: "3", CJ_standardRequirement: "在结构不良的地理情境中，运用恰当的地理工具与方法，结合特定区域的地理环境和人地关系状况，提出复杂的地理探究问题或任务，并针对问题或任务设计可操作且完整、有创意的地理实践活动方案；秉持求真务实的科学态度，熟练地运用科学探究的基本方法，完成多角度、有创意的野外考察、社会调查、地理实验等室外收集信息工作，并采用统计方法等分析数据，得出有数据支撑的结论，撰写研究报告；在地理实践过程中，表现出敢于创新的品质、团队合作的态度和克服困难的勇气，以及一定的组织领导力。"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:01"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:01", title: "地球科学基础", description: "地理1的第1个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"必修课程\", \"BookModule\": \"地理1\"}", CJ_courseModule: "必修课程", CJ_BookModule: "地理1"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:02"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:02", title: "自然地理实践", description: "地理1的第2个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"必修课程\", \"BookModule\": \"地理1\"}", CJ_courseModule: "必修课程", CJ_BookModule: "地理1"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:03"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:03", title: "自然环境与人类活动的关系", description: "地理1的第3个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"必修课程\", \"BookModule\": \"地理1\"}", CJ_courseModule: "必修课程", CJ_BookModule: "地理1"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:04"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:04", title: "人口", description: "地理2的第1个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"必修课程\", \"BookModule\": \"地理2\"}", CJ_courseModule: "必修课程", CJ_BookModule: "地理2"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:05"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:05", title: "城镇和乡村", description: "地理2的第2个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"必修课程\", \"BookModule\": \"地理2\"}", CJ_courseModule: "必修课程", CJ_BookModule: "地理2"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:06"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:06", title: "产业区位选择", description: "地理2的第3个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"必修课程\", \"BookModule\": \"地理2\"}", CJ_courseModule: "必修课程", CJ_BookModule: "地理2"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:07"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:07", title: "环境与发展", description: "地理2的第4个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"必修课程\", \"BookModule\": \"地理2\"}", CJ_courseModule: "必修课程", CJ_BookModule: "地理2"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:08"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:08", title: "地球运动", description: "选择性必修1自然地理基础的第1个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修1 自然地理基础\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修1 自然地理基础"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:09"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:09", title: "自然环境中的物质运动与能量交换", description: "选择性必修1自然地理基础的第2个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修1 自然地理基础\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修1 自然地理基础"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:10"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:10", title: "自然环境的整体性和差异性", description: "选择性必修1自然地理基础的第3个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修1 自然地理基础\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修1 自然地理基础"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:11"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:11", title: "区域的概念和类型", description: "选择性必修2区域发展的第1个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修2 区域发展\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修2 区域发展"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:12"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:12", title: "区域发展", description: "选择性必修2区域发展的第2个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修2 区域发展\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修2 区域发展"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:13"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:13", title: "区域协调", description: "选择性必修2区域发展的第3个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修2 区域发展\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修2 区域发展"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:14"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:14", title: "自然资源开发利用", description: "选择性必修3资源、环境与国家安全的第1个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修3 资源、环境与国家安全\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修3 资源、环境与国家安全"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:15"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:15", title: "环境保护", description: "选择性必修3资源、环境与国家安全的第2个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修3 资源、环境与国家安全\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修3 资源、环境与国家安全"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:16"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:16", title: "资源、环境对国家安全的重要意义", description: "选择性必修3资源、环境与国家安全的第3个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选择性必修课程\", \"BookModule\": \"选择性必修3 资源、环境与国家安全\"}", CJ_courseModule: "选择性必修课程", CJ_BookModule: "选择性必修3 资源、环境与国家安全"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:17"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:17", title: "天体观测", description: "选修1天文学基础的第1个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修1 天文学基础\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修1 天文学基础"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:18"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:18", title: "地月系和太阳系", description: "选修1天文学基础的第2个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修1 天文学基础\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修1 天文学基础"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:19"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:19", title: "恒星和银河系", description: "选修1天文学基础的第3个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修1 天文学基础\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修1 天文学基础"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:20"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:20", title: "宇宙", description: "选修1天文学基础的第4个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修1 天文学基础\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修1 天文学基础"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:21"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:21", title: "海岸与海洋", description: "选修2海洋地理的第1个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修2 海洋地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修2 海洋地理"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:22"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:22", title: "海洋资源与开发", description: "选修2海洋地理的第2个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修2 海洋地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修2 海洋地理"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:23"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:23", title: "海洋灾害与污染", description: "选修2海洋地理的第3个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修2 海洋地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修2 海洋地理"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:24"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:24", title: "海洋权益", description: "选修2海洋地理的第4个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修2 海洋地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修2 海洋地理"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:25"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:25", title: "自然灾害的构成要素", description: "选修3自然灾害与防治的第1个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修3 自然灾害与防治\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修3 自然灾害与防治"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:26"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:26", title: "主要自然灾害的成因、特点与危害", description: "选修3自然灾害与防治的第2个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修3 自然灾害与防治\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修3 自然灾害与防治"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:27"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:27", title: "自然灾害的地域差异与空间分布", description: "选修3自然灾害与防治的第3个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修3 自然灾害与防治\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修3 自然灾害与防治"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:28"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:28", title: "防灾减灾的策略与措施", description: "选修3自然灾害与防治的第4个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修3 自然灾害与防治\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修3 自然灾害与防治"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:29"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:29", title: "环境问题与环境过程", description: "选修4环境保护的第1个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修4 环境保护\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修4 环境保护"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:30"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:30", title: "水环境", description: "选修4环境保护的第2个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修4 环境保护\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修4 环境保护"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:31"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:31", title: "大气环境", description: "选修4环境保护的第3个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修4 环境保护\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修4 环境保护"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:32"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:32", title: "土壤环境", description: "选修4环境保护的第4个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修4 环境保护\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修4 环境保护"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:33"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:33", title: "环境管理", description: "选修4环境保护的第5个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修4 环境保护\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修4 环境保护"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:34"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:34", title: "旅游资源及其空间分布", description: "选修5旅游地理的第1个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修5 旅游地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修5 旅游地理"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:35"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:35", title: "旅游产业活动及其空间分布", description: "选修5旅游地理的第2个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修5 旅游地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修5 旅游地理"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:36"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:36", title: "旅游资源和旅游地的保护", description: "选修5旅游地理的第3个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修5 旅游地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修5 旅游地理"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:37"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:37", title: "城镇和乡村", description: "选修6城乡规划的第1个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修6 城乡规划\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修6 城乡规划"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:38"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:38", title: "城镇化", description: "选修6城乡规划的第2个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修6 城乡规划\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修6 城乡规划"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:39"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:39", title: "城乡布局和规划", description: "选修6城乡规划的第3个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修6 城乡规划\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修6 城乡规划"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:40"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:40", title: "国家领土观念", description: "选修7政治地理的第1个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修7 政治地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修7 政治地理"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:41"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:41", title: "综合国力", description: "选修7政治地理的第2个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修7 政治地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修7 政治地理"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:42"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:42", title: "世界政治地理格局", description: "选修7政治地理的第3个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修7 政治地理\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修7 政治地理"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:43"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:43", title: "地理信息系统（GIS）", description: "选修8地理信息技术应用的第1个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修8 地理信息技术应用\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修8 地理信息技术应用"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:44"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:44", title: "遥感（RS）", description: "选修8地理信息技术应用的第2个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修8 地理信息技术应用\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修8 地理信息技术应用"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:45"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:45", title: "全球卫星导航系统（GNSS）", description: "选修8地理信息技术应用的第3个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修8 地理信息技术应用\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修8 地理信息技术应用"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:46"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:46", title: "数字化生存", description: "选修8地理信息技术应用的第4个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修8 地理信息技术应用\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修8 地理信息技术应用"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:47"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:47", title: "考察工具的应用", description: "选修9地理野外实习的第1个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修9 地理野外实习\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修9 地理野外实习"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:48"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:48", title: "野外观察、发现与欣赏", description: "选修9地理野外实习的第2个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修9 地理野外实习\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修9 地理野外实习"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:49"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:49", title: "野外地理信息获取与样品采集", description: "选修9地理野外实习的第3个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修9 地理野外实习\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修9 地理野外实习"};

MERGE (n:ModuleAspect {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:50"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:50", title: "考察报告撰写与交流", description: "选修9地理野外实习的第4个方面", subject: "SB0308", type: "ModuleAspect", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"选修课程\", \"BookModule\": \"选修9 地理野外实习\"}", CJ_courseModule: "选修课程", CJ_BookModule: "选修9 地理野外实习"};

// =====================================================
// 导入关系
// =====================================================

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MERGE (source)-[r:courseModuleIncludesBook]->(target)
SET r.label = "包括 / includesBook";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:01"})
MERGE (source)-[r:bookBelongsToCourseModule]->(target)
SET r.label = "是必修课程的一部分 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MERGE (source)-[r:courseModuleIncludesBook]->(target)
SET r.label = "包括 / includesBook";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:01"})
MERGE (source)-[r:bookBelongsToCourseModule]->(target)
SET r.label = "是必修课程的一部分 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
MERGE (source)-[r:courseModuleIncludesBook]->(target)
SET r.label = "包括三个模块，即自然地理基础，区域发展，资源、环境与国家安全 / includesBook";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:02"})
MERGE (source)-[r:bookBelongsToCourseModule]->(target)
SET r.label = "是选择性必修课程的一部分 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:04"})
MERGE (source)-[r:courseModuleIncludesBook]->(target)
SET r.label = "包括三个模块，即自然地理基础，区域发展，资源、环境与国家安全 / includesBook";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:02"})
MERGE (source)-[r:bookBelongsToCourseModule]->(target)
SET r.label = "是选择性必修课程的一部分 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:05"})
MERGE (source)-[r:courseModuleIncludesBook]->(target)
SET r.label = "包括三个模块，即自然地理基础，区域发展，资源、环境与国家安全 / includesBook";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:02"})
MERGE (source)-[r:bookBelongsToCourseModule]->(target)
SET r.label = "是选择性必修课程的一部分 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MERGE (source)-[r:courseModuleIncludesBook]->(target)
SET r.label = "包括九个模块，分别侧重自然领域、人文领域、技术与实践领域 / includesBook";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:03"})
MERGE (source)-[r:bookBelongsToCourseModule]->(target)
SET r.label = "是选修课程的一部分 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MERGE (source)-[r:courseModuleIncludesBook]->(target)
SET r.label = "包括九个模块，分别侧重自然领域、人文领域、技术与实践领域 / includesBook";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:03"})
MERGE (source)-[r:bookBelongsToCourseModule]->(target)
SET r.label = "是选修课程的一部分 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MERGE (source)-[r:courseModuleIncludesBook]->(target)
SET r.label = "包括九个模块，分别侧重自然领域、人文领域、技术与实践领域 / includesBook";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:03"})
MERGE (source)-[r:bookBelongsToCourseModule]->(target)
SET r.label = "是选修课程的一部分 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MERGE (source)-[r:courseModuleIncludesBook]->(target)
SET r.label = "包括九个模块，分别侧重自然领域、人文领域、技术与实践领域 / includesBook";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:03"})
MERGE (source)-[r:bookBelongsToCourseModule]->(target)
SET r.label = "是选修课程的一部分 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
MERGE (source)-[r:courseModuleIncludesBook]->(target)
SET r.label = "包括九个模块，分别侧重自然领域、人文领域、技术与实践领域 / includesBook";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:03"})
MERGE (source)-[r:bookBelongsToCourseModule]->(target)
SET r.label = "是选修课程的一部分 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
MERGE (source)-[r:courseModuleIncludesBook]->(target)
SET r.label = "包括九个模块，分别侧重自然领域、人文领域、技术与实践领域 / includesBook";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:03"})
MERGE (source)-[r:bookBelongsToCourseModule]->(target)
SET r.label = "是选修课程的一部分 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MERGE (source)-[r:courseModuleIncludesBook]->(target)
SET r.label = "包括九个模块，分别侧重自然领域、人文领域、技术与实践领域 / includesBook";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:03"})
MERGE (source)-[r:bookBelongsToCourseModule]->(target)
SET r.label = "是选修课程的一部分 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MERGE (source)-[r:courseModuleIncludesBook]->(target)
SET r.label = "包括九个模块，分别侧重自然领域、人文领域、技术与实践领域 / includesBook";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:03"})
MERGE (source)-[r:bookBelongsToCourseModule]->(target)
SET r.label = "是选修课程的一部分 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MERGE (source)-[r:courseModuleIncludesBook]->(target)
SET r.label = "包括九个模块，分别侧重自然领域、人文领域、技术与实践领域 / includesBook";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CourseModule:03"})
MERGE (source)-[r:bookBelongsToCourseModule]->(target)
SET r.label = "是选修课程的一部分 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:01"})
MERGE (source)-[r:usedForDivision]->(target)
SET r.label = "依据划分 / usedForDivision";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:01"})
MERGE (source)-[r:reflectsDevelopment]->(target)
SET r.label = "反映发展 / reflectsDevelopment";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:04"})
MERGE (source)-[r:usedForDivision]->(target)
SET r.label = "依据划分 / usedForDivision";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:02"})
MERGE (source)-[r:reflectsDevelopment]->(target)
SET r.label = "反映发展 / reflectsDevelopment";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:07"})
MERGE (source)-[r:usedForDivision]->(target)
SET r.label = "依据划分 / usedForDivision";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:03"})
MERGE (source)-[r:reflectsDevelopment]->(target)
SET r.label = "反映发展 / reflectsDevelopment";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:01"})
MERGE (source)-[r:usedForDivision]->(target)
SET r.label = "依据划分 / usedForDivision";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MERGE (source)-[r:reflectsDevelopment]->(target)
SET r.label = "反映发展 / reflectsDevelopment";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:04"})
MERGE (source)-[r:usedForDivision]->(target)
SET r.label = "依据划分 / usedForDivision";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:05"})
MERGE (source)-[r:reflectsDevelopment]->(target)
SET r.label = "反映发展 / reflectsDevelopment";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:07"})
MERGE (source)-[r:usedForDivision]->(target)
SET r.label = "依据划分 / usedForDivision";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:06"})
MERGE (source)-[r:reflectsDevelopment]->(target)
SET r.label = "反映发展 / reflectsDevelopment";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:02"})
MERGE (source)-[r:usedForDivision]->(target)
SET r.label = "依据划分 / usedForDivision";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:07"})
MERGE (source)-[r:reflectsDevelopment]->(target)
SET r.label = "反映发展 / reflectsDevelopment";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:05"})
MERGE (source)-[r:usedForDivision]->(target)
SET r.label = "依据划分 / usedForDivision";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MERGE (source)-[r:reflectsDevelopment]->(target)
SET r.label = "反映发展 / reflectsDevelopment";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:08"})
MERGE (source)-[r:usedForDivision]->(target)
SET r.label = "依据划分 / usedForDivision";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:09"})
MERGE (source)-[r:reflectsDevelopment]->(target)
SET r.label = "反映发展 / reflectsDevelopment";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:03"})
MERGE (source)-[r:usedForDivision]->(target)
SET r.label = "依据划分 / usedForDivision";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:reflectsDevelopment]->(target)
SET r.label = "反映发展 / reflectsDevelopment";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:06"})
MERGE (source)-[r:usedForDivision]->(target)
SET r.label = "依据划分 / usedForDivision";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:11"})
MERGE (source)-[r:reflectsDevelopment]->(target)
SET r.label = "反映发展 / reflectsDevelopment";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:09"})
MERGE (source)-[r:usedForDivision]->(target)
SET r.label = "依据划分 / usedForDivision";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:12"})
MERGE (source)-[r:reflectsDevelopment]->(target)
SET r.label = "反映发展 / reflectsDevelopment";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:001"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:01"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:001"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:002"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:01"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:002"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:003"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:01"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:003"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:004"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:02"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:004"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:009"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:02"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:009"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:010"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:02"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:010"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:005"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:03"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:005"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:006"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:03"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:006"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:007"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:03"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:007"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:008"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:03"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:008"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:011"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:03"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:011"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:012"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:03"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:012"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:013"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:04"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:013"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:014"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:05"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:014"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:015"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:05"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:015"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:016"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:05"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:016"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:017"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:06"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:017"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:018"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:06"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:018"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:019"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:07"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:019"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:020"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:07"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:020"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:021"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:07"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:021"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:022"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:07"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:022"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:023"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:07"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:023"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:024"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:08"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:024"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:025"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:09"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:025"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:026"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:09"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:026"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:027"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:09"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:027"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:028"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:09"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:028"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:029"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:09"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:029"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:030"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:09"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:030"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:031"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:09"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:031"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:032"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:10"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:032"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:033"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:11"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:033"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:034"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:12"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:034"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:035"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:12"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:035"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:036"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:12"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:036"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:037"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:12"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:037"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:038"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:12"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:038"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:039"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:13"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:13"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:039"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:040"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:13"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:13"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:040"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:041"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:13"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:13"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:041"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:042"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:14"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:14"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:042"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:043"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:14"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:14"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:043"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:044"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:14"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:14"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:044"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:045"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:14"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:14"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:045"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:046"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:15"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:15"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:046"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:047"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:15"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:15"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:047"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:048"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:15"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:15"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:048"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:049"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:16"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:16"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:049"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:050"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:17"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:17"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:050"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:051"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:17"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:17"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:051"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:052"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:18"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:18"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:052"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:053"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:18"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:18"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:053"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:054"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:18"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:18"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:054"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:055"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:18"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:18"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:055"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:056"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:19"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:19"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:056"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:057"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:19"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:19"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:057"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:058"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:19"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:19"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:058"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:059"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:20"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:20"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:059"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:060"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:21"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:21"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:060"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:061"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:21"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:21"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:061"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:062"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:21"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:21"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:062"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:063"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:22"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:22"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:063"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:064"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:22"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:22"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:064"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:065"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:22"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:22"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:065"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:066"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:23"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:23"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:066"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:067"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:23"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:23"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:067"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:068"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:24"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:24"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:068"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:069"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:24"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:24"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:069"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:070"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:24"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:24"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:070"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:071"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:25"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:25"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:071"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:072"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:26"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:26"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:072"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:073"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:26"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:26"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:073"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:074"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:26"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:26"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:074"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:075"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:26"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:26"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:075"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:076"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:27"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:27"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:076"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:077"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:27"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:27"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:077"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:078"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:28"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:28"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:078"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:079"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:28"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:28"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:079"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:080"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:28"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:28"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:080"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:083"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:30"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:30"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:083"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:084"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:30"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:30"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:084"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:085"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:30"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:30"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:085"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:087"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:31"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:31"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:087"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:088"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:31"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:31"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:088"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:090"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:32"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:32"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:090"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:091"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:32"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:32"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:091"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:092"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:33"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:33"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:092"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:081"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:29"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:29"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:081"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:082"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:29"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:29"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:082"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:086"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:29"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:29"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:086"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:089"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:29"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:29"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:089"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:093"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:34"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:34"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:093"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:094"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:34"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:34"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:094"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:096"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:34"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:34"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:096"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:097"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:35"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:35"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:097"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:098"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:35"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:35"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:098"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:100"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:35"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:35"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:100"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:095"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:36"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:36"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:095"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:099"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:36"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:36"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:099"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:101"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:36"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:36"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:101"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:102"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:37"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:37"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:102"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:103"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:37"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:37"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:103"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:104"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:37"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:37"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:104"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:105"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:38"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:38"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:105"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:106"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:38"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:38"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:106"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:107"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:38"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:38"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:107"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:108"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:39"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:39"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:108"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:109"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:39"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:39"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:109"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:110"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:39"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:39"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:110"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:111"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:39"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:39"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:111"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:093"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:34"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:34"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:093"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:094"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:34"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:34"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:094"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:096"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:34"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:34"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:096"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:097"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:35"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:35"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:097"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:098"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:35"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:35"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:098"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:100"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:35"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:35"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:100"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:095"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:36"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:36"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:095"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:099"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:36"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:36"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:099"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:101"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:36"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:36"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:101"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:102"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:37"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:37"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:102"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:103"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:37"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:37"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:103"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:104"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:37"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:37"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:104"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:105"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:38"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:38"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:105"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:106"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:38"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:38"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:106"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:107"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:38"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:38"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:107"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:108"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:39"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:39"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:108"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:109"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:39"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:39"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:109"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:110"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:39"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:39"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:110"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:111"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:39"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:39"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:111"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:112"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:40"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:40"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:112"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:113"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:40"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:40"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:113"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:114"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:40"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:40"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:114"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:115"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:40"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:40"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:115"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:116"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:41"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:41"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:116"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:117"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:41"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:41"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:117"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:118"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:42"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:42"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:118"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:119"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:42"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:42"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:119"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:120"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:42"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:42"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:120"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:121"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:42"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:42"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:121"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:122"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:43"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:43"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:122"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:123"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:43"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:43"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:123"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:124"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:43"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:43"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:124"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:125"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:43"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:43"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:125"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:126"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:43"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:43"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:126"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:127"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:43"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:43"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:127"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:128"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:44"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:44"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:128"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:129"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:44"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:44"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:129"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:130"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:45"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:45"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:130"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:131"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:45"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:45"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:131"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:132"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:47"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:47"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:132"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:133"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:47"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:47"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:133"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:134"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:48"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:48"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:134"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:135"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:48"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:48"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:135"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:136"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:48"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:48"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:136"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:137"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:48"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:48"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:137"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:138"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:48"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:48"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:138"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:139"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:48"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:48"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:139"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:140"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:49"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:49"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:140"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:141"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:50"})
MERGE (source)-[r:themeBelongsToAspect]->(target)
SET r.label = "属于方面 / belongsToAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:50"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:141"})
MERGE (source)-[r:aspectManifestsAsTheme]->(target)
SET r.label = "表现为学习主题 / manifestsAsTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:001"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:001"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用资料 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:002"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:002"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用示意图 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:003"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:003"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用地质年代表 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:004"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:004"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "通过野外观察 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:005"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:005"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用图表 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:006"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:006"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用示意图 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:007"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:007"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用示意图 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:008"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:008"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用图表 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:009"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:009"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "通过野外观察 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:010"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:010"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "通过野外观察 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:011"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:011"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用资料 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:012"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:012"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "通过探究 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:013"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:013"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用资料 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:014"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:014"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "结合实例 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:015"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:015"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "结合实例 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:016"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:016"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用资料 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:017"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:017"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "结合实例 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:018"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:018"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "结合实例 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:019"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:019"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用专题地图 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:020"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:020"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "结合实例 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:021"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:021"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用资料 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:022"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:022"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用资料 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:023"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:023"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "通过探究 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:024"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:024"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "结合实例 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:025"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:025"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用示意图 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:026"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:026"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "结合实例 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:027"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:027"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用示意图 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:028"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:028"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用示意图 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:029"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:029"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "绘制示意图 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:030"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:030"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用世界洋流分布图 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:031"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:031"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用图表 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:032"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:032"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用图表 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:050"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:050"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "在星图、天球仪上 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:051"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:051"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "了解 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:052"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:052"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "简述 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:053"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:053"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用太阳系模式图 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:054"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:054"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用图表、软件等资料 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:055"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:055"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "观察并描述 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:056"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:056"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "绘制 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:057"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:057"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用图表等资料 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:058"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:058"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "观察并运用图表等资料 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:059"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:059"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "简述 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:060"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:060"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用图片资料 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:061"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:061"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "观察海底地形图 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:062"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:062"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "说明 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:063"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:063"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "解释 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:064"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:064"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "说明 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:065"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:065"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "举例说明 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:066"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:066"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "举例说明 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:067"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:067"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "说明 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:068"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:068"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "结合实例 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:069"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:069"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "根据《联合国海洋法公约》 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:070"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:070"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "结合近些年发生的海洋争端事件 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:071"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:071"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "说明 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:072"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:072"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "解释 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:073"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:073"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "分析 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:074"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:074"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "举例说明 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:075"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:075"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "举例说明 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:076"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:076"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用图表资料 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:077"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:077"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "结合实例 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:078"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:078"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "结合实例 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:079"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:079"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "以地震等自然灾害为例 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:080"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:080"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "说明 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:081"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:081"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "简要说明 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:082"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:082"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用资料 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:083"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:083"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用资料 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:084"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:084"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "学会 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:085"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:085"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "针对某一具体区域 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:086"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:086"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "结合实例 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:087"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:087"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "解释 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:088"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:088"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "结合资料 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:089"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:089"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用资料 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:090"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:090"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "解释 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:091"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:091"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "学会 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:092"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:092"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "结合实例 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:093"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:093"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "描述 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:094"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:094"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "举例说明 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:095"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:095"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "区别 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:096"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:096"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "结合实例 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:097"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:097"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "结合实例 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:098"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:098"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "结合实例 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:099"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:099"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "举例说明 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:100"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:100"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "结合实例 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:101"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:101"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "举例说明 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:102"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:102"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "举例说明 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:103"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:103"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "举例说明 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:104"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:104"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "结合实例 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:105"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:105"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用资料 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:106"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:106"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "举例说明 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:107"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:107"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "举例说明 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:108"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:108"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用资料 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:109"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:109"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "结合实例 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:110"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:110"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "结合实例 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:111"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:111"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用资料 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:112"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:112"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "解释 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:113"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:113"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "说明 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:114"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:114"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "结合首都选址实例 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:115"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:115"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "结合实例 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:116"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:116"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "解释 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:117"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:117"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "结合实例 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:118"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:118"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "描述 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:119"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:119"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "结合实例 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:120"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:120"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "结合实例 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:121"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:121"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "结合实例 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:122"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:122"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "描述 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:123"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:123"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "解释 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:124"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:124"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "了解 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:125"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:125"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "解释 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:126"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:126"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "学会 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:127"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:127"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "学会 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:128"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:128"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "解释 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:129"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:129"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "说明 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:130"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:130"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "解释 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:131"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:131"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "学会 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:132"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:132"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "学会 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:133"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:133"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "运用 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:134"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:134"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "阅读 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:135"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:135"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "观察 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:136"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:136"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "学会 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:137"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:137"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "识别 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:138"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:138"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "在野外观察 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:139"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:139"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "学会 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:140"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:140"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "学会 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:141"})
MERGE (source)-[r:bookModuleIncludesTheme]->(target)
SET r.label = "主要包括 / includesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:141"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MERGE (source)-[r:themeBelongsToBookModule]->(target)
SET r.label = "学会 / belongsToBookModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:01"})
MERGE (source)-[r:moduleAchievesStandard]->(target)
SET r.label = "达成学业质量要求 / achievesStandard";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MERGE (source)-[r:standardAppliedInModule]->(target)
SET r.label = "指导模块学习 / guidesModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:03"})
MERGE (source)-[r:moduleAchievesStandard]->(target)
SET r.label = "达成学业质量要求 / achievesStandard";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MERGE (source)-[r:standardAppliedInModule]->(target)
SET r.label = "指导模块学习 / guidesModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:02"})
MERGE (source)-[r:moduleAchievesStandard]->(target)
SET r.label = "达成学业质量要求 / achievesStandard";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MERGE (source)-[r:standardAppliedInModule]->(target)
SET r.label = "指导模块学习 / guidesModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:03"})
MERGE (source)-[r:moduleAchievesStandard]->(target)
SET r.label = "达成学业质量要求 / achievesStandard";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MERGE (source)-[r:standardAppliedInModule]->(target)
SET r.label = "指导模块学习 / guidesModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:04"})
MERGE (source)-[r:moduleAchievesStandard]->(target)
SET r.label = "达成学业质量要求 / achievesStandard";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
MERGE (source)-[r:standardAppliedInModule]->(target)
SET r.label = "指导模块学习 / guidesModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:06"})
MERGE (source)-[r:moduleAchievesStandard]->(target)
SET r.label = "达成学业质量要求 / achievesStandard";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
MERGE (source)-[r:standardAppliedInModule]->(target)
SET r.label = "指导模块学习 / guidesModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:05"})
MERGE (source)-[r:moduleAchievesStandard]->(target)
SET r.label = "达成学业质量要求 / achievesStandard";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:04"})
MERGE (source)-[r:standardAppliedInModule]->(target)
SET r.label = "指导模块学习 / guidesModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:06"})
MERGE (source)-[r:moduleAchievesStandard]->(target)
SET r.label = "达成学业质量要求 / achievesStandard";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:04"})
MERGE (source)-[r:standardAppliedInModule]->(target)
SET r.label = "指导模块学习 / guidesModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:04"})
MERGE (source)-[r:moduleAchievesStandard]->(target)
SET r.label = "达成学业质量要求 / achievesStandard";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:05"})
MERGE (source)-[r:standardAppliedInModule]->(target)
SET r.label = "指导模块学习 / guidesModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:07"})
MERGE (source)-[r:moduleAchievesStandard]->(target)
SET r.label = "达成学业质量要求 / achievesStandard";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:05"})
MERGE (source)-[r:standardAppliedInModule]->(target)
SET r.label = "指导模块学习 / guidesModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:01"})
MERGE (source)-[r:moduleSupportsStandard]->(target)
SET r.label = "支撑学业质量水平 / supportsStandard";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MERGE (source)-[r:standardSupportedByModule]->(target)
SET r.label = "被模块支撑 / supportedByModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:04"})
MERGE (source)-[r:moduleSupportsStandard]->(target)
SET r.label = "支撑学业质量水平 / supportsStandard";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MERGE (source)-[r:standardSupportedByModule]->(target)
SET r.label = "被模块支撑 / supportedByModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:05"})
MERGE (source)-[r:moduleSupportsStandard]->(target)
SET r.label = "支撑学业质量水平 / supportsStandard";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MERGE (source)-[r:standardSupportedByModule]->(target)
SET r.label = "被模块支撑 / supportedByModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:04"})
MERGE (source)-[r:moduleSupportsStandard]->(target)
SET r.label = "支撑学业质量水平 / supportsStandard";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MERGE (source)-[r:standardSupportedByModule]->(target)
SET r.label = "被模块支撑 / supportedByModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:06"})
MERGE (source)-[r:moduleSupportsStandard]->(target)
SET r.label = "支撑学业质量水平 / supportsStandard";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MERGE (source)-[r:standardSupportedByModule]->(target)
SET r.label = "被模块支撑 / supportedByModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:07"})
MERGE (source)-[r:moduleSupportsStandard]->(target)
SET r.label = "支撑学业质量水平 / supportsStandard";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MERGE (source)-[r:standardSupportedByModule]->(target)
SET r.label = "被模块支撑 / supportedByModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:09"})
MERGE (source)-[r:moduleSupportsStandard]->(target)
SET r.label = "支撑学业质量水平 / supportsStandard";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MERGE (source)-[r:standardSupportedByModule]->(target)
SET r.label = "被模块支撑 / supportedByModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:05"})
MERGE (source)-[r:moduleSupportsStandard]->(target)
SET r.label = "支撑学业质量水平 / supportsStandard";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
MERGE (source)-[r:standardSupportedByModule]->(target)
SET r.label = "被模块支撑 / supportedByModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:06"})
MERGE (source)-[r:moduleSupportsStandard]->(target)
SET r.label = "支撑学业质量水平 / supportsStandard";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
MERGE (source)-[r:standardSupportedByModule]->(target)
SET r.label = "被模块支撑 / supportedByModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:05"})
MERGE (source)-[r:moduleSupportsStandard]->(target)
SET r.label = "支撑学业质量水平 / supportsStandard";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
MERGE (source)-[r:standardSupportedByModule]->(target)
SET r.label = "被模块支撑 / supportedByModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:07"})
MERGE (source)-[r:moduleSupportsStandard]->(target)
SET r.label = "支撑学业质量水平 / supportsStandard";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MERGE (source)-[r:standardSupportedByModule]->(target)
SET r.label = "被模块支撑 / supportedByModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:08"})
MERGE (source)-[r:moduleSupportsStandard]->(target)
SET r.label = "支撑学业质量水平 / supportsStandard";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MERGE (source)-[r:standardSupportedByModule]->(target)
SET r.label = "被模块支撑 / supportedByModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:09"})
MERGE (source)-[r:moduleSupportsStandard]->(target)
SET r.label = "支撑学业质量水平 / supportsStandard";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MERGE (source)-[r:standardSupportedByModule]->(target)
SET r.label = "被模块支撑 / supportedByModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:09"})
MERGE (source)-[r:moduleSupportsStandard]->(target)
SET r.label = "支撑学业质量水平 / supportsStandard";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:AcademicQuality:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MERGE (source)-[r:standardSupportedByModule]->(target)
SET r.label = "被模块支撑 / supportedByModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:001"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:001"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:01"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:001"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:001"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:02"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:002"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:002"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:04"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:003"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:003"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:03"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:13"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:004"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:004"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:13"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:14"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:004"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:004"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:14"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:15"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:004"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:004"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:15"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:005"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:005"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:06"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:006"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:006"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:07"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:006"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:006"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:08"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:007"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:007"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:10"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:008"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:008"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:11"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:008"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:008"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:12"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:17"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:009"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:009"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:17"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:16"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:010"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:010"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:16"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:18"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:010"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:010"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:18"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:19"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:011"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:011"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:19"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:20"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:011"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:011"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:20"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:21"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:011"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:011"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:21"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:22"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:011"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:011"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:22"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:23"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:011"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:011"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:23"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:22"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:012"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:012"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:22"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:23"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:012"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:012"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:23"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:24"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:013"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:013"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:24"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:25"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:013"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:013"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:25"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:26"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:013"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:013"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:26"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:27"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:013"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:013"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:27"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:28"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:014"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:014"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:28"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:29"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:014"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:014"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:29"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:30"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:014"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:014"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:30"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:31"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:014"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:014"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:31"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:28"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:015"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:015"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:28"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:29"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:015"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:015"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:29"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:31"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:015"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:015"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:31"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:29"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:016"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:016"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:29"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:30"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:016"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:016"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:30"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:31"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:016"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:016"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:31"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:32"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:017"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:017"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:32"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:33"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:017"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:017"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:33"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:34"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:017"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:017"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:34"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:35"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:017"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:017"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:35"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:36"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:018"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:018"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:36"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:37"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:018"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:018"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:37"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:018"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:018"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:38"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:39"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:019"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:019"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:39"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:40"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:019"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:019"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:40"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:41"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:019"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:019"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:41"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:41"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:020"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:020"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:41"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:41"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:021"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:021"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:41"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:39"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:022"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:022"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:39"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:40"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:022"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:022"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:40"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:22"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:023"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:023"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:22"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:23"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:023"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:023"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:23"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:43"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:024"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:024"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:43"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:44"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:024"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:024"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:44"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:46"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:025"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:025"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:46"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:47"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:025"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:025"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:47"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:48"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:025"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:025"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:48"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:46"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:026"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:026"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:46"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:47"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:026"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:026"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:47"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:48"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:026"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:026"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:48"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:49"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:027"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:027"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:49"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:50"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:027"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:027"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:50"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:51"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:027"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:027"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:51"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:49"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:028"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:028"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:49"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:50"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:028"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:028"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:50"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:51"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:028"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:028"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:51"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:53"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:029"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:029"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:53"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:55"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:029"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:029"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:55"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:56"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:029"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:029"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:56"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:54"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:030"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:030"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:54"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:55"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:030"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:030"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:55"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:55"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:031"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:031"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:55"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:56"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:031"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:031"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:56"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:57"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:032"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:032"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:57"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:58"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:032"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:032"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:58"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:59"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:032"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:032"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:59"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:60"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:033"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:033"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:60"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:61"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:033"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:033"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:61"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:62"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:033"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:033"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:62"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:60"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:034"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:034"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:60"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:61"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:034"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:034"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:61"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:60"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:035"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:035"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:60"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:61"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:035"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:035"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:61"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:66"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:035"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:035"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:66"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:63"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:036"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:036"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:63"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:64"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:036"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:036"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:64"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:67"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:036"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:036"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:67"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:63"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:037"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:037"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:63"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:64"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:037"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:037"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:64"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:67"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:037"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:037"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:67"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:64"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:038"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:038"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:64"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:65"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:038"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:038"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:65"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:63"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:039"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:039"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:63"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:67"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:039"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:039"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:67"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:69"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:039"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:039"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:69"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:70"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:039"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:039"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:70"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:65"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:040"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:040"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:65"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:69"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:040"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:040"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:69"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:70"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:040"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:040"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:70"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:71"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:041"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:041"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:71"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:72"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:042"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:042"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:72"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:75"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:042"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:042"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:75"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:76"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:042"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:042"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:76"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:77"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:042"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:042"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:77"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:75"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:043"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:043"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:75"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:83"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:043"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:043"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:83"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:77"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:044"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:044"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:77"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:83"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:044"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:044"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:83"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:75"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:045"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:045"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:75"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:83"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:045"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:045"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:83"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:79"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:046"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:046"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:79"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:80"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:046"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:046"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:80"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:81"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:046"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:046"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:81"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:84"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:046"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:046"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:84"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:85"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:046"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:046"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:85"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:89"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:046"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:046"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:89"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:72"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:047"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:047"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:72"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:81"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:047"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:047"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:81"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:79"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:048"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:048"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:79"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:80"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:048"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:048"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:80"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:82"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:048"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:048"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:82"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:81"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:049"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:049"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:81"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:84"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:049"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:049"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:84"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:85"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:049"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:049"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:85"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:91"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:049"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:049"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Section:91"})
MERGE (source)-[r:LearningThemeL2GovernsSection]->(target)
SET r.label = "二级主题统领小节 / governsSection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CourseTarget:01"})
MERGE (source)-[r:CoreLiteracyLevelMeetsCourseTarget]->(target)
SET r.label = "是“人地协调观-水平1”的目标要求 / isTargetRequirementForLiteracylevel";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CourseTarget:01"})
MERGE (source)-[r:CoreLiteracyLevelMeetsCourseTarget]->(target)
SET r.label = "是“人地协调观-水平2”的目标要求 / isTargetRequirementForLiteracylevel";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CourseTarget:01"})
MERGE (source)-[r:CoreLiteracyLevelMeetsCourseTarget]->(target)
SET r.label = "是“人地协调观-水平3”的目标要求 / isTargetRequirementForLiteracylevel";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CourseTarget:02"})
MERGE (source)-[r:CoreLiteracyLevelMeetsCourseTarget]->(target)
SET r.label = "是“综合思维-水平1”的目标要求 / isTargetRequirementForLiteracylevel";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CourseTarget:02"})
MERGE (source)-[r:CoreLiteracyLevelMeetsCourseTarget]->(target)
SET r.label = "是“综合思维-水平2”的目标要求 / isTargetRequirementForLiteracylevel";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CourseTarget:02"})
MERGE (source)-[r:CoreLiteracyLevelMeetsCourseTarget]->(target)
SET r.label = "是“综合思维-水平3”的目标要求 / isTargetRequirementForLiteracylevel";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CourseTarget:03"})
MERGE (source)-[r:CoreLiteracyLevelMeetsCourseTarget]->(target)
SET r.label = "是“区域认知-水平1”的目标要求 / isTargetRequirementForLiteracylevel";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CourseTarget:03"})
MERGE (source)-[r:CoreLiteracyLevelMeetsCourseTarget]->(target)
SET r.label = "是“区域认知-水平2”的目标要求 / isTargetRequirementForLiteracylevel";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CourseTarget:03"})
MERGE (source)-[r:CoreLiteracyLevelMeetsCourseTarget]->(target)
SET r.label = "是“区域认知-水平3”的目标要求 / isTargetRequirementForLiteracylevel";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CourseTarget:04"})
MERGE (source)-[r:CoreLiteracyLevelMeetsCourseTarget]->(target)
SET r.label = "是“地理实践力-水平1”的目标要求 / isTargetRequirementForLiteracylevel";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CourseTarget:04"})
MERGE (source)-[r:CoreLiteracyLevelMeetsCourseTarget]->(target)
SET r.label = "是“地理实践力-水平2”的目标要求 / isTargetRequirementForLiteracylevel";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CourseTarget:04"})
MERGE (source)-[r:CoreLiteracyLevelMeetsCourseTarget]->(target)
SET r.label = "是“地理实践力-水平3”的目标要求 / isTargetRequirementForLiteracylevel";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:01"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:02"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:03"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:01"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:04"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:05"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:06"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:07"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:02"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:08"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:09"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:10"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:03"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:11"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:04"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:12"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:04"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:13"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:13"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:04"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:14"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:14"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:05"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:15"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:15"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:05"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:16"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:16"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:05"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:17"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:17"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:18"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:18"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:19"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:19"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:20"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:20"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:06"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:21"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:21"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:22"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:22"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:23"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:23"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:24"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:24"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:07"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:25"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:25"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:26"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:26"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:27"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:27"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:28"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:28"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:08"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:29"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:29"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:30"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:30"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:31"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:31"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:32"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:32"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:33"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:33"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:09"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:34"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:34"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:35"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:35"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:36"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:36"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:10"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:37"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:37"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:38"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:38"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:39"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:39"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:11"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:40"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:40"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:41"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:41"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:42"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:42"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:12"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:43"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:43"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:44"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:44"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:45"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:45"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:46"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:46"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:13"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:47"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:47"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:48"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:48"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:49"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:49"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:50"})
MERGE (source)-[r:moduleIncludesAspect]->(target)
SET r.label = "主要包括方面 / includesAspect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:ModuleAspect:50"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:BookModule:14"})
MERGE (source)-[r:aspectIncludedInModule]->(target)
SET r.label = "属于模块 / isIncludedInModule";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:001"})
MERGE (source)-[r:literacyEmbodiedInTheme]->(target)
SET r.label = "蕴含 / embodiedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:001"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:01"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育 / cultivates";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:011"})
MERGE (source)-[r:literacyEmbodiedInTheme]->(target)
SET r.label = "蕴含 / embodiedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:011"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:02"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "树立观念 / establishesConcept";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:022"})
MERGE (source)-[r:literacyEmbodiedInTheme]->(target)
SET r.label = "蕴含 / embodiedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:022"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:03"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "树立理念 / establishesPhilosophy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:004"})
MERGE (source)-[r:literacyRequiredByTheme]->(target)
SET r.label = "需要 / requiredBy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:004"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "增强意识与能力 / enhancesAwarenessAndAbility";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:006"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "应用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:006"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:05"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "解释现象 / explainsPhenomena";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:007"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "应用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:007"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:06"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "说明过程及意义 / illustratesProcessAndSignificance";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:002"})
MERGE (source)-[r:literacyFosteredByTheme]->(target)
SET r.label = "助于理解 / helpsUnderstand";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:002"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:07"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "说明结构 / illustratesStructure";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:013"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领 / guides";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:013"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "描述特点与说明因素 / describesCharacteristicsAndExplainsFactors";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:014"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领 / guides";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:014"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:09"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "解释结构与说明意义 / explainsStructureAndSignificance";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:004"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:004"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "通过野外观察 / throughFieldObservation";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:009"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:009"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:11"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "通过野外观察或运用标本 / throughFieldObservationOrSpecimens";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:012"})
MERGE (source)-[r:literacyGoalOfTheme]->(target)
SET r.label = "作为目标 / asGoal";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:012"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:12"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "通过探究了解应用 / throughInquiryToUnderstandApplication";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:024"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:024"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:01"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "说明意义 / illustratesSignificance";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:026"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领 / guides";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:026"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:02"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "解释影响并说明关系 / explainsImpactAndRelation";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:032"})
MERGE (source)-[r:literacyEmbodiedInTheme]->(target)
SET r.label = "蕴含 / embodiedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:032"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:03"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "分析整体性和差异性 / analyzesHolismAndDifferentiation";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:025"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "应用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:025"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "说明过程 / illustratesProcess";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:027"})
MERGE (source)-[r:literacyRequiredByTheme]->(target)
SET r.label = "需要 / requiredBy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:027"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:05"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "分析天气系统并解释现象 / analyzesWeatherSystemsAndExplainsPhenomena";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:028"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "应用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:028"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:06"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "说明分布并分析作用 / illustratesDistributionAndAnalyzesEffect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:033"})
MERGE (source)-[r:literacyFosteredByTheme]->(target)
SET r.label = "助于理解 / helpsUnderstand";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:033"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:07"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "说明含义及类型 / illustratesMeaningAndTypes";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:034"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领 / guides";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:034"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "比较异同并说明意义 / comparesSimilaritiesAndDifferencesAndExplainsSignificance";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:035"})
MERGE (source)-[r:literacyEmbodiedInTheme]->(target)
SET r.label = "蕴含 / embodiedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:035"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:09"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "说明辐射功能 / illustratesRadiationFunction";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:029"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:029"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "绘制示意图解释关系 / drawsDiagramToExplainRelationships";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:030"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:030"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:11"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "说明规律并举例说明影响 / illustratesPatternAndExamplesImpact";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:031"})
MERGE (source)-[r:literacyGoalOfTheme]->(target)
SET r.label = "作为目标 / asGoal";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:031"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:12"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "分析影响并解释现象 / analyzesImpactAndExplainsPhenomena";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:042"})
MERGE (source)-[r:literacyEmbodiedInTheme]->(target)
SET r.label = "蕴含 / embodiedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:042"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:01"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "说明关系 / illustratesRelationship";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:046"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领 / guides";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:046"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:02"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "分析影响并说明重要性 / analyzesImpactAndExplainsImportance";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:049"})
MERGE (source)-[r:literacyEmbodiedInTheme]->(target)
SET r.label = "蕴含 / embodiedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:049"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:03"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "说明关系 / illustratesRelationship";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:043"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "应用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:043"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "分析分布特点及现状 / analyzesDistributionAndCurrentSituation";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:044"})
MERGE (source)-[r:literacyRequiredByTheme]->(target)
SET r.label = "需要 / requiredBy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:044"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:05"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "描述分布并说明现状与关系 / describesDistributionAndExplainsCurrentSituationAndRelationship";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:045"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "应用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:045"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:06"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "说明影响 / illustratesImpact";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:033"})
MERGE (source)-[r:literacyFosteredByTheme]->(target)
SET r.label = "助于理解 / helpsUnderstand";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:033"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:07"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "说明含义及类型 / illustratesMeaningAndTypes";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:038"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领 / guides";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:038"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "说明问题及措施 / illustratesProblemsAndMeasures";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:039"})
MERGE (source)-[r:literacyEmbodiedInTheme]->(target)
SET r.label = "蕴含 / embodiedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:039"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:09"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "说明影响 / illustratesImpact";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:047"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:047"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "说明意义 / illustratesSignificance";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:048"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:048"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:11"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "说明影响 / illustratesImpact";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:041"})
MERGE (source)-[r:literacyGoalOfTheme]->(target)
SET r.label = "作为目标 / asGoal";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:041"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:12"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "说明意义 / illustratesSignificance";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:050"})
MERGE (source)-[r:literacyEmbodiedInTheme]->(target)
SET r.label = "蕴含 / embodiedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:050"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:01"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "认识主要星座 / recognizeMajorConstellations";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:055"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:055"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:02"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "观察并描述现象并解释成因 / observeAndDescribePhenomenaAndExplainCauses";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:059"})
MERGE (source)-[r:literacyEmbodiedInTheme]->(target)
SET r.label = "蕴含 / embodiedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:059"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:03"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "简述假说并描述组分 / brieflyDescribeHypothesisAndComponents";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:053"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "应用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:053"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "描述结构和运动特征 / describeStructureAndMotionFeatures";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:056"})
MERGE (source)-[r:literacyRequiredByTheme]->(target)
SET r.label = "需要 / requiredBy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:056"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:05"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "绘制结构图并说明活动及影响 / drawStructureDiagramAndExplainActivityAndImpact";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:057"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "应用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:057"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:06"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "描述概况并说明演化过程 / describeOverviewAndExplainEvolution";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:060"})
MERGE (source)-[r:literacyFosteredByTheme]->(target)
SET r.label = "助于理解 / helpsUnderstand";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:060"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:07"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "说明主要类型及地形变化特点 / illustrateMainTypesAndTopographicChanges";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:061"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领 / guides";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:061"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "分析海底地形特点和形成过程 / analyzeSeabedTopographyAndFormationProcess";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:063"})
MERGE (source)-[r:literacyEmbodiedInTheme]->(target)
SET r.label = "蕴含 / embodiedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:063"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:09"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "解释相互作用关系并说明影响 / explainInteractionAndImpact";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:066"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:066"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "举例说明灾害及成因与举措 / exampleDisastersCausesAndMeasures";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:067"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:067"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:11"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "说明形成及危害与对策 / explainFormationHarmAndCountermeasures";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:070"})
MERGE (source)-[r:literacyGoalOfTheme]->(target)
SET r.label = "作为目标 / asGoal";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:070"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:12"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "说明维护国家领土主权和海洋权益的重要性 / illustrateImportanceOfSovereigntyAndMaritimeRights";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:071"})
MERGE (source)-[r:literacyEmbodiedInTheme]->(target)
SET r.label = "蕴含 / embodiedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:071"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:01"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "说明类型及影响 / illustrateTypesAndImpact";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:072"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:072"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:02"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "解释成因与危害 / explainCausesAndHazards";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:075"})
MERGE (source)-[r:literacyEmbodiedInTheme]->(target)
SET r.label = "蕴含 / embodiedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:075"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:03"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "举例说明人类活动的影响 / exampleHumanActivityImpact";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:076"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "应用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:076"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "说明空间分布并比较差异 / illustrateSpatialDistributionAndCompareDifferences";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:077"})
MERGE (source)-[r:literacyRequiredByTheme]->(target)
SET r.label = "需要 / requiredBy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:077"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:05"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "说明环境特点 / illustrateEnvironmentalFeatures";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:080"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "应用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:080"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:06"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "说明地理信息技术在自然灾害中的运用 / illustrateGISApplicationInNaturalDisasters";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:081"})
MERGE (source)-[r:literacyFosteredByTheme]->(target)
SET r.label = "助于理解 / helpsUnderstand";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:081"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:07"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "简要说明元素循环过程及影响 / brieflyExplainElementCycleAndImpact";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:082"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领 / guides";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:082"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "说明全球主要环境问题与措施及成效 / illustrateGlobalEnvironmentalIssuesMeasuresAndEffectiveness";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:083"})
MERGE (source)-[r:literacyEmbodiedInTheme]->(target)
SET r.label = "蕴含 / embodiedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:083"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:09"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "说明中国水资源概况和水环境污染及治理成效 / illustrateChinaWaterResourcesAndPollutionControl";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:084"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:084"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "学会水质采样方法及方案设计 / learnWaterSamplingMethodsAndDesign";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:085"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:085"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:11"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "设计水资源保护方案 / designWaterResourceProtectionPlan";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:086"})
MERGE (source)-[r:literacyGoalOfTheme]->(target)
SET r.label = "作为目标 / asGoal";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:086"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:12"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "说明全球变暖影响及把握战略意义 / illustrateGlobalWarmingImpactAndGraspStrategicSignificance";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:087"})
MERGE (source)-[r:literacyEmbodiedInTheme]->(target)
SET r.label = "蕴含 / embodiedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:087"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:01"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "解释机理并说明危害及防治措施 / explainMechanismAndHazardsAndControlMeasures";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:088"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:088"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:02"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "分析分布特征与成因并说明治理措施及成效 / analyzeDistributionAndCausesAndControlMeasures";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:090"})
MERGE (source)-[r:literacyEmbodiedInTheme]->(target)
SET r.label = "蕴含 / embodiedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:090"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:03"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "解释成因和特点并说明类型及修复成效 / explainCausesAndCharacteristicsAndTypesAndRestoration";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:091"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "应用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:091"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "学会土壤样品采集方法及方案设计 / learnSoilSamplingMethodsAndDesign";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:092"})
MERGE (source)-[r:literacyRequiredByTheme]->(target)
SET r.label = "需要 / requiredBy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:092"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:05"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "说明环境管理的基本内容和主要手段 / illustrateEnvironmentalManagementContentAndMeans";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:093"})
MERGE (source)-[r:literacyEmbodiedInTheme]->(target)
SET r.label = "蕴含 / embodiedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:093"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:01"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "描述旅游资源分类和内涵 / describeTourismResourceClassificationAndConnotation";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:094"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:094"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:02"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "举例说明旅游资源的成因和价值 / exampleTourismResourceCausesAndValue";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:095"})
MERGE (source)-[r:literacyEmbodiedInTheme]->(target)
SET r.label = "蕴含 / embodiedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:095"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:03"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "区别自然遗产和文化遗产并说明保护方式和意义 / distinguishNaturalAndCulturalHeritageAndProtection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:096"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "应用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:096"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "评价旅游资源开发条件 / evaluateTourismResourceDevelopmentConditions";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:097"})
MERGE (source)-[r:literacyRequiredByTheme]->(target)
SET r.label = "需要 / requiredBy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:097"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:05"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "分析旅游目的地和旅游客源地关系 / analyzeTourismDestinationAndSourceRelationship";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:098"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "应用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:098"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:06"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "分析旅游业对区域经济、社会、文化发展的带动作用 / analyzeTourismDrivingEffectOnRegionalDevelopment";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:099"})
MERGE (source)-[r:literacyFosteredByTheme]->(target)
SET r.label = "助于理解 / helpsUnderstand";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:099"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:07"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "举例说明旅游开发过程中的环境保护措施 / exampleEnvironmentalProtectionMeasuresInTourismDevelopment";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:100"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领 / guides";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:100"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "设计旅游方案 / designTourismPlan";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:101"})
MERGE (source)-[r:literacyEmbodiedInTheme]->(target)
SET r.label = "蕴含 / embodiedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:101"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:09"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "举例说明自然地理条件与旅游安全的关系及安全措施 / exampleRelationshipBetweenPhysicalGeographyAndTourismSafety";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:100"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:100"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "设计旅游方案 / designTourismPlan";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:101"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:101"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:11"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "举例说明自然地理条件与旅游安全的关系及安全措施 / exampleRelationshipBetweenPhysicalGeographyAndTourismSafety";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:095"})
MERGE (source)-[r:literacyGoalOfTheme]->(target)
SET r.label = "作为目标 / asGoal";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:095"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:12"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "区别自然遗产和文化遗产并说明保护方式和意义 / distinguishNaturalAndCulturalHeritageAndProtection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:102"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领 / guides";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:102"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "举例说明 / example";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:103"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领 / guides";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:103"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "举例说明 / example";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:104"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领 / guides";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:104"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "分析 / analyze";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:104"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:104"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "分析 / analyze";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:105"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领 / guides";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:105"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "阐述 / elaborate";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:106"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领 / guides";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:106"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "举例说明 / example";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:107"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领 / guides";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:107"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "举例说明 / example";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:108"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领 / guides";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:108"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "说明 / illustrate";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:108"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:108"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "说明 / illustrate";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:109"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领 / guides";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:109"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "说明 / illustrate";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:109"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:109"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "说明 / illustrate";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:110"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领 / guides";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:110"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "评价 / evaluate";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:110"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:110"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "评价 / evaluate";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:111"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领 / guides";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:111"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:08"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "说明 / illustrate";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:111"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:111"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "说明 / illustrate";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:122"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:122"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "描述 / describe";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:122"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:122"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "描述 / describe";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:123"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:123"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "解释并说明 / explainAndIllustrate";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:123"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:123"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "解释并说明 / explainAndIllustrate";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:124"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:124"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "了解并说出 / understandAndState";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:125"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:125"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "解释并学会 / explainAndLearn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:126"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:126"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "学会并分析 / learnAndAnalyze";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:126"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:126"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "学会并分析 / learnAndAnalyze";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:127"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:127"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "学会使用 / learnToUse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:127"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:127"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "学会使用 / learnToUse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:128"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:128"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "解释并说明 / explainAndIllustrate";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:128"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:128"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "解释并说明 / explainAndIllustrate";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:129"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:129"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "说明并判读 / illustrateAndInterpret";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:129"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:129"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "说明并判读 / illustrateAndInterpret";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:130"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:130"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:04"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "解释并说出 / explainAndState";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:130"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:130"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "解释并说出 / explainAndState";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:131"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:131"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "学会运用 / learnToApply";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:132"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:132"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "学会运用并设计 / learnToApplyAndDesign";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:133"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:133"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "运用并获取 / applyAndAcquire";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:134"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:134"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "阅读并识别 / readAndIdentify";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:135"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:135"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "观察并绘制 / observeAndDraw";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:136"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:136"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "学会并采集 / learnAndCollect";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:137"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:137"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "识别并认识 / identifyAndUnderstand";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:138"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:138"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "观察并推断 / observeAndInfer";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:139"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:139"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "学会收集并观察 / learnToCollectAndObserve";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:140"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:140"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "学会并进行 / learnAndConduct";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:141"})
MERGE (source)-[r:literacyAppliedInTheme]->(target)
SET r.label = "运用于 / appliedIn";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:LearningTheme:141"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:CoreLiteracy:10"})
MERGE (source)-[r:themeDevelopsLiteracy]->(target)
SET r.label = "学会撰写并进行 / learnToWriteAndConduct";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:01"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:01"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:01"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:01"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:01"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:02"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:02"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:02"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:02"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:03"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:03"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:03"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:13"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:04"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:14"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:04"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:15"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:04"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:16"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:05"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:17"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:05"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:18"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:05"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:19"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:06"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:20"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:06"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:21"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:06"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:22"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:06"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:23"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:06"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:24"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:07"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:25"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:07"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:26"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:07"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:27"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:07"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:28"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:08"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:29"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:08"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:30"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:08"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:31"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:08"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:32"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:09"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:33"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:09"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:34"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:09"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:35"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:09"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:36"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:10"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:37"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:10"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:10"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:39"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:11"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:40"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:11"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:41"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:11"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:42"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:11"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:43"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:12"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:44"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:12"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:45"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:12"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:46"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:13"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:47"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:13"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:48"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:13"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:49"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:14"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:50"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:14"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:51"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:14"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:52"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:14"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:53"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:15"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:54"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:15"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:55"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:15"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:56"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:15"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:57"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:16"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:58"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:16"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:59"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:16"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:60"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:17"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:61"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:17"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:62"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:17"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:63"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:18"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:64"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:18"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:65"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:18"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:66"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:19"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:67"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:19"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:68"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:19"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:69"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:20"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:70"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:20"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:71"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:20"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:72"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:21"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:73"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:21"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:74"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:21"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:88"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:21"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:75"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:22"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:76"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:22"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:77"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:22"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:78"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:22"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:87"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:22"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:92"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:22"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:79"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:23"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:80"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:23"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:81"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:23"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:82"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:23"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:86"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:23"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:90"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:23"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:83"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:24"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:84"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:24"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:85"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:24"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:89"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:24"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:91"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:24"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB06:Section:93"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB06:Chapter:24"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";
