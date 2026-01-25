// =====================================================
// 高中物理课标图谱 - Neo4j导入脚本
// 生成时间: 2026-01-23T18:05:04.841399
// =====================================================

// 创建约束和索引
CREATE CONSTRAINT IF NOT EXISTS FOR (n:CoreLiteracy) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Experiment) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Theme) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Section) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:ThemeL3) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:ThemeL2) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:ActivitySuggestion) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Example) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Chapter) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:AcademicQuality) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:CourseModule) REQUIRE n.identifier IS UNIQUE;

// =====================================================
// 导入实体
// =====================================================

MERGE (n:CoreLiteracy {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:1"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:1", title: "物质观念水平1", description: "", subject: "SB0401", type: "CoreLiteracy", applicableLevel: "OB06", contentJson: "{\"standard\": \"1\", \"standardDescription\": \"能从物理学视角描述物理现象，具有对物质的初步认识。\"}", CJ_standard: "1", CJ_standardDescription: "能从物理学视角描述物理现象，具有对物质的初步认识。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:2"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:2", title: "物质观念水平2", description: "", subject: "SB0401", type: "CoreLiteracy", applicableLevel: "OB06", contentJson: "{\"standard\": \"2\", \"standardDescription\": \"能从物理学视角描述和分析实际情境中的物理现象，具有对物质的基本认识。\"}", CJ_standard: "2", CJ_standardDescription: "能从物理学视角描述和分析实际情境中的物理现象，具有对物质的基本认识。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:3"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:3", title: "物质观念水平3", description: "", subject: "SB0401", type: "CoreLiteracy", applicableLevel: "OB06", contentJson: "{\"standard\": \"3\", \"standardDescription\": \"能从物理学视角解释实际情境中的物理现象，具有对物质的清晰认识。\"}", CJ_standard: "3", CJ_standardDescription: "能从物理学视角解释实际情境中的物理现象，具有对物质的清晰认识。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:4"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:4", title: "运动和相互作用观念水平1", description: "", subject: "SB0401", type: "CoreLiteracy", applicableLevel: "OB06", contentJson: "{\"standard\": \"1\", \"standardDescription\": \"能从物理学视角描述物理现象，具有对运动和相互作用的初步认识。\"}", CJ_standard: "1", CJ_standardDescription: "能从物理学视角描述物理现象，具有对运动和相互作用的初步认识。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:5"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:5", title: "运动和相互作用观念水平2", description: "", subject: "SB0401", type: "CoreLiteracy", applicableLevel: "OB06", contentJson: "{\"standard\": \"2\", \"standardDescription\": \"能从物理学视角描述和分析实际情境中的物理现象，具有对运动和相互作用的基本认识。\"}", CJ_standard: "2", CJ_standardDescription: "能从物理学视角描述和分析实际情境中的物理现象，具有对运动和相互作用的基本认识。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:6"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:6", title: "运动和相互作用观念水平3", description: "", subject: "SB0401", type: "CoreLiteracy", applicableLevel: "OB06", contentJson: "{\"standard\": \"3\", \"standardDescription\": \"能从物理学视角解释实际情境中的物理现象，具有对运动和相互作用的清晰认识。\"}", CJ_standard: "3", CJ_standardDescription: "能从物理学视角解释实际情境中的物理现象，具有对运动和相互作用的清晰认识。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:7"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:7", title: "能量观念水平1", description: "", subject: "SB0401", type: "CoreLiteracy", applicableLevel: "OB06", contentJson: "{\"standard\": \"1\", \"standardDescription\": \"能从物理学视角描述物理现象，具有对能量的初步认识。\"}", CJ_standard: "1", CJ_standardDescription: "能从物理学视角描述物理现象，具有对能量的初步认识。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:8"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:8", title: "能量观念水平2", description: "", subject: "SB0401", type: "CoreLiteracy", applicableLevel: "OB06", contentJson: "{\"standard\": \"2\", \"standardDescription\": \"能从物理学视角描述和分析实际情境中的物理现象，具有对能量的基本认识。\"}", CJ_standard: "2", CJ_standardDescription: "能从物理学视角描述和分析实际情境中的物理现象，具有对能量的基本认识。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:9"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:9", title: "能量观念水平3", description: "", subject: "SB0401", type: "CoreLiteracy", applicableLevel: "OB06", contentJson: "{\"standard\": \"3\", \"standardDescription\": \"能从物理学视角解释实际情境中的物理现象，具有对能量的清晰认识。\"}", CJ_standard: "3", CJ_standardDescription: "能从物理学视角解释实际情境中的物理现象，具有对能量的清晰认识。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:10"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:10", title: "科学思维水平1", description: "", subject: "SB0401", type: "CoreLiteracy", applicableLevel: "OB06", contentJson: "{\"standard\": \"1\", \"standardDescription\": \"能在熟悉情境中对现象进行简单分析；会运用常见物理模型解决问题；能通过分析与综合、推理与论证形成初步结论，分析实验误差；能判断信息的可靠性与合理性，并进行初步的合理质疑与创新。\"}", CJ_standard: "1", CJ_standardDescription: "能在熟悉情境中对现象进行简单分析；会运用常见物理模型解决问题；能通过分析与综合、推理与论证形成初步结论，分析实验误差；能判断信息的可靠性与合理性，并进行初步的合理质疑与创新。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:11"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:11", title: "科学思维水平2", description: "", subject: "SB0401", type: "CoreLiteracy", applicableLevel: "OB06", contentJson: "{\"standard\": \"2\", \"standardDescription\": \"能对现象进行描述与分析并解释与解决问题；能选用恰当模型作出猜想与假设；能运用分析与综合、推理与论证找出联系与特点，合理分析误差并解释结论；能评估证据可靠性，规范交流探究过程与结果；能在合作中尊重他人意见，对已有观点提出质疑，从不同角度思考问题。\"}", CJ_standard: "2", CJ_standardDescription: "能对现象进行描述与分析并解释与解决问题；能选用恰当模型作出猜想与假设；能运用分析与综合、推理与论证找出联系与特点，合理分析误差并解释结论；能评估证据可靠性，规范交流探究过程与结果；能在合作中尊重他人意见，对已有观点提出质疑，从不同角度思考问题。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:12"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:12", title: "科学思维水平3", description: "", subject: "SB0401", type: "CoreLiteracy", applicableLevel: "OB06", contentJson: "{\"standard\": \"3\", \"standardDescription\": \"能综合应用多领域概念与规律科学解释现象、熟练解决问题；能准确表述可探究问题并将研究对象转换成物理模型进行分析，作出有依据的猜想与假设；能熟练运用分析与综合、推理与论证发现规律并准确分析误差；能对信息进行准确判断，对已有结论提出有证据的质疑，从不同角度分析解决问题。\"}", CJ_standard: "3", CJ_standardDescription: "能综合应用多领域概念与规律科学解释现象、熟练解决问题；能准确表述可探究问题并将研究对象转换成物理模型进行分析，作出有依据的猜想与假设；能熟练运用分析与综合、推理与论证发现规律并准确分析误差；能对信息进行准确判断，对已有结论提出有证据的质疑，从不同角度分析解决问题。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:13"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:13", title: "科学探究水平1", description: "", subject: "SB0401", type: "CoreLiteracy", applicableLevel: "OB06", contentJson: "{\"standard\": \"1\", \"standardDescription\": \"能从物理学视角提出物理问题；能根据已有探究方案借助基本器材通过实验等方式获得证据；能用物理学术语、符号、公式、图表等对探究过程与结果作初步描述与分析，撰写简单的科学探究报告。\"}", CJ_standard: "1", CJ_standardDescription: "能从物理学视角提出物理问题；能根据已有探究方案借助基本器材通过实验等方式获得证据；能用物理学术语、符号、公式、图表等对探究过程与结果作初步描述与分析，撰写简单的科学探究报告。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:14"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:14", title: "科学探究水平2", description: "", subject: "SB0401", type: "CoreLiteracy", applicableLevel: "OB06", contentJson: "{\"standard\": \"2\", \"standardDescription\": \"能提出可探究的物理问题；能在他人帮助下制订可行探究方案，使用基本器材通过实验获得合理证据；能规范表达与交流探究过程与结果，撰写科学探究报告。\"}", CJ_standard: "2", CJ_standardDescription: "能提出可探究的物理问题；能在他人帮助下制订可行探究方案，使用基本器材通过实验获得合理证据；能规范表达与交流探究过程与结果，撰写科学探究报告。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:15"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:15", title: "科学探究水平3", description: "", subject: "SB0401", type: "CoreLiteracy", applicableLevel: "OB06", contentJson: "{\"standard\": \"3\", \"standardDescription\": \"能制订科学探究方案，选用合适器材规范实验操作并准确获得证据；能准确运用物理学术语、符号、公式、图表等交流与反思探究过程与结果，撰写完整的科学探究报告。\"}", CJ_standard: "3", CJ_standardDescription: "能制订科学探究方案，选用合适器材规范实验操作并准确获得证据；能准确运用物理学术语、符号、公式、图表等交流与反思探究过程与结果，撰写完整的科学探究报告。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:16"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:16", title: "科学态度与责任水平1", description: "", subject: "SB0401", type: "CoreLiteracy", applicableLevel: "OB06", contentJson: "{\"standard\": \"1\", \"standardDescription\": \"有探索自然、了解自然奥秘的兴趣；知道物理学探究需要接受实践检验；了解物理研究与应用涉及的基本道德与规范问题；认识保护环境、节约资源、促进可持续发展的重要性，具有科技强国与民族复兴的责任感，并具有认真求证、追求真理的求实精神和实事求是的科学态度。\"}", CJ_standard: "1", CJ_standardDescription: "有探索自然、了解自然奥秘的兴趣；知道物理学探究需要接受实践检验；了解物理研究与应用涉及的基本道德与规范问题；认识保护环境、节约资源、促进可持续发展的重要性，具有科技强国与民族复兴的责任感，并具有认真求证、追求真理的求实精神和实事求是的科学态度。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:17"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:17", title: "科学态度与责任水平2", description: "", subject: "SB0401", type: "CoreLiteracy", applicableLevel: "OB06", contentJson: "{\"standard\": \"2\", \"standardDescription\": \"有较强的学习与研究物理兴趣，认识到物理研究是基于观察与实验的创造性工作；知道研究与应用应考虑道德与规范要求；具有保护环境、节约资源、促进可持续发展的意识；具有科技强国与民族复兴的责任感和使命感，并能从物理学视角判断信息可靠性与合理性。\"}", CJ_standard: "2", CJ_standardDescription: "有较强的学习与研究物理兴趣，认识到物理研究是基于观察与实验的创造性工作；知道研究与应用应考虑道德与规范要求；具有保护环境、节约资源、促进可持续发展的意识；具有科技强国与民族复兴的责任感和使命感，并能从物理学视角判断信息可靠性与合理性。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:18"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:18", title: "科学态度与责任水平3", description: "", subject: "SB0401", type: "CoreLiteracy", applicableLevel: "OB06", contentJson: "{\"standard\": \"3\", \"standardDescription\": \"有学习和研究物理的内在动机，认识到物理研究具有抽象与创造性；能依据普遍接受的道德与规范认识和评价研究与应用，理解科学、技术、社会及环境的关系，形成保护环境、节约资源、促进可持续发展的行为；为我国科技成就感到光荣自豪，具有科技强国和民族复兴的责任感和使命感，并具有认真求证、追求真理、实事求是的科学精神。\"}", CJ_standard: "3", CJ_standardDescription: "有学习和研究物理的内在动机，认识到物理研究具有抽象与创造性；能依据普遍接受的道德与规范认识和评价研究与应用，理解科学、技术、社会及环境的关系，形成保护环境、节约资源、促进可持续发展的行为；为我国科技成就感到光荣自豪，具有科技强国和民族复兴的责任感和使命感，并具有认真求证、追求真理、实事求是的科学精神。"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:1"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:1", title: "1.质点 参考系", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"chapter\": \"第一章 运动的描述\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_chapter: "第一章 运动的描述"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:2"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:2", title: "2.时间 位移", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"chapter\": \"第一章 运动的描述\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_chapter: "第一章 运动的描述"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:3"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:3", title: "3.位置变化快慢的描述——速度", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"chapter\": \"第一章 运动的描述\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_chapter: "第一章 运动的描述"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:4"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:4", title: "4.速度变化快慢的描述——加速度", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"chapter\": \"第一章 运动的描述\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_chapter: "第一章 运动的描述"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:5"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:5", title: "1.实验：探究小车速度随时间变化的规律", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"chapter\": \"第二章 匀变速直线运动的研究\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_chapter: "第二章 匀变速直线运动的研究"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:6"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:6", title: "2.匀变速直线运动的速度与时间的关系", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"chapter\": \"第二章 匀变速直线运动的研究\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_chapter: "第二章 匀变速直线运动的研究"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:7"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:7", title: "3.匀变速直线运动的位移与时间的关系", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"chapter\": \"第二章 匀变速直线运动的研究\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_chapter: "第二章 匀变速直线运动的研究"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:8"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:8", title: "4.自由落体运动", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"chapter\": \"第二章 匀变速直线运动的研究\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_chapter: "第二章 匀变速直线运动的研究"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:9"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:9", title: "1.重力与弹力", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"chapter\": \"第三章 相互作用——力\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_chapter: "第三章 相互作用——力"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:10"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:10", title: "2.摩擦力", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"chapter\": \"第三章 相互作用——力\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_chapter: "第三章 相互作用——力"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:11"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:11", title: "3.牛顿第三定律", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"chapter\": \"第三章 相互作用——力\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_chapter: "第三章 相互作用——力"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:12"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:12", title: "4.力的合成和分解", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"chapter\": \"第三章 相互作用——力\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_chapter: "第三章 相互作用——力"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:13"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:13", title: "5.共点力的平衡", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"chapter\": \"第三章 相互作用——力\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_chapter: "第三章 相互作用——力"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:14"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:14", title: "1.牛顿第一定律", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"chapter\": \"第四章 运动和力的关系\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_chapter: "第四章 运动和力的关系"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:15"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:15", title: "2.实验：探究加速度与力、质量的关系", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"chapter\": \"第四章 运动和力的关系\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_chapter: "第四章 运动和力的关系"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:16"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:16", title: "3.牛顿第二定律", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"chapter\": \"第四章 运动和力的关系\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_chapter: "第四章 运动和力的关系"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:17"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:17", title: "4.力学单位制", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"chapter\": \"第四章 运动和力的关系\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_chapter: "第四章 运动和力的关系"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:18"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:18", title: "5.牛顿运动定律的应用", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"chapter\": \"第四章 运动和力的关系\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_chapter: "第四章 运动和力的关系"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:19"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:19", title: "6.超重和失重", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\", \"chapter\": \"第四章 运动和力的关系\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册", CJ_chapter: "第四章 运动和力的关系"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:20"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:20", title: "1.曲线运动", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"chapter\": \"第五章 抛体运动\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_chapter: "第五章 抛体运动"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:21"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:21", title: "2.运动的合成与分解", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"chapter\": \"第五章 抛体运动\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_chapter: "第五章 抛体运动"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:22"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:22", title: "3.实验：探究平抛运动的特点", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"chapter\": \"第五章 抛体运动\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_chapter: "第五章 抛体运动"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:23"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:23", title: "4.抛体运动的规律", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"chapter\": \"第五章 抛体运动\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_chapter: "第五章 抛体运动"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:24"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:24", title: "1.圆周运动", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"chapter\": \"第六章 圆周运动\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_chapter: "第六章 圆周运动"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:25"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:25", title: "2.向心力", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"chapter\": \"第六章 圆周运动\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_chapter: "第六章 圆周运动"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:26"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:26", title: "3.向心加速度", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"chapter\": \"第六章 圆周运动\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_chapter: "第六章 圆周运动"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:27", title: "4.生活中的圆周运动", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"chapter\": \"第六章 圆周运动\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_chapter: "第六章 圆周运动"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:28"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:28", title: "1.行星的运动", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"chapter\": \"第七章 万有引力与宇宙航行\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_chapter: "第七章 万有引力与宇宙航行"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:29"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:29", title: "2.万有引力定律", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"chapter\": \"第七章 万有引力与宇宙航行\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_chapter: "第七章 万有引力与宇宙航行"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:30"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:30", title: "3.万有引力理论的成就", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"chapter\": \"第七章 万有引力与宇宙航行\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_chapter: "第七章 万有引力与宇宙航行"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:31"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:31", title: "4.宇宙航行", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"chapter\": \"第七章 万有引力与宇宙航行\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_chapter: "第七章 万有引力与宇宙航行"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:32"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:32", title: "5.相对论时空观与牛顿力学的局限性", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"chapter\": \"第七章 万有引力与宇宙航行\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_chapter: "第七章 万有引力与宇宙航行"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:33"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:33", title: "1.功与功率", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"chapter\": \"第八章 机械能守恒定律\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_chapter: "第八章 机械能守恒定律"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:34"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:34", title: "2.重力势能", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"chapter\": \"第八章 机械能守恒定律\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_chapter: "第八章 机械能守恒定律"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:35"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:35", title: "3.动能和动能定理", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"chapter\": \"第八章 机械能守恒定律\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_chapter: "第八章 机械能守恒定律"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:36"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:36", title: "4.机械能守恒定律", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"chapter\": \"第八章 机械能守恒定律\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_chapter: "第八章 机械能守恒定律"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:37", title: "5.实验：验证机械能守恒定律", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\", \"chapter\": \"第八章 机械能守恒定律\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册", CJ_chapter: "第八章 机械能守恒定律"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:38", title: "1.电荷", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"必修 第三册\", \"chapter\": \"第九章 静电场及其应用\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "必修 第三册", CJ_chapter: "第九章 静电场及其应用"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:39"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:39", title: "2.库仑定律", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"必修 第三册\", \"chapter\": \"第九章 静电场及其应用\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "必修 第三册", CJ_chapter: "第九章 静电场及其应用"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:40", title: "3.电场 电场强度", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"必修 第三册\", \"chapter\": \"第九章 静电场及其应用\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "必修 第三册", CJ_chapter: "第九章 静电场及其应用"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:41", title: "4.静电的防止与利用", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"必修 第三册\", \"chapter\": \"第九章 静电场及其应用\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "必修 第三册", CJ_chapter: "第九章 静电场及其应用"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:42"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:42", title: "1.电势能和电势", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"必修 第三册\", \"chapter\": \"第十章 静电场中的能量\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "必修 第三册", CJ_chapter: "第十章 静电场中的能量"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:43"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:43", title: "2.电势差", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"必修 第三册\", \"chapter\": \"第十章 静电场中的能量\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "必修 第三册", CJ_chapter: "第十章 静电场中的能量"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:44"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:44", title: "3.电势差与电场强度的关系", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"必修 第三册\", \"chapter\": \"第十章 静电场中的能量\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "必修 第三册", CJ_chapter: "第十章 静电场中的能量"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:45"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:45", title: "4.电容器的电容", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"必修 第三册\", \"chapter\": \"第十章 静电场中的能量\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "必修 第三册", CJ_chapter: "第十章 静电场中的能量"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:46"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:46", title: "5.带电粒子在电场中的运动", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"必修 第三册\", \"chapter\": \"第十章 静电场中的能量\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "必修 第三册", CJ_chapter: "第十章 静电场中的能量"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:47"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:47", title: "1.电源和电流", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"必修 第三册\", \"chapter\": \"第十一章 电路及其应用\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "必修 第三册", CJ_chapter: "第十一章 电路及其应用"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:48"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:48", title: "2.导体的电阻", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"必修 第三册\", \"chapter\": \"第十一章 电路及其应用\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "必修 第三册", CJ_chapter: "第十一章 电路及其应用"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:49"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:49", title: "3.实验：导体电阻率的测量", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"必修 第三册\", \"chapter\": \"第十一章 电路及其应用\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "必修 第三册", CJ_chapter: "第十一章 电路及其应用"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:50"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:50", title: "4.串联电路和并联电路", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"必修 第三册\", \"chapter\": \"第十一章 电路及其应用\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "必修 第三册", CJ_chapter: "第十一章 电路及其应用"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:51"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:51", title: "5.实验：练习使用多用电表", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"必修 第三册\", \"chapter\": \"第十一章 电路及其应用\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "必修 第三册", CJ_chapter: "第十一章 电路及其应用"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:52"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:52", title: "1.电路中的能量转化", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"必修 第三册\", \"chapter\": \"第十二章 电能 能量守恒定律\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "必修 第三册", CJ_chapter: "第十二章 电能 能量守恒定律"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:53"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:53", title: "2.闭合电路的欧姆定律", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"必修 第三册\", \"chapter\": \"第十二章 电能 能量守恒定律\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "必修 第三册", CJ_chapter: "第十二章 电能 能量守恒定律"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:54"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:54", title: "3.实验：电池电动势和内阻的测量", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"必修 第三册\", \"chapter\": \"第十二章 电能 能量守恒定律\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "必修 第三册", CJ_chapter: "第十二章 电能 能量守恒定律"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:55"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:55", title: "4.能源与可持续发展", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"必修 第三册\", \"chapter\": \"第十二章 电能 能量守恒定律\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "必修 第三册", CJ_chapter: "第十二章 电能 能量守恒定律"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:56"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:56", title: "1.磁场 磁感线", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"必修 第三册\", \"chapter\": \"第十三章 电磁感应与电磁波初步\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "必修 第三册", CJ_chapter: "第十三章 电磁感应与电磁波初步"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:57"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:57", title: "2.磁感应强度 磁通量", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"必修 第三册\", \"chapter\": \"第十三章 电磁感应与电磁波初步\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "必修 第三册", CJ_chapter: "第十三章 电磁感应与电磁波初步"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:58"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:58", title: "3.电磁感应现象及应用", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"必修 第三册\", \"chapter\": \"第十三章 电磁感应与电磁波初步\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "必修 第三册", CJ_chapter: "第十三章 电磁感应与电磁波初步"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:59"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:59", title: "4.电磁波的发现及应用", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"必修 第三册\", \"chapter\": \"第十三章 电磁感应与电磁波初步\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "必修 第三册", CJ_chapter: "第十三章 电磁感应与电磁波初步"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:60"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:60", title: "5.能量量子化", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"必修 第三册\", \"chapter\": \"第十三章 电磁感应与电磁波初步\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "必修 第三册", CJ_chapter: "第十三章 电磁感应与电磁波初步"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:61"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:61", title: "1.动量", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第一册\", \"chapter\": \"第一章 动量守恒定律\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第一册", CJ_chapter: "第一章 动量守恒定律"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:62"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:62", title: "2.动量定理", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第一册\", \"chapter\": \"第一章 动量守恒定律\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第一册", CJ_chapter: "第一章 动量守恒定律"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:63"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:63", title: "3.动量守恒定律", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第一册\", \"chapter\": \"第一章 动量守恒定律\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第一册", CJ_chapter: "第一章 动量守恒定律"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:64"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:64", title: "4.实验：验证动量守恒定律", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第一册\", \"chapter\": \"第一章 动量守恒定律\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第一册", CJ_chapter: "第一章 动量守恒定律"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:65"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:65", title: "5.弹性碰撞和非弹性碰撞", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第一册\", \"chapter\": \"第一章 动量守恒定律\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第一册", CJ_chapter: "第一章 动量守恒定律"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:66"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:66", title: "6.反冲现象 火箭", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第一册\", \"chapter\": \"第一章 动量守恒定律\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第一册", CJ_chapter: "第一章 动量守恒定律"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:67"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:67", title: "1.简谐运动", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第一册\", \"chapter\": \"第二章 机械振动\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第一册", CJ_chapter: "第二章 机械振动"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:68"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:68", title: "2.简谐运动的描述", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第一册\", \"chapter\": \"第二章 机械振动\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第一册", CJ_chapter: "第二章 机械振动"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:69", title: "3.简谐运动的回复力和能量", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第一册\", \"chapter\": \"第二章 机械振动\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第一册", CJ_chapter: "第二章 机械振动"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:70"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:70", title: "4.单摆", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第一册\", \"chapter\": \"第二章 机械振动\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第一册", CJ_chapter: "第二章 机械振动"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:71"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:71", title: "5.实验：用单摆测量重力加速度", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第一册\", \"chapter\": \"第二章 机械振动\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第一册", CJ_chapter: "第二章 机械振动"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:72"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:72", title: "6.受迫振动 共振", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第一册\", \"chapter\": \"第二章 机械振动\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第一册", CJ_chapter: "第二章 机械振动"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:73"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:73", title: "1.波的形成", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第一册\", \"chapter\": \"第三章 机械波\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第一册", CJ_chapter: "第三章 机械波"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:74"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:74", title: "2.波的描述", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第一册\", \"chapter\": \"第三章 机械波\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第一册", CJ_chapter: "第三章 机械波"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:75"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:75", title: "3.波的反射、折射和衍射", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第一册\", \"chapter\": \"第三章 机械波\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第一册", CJ_chapter: "第三章 机械波"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:76"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:76", title: "4.波的干涉", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第一册\", \"chapter\": \"第三章 机械波\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第一册", CJ_chapter: "第三章 机械波"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:77"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:77", title: "5.多普勒效应", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第一册\", \"chapter\": \"第三章 机械波\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第一册", CJ_chapter: "第三章 机械波"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:78"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:78", title: "1.光的折射", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第一册\", \"chapter\": \"第四章 光\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第一册", CJ_chapter: "第四章 光"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:79"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:79", title: "2.全反射", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第一册\", \"chapter\": \"第四章 光\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第一册", CJ_chapter: "第四章 光"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:80"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:80", title: "3.光的干涉", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第一册\", \"chapter\": \"第四章 光\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第一册", CJ_chapter: "第四章 光"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:81"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:81", title: "4.实验：用双缝干涉测量光的波长", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第一册\", \"chapter\": \"第四章 光\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第一册", CJ_chapter: "第四章 光"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:82"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:82", title: "5.光的衍射", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第一册\", \"chapter\": \"第四章 光\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第一册", CJ_chapter: "第四章 光"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:83"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:83", title: "6.光的偏振 激光", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第一册\", \"chapter\": \"第四章 光\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第一册", CJ_chapter: "第四章 光"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:84"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:84", title: "1.磁场对通电导线的作用力", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第二册\", \"chapter\": \"第一章 安培力与洛伦兹力\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "选择性必修 第二册", CJ_chapter: "第一章 安培力与洛伦兹力"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:85"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:85", title: "2.磁场对运动电荷的作用力", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第二册\", \"chapter\": \"第一章 安培力与洛伦兹力\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "选择性必修 第二册", CJ_chapter: "第一章 安培力与洛伦兹力"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:86"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:86", title: "3.带电粒子在匀强磁场中的运动", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第二册\", \"chapter\": \"第一章 安培力与洛伦兹力\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "选择性必修 第二册", CJ_chapter: "第一章 安培力与洛伦兹力"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:87"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:87", title: "4.质谱仪与回旋加速器", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第二册\", \"chapter\": \"第一章 安培力与洛伦兹力\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "选择性必修 第二册", CJ_chapter: "第一章 安培力与洛伦兹力"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:88"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:88", title: "1.楞次定律", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第二册\", \"chapter\": \"第二章 电磁感应\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "选择性必修 第二册", CJ_chapter: "第二章 电磁感应"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:89"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:89", title: "2.法拉第电磁感应定律", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第二册\", \"chapter\": \"第二章 电磁感应\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "选择性必修 第二册", CJ_chapter: "第二章 电磁感应"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:90"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:90", title: "3.涡流、电磁阻尼和电磁驱动", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第二册\", \"chapter\": \"第二章 电磁感应\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "选择性必修 第二册", CJ_chapter: "第二章 电磁感应"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:91"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:91", title: "4.互感和自感", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第二册\", \"chapter\": \"第二章 电磁感应\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "选择性必修 第二册", CJ_chapter: "第二章 电磁感应"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:92"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:92", title: "1.交变电流", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第二册\", \"chapter\": \"第三章 交变电流\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "选择性必修 第二册", CJ_chapter: "第三章 交变电流"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:93"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:93", title: "2.交变电流的描述", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第二册\", \"chapter\": \"第三章 交变电流\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "选择性必修 第二册", CJ_chapter: "第三章 交变电流"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:94"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:94", title: "3.变压器", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第二册\", \"chapter\": \"第三章 交变电流\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "选择性必修 第二册", CJ_chapter: "第三章 交变电流"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:95"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:95", title: "4.电能的输送", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第二册\", \"chapter\": \"第三章 交变电流\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "选择性必修 第二册", CJ_chapter: "第三章 交变电流"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:96"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:96", title: "1.电磁振荡", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第二册\", \"chapter\": \"第四章 电磁振荡与电磁波\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "选择性必修 第二册", CJ_chapter: "第四章 电磁振荡与电磁波"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:97"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:97", title: "2.电磁场与电磁波", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第二册\", \"chapter\": \"第四章 电磁振荡与电磁波\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "选择性必修 第二册", CJ_chapter: "第四章 电磁振荡与电磁波"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:98"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:98", title: "3.无线电波的发射和接收", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第二册\", \"chapter\": \"第四章 电磁振荡与电磁波\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "选择性必修 第二册", CJ_chapter: "第四章 电磁振荡与电磁波"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:99"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:99", title: "4.电磁波谱", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第二册\", \"chapter\": \"第四章 电磁振荡与电磁波\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "选择性必修 第二册", CJ_chapter: "第四章 电磁振荡与电磁波"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:100"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:100", title: "1.认识传感器", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第二册\", \"chapter\": \"第五章 传感器\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "选择性必修 第二册", CJ_chapter: "第五章 传感器"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:101"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:101", title: "2.常见传感器的工作原理及应用", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第二册\", \"chapter\": \"第五章 传感器\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "选择性必修 第二册", CJ_chapter: "第五章 传感器"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:102"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:102", title: "3.利用传感器制作简单的自动控制装置", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第二册\", \"chapter\": \"第五章 传感器\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "选择性必修 第二册", CJ_chapter: "第五章 传感器"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:103"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:103", title: "1.分子动理论的基本内容", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"第一章 分子动理论\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "第一章 分子动理论"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:104"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:104", title: "2.实验：用油膜法估测油酸分子的大小", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"第一章 分子动理论\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "第一章 分子动理论"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:105"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:105", title: "3.分子运动速率分布规律", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"第一章 分子动理论\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "第一章 分子动理论"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:106"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:106", title: "4.分子动能和分子势能", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"第一章 分子动理论\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "第一章 分子动理论"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:107"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:107", title: "1.温度和温标", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"第二章 气体、固体和液体\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "第二章 气体、固体和液体"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:108"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:108", title: "2.气体的等温变化", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"第二章 气体、固体和液体\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "第二章 气体、固体和液体"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:109"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:109", title: "3.气体的等压变化和等容变化", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"第二章 气体、固体和液体\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "第二章 气体、固体和液体"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:110"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:110", title: "4.固体", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"第二章 气体、固体和液体\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "第二章 气体、固体和液体"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:111"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:111", title: "5.液体", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"第二章 气体、固体和液体\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "第二章 气体、固体和液体"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:112"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:112", title: "1.功、热和内能的改变", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"第三章 热力学定律\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "第三章 热力学定律"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:113"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:113", title: "2.热力学第一定律", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"第三章 热力学定律\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "第三章 热力学定律"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:114"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:114", title: "3.能量守恒定律", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"第三章 热力学定律\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "第三章 热力学定律"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:115"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:115", title: "4.热力学第二定律", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"第三章 热力学定律\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "第三章 热力学定律"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:116"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:116", title: "1.普朗克黑体辐射理论", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"第四章 原子结构和波粒二象性\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "第四章 原子结构和波粒二象性"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:117"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:117", title: "2.光电效应", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"第四章 原子结构和波粒二象性\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "第四章 原子结构和波粒二象性"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:118"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:118", title: "3.原子的核式结构模型", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"第四章 原子结构和波粒二象性\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "第四章 原子结构和波粒二象性"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:119"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:119", title: "4.氢原子光谱和玻尔的原子模型", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"第四章 原子结构和波粒二象性\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "第四章 原子结构和波粒二象性"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:120"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:120", title: "5.粒子的波动性和量子力学的建立", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"第四章 原子结构和波粒二象性\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "第四章 原子结构和波粒二象性"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:121"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:121", title: "1.原子核的组成", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"第五章 原子核\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "第五章 原子核"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:122"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:122", title: "2.放射性元素的衰变", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"第五章 原子核\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "第五章 原子核"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:123"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:123", title: "3.核力与结合能", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"第五章 原子核\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "第五章 原子核"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:124"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:124", title: "4.核裂变与核聚变", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"第五章 原子核\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "第五章 原子核"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:125"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:125", title: "5.“基本”粒子", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"第五章 原子核\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "第五章 原子核"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:126"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:126", title: "力学复习之能量与动量", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"高考复习\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "高考复习"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:127"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:127", title: "电学复习之带电物体在场中的运动", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"高考复习\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "高考复习"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:128"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:128", title: "电学实验考点大全", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"高考复习\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "高考复习"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:129"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:129", title: "高考物理复习（一）", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"高考复习\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "高考复习"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:130"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:130", title: "高考物理复习（二）", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"高考复习\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "高考复习"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:131"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:131", title: "高考物理复习（三）", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"高考复习\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "高考复习"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:132"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:132", title: "高考物理复习（四）", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"高考复习\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "高考复习"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:133"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:133", title: "高考物理复习（五）—— 物理模型与建模", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"高考复习\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "高考复习"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:134"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:134", title: "《力与运动》专题", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"高考复习\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "高考复习"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:135"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:135", title: "牛顿定律考查方式及题目变化", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"高考复习\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "高考复习"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:136"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:136", title: "力学中的功能关系与能量守恒", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"高考复习\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "高考复习"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:137"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:137", title: "与动量有关的力学问题", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"高考复习\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "高考复习"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:138"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:138", title: "计算题备考策略", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"高考复习\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "高考复习"};

MERGE (n:Section {identifier: "urn:jy:physics:SB0401:OB06:Section:139"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Section:139", title: "高考备考之场的问题", description: "", subject: "SB0401", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\", \"chapter\": \"高考复习\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册", CJ_chapter: "高考复习"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:1"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:1", title: "1.1 机械运动与物理模型", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:1", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n1.1.1 了解近代实验科学产生的背景，认识实验对物理学发展的推动作用。\\n\\n例1 了解伽利略的实验研究工作，认识伽利略有关实验的科学思想和方法。\\n\\n1.1.2 经历质点模型的建构过程，了解质点的含义。知道将物体抽象为质点的条件，能将特定实际情境中的物体抽象成质点。体会建构物理模型的思维方式，认识物理模型在探索自然规律中的作用。\\n\\n例2 通过质点模型、太阳系行星模型等实例，体会物理模型在物理学研究中的意义。\\n\\n1.1.3 理解位移、速度和加速度。通过实验，探究匀变速直线运动的特点，能用公式、图像等方法描述匀变速直线运动。理解匀变速直线运动的规律，能运用其解决实际问题，体会科学思维中的抽象方法和物理问题研究中的极限方法。\\n\\n例3 结合瞬时速度概念的建构，体会研究物理问题的极限方法。\\n\\n例4 结合加速度概念的建构，体会物理学中的抽象思维。\\n\\n例5 用打点计时器、频闪照相或其他实验工具研究匀变速直线运动的规律。\\n\\n1.1.4 通过实验，认识自由落体运动规律。结合物理学史的相关内容，认识物理实验与科学推理在物理学研究中的作用。\\n\\n例6 查阅资料，了解亚里士多德关于力与运动的主要观点和研究方法。\\n\\n例7 查阅资料，了解伽利略研究自由落体运动的实验和推理方法。\\n\\n# 活动建议\\n\\n（1）观察质量相同、大小和形状不同的物体在空气中下落的现象，了解空气阻力对落体运动的影响。\\n\\n（2）查阅资料，了解并讨论伽利略关于物体运动的实验研究对科学发展和人类进步的重大意义。\"}", CJ_rawText: "# 【内容要求】\n\n1.1.1 了解近代实验科学产生的背景，认识实验对物理学发展的推动作用。\n\n例1 了解伽利略的实验研究工作，认识伽利略有关实验的科学思想和方法。\n\n1.1.2 经历质点模型的建构过程，了解质点的含义。知道将物体抽象为质点的条件，能将特定实际情境中的物体抽象成质点。体会建构物理模型的思维方式，认识物理模型在探索自然规律中的作用。\n\n例2 通过质点模型、太阳系行星模型等实例，体会物理模型在物理学研究中的意义。\n\n1.1.3 理解位移、速度和加速度。通过实验，探究匀变速直线运动的特点，能用公式、图像等方法描述匀变速直线运动。理解匀变速直线运动的规律，能运用其解决实际问题，体会科学思维中的抽象方法和物理问题研究中的极限方法。\n\n例3 结合瞬时速度概念的建构，体会研究物理问题的极限方法。\n\n例4 结合加速度概念的建构，体会物理学中的抽象思维。\n\n例5 用打点计时器、频闪照相或其他实验工具研究匀变速直线运动的规律。\n\n1.1.4 通过实验，认识自由落体运动规律。结合物理学史的相关内容，认识物理实验与科学推理在物理学研究中的作用。\n\n例6 查阅资料，了解亚里士多德关于力与运动的主要观点和研究方法。\n\n例7 查阅资料，了解伽利略研究自由落体运动的实验和推理方法。\n\n# 活动建议\n\n（1）观察质量相同、大小和形状不同的物体在空气中下落的现象，了解空气阻力对落体运动的影响。\n\n（2）查阅资料，了解并讨论伽利略关于物体运动的实验研究对科学发展和人类进步的重大意义。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:2"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:2", title: "1.2 相互作用与运动定律", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:1", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n1.2.1 认识重力、弹力与摩擦力。通过实验，了解胡克定律。知道滑动摩擦和静摩擦现象，能用动摩擦因数计算滑动摩擦力的大小。\\n\\n例1 调查生产生活中所用弹簧的形状及使用目的。\\n\\n例2 制作一个简易弹簧测力计，用胡克定律解释其原理。\\n\\n1.2.2 通过实验，了解力的合成与分解。知道矢量和标量。能用共点力的平衡条件分析生产生活中的问题。\\n\\n1.2.3 通过实验，探究物体运动的加速度与物体受力、物体质量的关系。理解牛顿运动定律，能用牛顿运动定律解释生产生活中的有关现象，解决有关问题。通过实验，认识超重和失重现象。\\n\\n1.2.4 知道国际单位制中的力学单位。了解单位制在物理学中的重要意义。\\n\\n# 活动建议\\n\\n（1）调查生产生活中利用或尽量减小摩擦的实例。\\n\\n(2) 通过各种活动, 例如乘坐电梯、到游乐场参与有关游乐活动等, 体验超重和失重。\\n\\n(3) 根据牛顿第二定律, 设计一种能显示加速度大小的装置。\\n\\n# 必修1的教学提示\\n\\n本模块注重在机械运动情境下培养学生的运动和相互作用观念、模型建构等物理学科核心素养。教学中应根据本模块所学物理模型的特点，联系生产生活实际，从多个角度创设情境，提出与物理学有关的问题，引导学生讨论，让学生体会建构物理模型的必要性及方法等。让学生经历建构速度、加速度、力等重要物理概念的过程，了解测量这些物理量的方法，进而学习定量描述生活中物体运动和相互作用的方法。通过探究物体间相互作用与运动状态变化的关系等实验，引导学生运用控制变量等研究方法设计实验方案，学会分析和处理实验数据的方法，提高科学探究能力。结合物理学史，引导学生认识实验探究与科学思维的结合对物理学发展的重要作用。\\n\\n# 必修1的学业要求\\n\\n能用位移、速度、加速度等物理量描述物体的直线运动；能用匀变\\n\\n速直线运动的规律解决生活中的具体问题。能对物体的受力和运动情况进行分析，得出结论；能从物理学视角分析自然、生活中与运动和相互作用有关的简单问题。\\n\\n了解建立质点模型的抽象方法和质点模型的适用条件，能在特定情境下将物体抽象为质点，体会物理模型建构的思想和方法；通过瞬时速度和加速度概念的建构，体会物理问题研究中的极限方法和抽象思维方法；知道证据是物理研究的基础，能使用证据表达自己的观点；能提出自己的见解。\\n\\n能完成“探究加速度与物体受力、物体质量的关系”等实验。能明确科学探究实验所要解决的问题；知道制订实验方案的重要性，能运用控制变量的方法设计实验方案，会使用基本的力学实验器材获取数据，能用物理图像描述实验数据；能根据数据得出实验结论，知道实验存在误差；能表达科学探究的过程和结果。\\n\\n通过对直线运动和牛顿运动定律的学习，认识物理学是对自然现象的描述与解释；具有学习物理学的兴趣；增强安全意识。\"}", CJ_rawText: "# 【内容要求】\n\n1.2.1 认识重力、弹力与摩擦力。通过实验，了解胡克定律。知道滑动摩擦和静摩擦现象，能用动摩擦因数计算滑动摩擦力的大小。\n\n例1 调查生产生活中所用弹簧的形状及使用目的。\n\n例2 制作一个简易弹簧测力计，用胡克定律解释其原理。\n\n1.2.2 通过实验，了解力的合成与分解。知道矢量和标量。能用共点力的平衡条件分析生产生活中的问题。\n\n1.2.3 通过实验，探究物体运动的加速度与物体受力、物体质量的关系。理解牛顿运动定律，能用牛顿运动定律解释生产生活中的有关现象，解决有关问题。通过实验，认识超重和失重现象。\n\n1.2.4 知道国际单位制中的力学单位。了解单位制在物理学中的重要意义。\n\n# 活动建议\n\n（1）调查生产生活中利用或尽量减小摩擦的实例。\n\n(2) 通过各种活动, 例如乘坐电梯、到游乐场参与有关游乐活动等, 体验超重和失重。\n\n(3) 根据牛顿第二定律, 设计一种能显示加速度大小的装置。\n\n# 必修1的教学提示\n\n本模块注重在机械运动情境下培养学生的运动和相互作用观念、模型建构等物理学科核心素养。教学中应根据本模块所学物理模型的特点，联系生产生活实际，从多个角度创设情境，提出与物理学有关的问题，引导学生讨论，让学生体会建构物理模型的必要性及方法等。让学生经历建构速度、加速度、力等重要物理概念的过程，了解测量这些物理量的方法，进而学习定量描述生活中物体运动和相互作用的方法。通过探究物体间相互作用与运动状态变化的关系等实验，引导学生运用控制变量等研究方法设计实验方案，学会分析和处理实验数据的方法，提高科学探究能力。结合物理学史，引导学生认识实验探究与科学思维的结合对物理学发展的重要作用。\n\n# 必修1的学业要求\n\n能用位移、速度、加速度等物理量描述物体的直线运动；能用匀变\n\n速直线运动的规律解决生活中的具体问题。能对物体的受力和运动情况进行分析，得出结论；能从物理学视角分析自然、生活中与运动和相互作用有关的简单问题。\n\n了解建立质点模型的抽象方法和质点模型的适用条件，能在特定情境下将物体抽象为质点，体会物理模型建构的思想和方法；通过瞬时速度和加速度概念的建构，体会物理问题研究中的极限方法和抽象思维方法；知道证据是物理研究的基础，能使用证据表达自己的观点；能提出自己的见解。\n\n能完成“探究加速度与物体受力、物体质量的关系”等实验。能明确科学探究实验所要解决的问题；知道制订实验方案的重要性，能运用控制变量的方法设计实验方案，会使用基本的力学实验器材获取数据，能用物理图像描述实验数据；能根据数据得出实验结论，知道实验存在误差；能表达科学探究的过程和结果。\n\n通过对直线运动和牛顿运动定律的学习，认识物理学是对自然现象的描述与解释；具有学习物理学的兴趣；增强安全意识。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:3"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:3", title: "2.1 机械能及其守恒定律", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:2", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n2.1.1 理解功和功率。了解生产生活中常见机械的功率大小及其意义。\\n\\n例1 分析物体移动的方向与所受力的方向不在一条直线上时，该力所做的功。\\n\\n例2 分析汽车发动机的功率一定时，牵引力与速度的关系。\\n\\n2.1.2 理解动能和动能定理。能用动能定理解释生产生活中的有关\\n\\n现象。\\n\\n例3 根据牛顿第二定律推导出动能定理。\\n\\n2.1.3 理解重力势能，知道重力势能的变化与重力做功的关系。定性了解弹性势能。\\n\\n2.1.4 通过实验，验证机械能守恒定律。理解机械能守恒定律，体会守恒观念对认识物理规律的重要性。能用机械能守恒定律分析生产生活中的有关问题。\\n\\n# 活动建议\\n\\n通过查阅资料、访问有关部门，收集汽车刹车距离与车速关系的数据，用动能定理进行解释。\"}", CJ_rawText: "# 【内容要求】\n\n2.1.1 理解功和功率。了解生产生活中常见机械的功率大小及其意义。\n\n例1 分析物体移动的方向与所受力的方向不在一条直线上时，该力所做的功。\n\n例2 分析汽车发动机的功率一定时，牵引力与速度的关系。\n\n2.1.2 理解动能和动能定理。能用动能定理解释生产生活中的有关\n\n现象。\n\n例3 根据牛顿第二定律推导出动能定理。\n\n2.1.3 理解重力势能，知道重力势能的变化与重力做功的关系。定性了解弹性势能。\n\n2.1.4 通过实验，验证机械能守恒定律。理解机械能守恒定律，体会守恒观念对认识物理规律的重要性。能用机械能守恒定律分析生产生活中的有关问题。\n\n# 活动建议\n\n通过查阅资料、访问有关部门，收集汽车刹车距离与车速关系的数据，用动能定理进行解释。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:4"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:4", title: "2.2 曲线运动与万有引力定律", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:2", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n2.2.1 通过实验，了解曲线运动，知道物体做曲线运动的条件。\\n\\n例1 观察生活中的曲线运动，如投篮时篮球的运动轨迹。\\n\\n2.2.2 通过实验，探究并认识平抛运动的规律。会用运动合成与分解的方法分析平抛运动。体会将复杂运动分解为简单运动的物理思想。能分析生产生活中的抛体运动。\\n\\n2.2.3 会用线速度、角速度、周期描述匀速圆周运动。知道匀速圆周运动向心加速度的大小和方向。通过实验，探究并了解匀速圆周运动向心力大小与半径、角速度、质量的关系。能用牛顿第二定律分析匀速圆周运动的向心力。了解生产生活中的离心现象及其产生的原因。\\n\\n例2 了解铁路和高速公路拐弯处路面有一定倾斜度的原因。\\n\\n2.2.4 通过史实，了解万有引力定律的发现过程。知道万有引力定律。认识发现万有引力定律的重要意义。认识科学定律对人类探索未知世界的作用。\\n\\n例3 通过发现海王星等事实，说明科学定律的作用。\\n\\n例4 以万有引力定律为例，了解统一性观念在科学认识中的重要意义。\\n\\n2.2.5 会计算人造地球卫星的环绕速度。知道第二宇宙速度和第三宇宙速度。\\n\\n例5 了解牛顿力学对航天技术发展的重大贡献。\\n\\n# 活动建议\\n\\n(1) 查阅资料, 比较炮弹的实际弹道与理想抛物线的差异, 尝试作出解释。\\n\\n(2) 收集资料, 探讨自行车拐弯时受到的向心力。\\n\\n(3) 观看人造地球卫星、神舟飞船、航天飞机、空间站等相关视频资料，与同学交流观后感。\\n\\n(4) 收集我国和世界航天事业发展历史和前景的资料, 写出调查报告。\"}", CJ_rawText: "# 【内容要求】\n\n2.2.1 通过实验，了解曲线运动，知道物体做曲线运动的条件。\n\n例1 观察生活中的曲线运动，如投篮时篮球的运动轨迹。\n\n2.2.2 通过实验，探究并认识平抛运动的规律。会用运动合成与分解的方法分析平抛运动。体会将复杂运动分解为简单运动的物理思想。能分析生产生活中的抛体运动。\n\n2.2.3 会用线速度、角速度、周期描述匀速圆周运动。知道匀速圆周运动向心加速度的大小和方向。通过实验，探究并了解匀速圆周运动向心力大小与半径、角速度、质量的关系。能用牛顿第二定律分析匀速圆周运动的向心力。了解生产生活中的离心现象及其产生的原因。\n\n例2 了解铁路和高速公路拐弯处路面有一定倾斜度的原因。\n\n2.2.4 通过史实，了解万有引力定律的发现过程。知道万有引力定律。认识发现万有引力定律的重要意义。认识科学定律对人类探索未知世界的作用。\n\n例3 通过发现海王星等事实，说明科学定律的作用。\n\n例4 以万有引力定律为例，了解统一性观念在科学认识中的重要意义。\n\n2.2.5 会计算人造地球卫星的环绕速度。知道第二宇宙速度和第三宇宙速度。\n\n例5 了解牛顿力学对航天技术发展的重大贡献。\n\n# 活动建议\n\n(1) 查阅资料, 比较炮弹的实际弹道与理想抛物线的差异, 尝试作出解释。\n\n(2) 收集资料, 探讨自行车拐弯时受到的向心力。\n\n(3) 观看人造地球卫星、神舟飞船、航天飞机、空间站等相关视频资料，与同学交流观后感。\n\n(4) 收集我国和世界航天事业发展历史和前景的资料, 写出调查报告。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:5"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:5", title: "2.3 牛顿力学的局限性与相对论初步", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:2", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n2.3.1 知道牛顿力学的局限性，体会人类对自然界的探索是不断深入的。\\n\\n2.3.2 初步了解相对论时空观\\n\\n例1 初步了解长度收缩效应和时间延缓效应。\\n\\n例2 初步了解时空弯曲。\\n\\n2.3.3 关注宇宙起源和演化的研究进展\\n\\n例3 查阅资料，初步了解典型的恒星演化过程。\\n\\n# 活动建议\\n\\n（1）阅读有关相对论的科普书刊，举办小型讨论会。\\n\\n(2)观看有关宇宙起源的科教电视专题片，了解宇宙的演化。\\n\\n# 必修2的教学提示\\n\\n本模块通过实验及理论推导等方法，让学生理解重力势能变化与重力做功的关系，理解动能定理和机械能守恒定律，学会从机械能转化和守恒的视角分析物理问题，形成初步的能量观念。在应用机械能守恒定律解决问题的过程中，引导学生体会守恒的思想，领悟从守恒的角度分析问题的方法，增强分析和解决问题的能力。让学生通过研究平抛运动、匀速圆周运动等运动形式，体会物理学中化繁为简的研究方法，拓展对运动多样性的认识，深化对位移、速度、加速度等重要概念的理解，进一步提高关于力与运动关系的认识。引导学生关注物理学定律与航天技术等现代科技的联系，了解人类对宇宙天体的探索历程，从万有引力定律的普适性认识自然界的统一性。通过对相对论的初步介绍，引导学生认识牛顿力学的局限性，体会人类对自然界的探索是不断深入的。\\n\\n# 必修2的学业要求\\n\\n能对常见的机械运动进行分类，能理解功、功率、动能定理及机械能守恒定律等，能认识曲线运动的基本规律和万有引力定律，初步了解相对论时空观的内容；会用运动和相互作用的知识分析曲线运动问题，能用万有引力定律分析简单的天体运动问题，能用能量的观点分析和解释常见的机械运动问题。\\n\\n能认识平抛运动、匀速圆周运动的物理模型特征，知道机械能守恒是一种理想情况；通过研究平抛运动、匀速圆周运动等运动形式，能体会物理学中实验和理论推导的方法，以及化繁为简的研究方法；能使用证据说明自己的观点；能对关于机械能、曲线运动、引力的一些错误认识提出质疑。\\n\\n能完成“探究平抛运动的特点”等实验。能明确实验需要测量的物\\n\\n理量，由此设计实验方案，会使用所提供的实验器材进行实验并获得数据；能通过对数据的分析发现其中的特点，进而归纳出实验结论，并尝试对其作出解释；能撰写简单的实验报告。\\n\\n通过对行星运动规律和相对论的学习，认识到科学研究需要大胆的想象和创新，科学理论既具有相对稳定性，又是不断发展的，人类对自然的探索永无止境；具有探索自然、造福人类的意识；能为我国卓越的科技成就感到自豪，具有科技强国的责任感和使命感。\"}", CJ_rawText: "# 【内容要求】\n\n2.3.1 知道牛顿力学的局限性，体会人类对自然界的探索是不断深入的。\n\n2.3.2 初步了解相对论时空观\n\n例1 初步了解长度收缩效应和时间延缓效应。\n\n例2 初步了解时空弯曲。\n\n2.3.3 关注宇宙起源和演化的研究进展\n\n例3 查阅资料，初步了解典型的恒星演化过程。\n\n# 活动建议\n\n（1）阅读有关相对论的科普书刊，举办小型讨论会。\n\n(2)观看有关宇宙起源的科教电视专题片，了解宇宙的演化。\n\n# 必修2的教学提示\n\n本模块通过实验及理论推导等方法，让学生理解重力势能变化与重力做功的关系，理解动能定理和机械能守恒定律，学会从机械能转化和守恒的视角分析物理问题，形成初步的能量观念。在应用机械能守恒定律解决问题的过程中，引导学生体会守恒的思想，领悟从守恒的角度分析问题的方法，增强分析和解决问题的能力。让学生通过研究平抛运动、匀速圆周运动等运动形式，体会物理学中化繁为简的研究方法，拓展对运动多样性的认识，深化对位移、速度、加速度等重要概念的理解，进一步提高关于力与运动关系的认识。引导学生关注物理学定律与航天技术等现代科技的联系，了解人类对宇宙天体的探索历程，从万有引力定律的普适性认识自然界的统一性。通过对相对论的初步介绍，引导学生认识牛顿力学的局限性，体会人类对自然界的探索是不断深入的。\n\n# 必修2的学业要求\n\n能对常见的机械运动进行分类，能理解功、功率、动能定理及机械能守恒定律等，能认识曲线运动的基本规律和万有引力定律，初步了解相对论时空观的内容；会用运动和相互作用的知识分析曲线运动问题，能用万有引力定律分析简单的天体运动问题，能用能量的观点分析和解释常见的机械运动问题。\n\n能认识平抛运动、匀速圆周运动的物理模型特征，知道机械能守恒是一种理想情况；通过研究平抛运动、匀速圆周运动等运动形式，能体会物理学中实验和理论推导的方法，以及化繁为简的研究方法；能使用证据说明自己的观点；能对关于机械能、曲线运动、引力的一些错误认识提出质疑。\n\n能完成“探究平抛运动的特点”等实验。能明确实验需要测量的物\n\n理量，由此设计实验方案，会使用所提供的实验器材进行实验并获得数据；能通过对数据的分析发现其中的特点，进而归纳出实验结论，并尝试对其作出解释；能撰写简单的实验报告。\n\n通过对行星运动规律和相对论的学习，认识到科学研究需要大胆的想象和创新，科学理论既具有相对稳定性，又是不断发展的，人类对自然的探索永无止境；具有探索自然、造福人类的意识；能为我国卓越的科技成就感到自豪，具有科技强国的责任感和使命感。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:6"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:6", title: "3.1 静电场", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:3", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n3.1.1 通过实验，了解静电现象。能用原子结构模型和电荷守恒的知识分析静电现象。\\n\\n例1 通过多种方式使物体带电，观察静电现象。\\n\\n例2 演示并分析静电感应现象。\\n\\n3.1.2 知道点电荷模型。知道两个点电荷间相互作用的规律。体会探究库仑定律过程中的科学思想和方法。\\n\\n例3 与质点模型类比，体会在什么情境下可将带电体抽象为点电荷。\\n\\n例4 体会库仑扭秤实验设计的巧妙之处。\\n\\n3.1.3 知道电场是一种物质。了解电场强度，体会用物理量之比定义新物理量的方法。会用电场线描述电场。\\n\\n例5用电场线描绘两个等量异种点电荷周围的电场。\\n\\n3.1.4 了解生产生活中关于静电的利用与防护。\\n\\n例 6 分析讨论静电在激光打印、静电喷雾和静电除尘等技术中的\\n\\n应用。知道在有可燃气体、粉尘的环境中如何防止静电事故。\\n\\n3.1.5 知道静电场中的电荷具有电势能。了解电势能、电势和电势差的含义。知道匀强电场中电势差与电场强度的关系。能分析带电粒子在电场中的运动情况，能解释相关的物理现象。\\n\\n3.1.6 观察常见的电容器，了解电容器的电容，观察电容器的充、放电现象。能举例说明电容器的应用。\\n\\n例7 查阅资料，了解电容器在照相机闪光灯电路中的作用。\\n\\n# 活动建议\\n\\n(1) 通过观察、查阅资料等方式, 了解避雷针的结构和基本原理, 撰写一篇研究报告。\\n\\n(2) 收集资料, 综述静电的危害, 了解预防的方法。\\n\\n（3）通过观察、查阅资料等方式，了解并分析电容器应用的实例，撰写研究报告。\"}", CJ_rawText: "# 【内容要求】\n\n3.1.1 通过实验，了解静电现象。能用原子结构模型和电荷守恒的知识分析静电现象。\n\n例1 通过多种方式使物体带电，观察静电现象。\n\n例2 演示并分析静电感应现象。\n\n3.1.2 知道点电荷模型。知道两个点电荷间相互作用的规律。体会探究库仑定律过程中的科学思想和方法。\n\n例3 与质点模型类比，体会在什么情境下可将带电体抽象为点电荷。\n\n例4 体会库仑扭秤实验设计的巧妙之处。\n\n3.1.3 知道电场是一种物质。了解电场强度，体会用物理量之比定义新物理量的方法。会用电场线描述电场。\n\n例5用电场线描绘两个等量异种点电荷周围的电场。\n\n3.1.4 了解生产生活中关于静电的利用与防护。\n\n例 6 分析讨论静电在激光打印、静电喷雾和静电除尘等技术中的\n\n应用。知道在有可燃气体、粉尘的环境中如何防止静电事故。\n\n3.1.5 知道静电场中的电荷具有电势能。了解电势能、电势和电势差的含义。知道匀强电场中电势差与电场强度的关系。能分析带电粒子在电场中的运动情况，能解释相关的物理现象。\n\n3.1.6 观察常见的电容器，了解电容器的电容，观察电容器的充、放电现象。能举例说明电容器的应用。\n\n例7 查阅资料，了解电容器在照相机闪光灯电路中的作用。\n\n# 活动建议\n\n(1) 通过观察、查阅资料等方式, 了解避雷针的结构和基本原理, 撰写一篇研究报告。\n\n(2) 收集资料, 综述静电的危害, 了解预防的方法。\n\n（3）通过观察、查阅资料等方式，了解并分析电容器应用的实例，撰写研究报告。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:7"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:7", title: "3.2 电路及其应用", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:3", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n3.2.1 观察并能识别常见的电路元器件，了解它们在电路中的作用。会使用多用电表。\\n\\n3.2.2 通过实验，探究并了解金属导体的电阻与材料、长度和横截面积的定量关系。会测量金属丝的电阻率。\\n\\n例1知道滑动变阻器的工作原理。\\n\\n例2 通过  $I - U$  图像了解材料的电阻特性。\\n\\n3.2.3 了解串、并联电路电阻的特点。\\n\\n3.2.4 理解闭合电路欧姆定律。会测量电源的电动势和内阻。\\n\\n例3 通过探究电源两端电压与电流的关系，体会图像法在研究物理问题中的作用。\\n\\n3.2.5 理解电功、电功率及焦耳定律，能用焦耳定律解释生产生活\\n\\n中的电热现象。\\n\\n3.2.6 能分析和解决家庭电路中的简单问题，能将安全用电和节约用电的知识应用于生活实际。\\n\\n例4 根据某家庭的电器设施，估算该家庭电路中所需导线的规格。\\n\\n# 活动建议\\n\\n(1) 分别描绘电炉丝、小灯泡、半导体二极管的  $I - U$  特性曲线, 对比它们导电性能的特点。\\n\\n(2) 收集新型电热器的资料, 了解其发热原理。\\n\\n（3）观察家庭用电器的工作状况，检查是否存在安全隐患，知道安全用电的基本方法。\\n\\n(4) 调查近年来家庭用电的情况, 讨论节约用电如何从自己做起,养成节约用电的习惯。\"}", CJ_rawText: "# 【内容要求】\n\n3.2.1 观察并能识别常见的电路元器件，了解它们在电路中的作用。会使用多用电表。\n\n3.2.2 通过实验，探究并了解金属导体的电阻与材料、长度和横截面积的定量关系。会测量金属丝的电阻率。\n\n例1知道滑动变阻器的工作原理。\n\n例2 通过  $I - U$  图像了解材料的电阻特性。\n\n3.2.3 了解串、并联电路电阻的特点。\n\n3.2.4 理解闭合电路欧姆定律。会测量电源的电动势和内阻。\n\n例3 通过探究电源两端电压与电流的关系，体会图像法在研究物理问题中的作用。\n\n3.2.5 理解电功、电功率及焦耳定律，能用焦耳定律解释生产生活\n\n中的电热现象。\n\n3.2.6 能分析和解决家庭电路中的简单问题，能将安全用电和节约用电的知识应用于生活实际。\n\n例4 根据某家庭的电器设施，估算该家庭电路中所需导线的规格。\n\n# 活动建议\n\n(1) 分别描绘电炉丝、小灯泡、半导体二极管的  $I - U$  特性曲线, 对比它们导电性能的特点。\n\n(2) 收集新型电热器的资料, 了解其发热原理。\n\n（3）观察家庭用电器的工作状况，检查是否存在安全隐患，知道安全用电的基本方法。\n\n(4) 调查近年来家庭用电的情况, 讨论节约用电如何从自己做起,养成节约用电的习惯。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:8"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:8", title: "3.3 电磁场与电磁波初步", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:3", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n3.3.1 能列举磁现象在生产生活中的应用。了解我国古代在磁现象方面的研究成果及其对人类文明的影响。关注与磁相关的现代技术发展。\\n\\n3.3.2 通过实验，认识磁场。了解磁感应强度，会用磁感线描述磁场。体会物理模型在探索自然规律中的作用。\\n\\n例1 判断通电直导线和通电线圈周围磁场的方向，用磁感线描绘通电直导线和通电线圈周围的磁场。\\n\\n3.3.3 知道磁通量。通过实验，了解电磁感应现象，了解产生感应电流的条件。知道电磁感应现象的应用及其对现代社会的影响。\\n\\n例2 收集资料，了解手机无线充电的原理。\\n\\n3.3.4 通过实验，了解电磁波，知道电磁场的物质性。\\n\\n3.3.5 通过实例，了解电磁波的应用及其带来的影响。\\n\\n例3 知道手机和卫星通信等都是电磁波的应用，了解我国卫星通信技术的应用与发展前景。\\n\\n3.3.6 知道光是一种电磁波。知道光的能量是不连续的。初步了解微观世界的量子化特征。\\n\\n# 活动建议\\n\\n（1）查阅资料，了解我国古代对磁现象的认识和应用及其对人类文明的影响。\\n\\n（2）查阅资料，了解电磁感应现象的发现过程。\\n\\n（3）调查电磁波在现代社会中应用的实例。\"}", CJ_rawText: "# 【内容要求】\n\n3.3.1 能列举磁现象在生产生活中的应用。了解我国古代在磁现象方面的研究成果及其对人类文明的影响。关注与磁相关的现代技术发展。\n\n3.3.2 通过实验，认识磁场。了解磁感应强度，会用磁感线描述磁场。体会物理模型在探索自然规律中的作用。\n\n例1 判断通电直导线和通电线圈周围磁场的方向，用磁感线描绘通电直导线和通电线圈周围的磁场。\n\n3.3.3 知道磁通量。通过实验，了解电磁感应现象，了解产生感应电流的条件。知道电磁感应现象的应用及其对现代社会的影响。\n\n例2 收集资料，了解手机无线充电的原理。\n\n3.3.4 通过实验，了解电磁波，知道电磁场的物质性。\n\n3.3.5 通过实例，了解电磁波的应用及其带来的影响。\n\n例3 知道手机和卫星通信等都是电磁波的应用，了解我国卫星通信技术的应用与发展前景。\n\n3.3.6 知道光是一种电磁波。知道光的能量是不连续的。初步了解微观世界的量子化特征。\n\n# 活动建议\n\n（1）查阅资料，了解我国古代对磁现象的认识和应用及其对人类文明的影响。\n\n（2）查阅资料，了解电磁感应现象的发现过程。\n\n（3）调查电磁波在现代社会中应用的实例。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:9"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:9", title: "3.4 能源与可持续发展", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:3", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n3.4.1 了解利用水能、风能、太阳能和核能的方式。初步了解核裂变与核聚变。\\n\\n3.4.2 知道不同形式的能量可互相转化，在转化过程中能量总量保持不变，能量转化是有方向性的。\\n\\n3.4.3 了解可再生能源和不可再生能源的分类，认识能源的过度开发和利用对环境的影响。\\n\\n例1 讨论家庭生活中一天所用的能量哪些来自可再生能源，哪些来自不可再生能源。\\n\\n3.4.4 认识环境污染的危害，了解科学、技术、社会及环境协调发展的重要性，具有环境保护的意识和行为。\\n\\n例2 讨论在生活中可采取哪些方式节能。\\n\\n例3 收集资料，调查当地大气污染、水污染、声污染等的主要污染源，了解预防方法。\\n\\n例4 收集资料，从能源的角度讨论为什么要对垃圾进行分类。\\n\\n# 活动建议\\n\\n(1) 查询一个火力发电厂的发电量和煤耗, 计算该厂的发电效率,估算该厂每日发电的用煤量和二氧化碳的排放量。了解我国碳达峰、碳中和的目标和举措。\\n\\n（2）设计利用太阳能取暖的方案，讨论环境对太阳能利用的影响。\\n\\n(3) 查阅资料, 了解人类利用核裂变和核聚变释放核能的前景与挑战。\\n\\n(4) 调查家庭中与热有关的器具的使用情况, 讨论如何使用才能节约能源。\\n\\n# 必修3的教学提示\\n\\n本模块通过静电场、电路及其应用、电磁场与电磁波初步以及能源与可持续发展等内容的学习，引导学生了解场的物质性，知道光是一种电磁波、光的能量是不连续的，初步了解微观世界的量子化特征，培养学生的物质观念、运动和相互作用观念、能量观念。引导学生学会建立点电荷、电场线、磁感线等物理模型，体会物理模型在研究具体问题中的重要作用。让学生了解用物理量之比定义新物理量的方法，了解电场强度、电势等物理量的含义并体会其定义方法。重视发挥物理学史的教育功能，让学生了解库仑定律的探索历程，体会库仑扭秤实验设计的实验思想与方法。让学生了解磁场的基本概念，利用与静电场对比的方法了解磁感应强度，知道磁通量是一个重要的物理量。引导学生通过实验了解产生感应电流的条件，体会科学实验在物理学发展中的重要作用。在实验探究金属导体的电阻与材料、长度和横截面积的定量关系，以及闭合电路欧姆定律等内容的学习中，创设激发学生探究欲望的问题情境，引导学生进行科学探究，培养学生实验设计、分析论证、反思评估等能力。本模块内容与生产生活、科技进步、社会发展密切相关，要充分利用多种教学资源，引导学生了解电磁感应现象在生产生活中的应\\n\\n用，认识能源开发与利用对人类生活和社会发展的影响，认同人与自然和谐共生的理念，关注科学、技术、社会及环境的关系，培养学生解决实际问题的能力。\\n\\n# 必修3的学业要求\\n\\n能用电场强度、电势、磁感应强度等物理量描述电场或磁场的性质；会用库仑定律分析点电荷之间的相互作用，会用闭合电路欧姆定律等分析电路各部分之间电学量的相互关系，能用电势能和焦耳定律等分析电学中的能量转化问题。知道电磁场的物质性；能说出电磁感应现象在生产生活中应用的实例，能利用场的性质解释有关电磁波的现象。\\n\\n能用点电荷模型研究电荷间的相互作用，能用电场线、磁感线等模型分析电场和磁场中比较简单的问题，并得出结论；在分析和论证过程中，能使用证据论证自己的观点。\\n\\n能完成“测量电源的电动势和内阻”等实验。能提出与电磁学相关的科学探究问题；能在教师指导下制订实验方案，能选用实验器材进行实验，获取实验数据；会用图像处理实验数据，能根据图像获得结论，能分析实验中存在的误差，并能提出减小误差的方法；能运用学过的物理学术语撰写实验报告。\\n\\n通过对电磁学及能源相关内容的学习，能认识科学对技术的推动作用，体会科技进步对人类生活和社会发展的影响；具有严谨认真的科学态度；能认识科学、技术、社会及环境的关系，知道保护环境、节约能源、促进可持续发展的重要意义。\\n\\n# （二）选择性必修课程\"}", CJ_rawText: "# 【内容要求】\n\n3.4.1 了解利用水能、风能、太阳能和核能的方式。初步了解核裂变与核聚变。\n\n3.4.2 知道不同形式的能量可互相转化，在转化过程中能量总量保持不变，能量转化是有方向性的。\n\n3.4.3 了解可再生能源和不可再生能源的分类，认识能源的过度开发和利用对环境的影响。\n\n例1 讨论家庭生活中一天所用的能量哪些来自可再生能源，哪些来自不可再生能源。\n\n3.4.4 认识环境污染的危害，了解科学、技术、社会及环境协调发展的重要性，具有环境保护的意识和行为。\n\n例2 讨论在生活中可采取哪些方式节能。\n\n例3 收集资料，调查当地大气污染、水污染、声污染等的主要污染源，了解预防方法。\n\n例4 收集资料，从能源的角度讨论为什么要对垃圾进行分类。\n\n# 活动建议\n\n(1) 查询一个火力发电厂的发电量和煤耗, 计算该厂的发电效率,估算该厂每日发电的用煤量和二氧化碳的排放量。了解我国碳达峰、碳中和的目标和举措。\n\n（2）设计利用太阳能取暖的方案，讨论环境对太阳能利用的影响。\n\n(3) 查阅资料, 了解人类利用核裂变和核聚变释放核能的前景与挑战。\n\n(4) 调查家庭中与热有关的器具的使用情况, 讨论如何使用才能节约能源。\n\n# 必修3的教学提示\n\n本模块通过静电场、电路及其应用、电磁场与电磁波初步以及能源与可持续发展等内容的学习，引导学生了解场的物质性，知道光是一种电磁波、光的能量是不连续的，初步了解微观世界的量子化特征，培养学生的物质观念、运动和相互作用观念、能量观念。引导学生学会建立点电荷、电场线、磁感线等物理模型，体会物理模型在研究具体问题中的重要作用。让学生了解用物理量之比定义新物理量的方法，了解电场强度、电势等物理量的含义并体会其定义方法。重视发挥物理学史的教育功能，让学生了解库仑定律的探索历程，体会库仑扭秤实验设计的实验思想与方法。让学生了解磁场的基本概念，利用与静电场对比的方法了解磁感应强度，知道磁通量是一个重要的物理量。引导学生通过实验了解产生感应电流的条件，体会科学实验在物理学发展中的重要作用。在实验探究金属导体的电阻与材料、长度和横截面积的定量关系，以及闭合电路欧姆定律等内容的学习中，创设激发学生探究欲望的问题情境，引导学生进行科学探究，培养学生实验设计、分析论证、反思评估等能力。本模块内容与生产生活、科技进步、社会发展密切相关，要充分利用多种教学资源，引导学生了解电磁感应现象在生产生活中的应\n\n用，认识能源开发与利用对人类生活和社会发展的影响，认同人与自然和谐共生的理念，关注科学、技术、社会及环境的关系，培养学生解决实际问题的能力。\n\n# 必修3的学业要求\n\n能用电场强度、电势、磁感应强度等物理量描述电场或磁场的性质；会用库仑定律分析点电荷之间的相互作用，会用闭合电路欧姆定律等分析电路各部分之间电学量的相互关系，能用电势能和焦耳定律等分析电学中的能量转化问题。知道电磁场的物质性；能说出电磁感应现象在生产生活中应用的实例，能利用场的性质解释有关电磁波的现象。\n\n能用点电荷模型研究电荷间的相互作用，能用电场线、磁感线等模型分析电场和磁场中比较简单的问题，并得出结论；在分析和论证过程中，能使用证据论证自己的观点。\n\n能完成“测量电源的电动势和内阻”等实验。能提出与电磁学相关的科学探究问题；能在教师指导下制订实验方案，能选用实验器材进行实验，获取实验数据；会用图像处理实验数据，能根据图像获得结论，能分析实验中存在的误差，并能提出减小误差的方法；能运用学过的物理学术语撰写实验报告。\n\n通过对电磁学及能源相关内容的学习，能认识科学对技术的推动作用，体会科技进步对人类生活和社会发展的影响；具有严谨认真的科学态度；能认识科学、技术、社会及环境的关系，知道保护环境、节约能源、促进可持续发展的重要意义。\n\n# （二）选择性必修课程"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:10"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:10", title: "1.1 动量与动量守恒定律", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:4", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n1.1.1 理解冲量和动量。通过理论推导和实验，理解动量定理和动量守恒定律，能用其解释生产生活中的有关现象。知道动量守恒定律的普适性。\\n\\n例1知道火箭的发射利用了反冲现象。\\n\\n例2 查阅资料，了解中子的发现过程，讨论动量守恒定律在其中的作用。\\n\\n1.1.2 通过实验，了解弹性碰撞和非弹性碰撞的特点。定量分析一维碰撞问题并能解释生产生活中的弹性碰撞和非弹性碰撞现象。\\n\\n1.1.3 体会用守恒定律分析物理问题的方法，体会自然界的和谐与统一。\\n\\n例3 查阅资料，了解太空物体的碰撞和微观粒子的碰撞等相关信息。\\n\\n# 活动建议\\n\\n（1）制作“水火箭”。\\n\\n（2）观察台球碰撞前后的运动情况，尝试用动量知识定性解释。\"}", CJ_rawText: "# 【内容要求】\n\n1.1.1 理解冲量和动量。通过理论推导和实验，理解动量定理和动量守恒定律，能用其解释生产生活中的有关现象。知道动量守恒定律的普适性。\n\n例1知道火箭的发射利用了反冲现象。\n\n例2 查阅资料，了解中子的发现过程，讨论动量守恒定律在其中的作用。\n\n1.1.2 通过实验，了解弹性碰撞和非弹性碰撞的特点。定量分析一维碰撞问题并能解释生产生活中的弹性碰撞和非弹性碰撞现象。\n\n1.1.3 体会用守恒定律分析物理问题的方法，体会自然界的和谐与统一。\n\n例3 查阅资料，了解太空物体的碰撞和微观粒子的碰撞等相关信息。\n\n# 活动建议\n\n（1）制作“水火箭”。\n\n（2）观察台球碰撞前后的运动情况，尝试用动量知识定性解释。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:11"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:11", title: "1.2 机械振动与机械波", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:4", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n1.2.1 通过实验，认识简谐运动的特征。能用公式和图像描述简谐运动。\\n\\n1.2.2 通过实验，探究单摆的周期与摆长的定量关系。知道单摆周期与摆长、重力加速度的关系。会用单摆测量重力加速度的大小。\\n\\n1.2.3 通过实验，认识受迫振动的特点。了解产生共振的条件及其应用。\\n\\n例1 调查生产生活中受迫振动的应用实例。\\n\\n例2 调查生产生活中利用和防止共振的实例。\\n\\n1.2.4 通过观察，认识波的特征。能区别横波和纵波。能用图像描述横波。理解波速、波长和频率的关系。\\n\\n1.2.5 知道波的反射和折射现象。通过实验，了解波的干涉与衍射现象。\\n\\n例3 用波动演示器显示波的叠加。\\n\\n例4 观察音叉双臂振动激发的水波干涉现象。\\n\\n1.2.6 通过实验，认识多普勒效应。能解释多普勒效应产生的原因。能列举多普勒效应的应用实例。\\n\\n# 活动建议\\n\\n(1) 学生们手拉手站成一排, 依次下蹲、起立, 模拟机械波。\\n\\n（2）查阅资料，了解多普勒效应的实际应用。\\n\\n(3) 查阅资料, 举办关于引力波的讨论会。\"}", CJ_rawText: "# 【内容要求】\n\n1.2.1 通过实验，认识简谐运动的特征。能用公式和图像描述简谐运动。\n\n1.2.2 通过实验，探究单摆的周期与摆长的定量关系。知道单摆周期与摆长、重力加速度的关系。会用单摆测量重力加速度的大小。\n\n1.2.3 通过实验，认识受迫振动的特点。了解产生共振的条件及其应用。\n\n例1 调查生产生活中受迫振动的应用实例。\n\n例2 调查生产生活中利用和防止共振的实例。\n\n1.2.4 通过观察，认识波的特征。能区别横波和纵波。能用图像描述横波。理解波速、波长和频率的关系。\n\n1.2.5 知道波的反射和折射现象。通过实验，了解波的干涉与衍射现象。\n\n例3 用波动演示器显示波的叠加。\n\n例4 观察音叉双臂振动激发的水波干涉现象。\n\n1.2.6 通过实验，认识多普勒效应。能解释多普勒效应产生的原因。能列举多普勒效应的应用实例。\n\n# 活动建议\n\n(1) 学生们手拉手站成一排, 依次下蹲、起立, 模拟机械波。\n\n（2）查阅资料，了解多普勒效应的实际应用。\n\n(3) 查阅资料, 举办关于引力波的讨论会。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:12"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:12", title: "1.3 光及其应用", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:4", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n1.3.1 通过实验，理解光的折射定律。会测量材料的折射率。\\n\\n1.3.2 知道光的全反射现象及其产生的条件。初步了解光纤的工作\\n\\n原理、光纤技术在生产生活中的应用。\\n\\n例1 演示光沿水柱（或弯曲的玻璃柱）的传播。\\n\\n例2 观察光缆的结构，分析光的全反射在光纤中是如何产生的。\\n\\n1.3.3 观察光的干涉、衍射和偏振现象，了解这些现象产生的条件，知道其在生产生活中的应用。知道光是横波，会用双缝干涉实验测量光的波长。\\n\\n例3 演示双缝干涉和单缝衍射现象，观察双缝干涉和单缝衍射图样，并以此说明光具有波的性质。\\n\\n例4 利用生活中的器材设计实验，观察光的薄膜干涉现象，讨论薄膜干涉的原因。\\n\\n1.3.4 通过实验，了解激光的特性。能举例说明激光技术在生产生活中的应用。\\n\\n# 活动建议\\n\\n（1）通过调查研究，收集光的偏振现象应用的实例。\\n\\n（2）观看3D电影，查阅资料，了解3D电影的原理。\\n\\n# 选择性必修1的教学提示\\n\\n本模块在学生初步形成运动和相互作用观念、能量观念的基础上，引导学生通过研究碰撞现象、机械振动和机械波、光的干涉和衍射等现象，拓展对物理世界的认识和理解。通过探究碰撞过程中的守恒量，进一步发展学生的运动和相互作用观念、能量观念，使其了解物理规律具有适用范围和条件。通过实验探究和理论推导，让学生经历科学论证过程，理解动量定理的物理实质与牛顿第二定律的一致性。通过创设学生感兴趣的问题情境，引导学生运用已有的概念和规律分析常见的碰撞、机械振动、机械波等现象，建构弹性碰撞、简谐运动、单摆等模型，学会用守恒定律解决问题的方法。在研究碰撞现象、单摆运动等实验过程\\n\\n中，进一步领会守恒思想，提高建模能力。通过根据光的干涉、衍射等现象来论证光具有波动性，增强学生的证据意识，提升科学论证能力。引导学生从相互作用和能量的角度认识机械振动和机械波，了解波动的特征，为深入学习和研究电磁波打好基础。注意拓展学生的视野，从动量守恒定律的普适性来认识自然界的统一性。\\n\\n# 选择性必修1的学业要求\\n\\n能从理论推导和实验验证的角度，理解动量守恒定律，深化对物体之间相互作用规律的理解；能用动量和机械能的知识分析和解释机械运动现象，解决一维碰撞问题。能用恰当的物理量描述简谐运动和机械波，能说明机械波的特点；能解释生产生活中的有关现象。知道光的干涉、衍射和偏振；能运用相关知识解释光学现象。\\n\\n能根据现实生活中的振动或摆动的特点，建构简谐运动、单摆等物理模型，能运用这些模型分析问题；会用系统的思想和守恒的思想分析物理问题，通过推理得出结论；能恰当使用证据说明自己的观点；敢于质疑他人的观点，能从牛顿运动定律、动量守恒、能量守恒等不同角度思考物理问题。\\n\\n能完成“用单摆测量重力加速度的大小”等实验。能对生活中某些现象产生的原因作出猜想；能恰当选用基本的实验器材进行实验，会设计实验方案，能对实验器材进行规范操作，获得实验数据；认识实验误差是不可避免的，具有减小实验误差的意识，能通过不同方式分析数据，获得结论，并尝试作出解释；能用科学的语言撰写实验报告。\\n\\n通过对动量守恒定律等内容的学习，能认识物理规律的内在一致性和适用范围，认识物理研究是建立在观察和实验基础上的一项创造性工作；具有实事求是的科学态度；能认识我国光纤通信的成就，增强民族自豪感和社会责任感。\"}", CJ_rawText: "# 【内容要求】\n\n1.3.1 通过实验，理解光的折射定律。会测量材料的折射率。\n\n1.3.2 知道光的全反射现象及其产生的条件。初步了解光纤的工作\n\n原理、光纤技术在生产生活中的应用。\n\n例1 演示光沿水柱（或弯曲的玻璃柱）的传播。\n\n例2 观察光缆的结构，分析光的全反射在光纤中是如何产生的。\n\n1.3.3 观察光的干涉、衍射和偏振现象，了解这些现象产生的条件，知道其在生产生活中的应用。知道光是横波，会用双缝干涉实验测量光的波长。\n\n例3 演示双缝干涉和单缝衍射现象，观察双缝干涉和单缝衍射图样，并以此说明光具有波的性质。\n\n例4 利用生活中的器材设计实验，观察光的薄膜干涉现象，讨论薄膜干涉的原因。\n\n1.3.4 通过实验，了解激光的特性。能举例说明激光技术在生产生活中的应用。\n\n# 活动建议\n\n（1）通过调查研究，收集光的偏振现象应用的实例。\n\n（2）观看3D电影，查阅资料，了解3D电影的原理。\n\n# 选择性必修1的教学提示\n\n本模块在学生初步形成运动和相互作用观念、能量观念的基础上，引导学生通过研究碰撞现象、机械振动和机械波、光的干涉和衍射等现象，拓展对物理世界的认识和理解。通过探究碰撞过程中的守恒量，进一步发展学生的运动和相互作用观念、能量观念，使其了解物理规律具有适用范围和条件。通过实验探究和理论推导，让学生经历科学论证过程，理解动量定理的物理实质与牛顿第二定律的一致性。通过创设学生感兴趣的问题情境，引导学生运用已有的概念和规律分析常见的碰撞、机械振动、机械波等现象，建构弹性碰撞、简谐运动、单摆等模型，学会用守恒定律解决问题的方法。在研究碰撞现象、单摆运动等实验过程\n\n中，进一步领会守恒思想，提高建模能力。通过根据光的干涉、衍射等现象来论证光具有波动性，增强学生的证据意识，提升科学论证能力。引导学生从相互作用和能量的角度认识机械振动和机械波，了解波动的特征，为深入学习和研究电磁波打好基础。注意拓展学生的视野，从动量守恒定律的普适性来认识自然界的统一性。\n\n# 选择性必修1的学业要求\n\n能从理论推导和实验验证的角度，理解动量守恒定律，深化对物体之间相互作用规律的理解；能用动量和机械能的知识分析和解释机械运动现象，解决一维碰撞问题。能用恰当的物理量描述简谐运动和机械波，能说明机械波的特点；能解释生产生活中的有关现象。知道光的干涉、衍射和偏振；能运用相关知识解释光学现象。\n\n能根据现实生活中的振动或摆动的特点，建构简谐运动、单摆等物理模型，能运用这些模型分析问题；会用系统的思想和守恒的思想分析物理问题，通过推理得出结论；能恰当使用证据说明自己的观点；敢于质疑他人的观点，能从牛顿运动定律、动量守恒、能量守恒等不同角度思考物理问题。\n\n能完成“用单摆测量重力加速度的大小”等实验。能对生活中某些现象产生的原因作出猜想；能恰当选用基本的实验器材进行实验，会设计实验方案，能对实验器材进行规范操作，获得实验数据；认识实验误差是不可避免的，具有减小实验误差的意识，能通过不同方式分析数据，获得结论，并尝试作出解释；能用科学的语言撰写实验报告。\n\n通过对动量守恒定律等内容的学习，能认识物理规律的内在一致性和适用范围，认识物理研究是建立在观察和实验基础上的一项创造性工作；具有实事求是的科学态度；能认识我国光纤通信的成就，增强民族自豪感和社会责任感。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:13"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:13", title: "2.1 磁场", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:5", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n2.1.1 通过实验，认识安培力。能判断安培力的方向，会计算安培力的大小。了解安培力在生产生活中的应用。\\n\\n例1 利用电流天平等简易装置测量安培力。\\n\\n例2 了解磁电式电表的结构和工作原理。\\n\\n2.1.2 通过实验，认识洛伦兹力。能判断洛伦兹力的方向，会计算洛伦兹力的大小。\\n\\n2.1.3 能用洛伦兹力分析带电粒子在匀强磁场中的圆周运动。了解带电粒子在匀强磁场中的偏转及其应用。\\n\\n例3 观察阴极射线在磁场中的偏转。\\n\\n例4 了解质谱仪和回旋加速器的工作原理。\\n\\n# 活动建议\\n\\n(1) 用电磁继电器设计一个自动控制电路, 说明其工作原理。\\n\\n（2）观察洛伦兹力演示仪的结构，定性讨论电子束偏转的原理。\"}", CJ_rawText: "# 【内容要求】\n\n2.1.1 通过实验，认识安培力。能判断安培力的方向，会计算安培力的大小。了解安培力在生产生活中的应用。\n\n例1 利用电流天平等简易装置测量安培力。\n\n例2 了解磁电式电表的结构和工作原理。\n\n2.1.2 通过实验，认识洛伦兹力。能判断洛伦兹力的方向，会计算洛伦兹力的大小。\n\n2.1.3 能用洛伦兹力分析带电粒子在匀强磁场中的圆周运动。了解带电粒子在匀强磁场中的偏转及其应用。\n\n例3 观察阴极射线在磁场中的偏转。\n\n例4 了解质谱仪和回旋加速器的工作原理。\n\n# 活动建议\n\n(1) 用电磁继电器设计一个自动控制电路, 说明其工作原理。\n\n（2）观察洛伦兹力演示仪的结构，定性讨论电子束偏转的原理。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:14"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:14", title: "2.2 电磁感应及其应用", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:5", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n2.2.1 探究影响感应电流方向的因素，理解楞次定律。\\n\\n例1 用能量的观点解释楞次定律。\\n\\n2.2.2 通过实验，理解法拉第电磁感应定律。\\n\\n2.2.3 通过实验，了解自感现象和涡流现象。能举例说明自感现象\\n\\n和涡流现象在生产生活中的应用。\\n\\n例2 了解电磁炉的结构和原理。\\n\\n2.2.4 通过实验，认识交变电流。能用公式和图像描述正弦交变电流。\\n\\n例3 用示波器或其他设备观察交变电流的波形，并测算其峰值和有效值。\\n\\n2.2.5 通过实验，探究并了解变压器原、副线圈电压与匝数的关系。知道远距离输电时通常采用高压输电的原因。\\n\\n例4 观察常见的变压器，了解其作用。\\n\\n例5探讨远距离输电中导致电能损耗的因素。\\n\\n2.2.6 了解发电机和电动机工作过程中的能量转化。认识电磁学在人类生活和社会发展中的作用。\\n\\n# 活动建议\\n\\n(1) 查阅资料, 与同学讨论高速列车进站过程中是如何进行能量转化的。\\n\\n(2) 查阅资料, 撰写报告分析电流磁效应和法拉第电磁感应定律对第二次工业革命的贡献, 体会科学技术对社会发展的意义。\"}", CJ_rawText: "# 【内容要求】\n\n2.2.1 探究影响感应电流方向的因素，理解楞次定律。\n\n例1 用能量的观点解释楞次定律。\n\n2.2.2 通过实验，理解法拉第电磁感应定律。\n\n2.2.3 通过实验，了解自感现象和涡流现象。能举例说明自感现象\n\n和涡流现象在生产生活中的应用。\n\n例2 了解电磁炉的结构和原理。\n\n2.2.4 通过实验，认识交变电流。能用公式和图像描述正弦交变电流。\n\n例3 用示波器或其他设备观察交变电流的波形，并测算其峰值和有效值。\n\n2.2.5 通过实验，探究并了解变压器原、副线圈电压与匝数的关系。知道远距离输电时通常采用高压输电的原因。\n\n例4 观察常见的变压器，了解其作用。\n\n例5探讨远距离输电中导致电能损耗的因素。\n\n2.2.6 了解发电机和电动机工作过程中的能量转化。认识电磁学在人类生活和社会发展中的作用。\n\n# 活动建议\n\n(1) 查阅资料, 与同学讨论高速列车进站过程中是如何进行能量转化的。\n\n(2) 查阅资料, 撰写报告分析电流磁效应和法拉第电磁感应定律对第二次工业革命的贡献, 体会科学技术对社会发展的意义。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:15"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:15", title: "2.3 电磁振荡与电磁波", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:5", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n2.3.1 初步了解麦克斯韦电磁场理论的基本思想，初步了解场的统一性与多样性，体会物理学对统一性的追求。\\n\\n例1 结合牛顿万有引力定律和麦克斯韦电磁场理论，体会物理学发展过程中对统一性的追求。\\n\\n2.3.2 通过实验，了解电磁振荡。\\n\\n2.3.3 知道电磁波的发射、传播和接收。\\n\\n例2 演示赫兹实验，体会理论预言在科学发展中的作用，以及实\\n\\n验证据对新理论的支撑作用。\\n\\n2.3.4 认识电磁波谱。知道各个波段的电磁波的名称、特征和典型应用。\\n\\n# 活动建议\\n\\n（1）查阅资料，了解微波炉的加热原理，总结使用微波炉的注意事项。\\n\\n(2) 查阅资料, 了解移动通信技术发展情况, 并了解蓝牙、Wi-Fi等无线通信技术的原理、使用的电磁波频段和常用频率。\\n\\n（3）列举家用电器和生活用品中与红外线、紫外线有关的应用实例。\"}", CJ_rawText: "# 【内容要求】\n\n2.3.1 初步了解麦克斯韦电磁场理论的基本思想，初步了解场的统一性与多样性，体会物理学对统一性的追求。\n\n例1 结合牛顿万有引力定律和麦克斯韦电磁场理论，体会物理学发展过程中对统一性的追求。\n\n2.3.2 通过实验，了解电磁振荡。\n\n2.3.3 知道电磁波的发射、传播和接收。\n\n例2 演示赫兹实验，体会理论预言在科学发展中的作用，以及实\n\n验证据对新理论的支撑作用。\n\n2.3.4 认识电磁波谱。知道各个波段的电磁波的名称、特征和典型应用。\n\n# 活动建议\n\n（1）查阅资料，了解微波炉的加热原理，总结使用微波炉的注意事项。\n\n(2) 查阅资料, 了解移动通信技术发展情况, 并了解蓝牙、Wi-Fi等无线通信技术的原理、使用的电磁波频段和常用频率。\n\n（3）列举家用电器和生活用品中与红外线、紫外线有关的应用实例。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:16"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:16", title: "2.4 传感器", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:5", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n2.4.1 知道非电学量转换成电学量的技术意义。\\n\\n2.4.2 通过实验，了解常见传感器的工作原理。会利用传感器制作简单的自动控制装置。\\n\\n例1 通过热敏电阻实验，了解温度传感器的工作原理。\\n\\n2.4.3 列举传感器在生产生活中的应用\\n\\n例2 了解光敏传感器及其在生产生活中的应用。\\n\\n# 活动建议\\n\\n（1）调查生产生活中传感器的应用，分析某一种传感器的工作原理。\\n\\n(2) 调查手机中的各种传感器, 了解它们的应用。\\n\\n# 选择性必修2的教学提示\\n\\n本模块通过电磁学内容的学习，进一步培养学生关于电磁场的物质观念、运动和相互作用观念、能量观念。要引导学生通过安培力与洛伦兹力的学习进一步认识场的概念。通过对感应电流等相关问题的科学探究，强调对实验现象和实验结果进行归纳推理的方法，以此提升学生对实验结果定性和定量分析的能力。要利用基于实际情境的问题，让学生了解法拉第电磁感应定律、楞次定律等电磁学基本规律在生产生活中的应用，了解电磁振荡的过程、交变电流的产生原理和方式，了解高压输电、变压器等的原理，认识常用传感器的基本原理和简单的控制电路，认识物理学对现代生活和科技社会发展的促进作用。\\n\\n# 选择性必修2的学业要求\\n\\n能认识洛伦兹力和安培力，理解法拉第电磁感应定律、楞次定律，了解电磁振荡和电磁波等；能说出电磁技术在生产生活、科技和军事等方面的一些重要应用，能根据电磁感应、电磁振荡和电磁波理论解释生产生活中的电磁现象，能对常用电子设备、家用电器中有关的一些电磁元件或部件的工作原理作出解释。\\n\\n能应用磁感线、匀强磁场等模型综合分析磁场和电磁感应问题；能根据法拉第电磁感应定律和楞次定律对有关具体问题进行推理；能合理使用证据，得出结论；能对某些电磁学问题表达自己的见解，尝试对日常生活中的有关问题提出改进建议。\\n\\n能完成“探究影响感应电流方向的因素”等实验。能根据检验假设的思路，制订科学探究实验方案，正确操作实验器材，获得可靠的实验数据；能通过分析数据发现规律，进而通过归纳形成简洁的、具有普遍意义的结论；能写出完整的实验报告。\\n\\n通过对电磁感应、交变电流及电磁波等内容的学习，能根据电磁理\\n\\n论的发展过程及其对人类社会影响的历史，了解科技对人类生活和社会发展的影响，体会基础科学的重大发现在促进人类生活方式变革及推动社会发展中的作用；能感受物理知识与人们生活的密切联系，具有对物理学的兴趣；能认识我国在特高压直流输电技术领域中的瞩目成就，如“西电东送”工程，具有民族复兴的自豪感和责任感，树立报国强国志向。\"}", CJ_rawText: "# 【内容要求】\n\n2.4.1 知道非电学量转换成电学量的技术意义。\n\n2.4.2 通过实验，了解常见传感器的工作原理。会利用传感器制作简单的自动控制装置。\n\n例1 通过热敏电阻实验，了解温度传感器的工作原理。\n\n2.4.3 列举传感器在生产生活中的应用\n\n例2 了解光敏传感器及其在生产生活中的应用。\n\n# 活动建议\n\n（1）调查生产生活中传感器的应用，分析某一种传感器的工作原理。\n\n(2) 调查手机中的各种传感器, 了解它们的应用。\n\n# 选择性必修2的教学提示\n\n本模块通过电磁学内容的学习，进一步培养学生关于电磁场的物质观念、运动和相互作用观念、能量观念。要引导学生通过安培力与洛伦兹力的学习进一步认识场的概念。通过对感应电流等相关问题的科学探究，强调对实验现象和实验结果进行归纳推理的方法，以此提升学生对实验结果定性和定量分析的能力。要利用基于实际情境的问题，让学生了解法拉第电磁感应定律、楞次定律等电磁学基本规律在生产生活中的应用，了解电磁振荡的过程、交变电流的产生原理和方式，了解高压输电、变压器等的原理，认识常用传感器的基本原理和简单的控制电路，认识物理学对现代生活和科技社会发展的促进作用。\n\n# 选择性必修2的学业要求\n\n能认识洛伦兹力和安培力，理解法拉第电磁感应定律、楞次定律，了解电磁振荡和电磁波等；能说出电磁技术在生产生活、科技和军事等方面的一些重要应用，能根据电磁感应、电磁振荡和电磁波理论解释生产生活中的电磁现象，能对常用电子设备、家用电器中有关的一些电磁元件或部件的工作原理作出解释。\n\n能应用磁感线、匀强磁场等模型综合分析磁场和电磁感应问题；能根据法拉第电磁感应定律和楞次定律对有关具体问题进行推理；能合理使用证据，得出结论；能对某些电磁学问题表达自己的见解，尝试对日常生活中的有关问题提出改进建议。\n\n能完成“探究影响感应电流方向的因素”等实验。能根据检验假设的思路，制订科学探究实验方案，正确操作实验器材，获得可靠的实验数据；能通过分析数据发现规律，进而通过归纳形成简洁的、具有普遍意义的结论；能写出完整的实验报告。\n\n通过对电磁感应、交变电流及电磁波等内容的学习，能根据电磁理\n\n论的发展过程及其对人类社会影响的历史，了解科技对人类生活和社会发展的影响，体会基础科学的重大发现在促进人类生活方式变革及推动社会发展中的作用；能感受物理知识与人们生活的密切联系，具有对物理学的兴趣；能认识我国在特高压直流输电技术领域中的瞩目成就，如“西电东送”工程，具有民族复兴的自豪感和责任感，树立报国强国志向。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:17"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:17", title: "3.1 固体、液体和气体", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:6", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n3.1.1 通过实验，估测油酸分子的大小。了解分子动理论的基本观点及相关的实验证据。\\n\\n3.1.2 通过实验，了解扩散现象。观察并解释布朗运动。了解分子运动速率分布的统计规律，知道分子运动速率分布图像的物理意义。\\n\\n例1利用显微镜观察布朗运动。\\n\\n3.1.3 了解固体的微观结构。知道晶体和非晶体的特点。能列举生活中的晶体和非晶体。通过实例，了解液晶的主要性质及其在显示技术中的应用。\\n\\n例2利用熔化的石蜡显示云母片的各向异性和玻璃片的各向同性。\\n\\n3.1.4 了解材料科学的有关知识及应用，体会它们的发展对人类生活和社会发展的影响。\\n\\n例3 知道半导体的特点，了解半导体技术在生产生活中的应用。\\n\\n例4 初步了解纳米材料的特性，关注纳米材料的研究和应用及其可能存在的问题。\\n\\n3.1.5 观察液体的表面张力现象。了解表面张力产生的原因。知道毛细现象。\\n\\n例5 分析生活中与表面张力相关的实例。\\n\\n3.1.6 通过实验，了解气体实验定律。知道理想气体模型。能用分子动理论和统计观点解释气体压强和气体实验定律。\\n\\n# 活动建议\\n\\n(1) 设计实验，比较肥皂水和清水的表面张力。\\n\\n(2) 通过调查, 了解生活中表现统计规律的实例。\"}", CJ_rawText: "# 【内容要求】\n\n3.1.1 通过实验，估测油酸分子的大小。了解分子动理论的基本观点及相关的实验证据。\n\n3.1.2 通过实验，了解扩散现象。观察并解释布朗运动。了解分子运动速率分布的统计规律，知道分子运动速率分布图像的物理意义。\n\n例1利用显微镜观察布朗运动。\n\n3.1.3 了解固体的微观结构。知道晶体和非晶体的特点。能列举生活中的晶体和非晶体。通过实例，了解液晶的主要性质及其在显示技术中的应用。\n\n例2利用熔化的石蜡显示云母片的各向异性和玻璃片的各向同性。\n\n3.1.4 了解材料科学的有关知识及应用，体会它们的发展对人类生活和社会发展的影响。\n\n例3 知道半导体的特点，了解半导体技术在生产生活中的应用。\n\n例4 初步了解纳米材料的特性，关注纳米材料的研究和应用及其可能存在的问题。\n\n3.1.5 观察液体的表面张力现象。了解表面张力产生的原因。知道毛细现象。\n\n例5 分析生活中与表面张力相关的实例。\n\n3.1.6 通过实验，了解气体实验定律。知道理想气体模型。能用分子动理论和统计观点解释气体压强和气体实验定律。\n\n# 活动建议\n\n(1) 设计实验，比较肥皂水和清水的表面张力。\n\n(2) 通过调查, 了解生活中表现统计规律的实例。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:18"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:18", title: "3.2 热力学定律", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:6", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n3.2.1 知道热力学第一定律。通过有关史实，了解热力学第一定律和能量守恒定律的发现过程，体会科学探索中的挫折和失败对科学发现的意义。\\n\\n3.2.2 理解能量守恒定律，能用能量守恒的观点解释自然现象。体会能量守恒定律是最基本、最普遍的自然规律之一。\\n\\n3.2.3 通过自然界中宏观过程的方向性，了解热力学第二定律。\\n\\n# 活动建议\\n\\n（1）基于对热力学定律的认识，结合可持续发展的观念，讨论人类合理开发和利用能源的问题。\\n\\n（2）讨论为什么“第一类永动机”和“第二类永动机”不可能实现。\"}", CJ_rawText: "# 【内容要求】\n\n3.2.1 知道热力学第一定律。通过有关史实，了解热力学第一定律和能量守恒定律的发现过程，体会科学探索中的挫折和失败对科学发现的意义。\n\n3.2.2 理解能量守恒定律，能用能量守恒的观点解释自然现象。体会能量守恒定律是最基本、最普遍的自然规律之一。\n\n3.2.3 通过自然界中宏观过程的方向性，了解热力学第二定律。\n\n# 活动建议\n\n（1）基于对热力学定律的认识，结合可持续发展的观念，讨论人类合理开发和利用能源的问题。\n\n（2）讨论为什么“第一类永动机”和“第二类永动机”不可能实现。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:19"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:19", title: "3.3 原子与原子核", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:6", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n3.3.1 了解人类探索原子及其结构的历史。知道原子的核式结构模型。通过对氢原子光谱的分析，了解原子的能级结构。\\n\\n3.3.2 了解原子核的组成和核力的性质。知道四种基本相互作用。能根据质量数守恒和电荷守恒写出核反应方程。\\n\\n3.3.3 了解放射性和原子核衰变。知道半衰期及其统计意义。了解放射性同位素的应用，知道射线的危害与防护。\\n\\n3.3.4 认识原子核的结合能，了解核裂变反应和核聚变反应。关注核技术应用对人类生活和社会发展的影响。\\n\\n3.3.5 了解人类对物质结构的探索历程。\\n\\n例 了解直线加速器、同步加速器、粒子探测器在核物理和粒子物理研究中的作用。\\n\\n# 活动建议\\n\\n查阅资料，了解华人科学家在粒子物理领域中的杰出贡献。\"}", CJ_rawText: "# 【内容要求】\n\n3.3.1 了解人类探索原子及其结构的历史。知道原子的核式结构模型。通过对氢原子光谱的分析，了解原子的能级结构。\n\n3.3.2 了解原子核的组成和核力的性质。知道四种基本相互作用。能根据质量数守恒和电荷守恒写出核反应方程。\n\n3.3.3 了解放射性和原子核衰变。知道半衰期及其统计意义。了解放射性同位素的应用，知道射线的危害与防护。\n\n3.3.4 认识原子核的结合能，了解核裂变反应和核聚变反应。关注核技术应用对人类生活和社会发展的影响。\n\n3.3.5 了解人类对物质结构的探索历程。\n\n例 了解直线加速器、同步加速器、粒子探测器在核物理和粒子物理研究中的作用。\n\n# 活动建议\n\n查阅资料，了解华人科学家在粒子物理领域中的杰出贡献。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:20"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:20", title: "3.4 波粒二象性", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:6", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n3.4.1 通过实验，了解光电效应现象。知道爱因斯坦光电效应方程及其意义。能根据实验结论说明光的波粒二象性。\\n\\n3.4.2 知道实物粒子具有波动性，了解微观世界的量子化特征。体会量子论的建立对人们认识物质世界的影响。\\n\\n例1 了解电子衍射实验。\\n\\n例2 通过史实，了解量子概念的建构对人类认识自然的影响。\\n\\n# 活动建议\\n\\n阅读有关微观世界的科普读物，写出读书体会。\\n\\n# 选择性必修3的教学提示\\n\\n本模块通过对固体、液体和气体的微观结构，以及气体实验定律、热力学定律、原子与原子核、波粒二象性等内容的学习，进一步促进学生的物质观念、运动和相互作用观念、能量观念以及物理模型建构等物\\n\\n理学科核心素养的形成。通过观察生活现象和实验，让学生了解固体、液体和气体的微观结构，热力学定律等内容。通过让学生了解光电效应等实验，引导学生认识光及实物粒子的波粒二象性，进一步认识光的本性。通过对固体、液体和气体，原子与原子核，波粒二象性等内容的教学，完善学生对物质的认识，帮助学生形成物质观念。通过用油膜法估测油酸分子的大小的实验，让学生体会和掌握测量微观量的思想和方法，能利用不同的方法和手段分析和处理信息。通过多种方法，创设多种问题情境，引导学生探究并讨论，让学生广泛了解核能等对人类生活和社会发展的影响。\\n\\n# 选择性必修3的学业要求\\n\\n能认识固体、液体和气体的微观结构及特点，能认识光电效应现象，说明光的波粒二象性，认识原子、原子核的结构特点；能用相关知识解释自然界的有关现象，解决生产生活中的有关问题，能把物质的宏观性质与其微观结构联系起来。\\n\\n能认识建构理想气体、原子核式结构等模型的必要性，能在一定条件下应用理想气体模型分析和研究实际气体的问题；能基于证据，归纳推理得出气体实验定律的有关结论，通过类比方式了解气体压强的微观解释；能根据所观察的宏观事实论证分子热运动、分子间作用力等结论；能根据能量守恒定律等质疑不符合物理规律的传闻，勇于发表自己的见解。\\n\\n能完成“用油膜法估测油酸分子的大小”等实验。能发现并提出热现象中值得探究的问题，对其结论作出合理猜想；能通过科学、合理的操作获得实验数据；能在实验中运用减小误差的方法，能采用恰当的方式处理数据并得出正确结论；能写出完整、规范的实验报告，正确表达科学探究的过程和结果。\\n\\n通过对热学、原子与原子核以及波粒二象性等相关内容的学习，知\\n\\n道所有物理结论都必须接受实践的检验；在学习与研究中做到实事求是，不迷信权威，能与他人合作；通过对热力学定律和核能等内容的学习，知道科学技术对人类生活和社会发展的积极影响，但同时也会带来一系列问题，能认识人与自然是生命共同体，能尊重自然，遵循自然规律。\\n\\n# （三）选修课程\\n\\n本课程关注学生的兴趣和特长，关注物理学对社会发展的影响，关注物理学前沿对学生视野的拓展等。\"}", CJ_rawText: "# 【内容要求】\n\n3.4.1 通过实验，了解光电效应现象。知道爱因斯坦光电效应方程及其意义。能根据实验结论说明光的波粒二象性。\n\n3.4.2 知道实物粒子具有波动性，了解微观世界的量子化特征。体会量子论的建立对人们认识物质世界的影响。\n\n例1 了解电子衍射实验。\n\n例2 通过史实，了解量子概念的建构对人类认识自然的影响。\n\n# 活动建议\n\n阅读有关微观世界的科普读物，写出读书体会。\n\n# 选择性必修3的教学提示\n\n本模块通过对固体、液体和气体的微观结构，以及气体实验定律、热力学定律、原子与原子核、波粒二象性等内容的学习，进一步促进学生的物质观念、运动和相互作用观念、能量观念以及物理模型建构等物\n\n理学科核心素养的形成。通过观察生活现象和实验，让学生了解固体、液体和气体的微观结构，热力学定律等内容。通过让学生了解光电效应等实验，引导学生认识光及实物粒子的波粒二象性，进一步认识光的本性。通过对固体、液体和气体，原子与原子核，波粒二象性等内容的教学，完善学生对物质的认识，帮助学生形成物质观念。通过用油膜法估测油酸分子的大小的实验，让学生体会和掌握测量微观量的思想和方法，能利用不同的方法和手段分析和处理信息。通过多种方法，创设多种问题情境，引导学生探究并讨论，让学生广泛了解核能等对人类生活和社会发展的影响。\n\n# 选择性必修3的学业要求\n\n能认识固体、液体和气体的微观结构及特点，能认识光电效应现象，说明光的波粒二象性，认识原子、原子核的结构特点；能用相关知识解释自然界的有关现象，解决生产生活中的有关问题，能把物质的宏观性质与其微观结构联系起来。\n\n能认识建构理想气体、原子核式结构等模型的必要性，能在一定条件下应用理想气体模型分析和研究实际气体的问题；能基于证据，归纳推理得出气体实验定律的有关结论，通过类比方式了解气体压强的微观解释；能根据所观察的宏观事实论证分子热运动、分子间作用力等结论；能根据能量守恒定律等质疑不符合物理规律的传闻，勇于发表自己的见解。\n\n能完成“用油膜法估测油酸分子的大小”等实验。能发现并提出热现象中值得探究的问题，对其结论作出合理猜想；能通过科学、合理的操作获得实验数据；能在实验中运用减小误差的方法，能采用恰当的方式处理数据并得出正确结论；能写出完整、规范的实验报告，正确表达科学探究的过程和结果。\n\n通过对热学、原子与原子核以及波粒二象性等相关内容的学习，知\n\n道所有物理结论都必须接受实践的检验；在学习与研究中做到实事求是，不迷信权威，能与他人合作；通过对热力学定律和核能等内容的学习，知道科学技术对人类生活和社会发展的积极影响，但同时也会带来一系列问题，能认识人与自然是生命共同体，能尊重自然，遵循自然规律。\n\n# （三）选修课程\n\n本课程关注学生的兴趣和特长，关注物理学对社会发展的影响，关注物理学前沿对学生视野的拓展等。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21", title: "1.1 物理学与人类认识", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:7", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n1.1.1 了解古希腊的宇宙观与我国古代的宇宙观。了解哥白尼日心说对宇宙观的冲击。了解开普勒定律对牛顿发现万有引力定律的重要作用。\\n\\n1.1.2 了解伽利略的实验方法和逻辑方法对牛顿力学诞生的贡献。了解牛顿力学的成就和局限性。\\n\\n1.1.3 了解19世纪末物理学的发现对于近代物理学革命的意义。\\n\\n1.1.4 了解波粒二象性的物理思想，体会人们对物质本性认识的不断发展。\\n\\n1.1.5 了解相对论的时空观，知道质能关系的意义，了解相对论与量子论对人类认识的影响。\\n\\n1.1.6 了解我国物理学家的成果与贡献。\\n\\n# 活动建议\\n\\n(1) 通过了解牛顿建立万有引力定律的过程, 体会数学方法对物理学发展以及对人们探索自然奥秘的作用。\\n\\n(2) 通过关于波粒二象性的讨论, 了解微观世界量子化的特征。\\n\\n(3) 通过讨论交流, 了解相对论时空观的特点。\"}", CJ_rawText: "# 【内容要求】\n\n1.1.1 了解古希腊的宇宙观与我国古代的宇宙观。了解哥白尼日心说对宇宙观的冲击。了解开普勒定律对牛顿发现万有引力定律的重要作用。\n\n1.1.2 了解伽利略的实验方法和逻辑方法对牛顿力学诞生的贡献。了解牛顿力学的成就和局限性。\n\n1.1.3 了解19世纪末物理学的发现对于近代物理学革命的意义。\n\n1.1.4 了解波粒二象性的物理思想，体会人们对物质本性认识的不断发展。\n\n1.1.5 了解相对论的时空观，知道质能关系的意义，了解相对论与量子论对人类认识的影响。\n\n1.1.6 了解我国物理学家的成果与贡献。\n\n# 活动建议\n\n(1) 通过了解牛顿建立万有引力定律的过程, 体会数学方法对物理学发展以及对人们探索自然奥秘的作用。\n\n(2) 通过关于波粒二象性的讨论, 了解微观世界量子化的特征。\n\n(3) 通过讨论交流, 了解相对论时空观的特点。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22", title: "1.2 物理学与社会变革", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:7", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n1.2.1 了解蒸汽机的发明对第一次工业革命的推动作用。\\n\\n1.2.2 了解电磁学的发展对第二次工业革命的推动作用。\\n\\n1.2.3 了解集成电路的进展，了解微电子技术的应用对社会发展的影响。\\n\\n1.2.4 了解信息技术的应用对社会发展的影响\\n\\n1.2.5 了解核技术的应用对社会发展的影响\\n\\n# 活动建议\\n\\n(1) 参观或上网查询气象站, 了解当地空气指数及其影响因素。\\n\\n(2) 参观或上网查询高新工业园区, 了解高新技术发展现状。\\n\\n（3）查阅资料，了解世界各国核技术发展的概况。\\n\\n（4）阅读与我国科学技术史相关的著作，了解我国古代科学技术的重要成就及其对世界文明产生的影响。\"}", CJ_rawText: "# 【内容要求】\n\n1.2.1 了解蒸汽机的发明对第一次工业革命的推动作用。\n\n1.2.2 了解电磁学的发展对第二次工业革命的推动作用。\n\n1.2.3 了解集成电路的进展，了解微电子技术的应用对社会发展的影响。\n\n1.2.4 了解信息技术的应用对社会发展的影响\n\n1.2.5 了解核技术的应用对社会发展的影响\n\n# 活动建议\n\n(1) 参观或上网查询气象站, 了解当地空气指数及其影响因素。\n\n(2) 参观或上网查询高新工业园区, 了解高新技术发展现状。\n\n（3）查阅资料，了解世界各国核技术发展的概况。\n\n（4）阅读与我国科学技术史相关的著作，了解我国古代科学技术的重要成就及其对世界文明产生的影响。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23", title: "1.3 物理学与公民生活", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:7", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n1.3.1 了解可再生能源与不可再生能源在生活中应用的实例。\\n\\n1.3.2 能列举微电子技术在生活中的应用实例。了解电视广播技术的发展对生活的影响。\\n\\n1.3.3 了解计算机、手机等发展的大致历程及其对生活的影响。\\n\\n1.3.4 了解激光技术和光纤通信技术在生活中的应用。\\n\\n1.3.5 了解航天技术对生活的影响。\\n\\n# 活动建议\\n\\n（1）考察或上网查询，了解我国风能、太阳能等的利用状况。\\n\\n（2）考察或上网查询，了解智能家居。\\n\\n（3）利用计算机多媒体技术制作个性化的网页。\\n\\n（4）上网查询，了解航天技术应用的现状及发展前景。\"}", CJ_rawText: "# 【内容要求】\n\n1.3.1 了解可再生能源与不可再生能源在生活中应用的实例。\n\n1.3.2 能列举微电子技术在生活中的应用实例。了解电视广播技术的发展对生活的影响。\n\n1.3.3 了解计算机、手机等发展的大致历程及其对生活的影响。\n\n1.3.4 了解激光技术和光纤通信技术在生活中的应用。\n\n1.3.5 了解航天技术对生活的影响。\n\n# 活动建议\n\n（1）考察或上网查询，了解我国风能、太阳能等的利用状况。\n\n（2）考察或上网查询，了解智能家居。\n\n（3）利用计算机多媒体技术制作个性化的网页。\n\n（4）上网查询，了解航天技术应用的现状及发展前景。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24", title: "2.1 物理学与医疗技术", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:8", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n2.1.1 了解声波的反射在B超中的应用\\n\\n2.1.2 了解多普勒效应在彩超中的应用。\\n\\n2.1.3 了解X射线对人体不同组织的穿透性差异。\\n\\n2.1.4 了解CT扫描的基本原理\\n\\n2.1.5 了解典型射线的特性及其防护措施，知道这些射线在医学中的应用及其对人体的影响。\\n\\n# 活动建议\\n\\n(1) 查阅资料, 列举物理治疗方法, 并对这些方法进行分类探讨。\\n\\n（2）观看视频，了解B超、CT等医疗设备检查病人的过程。\"}", CJ_rawText: "# 【内容要求】\n\n2.1.1 了解声波的反射在B超中的应用\n\n2.1.2 了解多普勒效应在彩超中的应用。\n\n2.1.3 了解X射线对人体不同组织的穿透性差异。\n\n2.1.4 了解CT扫描的基本原理\n\n2.1.5 了解典型射线的特性及其防护措施，知道这些射线在医学中的应用及其对人体的影响。\n\n# 活动建议\n\n(1) 查阅资料, 列举物理治疗方法, 并对这些方法进行分类探讨。\n\n（2）观看视频，了解B超、CT等医疗设备检查病人的过程。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25", title: "2.2 物理学与新能源", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:8", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n2.2.1 了解可再生能源和不可再生能源的开发与利用，了解新能源开发的必要性。\\n\\n2.2.2 了解太阳能利用的常见方式及应用前景。\\n\\n2.2.3 了解核裂变和核聚变，了解核能的利用及核废料的处理。\\n\\n2.2.4 了解地热能、潮汐能及风能等的利用。\\n\\n# 活动建议\\n\\n(1) 查阅资料, 了解煤炭等能源利用中的问题, 了解可再生能源开发的必要性。\\n\\n（2）查阅资料，了解我国及其他国家对核能利用的概况。\\n\\n(3) 查阅资料, 了解国际上一些重大的核泄漏事故及其影响。\"}", CJ_rawText: "# 【内容要求】\n\n2.2.1 了解可再生能源和不可再生能源的开发与利用，了解新能源开发的必要性。\n\n2.2.2 了解太阳能利用的常见方式及应用前景。\n\n2.2.3 了解核裂变和核聚变，了解核能的利用及核废料的处理。\n\n2.2.4 了解地热能、潮汐能及风能等的利用。\n\n# 活动建议\n\n(1) 查阅资料, 了解煤炭等能源利用中的问题, 了解可再生能源开发的必要性。\n\n（2）查阅资料，了解我国及其他国家对核能利用的概况。\n\n(3) 查阅资料, 了解国际上一些重大的核泄漏事故及其影响。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26", title: "2.3 物理学与新材料", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:8", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n2.3.1 了解物理学在新材料开发中的作用。\\n\\n2.3.2 了解纳米材料的特性及其在生活中的应用\\n\\n2.3.3 了解超导体的一些特点，了解超导技术的应用。\\n\\n2.3.4 了解一些功能材料的特性及应用。\\n\\n# 活动建议\\n\\n(1) 举行关于新材料应用的报告会, 了解一些新材料的发展史。\\n\\n(2) 参观科技馆或查找资料, 了解纳米材料的一些实际应用。\\n\\n(3) 列举身边的功能材料, 了解功能材料在生活中的应用。\"}", CJ_rawText: "# 【内容要求】\n\n2.3.1 了解物理学在新材料开发中的作用。\n\n2.3.2 了解纳米材料的特性及其在生活中的应用\n\n2.3.3 了解超导体的一些特点，了解超导技术的应用。\n\n2.3.4 了解一些功能材料的特性及应用。\n\n# 活动建议\n\n(1) 举行关于新材料应用的报告会, 了解一些新材料的发展史。\n\n(2) 参观科技馆或查找资料, 了解纳米材料的一些实际应用。\n\n(3) 列举身边的功能材料, 了解功能材料在生活中的应用。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27", title: "2.4 物理学与信息技术", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:8", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n2.4.1 了解物理学对信息技术发展的贡献。\\n\\n2.4.2 了解智能手机的一些功能及其对生活的影响\\n\\n2.4.3 了解计算机的主要部件及其作用。\\n\\n2.4.4 了解卫星定位系统的发展历程及其在生活中的应用。\\n\\n2.4.5 了解物理学对人工智能发展的推动作用\\n\\n# 活动建议\\n\\n(1) 查阅资料, 了解制约芯片制造和限制运算速度提升的物理因素。\\n\\n（2）讨论手机使用给人们带来的便利和问题。\\n\\n(3) 查阅资料, 与同学分享全球定位技术在生活中的应用。\\n\\n（4）查阅资料，了解我国北斗卫星导航系统及其价值。\\n\\n（5）讨论人工智能在现代生活中的应用；分享自己应用人工智能解决问题的经验。\"}", CJ_rawText: "# 【内容要求】\n\n2.4.1 了解物理学对信息技术发展的贡献。\n\n2.4.2 了解智能手机的一些功能及其对生活的影响\n\n2.4.3 了解计算机的主要部件及其作用。\n\n2.4.4 了解卫星定位系统的发展历程及其在生活中的应用。\n\n2.4.5 了解物理学对人工智能发展的推动作用\n\n# 活动建议\n\n(1) 查阅资料, 了解制约芯片制造和限制运算速度提升的物理因素。\n\n（2）讨论手机使用给人们带来的便利和问题。\n\n(3) 查阅资料, 与同学分享全球定位技术在生活中的应用。\n\n（4）查阅资料，了解我国北斗卫星导航系统及其价值。\n\n（5）讨论人工智能在现代生活中的应用；分享自己应用人工智能解决问题的经验。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28", title: "3.1 微观世界", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:9", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n3.1.1 比较对宏观物体与微观粒子运动特点描述的差异。\\n\\n3.1.2 了解德布罗意物质波，知道物质的波粒二象性。\\n\\n3.1.3 初步了解海森伯不确定性原理\\n\\n3.1.4 初步了解基本粒子的微观模型及其特点。\\n\\n3.1.5 了解人类探索基本粒子的大致历程，知道这种探索将不断深入。\\n\\n# 活动建议\\n\\n（1）查阅波粒二象性的发展简史，用简报展示出来。\\n\\n（2）查阅与“量子纠缠”研究及其应用有关的信息，了解我国科学家作出的贡献。\\n\\n（3）查阅资料，了解量子计算机的发展。\"}", CJ_rawText: "# 【内容要求】\n\n3.1.1 比较对宏观物体与微观粒子运动特点描述的差异。\n\n3.1.2 了解德布罗意物质波，知道物质的波粒二象性。\n\n3.1.3 初步了解海森伯不确定性原理\n\n3.1.4 初步了解基本粒子的微观模型及其特点。\n\n3.1.5 了解人类探索基本粒子的大致历程，知道这种探索将不断深入。\n\n# 活动建议\n\n（1）查阅波粒二象性的发展简史，用简报展示出来。\n\n（2）查阅与“量子纠缠”研究及其应用有关的信息，了解我国科学家作出的贡献。\n\n（3）查阅资料，了解量子计算机的发展。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29", title: "3.2 高速世界", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:9", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n3.2.1 知道相对性原理和光速不变原理\\n\\n3.2.2 能利用公式，解释长度收缩效应和时间延缓效应。\\n\\n3.2.3 知道爱因斯坦质能方程的意义。\\n\\n3.2.4 了解广义相对论的主要思想、结论和观测证据。\\n\\n3.2.5 了解人类探索高速世界的大致历程，知道这种探索将不断深入。\\n\\n# 活动建议\\n\\n(1) 小组讨论 “双生子佯谬” 问题, 分享各自的观点。\\n\\n（2）查阅资料，了解引力波的产生及其探测。\"}", CJ_rawText: "# 【内容要求】\n\n3.2.1 知道相对性原理和光速不变原理\n\n3.2.2 能利用公式，解释长度收缩效应和时间延缓效应。\n\n3.2.3 知道爱因斯坦质能方程的意义。\n\n3.2.4 了解广义相对论的主要思想、结论和观测证据。\n\n3.2.5 了解人类探索高速世界的大致历程，知道这种探索将不断深入。\n\n# 活动建议\n\n(1) 小组讨论 “双生子佯谬” 问题, 分享各自的观点。\n\n（2）查阅资料，了解引力波的产生及其探测。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30", title: "3.3 宇观世界", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:9", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n3.3.1 初步了解大爆炸宇宙论的理论模型及其观测证据。\\n\\n3.3.2 初步了解黑洞及对黑洞的观测方法\\n\\n3.3.3 初步了解暗物质和暗能量。\\n\\n3.3.4 初步了解物质与反物质。\\n\\n3.3.5 初步了解宇宙论的一些进展。\\n\\n# 活动建议\\n\\n（1）观看影片，讨论大爆炸宇宙论的观测证据。\\n\\n（2）查阅资料，讨论人类探索反物质的历程。\"}", CJ_rawText: "# 【内容要求】\n\n3.3.1 初步了解大爆炸宇宙论的理论模型及其观测证据。\n\n3.3.2 初步了解黑洞及对黑洞的观测方法\n\n3.3.3 初步了解暗物质和暗能量。\n\n3.3.4 初步了解物质与反物质。\n\n3.3.5 初步了解宇宙论的一些进展。\n\n# 活动建议\n\n（1）观看影片，讨论大爆炸宇宙论的观测证据。\n\n（2）查阅资料，讨论人类探索反物质的历程。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31", title: "3.4 世界的统一性", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:9", contentJson: "{\"rawText\": \"# 【内容要求】\\n\\n3.4.1 了解四种基本相互作用及其特点。\\n\\n3.4.2 初步了解追求相互作用统一的思想和探索在物理学发展中的作用。\\n\\n# 活动建议\\n\\n(1) 查阅资料, 讨论 “希格斯粒子” 及其意义。\\n\\n(2) 举办与现代物理进展有关的科普论坛，通过班会或墙报交流。\\n\\n# （四）学生必做实验\\n\\n学校应充分利用已有的实验器材，开发适合本校情况的实验课程资源，让学生自己动手多做实验，提升学生的物理学科核心素养。\\n\\n必修及选择性必修课程中的学生必做实验如下。\\n\\n# 必修课程的学生必做实验\\n\\n# 必修1\\n\\n1. 测量做直线运动物体的瞬时速度\\n\\n2. 探究弹簧弹力与形变量的关系\\n\\n3. 探究两个互成角度的力的合成规律\\n\\n4. 探究加速度与物体受力、物体质量的关系\\n\\n# 必修2\\n\\n5. 验证机械能守恒定律\\n\\n6.探究平抛运动的特点\\n\\n7. 探究向心力大小与半径、角速度、质量的关系\\n\\n# 必修3\\n\\n8. 观察电容器的充、放电现象\\n\\n9. 长度的测量及其测量工具的选用\\n\\n10. 测量金属丝的电阻率\\n\\n11. 用多用电表测量电学中的物理量\\n\\n12. 测量电源的电动势和内阻\\n\\n# 选择性必修课程的学生必做实验\\n\\n# 选择性必修1\\n\\n1. 验证动量守恒定律\\n\\n2. 用单摆测量重力加速度的大小\\n\\n3. 测量玻璃的折射率\\n\\n4. 用双缝干涉实验测量光的波长\\n\\n# 选择性必修2\\n\\n5. 探究影响感应电流方向的因素\\n\\n6. 探究变压器原、副线圈电压与匝数的关系\\n\\n7. 利用传感器制作简单的自动控制装置\\n\\n# 选择性必修3\\n\\n8. 用油膜法估测油酸分子的大小\\n\\n9. 探究等温情况下一定质量气体压强与体积的关系\\n\\n# 六、学业质量\\n\\n# （一）学业质量内涵\\n\\n学业质量是学生在完成本学科课程学习后学业成就的综合表现，体现课程目标的达成程度，反映核心素养发展状况。学业质量标准依据物理学科核心素养水平划分，结合结构化课程内容，描述学习结果的典型表现，整体标识和刻画学业质量的不同水平。\\n\\n# （二）学业质量描述\\n\\n根据物理学科核心素养水平，结合结构化的课程内容，将物理学业质量划分为3级水平（表1），从学习结果的角度整体描述各水平课程目标达成程度的典型表现。\\n\\n\\n表 1 学业质量水平描述\\n\\n\\n<table><tr><td>水平</td><td>学业质量描述</td></tr><tr><td>1</td><td>1.1 能从物理学视角描述物理现象,具有对物质、运动和相互作用、能量的初步认识;有探索自然、了解自然奥秘的兴趣,知道物理学是人类对自然现象有意识的探究,需要接受实践的检验;了解物理研究与应用会涉及的基本道德与规范问题,了解科学、技术、社会及环境的关系,认识保护环境、节约资源、促进可持续发展的重要性,能为我国在科技领域的卓越成就感到自豪,具有科技强国和实现中华民族伟大复兴的责任感。1.2 能在熟悉的实际情境中,应用力学、电磁学等领域的概念和规律,对物理现象进行简单分析,解释自然现象和解决实际问题;能从物理学视角提出物理问题,会运用常见的物理模型解决问题;能根据已有的科学探究方案,借助基本实验器材进行实验等方式获得证据;能通过分析和综合、推理和论证形成初步结论,分析实验中存在的误差,用所学物理学术语、符号、公式、图表等,对物理问题及其探究过程和结果进行初步的描述和分析;能使用简单直接的证据表达自己的观点,听取他人意见,判断信息的可靠性和合理性,撰写简单的科学探究报告;具有认真求证、追求真理的求实精神和实事求是的科学态度,能从物理学视角进行初步的合理质疑和创新。</td></tr><tr><td>2</td><td>2.1 能从物理学视角描述和分析实际情境中的物理现象,具有对物质、运动和相互作用、能量的基本认识;有较强的学习和研究物理的兴趣,认识到物理研究是建立在观察和实验基础上的一项创造性工作;知道物理研究与应用应考虑道德与规范的要求,认识科学、技术、社会及环境的关系,有保护环境、节约资源、促进可持续发展的意愿,能为我国在科技领域的卓越成就感到自豪,具有科技强国和实现中华民族伟大复兴的责任感和使命感。2.2 能在熟悉的实际情境中,应用力学、电磁学、光学、热学及原子物理学等领域的概念和规律,对物理现象进行描述与分析,解释自然现象和解决实际问题;能从物理学视角提出可探究的物理问题,选用恰当的物理模型作出猜想和假设;能在他人的帮助下制订可行的科学探究方案,使用基本的实验器材,通过实验等方式获得合理证据;能运用分析和综合、推理和论证找到其中的联系,发现其中的特点,合理分析实验中存在的误差,得出结论并进行解释;能评估证据的可靠性,恰当使用证据表达自己的观点,规范运用物理学术语、符号、公式、图表等陈述和交流科学探究过程和结果,撰写科学探究报告;具有认真求证、追</td></tr></table>\\n\\n\\n续表\\n\\n\\n<table><tr><td>水平</td><td>学业质量描述</td></tr><tr><td>2</td><td>求真理的求实精神和实事求是的科学态度,能在合作中尊重他人的意见,从物理学视角判断信息的可靠性和合理性,对已有观点提出质疑,从不同角度思考物理问题。</td></tr><tr><td>3</td><td>3.1能从物理学视角解释实际情境中的物理现象,具有对物质、运动和相互作用、能量的清晰认识;有学习和研究物理的内在动机,认识到物理研究是一种对自然现象进行抽象的创造性工作;能依据普遍接受的道德与规范认识和评价物理研究与应用,理解科学、技术、社会及环境的关系,有保护环境、节约资源、促进可持续发展的行为,为我国在科技领域的卓越成就感到光荣和自豪,具有科技强国和全面推进中华民族伟大复兴的责任感和使命感。\"}", CJ_rawText: "# 【内容要求】\n\n3.4.1 了解四种基本相互作用及其特点。\n\n3.4.2 初步了解追求相互作用统一的思想和探索在物理学发展中的作用。\n\n# 活动建议\n\n(1) 查阅资料, 讨论 “希格斯粒子” 及其意义。\n\n(2) 举办与现代物理进展有关的科普论坛，通过班会或墙报交流。\n\n# （四）学生必做实验\n\n学校应充分利用已有的实验器材，开发适合本校情况的实验课程资源，让学生自己动手多做实验，提升学生的物理学科核心素养。\n\n必修及选择性必修课程中的学生必做实验如下。\n\n# 必修课程的学生必做实验\n\n# 必修1\n\n1. 测量做直线运动物体的瞬时速度\n\n2. 探究弹簧弹力与形变量的关系\n\n3. 探究两个互成角度的力的合成规律\n\n4. 探究加速度与物体受力、物体质量的关系\n\n# 必修2\n\n5. 验证机械能守恒定律\n\n6.探究平抛运动的特点\n\n7. 探究向心力大小与半径、角速度、质量的关系\n\n# 必修3\n\n8. 观察电容器的充、放电现象\n\n9. 长度的测量及其测量工具的选用\n\n10. 测量金属丝的电阻率\n\n11. 用多用电表测量电学中的物理量\n\n12. 测量电源的电动势和内阻\n\n# 选择性必修课程的学生必做实验\n\n# 选择性必修1\n\n1. 验证动量守恒定律\n\n2. 用单摆测量重力加速度的大小\n\n3. 测量玻璃的折射率\n\n4. 用双缝干涉实验测量光的波长\n\n# 选择性必修2\n\n5. 探究影响感应电流方向的因素\n\n6. 探究变压器原、副线圈电压与匝数的关系\n\n7. 利用传感器制作简单的自动控制装置\n\n# 选择性必修3\n\n8. 用油膜法估测油酸分子的大小\n\n9. 探究等温情况下一定质量气体压强与体积的关系\n\n# 六、学业质量\n\n# （一）学业质量内涵\n\n学业质量是学生在完成本学科课程学习后学业成就的综合表现，体现课程目标的达成程度，反映核心素养发展状况。学业质量标准依据物理学科核心素养水平划分，结合结构化课程内容，描述学习结果的典型表现，整体标识和刻画学业质量的不同水平。\n\n# （二）学业质量描述\n\n根据物理学科核心素养水平，结合结构化的课程内容，将物理学业质量划分为3级水平（表1），从学习结果的角度整体描述各水平课程目标达成程度的典型表现。\n\n\n表 1 学业质量水平描述\n\n\n<table><tr><td>水平</td><td>学业质量描述</td></tr><tr><td>1</td><td>1.1 能从物理学视角描述物理现象,具有对物质、运动和相互作用、能量的初步认识;有探索自然、了解自然奥秘的兴趣,知道物理学是人类对自然现象有意识的探究,需要接受实践的检验;了解物理研究与应用会涉及的基本道德与规范问题,了解科学、技术、社会及环境的关系,认识保护环境、节约资源、促进可持续发展的重要性,能为我国在科技领域的卓越成就感到自豪,具有科技强国和实现中华民族伟大复兴的责任感。1.2 能在熟悉的实际情境中,应用力学、电磁学等领域的概念和规律,对物理现象进行简单分析,解释自然现象和解决实际问题;能从物理学视角提出物理问题,会运用常见的物理模型解决问题;能根据已有的科学探究方案,借助基本实验器材进行实验等方式获得证据;能通过分析和综合、推理和论证形成初步结论,分析实验中存在的误差,用所学物理学术语、符号、公式、图表等,对物理问题及其探究过程和结果进行初步的描述和分析;能使用简单直接的证据表达自己的观点,听取他人意见,判断信息的可靠性和合理性,撰写简单的科学探究报告;具有认真求证、追求真理的求实精神和实事求是的科学态度,能从物理学视角进行初步的合理质疑和创新。</td></tr><tr><td>2</td><td>2.1 能从物理学视角描述和分析实际情境中的物理现象,具有对物质、运动和相互作用、能量的基本认识;有较强的学习和研究物理的兴趣,认识到物理研究是建立在观察和实验基础上的一项创造性工作;知道物理研究与应用应考虑道德与规范的要求,认识科学、技术、社会及环境的关系,有保护环境、节约资源、促进可持续发展的意愿,能为我国在科技领域的卓越成就感到自豪,具有科技强国和实现中华民族伟大复兴的责任感和使命感。2.2 能在熟悉的实际情境中,应用力学、电磁学、光学、热学及原子物理学等领域的概念和规律,对物理现象进行描述与分析,解释自然现象和解决实际问题;能从物理学视角提出可探究的物理问题,选用恰当的物理模型作出猜想和假设;能在他人的帮助下制订可行的科学探究方案,使用基本的实验器材,通过实验等方式获得合理证据;能运用分析和综合、推理和论证找到其中的联系,发现其中的特点,合理分析实验中存在的误差,得出结论并进行解释;能评估证据的可靠性,恰当使用证据表达自己的观点,规范运用物理学术语、符号、公式、图表等陈述和交流科学探究过程和结果,撰写科学探究报告;具有认真求证、追</td></tr></table>\n\n\n续表\n\n\n<table><tr><td>水平</td><td>学业质量描述</td></tr><tr><td>2</td><td>求真理的求实精神和实事求是的科学态度,能在合作中尊重他人的意见,从物理学视角判断信息的可靠性和合理性,对已有观点提出质疑,从不同角度思考物理问题。</td></tr><tr><td>3</td><td>3.1能从物理学视角解释实际情境中的物理现象,具有对物质、运动和相互作用、能量的清晰认识;有学习和研究物理的内在动机,认识到物理研究是一种对自然现象进行抽象的创造性工作;能依据普遍接受的道德与规范认识和评价物理研究与应用,理解科学、技术、社会及环境的关系,有保护环境、节约资源、促进可持续发展的行为,为我国在科技领域的卓越成就感到光荣和自豪,具有科技强国和全面推进中华民族伟大复兴的责任感和使命感。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:32"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:32", title: "3.2能在实际情境中,综合应用力学、电磁学、光学、热学及原子物理学等领域的概念和规律,科学地解释自然现象,熟练地解决实际问题;能从物理学视角提出并准确表述可探究的物理问题,根据问题情境和物理模型的关键特征,将研究对象转换成物理模型,并进行分析,作出有依据的猜想和假设;能制订科学探究方案,选用合适的实验器材规范地进行实验操作,准确地获得证据;能熟练地运用分析和综合、推理和论证找出其中的关系,发现其中的规律,准确分析实验中存在的误差,得出合理结论并进行解释;能准确运用物理学术语、符号、公式、图表等对科学探究过程与结果进行交流和反思,撰写完整的科学探究报告;具有认真求证、追求真理、实事求是的科学精神,既能坚持观点又能吸取他人意见修正错误,对信息进行准确判断,对某些已有结论提出有证据的质疑,从不同角度分析解决物理问题。</td></tr></table>", description: "", subject: "SB0401", type: "ThemeL2", applicableLevel: "OB06", theme: "urn:jy:physics:SB0401:OB06:Theme:9", contentJson: "{\"rawText\": \"# （三）学业质量标准的应用\\n\\n学业质量标准可以用来指导学校课程设计、教学和考试评价。\\n\\n学业质量水平1是高中学生毕业在物理学科方面应当达到的要求，也是物理学科学业水平考试合格等级的划定依据。物理学科学业水平等级性考试命题不超过学业质量水平3。\\n\\n# 七、实施建议\\n\\n# （一）教学与评价建议\\n\\n教师应根据普通高中物理课程标准（以下简称课程标准）的基本理念、课程目标和学业要求等，结合教学的实际情况，创造性地开展教学工作，将物理学科核心素养的培养贯穿物理教学全过程。评价是日常教学活动的重要组成部分，应以课程目标、课程内容和学业质量为依据，关注物理学科核心素养的发展水平。\\n\\n# 1. 教学建议\\n\\n教师要根据内容要求和学业质量标准，结合学生的实际确定教学目标，组织教学内容，设计学生的课堂学习活动，有效开展教学活动。\\n\\n# (1) 依据课程标准要求和学生发展情况确定教学目标\\n\\n要根据课程标准的要求和学生实际，系统设计模块教学目标、单元教学目标和课时教学目标。设计模块教学目标，应主要考虑本模块的学业要求，并兼顾学生的实际、课程目标和学习进程。设计单元教学目标，应考虑单元内容在模块中的地位和作用，体现单元内容学习与模块目标的关系，符合学生学习的阶段性特征。设计课时教学目标，应充分考虑学生的知识经验和认知水平，考虑课时目标与单元目标的关系，综\\n\\n合体现课程内容、学生学习活动和物理学科核心素养的要求；应重视以内容教学落实物理观念、科学思维、科学探究、科学态度与责任等方面要求，把课程具体内容教学与学生物理学科核心素养的发展联系起来，把基于物理学科核心素养提升的教学目标融合在具体教学活动中。\\n\\n# (2) 围绕学生物理学科核心素养发展组织教学内容\\n\\n教师要重视教学内容的合理化选择和结构化组织。应根据物理学科核心素养的要求和学生的学习需要，选择合适的教学内容，设计合理的内容呈现方式。例如，建构电场强度概念，可以用试探电荷所受静电力的特征，抽象概括静电力与电荷量的关系，探讨电场本身的特征和属性。\\n\\n要围绕概念建立和规律探究的要求选择和组织教学内容。要关注知识之间的内在联系，用实际问题的探究引领学生对课程内容的学习，促进学生深度理解。例如，建构电容概念，可以用充电后的电容器对电阻放电，用电流传感器和电压传感器测量放电过程的电流和电压，通过计算机生成  $I - t$  图像和  $U - t$  图像，根据图像分析任意时刻电容器所带的电荷量与两极板间的电压，发现电荷量与电压成正比的规律，从而很自然地得到电容的定义。\\n\\n要基于实际情境设计任务和问题。让学生在真实的情境中自主学习，学会从物理学的视角观察物理现象，抽象物理模型，分析归纳相关特点，认识并应用物理学概念和规律，有效促进物理学核心素养的发展。\\n\\n要根据学生的学习进阶要求组织教学内容。学生物理学科核心素养的发展是一个循序渐进的过程，注重必修课程和选择性必修课程之间、不同模块之间、同一模块内不同单元之间的素养发展的不同要求，合理选择教学内容，体现物理学科核心素养的渐进发展。\\n\\n# (3) 根据教学目标设计教学活动\\n\\n根据教学目标设计学生自主学习活动。注重在教师的指导下让学生开展自主学习活动，以有效达成教学目标。要基于教学目标设计探究性活动，让学生在现象探究中抽象归纳本质，概括形成物理概念，并进行\\n\\n合理定义；要基于实验事实，设计合理的探究任务，让学生从实验事实中发现和归纳实验规律；要基于探究的问题设计任务，让学生解释现象并解决问题；要突出问题导向，注重问题探究，让学生学会用物理语言讨论交流探究过程和结果。引导学生在课堂自主学习和探究的过程中，增强自主探究、归纳反思的能力，提升物理学科核心素养。\\n\\n根据教学目标要求设计实验探究活动。课程标准对学生实验探究能力的培养提出了要求，通过实验方式进行相关内容教学的条目占内容要求条目的一半以上。演示实验应清晰呈现实验目的和原理，有足够的可见度；要让学生带着问题观察实验现象，启发学生解释实验现象，培养学生依据证据进行推理和解释现象的能力。要重视学生实验，让学生根据实验目的设计实验步骤，自主、规范地进行实验操作，正确读取和记录实验数据，分析解释实验数据，得出实验结论。要根据教学要求，自制、改进教具，创新和优化物理实验，提升学生的实验探究能力。\\n\\n# (4) 借助信息技术赋能教学过程\\n\\n运用信息技术优化教学。要运用网络平台的视频、动画和各种数字资源，针对课堂教学需要，进行合理的选择、剪辑、改编和优化；充分运用各种网络资源，结合课堂学习内容，有选择地介绍科学技术的前沿、科学家的故事、国家重大科技攻关项目等重大科学事件；建议运用各种信息技术、表现手法，创作优秀的课件，突出教学内容的重点，突破学生学习的难点。运用数字媒体创设动画和视频，“放大”肉眼不可见的微观世界，“缩小”宏观的宇宙世界，“减慢”看不清的快速过程，“加速”耗时长的缓慢变化过程。要创造性地运用信息技术，让不易观察的世界变得可观察，不易观察的过程变得可观察。\\n\\n运用信息技术优化物理实验。数字化实验运用了各种传感器的数字化测量和数字化表达，使实验测量更准确、数字表达更清晰。可利用传感器优化物理量的测量，使物理实验中的测量更快速、更准确，提高实验功效；注重运用数字化实验生成数据，用图表和图形表达实验数据，使学生更容易归纳出实验结论；可运用数字化实验改进优化实验探究，\\n\\n突出实验的探究性；可运用数字化实验，激发学生创新设计实验的兴趣，提高实验探究的能力。\\n\\n运用人工智能优化教与学。关注人工智能的发展对教师的教和学生的学带来的机遇和挑战。教师要学习运用人工智能优化教与学的方式，改进教学设计，拓展学生的学习视野。要运用人工智能促进物理学科与其他学科的融合，开发综合性跨学科实践项目，强化人工智能对学生学习的辅助作用和跨学科实践能力培养。\\n\\n# 2. 评价建议\\n\\n教师应创设真实且有价值的问题情境，采用多种多样的评价方式，客观全面地了解学生的发展状况，找出存在的问题和原因，发挥评价的诊断、反馈、激励等功能，促进学生全面而有个性的发展。评价实施时应注意以下几个方面。\\n\\n# (1) 明确评价目标指向，促进物理学科核心素养的发展\\n\\n评价应根据学业质量和课程内容的要求，围绕物理观念、科学思维、科学探究、科学态度与责任等方面，撰写指向学生学习行为表现的评价目标。目标的描述要明确、具体、可测，要说明学生在什么样的问题情境中，运用哪些物理知识、思想方法，其行为应达到什么样的水平。收集学生在真实情境下解决问题的行为表现，综合评价学生的学习效果及学习状态，判断学生达到的水平和学习中的问题；创造机会让学生学会正确评价自己的进步，反思自己的不足，明确努力的方向，激励学生不断进步。\\n\\n# (2) 增强教学与评价的融合，提升评价的有效性\\n\\n充分认识教学任务与评价任务的关系，将学生的学习目标、学习内容与评价目标、评价任务进行整体设计；制订评价标准、设计评价任务，使学习活动与评价任务同步实施。依据评价目标，在具体的学习活动中评价学生的表现。例如，学生能否运用学科知识，选用恰当的模型，对实际情境中的问题进行定性和定量的分析推理，解释现象、解决\\n\\n问题；在探究、实践过程中能否进行小组合作，能否运用科学方法积极思考，提出可探究的问题，进行合理的猜想和假设，制订合理的探究方案；是否具有依据证据进行推理和解释的求实精神，能否认识到物理研究是建立在观察和实验基础上的一项创造性工作等。\\n\\n# (3) 重视过程性评价，发挥激励、发展的功能\\n\\n充分认识过程性评价的重要性，把评价渗透到课堂学习、项目实践活动等各个环节，重视综合性、情境化、开放性任务的创设，依据学生在真实情境下解决问题的过程和结果评定其物理学科核心素养水平。重视通过课堂问答、书面作业、项目实践活动，评价学生解决各种现实问题或任务时所表现出来的物理学科核心素养水平，追踪学生在不同时间点上的学习发展状况，对其变化情况进行定性和定量分析，确保评价全面、真实、有效，充分发挥评价的诊断、激励作用。\\n\\n# (4) 重视评价主体多元、方法多样，体现综合评价\\n\\n评价应面向全体学生，尊重学生的主体地位，要发挥学校、教师和学生等不同角色在评价中的作用，建立以促进学生全面发展为宗旨的家长、学校和社会共同体；鼓励学生主动参与评价，注重展示学生自我发展的过程，关注学生的不同兴趣、表现，满足不同发展需求。重视综合评价，将单项评价与整体评价、定量评价与定性评价、终结性评价与形成性评价等评价方式有机结合，积极探索人工智能赋能评价的方式方法，通过观察、讨论、展示、交流、同伴或自我评估等多种评价方式，收集学生在不同场合、不同时间多方面表现的证据，实现对学生物理学科核心素养发展水平的全面评价。要创造条件，建构学习与评价的共同体，使学生学会持续反思、终身学习。\\n\\n# (5) 做好评结果的解释, 促进学生学会学习\\n\\n鼓励学生参与评价结果的判断和解释过程，提升后续决策与评价结果的一致性。教师应及时准确地反馈评价结果，提供细致的描述性评价，帮助学生发现、纠正学习中存在的问题，增强学生学习物理的兴趣和自信心，促进学生的发展。充分认识评价结果不同呈现方式的优势和\\n\\n不足，采取恰当的方式进行反馈，让学生了解自己取得了哪些进步、发展了哪些能力、还有什么潜能，同时认识到存在的不足，从而积极调整学习策略、学习方法，发展终身学习的能力。\\n\\n# （二）学业水平考试建议\\n\\n学业水平考试是保障教育教学质量的一个重要环节，是根据国家普通高中课程方案、课程标准和教育考试规定，由省级教育行政部门组织实施，以学业质量为依据的考试，主要测量学生达到国家课程标准规定的学业质量的程度。学业水平考试的成绩是学生高中毕业或升学的重要依据。实施学业水平考试，旨在落实发展学生核心素养的课程目标，促使学生认真学习每门课程，避免偏科；有利于学校准确把握学生的学习情况，改进教学管理；有利于高等院校选拔适合学校特色和专业要求的学生，促进高中与高等院校人才培养的有效衔接。\\n\\n# 1. 考试设计要求\\n\\n考试设计应强化育人导向，依标命题，坚持改革创新，坚持科学规范，注重考查支撑学生未来长远发展和适应社会进步要求的能力，有效鉴别学生发展潜质。\\n\\n# (1) 考试内容\\n\\n物理学业水平考试的内容应根据考试目的确定，注重考查物理观念、科学思维、科学探究、科学态度与责任四个方面。考试内容的任务情境应符合学生心理发展水平和认知规律，反映物理学本质，密切联系社会、科技、生产生活实际，充分体现考试评价促进学生学习、甄别学生学业水平的功能。\\n\\n学业水平合格性考试的考查内容为课程标准规定的必修内容及相关的12个学生必做实验。要体现学业质量水平和物理学科核心素养的基本要求。注重考查对必修课程中的基本概念和基本规律的了解和认识情\\n\\n况，要注重围绕生产生活或科技发展等设计问题情境，加强对学生运用基础知识解决简单实际问题能力的考查。\\n\\n学业水平等级性考试的考查内容为课程标准规定的必修和选择性必修内容及相关的21个学生必做实验。要体现学业质量水平和物理学科核心素养的全面要求。注重考查对必修和选择性必修课程中重要的物理概念与规律的理解与运用情况，要与生产生活、科技发展等紧密联系，要关注物理学前沿与成果应用。要加强对学生综合应用物理知识解决实际问题能力的考查，要强调创新精神和实践能力的考查，能较好地区分学生物理学科核心素养的水平。\\n\\n# (2) 试卷结构\\n\\n依据课程标准规定的内容模块，全面考查物理学科核心素养。根据用于高中毕业的学业水平合格性考试和用于高等院校招生录取的学业水平等级性考试的不同评价目标，合理确定两种考试的试卷结构，包括试卷长度、内容结构、题型结构等。考查内容比例应与各模块课程内容所占课时比例大体一致。实验内容应占一定比例。纸笔考试题型一般包含客观题和主观题，其中客观题主要有单项选择题、多项选择题等，主观题主要有简答题、计算题等。客观题和主观题的数量要合理搭配，关注评价目标及不同水平的要求，保持不同题型的适当比例。鼓励探索综合考查物理学科核心素养的题型设计。\\n\\n# 2. 命题建议\\n\\n试题命制要准确把握物理学科核心素养内涵和学生的学业表现，选择、加工能考查学生相关核心素养表现的真实情境，选取典型内容和测试材料，设计有助于展现学生不同素养水平的任务，基于学生真实表现研制评分标准。建设高素质、高水平、结构合理的命题队伍，加强命题人员遴选与培训，提升命题人员专业化程度，努力提高考试命题的质量和水平。\\n\\n(1) 试题应有明确的测试目标。整份试卷所考查的内容要尽可能涵盖\\n\\n盖学科所有可测的物理学科核心素养的各个方面。每道试题的考查立意要明确，清晰指向对物理学科核心素养哪几个方面的考查。针对用于高中毕业的学业水平合格性考试和用于高等院校招生录取的学业水平等级性考试的不同目的，试题考查的物理学科核心素养水平应有所不同，要符合两类考试的具体要求。\\n\\n（2）试题所涉及的知识内容应具有代表性。要根据评价目标，按照课程标准中的课程内容要求，抽取具有代表性的核心物理概念、规律、思想和方法等内容设计试题；要反映物理学的知识结构和基本规律，要与今后的进一步学习或职业选择相适应。所抽取的知识内容要具有合理的覆盖面和适当的比例。\\n\\n（3）科学合理设计试题难度。要从物理学科核心素养、试题情境和知识内容的要求等方面科学合理地设计试题难度。可根据物理学科核心素养的水平层次、试题情境的复杂性或新颖性、知识要求的深度或广度等多方面来设计试题的难度，保证试卷难度适宜、梯度合理、比例恰当，有利于学生发挥正常水平，且符合评价目标要求。\\n\\n（4）精心创设试题任务情境。要尽量创设类型多样的、具有一定复杂程度的、开放性的真实情境作为试题的任务情境，通过学生在应对复杂真实情境、参与相应探究学习活动中的外在表现来考查物理学科核心素养。\\n\\n（5）试题的编制要科学、规范。试题的情境、设问的角度及方式要科学、可信、新颖、灵活；试题的表述方式要科学、合理、有效，符合学生的认知特点和能力水平。其中，选择题的题干要围绕一个中心，选择项要设置合理，能反映学生的典型错误，有利于学生改进学习；各个选项的结构、长度要大体一致。\\n\\n（6）试卷评分标准应清晰准确。评分标准的制订要依据学业质量水平的要求，清晰界定所考查的知识以及与这些知识关联的物理学科核心素养，使之能相对比较准确地判断学生的物理学科核心素养及其水平。评分标准要摒弃单纯知识性的描述方式，要研制基于物理学科核心素养\\n\\n的等级描述。\\n\\n# （三）教材编写建议\\n\\n在高中物理课程实施过程中，教材作为直接的课程资源应发挥培根铸魂、启智增慧的重要作用。下面以提升学生的物理学科核心素养为目标，分别从编写原则、内容选择、内容呈现三个方面提出教材编写建议。\\n\\n# 1. 编写原则\\n\\n（1）注重教材的育人功能。教材编写应注重落实课程标准的要求，有效促进学生在物理观念、科学思维、科学探究、科学态度与责任等方面的物理学科核心素养的达成。\\n\\n（2）注重教材的科学性。教材应与课程标准的要求保持一致，不仅应准确反映课程标准要求的物理概念和规律，正确纳入物理实验，还应科学地融入研究方法、科学态度与价值观等内容。\\n\\n（3）注重教材的适用性。遵循学生的认知规律，关注城乡差异，做到线索清晰、层次分明、循序渐进、重点突出，既有总体的系统性，又有一定的灵活性，为教师教学和学生学习提供支持。\\n\\n（4）注重教材的时代性。及时反映物理学的发展前沿，反映物理学对社会进步及科技发展的重要作用，反映物理学的技术应用给生产生活带来的影响。\\n\\n（5）注重教材的人文性。弘扬中华优秀传统文化，增强民族自信心和凝聚力，注重吸收世界先进的物理教育理念，倡导尊重世界文明多样性，注重体现对人的尊重等相关内容。\\n\\n(6) 注重教材的特色与创新。根据学生学习与发展需求，在教材内容选择、组织与呈现方式等方面合理创新，编写不同风格、各具特色的教材。\\n\\n# 2. 内容选择\\n\\n（1）注重多方面选择教材内容，落实素养导向的课程目标。依据物理学科核心素养的要求选择教材内容，有效促进学生物理学科核心素养的达成。注重选择与物质、运动和相互作用、能量等相关的核心内容，帮助学生从物理学视角认识自然、理解自然，形成物理观念；注重选择与学生建模、推理、论证、创新等能力培养有关的内容，培养学生的科学思维；注重从科学探究的视角选择内容，培养学生的科学探究能力；注重从情感、态度、价值观的视角选择内容，培养学生的科学态度与责任感。\\n\\n（2）注重物理内容的基础性，关注全体学生的学习需求。既要注重物理学概念和规律等基本内容，还要注重物理学的探究过程、研究方法等，为学生的终身发展打下基础。必修课程含全体高中学生必学的物理内容，对应教材的编写应注重纳入相关的物理内容，关注全体学生的学习需求，注重对全体学生物理学科核心素养的培养，为公民科学素养的提升作出贡献。\\n\\n（3）注重物理内容的选择性，为学生的个性发展搭建平台。注意物理内容的分层与分类，关注不同学生的学习需求，为学生有个性地发展搭建平台。选择性必修课程对应教材的编写既要关注与必修教材的衔接和联系，又要关注在必修教材基础上的拓展延伸。选修课程对应的学习材料编写要关注学生多样化的学习需求，为学生的多元发展提供空间。\\n\\n（4）落实课程标准的内容要求，依据课程标准把控教材内容的广度与深度。课程标准中的内容主题应全部纳入教材。课程标准中的样例与活动建议有一定灵活性，供教材编者参考。在教材难度方面，应与课程标准的要求一致，不能随意拔高或降低教材的难度。根据课程标准的要求，积极开发教材资源，增强教材的趣味性与可读性，更加具体、生动、精彩地呈现课程内容。\\n\\n（5）关注学科发展动态，体现教材内容的时代性。注意及时纳入物理学科的最新研究成果，关注物理学的技术应用带来的社会问题等。设\\n\\n计特点鲜明的栏目，介绍科学技术研究的最新进展，反映物理学的技术应用对自然和社会的影响，融入与科学、技术、社会及环境相关的内容，开阔学生视野、增强学生的社会责任感及科技强国的使命感。\\n\\n（6）重视科学的研究方法，有效设计科学探究活动。关注科学家在科学探索过程中所凝练、升华的科学思维方式和科学研究方法。应努力提高科学探究的质量，一方面科学探究活动的方式应多样化，可利用信息技术辅助手段，服务学生个性化学习；另一方面应加强科学探究的真实性，注重培养学生的科学探究能力及科学态度等。科学探究活动的具体内容、方式和要求等，应根据学生发展需求灵活设计，有效体现物理实验的育人功能。\\n\\n（7）关注多种评价方式，体现评价的育人功能。关注物理学科的学业质量水平，关注每个模块的学业要求，适当纳入与日常学习评价、学业水平合格性考试、学业水平等级性考试有关的评价内容。作业设计要联系实际，注重情境创设，强调任务驱动，有针对性和层次性，引导学生理解学习内容，解决实际问题。可设计从易到难的节练习，帮助学生建构概念、巩固学习内容、检测学习问题、开阔视野等；可设计具有一定综合性和创新性的章练习，培养学生利用所学内容综合解决物理问题的能力和创新能力；还可根据学业质量水平设计单元测试或综合测试，让学生了解自己的进步与不足，以便其更好地发展。\\n\\n# 3. 内容呈现\\n\\n（1）内容编排应有利于教与学。教学内容在教材中出现的顺序与形式，每项内容所用的篇幅等，都应体现现代教育思想和教学理念。教材内容的编排可有多种形式。无论采取哪种形式，内容编排皆应有利于教师科学设计教学情境、有效组织教学，促进教师改进教学实践，引导教师创新教学；应有利于引导学生主动探究、建构知识、获得结论，为学生提供质疑与探究的机会；应关注学生的认知特点，循序渐进地编排教材内容，让学生在学习过程中既要面临问题挑战，又能享受成功解决\\n\\n问题的喜悦。\\n\\n（2）注重教材的编印规范。教材的编印应有利于学生学习，符合学生身心健康发展的要求。教材应开本恰当、装帧良好、美观大方；教材的版面设计应清爽美观、疏密得当；其纸质、纸张颜色、字体等皆应符合国家颁布的标准。教材要恰当处理版面和内容的关系，力求全书图文均衡、相得益彰；文字叙述要科学、准确、精练，要有相当的可读性和欣赏性，适宜高中学生阅读；图片选择应在科学性与时代性方面下功夫，注意精选插图，使其与教学目的、教学内容紧密结合，引导学生积极向上地健康发展。可绘制原理图，以帮助学生清晰准确地理解相关物理内容；有些生活或自然中的物理现象，最好用真实照片，以此让学生感受到物理学的神奇，产生学习物理的兴趣等。\\n\\n# （四）地方和学校实施本课程的建议\\n\\n地方和学校是课程实施和建设的主体，也是重要的推动者。要依据课程标准的要求管理课程实施，贯彻落实国家课程的要求；要创造良好的课程实施条件，形成课程实施的良好机制，扎实有效地推进课程。\\n\\n# 1. 加强课程建设和课程管理\\n\\n指导学生合理选择课程。学校要结合对学生的生涯规划指导，帮助学生根据物理课程的基本结构与内容要求，以及自己的兴趣、特长和发展方向，正确选择适合自己的课程，促进物理学科核心素养的发展。\\n\\n制订学科课程计划。学校要根据学生实际需要和资源条件，制订物理学科的课程开发、实施和评价计划；根据学校实际和学生需要，有计划地开展物理课程实施研究，使国家课程更适合于学校，更贴近学生的实际；要研究和开发适应学生需要的选修课程，为培养拔尖创新人才服务。\\n\\n提高课程管理专业水平。学校要改革课程管理模式，以适应课程结\\n\\n构的改变；研究适应选课教学的课程管理方式和教学实施方式，规范选课教学管理。地方教育行政部门要支持学校建立物理学科专用教室，让学生在专用教室进行沉浸式学习，让教师实施更有“物理味”的课堂教学。\\n\\n# 2. 重视教师专业能力培训\\n\\n有计划地推进教师培训。各级教育行政部门和学校要高度认识教师培训的重要性，要制订合理的教师培训计划，开展有针对性的教师培训。各地要开展各级教研人员的高水平培训，并由具有高水平课程教学能力的教研人员等专业力量推进广大教师的课程专项培训。各级教研部门要根据当地实际，针对教师在课程和教学方面的薄弱环节，拟定培训项目，确定培训目标、培训内容和要求，以此组织开展有效的教师培训。\\n\\n开展课程标准学习培训。各级教育行政部门要组织课程标准学习的专项培训活动，使教师理解课程的指导思想和课程目标，明确课程内容及其学业要求，理解学业质量标准。通过培训，使教师能自觉运用课程标准指导教学，提高教师“依标教学”的能力。针对目前教师评价能力不足的情况，教育行政部门和教研机构要开展教师的评价专项培训，提高教师的评价能力；要组织教师学习评价理论，使教师理解评价体系，学会制订评价方案，实施有信度和效度的评价。\\n\\n# 3. 开展扎实有效的教研活动\\n\\n教育教学研究是解决学校教学问题、提高教师教学能力的重要手段。要依托各级教研部门的教研力量，开展各种形式的教研活动，指导教师理解课程，提高教学能力。\\n\\n开展主题教研活动。要针对教育教学需要，确定和展开以研究主要问题为核心的系列教研活动。教研部门要针对物理教学的实际，选择课程教学核心内容和关键问题作为研究主题，有针对性地开展教研活动。\\n\\n采用多样化的教研方式。要突破场地、资金、时间等条件的限制，\\n\\n采用多样化的教研方式。既可以现场教研，也可以网络教研，学校之间还可以进行校际联盟的联合教研；可以根据教研内容、时长的不同，采用多样化的教研方式，例如专题讨论、主题沙龙、微论坛等，以提高教研活动的时效和实效。\\n\\n扎实开展校本教研。学校要加强教研组和备课组建设，规范学校教研工作的程序和要求。教研组要针对物理课程的需要，开展物理学教学关键问题专题研究；备课组要研究日常教学问题，扎实做好教学设计、教学实施、作业评价等问题研究，努力提高课堂教学水平。\\n\\n# 4. 开发和利用课程资源\\n\\n加强物理实验室建设。学校要按照国家标准配备足够数量的专用实验教室，配齐配足实验器材；根据课程标准，最大限度地安排学生实验，做到人人动手做实验；要创新实验方式，开发可视性强、证据性强、能引起学生浓厚兴趣的演示实验；要利用日常用品、废旧材料创新物理实验，开发低成本、高质量的物理实验，使学生有更多动手做实验的机会；要建立实验室开放制度，鼓励学生利用课余时间，以独立或小组合作方式，开展物理问题的实验研究。\\n\\n运用数字化实验创新实验方式。地方教育行政部门要支持学校创建数字化实验室，培训教师能进行数字化实验，使数字化实验更多地运用于课堂教学和学生实验。教师要创新数字化实验的使用方法，研究运用数字化实验改进传统实验的方式，促进教学手段与方式的现代化。\\n\\n利用社会课程资源。学校要积极探索，开发、利用来自科技馆、博物馆、公共图书馆、高等院校、科研院所、工厂、农村以及网络科技平台等的物理课程资源，丰富学生的科技应用知识，拓宽学生的科技视野，培养学生发现问题、研究问题、解决问题的能力；要组织学生带着问题和任务参观各种科技场馆或场所，了解高等院校、科研院所的科学研究项目，与科学家讨论研究课题，激发学生学科学、爱科学的兴趣，增进学生对科学、技术、社会及环境之间关系的理解。\\n\\n开发利用数字化资源。学校要积极开发、利用数字媒体课程资源，主动开发信息化实验仪器，拓宽物理学习的途径。学校要开发利用各种适合学生学习的音视频材料，例如关于航空航天、核电站、纳米技术、工业信息化等方面的材料，以此拓展学生的视野，加深学生的感性认识。教师要有效利用具有互动功能的网络学习平台，开展师生互动教学，提高物理课程学习的效果；要利用网络课堂全方位服务学生，解决学生物理学习的疑难问题；要带领学生探索如何运用人工智能解决物理学习中的疑难问题，提高学生学习物理的效率，培养学生在人工智能背景下的创新实践能力。\\n\\n# 附录\\n\\n\\n附录1 物理学科核心素养的水平划分\\n\\n\\n<table><tr><td>水平</td><td>物理观念</td></tr><tr><td>1</td><td>形成初步的物理观念，能从物理学的视角解释一些自然现象，能应用物理知识解决一些实际问题。</td></tr><tr><td>2</td><td>具有物理观念，能从物理学的视角描述和解释自然现象，能应用物理知识解决实际问题。</td></tr><tr><td>3</td><td>具有清晰的物理观念，能从物理学的视角正确描述和解释自然现象，能综合应用物理知识解决实际问题，能指导工作和生活实践。</td></tr><tr><td>水平</td><td>科学思维</td></tr><tr><td>1</td><td>能在熟悉的问题情境中应用常见的物理模型；能对比较简单的物理现象进行分析和推理，获得结论；能使用简单和直接的证据表达自己的观点；具有质疑和创新的意识。</td></tr><tr><td>2</td><td>能在熟悉的问题情境中根据需要选用恰当的模型解决简单的物理问题；能对常见的物理现象进行分析和推理，获得结论并作出解释；能恰当使用证据表达自己的观点；能对已有观点提出质疑，从不同角度思考物理问题。</td></tr></table>\\n\\n\\n续表\\n\\n\\n<table><tr><td>水平</td><td>科学思维</td></tr><tr><td>3</td><td>能将实际问题中的研究对象转换成物理模型；能对综合性物理问题进行分析和推理，获得结论并作出解释；能恰当使用证据证明物理结论；能对已有结论提出有依据的质疑，采用不同方式分析解决物理问题。</td></tr><tr><td>水平</td><td>科学探究</td></tr><tr><td>1</td><td>能观察物理现象，提出物理问题；能根据已有的科学探究方案，使用基本的器材获得数据；能对数据进行整理，得到初步的结论；能撰写简单的报告，陈述科学探究过程和结果。</td></tr><tr><td>2</td><td>能分析物理现象，提出可探究的物理问题，作出初步的假设；能在他人帮助下制订科学探究方案，使用基本的器材获得数据；能分析数据，发现特点，形成结论，尝试用已有的物理知识进行解释；能撰写科学探究报告，用物理学术语、符号、公式、图表等交流科学探究过程和结果。</td></tr><tr><td>3</td><td>能分析相关事实或结论，提出并准确表述可探究的物理问题，作出有依据的假设；能制订科学探究方案，选用合适的器材获得数据；能分析数据，发现其中规律，形成合理的结论，用物理知识进行解释；能撰写完整的科学探究报告，对科学探究过程与结果进行交流和反思。</td></tr><tr><td>水平</td><td>科学态度与责任</td></tr><tr><td>1</td><td>认识到物理学是基于人类有意识的探究而形成的对自然现象的描述与解释，并需要接受实践的检验；有学习物理的兴趣，具有实事求是的态度，能与他人合作；认识到物理研究与应用会涉及道德与规范问题，了解科学、技术、社会及环境的关系，具有科技强国和实现中华民族伟大复兴的责任感。</td></tr><tr><td>2</td><td>认识到物理研究是建立在观察和实验基础上的一项创造性工作；有较强的学习和研究物理的兴趣，能做到实事求是，在合作中能尊重他人；认识到物理研究与应用应考虑道德与规范的要求，认识到人类在保护环境和促进可持续发展方面的责任，具有科技强国和实现中华民族伟大复兴的责任感和使命感。</td></tr><tr><td>3</td><td>认识到物理研究是一种对自然现象进行抽象的创造性的工作；有学习和研究物理的内在动机，坚持实事求是，在合作中既能坚持观点又能修正错误；能依据普遍接受的道德与规范认识和评价物理研究与应用，具有保护环境、节约资源、促进可持续发展的行为，具有科技强国和全面推进中华民族伟大复兴的责任感和使命感。</td></tr></table>\\n\\n# 附录2 教学与评价案例\\n\\n# 案例1：追寻嫦娥系列的踪迹\\n\\n# 【设计意图】\\n\\n本案例是“曲线运动与万有引力定律”主题中利用现代信息技术手段设计的一次学习活动，体现了物理学习与现代信息技术的深度融合和学生学习方式的变化，可供有条件的学校教学参考。活动目的是引导学生在初步形成的运动和相互作用观念、能量观念的基础上，将所学的牛顿力学的运动规律与现代科技前沿联系起来，通过观看视频、模拟操作、讨论交流、推理论证等过程，从运动和相互作用、能量的角度探索嫦娥一号的发射和运行规律，运用万有引力定律、牛顿运动定律和圆周运动规律，建立航天器发射和运行的模型。学习全部内容需要2~3课时，教师可根据教学实际，结合课堂与课外网络学习完成。课堂上注重引导学生经历建模过程，突破难点，侧重发展学生的建模能力、推理能力、探究和交流能力，将评价和学习过程紧密结合起来。\\n\\n# 【课前准备】\\n\\n将学生分成三人小组，布置预习作业。\\n\\n观看“嫦娥奔月”视频：几千年来，“嫦娥奔月”的古老神话在百姓间广为流传，奔向遥远的月宫，成为人类孜孜以求的梦想。我国有万户飞天的典故，说的是明朝有一个名叫万户的人，自制火箭尝试“飞天”。为了纪念万户，国际天文学联合会将月球上的一座环形山命名为“万户山”。\\n\\n思考：人类是如何实现飞天梦想的？\\n\\n【引入】（可利用网络开展以下学生活动）\\n\\n学生活动1——小组讨论\\n\\n观看“嫦娥奔月”后的感受及思考，提出相关疑问。\\n\\n学生活动2——观看视频\\n\\n观看嫦娥一号发射新闻报道视频，同时在作业纸上记录数据，并在组内交流，提出需要深入研究的问题。\\n\\n学生通过上述活动，初步形成嫦娥一号发射升空过程的整体图景，并提出需要深入探究的核心问题：嫦娥一号是如何发射升空的？是如何运行的？又是如何变轨的？\\n\\n# 【探究过程】\\n\\n问题1 嫩娥一号是如何发射升空的？\\n\\n思考：将物体从高塔上水平抛出，物体最终落到地面上。当增大抛射速度时，物体运动的距离更远；速度越大，距离越远。如果这个速度非常大，会是什么情况呢？\\n\\n活动1——模拟操作\\n\\n用仿真实验室体验，选不同的抛出速度： $v = 20 \\\\, \\\\text{m/s}$ 、 $v = 20 \\\\, \\\\text{km/s}$ 、 $v = 7.9 \\\\, \\\\text{km/s}$ 、 $7.9 \\\\, \\\\text{km/s} < v < 11.2 \\\\, \\\\text{km/s}$ 、 $v \\\\geqslant 11.2 \\\\, \\\\text{km/s}$ ，观察物体水平抛出后的运动轨迹，与思考结果进行比较。（以上活动可在课前利用网络完成，小组讨论也可通过网上交流实现。）\\n\\n活动2——小组讨论\\n\\n为什么物体能绕地球旋转起来呢？这个速度为什么必须是  $7.9 \\\\mathrm{~km} / \\\\mathrm{s}$  ？请从理论上推导，并跟同组同学交流。（教师可根据学生情况提供引导和所需数据。）如果高塔的高度不能忽略，要使物体不落到地球上的最小抛射速度与上述速度有区别吗？为什么？根据上述探究过程并结合视频，说明嫦娥一号发射升空的过程和原理。\\n\\n问题2 常娥一号是如何运行的？\\n\\n活动3——建构模型\\n\\n嫦娥一号升空后做什么运动？如何描述其运行规律？请各小组结合观看新闻视频时记录的数据，画出嫦娥一号的运行轨道，并展示交流。各小组画出不同轨道半径的卫星及其运行轨道，有的是圆轨道，有的是椭圆轨道。（为了便于计算，教师引导学生建构圆轨道物理模型。）\\n\\n活动4——小组讨论\\n\\n如何计算嫦娥一号的运行速度？利用小组画出的运行轨道图（参考卫星高度与地球半径的比例关系）计算运行速度，并通过仿真模拟检验小组计算结果。\\n\\n活动5——全班交流\\n\\n全班一起交流各小组计算和检验的结果，找出卫星的运行规律。再用仿真实验室检验得到的规律。\\n\\n活动6——小组讨论\\n\\n通过对嫦娥一号运行规律的探究，讨论为什么不同轨道卫星运行有不同的特点，并解释其原因。讨论仿真实验能否用来检验卫星运行规律，其可靠性如何。（问题2是本学习活动的核心内容，需要课上完成。所设计的四个活动从定性到定量层层递进，引导学生经历建构模型、检验模型的全过程，促进学生物理观念和科学思维的同步发展，其间，需要教师的引导和帮助。）\\n\\n问题3 常娥一号是如何变轨的？\\n\\n活动7——观看视频\\n\\n通过观看嫦娥一号变轨过程的视频，学生直观了解嫦娥一号运行及变轨过程，并记录相关数据，在教师引导下提出下列问题：嫦娥一号在变轨过程中什么物理量发生了改变？卫星变轨需要的条件是什么？怎么满足卫星变轨的条件？\\n\\n# 活动8——小组讨论\\n\\n针对学生提出的问题展开讨论（教师从力和运动、能量两个角度引导学生思考），嫦娥一号在距地球  $600 \\\\mathrm{~km}$  的高度先后进行了三次变轨，讨论其在三个轨道上运行到相应的点时线速度、角速度和加速度的大小关系。学生通过讨论，深入认识了嫦娥一号的受力和运动情况，并与能量的变化联系起来。\\n\\n# 【课后作业】\\n\\n1. 上网查询嫦娥二号和嫦娥三号绕月飞行的信息，以及嫦娥系列的其他探测器飞行和着陆的信息，了解它们各自的任务及对我国航天事业的贡献。\\n\\n2. 探讨我国第一个月球软着陆的无人登月探测器登月过程的关键步骤，估测月球对登月探测器的冲击力。\\n\\n3. 查阅我国航天事业发展历史和现状的资料，畅想我国航天事业发展的未来，写一篇小论文。\\n\\n# 【案例评析】\\n\\n本案例以我国探月工程的里程碑嫦娥一号成功发射为情境素材，通过精心设计的系列问题和围绕问题解决开展的自主学习活动，激发学生的学习动机和探究欲望，促进学生物理学科核心素养的全面发展。\\n\\n活动的设计从学生原有的认识入手，以学生的认知发展过程为主线，用基于现代信息技术的仿真实验作支撑，在教师适时、适度的指导下，让学生一步步经历从简单到复杂的问题解决过程，逐步发展相应的物理学科核心素养。课前让学生观看“嫦娥奔月”的视频，重温我国古代的飞天梦，通过小组讨论交流，发表自己的感受，激发学生的学习动机，提出需要探究的问题。接着观看嫦娥一号发射的视频，在表格中记录相关数据，培养学生通过视频获取信息的能力，为下一步开展探究作准备。\\n\\n接下来的探究过程围绕嫦娥一号发射过程中的三个核心问题展开。\\n\\n第一个问题：嫦娥一号如何发射升空？这个问题的解决借鉴了物理学史上牛顿的思路，首先从学生熟悉的抛体运动入手，通过仿真实验和小组讨论拓展学生思维，发展学生的运动和相互作用观念，将地面和天上的运动联系起来，综合运用已学过的圆周运动、牛顿运动定律和万有引力定律等相关知识，计算第一宇宙速度。以嫦娥一号为例，解决了航天器如何发射升空的问题。接着自然过渡到第二个问题：嫦娥一号如何运行？解决这个问题需要学生利用观看视频获取的资料，通过小组讨论、展示交流和仿真实验，经历建构模型和检验模型的过程，发展建模能力和交流合作能力。需要指出，仿真模拟不是真实实验，本案例利用仿真模拟，一方面是因为不能做实验而采用的替代方法，另一方面体现信息技术与物理教学的整合。为了让学生认识仿真实验和真实实验的差异，专门设计了下列问题供小组讨论：仿真实验能否用来检验卫星运行规律，其可靠性如何？借此发展学生对科学本质的认识。第三个问题：嫦娥一号如何变轨？让学生通过观看视频、小组讨论等活动，应用前面建立的模型，从运动和相互作用、能量两个角度进行科学推理和论证，进一步发展物理观念和科学思维能力。课后作业设计了拓展活动，引导学生开阔视野，从探索嫦娥一号的运行规律到关注我国和人类的航天事业，进一步激发学生的探索欲望，发展他们获取信息、文字表达和创新的能力。\\n\\n本案例设计了大量有针对性的问题，供课堂上开展师生、生生之间的讨论与交流。教师根据学生课堂问答，及时评价学生的学习情况，有效地将日常学习评价与课堂教学融为一体。\\n\\n# 案例2：探究感应电流产生的条件\\n\\n# 【设计意图】\\n\\n学生在初中已学习了“闭合电路的部分导体做切割磁感线运动，则产生感应电流”，并且对“切割”印象深刻。本案例的主要目标是让学生体会“切割”并不是产生感应电流的充要条件。通过实验探究、分析归纳，从磁感应强度和磁通面积两个因素入手，自然引导出磁通量的物\\n\\n理概念，并得出磁通量的变化是产生感应电流的条件。\\n\\n# 【实验准备】\\n\\n1. 实验1、实验2和实验3的器材如图2所示。其中，实验3中有两块异性磁极相对的磁铁，其相对平行的空间内可看成匀强磁场；一个闭合的矩形线框（线框面积小于匀强磁场区域的面积）与一个灵敏电流计形成一个探测回路。\\n\\n![image](https://cdn-mineru.openxlab.org.cn/result/2025-12-20/81d3dd5d-bd1e-4e00-8562-db9712cf7342/79efbda2a1dfdaf6edffc8faaa18a06d527d56432c806c0ef5a6c4c03381ee4c.jpg)\\n\\n\\n\\n实验1\\n\\n\\n![image](https://cdn-mineru.openxlab.org.cn/result/2025-12-20/81d3dd5d-bd1e-4e00-8562-db9712cf7342/10a1d584022d66bf90189ada393429db41754bb0ceb8dbedb79a6e88d8d15e46.jpg)\\n\\n\\n\\n实验2\\n\\n\\n![image](https://cdn-mineru.openxlab.org.cn/result/2025-12-20/81d3dd5d-bd1e-4e00-8562-db9712cf7342/8ed46258131af52e7b925bb22b16f1fdea89f62d4af016a4ad0fe52b0f35a32e.jpg)\\n\\n\\n\\n实验3\\n\\n\\n\\n图2\\n\\n\\n2. 用磁感线模拟（空间旋转）的方法制作圆柱形磁铁的磁感线空间分布的模型，并准备好实验4如图3所示的器材。\\n\\n![image](https://cdn-mineru.openxlab.org.cn/result/2025-12-20/81d3dd5d-bd1e-4e00-8562-db9712cf7342/797ae36f7231de2e0c6a28efa99876fcd10ef864c42fa3a21a7ca13b64d2525e.jpg)\\n\\n\\n![image](https://cdn-mineru.openxlab.org.cn/result/2025-12-20/81d3dd5d-bd1e-4e00-8562-db9712cf7342/3a931579fdbee800b0c638c2da8547b5ea05b9ef99814240c19728416ac1a9da.jpg)\\n\\n\\n\\n实验4\\n\\n\\n\\n图3\\n\\n\\n3. 将学生分成每组4~6人，组内确定每个任务的主持人（轮流做组长）。\\n\\n# 【探究活动设计】\\n\\n任务1：根据初中学习的内容，准确陈述产生感应电流的条件。\\n\\n要求：学生陈述后，让学生指明切割磁感线的是哪部分导体。\\n\\n任务2：按照图2中3个实验图进行分组实验，每组承担1个实验。\\n\\n要求：①设计实验方案；②按方案进行实验并记录实验现象；③对实验现象分析讨论后，归纳实验结论（填入表2中）；④每组由两位同学合作进行实验演示并讲解。\\n\\n任务3：根据自己组的实验与其他组的实验汇报，完成表2中的前3项。\\n\\n\\n表 2 实验现象的记录与解释\\n\\n\\n班级 组别 学号 姓名\\n\\n<table><tr><td>实验序列</td><td>产生感应电流的操作</td><td>本实验可得出的结论</td></tr><tr><td>1</td><td></td><td></td></tr><tr><td>2</td><td></td><td></td></tr><tr><td>3</td><td></td><td></td></tr><tr><td>4</td><td></td><td></td></tr><tr><td colspan=\\\"3\\\">与其他组交流后获得的启发是</td></tr><tr><td colspan=\\\"3\\\">结论:产生感应电流的条件是</td></tr></table>\\n\\n实验1显示：穿过闭合回路的磁场强弱变化时，回路中产生感应电流。实验2显示：闭合开关并迅速移动滑动变阻器的滑片时（或开关闭合、断开瞬间），闭合回路的磁场强弱改变，回路中产生感应电流。实验3中，当水平线框在匀强磁场区域上下移动时，线框“切割”磁感线，但线框中没有感应电流；当线框在匀强磁场中旋转或改变磁感线穿过的有效面积时，回路中产生感应电流。\\n\\n任务4：观察并分析解释实验4。由上述实验已知：切割磁感线不一定产生感应电流；在磁感应强度  $B$  不变、闭合回路有效面积  $S$  改变，或  $S$  不变、  $B$  改变的情况下，闭合回路皆可产生感应电流。若  $B$  与  $S$  都改变，闭合回路是否一定产生感应电流呢？\\n\\n实验4：演示实验——“动态”磁通量不变演示仪，如图3所示。用铁粉模拟出圆柱形磁铁中轴面的磁感线，根据其中的一组对称的磁感线做出立体的“喇叭口”模型，如图4所示。\\n\\n演示操作：把线圈套入圆柱形磁铁，控制活扣，使线圈紧贴着模型\\n\\n往下运动。\\n\\n实验现象：在运动过程中，穿过线圈的磁感应强度在减小，线圈面积在增大，灵敏电流计指针没有发生偏转！但在线圈套入和拿出时段，灵敏电流计指针有明显变化。\\n\\n![image](https://cdn-mineru.openxlab.org.cn/result/2025-12-20/81d3dd5d-bd1e-4e00-8562-db9712cf7342/e33f5f781130e0d1607c20bc98e657312b7aee2945650a43e67e2408db15c1ce.jpg)\\n\\n\\n\\n甲\\n\\n\\n![image](https://cdn-mineru.openxlab.org.cn/result/2025-12-20/81d3dd5d-bd1e-4e00-8562-db9712cf7342/ca68c0d44d3bff87ccce10d21a921aa8f70d32989b73c477d38739747b484238.jpg)\\n\\n\\n\\n乙\\n\\n\\n\\n图4\\n\\n\\n任务5：请各组学生针对以上实验现象讨论原因，并解释这个实验现象。完成表2中的第4项。\\n\\n任务6：完成以上探究后的总体结论（填入表2中）。\\n\\n# 【案例评析】\\n\\n感应电流的产生条件在初中已学过，但对条件的理解主要是“部分电路的切割”。实际上，电磁感应现象中一些不“切割”的现象也会产生感应电流，因此高中物理中要更全面地研究产生感应电流的条件，例如闭合回路的磁感应强度  $B$  变化，闭合回路的面积  $S$  变化等。但若将  $B$  变化或  $S$  变化两种情况简单概括成  $B \\\\cdot S$  变化，即磁通量变化，这种总结方法是不严谨的。这个案例中的实验4正是对磁通量问题的深入探索，对学生思维有较强冲击力。通过实验4我们得知，只有穿过闭合回路磁感线的条数发生变化，闭合回路中才有感应电流。\\n\\n本案例中，教师设计了实验记录表，引导学生将小组实验的现象与思考记录在表格中，同时在小组交流后，又引导学生对自己和同伴的学习进行反思。这些学习过程的记录就可成为学生学习过程中的档案，积累起来的档案能很好地反映学生日常学习过程中所表现出来的核心素养水平。\"}", CJ_rawText: "# （三）学业质量标准的应用\n\n学业质量标准可以用来指导学校课程设计、教学和考试评价。\n\n学业质量水平1是高中学生毕业在物理学科方面应当达到的要求，也是物理学科学业水平考试合格等级的划定依据。物理学科学业水平等级性考试命题不超过学业质量水平3。\n\n# 七、实施建议\n\n# （一）教学与评价建议\n\n教师应根据普通高中物理课程标准（以下简称课程标准）的基本理念、课程目标和学业要求等，结合教学的实际情况，创造性地开展教学工作，将物理学科核心素养的培养贯穿物理教学全过程。评价是日常教学活动的重要组成部分，应以课程目标、课程内容和学业质量为依据，关注物理学科核心素养的发展水平。\n\n# 1. 教学建议\n\n教师要根据内容要求和学业质量标准，结合学生的实际确定教学目标，组织教学内容，设计学生的课堂学习活动，有效开展教学活动。\n\n# (1) 依据课程标准要求和学生发展情况确定教学目标\n\n要根据课程标准的要求和学生实际，系统设计模块教学目标、单元教学目标和课时教学目标。设计模块教学目标，应主要考虑本模块的学业要求，并兼顾学生的实际、课程目标和学习进程。设计单元教学目标，应考虑单元内容在模块中的地位和作用，体现单元内容学习与模块目标的关系，符合学生学习的阶段性特征。设计课时教学目标，应充分考虑学生的知识经验和认知水平，考虑课时目标与单元目标的关系，综\n\n合体现课程内容、学生学习活动和物理学科核心素养的要求；应重视以内容教学落实物理观念、科学思维、科学探究、科学态度与责任等方面要求，把课程具体内容教学与学生物理学科核心素养的发展联系起来，把基于物理学科核心素养提升的教学目标融合在具体教学活动中。\n\n# (2) 围绕学生物理学科核心素养发展组织教学内容\n\n教师要重视教学内容的合理化选择和结构化组织。应根据物理学科核心素养的要求和学生的学习需要，选择合适的教学内容，设计合理的内容呈现方式。例如，建构电场强度概念，可以用试探电荷所受静电力的特征，抽象概括静电力与电荷量的关系，探讨电场本身的特征和属性。\n\n要围绕概念建立和规律探究的要求选择和组织教学内容。要关注知识之间的内在联系，用实际问题的探究引领学生对课程内容的学习，促进学生深度理解。例如，建构电容概念，可以用充电后的电容器对电阻放电，用电流传感器和电压传感器测量放电过程的电流和电压，通过计算机生成  $I - t$  图像和  $U - t$  图像，根据图像分析任意时刻电容器所带的电荷量与两极板间的电压，发现电荷量与电压成正比的规律，从而很自然地得到电容的定义。\n\n要基于实际情境设计任务和问题。让学生在真实的情境中自主学习，学会从物理学的视角观察物理现象，抽象物理模型，分析归纳相关特点，认识并应用物理学概念和规律，有效促进物理学核心素养的发展。\n\n要根据学生的学习进阶要求组织教学内容。学生物理学科核心素养的发展是一个循序渐进的过程，注重必修课程和选择性必修课程之间、不同模块之间、同一模块内不同单元之间的素养发展的不同要求，合理选择教学内容，体现物理学科核心素养的渐进发展。\n\n# (3) 根据教学目标设计教学活动\n\n根据教学目标设计学生自主学习活动。注重在教师的指导下让学生开展自主学习活动，以有效达成教学目标。要基于教学目标设计探究性活动，让学生在现象探究中抽象归纳本质，概括形成物理概念，并进行\n\n合理定义；要基于实验事实，设计合理的探究任务，让学生从实验事实中发现和归纳实验规律；要基于探究的问题设计任务，让学生解释现象并解决问题；要突出问题导向，注重问题探究，让学生学会用物理语言讨论交流探究过程和结果。引导学生在课堂自主学习和探究的过程中，增强自主探究、归纳反思的能力，提升物理学科核心素养。\n\n根据教学目标要求设计实验探究活动。课程标准对学生实验探究能力的培养提出了要求，通过实验方式进行相关内容教学的条目占内容要求条目的一半以上。演示实验应清晰呈现实验目的和原理，有足够的可见度；要让学生带着问题观察实验现象，启发学生解释实验现象，培养学生依据证据进行推理和解释现象的能力。要重视学生实验，让学生根据实验目的设计实验步骤，自主、规范地进行实验操作，正确读取和记录实验数据，分析解释实验数据，得出实验结论。要根据教学要求，自制、改进教具，创新和优化物理实验，提升学生的实验探究能力。\n\n# (4) 借助信息技术赋能教学过程\n\n运用信息技术优化教学。要运用网络平台的视频、动画和各种数字资源，针对课堂教学需要，进行合理的选择、剪辑、改编和优化；充分运用各种网络资源，结合课堂学习内容，有选择地介绍科学技术的前沿、科学家的故事、国家重大科技攻关项目等重大科学事件；建议运用各种信息技术、表现手法，创作优秀的课件，突出教学内容的重点，突破学生学习的难点。运用数字媒体创设动画和视频，“放大”肉眼不可见的微观世界，“缩小”宏观的宇宙世界，“减慢”看不清的快速过程，“加速”耗时长的缓慢变化过程。要创造性地运用信息技术，让不易观察的世界变得可观察，不易观察的过程变得可观察。\n\n运用信息技术优化物理实验。数字化实验运用了各种传感器的数字化测量和数字化表达，使实验测量更准确、数字表达更清晰。可利用传感器优化物理量的测量，使物理实验中的测量更快速、更准确，提高实验功效；注重运用数字化实验生成数据，用图表和图形表达实验数据，使学生更容易归纳出实验结论；可运用数字化实验改进优化实验探究，\n\n突出实验的探究性；可运用数字化实验，激发学生创新设计实验的兴趣，提高实验探究的能力。\n\n运用人工智能优化教与学。关注人工智能的发展对教师的教和学生的学带来的机遇和挑战。教师要学习运用人工智能优化教与学的方式，改进教学设计，拓展学生的学习视野。要运用人工智能促进物理学科与其他学科的融合，开发综合性跨学科实践项目，强化人工智能对学生学习的辅助作用和跨学科实践能力培养。\n\n# 2. 评价建议\n\n教师应创设真实且有价值的问题情境，采用多种多样的评价方式，客观全面地了解学生的发展状况，找出存在的问题和原因，发挥评价的诊断、反馈、激励等功能，促进学生全面而有个性的发展。评价实施时应注意以下几个方面。\n\n# (1) 明确评价目标指向，促进物理学科核心素养的发展\n\n评价应根据学业质量和课程内容的要求，围绕物理观念、科学思维、科学探究、科学态度与责任等方面，撰写指向学生学习行为表现的评价目标。目标的描述要明确、具体、可测，要说明学生在什么样的问题情境中，运用哪些物理知识、思想方法，其行为应达到什么样的水平。收集学生在真实情境下解决问题的行为表现，综合评价学生的学习效果及学习状态，判断学生达到的水平和学习中的问题；创造机会让学生学会正确评价自己的进步，反思自己的不足，明确努力的方向，激励学生不断进步。\n\n# (2) 增强教学与评价的融合，提升评价的有效性\n\n充分认识教学任务与评价任务的关系，将学生的学习目标、学习内容与评价目标、评价任务进行整体设计；制订评价标准、设计评价任务，使学习活动与评价任务同步实施。依据评价目标，在具体的学习活动中评价学生的表现。例如，学生能否运用学科知识，选用恰当的模型，对实际情境中的问题进行定性和定量的分析推理，解释现象、解决\n\n问题；在探究、实践过程中能否进行小组合作，能否运用科学方法积极思考，提出可探究的问题，进行合理的猜想和假设，制订合理的探究方案；是否具有依据证据进行推理和解释的求实精神，能否认识到物理研究是建立在观察和实验基础上的一项创造性工作等。\n\n# (3) 重视过程性评价，发挥激励、发展的功能\n\n充分认识过程性评价的重要性，把评价渗透到课堂学习、项目实践活动等各个环节，重视综合性、情境化、开放性任务的创设，依据学生在真实情境下解决问题的过程和结果评定其物理学科核心素养水平。重视通过课堂问答、书面作业、项目实践活动，评价学生解决各种现实问题或任务时所表现出来的物理学科核心素养水平，追踪学生在不同时间点上的学习发展状况，对其变化情况进行定性和定量分析，确保评价全面、真实、有效，充分发挥评价的诊断、激励作用。\n\n# (4) 重视评价主体多元、方法多样，体现综合评价\n\n评价应面向全体学生，尊重学生的主体地位，要发挥学校、教师和学生等不同角色在评价中的作用，建立以促进学生全面发展为宗旨的家长、学校和社会共同体；鼓励学生主动参与评价，注重展示学生自我发展的过程，关注学生的不同兴趣、表现，满足不同发展需求。重视综合评价，将单项评价与整体评价、定量评价与定性评价、终结性评价与形成性评价等评价方式有机结合，积极探索人工智能赋能评价的方式方法，通过观察、讨论、展示、交流、同伴或自我评估等多种评价方式，收集学生在不同场合、不同时间多方面表现的证据，实现对学生物理学科核心素养发展水平的全面评价。要创造条件，建构学习与评价的共同体，使学生学会持续反思、终身学习。\n\n# (5) 做好评结果的解释, 促进学生学会学习\n\n鼓励学生参与评价结果的判断和解释过程，提升后续决策与评价结果的一致性。教师应及时准确地反馈评价结果，提供细致的描述性评价，帮助学生发现、纠正学习中存在的问题，增强学生学习物理的兴趣和自信心，促进学生的发展。充分认识评价结果不同呈现方式的优势和\n\n不足，采取恰当的方式进行反馈，让学生了解自己取得了哪些进步、发展了哪些能力、还有什么潜能，同时认识到存在的不足，从而积极调整学习策略、学习方法，发展终身学习的能力。\n\n# （二）学业水平考试建议\n\n学业水平考试是保障教育教学质量的一个重要环节，是根据国家普通高中课程方案、课程标准和教育考试规定，由省级教育行政部门组织实施，以学业质量为依据的考试，主要测量学生达到国家课程标准规定的学业质量的程度。学业水平考试的成绩是学生高中毕业或升学的重要依据。实施学业水平考试，旨在落实发展学生核心素养的课程目标，促使学生认真学习每门课程，避免偏科；有利于学校准确把握学生的学习情况，改进教学管理；有利于高等院校选拔适合学校特色和专业要求的学生，促进高中与高等院校人才培养的有效衔接。\n\n# 1. 考试设计要求\n\n考试设计应强化育人导向，依标命题，坚持改革创新，坚持科学规范，注重考查支撑学生未来长远发展和适应社会进步要求的能力，有效鉴别学生发展潜质。\n\n# (1) 考试内容\n\n物理学业水平考试的内容应根据考试目的确定，注重考查物理观念、科学思维、科学探究、科学态度与责任四个方面。考试内容的任务情境应符合学生心理发展水平和认知规律，反映物理学本质，密切联系社会、科技、生产生活实际，充分体现考试评价促进学生学习、甄别学生学业水平的功能。\n\n学业水平合格性考试的考查内容为课程标准规定的必修内容及相关的12个学生必做实验。要体现学业质量水平和物理学科核心素养的基本要求。注重考查对必修课程中的基本概念和基本规律的了解和认识情\n\n况，要注重围绕生产生活或科技发展等设计问题情境，加强对学生运用基础知识解决简单实际问题能力的考查。\n\n学业水平等级性考试的考查内容为课程标准规定的必修和选择性必修内容及相关的21个学生必做实验。要体现学业质量水平和物理学科核心素养的全面要求。注重考查对必修和选择性必修课程中重要的物理概念与规律的理解与运用情况，要与生产生活、科技发展等紧密联系，要关注物理学前沿与成果应用。要加强对学生综合应用物理知识解决实际问题能力的考查，要强调创新精神和实践能力的考查，能较好地区分学生物理学科核心素养的水平。\n\n# (2) 试卷结构\n\n依据课程标准规定的内容模块，全面考查物理学科核心素养。根据用于高中毕业的学业水平合格性考试和用于高等院校招生录取的学业水平等级性考试的不同评价目标，合理确定两种考试的试卷结构，包括试卷长度、内容结构、题型结构等。考查内容比例应与各模块课程内容所占课时比例大体一致。实验内容应占一定比例。纸笔考试题型一般包含客观题和主观题，其中客观题主要有单项选择题、多项选择题等，主观题主要有简答题、计算题等。客观题和主观题的数量要合理搭配，关注评价目标及不同水平的要求，保持不同题型的适当比例。鼓励探索综合考查物理学科核心素养的题型设计。\n\n# 2. 命题建议\n\n试题命制要准确把握物理学科核心素养内涵和学生的学业表现，选择、加工能考查学生相关核心素养表现的真实情境，选取典型内容和测试材料，设计有助于展现学生不同素养水平的任务，基于学生真实表现研制评分标准。建设高素质、高水平、结构合理的命题队伍，加强命题人员遴选与培训，提升命题人员专业化程度，努力提高考试命题的质量和水平。\n\n(1) 试题应有明确的测试目标。整份试卷所考查的内容要尽可能涵盖\n\n盖学科所有可测的物理学科核心素养的各个方面。每道试题的考查立意要明确，清晰指向对物理学科核心素养哪几个方面的考查。针对用于高中毕业的学业水平合格性考试和用于高等院校招生录取的学业水平等级性考试的不同目的，试题考查的物理学科核心素养水平应有所不同，要符合两类考试的具体要求。\n\n（2）试题所涉及的知识内容应具有代表性。要根据评价目标，按照课程标准中的课程内容要求，抽取具有代表性的核心物理概念、规律、思想和方法等内容设计试题；要反映物理学的知识结构和基本规律，要与今后的进一步学习或职业选择相适应。所抽取的知识内容要具有合理的覆盖面和适当的比例。\n\n（3）科学合理设计试题难度。要从物理学科核心素养、试题情境和知识内容的要求等方面科学合理地设计试题难度。可根据物理学科核心素养的水平层次、试题情境的复杂性或新颖性、知识要求的深度或广度等多方面来设计试题的难度，保证试卷难度适宜、梯度合理、比例恰当，有利于学生发挥正常水平，且符合评价目标要求。\n\n（4）精心创设试题任务情境。要尽量创设类型多样的、具有一定复杂程度的、开放性的真实情境作为试题的任务情境，通过学生在应对复杂真实情境、参与相应探究学习活动中的外在表现来考查物理学科核心素养。\n\n（5）试题的编制要科学、规范。试题的情境、设问的角度及方式要科学、可信、新颖、灵活；试题的表述方式要科学、合理、有效，符合学生的认知特点和能力水平。其中，选择题的题干要围绕一个中心，选择项要设置合理，能反映学生的典型错误，有利于学生改进学习；各个选项的结构、长度要大体一致。\n\n（6）试卷评分标准应清晰准确。评分标准的制订要依据学业质量水平的要求，清晰界定所考查的知识以及与这些知识关联的物理学科核心素养，使之能相对比较准确地判断学生的物理学科核心素养及其水平。评分标准要摒弃单纯知识性的描述方式，要研制基于物理学科核心素养\n\n的等级描述。\n\n# （三）教材编写建议\n\n在高中物理课程实施过程中，教材作为直接的课程资源应发挥培根铸魂、启智增慧的重要作用。下面以提升学生的物理学科核心素养为目标，分别从编写原则、内容选择、内容呈现三个方面提出教材编写建议。\n\n# 1. 编写原则\n\n（1）注重教材的育人功能。教材编写应注重落实课程标准的要求，有效促进学生在物理观念、科学思维、科学探究、科学态度与责任等方面的物理学科核心素养的达成。\n\n（2）注重教材的科学性。教材应与课程标准的要求保持一致，不仅应准确反映课程标准要求的物理概念和规律，正确纳入物理实验，还应科学地融入研究方法、科学态度与价值观等内容。\n\n（3）注重教材的适用性。遵循学生的认知规律，关注城乡差异，做到线索清晰、层次分明、循序渐进、重点突出，既有总体的系统性，又有一定的灵活性，为教师教学和学生学习提供支持。\n\n（4）注重教材的时代性。及时反映物理学的发展前沿，反映物理学对社会进步及科技发展的重要作用，反映物理学的技术应用给生产生活带来的影响。\n\n（5）注重教材的人文性。弘扬中华优秀传统文化，增强民族自信心和凝聚力，注重吸收世界先进的物理教育理念，倡导尊重世界文明多样性，注重体现对人的尊重等相关内容。\n\n(6) 注重教材的特色与创新。根据学生学习与发展需求，在教材内容选择、组织与呈现方式等方面合理创新，编写不同风格、各具特色的教材。\n\n# 2. 内容选择\n\n（1）注重多方面选择教材内容，落实素养导向的课程目标。依据物理学科核心素养的要求选择教材内容，有效促进学生物理学科核心素养的达成。注重选择与物质、运动和相互作用、能量等相关的核心内容，帮助学生从物理学视角认识自然、理解自然，形成物理观念；注重选择与学生建模、推理、论证、创新等能力培养有关的内容，培养学生的科学思维；注重从科学探究的视角选择内容，培养学生的科学探究能力；注重从情感、态度、价值观的视角选择内容，培养学生的科学态度与责任感。\n\n（2）注重物理内容的基础性，关注全体学生的学习需求。既要注重物理学概念和规律等基本内容，还要注重物理学的探究过程、研究方法等，为学生的终身发展打下基础。必修课程含全体高中学生必学的物理内容，对应教材的编写应注重纳入相关的物理内容，关注全体学生的学习需求，注重对全体学生物理学科核心素养的培养，为公民科学素养的提升作出贡献。\n\n（3）注重物理内容的选择性，为学生的个性发展搭建平台。注意物理内容的分层与分类，关注不同学生的学习需求，为学生有个性地发展搭建平台。选择性必修课程对应教材的编写既要关注与必修教材的衔接和联系，又要关注在必修教材基础上的拓展延伸。选修课程对应的学习材料编写要关注学生多样化的学习需求，为学生的多元发展提供空间。\n\n（4）落实课程标准的内容要求，依据课程标准把控教材内容的广度与深度。课程标准中的内容主题应全部纳入教材。课程标准中的样例与活动建议有一定灵活性，供教材编者参考。在教材难度方面，应与课程标准的要求一致，不能随意拔高或降低教材的难度。根据课程标准的要求，积极开发教材资源，增强教材的趣味性与可读性，更加具体、生动、精彩地呈现课程内容。\n\n（5）关注学科发展动态，体现教材内容的时代性。注意及时纳入物理学科的最新研究成果，关注物理学的技术应用带来的社会问题等。设\n\n计特点鲜明的栏目，介绍科学技术研究的最新进展，反映物理学的技术应用对自然和社会的影响，融入与科学、技术、社会及环境相关的内容，开阔学生视野、增强学生的社会责任感及科技强国的使命感。\n\n（6）重视科学的研究方法，有效设计科学探究活动。关注科学家在科学探索过程中所凝练、升华的科学思维方式和科学研究方法。应努力提高科学探究的质量，一方面科学探究活动的方式应多样化，可利用信息技术辅助手段，服务学生个性化学习；另一方面应加强科学探究的真实性，注重培养学生的科学探究能力及科学态度等。科学探究活动的具体内容、方式和要求等，应根据学生发展需求灵活设计，有效体现物理实验的育人功能。\n\n（7）关注多种评价方式，体现评价的育人功能。关注物理学科的学业质量水平，关注每个模块的学业要求，适当纳入与日常学习评价、学业水平合格性考试、学业水平等级性考试有关的评价内容。作业设计要联系实际，注重情境创设，强调任务驱动，有针对性和层次性，引导学生理解学习内容，解决实际问题。可设计从易到难的节练习，帮助学生建构概念、巩固学习内容、检测学习问题、开阔视野等；可设计具有一定综合性和创新性的章练习，培养学生利用所学内容综合解决物理问题的能力和创新能力；还可根据学业质量水平设计单元测试或综合测试，让学生了解自己的进步与不足，以便其更好地发展。\n\n# 3. 内容呈现\n\n（1）内容编排应有利于教与学。教学内容在教材中出现的顺序与形式，每项内容所用的篇幅等，都应体现现代教育思想和教学理念。教材内容的编排可有多种形式。无论采取哪种形式，内容编排皆应有利于教师科学设计教学情境、有效组织教学，促进教师改进教学实践，引导教师创新教学；应有利于引导学生主动探究、建构知识、获得结论，为学生提供质疑与探究的机会；应关注学生的认知特点，循序渐进地编排教材内容，让学生在学习过程中既要面临问题挑战，又能享受成功解决\n\n问题的喜悦。\n\n（2）注重教材的编印规范。教材的编印应有利于学生学习，符合学生身心健康发展的要求。教材应开本恰当、装帧良好、美观大方；教材的版面设计应清爽美观、疏密得当；其纸质、纸张颜色、字体等皆应符合国家颁布的标准。教材要恰当处理版面和内容的关系，力求全书图文均衡、相得益彰；文字叙述要科学、准确、精练，要有相当的可读性和欣赏性，适宜高中学生阅读；图片选择应在科学性与时代性方面下功夫，注意精选插图，使其与教学目的、教学内容紧密结合，引导学生积极向上地健康发展。可绘制原理图，以帮助学生清晰准确地理解相关物理内容；有些生活或自然中的物理现象，最好用真实照片，以此让学生感受到物理学的神奇，产生学习物理的兴趣等。\n\n# （四）地方和学校实施本课程的建议\n\n地方和学校是课程实施和建设的主体，也是重要的推动者。要依据课程标准的要求管理课程实施，贯彻落实国家课程的要求；要创造良好的课程实施条件，形成课程实施的良好机制，扎实有效地推进课程。\n\n# 1. 加强课程建设和课程管理\n\n指导学生合理选择课程。学校要结合对学生的生涯规划指导，帮助学生根据物理课程的基本结构与内容要求，以及自己的兴趣、特长和发展方向，正确选择适合自己的课程，促进物理学科核心素养的发展。\n\n制订学科课程计划。学校要根据学生实际需要和资源条件，制订物理学科的课程开发、实施和评价计划；根据学校实际和学生需要，有计划地开展物理课程实施研究，使国家课程更适合于学校，更贴近学生的实际；要研究和开发适应学生需要的选修课程，为培养拔尖创新人才服务。\n\n提高课程管理专业水平。学校要改革课程管理模式，以适应课程结\n\n构的改变；研究适应选课教学的课程管理方式和教学实施方式，规范选课教学管理。地方教育行政部门要支持学校建立物理学科专用教室，让学生在专用教室进行沉浸式学习，让教师实施更有“物理味”的课堂教学。\n\n# 2. 重视教师专业能力培训\n\n有计划地推进教师培训。各级教育行政部门和学校要高度认识教师培训的重要性，要制订合理的教师培训计划，开展有针对性的教师培训。各地要开展各级教研人员的高水平培训，并由具有高水平课程教学能力的教研人员等专业力量推进广大教师的课程专项培训。各级教研部门要根据当地实际，针对教师在课程和教学方面的薄弱环节，拟定培训项目，确定培训目标、培训内容和要求，以此组织开展有效的教师培训。\n\n开展课程标准学习培训。各级教育行政部门要组织课程标准学习的专项培训活动，使教师理解课程的指导思想和课程目标，明确课程内容及其学业要求，理解学业质量标准。通过培训，使教师能自觉运用课程标准指导教学，提高教师“依标教学”的能力。针对目前教师评价能力不足的情况，教育行政部门和教研机构要开展教师的评价专项培训，提高教师的评价能力；要组织教师学习评价理论，使教师理解评价体系，学会制订评价方案，实施有信度和效度的评价。\n\n# 3. 开展扎实有效的教研活动\n\n教育教学研究是解决学校教学问题、提高教师教学能力的重要手段。要依托各级教研部门的教研力量，开展各种形式的教研活动，指导教师理解课程，提高教学能力。\n\n开展主题教研活动。要针对教育教学需要，确定和展开以研究主要问题为核心的系列教研活动。教研部门要针对物理教学的实际，选择课程教学核心内容和关键问题作为研究主题，有针对性地开展教研活动。\n\n采用多样化的教研方式。要突破场地、资金、时间等条件的限制，\n\n采用多样化的教研方式。既可以现场教研，也可以网络教研，学校之间还可以进行校际联盟的联合教研；可以根据教研内容、时长的不同，采用多样化的教研方式，例如专题讨论、主题沙龙、微论坛等，以提高教研活动的时效和实效。\n\n扎实开展校本教研。学校要加强教研组和备课组建设，规范学校教研工作的程序和要求。教研组要针对物理课程的需要，开展物理学教学关键问题专题研究；备课组要研究日常教学问题，扎实做好教学设计、教学实施、作业评价等问题研究，努力提高课堂教学水平。\n\n# 4. 开发和利用课程资源\n\n加强物理实验室建设。学校要按照国家标准配备足够数量的专用实验教室，配齐配足实验器材；根据课程标准，最大限度地安排学生实验，做到人人动手做实验；要创新实验方式，开发可视性强、证据性强、能引起学生浓厚兴趣的演示实验；要利用日常用品、废旧材料创新物理实验，开发低成本、高质量的物理实验，使学生有更多动手做实验的机会；要建立实验室开放制度，鼓励学生利用课余时间，以独立或小组合作方式，开展物理问题的实验研究。\n\n运用数字化实验创新实验方式。地方教育行政部门要支持学校创建数字化实验室，培训教师能进行数字化实验，使数字化实验更多地运用于课堂教学和学生实验。教师要创新数字化实验的使用方法，研究运用数字化实验改进传统实验的方式，促进教学手段与方式的现代化。\n\n利用社会课程资源。学校要积极探索，开发、利用来自科技馆、博物馆、公共图书馆、高等院校、科研院所、工厂、农村以及网络科技平台等的物理课程资源，丰富学生的科技应用知识，拓宽学生的科技视野，培养学生发现问题、研究问题、解决问题的能力；要组织学生带着问题和任务参观各种科技场馆或场所，了解高等院校、科研院所的科学研究项目，与科学家讨论研究课题，激发学生学科学、爱科学的兴趣，增进学生对科学、技术、社会及环境之间关系的理解。\n\n开发利用数字化资源。学校要积极开发、利用数字媒体课程资源，主动开发信息化实验仪器，拓宽物理学习的途径。学校要开发利用各种适合学生学习的音视频材料，例如关于航空航天、核电站、纳米技术、工业信息化等方面的材料，以此拓展学生的视野，加深学生的感性认识。教师要有效利用具有互动功能的网络学习平台，开展师生互动教学，提高物理课程学习的效果；要利用网络课堂全方位服务学生，解决学生物理学习的疑难问题；要带领学生探索如何运用人工智能解决物理学习中的疑难问题，提高学生学习物理的效率，培养学生在人工智能背景下的创新实践能力。\n\n# 附录\n\n\n附录1 物理学科核心素养的水平划分\n\n\n<table><tr><td>水平</td><td>物理观念</td></tr><tr><td>1</td><td>形成初步的物理观念，能从物理学的视角解释一些自然现象，能应用物理知识解决一些实际问题。</td></tr><tr><td>2</td><td>具有物理观念，能从物理学的视角描述和解释自然现象，能应用物理知识解决实际问题。</td></tr><tr><td>3</td><td>具有清晰的物理观念，能从物理学的视角正确描述和解释自然现象，能综合应用物理知识解决实际问题，能指导工作和生活实践。</td></tr><tr><td>水平</td><td>科学思维</td></tr><tr><td>1</td><td>能在熟悉的问题情境中应用常见的物理模型；能对比较简单的物理现象进行分析和推理，获得结论；能使用简单和直接的证据表达自己的观点；具有质疑和创新的意识。</td></tr><tr><td>2</td><td>能在熟悉的问题情境中根据需要选用恰当的模型解决简单的物理问题；能对常见的物理现象进行分析和推理，获得结论并作出解释；能恰当使用证据表达自己的观点；能对已有观点提出质疑，从不同角度思考物理问题。</td></tr></table>\n\n\n续表\n\n\n<table><tr><td>水平</td><td>科学思维</td></tr><tr><td>3</td><td>能将实际问题中的研究对象转换成物理模型；能对综合性物理问题进行分析和推理，获得结论并作出解释；能恰当使用证据证明物理结论；能对已有结论提出有依据的质疑，采用不同方式分析解决物理问题。</td></tr><tr><td>水平</td><td>科学探究</td></tr><tr><td>1</td><td>能观察物理现象，提出物理问题；能根据已有的科学探究方案，使用基本的器材获得数据；能对数据进行整理，得到初步的结论；能撰写简单的报告，陈述科学探究过程和结果。</td></tr><tr><td>2</td><td>能分析物理现象，提出可探究的物理问题，作出初步的假设；能在他人帮助下制订科学探究方案，使用基本的器材获得数据；能分析数据，发现特点，形成结论，尝试用已有的物理知识进行解释；能撰写科学探究报告，用物理学术语、符号、公式、图表等交流科学探究过程和结果。</td></tr><tr><td>3</td><td>能分析相关事实或结论，提出并准确表述可探究的物理问题，作出有依据的假设；能制订科学探究方案，选用合适的器材获得数据；能分析数据，发现其中规律，形成合理的结论，用物理知识进行解释；能撰写完整的科学探究报告，对科学探究过程与结果进行交流和反思。</td></tr><tr><td>水平</td><td>科学态度与责任</td></tr><tr><td>1</td><td>认识到物理学是基于人类有意识的探究而形成的对自然现象的描述与解释，并需要接受实践的检验；有学习物理的兴趣，具有实事求是的态度，能与他人合作；认识到物理研究与应用会涉及道德与规范问题，了解科学、技术、社会及环境的关系，具有科技强国和实现中华民族伟大复兴的责任感。</td></tr><tr><td>2</td><td>认识到物理研究是建立在观察和实验基础上的一项创造性工作；有较强的学习和研究物理的兴趣，能做到实事求是，在合作中能尊重他人；认识到物理研究与应用应考虑道德与规范的要求，认识到人类在保护环境和促进可持续发展方面的责任，具有科技强国和实现中华民族伟大复兴的责任感和使命感。</td></tr><tr><td>3</td><td>认识到物理研究是一种对自然现象进行抽象的创造性的工作；有学习和研究物理的内在动机，坚持实事求是，在合作中既能坚持观点又能修正错误；能依据普遍接受的道德与规范认识和评价物理研究与应用，具有保护环境、节约资源、促进可持续发展的行为，具有科技强国和全面推进中华民族伟大复兴的责任感和使命感。</td></tr></table>\n\n# 附录2 教学与评价案例\n\n# 案例1：追寻嫦娥系列的踪迹\n\n# 【设计意图】\n\n本案例是“曲线运动与万有引力定律”主题中利用现代信息技术手段设计的一次学习活动，体现了物理学习与现代信息技术的深度融合和学生学习方式的变化，可供有条件的学校教学参考。活动目的是引导学生在初步形成的运动和相互作用观念、能量观念的基础上，将所学的牛顿力学的运动规律与现代科技前沿联系起来，通过观看视频、模拟操作、讨论交流、推理论证等过程，从运动和相互作用、能量的角度探索嫦娥一号的发射和运行规律，运用万有引力定律、牛顿运动定律和圆周运动规律，建立航天器发射和运行的模型。学习全部内容需要2~3课时，教师可根据教学实际，结合课堂与课外网络学习完成。课堂上注重引导学生经历建模过程，突破难点，侧重发展学生的建模能力、推理能力、探究和交流能力，将评价和学习过程紧密结合起来。\n\n# 【课前准备】\n\n将学生分成三人小组，布置预习作业。\n\n观看“嫦娥奔月”视频：几千年来，“嫦娥奔月”的古老神话在百姓间广为流传，奔向遥远的月宫，成为人类孜孜以求的梦想。我国有万户飞天的典故，说的是明朝有一个名叫万户的人，自制火箭尝试“飞天”。为了纪念万户，国际天文学联合会将月球上的一座环形山命名为“万户山”。\n\n思考：人类是如何实现飞天梦想的？\n\n【引入】（可利用网络开展以下学生活动）\n\n学生活动1——小组讨论\n\n观看“嫦娥奔月”后的感受及思考，提出相关疑问。\n\n学生活动2——观看视频\n\n观看嫦娥一号发射新闻报道视频，同时在作业纸上记录数据，并在组内交流，提出需要深入研究的问题。\n\n学生通过上述活动，初步形成嫦娥一号发射升空过程的整体图景，并提出需要深入探究的核心问题：嫦娥一号是如何发射升空的？是如何运行的？又是如何变轨的？\n\n# 【探究过程】\n\n问题1 嫩娥一号是如何发射升空的？\n\n思考：将物体从高塔上水平抛出，物体最终落到地面上。当增大抛射速度时，物体运动的距离更远；速度越大，距离越远。如果这个速度非常大，会是什么情况呢？\n\n活动1——模拟操作\n\n用仿真实验室体验，选不同的抛出速度： $v = 20 \\, \\text{m/s}$ 、 $v = 20 \\, \\text{km/s}$ 、 $v = 7.9 \\, \\text{km/s}$ 、 $7.9 \\, \\text{km/s} < v < 11.2 \\, \\text{km/s}$ 、 $v \\geqslant 11.2 \\, \\text{km/s}$ ，观察物体水平抛出后的运动轨迹，与思考结果进行比较。（以上活动可在课前利用网络完成，小组讨论也可通过网上交流实现。）\n\n活动2——小组讨论\n\n为什么物体能绕地球旋转起来呢？这个速度为什么必须是  $7.9 \\mathrm{~km} / \\mathrm{s}$  ？请从理论上推导，并跟同组同学交流。（教师可根据学生情况提供引导和所需数据。）如果高塔的高度不能忽略，要使物体不落到地球上的最小抛射速度与上述速度有区别吗？为什么？根据上述探究过程并结合视频，说明嫦娥一号发射升空的过程和原理。\n\n问题2 常娥一号是如何运行的？\n\n活动3——建构模型\n\n嫦娥一号升空后做什么运动？如何描述其运行规律？请各小组结合观看新闻视频时记录的数据，画出嫦娥一号的运行轨道，并展示交流。各小组画出不同轨道半径的卫星及其运行轨道，有的是圆轨道，有的是椭圆轨道。（为了便于计算，教师引导学生建构圆轨道物理模型。）\n\n活动4——小组讨论\n\n如何计算嫦娥一号的运行速度？利用小组画出的运行轨道图（参考卫星高度与地球半径的比例关系）计算运行速度，并通过仿真模拟检验小组计算结果。\n\n活动5——全班交流\n\n全班一起交流各小组计算和检验的结果，找出卫星的运行规律。再用仿真实验室检验得到的规律。\n\n活动6——小组讨论\n\n通过对嫦娥一号运行规律的探究，讨论为什么不同轨道卫星运行有不同的特点，并解释其原因。讨论仿真实验能否用来检验卫星运行规律，其可靠性如何。（问题2是本学习活动的核心内容，需要课上完成。所设计的四个活动从定性到定量层层递进，引导学生经历建构模型、检验模型的全过程，促进学生物理观念和科学思维的同步发展，其间，需要教师的引导和帮助。）\n\n问题3 常娥一号是如何变轨的？\n\n活动7——观看视频\n\n通过观看嫦娥一号变轨过程的视频，学生直观了解嫦娥一号运行及变轨过程，并记录相关数据，在教师引导下提出下列问题：嫦娥一号在变轨过程中什么物理量发生了改变？卫星变轨需要的条件是什么？怎么满足卫星变轨的条件？\n\n# 活动8——小组讨论\n\n针对学生提出的问题展开讨论（教师从力和运动、能量两个角度引导学生思考），嫦娥一号在距地球  $600 \\mathrm{~km}$  的高度先后进行了三次变轨，讨论其在三个轨道上运行到相应的点时线速度、角速度和加速度的大小关系。学生通过讨论，深入认识了嫦娥一号的受力和运动情况，并与能量的变化联系起来。\n\n# 【课后作业】\n\n1. 上网查询嫦娥二号和嫦娥三号绕月飞行的信息，以及嫦娥系列的其他探测器飞行和着陆的信息，了解它们各自的任务及对我国航天事业的贡献。\n\n2. 探讨我国第一个月球软着陆的无人登月探测器登月过程的关键步骤，估测月球对登月探测器的冲击力。\n\n3. 查阅我国航天事业发展历史和现状的资料，畅想我国航天事业发展的未来，写一篇小论文。\n\n# 【案例评析】\n\n本案例以我国探月工程的里程碑嫦娥一号成功发射为情境素材，通过精心设计的系列问题和围绕问题解决开展的自主学习活动，激发学生的学习动机和探究欲望，促进学生物理学科核心素养的全面发展。\n\n活动的设计从学生原有的认识入手，以学生的认知发展过程为主线，用基于现代信息技术的仿真实验作支撑，在教师适时、适度的指导下，让学生一步步经历从简单到复杂的问题解决过程，逐步发展相应的物理学科核心素养。课前让学生观看“嫦娥奔月”的视频，重温我国古代的飞天梦，通过小组讨论交流，发表自己的感受，激发学生的学习动机，提出需要探究的问题。接着观看嫦娥一号发射的视频，在表格中记录相关数据，培养学生通过视频获取信息的能力，为下一步开展探究作准备。\n\n接下来的探究过程围绕嫦娥一号发射过程中的三个核心问题展开。\n\n第一个问题：嫦娥一号如何发射升空？这个问题的解决借鉴了物理学史上牛顿的思路，首先从学生熟悉的抛体运动入手，通过仿真实验和小组讨论拓展学生思维，发展学生的运动和相互作用观念，将地面和天上的运动联系起来，综合运用已学过的圆周运动、牛顿运动定律和万有引力定律等相关知识，计算第一宇宙速度。以嫦娥一号为例，解决了航天器如何发射升空的问题。接着自然过渡到第二个问题：嫦娥一号如何运行？解决这个问题需要学生利用观看视频获取的资料，通过小组讨论、展示交流和仿真实验，经历建构模型和检验模型的过程，发展建模能力和交流合作能力。需要指出，仿真模拟不是真实实验，本案例利用仿真模拟，一方面是因为不能做实验而采用的替代方法，另一方面体现信息技术与物理教学的整合。为了让学生认识仿真实验和真实实验的差异，专门设计了下列问题供小组讨论：仿真实验能否用来检验卫星运行规律，其可靠性如何？借此发展学生对科学本质的认识。第三个问题：嫦娥一号如何变轨？让学生通过观看视频、小组讨论等活动，应用前面建立的模型，从运动和相互作用、能量两个角度进行科学推理和论证，进一步发展物理观念和科学思维能力。课后作业设计了拓展活动，引导学生开阔视野，从探索嫦娥一号的运行规律到关注我国和人类的航天事业，进一步激发学生的探索欲望，发展他们获取信息、文字表达和创新的能力。\n\n本案例设计了大量有针对性的问题，供课堂上开展师生、生生之间的讨论与交流。教师根据学生课堂问答，及时评价学生的学习情况，有效地将日常学习评价与课堂教学融为一体。\n\n# 案例2：探究感应电流产生的条件\n\n# 【设计意图】\n\n学生在初中已学习了“闭合电路的部分导体做切割磁感线运动，则产生感应电流”，并且对“切割”印象深刻。本案例的主要目标是让学生体会“切割”并不是产生感应电流的充要条件。通过实验探究、分析归纳，从磁感应强度和磁通面积两个因素入手，自然引导出磁通量的物\n\n理概念，并得出磁通量的变化是产生感应电流的条件。\n\n# 【实验准备】\n\n1. 实验1、实验2和实验3的器材如图2所示。其中，实验3中有两块异性磁极相对的磁铁，其相对平行的空间内可看成匀强磁场；一个闭合的矩形线框（线框面积小于匀强磁场区域的面积）与一个灵敏电流计形成一个探测回路。\n\n![image](https://cdn-mineru.openxlab.org.cn/result/2025-12-20/81d3dd5d-bd1e-4e00-8562-db9712cf7342/79efbda2a1dfdaf6edffc8faaa18a06d527d56432c806c0ef5a6c4c03381ee4c.jpg)\n\n\n\n实验1\n\n\n![image](https://cdn-mineru.openxlab.org.cn/result/2025-12-20/81d3dd5d-bd1e-4e00-8562-db9712cf7342/10a1d584022d66bf90189ada393429db41754bb0ceb8dbedb79a6e88d8d15e46.jpg)\n\n\n\n实验2\n\n\n![image](https://cdn-mineru.openxlab.org.cn/result/2025-12-20/81d3dd5d-bd1e-4e00-8562-db9712cf7342/8ed46258131af52e7b925bb22b16f1fdea89f62d4af016a4ad0fe52b0f35a32e.jpg)\n\n\n\n实验3\n\n\n\n图2\n\n\n2. 用磁感线模拟（空间旋转）的方法制作圆柱形磁铁的磁感线空间分布的模型，并准备好实验4如图3所示的器材。\n\n![image](https://cdn-mineru.openxlab.org.cn/result/2025-12-20/81d3dd5d-bd1e-4e00-8562-db9712cf7342/797ae36f7231de2e0c6a28efa99876fcd10ef864c42fa3a21a7ca13b64d2525e.jpg)\n\n\n![image](https://cdn-mineru.openxlab.org.cn/result/2025-12-20/81d3dd5d-bd1e-4e00-8562-db9712cf7342/3a931579fdbee800b0c638c2da8547b5ea05b9ef99814240c19728416ac1a9da.jpg)\n\n\n\n实验4\n\n\n\n图3\n\n\n3. 将学生分成每组4~6人，组内确定每个任务的主持人（轮流做组长）。\n\n# 【探究活动设计】\n\n任务1：根据初中学习的内容，准确陈述产生感应电流的条件。\n\n要求：学生陈述后，让学生指明切割磁感线的是哪部分导体。\n\n任务2：按照图2中3个实验图进行分组实验，每组承担1个实验。\n\n要求：①设计实验方案；②按方案进行实验并记录实验现象；③对实验现象分析讨论后，归纳实验结论（填入表2中）；④每组由两位同学合作进行实验演示并讲解。\n\n任务3：根据自己组的实验与其他组的实验汇报，完成表2中的前3项。\n\n\n表 2 实验现象的记录与解释\n\n\n班级 组别 学号 姓名\n\n<table><tr><td>实验序列</td><td>产生感应电流的操作</td><td>本实验可得出的结论</td></tr><tr><td>1</td><td></td><td></td></tr><tr><td>2</td><td></td><td></td></tr><tr><td>3</td><td></td><td></td></tr><tr><td>4</td><td></td><td></td></tr><tr><td colspan=\"3\">与其他组交流后获得的启发是</td></tr><tr><td colspan=\"3\">结论:产生感应电流的条件是</td></tr></table>\n\n实验1显示：穿过闭合回路的磁场强弱变化时，回路中产生感应电流。实验2显示：闭合开关并迅速移动滑动变阻器的滑片时（或开关闭合、断开瞬间），闭合回路的磁场强弱改变，回路中产生感应电流。实验3中，当水平线框在匀强磁场区域上下移动时，线框“切割”磁感线，但线框中没有感应电流；当线框在匀强磁场中旋转或改变磁感线穿过的有效面积时，回路中产生感应电流。\n\n任务4：观察并分析解释实验4。由上述实验已知：切割磁感线不一定产生感应电流；在磁感应强度  $B$  不变、闭合回路有效面积  $S$  改变，或  $S$  不变、  $B$  改变的情况下，闭合回路皆可产生感应电流。若  $B$  与  $S$  都改变，闭合回路是否一定产生感应电流呢？\n\n实验4：演示实验——“动态”磁通量不变演示仪，如图3所示。用铁粉模拟出圆柱形磁铁中轴面的磁感线，根据其中的一组对称的磁感线做出立体的“喇叭口”模型，如图4所示。\n\n演示操作：把线圈套入圆柱形磁铁，控制活扣，使线圈紧贴着模型\n\n往下运动。\n\n实验现象：在运动过程中，穿过线圈的磁感应强度在减小，线圈面积在增大，灵敏电流计指针没有发生偏转！但在线圈套入和拿出时段，灵敏电流计指针有明显变化。\n\n![image](https://cdn-mineru.openxlab.org.cn/result/2025-12-20/81d3dd5d-bd1e-4e00-8562-db9712cf7342/e33f5f781130e0d1607c20bc98e657312b7aee2945650a43e67e2408db15c1ce.jpg)\n\n\n\n甲\n\n\n![image](https://cdn-mineru.openxlab.org.cn/result/2025-12-20/81d3dd5d-bd1e-4e00-8562-db9712cf7342/ca68c0d44d3bff87ccce10d21a921aa8f70d32989b73c477d38739747b484238.jpg)\n\n\n\n乙\n\n\n\n图4\n\n\n任务5：请各组学生针对以上实验现象讨论原因，并解释这个实验现象。完成表2中的第4项。\n\n任务6：完成以上探究后的总体结论（填入表2中）。\n\n# 【案例评析】\n\n感应电流的产生条件在初中已学过，但对条件的理解主要是“部分电路的切割”。实际上，电磁感应现象中一些不“切割”的现象也会产生感应电流，因此高中物理中要更全面地研究产生感应电流的条件，例如闭合回路的磁感应强度  $B$  变化，闭合回路的面积  $S$  变化等。但若将  $B$  变化或  $S$  变化两种情况简单概括成  $B \\cdot S$  变化，即磁通量变化，这种总结方法是不严谨的。这个案例中的实验4正是对磁通量问题的深入探索，对学生思维有较强冲击力。通过实验4我们得知，只有穿过闭合回路磁感线的条数发生变化，闭合回路中才有感应电流。\n\n本案例中，教师设计了实验记录表，引导学生将小组实验的现象与思考记录在表格中，同时在小组交流后，又引导学生对自己和同伴的学习进行反思。这些学习过程的记录就可成为学生学习过程中的档案，积累起来的档案能很好地反映学生日常学习过程中所表现出来的核心素养水平。"};

MERGE (n:CourseModule {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:1"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:1", title: "必修课程", description: "物理必修课程是全体学生必须学习的课程，是高中学生物理学科核心素养发展的共同基础；", subject: "SB0401", type: "CourseModule", applicableLevel: "OB06", contentJson: "{}"};

MERGE (n:CourseModule {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:2"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:2", title: "选择性必修课程", description: "选择性必修课程由学生根据个人需求与升学要求选择学习；", subject: "SB0401", type: "CourseModule", applicableLevel: "OB06", contentJson: "{}"};

MERGE (n:CourseModule {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3", title: "选修课程", description: "选修课程。", subject: "SB0401", type: "CourseModule", applicableLevel: "OB06", contentJson: "{}"};

MERGE (n:AcademicQuality {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:1"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:1", title: "学业质量水平1", description: "", subject: "SB0401", type: "AcademicQuality", applicableLevel: "OB06", contentJson: "{\"standard\": \"1\", \"standardRequirement\": \"1.1 能从物理学视角描述物理现象，具有对物质、运动和相互作用、能量的初步认识；有探索自然、了解自然奥秘的兴趣，知道物理学是人类对自然现象有意识的探究，需要接受实践的检验；了解物理研究与应用会涉及的基本道德与规范问题，了解科学、技术、社会及环境的关系，认识保护环境、节约资源、促进可持续发展的重要性，能为我国在科技领域的卓越成就感到自豪，具有科技强国和实现中华民族伟大复兴的责任感。\\n1.2 能在熟悉的实际情境中，应用力学、电磁学等领域的概念和规律，对物理现象进行简单分析，解释自然现象和解决实际问题；能从物理学视角提出物理问题，会运用常见的物理模型解决问题；能根据已有的科学探究方案，借助基本实验器材进行实验等方式获得证据；能通过分析和综合、推理和论证形成初步结论，分析实验中存在的误差，用所学物理学术语、符号、公式、图表等，对物理问题及其探究过程和结果进行初步的描述和分析；能使用简单直接的证据表达自己的观点，听取他人意见，判断信息的可靠性和合理性，撰写简单的科学探究报告；具有认真求证、追求真理的求实精神和实事求是的科学态度，能从物理学视角进行初步的合理质疑和创新。\"}", CJ_standard: "1", CJ_standardRequirement: "1.1 能从物理学视角描述物理现象，具有对物质、运动和相互作用、能量的初步认识；有探索自然、了解自然奥秘的兴趣，知道物理学是人类对自然现象有意识的探究，需要接受实践的检验；了解物理研究与应用会涉及的基本道德与规范问题，了解科学、技术、社会及环境的关系，认识保护环境、节约资源、促进可持续发展的重要性，能为我国在科技领域的卓越成就感到自豪，具有科技强国和实现中华民族伟大复兴的责任感。\n1.2 能在熟悉的实际情境中，应用力学、电磁学等领域的概念和规律，对物理现象进行简单分析，解释自然现象和解决实际问题；能从物理学视角提出物理问题，会运用常见的物理模型解决问题；能根据已有的科学探究方案，借助基本实验器材进行实验等方式获得证据；能通过分析和综合、推理和论证形成初步结论，分析实验中存在的误差，用所学物理学术语、符号、公式、图表等，对物理问题及其探究过程和结果进行初步的描述和分析；能使用简单直接的证据表达自己的观点，听取他人意见，判断信息的可靠性和合理性，撰写简单的科学探究报告；具有认真求证、追求真理的求实精神和实事求是的科学态度，能从物理学视角进行初步的合理质疑和创新。"};

MERGE (n:AcademicQuality {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:2"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:2", title: "学业质量水平2", description: "", subject: "SB0401", type: "AcademicQuality", applicableLevel: "OB06", contentJson: "{\"standard\": \"2\", \"standardRequirement\": \"2.1 能从物理学视角描述和分析实际情境中的物理现象，具有对物质、运动和相互作用、能量的基本认识；有较强的学习和研究物理的兴趣，认识到物理研究是建立在观察和实验基础上的一项创造性工作；知道物理研究与应用应考虑道德与规范的要求，认识科学、技术、社会及环境的关系，有保护环境、节约资源、促进可持续发展的意识，能为我国在科技领域的卓越成就感到自豪，具有科技强国和实现中华民族伟大复兴的责任感和使命感。\\n2.2 能在熟悉的实际情境中，应用力学、电磁学、光学、热学及原子物理学等领域的概念和规律，对物理现象进行描述与分析，解释自然现象和解决实际问题；能从物理学视角提出可探究的物理问题，选用恰当的物理模型作出猜想和假设；能在他人的帮助下制订可行的科学探究方案，使用基本的实验器材，通过实验等方式获得合理证据；能运用分析和综合、推理和论证找到其中的联系，发现其中的特点，合理分析实验中存在的误差，得出结论并进行解释；能评估证据的可靠性，恰当使用证据表达自己的观点，规范运用物理学术语、符号、公式、图表等陈述和交流科学探究过程和结果，撰写科学探究报告；具有认真求证、追求真理的求实精神和实事求是的科学态度，能在合作中尊重他人的意见，从物理学视角判断信息的可靠性和合理性，对已有观点提出质疑，从不同角度思考物理问题。\"}", CJ_standard: "2", CJ_standardRequirement: "2.1 能从物理学视角描述和分析实际情境中的物理现象，具有对物质、运动和相互作用、能量的基本认识；有较强的学习和研究物理的兴趣，认识到物理研究是建立在观察和实验基础上的一项创造性工作；知道物理研究与应用应考虑道德与规范的要求，认识科学、技术、社会及环境的关系，有保护环境、节约资源、促进可持续发展的意识，能为我国在科技领域的卓越成就感到自豪，具有科技强国和实现中华民族伟大复兴的责任感和使命感。\n2.2 能在熟悉的实际情境中，应用力学、电磁学、光学、热学及原子物理学等领域的概念和规律，对物理现象进行描述与分析，解释自然现象和解决实际问题；能从物理学视角提出可探究的物理问题，选用恰当的物理模型作出猜想和假设；能在他人的帮助下制订可行的科学探究方案，使用基本的实验器材，通过实验等方式获得合理证据；能运用分析和综合、推理和论证找到其中的联系，发现其中的特点，合理分析实验中存在的误差，得出结论并进行解释；能评估证据的可靠性，恰当使用证据表达自己的观点，规范运用物理学术语、符号、公式、图表等陈述和交流科学探究过程和结果，撰写科学探究报告；具有认真求证、追求真理的求实精神和实事求是的科学态度，能在合作中尊重他人的意见，从物理学视角判断信息的可靠性和合理性，对已有观点提出质疑，从不同角度思考物理问题。"};

MERGE (n:AcademicQuality {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:3"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:3", title: "学业质量水平3", description: "", subject: "SB0401", type: "AcademicQuality", applicableLevel: "OB06", contentJson: "{\"standard\": \"3\", \"standardRequirement\": \"3.1 能从物理学视角解释实际情境中的物理现象，具有对物质、运动和相互作用、能量的清晰认识；有学习和研究物理的内在动机，认识到物理研究是一种对自然现象进行抽象的创造性工作；能依据普遍接受的道德与规范认识和评价物理研究与应用，理解科学、技术、社会及环境的关系，有保护环境、节约资源、促进可持续发展的行为，为我国在科技领域的卓越成就感到光荣和自豪，具有科技强国和全面推进中华民族伟大复兴的责任感和使命感。\\n3.2 能在实际情境中，综合应用力学、电磁学、光学、热学及原子物理学等领域的概念和规律，科学地解释自然现象，熟练地解决实际问题；能从物理学视角提出并准确表述可探究的物理问题，根据问题情境和物理模型的关键特征，将研究对象转换成物理模型，并进行分析，作出有依据的猜想和假设；能制订科学探究方案，选用合适的实验器材规范地进行实验操作，准确地获得证据；能熟练地运用分析和综合、推理和论证找出其中的关系，发现其中的规律，准确分析实验中存在的误差，得出合理结论并进行解释；能准确运用物理学术语、符号、公式、图表等对科学探究过程与结果进行交流和反思，撰写完整的科学探究报告；具有认真求证、追求真理、实事求是的科学精神，既能坚持观点又能吸取他人意见修正错误，对信息进行准确判断，对某些已有结论提出有证据的质疑，从不同角度分析解决物理问题。\"}", CJ_standard: "3", CJ_standardRequirement: "3.1 能从物理学视角解释实际情境中的物理现象，具有对物质、运动和相互作用、能量的清晰认识；有学习和研究物理的内在动机，认识到物理研究是一种对自然现象进行抽象的创造性工作；能依据普遍接受的道德与规范认识和评价物理研究与应用，理解科学、技术、社会及环境的关系，有保护环境、节约资源、促进可持续发展的行为，为我国在科技领域的卓越成就感到光荣和自豪，具有科技强国和全面推进中华民族伟大复兴的责任感和使命感。\n3.2 能在实际情境中，综合应用力学、电磁学、光学、热学及原子物理学等领域的概念和规律，科学地解释自然现象，熟练地解决实际问题；能从物理学视角提出并准确表述可探究的物理问题，根据问题情境和物理模型的关键特征，将研究对象转换成物理模型，并进行分析，作出有依据的猜想和假设；能制订科学探究方案，选用合适的实验器材规范地进行实验操作，准确地获得证据；能熟练地运用分析和综合、推理和论证找出其中的关系，发现其中的规律，准确分析实验中存在的误差，得出合理结论并进行解释；能准确运用物理学术语、符号、公式、图表等对科学探究过程与结果进行交流和反思，撰写完整的科学探究报告；具有认真求证、追求真理、实事求是的科学精神，既能坚持观点又能吸取他人意见修正错误，对信息进行准确判断，对某些已有结论提出有证据的质疑，从不同角度分析解决物理问题。"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:1"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:1", title: "序言 物理学：研究物质及其运动规律的科学", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:2"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:2", title: "第一章 运动的描述", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:3"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:3", title: "第二章 匀变速直线运动的研究", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:4"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:4", title: "第三章 相互作用——力", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:5"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:5", title: "第四章 运动和力的关系", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:6"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:6", title: "课题研究", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:7"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:7", title: "学生实验", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第一册\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第一册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:8"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:8", title: "第五章 抛体运动", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9", title: "第六章 圆周运动", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:10"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:10", title: "第七章 万有引力与宇宙航行", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:11"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:11", title: "第八章 机械能守恒定律", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:12"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:12", title: "课题研究", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"人教版\", \"volume\": \"必修 第二册\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "人教版", CJ_volume: "必修 第二册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:13"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:13", title: "第九章 静电场及其应用", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"必修 第三册\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "必修 第三册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:14"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:14", title: "第十章 静电场中的能量", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"必修 第三册\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "必修 第三册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:15"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:15", title: "第十一章 电路及其应用", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"必修 第三册\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "必修 第三册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:16"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:16", title: "第十二章 电能 能量守恒定律", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"必修 第三册\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "必修 第三册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17", title: "第十三章 电磁感应与电磁波初步", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"必修 第三册\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "必修 第三册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:18"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:18", title: "课题研究", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"必修 第三册\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "必修 第三册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:19"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:19", title: "第一章 动量守恒定律", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第一册\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第一册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:20"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:20", title: "第二章 机械振动", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第一册\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第一册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:21"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:21", title: "第三章 机械波", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第一册\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第一册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:22"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:22", title: "第四章 光", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第一册\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第一册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:23"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:23", title: "课题研究", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第一册\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第一册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:24"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:24", title: "第一章 安培力与洛伦兹力", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第二册\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "选择性必修 第二册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:25"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:25", title: "第二章 电磁感应", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第二册\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "选择性必修 第二册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:26"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:26", title: "第三章 交变电流", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第二册\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "选择性必修 第二册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:27"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:27", title: "第四章 电磁振荡与电磁波", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第二册\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "选择性必修 第二册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:28"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:28", title: "第五章 传感器", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第二册\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "选择性必修 第二册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:29"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:29", title: "课题研究", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第二册\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "人教版", CJ_volume: "选择性必修 第二册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:30"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:30", title: "第一章 分子动理论", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:31"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:31", title: "第二章 气体、固体和液体", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:32"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:32", title: "第三章 热力学定律", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:33"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:33", title: "第四章 原子结构和波粒二象性", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:34"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:34", title: "第五章 原子核", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:35"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:35", title: "课题研究", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册"};

MERGE (n:Chapter {identifier: "urn:jy:physics:SB0401:OB06:Chapter:36"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Chapter:36", title: "高考复习", description: "", subject: "SB0401", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"人教版\", \"volume\": \"选择性必修 第三册\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "人教版", CJ_volume: "选择性必修 第三册"};

MERGE (n:Experiment {identifier: "urn:jy:physics:SB0401:OB06:Experiment:1"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Experiment:1", title: "做直线运动物体的瞬时速度", description: "测量做直线运动物体的瞬时速度", subject: "SB0401", type: "Experiment", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:physics:SB0401:OB06:Theme:9\", \"themeTitle\": \"选修3\", \"experimentText\": \"测量做直线运动物体的瞬时速度\", \"fromSection\": \"实验探究\"}", CJ_theme: "urn:jy:physics:SB0401:OB06:Theme:9", CJ_themeTitle: "选修3", CJ_experimentText: "测量做直线运动物体的瞬时速度", CJ_fromSection: "实验探究"};

MERGE (n:Experiment {identifier: "urn:jy:physics:SB0401:OB06:Experiment:2"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Experiment:2", title: "弹簧弹力与形变量的关系", description: "探究弹簧弹力与形变量的关系", subject: "SB0401", type: "Experiment", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:physics:SB0401:OB06:Theme:9\", \"themeTitle\": \"选修3\", \"experimentText\": \"探究弹簧弹力与形变量的关系\", \"fromSection\": \"实验探究\"}", CJ_theme: "urn:jy:physics:SB0401:OB06:Theme:9", CJ_themeTitle: "选修3", CJ_experimentText: "探究弹簧弹力与形变量的关系", CJ_fromSection: "实验探究"};

MERGE (n:Experiment {identifier: "urn:jy:physics:SB0401:OB06:Experiment:3"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Experiment:3", title: "两个互成角度的力的合成规律", description: "探究两个互成角度的力的合成规律", subject: "SB0401", type: "Experiment", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:physics:SB0401:OB06:Theme:9\", \"themeTitle\": \"选修3\", \"experimentText\": \"探究两个互成角度的力的合成规律\", \"fromSection\": \"实验探究\"}", CJ_theme: "urn:jy:physics:SB0401:OB06:Theme:9", CJ_themeTitle: "选修3", CJ_experimentText: "探究两个互成角度的力的合成规律", CJ_fromSection: "实验探究"};

MERGE (n:Experiment {identifier: "urn:jy:physics:SB0401:OB06:Experiment:4"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Experiment:4", title: "加速度与物体受力、物体质量的关系", description: "探究加速度与物体受力、物体质量的关系", subject: "SB0401", type: "Experiment", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:physics:SB0401:OB06:Theme:9\", \"themeTitle\": \"选修3\", \"experimentText\": \"探究加速度与物体受力、物体质量的关系\", \"fromSection\": \"实验探究\"}", CJ_theme: "urn:jy:physics:SB0401:OB06:Theme:9", CJ_themeTitle: "选修3", CJ_experimentText: "探究加速度与物体受力、物体质量的关系", CJ_fromSection: "实验探究"};

MERGE (n:Experiment {identifier: "urn:jy:physics:SB0401:OB06:Experiment:5"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Experiment:5", title: "机械能守恒定律", description: "验证机械能守恒定律", subject: "SB0401", type: "Experiment", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:physics:SB0401:OB06:Theme:9\", \"themeTitle\": \"选修3\", \"experimentText\": \"验证机械能守恒定律\", \"fromSection\": \"实验探究\"}", CJ_theme: "urn:jy:physics:SB0401:OB06:Theme:9", CJ_themeTitle: "选修3", CJ_experimentText: "验证机械能守恒定律", CJ_fromSection: "实验探究"};

MERGE (n:Experiment {identifier: "urn:jy:physics:SB0401:OB06:Experiment:6"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Experiment:6", title: "平抛运动的特点", description: "探究平抛运动的特点", subject: "SB0401", type: "Experiment", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:physics:SB0401:OB06:Theme:9\", \"themeTitle\": \"选修3\", \"experimentText\": \"探究平抛运动的特点\", \"fromSection\": \"实验探究\"}", CJ_theme: "urn:jy:physics:SB0401:OB06:Theme:9", CJ_themeTitle: "选修3", CJ_experimentText: "探究平抛运动的特点", CJ_fromSection: "实验探究"};

MERGE (n:Experiment {identifier: "urn:jy:physics:SB0401:OB06:Experiment:7"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Experiment:7", title: "向心力大小与半径、角速度、质量的关系", description: "探究向心力大小与半径、角速度、质量的关系", subject: "SB0401", type: "Experiment", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:physics:SB0401:OB06:Theme:9\", \"themeTitle\": \"选修3\", \"experimentText\": \"探究向心力大小与半径、角速度、质量的关系\", \"fromSection\": \"实验探究\"}", CJ_theme: "urn:jy:physics:SB0401:OB06:Theme:9", CJ_themeTitle: "选修3", CJ_experimentText: "探究向心力大小与半径、角速度、质量的关系", CJ_fromSection: "实验探究"};

MERGE (n:Experiment {identifier: "urn:jy:physics:SB0401:OB06:Experiment:8"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Experiment:8", title: "电容器的充、放电现象", description: "观察电容器的充、放电现象", subject: "SB0401", type: "Experiment", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:physics:SB0401:OB06:Theme:9\", \"themeTitle\": \"选修3\", \"experimentText\": \"观察电容器的充、放电现象\", \"fromSection\": \"实验探究\"}", CJ_theme: "urn:jy:physics:SB0401:OB06:Theme:9", CJ_themeTitle: "选修3", CJ_experimentText: "观察电容器的充、放电现象", CJ_fromSection: "实验探究"};

MERGE (n:Experiment {identifier: "urn:jy:physics:SB0401:OB06:Experiment:9"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Experiment:9", title: "长度的测量及其测量工具的选用", description: "长度的测量及其测量工具的选用", subject: "SB0401", type: "Experiment", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:physics:SB0401:OB06:Theme:9\", \"themeTitle\": \"选修3\", \"experimentText\": \"长度的测量及其测量工具的选用\", \"fromSection\": \"实验探究\"}", CJ_theme: "urn:jy:physics:SB0401:OB06:Theme:9", CJ_themeTitle: "选修3", CJ_experimentText: "长度的测量及其测量工具的选用", CJ_fromSection: "实验探究"};

MERGE (n:Experiment {identifier: "urn:jy:physics:SB0401:OB06:Experiment:10"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Experiment:10", title: "金属丝的电阻率", description: "测量金属丝的电阻率", subject: "SB0401", type: "Experiment", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:physics:SB0401:OB06:Theme:9\", \"themeTitle\": \"选修3\", \"experimentText\": \"测量金属丝的电阻率\", \"fromSection\": \"实验探究\"}", CJ_theme: "urn:jy:physics:SB0401:OB06:Theme:9", CJ_themeTitle: "选修3", CJ_experimentText: "测量金属丝的电阻率", CJ_fromSection: "实验探究"};

MERGE (n:Experiment {identifier: "urn:jy:physics:SB0401:OB06:Experiment:11"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Experiment:11", title: "多用电表测量电学中的物理量", description: "用多用电表测量电学中的物理量", subject: "SB0401", type: "Experiment", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:physics:SB0401:OB06:Theme:9\", \"themeTitle\": \"选修3\", \"experimentText\": \"用多用电表测量电学中的物理量\", \"fromSection\": \"实验探究\"}", CJ_theme: "urn:jy:physics:SB0401:OB06:Theme:9", CJ_themeTitle: "选修3", CJ_experimentText: "用多用电表测量电学中的物理量", CJ_fromSection: "实验探究"};

MERGE (n:Experiment {identifier: "urn:jy:physics:SB0401:OB06:Experiment:12"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Experiment:12", title: "电源的电动势和内阻", description: "测量电源的电动势和内阻", subject: "SB0401", type: "Experiment", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:physics:SB0401:OB06:Theme:9\", \"themeTitle\": \"选修3\", \"experimentText\": \"测量电源的电动势和内阻\", \"fromSection\": \"实验探究\"}", CJ_theme: "urn:jy:physics:SB0401:OB06:Theme:9", CJ_themeTitle: "选修3", CJ_experimentText: "测量电源的电动势和内阻", CJ_fromSection: "实验探究"};

MERGE (n:Experiment {identifier: "urn:jy:physics:SB0401:OB06:Experiment:13"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Experiment:13", title: "动量守恒定律", description: "验证动量守恒定律", subject: "SB0401", type: "Experiment", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:physics:SB0401:OB06:Theme:9\", \"themeTitle\": \"选修3\", \"experimentText\": \"验证动量守恒定律\", \"fromSection\": \"实验探究\"}", CJ_theme: "urn:jy:physics:SB0401:OB06:Theme:9", CJ_themeTitle: "选修3", CJ_experimentText: "验证动量守恒定律", CJ_fromSection: "实验探究"};

MERGE (n:Experiment {identifier: "urn:jy:physics:SB0401:OB06:Experiment:14"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Experiment:14", title: "单摆测量重力加速度的大小", description: "用单摆测量重力加速度的大小", subject: "SB0401", type: "Experiment", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:physics:SB0401:OB06:Theme:9\", \"themeTitle\": \"选修3\", \"experimentText\": \"用单摆测量重力加速度的大小\", \"fromSection\": \"实验探究\"}", CJ_theme: "urn:jy:physics:SB0401:OB06:Theme:9", CJ_themeTitle: "选修3", CJ_experimentText: "用单摆测量重力加速度的大小", CJ_fromSection: "实验探究"};

MERGE (n:Experiment {identifier: "urn:jy:physics:SB0401:OB06:Experiment:15"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Experiment:15", title: "玻璃的折射率", description: "测量玻璃的折射率", subject: "SB0401", type: "Experiment", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:physics:SB0401:OB06:Theme:9\", \"themeTitle\": \"选修3\", \"experimentText\": \"测量玻璃的折射率\", \"fromSection\": \"实验探究\"}", CJ_theme: "urn:jy:physics:SB0401:OB06:Theme:9", CJ_themeTitle: "选修3", CJ_experimentText: "测量玻璃的折射率", CJ_fromSection: "实验探究"};

MERGE (n:Experiment {identifier: "urn:jy:physics:SB0401:OB06:Experiment:16"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Experiment:16", title: "双缝干涉实验测量光的波长", description: "用双缝干涉实验测量光的波长", subject: "SB0401", type: "Experiment", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:physics:SB0401:OB06:Theme:9\", \"themeTitle\": \"选修3\", \"experimentText\": \"用双缝干涉实验测量光的波长\", \"fromSection\": \"实验探究\"}", CJ_theme: "urn:jy:physics:SB0401:OB06:Theme:9", CJ_themeTitle: "选修3", CJ_experimentText: "用双缝干涉实验测量光的波长", CJ_fromSection: "实验探究"};

MERGE (n:Experiment {identifier: "urn:jy:physics:SB0401:OB06:Experiment:17"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Experiment:17", title: "影响感应电流方向的因素", description: "探究影响感应电流方向的因素", subject: "SB0401", type: "Experiment", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:physics:SB0401:OB06:Theme:9\", \"themeTitle\": \"选修3\", \"experimentText\": \"探究影响感应电流方向的因素\", \"fromSection\": \"实验探究\"}", CJ_theme: "urn:jy:physics:SB0401:OB06:Theme:9", CJ_themeTitle: "选修3", CJ_experimentText: "探究影响感应电流方向的因素", CJ_fromSection: "实验探究"};

MERGE (n:Experiment {identifier: "urn:jy:physics:SB0401:OB06:Experiment:18"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Experiment:18", title: "变压器原、副线圈电压与匝数的关系", description: "探究变压器原、副线圈电压与匝数的关系", subject: "SB0401", type: "Experiment", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:physics:SB0401:OB06:Theme:9\", \"themeTitle\": \"选修3\", \"experimentText\": \"探究变压器原、副线圈电压与匝数的关系\", \"fromSection\": \"实验探究\"}", CJ_theme: "urn:jy:physics:SB0401:OB06:Theme:9", CJ_themeTitle: "选修3", CJ_experimentText: "探究变压器原、副线圈电压与匝数的关系", CJ_fromSection: "实验探究"};

MERGE (n:Experiment {identifier: "urn:jy:physics:SB0401:OB06:Experiment:19"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Experiment:19", title: "传感器制作简单的自动控制装置", description: "利用传感器制作简单的自动控制装置", subject: "SB0401", type: "Experiment", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:physics:SB0401:OB06:Theme:9\", \"themeTitle\": \"选修3\", \"experimentText\": \"利用传感器制作简单的自动控制装置\", \"fromSection\": \"实验探究\"}", CJ_theme: "urn:jy:physics:SB0401:OB06:Theme:9", CJ_themeTitle: "选修3", CJ_experimentText: "利用传感器制作简单的自动控制装置", CJ_fromSection: "实验探究"};

MERGE (n:Experiment {identifier: "urn:jy:physics:SB0401:OB06:Experiment:20"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Experiment:20", title: "等温情况下一定质量气体压强与体积的关系", description: "探究等温情况下一定质量气体压强与体积的关系", subject: "SB0401", type: "Experiment", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:physics:SB0401:OB06:Theme:9\", \"themeTitle\": \"选修3\", \"experimentText\": \"探究等温情况下一定质量气体压强与体积的关系\", \"fromSection\": \"实验探究\"}", CJ_theme: "urn:jy:physics:SB0401:OB06:Theme:9", CJ_themeTitle: "选修3", CJ_experimentText: "探究等温情况下一定质量气体压强与体积的关系", CJ_fromSection: "实验探究"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:1"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:1", title: "近代实验科学产生的背景；实验对物理学发展的推动作用", description: "了解近代实验科学产生的背景，认识实验对物理学发展的推动作用。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:21\", \"themeL2Key\": \"1.1\", \"requirementIndex\": \"1.1.1\", \"requirementText\": \"了解近代实验科学产生的背景，认识实验对物理学发展的推动作用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:21", CJ_themeL2Key: "1.1", CJ_requirementIndex: "1.1.1", CJ_requirementText: "了解近代实验科学产生的背景，认识实验对物理学发展的推动作用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:2"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:2", title: "经历质点模型的建构过程；质点的含义。知道将物体抽象为质点", description: "经历质点模型的建构过程，了解质点的含义。知道将物体抽象为质点的条件，能将特定实际情境中的物体抽象成质点。体会建构物理模型的思维方式，认识物理模型在探索自然规律中的作用。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:21\", \"themeL2Key\": \"1.1\", \"requirementIndex\": \"1.1.2\", \"requirementText\": \"经历质点模型的建构过程，了解质点的含义。知道将物体抽象为质点的条件，能将特定实际情境中的物体抽象成质点。体会建构物理模型的思维方式，认识物理模型在探索自然规律中的作用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:21", CJ_themeL2Key: "1.1", CJ_requirementIndex: "1.1.2", CJ_requirementText: "经历质点模型的建构过程，了解质点的含义。知道将物体抽象为质点的条件，能将特定实际情境中的物体抽象成质点。体会建构物理模型的思维方式，认识物理模型在探索自然规律中的作用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:3"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:3", title: "位移、速度和加速度。通过实验；匀变速直线运动的特点", description: "理解位移、速度和加速度。通过实验，探究匀变速直线运动的特点，能用公式、图像等方法描述匀变速直线运动。理解匀变速直线运动的规律，能运用其解决实际问题，体会科学思维中的抽象方法和物理问题研究中的极限方法。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:21\", \"themeL2Key\": \"1.1\", \"requirementIndex\": \"1.1.3\", \"requirementText\": \"理解位移、速度和加速度。通过实验，探究匀变速直线运动的特点，能用公式、图像等方法描述匀变速直线运动。理解匀变速直线运动的规律，能运用其解决实际问题，体会科学思维中的抽象方法和物理问题研究中的极限方法。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:21", CJ_themeL2Key: "1.1", CJ_requirementIndex: "1.1.3", CJ_requirementText: "理解位移、速度和加速度。通过实验，探究匀变速直线运动的特点，能用公式、图像等方法描述匀变速直线运动。理解匀变速直线运动的规律，能运用其解决实际问题，体会科学思维中的抽象方法和物理问题研究中的极限方法。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:4"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:4", title: "实验；自由落体运动规律。结合物理学史的相关内容", description: "通过实验，认识自由落体运动规律。结合物理学史的相关内容，认识物理实验与科学推理在物理学研究中的作用。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:21\", \"themeL2Key\": \"1.1\", \"requirementIndex\": \"1.1.4\", \"requirementText\": \"通过实验，认识自由落体运动规律。结合物理学史的相关内容，认识物理实验与科学推理在物理学研究中的作用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:21", CJ_themeL2Key: "1.1", CJ_requirementIndex: "1.1.4", CJ_requirementText: "通过实验，认识自由落体运动规律。结合物理学史的相关内容，认识物理实验与科学推理在物理学研究中的作用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:5"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:5", title: "重力、弹力与摩擦力。通过实验；胡克定律。知道滑动摩擦和静", description: "认识重力、弹力与摩擦力。通过实验，了解胡克定律。知道滑动摩擦和静摩擦现象，能用动摩擦因数计算滑动摩擦力的大小。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"requirementIndex\": \"1.2.1\", \"requirementText\": \"认识重力、弹力与摩擦力。通过实验，了解胡克定律。知道滑动摩擦和静摩擦现象，能用动摩擦因数计算滑动摩擦力的大小。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_requirementIndex: "1.2.1", CJ_requirementText: "认识重力、弹力与摩擦力。通过实验，了解胡克定律。知道滑动摩擦和静摩擦现象，能用动摩擦因数计算滑动摩擦力的大小。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:6"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:6", title: "实验；力的合成与分解。知道矢量和标量。能用共点力的平衡条", description: "通过实验，了解力的合成与分解。知道矢量和标量。能用共点力的平衡条件分析生产生活中的问题。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"requirementIndex\": \"1.2.2\", \"requirementText\": \"通过实验，了解力的合成与分解。知道矢量和标量。能用共点力的平衡条件分析生产生活中的问题。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_requirementIndex: "1.2.2", CJ_requirementText: "通过实验，了解力的合成与分解。知道矢量和标量。能用共点力的平衡条件分析生产生活中的问题。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:7"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:7", title: "实验；物体运动的加速度与物体受力、物体质量的关系。理解牛", description: "通过实验，探究物体运动的加速度与物体受力、物体质量的关系。理解牛顿运动定律，能用牛顿运动定律解释生产生活中的有关现象，解决有关问题。通过实验，认识超重和失重现象。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"requirementIndex\": \"1.2.3\", \"requirementText\": \"通过实验，探究物体运动的加速度与物体受力、物体质量的关系。理解牛顿运动定律，能用牛顿运动定律解释生产生活中的有关现象，解决有关问题。通过实验，认识超重和失重现象。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_requirementIndex: "1.2.3", CJ_requirementText: "通过实验，探究物体运动的加速度与物体受力、物体质量的关系。理解牛顿运动定律，能用牛顿运动定律解释生产生活中的有关现象，解决有关问题。通过实验，认识超重和失重现象。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:8"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:8", title: "国际单位制中的力学单位。了解单位制在物理学中的重要意义", description: "知道国际单位制中的力学单位。了解单位制在物理学中的重要意义。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"requirementIndex\": \"1.2.4\", \"requirementText\": \"知道国际单位制中的力学单位。了解单位制在物理学中的重要意义。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_requirementIndex: "1.2.4", CJ_requirementText: "知道国际单位制中的力学单位。了解单位制在物理学中的重要意义。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:9"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:9", title: "功和功率。了解生产生活中常见机械的功率大小及其意义", description: "理解功和功率。了解生产生活中常见机械的功率大小及其意义。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:24\", \"themeL2Key\": \"2.1\", \"requirementIndex\": \"2.1.1\", \"requirementText\": \"理解功和功率。了解生产生活中常见机械的功率大小及其意义。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:24", CJ_themeL2Key: "2.1", CJ_requirementIndex: "2.1.1", CJ_requirementText: "理解功和功率。了解生产生活中常见机械的功率大小及其意义。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:10"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:10", title: "动能和动能定理。能用动能定理解释生产生活中的有关", description: "理解动能和动能定理。能用动能定理解释生产生活中的有关", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:24\", \"themeL2Key\": \"2.1\", \"requirementIndex\": \"2.1.2\", \"requirementText\": \"理解动能和动能定理。能用动能定理解释生产生活中的有关\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:24", CJ_themeL2Key: "2.1", CJ_requirementIndex: "2.1.2", CJ_requirementText: "理解动能和动能定理。能用动能定理解释生产生活中的有关"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:11"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:11", title: "重力势能；重力势能的变化与重力做功的关系。定性了解弹性势", description: "理解重力势能，知道重力势能的变化与重力做功的关系。定性了解弹性势能。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:24\", \"themeL2Key\": \"2.1\", \"requirementIndex\": \"2.1.3\", \"requirementText\": \"理解重力势能，知道重力势能的变化与重力做功的关系。定性了解弹性势能。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:24", CJ_themeL2Key: "2.1", CJ_requirementIndex: "2.1.3", CJ_requirementText: "理解重力势能，知道重力势能的变化与重力做功的关系。定性了解弹性势能。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:12"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:12", title: "实验；验证机械能守恒定律。理解机械能守恒定律", description: "通过实验，验证机械能守恒定律。理解机械能守恒定律，体会守恒观念对认识物理规律的重要性。能用机械能守恒定律分析生产生活中的有关问题。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:24\", \"themeL2Key\": \"2.1\", \"requirementIndex\": \"2.1.4\", \"requirementText\": \"通过实验，验证机械能守恒定律。理解机械能守恒定律，体会守恒观念对认识物理规律的重要性。能用机械能守恒定律分析生产生活中的有关问题。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:24", CJ_themeL2Key: "2.1", CJ_requirementIndex: "2.1.4", CJ_requirementText: "通过实验，验证机械能守恒定律。理解机械能守恒定律，体会守恒观念对认识物理规律的重要性。能用机械能守恒定律分析生产生活中的有关问题。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:13"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:13", title: "实验；曲线运动", description: "通过实验，了解曲线运动，知道物体做曲线运动的条件。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"requirementIndex\": \"2.2.1\", \"requirementText\": \"通过实验，了解曲线运动，知道物体做曲线运动的条件。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_requirementIndex: "2.2.1", CJ_requirementText: "通过实验，了解曲线运动，知道物体做曲线运动的条件。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:14"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:14", title: "实验；并认识平抛运动的规律。会用运动合成与分解的方法分析", description: "通过实验，探究并认识平抛运动的规律。会用运动合成与分解的方法分析平抛运动。体会将复杂运动分解为简单运动的物理思想。能分析生产生活中的抛体运动。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"requirementIndex\": \"2.2.2\", \"requirementText\": \"通过实验，探究并认识平抛运动的规律。会用运动合成与分解的方法分析平抛运动。体会将复杂运动分解为简单运动的物理思想。能分析生产生活中的抛体运动。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_requirementIndex: "2.2.2", CJ_requirementText: "通过实验，探究并认识平抛运动的规律。会用运动合成与分解的方法分析平抛运动。体会将复杂运动分解为简单运动的物理思想。能分析生产生活中的抛体运动。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:15"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:15", title: "用线速度、角速度、周期描述匀速圆周运动。知道匀速圆周运动", description: "会用线速度、角速度、周期描述匀速圆周运动。知道匀速圆周运动向心加速度的大小和方向。通过实验，探究并了解匀速圆周运动向心力大小与半径、角速度、质量的关系。能用牛顿第二定律分析匀速圆周运动的向心力。了解生产生活中的离心现象及其产生的原因。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"requirementIndex\": \"2.2.3\", \"requirementText\": \"会用线速度、角速度、周期描述匀速圆周运动。知道匀速圆周运动向心加速度的大小和方向。通过实验，探究并了解匀速圆周运动向心力大小与半径、角速度、质量的关系。能用牛顿第二定律分析匀速圆周运动的向心力。了解生产生活中的离心现象及其产生的原因。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_requirementIndex: "2.2.3", CJ_requirementText: "会用线速度、角速度、周期描述匀速圆周运动。知道匀速圆周运动向心加速度的大小和方向。通过实验，探究并了解匀速圆周运动向心力大小与半径、角速度、质量的关系。能用牛顿第二定律分析匀速圆周运动的向心力。了解生产生活中的离心现象及其产生的原因。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:16"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:16", title: "史实；万有引力定律的发现过程。知道万有引力定律。认识发现", description: "通过史实，了解万有引力定律的发现过程。知道万有引力定律。认识发现万有引力定律的重要意义。认识科学定律对人类探索未知世界的作用。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"requirementIndex\": \"2.2.4\", \"requirementText\": \"通过史实，了解万有引力定律的发现过程。知道万有引力定律。认识发现万有引力定律的重要意义。认识科学定律对人类探索未知世界的作用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_requirementIndex: "2.2.4", CJ_requirementText: "通过史实，了解万有引力定律的发现过程。知道万有引力定律。认识发现万有引力定律的重要意义。认识科学定律对人类探索未知世界的作用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:17"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:17", title: "计算人造地球卫星的环绕速度。知道第二宇宙速度和第三宇宙速", description: "会计算人造地球卫星的环绕速度。知道第二宇宙速度和第三宇宙速度。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"requirementIndex\": \"2.2.5\", \"requirementText\": \"会计算人造地球卫星的环绕速度。知道第二宇宙速度和第三宇宙速度。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_requirementIndex: "2.2.5", CJ_requirementText: "会计算人造地球卫星的环绕速度。知道第二宇宙速度和第三宇宙速度。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:18"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:18", title: "牛顿力学的局限性；体会人类对自然界的探索是不断深入的", description: "知道牛顿力学的局限性，体会人类对自然界的探索是不断深入的。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:26\", \"themeL2Key\": \"2.3\", \"requirementIndex\": \"2.3.1\", \"requirementText\": \"知道牛顿力学的局限性，体会人类对自然界的探索是不断深入的。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:26", CJ_themeL2Key: "2.3", CJ_requirementIndex: "2.3.1", CJ_requirementText: "知道牛顿力学的局限性，体会人类对自然界的探索是不断深入的。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:19"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:19", title: "初步了解相对论时空观", description: "初步了解相对论时空观", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:26\", \"themeL2Key\": \"2.3\", \"requirementIndex\": \"2.3.2\", \"requirementText\": \"初步了解相对论时空观\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:26", CJ_themeL2Key: "2.3", CJ_requirementIndex: "2.3.2", CJ_requirementText: "初步了解相对论时空观"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:20"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:20", title: "关注宇宙起源和演化的研究进展", description: "关注宇宙起源和演化的研究进展", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:26\", \"themeL2Key\": \"2.3\", \"requirementIndex\": \"2.3.3\", \"requirementText\": \"关注宇宙起源和演化的研究进展\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:26", CJ_themeL2Key: "2.3", CJ_requirementIndex: "2.3.3", CJ_requirementText: "关注宇宙起源和演化的研究进展"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:21"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:21", title: "实验；静电现象。能用原子结构模型和电荷守恒的知识分析静电", description: "通过实验，了解静电现象。能用原子结构模型和电荷守恒的知识分析静电现象。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"requirementIndex\": \"3.1.1\", \"requirementText\": \"通过实验，了解静电现象。能用原子结构模型和电荷守恒的知识分析静电现象。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_requirementIndex: "3.1.1", CJ_requirementText: "通过实验，了解静电现象。能用原子结构模型和电荷守恒的知识分析静电现象。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:22"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:22", title: "点电荷模型。知道两个点电荷间相互作用的规律。体会探究库仑", description: "知道点电荷模型。知道两个点电荷间相互作用的规律。体会探究库仑定律过程中的科学思想和方法。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"requirementIndex\": \"3.1.2\", \"requirementText\": \"知道点电荷模型。知道两个点电荷间相互作用的规律。体会探究库仑定律过程中的科学思想和方法。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_requirementIndex: "3.1.2", CJ_requirementText: "知道点电荷模型。知道两个点电荷间相互作用的规律。体会探究库仑定律过程中的科学思想和方法。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:23"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:23", title: "电场是一种物质。了解电场强度；体会用物理量之比定义新物理", description: "知道电场是一种物质。了解电场强度，体会用物理量之比定义新物理量的方法。会用电场线描述电场。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"requirementIndex\": \"3.1.3\", \"requirementText\": \"知道电场是一种物质。了解电场强度，体会用物理量之比定义新物理量的方法。会用电场线描述电场。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_requirementIndex: "3.1.3", CJ_requirementText: "知道电场是一种物质。了解电场强度，体会用物理量之比定义新物理量的方法。会用电场线描述电场。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:24"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:24", title: "生产生活中关于静电的利用与防护", description: "了解生产生活中关于静电的利用与防护。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"requirementIndex\": \"3.1.4\", \"requirementText\": \"了解生产生活中关于静电的利用与防护。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_requirementIndex: "3.1.4", CJ_requirementText: "了解生产生活中关于静电的利用与防护。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:25"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:25", title: "静电场中的电荷具有电势能。了解电势能、电势和电势差的含义", description: "知道静电场中的电荷具有电势能。了解电势能、电势和电势差的含义。知道匀强电场中电势差与电场强度的关系。能分析带电粒子在电场中的运动情况，能解释相关的物理现象。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"requirementIndex\": \"3.1.5\", \"requirementText\": \"知道静电场中的电荷具有电势能。了解电势能、电势和电势差的含义。知道匀强电场中电势差与电场强度的关系。能分析带电粒子在电场中的运动情况，能解释相关的物理现象。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_requirementIndex: "3.1.5", CJ_requirementText: "知道静电场中的电荷具有电势能。了解电势能、电势和电势差的含义。知道匀强电场中电势差与电场强度的关系。能分析带电粒子在电场中的运动情况，能解释相关的物理现象。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:26"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:26", title: "观察常见的电容器；电容器的电容", description: "观察常见的电容器，了解电容器的电容，观察电容器的充、放电现象。能举例说明电容器的应用。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"requirementIndex\": \"3.1.6\", \"requirementText\": \"观察常见的电容器，了解电容器的电容，观察电容器的充、放电现象。能举例说明电容器的应用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_requirementIndex: "3.1.6", CJ_requirementText: "观察常见的电容器，了解电容器的电容，观察电容器的充、放电现象。能举例说明电容器的应用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:27"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:27", title: "观察并能识别常见的电路元器件；它们在电路中的作用。会使用", description: "观察并能识别常见的电路元器件，了解它们在电路中的作用。会使用多用电表。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:29\", \"themeL2Key\": \"3.2\", \"requirementIndex\": \"3.2.1\", \"requirementText\": \"观察并能识别常见的电路元器件，了解它们在电路中的作用。会使用多用电表。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:29", CJ_themeL2Key: "3.2", CJ_requirementIndex: "3.2.1", CJ_requirementText: "观察并能识别常见的电路元器件，了解它们在电路中的作用。会使用多用电表。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:28"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:28", title: "实验；并了解金属导体的电阻与材料、长度和横截面积的定量关", description: "通过实验，探究并了解金属导体的电阻与材料、长度和横截面积的定量关系。会测量金属丝的电阻率。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:29\", \"themeL2Key\": \"3.2\", \"requirementIndex\": \"3.2.2\", \"requirementText\": \"通过实验，探究并了解金属导体的电阻与材料、长度和横截面积的定量关系。会测量金属丝的电阻率。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:29", CJ_themeL2Key: "3.2", CJ_requirementIndex: "3.2.2", CJ_requirementText: "通过实验，探究并了解金属导体的电阻与材料、长度和横截面积的定量关系。会测量金属丝的电阻率。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:29"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:29", title: "串、并联电路电阻的特点", description: "了解串、并联电路电阻的特点。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:29\", \"themeL2Key\": \"3.2\", \"requirementIndex\": \"3.2.3\", \"requirementText\": \"了解串、并联电路电阻的特点。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:29", CJ_themeL2Key: "3.2", CJ_requirementIndex: "3.2.3", CJ_requirementText: "了解串、并联电路电阻的特点。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:30"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:30", title: "闭合电路欧姆定律。会测量电源的电动势和内阻", description: "理解闭合电路欧姆定律。会测量电源的电动势和内阻。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:29\", \"themeL2Key\": \"3.2\", \"requirementIndex\": \"3.2.4\", \"requirementText\": \"理解闭合电路欧姆定律。会测量电源的电动势和内阻。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:29", CJ_themeL2Key: "3.2", CJ_requirementIndex: "3.2.4", CJ_requirementText: "理解闭合电路欧姆定律。会测量电源的电动势和内阻。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:31"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:31", title: "电功、电功率及焦耳定律；用焦耳定律解释生产生活", description: "理解电功、电功率及焦耳定律，能用焦耳定律解释生产生活", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:29\", \"themeL2Key\": \"3.2\", \"requirementIndex\": \"3.2.5\", \"requirementText\": \"理解电功、电功率及焦耳定律，能用焦耳定律解释生产生活\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:29", CJ_themeL2Key: "3.2", CJ_requirementIndex: "3.2.5", CJ_requirementText: "理解电功、电功率及焦耳定律，能用焦耳定律解释生产生活"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:32"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:32", title: "分析和解决家庭电路中的简单问题；将安全用电和节约用电的知", description: "能分析和解决家庭电路中的简单问题，能将安全用电和节约用电的知识应用于生活实际。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:29\", \"themeL2Key\": \"3.2\", \"requirementIndex\": \"3.2.6\", \"requirementText\": \"能分析和解决家庭电路中的简单问题，能将安全用电和节约用电的知识应用于生活实际。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:29", CJ_themeL2Key: "3.2", CJ_requirementIndex: "3.2.6", CJ_requirementText: "能分析和解决家庭电路中的简单问题，能将安全用电和节约用电的知识应用于生活实际。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:33"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:33", title: "列举磁现象在生产生活中的应用。了解我国古代在磁现象方面的", description: "能列举磁现象在生产生活中的应用。了解我国古代在磁现象方面的研究成果及其对人类文明的影响。关注与磁相关的现代技术发展。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:30\", \"themeL2Key\": \"3.3\", \"requirementIndex\": \"3.3.1\", \"requirementText\": \"能列举磁现象在生产生活中的应用。了解我国古代在磁现象方面的研究成果及其对人类文明的影响。关注与磁相关的现代技术发展。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:30", CJ_themeL2Key: "3.3", CJ_requirementIndex: "3.3.1", CJ_requirementText: "能列举磁现象在生产生活中的应用。了解我国古代在磁现象方面的研究成果及其对人类文明的影响。关注与磁相关的现代技术发展。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:34"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:34", title: "实验；磁场。了解磁感应强度", description: "通过实验，认识磁场。了解磁感应强度，会用磁感线描述磁场。体会物理模型在探索自然规律中的作用。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:30\", \"themeL2Key\": \"3.3\", \"requirementIndex\": \"3.3.2\", \"requirementText\": \"通过实验，认识磁场。了解磁感应强度，会用磁感线描述磁场。体会物理模型在探索自然规律中的作用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:30", CJ_themeL2Key: "3.3", CJ_requirementIndex: "3.3.2", CJ_requirementText: "通过实验，认识磁场。了解磁感应强度，会用磁感线描述磁场。体会物理模型在探索自然规律中的作用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:35"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:35", title: "磁通量。通过实验；电磁感应现象", description: "知道磁通量。通过实验，了解电磁感应现象，了解产生感应电流的条件。知道电磁感应现象的应用及其对现代社会的影响。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:30\", \"themeL2Key\": \"3.3\", \"requirementIndex\": \"3.3.3\", \"requirementText\": \"知道磁通量。通过实验，了解电磁感应现象，了解产生感应电流的条件。知道电磁感应现象的应用及其对现代社会的影响。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:30", CJ_themeL2Key: "3.3", CJ_requirementIndex: "3.3.3", CJ_requirementText: "知道磁通量。通过实验，了解电磁感应现象，了解产生感应电流的条件。知道电磁感应现象的应用及其对现代社会的影响。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:36"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:36", title: "实验；电磁波", description: "通过实验，了解电磁波，知道电磁场的物质性。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:30\", \"themeL2Key\": \"3.3\", \"requirementIndex\": \"3.3.4\", \"requirementText\": \"通过实验，了解电磁波，知道电磁场的物质性。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:30", CJ_themeL2Key: "3.3", CJ_requirementIndex: "3.3.4", CJ_requirementText: "通过实验，了解电磁波，知道电磁场的物质性。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:37"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:37", title: "实例；电磁波的应用及其带来的影响", description: "通过实例，了解电磁波的应用及其带来的影响。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:30\", \"themeL2Key\": \"3.3\", \"requirementIndex\": \"3.3.5\", \"requirementText\": \"通过实例，了解电磁波的应用及其带来的影响。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:30", CJ_themeL2Key: "3.3", CJ_requirementIndex: "3.3.5", CJ_requirementText: "通过实例，了解电磁波的应用及其带来的影响。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:38"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:38", title: "光是一种电磁波。知道光的能量是不连续的。初步了解微观世界", description: "知道光是一种电磁波。知道光的能量是不连续的。初步了解微观世界的量子化特征。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:30\", \"themeL2Key\": \"3.3\", \"requirementIndex\": \"3.3.6\", \"requirementText\": \"知道光是一种电磁波。知道光的能量是不连续的。初步了解微观世界的量子化特征。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:30", CJ_themeL2Key: "3.3", CJ_requirementIndex: "3.3.6", CJ_requirementText: "知道光是一种电磁波。知道光的能量是不连续的。初步了解微观世界的量子化特征。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:39"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:39", title: "水能、风能、太阳能和核能的方式。初步了解核裂变与核聚变", description: "了解利用水能、风能、太阳能和核能的方式。初步了解核裂变与核聚变。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:31\", \"themeL2Key\": \"3.4\", \"requirementIndex\": \"3.4.1\", \"requirementText\": \"了解利用水能、风能、太阳能和核能的方式。初步了解核裂变与核聚变。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:31", CJ_themeL2Key: "3.4", CJ_requirementIndex: "3.4.1", CJ_requirementText: "了解利用水能、风能、太阳能和核能的方式。初步了解核裂变与核聚变。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:40"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:40", title: "不同形式的能量可互相转化；转化过程中能量总量保持不变", description: "知道不同形式的能量可互相转化，在转化过程中能量总量保持不变，能量转化是有方向性的。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:31\", \"themeL2Key\": \"3.4\", \"requirementIndex\": \"3.4.2\", \"requirementText\": \"知道不同形式的能量可互相转化，在转化过程中能量总量保持不变，能量转化是有方向性的。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:31", CJ_themeL2Key: "3.4", CJ_requirementIndex: "3.4.2", CJ_requirementText: "知道不同形式的能量可互相转化，在转化过程中能量总量保持不变，能量转化是有方向性的。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:41"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:41", title: "可再生能源和不可再生能源的分类；能源的过度开发和利用对环", description: "了解可再生能源和不可再生能源的分类，认识能源的过度开发和利用对环境的影响。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:31\", \"themeL2Key\": \"3.4\", \"requirementIndex\": \"3.4.3\", \"requirementText\": \"了解可再生能源和不可再生能源的分类，认识能源的过度开发和利用对环境的影响。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:31", CJ_themeL2Key: "3.4", CJ_requirementIndex: "3.4.3", CJ_requirementText: "了解可再生能源和不可再生能源的分类，认识能源的过度开发和利用对环境的影响。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:42"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:42", title: "环境污染的危害；科学、技术、社会及环境协调发展的重要性", description: "认识环境污染的危害，了解科学、技术、社会及环境协调发展的重要性，具有环境保护的意识和行为。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:31\", \"themeL2Key\": \"3.4\", \"requirementIndex\": \"3.4.4\", \"requirementText\": \"认识环境污染的危害，了解科学、技术、社会及环境协调发展的重要性，具有环境保护的意识和行为。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:31", CJ_themeL2Key: "3.4", CJ_requirementIndex: "3.4.4", CJ_requirementText: "认识环境污染的危害，了解科学、技术、社会及环境协调发展的重要性，具有环境保护的意识和行为。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:43"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:43", title: "冲量和动量。通过理论推导和实验；动量定理和动量守恒定律", description: "理解冲量和动量。通过理论推导和实验，理解动量定理和动量守恒定律，能用其解释生产生活中的有关现象。知道动量守恒定律的普适性。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:21\", \"themeL2Key\": \"1.1\", \"requirementIndex\": \"1.1.1\", \"requirementText\": \"理解冲量和动量。通过理论推导和实验，理解动量定理和动量守恒定律，能用其解释生产生活中的有关现象。知道动量守恒定律的普适性。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:21", CJ_themeL2Key: "1.1", CJ_requirementIndex: "1.1.1", CJ_requirementText: "理解冲量和动量。通过理论推导和实验，理解动量定理和动量守恒定律，能用其解释生产生活中的有关现象。知道动量守恒定律的普适性。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:44"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:44", title: "实验；弹性碰撞和非弹性碰撞的特点。定量分析一维碰撞问题并", description: "通过实验，了解弹性碰撞和非弹性碰撞的特点。定量分析一维碰撞问题并能解释生产生活中的弹性碰撞和非弹性碰撞现象。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:21\", \"themeL2Key\": \"1.1\", \"requirementIndex\": \"1.1.2\", \"requirementText\": \"通过实验，了解弹性碰撞和非弹性碰撞的特点。定量分析一维碰撞问题并能解释生产生活中的弹性碰撞和非弹性碰撞现象。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:21", CJ_themeL2Key: "1.1", CJ_requirementIndex: "1.1.2", CJ_requirementText: "通过实验，了解弹性碰撞和非弹性碰撞的特点。定量分析一维碰撞问题并能解释生产生活中的弹性碰撞和非弹性碰撞现象。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:45"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:45", title: "体会用守恒定律分析物理问题的方法；体会自然界的和谐与统一", description: "体会用守恒定律分析物理问题的方法，体会自然界的和谐与统一。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:21\", \"themeL2Key\": \"1.1\", \"requirementIndex\": \"1.1.3\", \"requirementText\": \"体会用守恒定律分析物理问题的方法，体会自然界的和谐与统一。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:21", CJ_themeL2Key: "1.1", CJ_requirementIndex: "1.1.3", CJ_requirementText: "体会用守恒定律分析物理问题的方法，体会自然界的和谐与统一。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:46"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:46", title: "实验；简谐运动的特征。能用公式和图像描述简谐运动", description: "通过实验，认识简谐运动的特征。能用公式和图像描述简谐运动。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"requirementIndex\": \"1.2.1\", \"requirementText\": \"通过实验，认识简谐运动的特征。能用公式和图像描述简谐运动。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_requirementIndex: "1.2.1", CJ_requirementText: "通过实验，认识简谐运动的特征。能用公式和图像描述简谐运动。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:47"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:47", title: "实验；单摆的周期与摆长的定量关系。知道单摆周期与摆长、重", description: "通过实验，探究单摆的周期与摆长的定量关系。知道单摆周期与摆长、重力加速度的关系。会用单摆测量重力加速度的大小。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"requirementIndex\": \"1.2.2\", \"requirementText\": \"通过实验，探究单摆的周期与摆长的定量关系。知道单摆周期与摆长、重力加速度的关系。会用单摆测量重力加速度的大小。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_requirementIndex: "1.2.2", CJ_requirementText: "通过实验，探究单摆的周期与摆长的定量关系。知道单摆周期与摆长、重力加速度的关系。会用单摆测量重力加速度的大小。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:48"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:48", title: "实验；受迫振动的特点。了解产生共振的条件及其应用", description: "通过实验，认识受迫振动的特点。了解产生共振的条件及其应用。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"requirementIndex\": \"1.2.3\", \"requirementText\": \"通过实验，认识受迫振动的特点。了解产生共振的条件及其应用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_requirementIndex: "1.2.3", CJ_requirementText: "通过实验，认识受迫振动的特点。了解产生共振的条件及其应用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:49"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:49", title: "观察；波的特征。能区别横波和纵波。能用图像描述横波。理解", description: "通过观察，认识波的特征。能区别横波和纵波。能用图像描述横波。理解波速、波长和频率的关系。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"requirementIndex\": \"1.2.4\", \"requirementText\": \"通过观察，认识波的特征。能区别横波和纵波。能用图像描述横波。理解波速、波长和频率的关系。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_requirementIndex: "1.2.4", CJ_requirementText: "通过观察，认识波的特征。能区别横波和纵波。能用图像描述横波。理解波速、波长和频率的关系。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:50"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:50", title: "波的反射和折射现象。通过实验；波的干涉与衍射现象", description: "知道波的反射和折射现象。通过实验，了解波的干涉与衍射现象。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"requirementIndex\": \"1.2.5\", \"requirementText\": \"知道波的反射和折射现象。通过实验，了解波的干涉与衍射现象。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_requirementIndex: "1.2.5", CJ_requirementText: "知道波的反射和折射现象。通过实验，了解波的干涉与衍射现象。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:51"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:51", title: "实验；多普勒效应。能解释多普勒效应产生的原因。能列举多普", description: "通过实验，认识多普勒效应。能解释多普勒效应产生的原因。能列举多普勒效应的应用实例。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"requirementIndex\": \"1.2.6\", \"requirementText\": \"通过实验，认识多普勒效应。能解释多普勒效应产生的原因。能列举多普勒效应的应用实例。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_requirementIndex: "1.2.6", CJ_requirementText: "通过实验，认识多普勒效应。能解释多普勒效应产生的原因。能列举多普勒效应的应用实例。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:52"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:52", title: "实验；光的折射定律。会测量材料的折射率", description: "通过实验，理解光的折射定律。会测量材料的折射率。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:23\", \"themeL2Key\": \"1.3\", \"requirementIndex\": \"1.3.1\", \"requirementText\": \"通过实验，理解光的折射定律。会测量材料的折射率。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:23", CJ_themeL2Key: "1.3", CJ_requirementIndex: "1.3.1", CJ_requirementText: "通过实验，理解光的折射定律。会测量材料的折射率。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:53"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:53", title: "光的全反射现象及其产生的条件。初步了解光纤的工作", description: "知道光的全反射现象及其产生的条件。初步了解光纤的工作", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:23\", \"themeL2Key\": \"1.3\", \"requirementIndex\": \"1.3.2\", \"requirementText\": \"知道光的全反射现象及其产生的条件。初步了解光纤的工作\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:23", CJ_themeL2Key: "1.3", CJ_requirementIndex: "1.3.2", CJ_requirementText: "知道光的全反射现象及其产生的条件。初步了解光纤的工作"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:54"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:54", title: "观察光的干涉、衍射和偏振现象；这些现象产生的条件", description: "观察光的干涉、衍射和偏振现象，了解这些现象产生的条件，知道其在生产生活中的应用。知道光是横波，会用双缝干涉实验测量光的波长。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:23\", \"themeL2Key\": \"1.3\", \"requirementIndex\": \"1.3.3\", \"requirementText\": \"观察光的干涉、衍射和偏振现象，了解这些现象产生的条件，知道其在生产生活中的应用。知道光是横波，会用双缝干涉实验测量光的波长。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:23", CJ_themeL2Key: "1.3", CJ_requirementIndex: "1.3.3", CJ_requirementText: "观察光的干涉、衍射和偏振现象，了解这些现象产生的条件，知道其在生产生活中的应用。知道光是横波，会用双缝干涉实验测量光的波长。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:55"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:55", title: "实验；激光的特性。能举例说明激光技术在生产生活中的应用", description: "通过实验，了解激光的特性。能举例说明激光技术在生产生活中的应用。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:23\", \"themeL2Key\": \"1.3\", \"requirementIndex\": \"1.3.4\", \"requirementText\": \"通过实验，了解激光的特性。能举例说明激光技术在生产生活中的应用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:23", CJ_themeL2Key: "1.3", CJ_requirementIndex: "1.3.4", CJ_requirementText: "通过实验，了解激光的特性。能举例说明激光技术在生产生活中的应用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:56"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:56", title: "实验；安培力。能判断安培力的方向", description: "通过实验，认识安培力。能判断安培力的方向，会计算安培力的大小。了解安培力在生产生活中的应用。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:24\", \"themeL2Key\": \"2.1\", \"requirementIndex\": \"2.1.1\", \"requirementText\": \"通过实验，认识安培力。能判断安培力的方向，会计算安培力的大小。了解安培力在生产生活中的应用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:24", CJ_themeL2Key: "2.1", CJ_requirementIndex: "2.1.1", CJ_requirementText: "通过实验，认识安培力。能判断安培力的方向，会计算安培力的大小。了解安培力在生产生活中的应用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:57"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:57", title: "实验；洛伦兹力。能判断洛伦兹力的方向", description: "通过实验，认识洛伦兹力。能判断洛伦兹力的方向，会计算洛伦兹力的大小。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:24\", \"themeL2Key\": \"2.1\", \"requirementIndex\": \"2.1.2\", \"requirementText\": \"通过实验，认识洛伦兹力。能判断洛伦兹力的方向，会计算洛伦兹力的大小。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:24", CJ_themeL2Key: "2.1", CJ_requirementIndex: "2.1.2", CJ_requirementText: "通过实验，认识洛伦兹力。能判断洛伦兹力的方向，会计算洛伦兹力的大小。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:58"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:58", title: "用洛伦兹力分析带电粒子在匀强磁场中的圆周运动。了解带电粒", description: "能用洛伦兹力分析带电粒子在匀强磁场中的圆周运动。了解带电粒子在匀强磁场中的偏转及其应用。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:24\", \"themeL2Key\": \"2.1\", \"requirementIndex\": \"2.1.3\", \"requirementText\": \"能用洛伦兹力分析带电粒子在匀强磁场中的圆周运动。了解带电粒子在匀强磁场中的偏转及其应用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:24", CJ_themeL2Key: "2.1", CJ_requirementIndex: "2.1.3", CJ_requirementText: "能用洛伦兹力分析带电粒子在匀强磁场中的圆周运动。了解带电粒子在匀强磁场中的偏转及其应用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:59"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:59", title: "影响感应电流方向的因素；楞次定律", description: "探究影响感应电流方向的因素，理解楞次定律。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"requirementIndex\": \"2.2.1\", \"requirementText\": \"探究影响感应电流方向的因素，理解楞次定律。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_requirementIndex: "2.2.1", CJ_requirementText: "探究影响感应电流方向的因素，理解楞次定律。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:60"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:60", title: "实验；法拉第电磁感应定律", description: "通过实验，理解法拉第电磁感应定律。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"requirementIndex\": \"2.2.2\", \"requirementText\": \"通过实验，理解法拉第电磁感应定律。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_requirementIndex: "2.2.2", CJ_requirementText: "通过实验，理解法拉第电磁感应定律。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:61"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:61", title: "实验；自感现象和涡流现象。能举例说明自感现象", description: "通过实验，了解自感现象和涡流现象。能举例说明自感现象", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"requirementIndex\": \"2.2.3\", \"requirementText\": \"通过实验，了解自感现象和涡流现象。能举例说明自感现象\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_requirementIndex: "2.2.3", CJ_requirementText: "通过实验，了解自感现象和涡流现象。能举例说明自感现象"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:62"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:62", title: "实验；交变电流。能用公式和图像描述正弦交变电流", description: "通过实验，认识交变电流。能用公式和图像描述正弦交变电流。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"requirementIndex\": \"2.2.4\", \"requirementText\": \"通过实验，认识交变电流。能用公式和图像描述正弦交变电流。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_requirementIndex: "2.2.4", CJ_requirementText: "通过实验，认识交变电流。能用公式和图像描述正弦交变电流。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:63"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:63", title: "实验；并了解变压器原、副线圈电压与匝数的关系。知道远距离", description: "通过实验，探究并了解变压器原、副线圈电压与匝数的关系。知道远距离输电时通常采用高压输电的原因。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"requirementIndex\": \"2.2.5\", \"requirementText\": \"通过实验，探究并了解变压器原、副线圈电压与匝数的关系。知道远距离输电时通常采用高压输电的原因。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_requirementIndex: "2.2.5", CJ_requirementText: "通过实验，探究并了解变压器原、副线圈电压与匝数的关系。知道远距离输电时通常采用高压输电的原因。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:64"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:64", title: "发电机和电动机工作过程中的能量转化。认识电磁学在人类生活", description: "了解发电机和电动机工作过程中的能量转化。认识电磁学在人类生活和社会发展中的作用。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"requirementIndex\": \"2.2.6\", \"requirementText\": \"了解发电机和电动机工作过程中的能量转化。认识电磁学在人类生活和社会发展中的作用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_requirementIndex: "2.2.6", CJ_requirementText: "了解发电机和电动机工作过程中的能量转化。认识电磁学在人类生活和社会发展中的作用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:65"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:65", title: "初步了解麦克斯韦电磁场理论的基本思想；初步了解场的统一性", description: "初步了解麦克斯韦电磁场理论的基本思想，初步了解场的统一性与多样性，体会物理学对统一性的追求。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:26\", \"themeL2Key\": \"2.3\", \"requirementIndex\": \"2.3.1\", \"requirementText\": \"初步了解麦克斯韦电磁场理论的基本思想，初步了解场的统一性与多样性，体会物理学对统一性的追求。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:26", CJ_themeL2Key: "2.3", CJ_requirementIndex: "2.3.1", CJ_requirementText: "初步了解麦克斯韦电磁场理论的基本思想，初步了解场的统一性与多样性，体会物理学对统一性的追求。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:66"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:66", title: "实验；电磁振荡", description: "通过实验，了解电磁振荡。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:26\", \"themeL2Key\": \"2.3\", \"requirementIndex\": \"2.3.2\", \"requirementText\": \"通过实验，了解电磁振荡。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:26", CJ_themeL2Key: "2.3", CJ_requirementIndex: "2.3.2", CJ_requirementText: "通过实验，了解电磁振荡。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:67"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:67", title: "电磁波的发射、传播和接收", description: "知道电磁波的发射、传播和接收。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:26\", \"themeL2Key\": \"2.3\", \"requirementIndex\": \"2.3.3\", \"requirementText\": \"知道电磁波的发射、传播和接收。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:26", CJ_themeL2Key: "2.3", CJ_requirementIndex: "2.3.3", CJ_requirementText: "知道电磁波的发射、传播和接收。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:68"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:68", title: "电磁波谱。知道各个波段的电磁波的名称、特征和典型应用", description: "认识电磁波谱。知道各个波段的电磁波的名称、特征和典型应用。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:26\", \"themeL2Key\": \"2.3\", \"requirementIndex\": \"2.3.4\", \"requirementText\": \"认识电磁波谱。知道各个波段的电磁波的名称、特征和典型应用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:26", CJ_themeL2Key: "2.3", CJ_requirementIndex: "2.3.4", CJ_requirementText: "认识电磁波谱。知道各个波段的电磁波的名称、特征和典型应用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:69"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:69", title: "非电学量转换成电学量的技术意义", description: "知道非电学量转换成电学量的技术意义。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:27\", \"themeL2Key\": \"2.4\", \"requirementIndex\": \"2.4.1\", \"requirementText\": \"知道非电学量转换成电学量的技术意义。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:27", CJ_themeL2Key: "2.4", CJ_requirementIndex: "2.4.1", CJ_requirementText: "知道非电学量转换成电学量的技术意义。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:70"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:70", title: "实验；常见传感器的工作原理。会利用传感器制作简单的自动控", description: "通过实验，了解常见传感器的工作原理。会利用传感器制作简单的自动控制装置。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:27\", \"themeL2Key\": \"2.4\", \"requirementIndex\": \"2.4.2\", \"requirementText\": \"通过实验，了解常见传感器的工作原理。会利用传感器制作简单的自动控制装置。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:27", CJ_themeL2Key: "2.4", CJ_requirementIndex: "2.4.2", CJ_requirementText: "通过实验，了解常见传感器的工作原理。会利用传感器制作简单的自动控制装置。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:71"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:71", title: "列举传感器在生产生活中的应用", description: "列举传感器在生产生活中的应用", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:27\", \"themeL2Key\": \"2.4\", \"requirementIndex\": \"2.4.3\", \"requirementText\": \"列举传感器在生产生活中的应用\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:27", CJ_themeL2Key: "2.4", CJ_requirementIndex: "2.4.3", CJ_requirementText: "列举传感器在生产生活中的应用"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:72"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:72", title: "实验；估测油酸分子的大小。了解分子动理论的基本观点及相关", description: "通过实验，估测油酸分子的大小。了解分子动理论的基本观点及相关的实验证据。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"requirementIndex\": \"3.1.1\", \"requirementText\": \"通过实验，估测油酸分子的大小。了解分子动理论的基本观点及相关的实验证据。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_requirementIndex: "3.1.1", CJ_requirementText: "通过实验，估测油酸分子的大小。了解分子动理论的基本观点及相关的实验证据。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:73"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:73", title: "实验；扩散现象。观察并解释布朗运动。了解分子运动速率分布", description: "通过实验，了解扩散现象。观察并解释布朗运动。了解分子运动速率分布的统计规律，知道分子运动速率分布图像的物理意义。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"requirementIndex\": \"3.1.2\", \"requirementText\": \"通过实验，了解扩散现象。观察并解释布朗运动。了解分子运动速率分布的统计规律，知道分子运动速率分布图像的物理意义。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_requirementIndex: "3.1.2", CJ_requirementText: "通过实验，了解扩散现象。观察并解释布朗运动。了解分子运动速率分布的统计规律，知道分子运动速率分布图像的物理意义。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:74"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:74", title: "固体的微观结构。知道晶体和非晶体的特点。能列举生活中的晶", description: "了解固体的微观结构。知道晶体和非晶体的特点。能列举生活中的晶体和非晶体。通过实例，了解液晶的主要性质及其在显示技术中的应用。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"requirementIndex\": \"3.1.3\", \"requirementText\": \"了解固体的微观结构。知道晶体和非晶体的特点。能列举生活中的晶体和非晶体。通过实例，了解液晶的主要性质及其在显示技术中的应用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_requirementIndex: "3.1.3", CJ_requirementText: "了解固体的微观结构。知道晶体和非晶体的特点。能列举生活中的晶体和非晶体。通过实例，了解液晶的主要性质及其在显示技术中的应用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:75"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:75", title: "材料科学的有关知识及应用；体会它们的发展对人类生活和社会", description: "了解材料科学的有关知识及应用，体会它们的发展对人类生活和社会发展的影响。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"requirementIndex\": \"3.1.4\", \"requirementText\": \"了解材料科学的有关知识及应用，体会它们的发展对人类生活和社会发展的影响。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_requirementIndex: "3.1.4", CJ_requirementText: "了解材料科学的有关知识及应用，体会它们的发展对人类生活和社会发展的影响。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:76"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:76", title: "观察液体的表面张力现象。了解表面张力产生的原因。知道毛细", description: "观察液体的表面张力现象。了解表面张力产生的原因。知道毛细现象。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"requirementIndex\": \"3.1.5\", \"requirementText\": \"观察液体的表面张力现象。了解表面张力产生的原因。知道毛细现象。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_requirementIndex: "3.1.5", CJ_requirementText: "观察液体的表面张力现象。了解表面张力产生的原因。知道毛细现象。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:77"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:77", title: "实验；气体实验定律。知道理想气体模型。能用分子动理论和统", description: "通过实验，了解气体实验定律。知道理想气体模型。能用分子动理论和统计观点解释气体压强和气体实验定律。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"requirementIndex\": \"3.1.6\", \"requirementText\": \"通过实验，了解气体实验定律。知道理想气体模型。能用分子动理论和统计观点解释气体压强和气体实验定律。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_requirementIndex: "3.1.6", CJ_requirementText: "通过实验，了解气体实验定律。知道理想气体模型。能用分子动理论和统计观点解释气体压强和气体实验定律。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:78"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:78", title: "热力学第一定律。通过有关史实；热力学第一定律和能量守恒定", description: "知道热力学第一定律。通过有关史实，了解热力学第一定律和能量守恒定律的发现过程，体会科学探索中的挫折和失败对科学发现的意义。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:29\", \"themeL2Key\": \"3.2\", \"requirementIndex\": \"3.2.1\", \"requirementText\": \"知道热力学第一定律。通过有关史实，了解热力学第一定律和能量守恒定律的发现过程，体会科学探索中的挫折和失败对科学发现的意义。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:29", CJ_themeL2Key: "3.2", CJ_requirementIndex: "3.2.1", CJ_requirementText: "知道热力学第一定律。通过有关史实，了解热力学第一定律和能量守恒定律的发现过程，体会科学探索中的挫折和失败对科学发现的意义。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:79"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:79", title: "能量守恒定律；用能量守恒的观点解释自然现象。体会能量守恒", description: "理解能量守恒定律，能用能量守恒的观点解释自然现象。体会能量守恒定律是最基本、最普遍的自然规律之一。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:29\", \"themeL2Key\": \"3.2\", \"requirementIndex\": \"3.2.2\", \"requirementText\": \"理解能量守恒定律，能用能量守恒的观点解释自然现象。体会能量守恒定律是最基本、最普遍的自然规律之一。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:29", CJ_themeL2Key: "3.2", CJ_requirementIndex: "3.2.2", CJ_requirementText: "理解能量守恒定律，能用能量守恒的观点解释自然现象。体会能量守恒定律是最基本、最普遍的自然规律之一。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:80"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:80", title: "自然界中宏观过程的方向性；热力学第二定律", description: "通过自然界中宏观过程的方向性，了解热力学第二定律。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:29\", \"themeL2Key\": \"3.2\", \"requirementIndex\": \"3.2.3\", \"requirementText\": \"通过自然界中宏观过程的方向性，了解热力学第二定律。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:29", CJ_themeL2Key: "3.2", CJ_requirementIndex: "3.2.3", CJ_requirementText: "通过自然界中宏观过程的方向性，了解热力学第二定律。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:81"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:81", title: "人类探索原子及其结构的历史。知道原子的核式结构模型。通过", description: "了解人类探索原子及其结构的历史。知道原子的核式结构模型。通过对氢原子光谱的分析，了解原子的能级结构。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:30\", \"themeL2Key\": \"3.3\", \"requirementIndex\": \"3.3.1\", \"requirementText\": \"了解人类探索原子及其结构的历史。知道原子的核式结构模型。通过对氢原子光谱的分析，了解原子的能级结构。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:30", CJ_themeL2Key: "3.3", CJ_requirementIndex: "3.3.1", CJ_requirementText: "了解人类探索原子及其结构的历史。知道原子的核式结构模型。通过对氢原子光谱的分析，了解原子的能级结构。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:82"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:82", title: "原子核的组成和核力的性质。知道四种基本相互作用。能根据质", description: "了解原子核的组成和核力的性质。知道四种基本相互作用。能根据质量数守恒和电荷守恒写出核反应方程。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:30\", \"themeL2Key\": \"3.3\", \"requirementIndex\": \"3.3.2\", \"requirementText\": \"了解原子核的组成和核力的性质。知道四种基本相互作用。能根据质量数守恒和电荷守恒写出核反应方程。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:30", CJ_themeL2Key: "3.3", CJ_requirementIndex: "3.3.2", CJ_requirementText: "了解原子核的组成和核力的性质。知道四种基本相互作用。能根据质量数守恒和电荷守恒写出核反应方程。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:83"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:83", title: "放射性和原子核衰变。知道半衰期及其统计意义。了解放射性同", description: "了解放射性和原子核衰变。知道半衰期及其统计意义。了解放射性同位素的应用，知道射线的危害与防护。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:30\", \"themeL2Key\": \"3.3\", \"requirementIndex\": \"3.3.3\", \"requirementText\": \"了解放射性和原子核衰变。知道半衰期及其统计意义。了解放射性同位素的应用，知道射线的危害与防护。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:30", CJ_themeL2Key: "3.3", CJ_requirementIndex: "3.3.3", CJ_requirementText: "了解放射性和原子核衰变。知道半衰期及其统计意义。了解放射性同位素的应用，知道射线的危害与防护。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:84"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:84", title: "原子核的结合能；核裂变反应和核聚变反应。关注核技术应用对", description: "认识原子核的结合能，了解核裂变反应和核聚变反应。关注核技术应用对人类生活和社会发展的影响。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:30\", \"themeL2Key\": \"3.3\", \"requirementIndex\": \"3.3.4\", \"requirementText\": \"认识原子核的结合能，了解核裂变反应和核聚变反应。关注核技术应用对人类生活和社会发展的影响。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:30", CJ_themeL2Key: "3.3", CJ_requirementIndex: "3.3.4", CJ_requirementText: "认识原子核的结合能，了解核裂变反应和核聚变反应。关注核技术应用对人类生活和社会发展的影响。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:85"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:85", title: "人类对物质结构的探索历程", description: "了解人类对物质结构的探索历程。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:30\", \"themeL2Key\": \"3.3\", \"requirementIndex\": \"3.3.5\", \"requirementText\": \"了解人类对物质结构的探索历程。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:30", CJ_themeL2Key: "3.3", CJ_requirementIndex: "3.3.5", CJ_requirementText: "了解人类对物质结构的探索历程。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:86"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:86", title: "实验；光电效应现象。知道爱因斯坦光电效应方程及其意义。能", description: "通过实验，了解光电效应现象。知道爱因斯坦光电效应方程及其意义。能根据实验结论说明光的波粒二象性。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:31\", \"themeL2Key\": \"3.4\", \"requirementIndex\": \"3.4.1\", \"requirementText\": \"通过实验，了解光电效应现象。知道爱因斯坦光电效应方程及其意义。能根据实验结论说明光的波粒二象性。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:31", CJ_themeL2Key: "3.4", CJ_requirementIndex: "3.4.1", CJ_requirementText: "通过实验，了解光电效应现象。知道爱因斯坦光电效应方程及其意义。能根据实验结论说明光的波粒二象性。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:87"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:87", title: "实物粒子具有波动性；微观世界的量子化特征。体会量子论的建", description: "知道实物粒子具有波动性，了解微观世界的量子化特征。体会量子论的建立对人们认识物质世界的影响。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:31\", \"themeL2Key\": \"3.4\", \"requirementIndex\": \"3.4.2\", \"requirementText\": \"知道实物粒子具有波动性，了解微观世界的量子化特征。体会量子论的建立对人们认识物质世界的影响。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:31", CJ_themeL2Key: "3.4", CJ_requirementIndex: "3.4.2", CJ_requirementText: "知道实物粒子具有波动性，了解微观世界的量子化特征。体会量子论的建立对人们认识物质世界的影响。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:88"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:88", title: "古希腊的宇宙观与我国古代的宇宙观。了解哥白尼日心说对宇宙", description: "了解古希腊的宇宙观与我国古代的宇宙观。了解哥白尼日心说对宇宙观的冲击。了解开普勒定律对牛顿发现万有引力定律的重要作用。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:21\", \"themeL2Key\": \"1.1\", \"requirementIndex\": \"1.1.1\", \"requirementText\": \"了解古希腊的宇宙观与我国古代的宇宙观。了解哥白尼日心说对宇宙观的冲击。了解开普勒定律对牛顿发现万有引力定律的重要作用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:21", CJ_themeL2Key: "1.1", CJ_requirementIndex: "1.1.1", CJ_requirementText: "了解古希腊的宇宙观与我国古代的宇宙观。了解哥白尼日心说对宇宙观的冲击。了解开普勒定律对牛顿发现万有引力定律的重要作用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:89"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:89", title: "伽利略的实验方法和逻辑方法对牛顿力学诞生的贡献。了解牛顿", description: "了解伽利略的实验方法和逻辑方法对牛顿力学诞生的贡献。了解牛顿力学的成就和局限性。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:21\", \"themeL2Key\": \"1.1\", \"requirementIndex\": \"1.1.2\", \"requirementText\": \"了解伽利略的实验方法和逻辑方法对牛顿力学诞生的贡献。了解牛顿力学的成就和局限性。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:21", CJ_themeL2Key: "1.1", CJ_requirementIndex: "1.1.2", CJ_requirementText: "了解伽利略的实验方法和逻辑方法对牛顿力学诞生的贡献。了解牛顿力学的成就和局限性。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:90"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:90", title: "19世纪末物理学的发现对于近代物理学革命的意义", description: "了解19世纪末物理学的发现对于近代物理学革命的意义。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:21\", \"themeL2Key\": \"1.1\", \"requirementIndex\": \"1.1.3\", \"requirementText\": \"了解19世纪末物理学的发现对于近代物理学革命的意义。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:21", CJ_themeL2Key: "1.1", CJ_requirementIndex: "1.1.3", CJ_requirementText: "了解19世纪末物理学的发现对于近代物理学革命的意义。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:91"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:91", title: "波粒二象性的物理思想；体会人们对物质本性认识的不断发展", description: "了解波粒二象性的物理思想，体会人们对物质本性认识的不断发展。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:21\", \"themeL2Key\": \"1.1\", \"requirementIndex\": \"1.1.4\", \"requirementText\": \"了解波粒二象性的物理思想，体会人们对物质本性认识的不断发展。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:21", CJ_themeL2Key: "1.1", CJ_requirementIndex: "1.1.4", CJ_requirementText: "了解波粒二象性的物理思想，体会人们对物质本性认识的不断发展。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:92"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:92", title: "相对论的时空观；质能关系的意义", description: "了解相对论的时空观，知道质能关系的意义，了解相对论与量子论对人类认识的影响。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:21\", \"themeL2Key\": \"1.1\", \"requirementIndex\": \"1.1.5\", \"requirementText\": \"了解相对论的时空观，知道质能关系的意义，了解相对论与量子论对人类认识的影响。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:21", CJ_themeL2Key: "1.1", CJ_requirementIndex: "1.1.5", CJ_requirementText: "了解相对论的时空观，知道质能关系的意义，了解相对论与量子论对人类认识的影响。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:93"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:93", title: "我国物理学家的成果与贡献", description: "了解我国物理学家的成果与贡献。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:21\", \"themeL2Key\": \"1.1\", \"requirementIndex\": \"1.1.6\", \"requirementText\": \"了解我国物理学家的成果与贡献。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:21", CJ_themeL2Key: "1.1", CJ_requirementIndex: "1.1.6", CJ_requirementText: "了解我国物理学家的成果与贡献。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:94"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:94", title: "蒸汽机的发明对第一次工业革命的推动作用", description: "了解蒸汽机的发明对第一次工业革命的推动作用。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"requirementIndex\": \"1.2.1\", \"requirementText\": \"了解蒸汽机的发明对第一次工业革命的推动作用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_requirementIndex: "1.2.1", CJ_requirementText: "了解蒸汽机的发明对第一次工业革命的推动作用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:95"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:95", title: "电磁学的发展对第二次工业革命的推动作用", description: "了解电磁学的发展对第二次工业革命的推动作用。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"requirementIndex\": \"1.2.2\", \"requirementText\": \"了解电磁学的发展对第二次工业革命的推动作用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_requirementIndex: "1.2.2", CJ_requirementText: "了解电磁学的发展对第二次工业革命的推动作用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:96"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:96", title: "集成电路的进展；微电子技术的应用对社会发展的影响", description: "了解集成电路的进展，了解微电子技术的应用对社会发展的影响。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"requirementIndex\": \"1.2.3\", \"requirementText\": \"了解集成电路的进展，了解微电子技术的应用对社会发展的影响。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_requirementIndex: "1.2.3", CJ_requirementText: "了解集成电路的进展，了解微电子技术的应用对社会发展的影响。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:97"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:97", title: "信息技术的应用对社会发展的影响", description: "了解信息技术的应用对社会发展的影响", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"requirementIndex\": \"1.2.4\", \"requirementText\": \"了解信息技术的应用对社会发展的影响\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_requirementIndex: "1.2.4", CJ_requirementText: "了解信息技术的应用对社会发展的影响"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:98"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:98", title: "核技术的应用对社会发展的影响", description: "了解核技术的应用对社会发展的影响", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"requirementIndex\": \"1.2.5\", \"requirementText\": \"了解核技术的应用对社会发展的影响\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_requirementIndex: "1.2.5", CJ_requirementText: "了解核技术的应用对社会发展的影响"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:99"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:99", title: "可再生能源与不可再生能源在生活中应用的实例", description: "了解可再生能源与不可再生能源在生活中应用的实例。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:23\", \"themeL2Key\": \"1.3\", \"requirementIndex\": \"1.3.1\", \"requirementText\": \"了解可再生能源与不可再生能源在生活中应用的实例。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:23", CJ_themeL2Key: "1.3", CJ_requirementIndex: "1.3.1", CJ_requirementText: "了解可再生能源与不可再生能源在生活中应用的实例。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:100"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:100", title: "列举微电子技术在生活中的应用实例。了解电视广播技术的发展", description: "能列举微电子技术在生活中的应用实例。了解电视广播技术的发展对生活的影响。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:23\", \"themeL2Key\": \"1.3\", \"requirementIndex\": \"1.3.2\", \"requirementText\": \"能列举微电子技术在生活中的应用实例。了解电视广播技术的发展对生活的影响。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:23", CJ_themeL2Key: "1.3", CJ_requirementIndex: "1.3.2", CJ_requirementText: "能列举微电子技术在生活中的应用实例。了解电视广播技术的发展对生活的影响。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:101"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:101", title: "计算机、手机等发展的大致历程及其对生活的影响", description: "了解计算机、手机等发展的大致历程及其对生活的影响。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:23\", \"themeL2Key\": \"1.3\", \"requirementIndex\": \"1.3.3\", \"requirementText\": \"了解计算机、手机等发展的大致历程及其对生活的影响。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:23", CJ_themeL2Key: "1.3", CJ_requirementIndex: "1.3.3", CJ_requirementText: "了解计算机、手机等发展的大致历程及其对生活的影响。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:102"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:102", title: "激光技术和光纤通信技术在生活中的应用", description: "了解激光技术和光纤通信技术在生活中的应用。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:23\", \"themeL2Key\": \"1.3\", \"requirementIndex\": \"1.3.4\", \"requirementText\": \"了解激光技术和光纤通信技术在生活中的应用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:23", CJ_themeL2Key: "1.3", CJ_requirementIndex: "1.3.4", CJ_requirementText: "了解激光技术和光纤通信技术在生活中的应用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:103"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:103", title: "航天技术对生活的影响", description: "了解航天技术对生活的影响。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:23\", \"themeL2Key\": \"1.3\", \"requirementIndex\": \"1.3.5\", \"requirementText\": \"了解航天技术对生活的影响。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:23", CJ_themeL2Key: "1.3", CJ_requirementIndex: "1.3.5", CJ_requirementText: "了解航天技术对生活的影响。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:104"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:104", title: "声波的反射在B超中的应用", description: "了解声波的反射在B超中的应用", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:24\", \"themeL2Key\": \"2.1\", \"requirementIndex\": \"2.1.1\", \"requirementText\": \"了解声波的反射在B超中的应用\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:24", CJ_themeL2Key: "2.1", CJ_requirementIndex: "2.1.1", CJ_requirementText: "了解声波的反射在B超中的应用"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:105"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:105", title: "多普勒效应在彩超中的应用", description: "了解多普勒效应在彩超中的应用。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:24\", \"themeL2Key\": \"2.1\", \"requirementIndex\": \"2.1.2\", \"requirementText\": \"了解多普勒效应在彩超中的应用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:24", CJ_themeL2Key: "2.1", CJ_requirementIndex: "2.1.2", CJ_requirementText: "了解多普勒效应在彩超中的应用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:106"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:106", title: "X射线对人体不同组织的穿透性差异", description: "了解X射线对人体不同组织的穿透性差异。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:24\", \"themeL2Key\": \"2.1\", \"requirementIndex\": \"2.1.3\", \"requirementText\": \"了解X射线对人体不同组织的穿透性差异。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:24", CJ_themeL2Key: "2.1", CJ_requirementIndex: "2.1.3", CJ_requirementText: "了解X射线对人体不同组织的穿透性差异。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:107"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:107", title: "CT扫描的基本原理", description: "了解CT扫描的基本原理", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:24\", \"themeL2Key\": \"2.1\", \"requirementIndex\": \"2.1.4\", \"requirementText\": \"了解CT扫描的基本原理\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:24", CJ_themeL2Key: "2.1", CJ_requirementIndex: "2.1.4", CJ_requirementText: "了解CT扫描的基本原理"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:108"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:108", title: "典型射线的特性及其防护措施；这些射线在医学中的应用及其对", description: "了解典型射线的特性及其防护措施，知道这些射线在医学中的应用及其对人体的影响。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:24\", \"themeL2Key\": \"2.1\", \"requirementIndex\": \"2.1.5\", \"requirementText\": \"了解典型射线的特性及其防护措施，知道这些射线在医学中的应用及其对人体的影响。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:24", CJ_themeL2Key: "2.1", CJ_requirementIndex: "2.1.5", CJ_requirementText: "了解典型射线的特性及其防护措施，知道这些射线在医学中的应用及其对人体的影响。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:109"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:109", title: "可再生能源和不可再生能源的开发与利用；新能源开发的必要性", description: "了解可再生能源和不可再生能源的开发与利用，了解新能源开发的必要性。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"requirementIndex\": \"2.2.1\", \"requirementText\": \"了解可再生能源和不可再生能源的开发与利用，了解新能源开发的必要性。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_requirementIndex: "2.2.1", CJ_requirementText: "了解可再生能源和不可再生能源的开发与利用，了解新能源开发的必要性。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:110"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:110", title: "太阳能利用的常见方式及应用前景", description: "了解太阳能利用的常见方式及应用前景。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"requirementIndex\": \"2.2.2\", \"requirementText\": \"了解太阳能利用的常见方式及应用前景。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_requirementIndex: "2.2.2", CJ_requirementText: "了解太阳能利用的常见方式及应用前景。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:111"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:111", title: "核裂变和核聚变；核能的利用及核废料的处理", description: "了解核裂变和核聚变，了解核能的利用及核废料的处理。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"requirementIndex\": \"2.2.3\", \"requirementText\": \"了解核裂变和核聚变，了解核能的利用及核废料的处理。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_requirementIndex: "2.2.3", CJ_requirementText: "了解核裂变和核聚变，了解核能的利用及核废料的处理。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:112"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:112", title: "地热能、潮汐能及风能等的利用", description: "了解地热能、潮汐能及风能等的利用。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"requirementIndex\": \"2.2.4\", \"requirementText\": \"了解地热能、潮汐能及风能等的利用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_requirementIndex: "2.2.4", CJ_requirementText: "了解地热能、潮汐能及风能等的利用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:113"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:113", title: "物理学在新材料开发中的作用", description: "了解物理学在新材料开发中的作用。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:26\", \"themeL2Key\": \"2.3\", \"requirementIndex\": \"2.3.1\", \"requirementText\": \"了解物理学在新材料开发中的作用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:26", CJ_themeL2Key: "2.3", CJ_requirementIndex: "2.3.1", CJ_requirementText: "了解物理学在新材料开发中的作用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:114"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:114", title: "纳米材料的特性及其在生活中的应用", description: "了解纳米材料的特性及其在生活中的应用", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:26\", \"themeL2Key\": \"2.3\", \"requirementIndex\": \"2.3.2\", \"requirementText\": \"了解纳米材料的特性及其在生活中的应用\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:26", CJ_themeL2Key: "2.3", CJ_requirementIndex: "2.3.2", CJ_requirementText: "了解纳米材料的特性及其在生活中的应用"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:115"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:115", title: "超导体的一些特点；超导技术的应用", description: "了解超导体的一些特点，了解超导技术的应用。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:26\", \"themeL2Key\": \"2.3\", \"requirementIndex\": \"2.3.3\", \"requirementText\": \"了解超导体的一些特点，了解超导技术的应用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:26", CJ_themeL2Key: "2.3", CJ_requirementIndex: "2.3.3", CJ_requirementText: "了解超导体的一些特点，了解超导技术的应用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:116"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:116", title: "一些功能材料的特性及应用", description: "了解一些功能材料的特性及应用。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:26\", \"themeL2Key\": \"2.3\", \"requirementIndex\": \"2.3.4\", \"requirementText\": \"了解一些功能材料的特性及应用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:26", CJ_themeL2Key: "2.3", CJ_requirementIndex: "2.3.4", CJ_requirementText: "了解一些功能材料的特性及应用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:117"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:117", title: "物理学对信息技术发展的贡献", description: "了解物理学对信息技术发展的贡献。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:27\", \"themeL2Key\": \"2.4\", \"requirementIndex\": \"2.4.1\", \"requirementText\": \"了解物理学对信息技术发展的贡献。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:27", CJ_themeL2Key: "2.4", CJ_requirementIndex: "2.4.1", CJ_requirementText: "了解物理学对信息技术发展的贡献。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:118"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:118", title: "智能手机的一些功能及其对生活的影响", description: "了解智能手机的一些功能及其对生活的影响", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:27\", \"themeL2Key\": \"2.4\", \"requirementIndex\": \"2.4.2\", \"requirementText\": \"了解智能手机的一些功能及其对生活的影响\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:27", CJ_themeL2Key: "2.4", CJ_requirementIndex: "2.4.2", CJ_requirementText: "了解智能手机的一些功能及其对生活的影响"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:119"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:119", title: "计算机的主要部件及其作用", description: "了解计算机的主要部件及其作用。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:27\", \"themeL2Key\": \"2.4\", \"requirementIndex\": \"2.4.3\", \"requirementText\": \"了解计算机的主要部件及其作用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:27", CJ_themeL2Key: "2.4", CJ_requirementIndex: "2.4.3", CJ_requirementText: "了解计算机的主要部件及其作用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:120"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:120", title: "卫星定位系统的发展历程及其在生活中的应用", description: "了解卫星定位系统的发展历程及其在生活中的应用。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:27\", \"themeL2Key\": \"2.4\", \"requirementIndex\": \"2.4.4\", \"requirementText\": \"了解卫星定位系统的发展历程及其在生活中的应用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:27", CJ_themeL2Key: "2.4", CJ_requirementIndex: "2.4.4", CJ_requirementText: "了解卫星定位系统的发展历程及其在生活中的应用。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:121"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:121", title: "物理学对人工智能发展的推动作用", description: "了解物理学对人工智能发展的推动作用", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:27\", \"themeL2Key\": \"2.4\", \"requirementIndex\": \"2.4.5\", \"requirementText\": \"了解物理学对人工智能发展的推动作用\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:27", CJ_themeL2Key: "2.4", CJ_requirementIndex: "2.4.5", CJ_requirementText: "了解物理学对人工智能发展的推动作用"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:122"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:122", title: "对宏观物体与微观粒子运动特点描述的差异", description: "比较对宏观物体与微观粒子运动特点描述的差异。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"requirementIndex\": \"3.1.1\", \"requirementText\": \"比较对宏观物体与微观粒子运动特点描述的差异。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_requirementIndex: "3.1.1", CJ_requirementText: "比较对宏观物体与微观粒子运动特点描述的差异。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:123"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:123", title: "德布罗意物质波；物质的波粒二象性", description: "了解德布罗意物质波，知道物质的波粒二象性。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"requirementIndex\": \"3.1.2\", \"requirementText\": \"了解德布罗意物质波，知道物质的波粒二象性。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_requirementIndex: "3.1.2", CJ_requirementText: "了解德布罗意物质波，知道物质的波粒二象性。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:124"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:124", title: "初步了解海森伯不确定性原理", description: "初步了解海森伯不确定性原理", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"requirementIndex\": \"3.1.3\", \"requirementText\": \"初步了解海森伯不确定性原理\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_requirementIndex: "3.1.3", CJ_requirementText: "初步了解海森伯不确定性原理"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:125"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:125", title: "初步了解基本粒子的微观模型及其特点", description: "初步了解基本粒子的微观模型及其特点。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"requirementIndex\": \"3.1.4\", \"requirementText\": \"初步了解基本粒子的微观模型及其特点。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_requirementIndex: "3.1.4", CJ_requirementText: "初步了解基本粒子的微观模型及其特点。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:126"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:126", title: "人类探索基本粒子的大致历程；这种探索将不断深入", description: "了解人类探索基本粒子的大致历程，知道这种探索将不断深入。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"requirementIndex\": \"3.1.5\", \"requirementText\": \"了解人类探索基本粒子的大致历程，知道这种探索将不断深入。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_requirementIndex: "3.1.5", CJ_requirementText: "了解人类探索基本粒子的大致历程，知道这种探索将不断深入。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:127"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:127", title: "相对性原理和光速不变原理", description: "知道相对性原理和光速不变原理", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:29\", \"themeL2Key\": \"3.2\", \"requirementIndex\": \"3.2.1\", \"requirementText\": \"知道相对性原理和光速不变原理\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:29", CJ_themeL2Key: "3.2", CJ_requirementIndex: "3.2.1", CJ_requirementText: "知道相对性原理和光速不变原理"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:128"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:128", title: "公式；长度收缩效应和时间延缓效应", description: "能利用公式，解释长度收缩效应和时间延缓效应。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:29\", \"themeL2Key\": \"3.2\", \"requirementIndex\": \"3.2.2\", \"requirementText\": \"能利用公式，解释长度收缩效应和时间延缓效应。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:29", CJ_themeL2Key: "3.2", CJ_requirementIndex: "3.2.2", CJ_requirementText: "能利用公式，解释长度收缩效应和时间延缓效应。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:129"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:129", title: "爱因斯坦质能方程的意义", description: "知道爱因斯坦质能方程的意义。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:29\", \"themeL2Key\": \"3.2\", \"requirementIndex\": \"3.2.3\", \"requirementText\": \"知道爱因斯坦质能方程的意义。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:29", CJ_themeL2Key: "3.2", CJ_requirementIndex: "3.2.3", CJ_requirementText: "知道爱因斯坦质能方程的意义。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:130"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:130", title: "广义相对论的主要思想、结论和观测证据", description: "了解广义相对论的主要思想、结论和观测证据。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:29\", \"themeL2Key\": \"3.2\", \"requirementIndex\": \"3.2.4\", \"requirementText\": \"了解广义相对论的主要思想、结论和观测证据。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:29", CJ_themeL2Key: "3.2", CJ_requirementIndex: "3.2.4", CJ_requirementText: "了解广义相对论的主要思想、结论和观测证据。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:131"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:131", title: "人类探索高速世界的大致历程；这种探索将不断深入", description: "了解人类探索高速世界的大致历程，知道这种探索将不断深入。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:29\", \"themeL2Key\": \"3.2\", \"requirementIndex\": \"3.2.5\", \"requirementText\": \"了解人类探索高速世界的大致历程，知道这种探索将不断深入。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:29", CJ_themeL2Key: "3.2", CJ_requirementIndex: "3.2.5", CJ_requirementText: "了解人类探索高速世界的大致历程，知道这种探索将不断深入。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:132"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:132", title: "初步了解大爆炸宇宙论的理论模型及其观测证据", description: "初步了解大爆炸宇宙论的理论模型及其观测证据。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:30\", \"themeL2Key\": \"3.3\", \"requirementIndex\": \"3.3.1\", \"requirementText\": \"初步了解大爆炸宇宙论的理论模型及其观测证据。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:30", CJ_themeL2Key: "3.3", CJ_requirementIndex: "3.3.1", CJ_requirementText: "初步了解大爆炸宇宙论的理论模型及其观测证据。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:133"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:133", title: "初步了解黑洞及对黑洞的观测方法", description: "初步了解黑洞及对黑洞的观测方法", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:30\", \"themeL2Key\": \"3.3\", \"requirementIndex\": \"3.3.2\", \"requirementText\": \"初步了解黑洞及对黑洞的观测方法\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:30", CJ_themeL2Key: "3.3", CJ_requirementIndex: "3.3.2", CJ_requirementText: "初步了解黑洞及对黑洞的观测方法"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:134"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:134", title: "初步了解暗物质和暗能量", description: "初步了解暗物质和暗能量。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:30\", \"themeL2Key\": \"3.3\", \"requirementIndex\": \"3.3.3\", \"requirementText\": \"初步了解暗物质和暗能量。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:30", CJ_themeL2Key: "3.3", CJ_requirementIndex: "3.3.3", CJ_requirementText: "初步了解暗物质和暗能量。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:135"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:135", title: "初步了解物质与反物质", description: "初步了解物质与反物质。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:30\", \"themeL2Key\": \"3.3\", \"requirementIndex\": \"3.3.4\", \"requirementText\": \"初步了解物质与反物质。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:30", CJ_themeL2Key: "3.3", CJ_requirementIndex: "3.3.4", CJ_requirementText: "初步了解物质与反物质。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:136"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:136", title: "初步了解宇宙论的一些进展", description: "初步了解宇宙论的一些进展。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:30\", \"themeL2Key\": \"3.3\", \"requirementIndex\": \"3.3.5\", \"requirementText\": \"初步了解宇宙论的一些进展。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:30", CJ_themeL2Key: "3.3", CJ_requirementIndex: "3.3.5", CJ_requirementText: "初步了解宇宙论的一些进展。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:137"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:137", title: "四种基本相互作用及其特点", description: "了解四种基本相互作用及其特点。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:31\", \"themeL2Key\": \"3.4\", \"requirementIndex\": \"3.4.1\", \"requirementText\": \"了解四种基本相互作用及其特点。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:31", CJ_themeL2Key: "3.4", CJ_requirementIndex: "3.4.1", CJ_requirementText: "了解四种基本相互作用及其特点。"};

MERGE (n:ThemeL3 {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:138"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:138", title: "初步了解追求相互作用统一的思想和探索在物理学发展中的作用", description: "初步了解追求相互作用统一的思想和探索在物理学发展中的作用。", subject: "SB0401", type: "ThemeL3", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:31\", \"themeL2Key\": \"3.4\", \"requirementIndex\": \"3.4.2\", \"requirementText\": \"初步了解追求相互作用统一的思想和探索在物理学发展中的作用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:31", CJ_themeL2Key: "3.4", CJ_requirementIndex: "3.4.2", CJ_requirementText: "初步了解追求相互作用统一的思想和探索在物理学发展中的作用。"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:1"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:1", title: "质量相同、大小和形状不同的物体在空气中下落的现象", description: "观察质量相同、大小和形状不同的物体在空气中下落的现象，了解空气阻力对落体运动的影响。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:21\", \"themeL2Key\": \"1.1\", \"activityText\": \"观察质量相同、大小和形状不同的物体在空气中下落的现象，了解空气阻力对落体运动的影响。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:21", CJ_themeL2Key: "1.1", CJ_activityText: "观察质量相同、大小和形状不同的物体在空气中下落的现象，了解空气阻力对落体运动的影响。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:2"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:2", title: "了解并讨论伽利略关于物体运动的实验研究对科学发展和人类进步的重大", description: "查阅资料，了解并讨论伽利略关于物体运动的实验研究对科学发展和人类进步的重大意义。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:21\", \"themeL2Key\": \"1.1\", \"activityText\": \"查阅资料，了解并讨论伽利略关于物体运动的实验研究对科学发展和人类进步的重大意义。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:21", CJ_themeL2Key: "1.1", CJ_activityText: "查阅资料，了解并讨论伽利略关于物体运动的实验研究对科学发展和人类进步的重大意义。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:3"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:3", title: "生产生活中利用或尽量减小摩擦的实例", description: "调查生产生活中利用或尽量减小摩擦的实例。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"activityText\": \"调查生产生活中利用或尽量减小摩擦的实例。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_activityText: "调查生产生活中利用或尽量减小摩擦的实例。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:4"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:4", title: "通过各种活动", description: "通过各种活动, 例如乘坐电梯、到游乐场参与有关游乐活动等, 体验超重和失重。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"activityText\": \"通过各种活动, 例如乘坐电梯、到游乐场参与有关游乐活动等, 体验超重和失重。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_activityText: "通过各种活动, 例如乘坐电梯、到游乐场参与有关游乐活动等, 体验超重和失重。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:5"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:5", title: "根据牛顿第二定律", description: "根据牛顿第二定律, 设计一种能显示加速度大小的装置。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"activityText\": \"根据牛顿第二定律, 设计一种能显示加速度大小的装置。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_activityText: "根据牛顿第二定律, 设计一种能显示加速度大小的装置。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:6"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:6", title: "炮弹的实际弹道与理想抛物线的差异", description: "查阅资料, 比较炮弹的实际弹道与理想抛物线的差异, 尝试作出解释。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"activityText\": \"查阅资料, 比较炮弹的实际弹道与理想抛物线的差异, 尝试作出解释。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_activityText: "查阅资料, 比较炮弹的实际弹道与理想抛物线的差异, 尝试作出解释。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:7"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:7", title: "收集资料", description: "收集资料, 探讨自行车拐弯时受到的向心力。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"activityText\": \"收集资料, 探讨自行车拐弯时受到的向心力。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_activityText: "收集资料, 探讨自行车拐弯时受到的向心力。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:8"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:8", title: "观看人造地球卫星、神舟飞船、航天飞机、空间站等相关视频资料", description: "观看人造地球卫星、神舟飞船、航天飞机、空间站等相关视频资料，与同学交流观后感。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"activityText\": \"观看人造地球卫星、神舟飞船、航天飞机、空间站等相关视频资料，与同学交流观后感。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_activityText: "观看人造地球卫星、神舟飞船、航天飞机、空间站等相关视频资料，与同学交流观后感。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:9"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:9", title: "收集我国和世界航天事业发展历史和前景的资料", description: "收集我国和世界航天事业发展历史和前景的资料, 写出调查报告。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"activityText\": \"收集我国和世界航天事业发展历史和前景的资料, 写出调查报告。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_activityText: "收集我国和世界航天事业发展历史和前景的资料, 写出调查报告。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:10"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:10", title: "有关相对论的科普书刊", description: "阅读有关相对论的科普书刊，举办小型讨论会。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:26\", \"themeL2Key\": \"2.3\", \"activityText\": \"阅读有关相对论的科普书刊，举办小型讨论会。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:26", CJ_themeL2Key: "2.3", CJ_activityText: "阅读有关相对论的科普书刊，举办小型讨论会。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:11"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:11", title: "观看有关宇宙起源的科教电视专题片", description: "观看有关宇宙起源的科教电视专题片，了解宇宙的演化。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:26\", \"themeL2Key\": \"2.3\", \"activityText\": \"观看有关宇宙起源的科教电视专题片，了解宇宙的演化。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:26", CJ_themeL2Key: "2.3", CJ_activityText: "观看有关宇宙起源的科教电视专题片，了解宇宙的演化。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:12"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:12", title: "通过观察、查阅资料等方式", description: "通过观察、查阅资料等方式, 了解避雷针的结构和基本原理, 撰写一篇研究报告。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"activityText\": \"通过观察、查阅资料等方式, 了解避雷针的结构和基本原理, 撰写一篇研究报告。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_activityText: "通过观察、查阅资料等方式, 了解避雷针的结构和基本原理, 撰写一篇研究报告。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:13"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:13", title: "收集资料", description: "收集资料, 综述静电的危害, 了解预防的方法。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"activityText\": \"收集资料, 综述静电的危害, 了解预防的方法。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_activityText: "收集资料, 综述静电的危害, 了解预防的方法。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:14"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:14", title: "通过观察、查阅资料等方式", description: "通过观察、查阅资料等方式，了解并分析电容器应用的实例，撰写研究报告。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"activityText\": \"通过观察、查阅资料等方式，了解并分析电容器应用的实例，撰写研究报告。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_activityText: "通过观察、查阅资料等方式，了解并分析电容器应用的实例，撰写研究报告。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:15"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:15", title: "分别描绘电炉丝、小灯泡、半导体二极管的  $I - U$  特性", description: "分别描绘电炉丝、小灯泡、半导体二极管的  $I - U$  特性曲线, 对比它们导电性能的特点。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:29\", \"themeL2Key\": \"3.2\", \"activityText\": \"分别描绘电炉丝、小灯泡、半导体二极管的  $I - U$  特性曲线, 对比它们导电性能的特点。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:29", CJ_themeL2Key: "3.2", CJ_activityText: "分别描绘电炉丝、小灯泡、半导体二极管的  $I - U$  特性曲线, 对比它们导电性能的特点。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:16"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:16", title: "收集新型电热器的资料", description: "收集新型电热器的资料, 了解其发热原理。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:29\", \"themeL2Key\": \"3.2\", \"activityText\": \"收集新型电热器的资料, 了解其发热原理。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:29", CJ_themeL2Key: "3.2", CJ_activityText: "收集新型电热器的资料, 了解其发热原理。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:17"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:17", title: "家庭用电器的工作状况", description: "观察家庭用电器的工作状况，检查是否存在安全隐患，知道安全用电的基本方法。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:29\", \"themeL2Key\": \"3.2\", \"activityText\": \"观察家庭用电器的工作状况，检查是否存在安全隐患，知道安全用电的基本方法。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:29", CJ_themeL2Key: "3.2", CJ_activityText: "观察家庭用电器的工作状况，检查是否存在安全隐患，知道安全用电的基本方法。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:18"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:18", title: "近年来家庭用电的情况", description: "调查近年来家庭用电的情况, 讨论节约用电如何从自己做起,养成节约用电的习惯。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:29\", \"themeL2Key\": \"3.2\", \"activityText\": \"调查近年来家庭用电的情况, 讨论节约用电如何从自己做起,养成节约用电的习惯。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:29", CJ_themeL2Key: "3.2", CJ_activityText: "调查近年来家庭用电的情况, 讨论节约用电如何从自己做起,养成节约用电的习惯。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:19"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:19", title: "了解我国古代对磁现象的认识和应用及其对人类文明的影响", description: "查阅资料，了解我国古代对磁现象的认识和应用及其对人类文明的影响。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:30\", \"themeL2Key\": \"3.3\", \"activityText\": \"查阅资料，了解我国古代对磁现象的认识和应用及其对人类文明的影响。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:30", CJ_themeL2Key: "3.3", CJ_activityText: "查阅资料，了解我国古代对磁现象的认识和应用及其对人类文明的影响。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:20"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:20", title: "了解电磁感应现象的发现过程", description: "查阅资料，了解电磁感应现象的发现过程。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:30\", \"themeL2Key\": \"3.3\", \"activityText\": \"查阅资料，了解电磁感应现象的发现过程。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:30", CJ_themeL2Key: "3.3", CJ_activityText: "查阅资料，了解电磁感应现象的发现过程。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:21"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:21", title: "电磁波在现代社会中应用的实例", description: "调查电磁波在现代社会中应用的实例。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:30\", \"themeL2Key\": \"3.3\", \"activityText\": \"调查电磁波在现代社会中应用的实例。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:30", CJ_themeL2Key: "3.3", CJ_activityText: "调查电磁波在现代社会中应用的实例。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:22"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:22", title: "查询一个火力发电厂的发电量和煤耗", description: "查询一个火力发电厂的发电量和煤耗, 计算该厂的发电效率,估算该厂每日发电的用煤量和二氧化碳的排放量。了解我国碳达峰、碳中和的目标和举措。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:31\", \"themeL2Key\": \"3.4\", \"activityText\": \"查询一个火力发电厂的发电量和煤耗, 计算该厂的发电效率,估算该厂每日发电的用煤量和二氧化碳的排放量。了解我国碳达峰、碳中和的目标和举措。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:31", CJ_themeL2Key: "3.4", CJ_activityText: "查询一个火力发电厂的发电量和煤耗, 计算该厂的发电效率,估算该厂每日发电的用煤量和二氧化碳的排放量。了解我国碳达峰、碳中和的目标和举措。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:23"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:23", title: "利用太阳能取暖的方案", description: "设计利用太阳能取暖的方案，讨论环境对太阳能利用的影响。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:31\", \"themeL2Key\": \"3.4\", \"activityText\": \"设计利用太阳能取暖的方案，讨论环境对太阳能利用的影响。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:31", CJ_themeL2Key: "3.4", CJ_activityText: "设计利用太阳能取暖的方案，讨论环境对太阳能利用的影响。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:24"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:24", title: "了解人类利用核裂变和核聚变释放核能的前景与挑战", description: "查阅资料, 了解人类利用核裂变和核聚变释放核能的前景与挑战。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:31\", \"themeL2Key\": \"3.4\", \"activityText\": \"查阅资料, 了解人类利用核裂变和核聚变释放核能的前景与挑战。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:31", CJ_themeL2Key: "3.4", CJ_activityText: "查阅资料, 了解人类利用核裂变和核聚变释放核能的前景与挑战。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:25"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:25", title: "家庭中与热有关的器具的使用情况", description: "调查家庭中与热有关的器具的使用情况, 讨论如何使用才能节约能源。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:31\", \"themeL2Key\": \"3.4\", \"activityText\": \"调查家庭中与热有关的器具的使用情况, 讨论如何使用才能节约能源。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:31", CJ_themeL2Key: "3.4", CJ_activityText: "调查家庭中与热有关的器具的使用情况, 讨论如何使用才能节约能源。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:26"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:26", title: "“水火箭”", description: "制作“水火箭”。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:21\", \"themeL2Key\": \"1.1\", \"activityText\": \"制作“水火箭”。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:21", CJ_themeL2Key: "1.1", CJ_activityText: "制作“水火箭”。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:27"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:27", title: "台球碰撞前后的运动情况", description: "观察台球碰撞前后的运动情况，尝试用动量知识定性解释。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:21\", \"themeL2Key\": \"1.1\", \"activityText\": \"观察台球碰撞前后的运动情况，尝试用动量知识定性解释。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:21", CJ_themeL2Key: "1.1", CJ_activityText: "观察台球碰撞前后的运动情况，尝试用动量知识定性解释。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:28"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:28", title: "学生们手拉手站成一排", description: "学生们手拉手站成一排, 依次下蹲、起立, 模拟机械波。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"activityText\": \"学生们手拉手站成一排, 依次下蹲、起立, 模拟机械波。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_activityText: "学生们手拉手站成一排, 依次下蹲、起立, 模拟机械波。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:29"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:29", title: "了解多普勒效应的实际应用", description: "查阅资料，了解多普勒效应的实际应用。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"activityText\": \"查阅资料，了解多普勒效应的实际应用。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_activityText: "查阅资料，了解多普勒效应的实际应用。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:30"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:30", title: "举办关于引力波的讨论会", description: "查阅资料, 举办关于引力波的讨论会。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"activityText\": \"查阅资料, 举办关于引力波的讨论会。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_activityText: "查阅资料, 举办关于引力波的讨论会。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:31"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:31", title: "通过调查研究", description: "通过调查研究，收集光的偏振现象应用的实例。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:23\", \"themeL2Key\": \"1.3\", \"activityText\": \"通过调查研究，收集光的偏振现象应用的实例。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:23", CJ_themeL2Key: "1.3", CJ_activityText: "通过调查研究，收集光的偏振现象应用的实例。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:32"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:32", title: "观看3D电影", description: "观看3D电影，查阅资料，了解3D电影的原理。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:23\", \"themeL2Key\": \"1.3\", \"activityText\": \"观看3D电影，查阅资料，了解3D电影的原理。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:23", CJ_themeL2Key: "1.3", CJ_activityText: "观看3D电影，查阅资料，了解3D电影的原理。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:33"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:33", title: "用电磁继电器设计一个自动控制电路", description: "用电磁继电器设计一个自动控制电路, 说明其工作原理。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:24\", \"themeL2Key\": \"2.1\", \"activityText\": \"用电磁继电器设计一个自动控制电路, 说明其工作原理。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:24", CJ_themeL2Key: "2.1", CJ_activityText: "用电磁继电器设计一个自动控制电路, 说明其工作原理。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:34"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:34", title: "洛伦兹力演示仪的结构", description: "观察洛伦兹力演示仪的结构，定性讨论电子束偏转的原理。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:24\", \"themeL2Key\": \"2.1\", \"activityText\": \"观察洛伦兹力演示仪的结构，定性讨论电子束偏转的原理。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:24", CJ_themeL2Key: "2.1", CJ_activityText: "观察洛伦兹力演示仪的结构，定性讨论电子束偏转的原理。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:35"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:35", title: "与同学讨论高速列车进站过程中是如何进行能量转化的", description: "查阅资料, 与同学讨论高速列车进站过程中是如何进行能量转化的。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"activityText\": \"查阅资料, 与同学讨论高速列车进站过程中是如何进行能量转化的。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_activityText: "查阅资料, 与同学讨论高速列车进站过程中是如何进行能量转化的。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:36"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:36", title: "报告分析电流磁效应和法拉第电磁感应定律对第二次工业革命的贡献", description: "查阅资料, 撰写报告分析电流磁效应和法拉第电磁感应定律对第二次工业革命的贡献, 体会科学技术对社会发展的意义。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"activityText\": \"查阅资料, 撰写报告分析电流磁效应和法拉第电磁感应定律对第二次工业革命的贡献, 体会科学技术对社会发展的意义。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_activityText: "查阅资料, 撰写报告分析电流磁效应和法拉第电磁感应定律对第二次工业革命的贡献, 体会科学技术对社会发展的意义。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:37"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:37", title: "了解微波炉的加热原理", description: "查阅资料，了解微波炉的加热原理，总结使用微波炉的注意事项。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:26\", \"themeL2Key\": \"2.3\", \"activityText\": \"查阅资料，了解微波炉的加热原理，总结使用微波炉的注意事项。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:26", CJ_themeL2Key: "2.3", CJ_activityText: "查阅资料，了解微波炉的加热原理，总结使用微波炉的注意事项。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:38"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:38", title: "了解移动通信技术发展情况", description: "查阅资料, 了解移动通信技术发展情况, 并了解蓝牙、Wi-Fi等无线通信技术的原理、使用的电磁波频段和常用频率。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:26\", \"themeL2Key\": \"2.3\", \"activityText\": \"查阅资料, 了解移动通信技术发展情况, 并了解蓝牙、Wi-Fi等无线通信技术的原理、使用的电磁波频段和常用频率。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:26", CJ_themeL2Key: "2.3", CJ_activityText: "查阅资料, 了解移动通信技术发展情况, 并了解蓝牙、Wi-Fi等无线通信技术的原理、使用的电磁波频段和常用频率。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:39"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:39", title: "列举家用电器和生活用品中与红外线、紫外线有关的应用实例", description: "列举家用电器和生活用品中与红外线、紫外线有关的应用实例。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:26\", \"themeL2Key\": \"2.3\", \"activityText\": \"列举家用电器和生活用品中与红外线、紫外线有关的应用实例。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:26", CJ_themeL2Key: "2.3", CJ_activityText: "列举家用电器和生活用品中与红外线、紫外线有关的应用实例。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:40"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:40", title: "生产生活中传感器的应用", description: "调查生产生活中传感器的应用，分析某一种传感器的工作原理。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:27\", \"themeL2Key\": \"2.4\", \"activityText\": \"调查生产生活中传感器的应用，分析某一种传感器的工作原理。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:27", CJ_themeL2Key: "2.4", CJ_activityText: "调查生产生活中传感器的应用，分析某一种传感器的工作原理。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:41"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:41", title: "手机中的各种传感器", description: "调查手机中的各种传感器, 了解它们的应用。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:27\", \"themeL2Key\": \"2.4\", \"activityText\": \"调查手机中的各种传感器, 了解它们的应用。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:27", CJ_themeL2Key: "2.4", CJ_activityText: "调查手机中的各种传感器, 了解它们的应用。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:42"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:42", title: "实验", description: "设计实验，比较肥皂水和清水的表面张力。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"activityText\": \"设计实验，比较肥皂水和清水的表面张力。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_activityText: "设计实验，比较肥皂水和清水的表面张力。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:43"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:43", title: "通过调查", description: "通过调查, 了解生活中表现统计规律的实例。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"activityText\": \"通过调查, 了解生活中表现统计规律的实例。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_activityText: "通过调查, 了解生活中表现统计规律的实例。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:44"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:44", title: "基于对热力学定律的认识", description: "基于对热力学定律的认识，结合可持续发展的观念，讨论人类合理开发和利用能源的问题。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:29\", \"themeL2Key\": \"3.2\", \"activityText\": \"基于对热力学定律的认识，结合可持续发展的观念，讨论人类合理开发和利用能源的问题。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:29", CJ_themeL2Key: "3.2", CJ_activityText: "基于对热力学定律的认识，结合可持续发展的观念，讨论人类合理开发和利用能源的问题。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:45"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:45", title: "为什么“第一类永动机”和“第二类永动机”不可能实现", description: "讨论为什么“第一类永动机”和“第二类永动机”不可能实现。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:29\", \"themeL2Key\": \"3.2\", \"activityText\": \"讨论为什么“第一类永动机”和“第二类永动机”不可能实现。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:29", CJ_themeL2Key: "3.2", CJ_activityText: "讨论为什么“第一类永动机”和“第二类永动机”不可能实现。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:46"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:46", title: "通过了解牛顿建立万有引力定律的过程", description: "通过了解牛顿建立万有引力定律的过程, 体会数学方法对物理学发展以及对人们探索自然奥秘的作用。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:21\", \"themeL2Key\": \"1.1\", \"activityText\": \"通过了解牛顿建立万有引力定律的过程, 体会数学方法对物理学发展以及对人们探索自然奥秘的作用。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:21", CJ_themeL2Key: "1.1", CJ_activityText: "通过了解牛顿建立万有引力定律的过程, 体会数学方法对物理学发展以及对人们探索自然奥秘的作用。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:47"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:47", title: "通过关于波粒二象性的讨论", description: "通过关于波粒二象性的讨论, 了解微观世界量子化的特征。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:21\", \"themeL2Key\": \"1.1\", \"activityText\": \"通过关于波粒二象性的讨论, 了解微观世界量子化的特征。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:21", CJ_themeL2Key: "1.1", CJ_activityText: "通过关于波粒二象性的讨论, 了解微观世界量子化的特征。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:48"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:48", title: "通过讨论交流", description: "通过讨论交流, 了解相对论时空观的特点。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:21\", \"themeL2Key\": \"1.1\", \"activityText\": \"通过讨论交流, 了解相对论时空观的特点。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:21", CJ_themeL2Key: "1.1", CJ_activityText: "通过讨论交流, 了解相对论时空观的特点。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:49"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:49", title: "参观或上网查询气象站", description: "参观或上网查询气象站, 了解当地空气指数及其影响因素。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"activityText\": \"参观或上网查询气象站, 了解当地空气指数及其影响因素。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_activityText: "参观或上网查询气象站, 了解当地空气指数及其影响因素。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:50"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:50", title: "参观或上网查询高新工业园区", description: "参观或上网查询高新工业园区, 了解高新技术发展现状。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"activityText\": \"参观或上网查询高新工业园区, 了解高新技术发展现状。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_activityText: "参观或上网查询高新工业园区, 了解高新技术发展现状。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:51"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:51", title: "了解世界各国核技术发展的概况", description: "查阅资料，了解世界各国核技术发展的概况。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"activityText\": \"查阅资料，了解世界各国核技术发展的概况。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_activityText: "查阅资料，了解世界各国核技术发展的概况。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:52"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:52", title: "与我国科学技术史相关的著作", description: "阅读与我国科学技术史相关的著作，了解我国古代科学技术的重要成就及其对世界文明产生的影响。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"activityText\": \"阅读与我国科学技术史相关的著作，了解我国古代科学技术的重要成就及其对世界文明产生的影响。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_activityText: "阅读与我国科学技术史相关的著作，了解我国古代科学技术的重要成就及其对世界文明产生的影响。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:53"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:53", title: "考察或上网查询", description: "考察或上网查询，了解我国风能、太阳能等的利用状况。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:23\", \"themeL2Key\": \"1.3\", \"activityText\": \"考察或上网查询，了解我国风能、太阳能等的利用状况。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:23", CJ_themeL2Key: "1.3", CJ_activityText: "考察或上网查询，了解我国风能、太阳能等的利用状况。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:54"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:54", title: "考察或上网查询", description: "考察或上网查询，了解智能家居。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:23\", \"themeL2Key\": \"1.3\", \"activityText\": \"考察或上网查询，了解智能家居。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:23", CJ_themeL2Key: "1.3", CJ_activityText: "考察或上网查询，了解智能家居。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:55"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:55", title: "利用计算机多媒体技术制作个性化的网页", description: "利用计算机多媒体技术制作个性化的网页。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:23\", \"themeL2Key\": \"1.3\", \"activityText\": \"利用计算机多媒体技术制作个性化的网页。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:23", CJ_themeL2Key: "1.3", CJ_activityText: "利用计算机多媒体技术制作个性化的网页。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:56"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:56", title: "上网查询", description: "上网查询，了解航天技术应用的现状及发展前景。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:23\", \"themeL2Key\": \"1.3\", \"activityText\": \"上网查询，了解航天技术应用的现状及发展前景。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:23", CJ_themeL2Key: "1.3", CJ_activityText: "上网查询，了解航天技术应用的现状及发展前景。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:57"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:57", title: "列举物理治疗方法", description: "查阅资料, 列举物理治疗方法, 并对这些方法进行分类探讨。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:24\", \"themeL2Key\": \"2.1\", \"activityText\": \"查阅资料, 列举物理治疗方法, 并对这些方法进行分类探讨。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:24", CJ_themeL2Key: "2.1", CJ_activityText: "查阅资料, 列举物理治疗方法, 并对这些方法进行分类探讨。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:58"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:58", title: "观看视频", description: "观看视频，了解B超、CT等医疗设备检查病人的过程。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:24\", \"themeL2Key\": \"2.1\", \"activityText\": \"观看视频，了解B超、CT等医疗设备检查病人的过程。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:24", CJ_themeL2Key: "2.1", CJ_activityText: "观看视频，了解B超、CT等医疗设备检查病人的过程。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:59"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:59", title: "了解煤炭等能源利用中的问题", description: "查阅资料, 了解煤炭等能源利用中的问题, 了解可再生能源开发的必要性。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"activityText\": \"查阅资料, 了解煤炭等能源利用中的问题, 了解可再生能源开发的必要性。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_activityText: "查阅资料, 了解煤炭等能源利用中的问题, 了解可再生能源开发的必要性。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:60"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:60", title: "了解我国及其他国家对核能利用的概况", description: "查阅资料，了解我国及其他国家对核能利用的概况。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"activityText\": \"查阅资料，了解我国及其他国家对核能利用的概况。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_activityText: "查阅资料，了解我国及其他国家对核能利用的概况。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:61"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:61", title: "了解国际上一些重大的核泄漏事故及其影响", description: "查阅资料, 了解国际上一些重大的核泄漏事故及其影响。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"activityText\": \"查阅资料, 了解国际上一些重大的核泄漏事故及其影响。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_activityText: "查阅资料, 了解国际上一些重大的核泄漏事故及其影响。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:62"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:62", title: "举行关于新材料应用的报告会", description: "举行关于新材料应用的报告会, 了解一些新材料的发展史。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:26\", \"themeL2Key\": \"2.3\", \"activityText\": \"举行关于新材料应用的报告会, 了解一些新材料的发展史。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:26", CJ_themeL2Key: "2.3", CJ_activityText: "举行关于新材料应用的报告会, 了解一些新材料的发展史。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:63"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:63", title: "参观科技馆或查找资料", description: "参观科技馆或查找资料, 了解纳米材料的一些实际应用。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:26\", \"themeL2Key\": \"2.3\", \"activityText\": \"参观科技馆或查找资料, 了解纳米材料的一些实际应用。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:26", CJ_themeL2Key: "2.3", CJ_activityText: "参观科技馆或查找资料, 了解纳米材料的一些实际应用。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:64"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:64", title: "列举身边的功能材料", description: "列举身边的功能材料, 了解功能材料在生活中的应用。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:26\", \"themeL2Key\": \"2.3\", \"activityText\": \"列举身边的功能材料, 了解功能材料在生活中的应用。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:26", CJ_themeL2Key: "2.3", CJ_activityText: "列举身边的功能材料, 了解功能材料在生活中的应用。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:65"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:65", title: "了解制约芯片制造和限制运算速度提升的物理因素", description: "查阅资料, 了解制约芯片制造和限制运算速度提升的物理因素。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:27\", \"themeL2Key\": \"2.4\", \"activityText\": \"查阅资料, 了解制约芯片制造和限制运算速度提升的物理因素。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:27", CJ_themeL2Key: "2.4", CJ_activityText: "查阅资料, 了解制约芯片制造和限制运算速度提升的物理因素。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:66"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:66", title: "手机使用给人们带来的便利和问题", description: "讨论手机使用给人们带来的便利和问题。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:27\", \"themeL2Key\": \"2.4\", \"activityText\": \"讨论手机使用给人们带来的便利和问题。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:27", CJ_themeL2Key: "2.4", CJ_activityText: "讨论手机使用给人们带来的便利和问题。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:67"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:67", title: "与同学分享全球定位技术在生活中的应用", description: "查阅资料, 与同学分享全球定位技术在生活中的应用。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:27\", \"themeL2Key\": \"2.4\", \"activityText\": \"查阅资料, 与同学分享全球定位技术在生活中的应用。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:27", CJ_themeL2Key: "2.4", CJ_activityText: "查阅资料, 与同学分享全球定位技术在生活中的应用。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:68"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:68", title: "了解我国北斗卫星导航系统及其价值", description: "查阅资料，了解我国北斗卫星导航系统及其价值。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:27\", \"themeL2Key\": \"2.4\", \"activityText\": \"查阅资料，了解我国北斗卫星导航系统及其价值。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:27", CJ_themeL2Key: "2.4", CJ_activityText: "查阅资料，了解我国北斗卫星导航系统及其价值。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:69"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:69", title: "人工智能在现代生活中的应用", description: "讨论人工智能在现代生活中的应用；分享自己应用人工智能解决问题的经验。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:27\", \"themeL2Key\": \"2.4\", \"activityText\": \"讨论人工智能在现代生活中的应用；分享自己应用人工智能解决问题的经验。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:27", CJ_themeL2Key: "2.4", CJ_activityText: "讨论人工智能在现代生活中的应用；分享自己应用人工智能解决问题的经验。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:70"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:70", title: "波粒二象性的发展简史", description: "查阅波粒二象性的发展简史，用简报展示出来。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"activityText\": \"查阅波粒二象性的发展简史，用简报展示出来。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_activityText: "查阅波粒二象性的发展简史，用简报展示出来。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:71"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:71", title: "与“量子纠缠”研究及其应用有关的信息", description: "查阅与“量子纠缠”研究及其应用有关的信息，了解我国科学家作出的贡献。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"activityText\": \"查阅与“量子纠缠”研究及其应用有关的信息，了解我国科学家作出的贡献。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_activityText: "查阅与“量子纠缠”研究及其应用有关的信息，了解我国科学家作出的贡献。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:72"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:72", title: "了解量子计算机的发展", description: "查阅资料，了解量子计算机的发展。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"activityText\": \"查阅资料，了解量子计算机的发展。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_activityText: "查阅资料，了解量子计算机的发展。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:73"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:73", title: "小组讨论 “双生子佯谬” 问题", description: "小组讨论 “双生子佯谬” 问题, 分享各自的观点。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:29\", \"themeL2Key\": \"3.2\", \"activityText\": \"小组讨论 “双生子佯谬” 问题, 分享各自的观点。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:29", CJ_themeL2Key: "3.2", CJ_activityText: "小组讨论 “双生子佯谬” 问题, 分享各自的观点。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:74"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:74", title: "了解引力波的产生及其探测", description: "查阅资料，了解引力波的产生及其探测。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:29\", \"themeL2Key\": \"3.2\", \"activityText\": \"查阅资料，了解引力波的产生及其探测。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:29", CJ_themeL2Key: "3.2", CJ_activityText: "查阅资料，了解引力波的产生及其探测。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:75"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:75", title: "观看影片", description: "观看影片，讨论大爆炸宇宙论的观测证据。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:30\", \"themeL2Key\": \"3.3\", \"activityText\": \"观看影片，讨论大爆炸宇宙论的观测证据。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:30", CJ_themeL2Key: "3.3", CJ_activityText: "观看影片，讨论大爆炸宇宙论的观测证据。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:76"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:76", title: "人类探索反物质的历程", description: "查阅资料，讨论人类探索反物质的历程。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:30\", \"themeL2Key\": \"3.3\", \"activityText\": \"查阅资料，讨论人类探索反物质的历程。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:30", CJ_themeL2Key: "3.3", CJ_activityText: "查阅资料，讨论人类探索反物质的历程。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:77"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:77", title: "“希格斯粒子” 及其意义", description: "查阅资料, 讨论 “希格斯粒子” 及其意义。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:31\", \"themeL2Key\": \"3.4\", \"activityText\": \"查阅资料, 讨论 “希格斯粒子” 及其意义。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:31", CJ_themeL2Key: "3.4", CJ_activityText: "查阅资料, 讨论 “希格斯粒子” 及其意义。", CJ_fromSection: "活动建议"};

MERGE (n:ActivitySuggestion {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:78"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:78", title: "举办与现代物理进展有关的科普论坛", description: "举办与现代物理进展有关的科普论坛，通过班会或墙报交流。", subject: "SB0401", type: "ActivitySuggestion", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:31\", \"themeL2Key\": \"3.4\", \"activityText\": \"举办与现代物理进展有关的科普论坛，通过班会或墙报交流。\", \"fromSection\": \"活动建议\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:31", CJ_themeL2Key: "3.4", CJ_activityText: "举办与现代物理进展有关的科普论坛，通过班会或墙报交流。", CJ_fromSection: "活动建议"};

MERGE (n:Theme {identifier: "urn:jy:physics:SB0401:OB06:Theme:1"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Theme:1", title: "必修1", description: "本模块由“机械运动与物理模型”“相互作用与运动定律”两个主题组成。", subject: "SB0401", type: "Theme", applicableLevel: "OB06", contentJson: "{\"teachingTip\": \"本模块注重在机械运动情境下培养学生的运动和相互作用观念、模型建构等物理学科核心素养。教学中应根据本模块所学物理模型的特点，联系生产生活实际，从多个角度创设情境，提出与物理学有关的问题，引导学生讨论，让学生体会建构物理模型的必要性及方法等。让学生经历建构速度、加速度、力等重要物理概念的过程，了解测量这些物理量的方法，进而学习定量描述生活中物体运动和相互作用的方法。通过探究物体间相互作用与运动状态变化的关系等实验，引导学生运用控制变量等研究方法设计实验方案，学会分析和处理实验数据的方法，提高科学探究能力。结合物理学史，引导学生认识实验探究与科学思维的结合对物理学发展的重要作用。\", \"academicRequirement\": \"能用位移、速度、加速度等物理量描述物体的直线运动；能用匀变\\n\\n速直线运动的规律解决生活中的具体问题。能对物体的受力和运动情况进行分析，得出结论；能从物理学视角分析自然、生活中与运动和相互作用有关的简单问题。\\n\\n了解建立质点模型的抽象方法和质点模型的适用条件，能在特定情境下将物体抽象为质点，体会物理模型建构的思想和方法；通过瞬时速度和加速度概念的建构，体会物理问题研究中的极限方法和抽象思维方法；知道证据是物理研究的基础，能使用证据表达自己的观点；能提出自己的见解。\\n\\n能完成“探究加速度与物体受力、物体质量的关系”等实验。能明确科学探究实验所要解决的问题；知道制订实验方案的重要性，能运用控制变量的方法设计实验方案，会使用基本的力学实验器材获取数据，能用物理图像描述实验数据；能根据数据得出实验结论，知道实验存在误差；能表达科学探究的过程和结果。\\n\\n通过对直线运动和牛顿运动定律的学习，认识物理学是对自然现象的描述与解释；具有学习物理学的兴趣；增强安全意识。\"}", CJ_teachingTip: "本模块注重在机械运动情境下培养学生的运动和相互作用观念、模型建构等物理学科核心素养。教学中应根据本模块所学物理模型的特点，联系生产生活实际，从多个角度创设情境，提出与物理学有关的问题，引导学生讨论，让学生体会建构物理模型的必要性及方法等。让学生经历建构速度、加速度、力等重要物理概念的过程，了解测量这些物理量的方法，进而学习定量描述生活中物体运动和相互作用的方法。通过探究物体间相互作用与运动状态变化的关系等实验，引导学生运用控制变量等研究方法设计实验方案，学会分析和处理实验数据的方法，提高科学探究能力。结合物理学史，引导学生认识实验探究与科学思维的结合对物理学发展的重要作用。", CJ_academicRequirement: "能用位移、速度、加速度等物理量描述物体的直线运动；能用匀变\n\n速直线运动的规律解决生活中的具体问题。能对物体的受力和运动情况进行分析，得出结论；能从物理学视角分析自然、生活中与运动和相互作用有关的简单问题。\n\n了解建立质点模型的抽象方法和质点模型的适用条件，能在特定情境下将物体抽象为质点，体会物理模型建构的思想和方法；通过瞬时速度和加速度概念的建构，体会物理问题研究中的极限方法和抽象思维方法；知道证据是物理研究的基础，能使用证据表达自己的观点；能提出自己的见解。\n\n能完成“探究加速度与物体受力、物体质量的关系”等实验。能明确科学探究实验所要解决的问题；知道制订实验方案的重要性，能运用控制变量的方法设计实验方案，会使用基本的力学实验器材获取数据，能用物理图像描述实验数据；能根据数据得出实验结论，知道实验存在误差；能表达科学探究的过程和结果。\n\n通过对直线运动和牛顿运动定律的学习，认识物理学是对自然现象的描述与解释；具有学习物理学的兴趣；增强安全意识。"};

MERGE (n:Theme {identifier: "urn:jy:physics:SB0401:OB06:Theme:2"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Theme:2", title: "必修2", description: "本模块由“机械能及其守恒定律”“曲线运动与万有引力定律”“牛顿力学的局限性与相对论初步”三个主题组成。", subject: "SB0401", type: "Theme", applicableLevel: "OB06", contentJson: "{\"teachingTip\": \"本模块通过实验及理论推导等方法，让学生理解重力势能变化与重力做功的关系，理解动能定理和机械能守恒定律，学会从机械能转化和守恒的视角分析物理问题，形成初步的能量观念。在应用机械能守恒定律解决问题的过程中，引导学生体会守恒的思想，领悟从守恒的角度分析问题的方法，增强分析和解决问题的能力。让学生通过研究平抛运动、匀速圆周运动等运动形式，体会物理学中化繁为简的研究方法，拓展对运动多样性的认识，深化对位移、速度、加速度等重要概念的理解，进一步提高关于力与运动关系的认识。引导学生关注物理学定律与航天技术等现代科技的联系，了解人类对宇宙天体的探索历程，从万有引力定律的普适性认识自然界的统一性。通过对相对论的初步介绍，引导学生认识牛顿力学的局限性，体会人类对自然界的探索是不断深入的。\", \"academicRequirement\": \"能对常见的机械运动进行分类，能理解功、功率、动能定理及机械能守恒定律等，能认识曲线运动的基本规律和万有引力定律，初步了解相对论时空观的内容；会用运动和相互作用的知识分析曲线运动问题，能用万有引力定律分析简单的天体运动问题，能用能量的观点分析和解释常见的机械运动问题。\\n\\n能认识平抛运动、匀速圆周运动的物理模型特征，知道机械能守恒是一种理想情况；通过研究平抛运动、匀速圆周运动等运动形式，能体会物理学中实验和理论推导的方法，以及化繁为简的研究方法；能使用证据说明自己的观点；能对关于机械能、曲线运动、引力的一些错误认识提出质疑。\\n\\n能完成“探究平抛运动的特点”等实验。能明确实验需要测量的物\\n\\n理量，由此设计实验方案，会使用所提供的实验器材进行实验并获得数据；能通过对数据的分析发现其中的特点，进而归纳出实验结论，并尝试对其作出解释；能撰写简单的实验报告。\\n\\n通过对行星运动规律和相对论的学习，认识到科学研究需要大胆的想象和创新，科学理论既具有相对稳定性，又是不断发展的，人类对自然的探索永无止境；具有探索自然、造福人类的意识；能为我国卓越的科技成就感到自豪，具有科技强国的责任感和使命感。\"}", CJ_teachingTip: "本模块通过实验及理论推导等方法，让学生理解重力势能变化与重力做功的关系，理解动能定理和机械能守恒定律，学会从机械能转化和守恒的视角分析物理问题，形成初步的能量观念。在应用机械能守恒定律解决问题的过程中，引导学生体会守恒的思想，领悟从守恒的角度分析问题的方法，增强分析和解决问题的能力。让学生通过研究平抛运动、匀速圆周运动等运动形式，体会物理学中化繁为简的研究方法，拓展对运动多样性的认识，深化对位移、速度、加速度等重要概念的理解，进一步提高关于力与运动关系的认识。引导学生关注物理学定律与航天技术等现代科技的联系，了解人类对宇宙天体的探索历程，从万有引力定律的普适性认识自然界的统一性。通过对相对论的初步介绍，引导学生认识牛顿力学的局限性，体会人类对自然界的探索是不断深入的。", CJ_academicRequirement: "能对常见的机械运动进行分类，能理解功、功率、动能定理及机械能守恒定律等，能认识曲线运动的基本规律和万有引力定律，初步了解相对论时空观的内容；会用运动和相互作用的知识分析曲线运动问题，能用万有引力定律分析简单的天体运动问题，能用能量的观点分析和解释常见的机械运动问题。\n\n能认识平抛运动、匀速圆周运动的物理模型特征，知道机械能守恒是一种理想情况；通过研究平抛运动、匀速圆周运动等运动形式，能体会物理学中实验和理论推导的方法，以及化繁为简的研究方法；能使用证据说明自己的观点；能对关于机械能、曲线运动、引力的一些错误认识提出质疑。\n\n能完成“探究平抛运动的特点”等实验。能明确实验需要测量的物\n\n理量，由此设计实验方案，会使用所提供的实验器材进行实验并获得数据；能通过对数据的分析发现其中的特点，进而归纳出实验结论，并尝试对其作出解释；能撰写简单的实验报告。\n\n通过对行星运动规律和相对论的学习，认识到科学研究需要大胆的想象和创新，科学理论既具有相对稳定性，又是不断发展的，人类对自然的探索永无止境；具有探索自然、造福人类的意识；能为我国卓越的科技成就感到自豪，具有科技强国的责任感和使命感。"};

MERGE (n:Theme {identifier: "urn:jy:physics:SB0401:OB06:Theme:3"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Theme:3", title: "必修3", description: "本模块由“静电场”“电路及其应用”“电磁场与电磁波初步”“能源与可持续发展”四个主题组成。", subject: "SB0401", type: "Theme", applicableLevel: "OB06", contentJson: "{\"teachingTip\": \"本模块通过静电场、电路及其应用、电磁场与电磁波初步以及能源与可持续发展等内容的学习，引导学生了解场的物质性，知道光是一种电磁波、光的能量是不连续的，初步了解微观世界的量子化特征，培养学生的物质观念、运动和相互作用观念、能量观念。引导学生学会建立点电荷、电场线、磁感线等物理模型，体会物理模型在研究具体问题中的重要作用。让学生了解用物理量之比定义新物理量的方法，了解电场强度、电势等物理量的含义并体会其定义方法。重视发挥物理学史的教育功能，让学生了解库仑定律的探索历程，体会库仑扭秤实验设计的实验思想与方法。让学生了解磁场的基本概念，利用与静电场对比的方法了解磁感应强度，知道磁通量是一个重要的物理量。引导学生通过实验了解产生感应电流的条件，体会科学实验在物理学发展中的重要作用。在实验探究金属导体的电阻与材料、长度和横截面积的定量关系，以及闭合电路欧姆定律等内容的学习中，创设激发学生探究欲望的问题情境，引导学生进行科学探究，培养学生实验设计、分析论证、反思评估等能力。本模块内容与生产生活、科技进步、社会发展密切相关，要充分利用多种教学资源，引导学生了解电磁感应现象在生产生活中的应\\n\\n用，认识能源开发与利用对人类生活和社会发展的影响，认同人与自然和谐共生的理念，关注科学、技术、社会及环境的关系，培养学生解决实际问题的能力。\", \"academicRequirement\": \"能用电场强度、电势、磁感应强度等物理量描述电场或磁场的性质；会用库仑定律分析点电荷之间的相互作用，会用闭合电路欧姆定律等分析电路各部分之间电学量的相互关系，能用电势能和焦耳定律等分析电学中的能量转化问题。知道电磁场的物质性；能说出电磁感应现象在生产生活中应用的实例，能利用场的性质解释有关电磁波的现象。\\n\\n能用点电荷模型研究电荷间的相互作用，能用电场线、磁感线等模型分析电场和磁场中比较简单的问题，并得出结论；在分析和论证过程中，能使用证据论证自己的观点。\\n\\n能完成“测量电源的电动势和内阻”等实验。能提出与电磁学相关的科学探究问题；能在教师指导下制订实验方案，能选用实验器材进行实验，获取实验数据；会用图像处理实验数据，能根据图像获得结论，能分析实验中存在的误差，并能提出减小误差的方法；能运用学过的物理学术语撰写实验报告。\\n\\n通过对电磁学及能源相关内容的学习，能认识科学对技术的推动作用，体会科技进步对人类生活和社会发展的影响；具有严谨认真的科学态度；能认识科学、技术、社会及环境的关系，知道保护环境、节约能源、促进可持续发展的重要意义。\\n\\n# （二）选择性必修课程\"}", CJ_teachingTip: "本模块通过静电场、电路及其应用、电磁场与电磁波初步以及能源与可持续发展等内容的学习，引导学生了解场的物质性，知道光是一种电磁波、光的能量是不连续的，初步了解微观世界的量子化特征，培养学生的物质观念、运动和相互作用观念、能量观念。引导学生学会建立点电荷、电场线、磁感线等物理模型，体会物理模型在研究具体问题中的重要作用。让学生了解用物理量之比定义新物理量的方法，了解电场强度、电势等物理量的含义并体会其定义方法。重视发挥物理学史的教育功能，让学生了解库仑定律的探索历程，体会库仑扭秤实验设计的实验思想与方法。让学生了解磁场的基本概念，利用与静电场对比的方法了解磁感应强度，知道磁通量是一个重要的物理量。引导学生通过实验了解产生感应电流的条件，体会科学实验在物理学发展中的重要作用。在实验探究金属导体的电阻与材料、长度和横截面积的定量关系，以及闭合电路欧姆定律等内容的学习中，创设激发学生探究欲望的问题情境，引导学生进行科学探究，培养学生实验设计、分析论证、反思评估等能力。本模块内容与生产生活、科技进步、社会发展密切相关，要充分利用多种教学资源，引导学生了解电磁感应现象在生产生活中的应\n\n用，认识能源开发与利用对人类生活和社会发展的影响，认同人与自然和谐共生的理念，关注科学、技术、社会及环境的关系，培养学生解决实际问题的能力。", CJ_academicRequirement: "能用电场强度、电势、磁感应强度等物理量描述电场或磁场的性质；会用库仑定律分析点电荷之间的相互作用，会用闭合电路欧姆定律等分析电路各部分之间电学量的相互关系，能用电势能和焦耳定律等分析电学中的能量转化问题。知道电磁场的物质性；能说出电磁感应现象在生产生活中应用的实例，能利用场的性质解释有关电磁波的现象。\n\n能用点电荷模型研究电荷间的相互作用，能用电场线、磁感线等模型分析电场和磁场中比较简单的问题，并得出结论；在分析和论证过程中，能使用证据论证自己的观点。\n\n能完成“测量电源的电动势和内阻”等实验。能提出与电磁学相关的科学探究问题；能在教师指导下制订实验方案，能选用实验器材进行实验，获取实验数据；会用图像处理实验数据，能根据图像获得结论，能分析实验中存在的误差，并能提出减小误差的方法；能运用学过的物理学术语撰写实验报告。\n\n通过对电磁学及能源相关内容的学习，能认识科学对技术的推动作用，体会科技进步对人类生活和社会发展的影响；具有严谨认真的科学态度；能认识科学、技术、社会及环境的关系，知道保护环境、节约能源、促进可持续发展的重要意义。\n\n# （二）选择性必修课程"};

MERGE (n:Theme {identifier: "urn:jy:physics:SB0401:OB06:Theme:4"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Theme:4", title: "选择性必修1", description: "本模块由“动量与动量守恒定律”“机械振动与机械波”“光及其应用”三个主题组成。", subject: "SB0401", type: "Theme", applicableLevel: "OB06", contentJson: "{\"teachingTip\": \"本模块在学生初步形成运动和相互作用观念、能量观念的基础上，引导学生通过研究碰撞现象、机械振动和机械波、光的干涉和衍射等现象，拓展对物理世界的认识和理解。通过探究碰撞过程中的守恒量，进一步发展学生的运动和相互作用观念、能量观念，使其了解物理规律具有适用范围和条件。通过实验探究和理论推导，让学生经历科学论证过程，理解动量定理的物理实质与牛顿第二定律的一致性。通过创设学生感兴趣的问题情境，引导学生运用已有的概念和规律分析常见的碰撞、机械振动、机械波等现象，建构弹性碰撞、简谐运动、单摆等模型，学会用守恒定律解决问题的方法。在研究碰撞现象、单摆运动等实验过程\\n\\n中，进一步领会守恒思想，提高建模能力。通过根据光的干涉、衍射等现象来论证光具有波动性，增强学生的证据意识，提升科学论证能力。引导学生从相互作用和能量的角度认识机械振动和机械波，了解波动的特征，为深入学习和研究电磁波打好基础。注意拓展学生的视野，从动量守恒定律的普适性来认识自然界的统一性。\", \"academicRequirement\": \"能从理论推导和实验验证的角度，理解动量守恒定律，深化对物体之间相互作用规律的理解；能用动量和机械能的知识分析和解释机械运动现象，解决一维碰撞问题。能用恰当的物理量描述简谐运动和机械波，能说明机械波的特点；能解释生产生活中的有关现象。知道光的干涉、衍射和偏振；能运用相关知识解释光学现象。\\n\\n能根据现实生活中的振动或摆动的特点，建构简谐运动、单摆等物理模型，能运用这些模型分析问题；会用系统的思想和守恒的思想分析物理问题，通过推理得出结论；能恰当使用证据说明自己的观点；敢于质疑他人的观点，能从牛顿运动定律、动量守恒、能量守恒等不同角度思考物理问题。\\n\\n能完成“用单摆测量重力加速度的大小”等实验。能对生活中某些现象产生的原因作出猜想；能恰当选用基本的实验器材进行实验，会设计实验方案，能对实验器材进行规范操作，获得实验数据；认识实验误差是不可避免的，具有减小实验误差的意识，能通过不同方式分析数据，获得结论，并尝试作出解释；能用科学的语言撰写实验报告。\\n\\n通过对动量守恒定律等内容的学习，能认识物理规律的内在一致性和适用范围，认识物理研究是建立在观察和实验基础上的一项创造性工作；具有实事求是的科学态度；能认识我国光纤通信的成就，增强民族自豪感和社会责任感。\"}", CJ_teachingTip: "本模块在学生初步形成运动和相互作用观念、能量观念的基础上，引导学生通过研究碰撞现象、机械振动和机械波、光的干涉和衍射等现象，拓展对物理世界的认识和理解。通过探究碰撞过程中的守恒量，进一步发展学生的运动和相互作用观念、能量观念，使其了解物理规律具有适用范围和条件。通过实验探究和理论推导，让学生经历科学论证过程，理解动量定理的物理实质与牛顿第二定律的一致性。通过创设学生感兴趣的问题情境，引导学生运用已有的概念和规律分析常见的碰撞、机械振动、机械波等现象，建构弹性碰撞、简谐运动、单摆等模型，学会用守恒定律解决问题的方法。在研究碰撞现象、单摆运动等实验过程\n\n中，进一步领会守恒思想，提高建模能力。通过根据光的干涉、衍射等现象来论证光具有波动性，增强学生的证据意识，提升科学论证能力。引导学生从相互作用和能量的角度认识机械振动和机械波，了解波动的特征，为深入学习和研究电磁波打好基础。注意拓展学生的视野，从动量守恒定律的普适性来认识自然界的统一性。", CJ_academicRequirement: "能从理论推导和实验验证的角度，理解动量守恒定律，深化对物体之间相互作用规律的理解；能用动量和机械能的知识分析和解释机械运动现象，解决一维碰撞问题。能用恰当的物理量描述简谐运动和机械波，能说明机械波的特点；能解释生产生活中的有关现象。知道光的干涉、衍射和偏振；能运用相关知识解释光学现象。\n\n能根据现实生活中的振动或摆动的特点，建构简谐运动、单摆等物理模型，能运用这些模型分析问题；会用系统的思想和守恒的思想分析物理问题，通过推理得出结论；能恰当使用证据说明自己的观点；敢于质疑他人的观点，能从牛顿运动定律、动量守恒、能量守恒等不同角度思考物理问题。\n\n能完成“用单摆测量重力加速度的大小”等实验。能对生活中某些现象产生的原因作出猜想；能恰当选用基本的实验器材进行实验，会设计实验方案，能对实验器材进行规范操作，获得实验数据；认识实验误差是不可避免的，具有减小实验误差的意识，能通过不同方式分析数据，获得结论，并尝试作出解释；能用科学的语言撰写实验报告。\n\n通过对动量守恒定律等内容的学习，能认识物理规律的内在一致性和适用范围，认识物理研究是建立在观察和实验基础上的一项创造性工作；具有实事求是的科学态度；能认识我国光纤通信的成就，增强民族自豪感和社会责任感。"};

MERGE (n:Theme {identifier: "urn:jy:physics:SB0401:OB06:Theme:5"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Theme:5", title: "选择性必修2", description: "本模块由“磁场”“电磁感应及其应用”“电磁振荡与电磁波”“传感器”四个主题组成。", subject: "SB0401", type: "Theme", applicableLevel: "OB06", contentJson: "{\"teachingTip\": \"本模块通过电磁学内容的学习，进一步培养学生关于电磁场的物质观念、运动和相互作用观念、能量观念。要引导学生通过安培力与洛伦兹力的学习进一步认识场的概念。通过对感应电流等相关问题的科学探究，强调对实验现象和实验结果进行归纳推理的方法，以此提升学生对实验结果定性和定量分析的能力。要利用基于实际情境的问题，让学生了解法拉第电磁感应定律、楞次定律等电磁学基本规律在生产生活中的应用，了解电磁振荡的过程、交变电流的产生原理和方式，了解高压输电、变压器等的原理，认识常用传感器的基本原理和简单的控制电路，认识物理学对现代生活和科技社会发展的促进作用。\", \"academicRequirement\": \"能认识洛伦兹力和安培力，理解法拉第电磁感应定律、楞次定律，了解电磁振荡和电磁波等；能说出电磁技术在生产生活、科技和军事等方面的一些重要应用，能根据电磁感应、电磁振荡和电磁波理论解释生产生活中的电磁现象，能对常用电子设备、家用电器中有关的一些电磁元件或部件的工作原理作出解释。\\n\\n能应用磁感线、匀强磁场等模型综合分析磁场和电磁感应问题；能根据法拉第电磁感应定律和楞次定律对有关具体问题进行推理；能合理使用证据，得出结论；能对某些电磁学问题表达自己的见解，尝试对日常生活中的有关问题提出改进建议。\\n\\n能完成“探究影响感应电流方向的因素”等实验。能根据检验假设的思路，制订科学探究实验方案，正确操作实验器材，获得可靠的实验数据；能通过分析数据发现规律，进而通过归纳形成简洁的、具有普遍意义的结论；能写出完整的实验报告。\\n\\n通过对电磁感应、交变电流及电磁波等内容的学习，能根据电磁理\\n\\n论的发展过程及其对人类社会影响的历史，了解科技对人类生活和社会发展的影响，体会基础科学的重大发现在促进人类生活方式变革及推动社会发展中的作用；能感受物理知识与人们生活的密切联系，具有对物理学的兴趣；能认识我国在特高压直流输电技术领域中的瞩目成就，如“西电东送”工程，具有民族复兴的自豪感和责任感，树立报国强国志向。\"}", CJ_teachingTip: "本模块通过电磁学内容的学习，进一步培养学生关于电磁场的物质观念、运动和相互作用观念、能量观念。要引导学生通过安培力与洛伦兹力的学习进一步认识场的概念。通过对感应电流等相关问题的科学探究，强调对实验现象和实验结果进行归纳推理的方法，以此提升学生对实验结果定性和定量分析的能力。要利用基于实际情境的问题，让学生了解法拉第电磁感应定律、楞次定律等电磁学基本规律在生产生活中的应用，了解电磁振荡的过程、交变电流的产生原理和方式，了解高压输电、变压器等的原理，认识常用传感器的基本原理和简单的控制电路，认识物理学对现代生活和科技社会发展的促进作用。", CJ_academicRequirement: "能认识洛伦兹力和安培力，理解法拉第电磁感应定律、楞次定律，了解电磁振荡和电磁波等；能说出电磁技术在生产生活、科技和军事等方面的一些重要应用，能根据电磁感应、电磁振荡和电磁波理论解释生产生活中的电磁现象，能对常用电子设备、家用电器中有关的一些电磁元件或部件的工作原理作出解释。\n\n能应用磁感线、匀强磁场等模型综合分析磁场和电磁感应问题；能根据法拉第电磁感应定律和楞次定律对有关具体问题进行推理；能合理使用证据，得出结论；能对某些电磁学问题表达自己的见解，尝试对日常生活中的有关问题提出改进建议。\n\n能完成“探究影响感应电流方向的因素”等实验。能根据检验假设的思路，制订科学探究实验方案，正确操作实验器材，获得可靠的实验数据；能通过分析数据发现规律，进而通过归纳形成简洁的、具有普遍意义的结论；能写出完整的实验报告。\n\n通过对电磁感应、交变电流及电磁波等内容的学习，能根据电磁理\n\n论的发展过程及其对人类社会影响的历史，了解科技对人类生活和社会发展的影响，体会基础科学的重大发现在促进人类生活方式变革及推动社会发展中的作用；能感受物理知识与人们生活的密切联系，具有对物理学的兴趣；能认识我国在特高压直流输电技术领域中的瞩目成就，如“西电东送”工程，具有民族复兴的自豪感和责任感，树立报国强国志向。"};

MERGE (n:Theme {identifier: "urn:jy:physics:SB0401:OB06:Theme:6"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Theme:6", title: "选择性必修3", description: "本模块由“固体、液体和气体”“热力学定律”“原子与原子核”“波粒二象性”四个主题组成。", subject: "SB0401", type: "Theme", applicableLevel: "OB06", contentJson: "{\"teachingTip\": \"本模块通过对固体、液体和气体的微观结构，以及气体实验定律、热力学定律、原子与原子核、波粒二象性等内容的学习，进一步促进学生的物质观念、运动和相互作用观念、能量观念以及物理模型建构等物\\n\\n理学科核心素养的形成。通过观察生活现象和实验，让学生了解固体、液体和气体的微观结构，热力学定律等内容。通过让学生了解光电效应等实验，引导学生认识光及实物粒子的波粒二象性，进一步认识光的本性。通过对固体、液体和气体，原子与原子核，波粒二象性等内容的教学，完善学生对物质的认识，帮助学生形成物质观念。通过用油膜法估测油酸分子的大小的实验，让学生体会和掌握测量微观量的思想和方法，能利用不同的方法和手段分析和处理信息。通过多种方法，创设多种问题情境，引导学生探究并讨论，让学生广泛了解核能等对人类生活和社会发展的影响。\", \"academicRequirement\": \"能认识固体、液体和气体的微观结构及特点，能认识光电效应现象，说明光的波粒二象性，认识原子、原子核的结构特点；能用相关知识解释自然界的有关现象，解决生产生活中的有关问题，能把物质的宏观性质与其微观结构联系起来。\\n\\n能认识建构理想气体、原子核式结构等模型的必要性，能在一定条件下应用理想气体模型分析和研究实际气体的问题；能基于证据，归纳推理得出气体实验定律的有关结论，通过类比方式了解气体压强的微观解释；能根据所观察的宏观事实论证分子热运动、分子间作用力等结论；能根据能量守恒定律等质疑不符合物理规律的传闻，勇于发表自己的见解。\\n\\n能完成“用油膜法估测油酸分子的大小”等实验。能发现并提出热现象中值得探究的问题，对其结论作出合理猜想；能通过科学、合理的操作获得实验数据；能在实验中运用减小误差的方法，能采用恰当的方式处理数据并得出正确结论；能写出完整、规范的实验报告，正确表达科学探究的过程和结果。\\n\\n通过对热学、原子与原子核以及波粒二象性等相关内容的学习，知\\n\\n道所有物理结论都必须接受实践的检验；在学习与研究中做到实事求是，不迷信权威，能与他人合作；通过对热力学定律和核能等内容的学习，知道科学技术对人类生活和社会发展的积极影响，但同时也会带来一系列问题，能认识人与自然是生命共同体，能尊重自然，遵循自然规律。\\n\\n# （三）选修课程\\n\\n本课程关注学生的兴趣和特长，关注物理学对社会发展的影响，关注物理学前沿对学生视野的拓展等。\"}", CJ_teachingTip: "本模块通过对固体、液体和气体的微观结构，以及气体实验定律、热力学定律、原子与原子核、波粒二象性等内容的学习，进一步促进学生的物质观念、运动和相互作用观念、能量观念以及物理模型建构等物\n\n理学科核心素养的形成。通过观察生活现象和实验，让学生了解固体、液体和气体的微观结构，热力学定律等内容。通过让学生了解光电效应等实验，引导学生认识光及实物粒子的波粒二象性，进一步认识光的本性。通过对固体、液体和气体，原子与原子核，波粒二象性等内容的教学，完善学生对物质的认识，帮助学生形成物质观念。通过用油膜法估测油酸分子的大小的实验，让学生体会和掌握测量微观量的思想和方法，能利用不同的方法和手段分析和处理信息。通过多种方法，创设多种问题情境，引导学生探究并讨论，让学生广泛了解核能等对人类生活和社会发展的影响。", CJ_academicRequirement: "能认识固体、液体和气体的微观结构及特点，能认识光电效应现象，说明光的波粒二象性，认识原子、原子核的结构特点；能用相关知识解释自然界的有关现象，解决生产生活中的有关问题，能把物质的宏观性质与其微观结构联系起来。\n\n能认识建构理想气体、原子核式结构等模型的必要性，能在一定条件下应用理想气体模型分析和研究实际气体的问题；能基于证据，归纳推理得出气体实验定律的有关结论，通过类比方式了解气体压强的微观解释；能根据所观察的宏观事实论证分子热运动、分子间作用力等结论；能根据能量守恒定律等质疑不符合物理规律的传闻，勇于发表自己的见解。\n\n能完成“用油膜法估测油酸分子的大小”等实验。能发现并提出热现象中值得探究的问题，对其结论作出合理猜想；能通过科学、合理的操作获得实验数据；能在实验中运用减小误差的方法，能采用恰当的方式处理数据并得出正确结论；能写出完整、规范的实验报告，正确表达科学探究的过程和结果。\n\n通过对热学、原子与原子核以及波粒二象性等相关内容的学习，知\n\n道所有物理结论都必须接受实践的检验；在学习与研究中做到实事求是，不迷信权威，能与他人合作；通过对热力学定律和核能等内容的学习，知道科学技术对人类生活和社会发展的积极影响，但同时也会带来一系列问题，能认识人与自然是生命共同体，能尊重自然，遵循自然规律。\n\n# （三）选修课程\n\n本课程关注学生的兴趣和特长，关注物理学对社会发展的影响，关注物理学前沿对学生视野的拓展等。"};

MERGE (n:Theme {identifier: "urn:jy:physics:SB0401:OB06:Theme:7"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Theme:7", title: "选修1", description: "本模块侧重物理学与社会发展有关的内容，由“物理学与人类认识”“物理学与社会变革”“物理学与公民生活”三个主题组成。", subject: "SB0401", type: "Theme", applicableLevel: "OB06", contentJson: "{\"teachingTip\": \"\", \"academicRequirement\": \"\"}", CJ_teachingTip: "", CJ_academicRequirement: ""};

MERGE (n:Theme {identifier: "urn:jy:physics:SB0401:OB06:Theme:8"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Theme:8", title: "选修2", description: "本模块侧重物理学与技术应用有关的内容，由“物理学与医疗技术”“物理学与新能源”“物理学与新材料”“物理学与信息技术”四个主题组成。", subject: "SB0401", type: "Theme", applicableLevel: "OB06", contentJson: "{\"teachingTip\": \"\", \"academicRequirement\": \"\"}", CJ_teachingTip: "", CJ_academicRequirement: ""};

MERGE (n:Theme {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Theme:9", title: "选修3", description: "本模块侧重与近代物理学有关的初步内容，由“微观世界”“高速世界”“宇观世界”“世界的统一性”四个主题组成。", subject: "SB0401", type: "Theme", applicableLevel: "OB06", contentJson: "{\"teachingTip\": \"\", \"academicRequirement\": \"\"}", CJ_teachingTip: "", CJ_academicRequirement: ""};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:1"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:1", title: "了解伽利略的实验研究工作", description: "了解伽利略的实验研究工作，认识伽利略有关实验的科学思想和方法。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:21\", \"themeL2Key\": \"1.1\", \"exampleIndex\": \"例1\", \"exampleText\": \"了解伽利略的实验研究工作，认识伽利略有关实验的科学思想和方法。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:21", CJ_themeL2Key: "1.1", CJ_exampleIndex: "例1", CJ_exampleText: "了解伽利略的实验研究工作，认识伽利略有关实验的科学思想和方法。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:2"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:2", title: "通过质点模型、太阳系行星模型等实例", description: "通过质点模型、太阳系行星模型等实例，体会物理模型在物理学研究中的意义。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:21\", \"themeL2Key\": \"1.1\", \"exampleIndex\": \"例2\", \"exampleText\": \"通过质点模型、太阳系行星模型等实例，体会物理模型在物理学研究中的意义。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:21", CJ_themeL2Key: "1.1", CJ_exampleIndex: "例2", CJ_exampleText: "通过质点模型、太阳系行星模型等实例，体会物理模型在物理学研究中的意义。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:3"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:3", title: "结合瞬时速度概念的建构", description: "结合瞬时速度概念的建构，体会研究物理问题的极限方法。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:21\", \"themeL2Key\": \"1.1\", \"exampleIndex\": \"例3\", \"exampleText\": \"结合瞬时速度概念的建构，体会研究物理问题的极限方法。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:21", CJ_themeL2Key: "1.1", CJ_exampleIndex: "例3", CJ_exampleText: "结合瞬时速度概念的建构，体会研究物理问题的极限方法。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:4"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:4", title: "结合加速度概念的建构", description: "结合加速度概念的建构，体会物理学中的抽象思维。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:21\", \"themeL2Key\": \"1.1\", \"exampleIndex\": \"例4\", \"exampleText\": \"结合加速度概念的建构，体会物理学中的抽象思维。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:21", CJ_themeL2Key: "1.1", CJ_exampleIndex: "例4", CJ_exampleText: "结合加速度概念的建构，体会物理学中的抽象思维。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:5"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:5", title: "打点计时器、频闪照相或其他实验工具研究匀变速直线运动的规", description: "用打点计时器、频闪照相或其他实验工具研究匀变速直线运动的规律。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:21\", \"themeL2Key\": \"1.1\", \"exampleIndex\": \"例5\", \"exampleText\": \"用打点计时器、频闪照相或其他实验工具研究匀变速直线运动的规律。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:21", CJ_themeL2Key: "1.1", CJ_exampleIndex: "例5", CJ_exampleText: "用打点计时器、频闪照相或其他实验工具研究匀变速直线运动的规律。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:6"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:6", title: "资料", description: "查阅资料，了解亚里士多德关于力与运动的主要观点和研究方法。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:21\", \"themeL2Key\": \"1.1\", \"exampleIndex\": \"例6\", \"exampleText\": \"查阅资料，了解亚里士多德关于力与运动的主要观点和研究方法。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:21", CJ_themeL2Key: "1.1", CJ_exampleIndex: "例6", CJ_exampleText: "查阅资料，了解亚里士多德关于力与运动的主要观点和研究方法。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:7"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:7", title: "资料", description: "查阅资料，了解伽利略研究自由落体运动的实验和推理方法。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:21\", \"themeL2Key\": \"1.1\", \"exampleIndex\": \"例7\", \"exampleText\": \"查阅资料，了解伽利略研究自由落体运动的实验和推理方法。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:21", CJ_themeL2Key: "1.1", CJ_exampleIndex: "例7", CJ_exampleText: "查阅资料，了解伽利略研究自由落体运动的实验和推理方法。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:8"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:8", title: "调查生产生活中所用弹簧的形状及使用目的", description: "调查生产生活中所用弹簧的形状及使用目的。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"exampleIndex\": \"例1\", \"exampleText\": \"调查生产生活中所用弹簧的形状及使用目的。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_exampleIndex: "例1", CJ_exampleText: "调查生产生活中所用弹簧的形状及使用目的。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:9"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:9", title: "一个简易弹簧测力计", description: "制作一个简易弹簧测力计，用胡克定律解释其原理。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"exampleIndex\": \"例2\", \"exampleText\": \"制作一个简易弹簧测力计，用胡克定律解释其原理。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_exampleIndex: "例2", CJ_exampleText: "制作一个简易弹簧测力计，用胡克定律解释其原理。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:10"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:10", title: "物体移动的方向与所受力的方向不在一条直线上时", description: "分析物体移动的方向与所受力的方向不在一条直线上时，该力所做的功。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:24\", \"themeL2Key\": \"2.1\", \"exampleIndex\": \"例1\", \"exampleText\": \"分析物体移动的方向与所受力的方向不在一条直线上时，该力所做的功。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:24", CJ_themeL2Key: "2.1", CJ_exampleIndex: "例1", CJ_exampleText: "分析物体移动的方向与所受力的方向不在一条直线上时，该力所做的功。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:11"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:11", title: "汽车发动机的功率一定时", description: "分析汽车发动机的功率一定时，牵引力与速度的关系。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:24\", \"themeL2Key\": \"2.1\", \"exampleIndex\": \"例2\", \"exampleText\": \"分析汽车发动机的功率一定时，牵引力与速度的关系。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:24", CJ_themeL2Key: "2.1", CJ_exampleIndex: "例2", CJ_exampleText: "分析汽车发动机的功率一定时，牵引力与速度的关系。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:12"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:12", title: "根据牛顿第二定律推导出动能定理", description: "根据牛顿第二定律推导出动能定理。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:24\", \"themeL2Key\": \"2.1\", \"exampleIndex\": \"例3\", \"exampleText\": \"根据牛顿第二定律推导出动能定理。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:24", CJ_themeL2Key: "2.1", CJ_exampleIndex: "例3", CJ_exampleText: "根据牛顿第二定律推导出动能定理。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:13"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:13", title: "生活中的曲线运动", description: "观察生活中的曲线运动，如投篮时篮球的运动轨迹。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"exampleIndex\": \"例1\", \"exampleText\": \"观察生活中的曲线运动，如投篮时篮球的运动轨迹。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_exampleIndex: "例1", CJ_exampleText: "观察生活中的曲线运动，如投篮时篮球的运动轨迹。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:14"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:14", title: "了解铁路和高速公路拐弯处路面有一定倾斜度的原因", description: "了解铁路和高速公路拐弯处路面有一定倾斜度的原因。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"exampleIndex\": \"例2\", \"exampleText\": \"了解铁路和高速公路拐弯处路面有一定倾斜度的原因。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_exampleIndex: "例2", CJ_exampleText: "了解铁路和高速公路拐弯处路面有一定倾斜度的原因。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:15"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:15", title: "通过发现海王星等事实", description: "通过发现海王星等事实，说明科学定律的作用。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"exampleIndex\": \"例3\", \"exampleText\": \"通过发现海王星等事实，说明科学定律的作用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_exampleIndex: "例3", CJ_exampleText: "通过发现海王星等事实，说明科学定律的作用。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:16"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:16", title: "以万有引力定律为例", description: "以万有引力定律为例，了解统一性观念在科学认识中的重要意义。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"exampleIndex\": \"例4\", \"exampleText\": \"以万有引力定律为例，了解统一性观念在科学认识中的重要意义。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_exampleIndex: "例4", CJ_exampleText: "以万有引力定律为例，了解统一性观念在科学认识中的重要意义。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:17"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:17", title: "了解牛顿力学对航天技术发展的重大贡献", description: "了解牛顿力学对航天技术发展的重大贡献。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"exampleIndex\": \"例5\", \"exampleText\": \"了解牛顿力学对航天技术发展的重大贡献。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_exampleIndex: "例5", CJ_exampleText: "了解牛顿力学对航天技术发展的重大贡献。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:18"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:18", title: "初步了解长度收缩效应和时间延缓效应", description: "初步了解长度收缩效应和时间延缓效应。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:26\", \"themeL2Key\": \"2.3\", \"exampleIndex\": \"例1\", \"exampleText\": \"初步了解长度收缩效应和时间延缓效应。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:26", CJ_themeL2Key: "2.3", CJ_exampleIndex: "例1", CJ_exampleText: "初步了解长度收缩效应和时间延缓效应。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:19"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:19", title: "初步了解时空弯曲", description: "初步了解时空弯曲。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:26\", \"themeL2Key\": \"2.3\", \"exampleIndex\": \"例2\", \"exampleText\": \"初步了解时空弯曲。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:26", CJ_themeL2Key: "2.3", CJ_exampleIndex: "例2", CJ_exampleText: "初步了解时空弯曲。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:20"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:20", title: "资料", description: "查阅资料，初步了解典型的恒星演化过程。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:26\", \"themeL2Key\": \"2.3\", \"exampleIndex\": \"例3\", \"exampleText\": \"查阅资料，初步了解典型的恒星演化过程。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:26", CJ_themeL2Key: "2.3", CJ_exampleIndex: "例3", CJ_exampleText: "查阅资料，初步了解典型的恒星演化过程。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:21"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:21", title: "通过多种方式使物体带电", description: "通过多种方式使物体带电，观察静电现象。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"exampleIndex\": \"例1\", \"exampleText\": \"通过多种方式使物体带电，观察静电现象。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_exampleIndex: "例1", CJ_exampleText: "通过多种方式使物体带电，观察静电现象。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:22"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:22", title: "演示并分析静电感应现象", description: "演示并分析静电感应现象。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"exampleIndex\": \"例2\", \"exampleText\": \"演示并分析静电感应现象。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_exampleIndex: "例2", CJ_exampleText: "演示并分析静电感应现象。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:23"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:23", title: "与质点模型类比", description: "与质点模型类比，体会在什么情境下可将带电体抽象为点电荷。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"exampleIndex\": \"例3\", \"exampleText\": \"与质点模型类比，体会在什么情境下可将带电体抽象为点电荷。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_exampleIndex: "例3", CJ_exampleText: "与质点模型类比，体会在什么情境下可将带电体抽象为点电荷。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:24"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:24", title: "体会库仑扭秤实验设计的巧妙之处", description: "体会库仑扭秤实验设计的巧妙之处。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"exampleIndex\": \"例4\", \"exampleText\": \"体会库仑扭秤实验设计的巧妙之处。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_exampleIndex: "例4", CJ_exampleText: "体会库仑扭秤实验设计的巧妙之处。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:25"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:25", title: "电场线描绘两个等量异种点电荷周围的电场", description: "用电场线描绘两个等量异种点电荷周围的电场。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"exampleIndex\": \"例5\", \"exampleText\": \"用电场线描绘两个等量异种点电荷周围的电场。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_exampleIndex: "例5", CJ_exampleText: "用电场线描绘两个等量异种点电荷周围的电场。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:26"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:26", title: "讨论静电在激光打印、静电喷雾和静电除尘等技术中的", description: "分析讨论静电在激光打印、静电喷雾和静电除尘等技术中的", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"exampleIndex\": \"例6\", \"exampleText\": \"分析讨论静电在激光打印、静电喷雾和静电除尘等技术中的\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_exampleIndex: "例6", CJ_exampleText: "分析讨论静电在激光打印、静电喷雾和静电除尘等技术中的"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:27"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:27", title: "资料", description: "查阅资料，了解电容器在照相机闪光灯电路中的作用。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"exampleIndex\": \"例7\", \"exampleText\": \"查阅资料，了解电容器在照相机闪光灯电路中的作用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_exampleIndex: "例7", CJ_exampleText: "查阅资料，了解电容器在照相机闪光灯电路中的作用。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:28"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:28", title: "知道滑动变阻器的工作原理", description: "知道滑动变阻器的工作原理。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:29\", \"themeL2Key\": \"3.2\", \"exampleIndex\": \"例1\", \"exampleText\": \"知道滑动变阻器的工作原理。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:29", CJ_themeL2Key: "3.2", CJ_exampleIndex: "例1", CJ_exampleText: "知道滑动变阻器的工作原理。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:29"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:29", title: "通过  $I - U$  图像了解材料的电阻特性", description: "通过  $I - U$  图像了解材料的电阻特性。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:29\", \"themeL2Key\": \"3.2\", \"exampleIndex\": \"例2\", \"exampleText\": \"通过  $I - U$  图像了解材料的电阻特性。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:29", CJ_themeL2Key: "3.2", CJ_exampleIndex: "例2", CJ_exampleText: "通过  $I - U$  图像了解材料的电阻特性。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:30"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:30", title: "通过探究电源两端电压与电流的关系", description: "通过探究电源两端电压与电流的关系，体会图像法在研究物理问题中的作用。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:29\", \"themeL2Key\": \"3.2\", \"exampleIndex\": \"例3\", \"exampleText\": \"通过探究电源两端电压与电流的关系，体会图像法在研究物理问题中的作用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:29", CJ_themeL2Key: "3.2", CJ_exampleIndex: "例3", CJ_exampleText: "通过探究电源两端电压与电流的关系，体会图像法在研究物理问题中的作用。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:31"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:31", title: "根据某家庭的电器设施", description: "根据某家庭的电器设施，估算该家庭电路中所需导线的规格。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:29\", \"themeL2Key\": \"3.2\", \"exampleIndex\": \"例4\", \"exampleText\": \"根据某家庭的电器设施，估算该家庭电路中所需导线的规格。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:29", CJ_themeL2Key: "3.2", CJ_exampleIndex: "例4", CJ_exampleText: "根据某家庭的电器设施，估算该家庭电路中所需导线的规格。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:32"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:32", title: "判断通电直导线和通电线圈周围磁场的方向", description: "判断通电直导线和通电线圈周围磁场的方向，用磁感线描绘通电直导线和通电线圈周围的磁场。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:30\", \"themeL2Key\": \"3.3\", \"exampleIndex\": \"例1\", \"exampleText\": \"判断通电直导线和通电线圈周围磁场的方向，用磁感线描绘通电直导线和通电线圈周围的磁场。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:30", CJ_themeL2Key: "3.3", CJ_exampleIndex: "例1", CJ_exampleText: "判断通电直导线和通电线圈周围磁场的方向，用磁感线描绘通电直导线和通电线圈周围的磁场。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:33"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:33", title: "收集资料", description: "收集资料，了解手机无线充电的原理。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:30\", \"themeL2Key\": \"3.3\", \"exampleIndex\": \"例2\", \"exampleText\": \"收集资料，了解手机无线充电的原理。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:30", CJ_themeL2Key: "3.3", CJ_exampleIndex: "例2", CJ_exampleText: "收集资料，了解手机无线充电的原理。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:34"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:34", title: "知道手机和卫星通信等都是电磁波的应用", description: "知道手机和卫星通信等都是电磁波的应用，了解我国卫星通信技术的应用与发展前景。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:30\", \"themeL2Key\": \"3.3\", \"exampleIndex\": \"例3\", \"exampleText\": \"知道手机和卫星通信等都是电磁波的应用，了解我国卫星通信技术的应用与发展前景。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:30", CJ_themeL2Key: "3.3", CJ_exampleIndex: "例3", CJ_exampleText: "知道手机和卫星通信等都是电磁波的应用，了解我国卫星通信技术的应用与发展前景。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:35"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:35", title: "家庭生活中一天所用的能量哪些来自可再生能源", description: "讨论家庭生活中一天所用的能量哪些来自可再生能源，哪些来自不可再生能源。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:31\", \"themeL2Key\": \"3.4\", \"exampleIndex\": \"例1\", \"exampleText\": \"讨论家庭生活中一天所用的能量哪些来自可再生能源，哪些来自不可再生能源。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:31", CJ_themeL2Key: "3.4", CJ_exampleIndex: "例1", CJ_exampleText: "讨论家庭生活中一天所用的能量哪些来自可再生能源，哪些来自不可再生能源。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:36"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:36", title: "在生活中可采取哪些方式节能", description: "讨论在生活中可采取哪些方式节能。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:31\", \"themeL2Key\": \"3.4\", \"exampleIndex\": \"例2\", \"exampleText\": \"讨论在生活中可采取哪些方式节能。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:31", CJ_themeL2Key: "3.4", CJ_exampleIndex: "例2", CJ_exampleText: "讨论在生活中可采取哪些方式节能。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:37"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:37", title: "收集资料", description: "收集资料，调查当地大气污染、水污染、声污染等的主要污染源，了解预防方法。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:31\", \"themeL2Key\": \"3.4\", \"exampleIndex\": \"例3\", \"exampleText\": \"收集资料，调查当地大气污染、水污染、声污染等的主要污染源，了解预防方法。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:31", CJ_themeL2Key: "3.4", CJ_exampleIndex: "例3", CJ_exampleText: "收集资料，调查当地大气污染、水污染、声污染等的主要污染源，了解预防方法。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:38"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:38", title: "收集资料", description: "收集资料，从能源的角度讨论为什么要对垃圾进行分类。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:31\", \"themeL2Key\": \"3.4\", \"exampleIndex\": \"例4\", \"exampleText\": \"收集资料，从能源的角度讨论为什么要对垃圾进行分类。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:31", CJ_themeL2Key: "3.4", CJ_exampleIndex: "例4", CJ_exampleText: "收集资料，从能源的角度讨论为什么要对垃圾进行分类。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:39"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:39", title: "知道火箭的发射利用了反冲现象", description: "知道火箭的发射利用了反冲现象。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:21\", \"themeL2Key\": \"1.1\", \"exampleIndex\": \"例1\", \"exampleText\": \"知道火箭的发射利用了反冲现象。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:21", CJ_themeL2Key: "1.1", CJ_exampleIndex: "例1", CJ_exampleText: "知道火箭的发射利用了反冲现象。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:40"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:40", title: "资料", description: "查阅资料，了解中子的发现过程，讨论动量守恒定律在其中的作用。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:21\", \"themeL2Key\": \"1.1\", \"exampleIndex\": \"例2\", \"exampleText\": \"查阅资料，了解中子的发现过程，讨论动量守恒定律在其中的作用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:21", CJ_themeL2Key: "1.1", CJ_exampleIndex: "例2", CJ_exampleText: "查阅资料，了解中子的发现过程，讨论动量守恒定律在其中的作用。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:41"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:41", title: "资料", description: "查阅资料，了解太空物体的碰撞和微观粒子的碰撞等相关信息。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:21\", \"themeL2Key\": \"1.1\", \"exampleIndex\": \"例3\", \"exampleText\": \"查阅资料，了解太空物体的碰撞和微观粒子的碰撞等相关信息。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:21", CJ_themeL2Key: "1.1", CJ_exampleIndex: "例3", CJ_exampleText: "查阅资料，了解太空物体的碰撞和微观粒子的碰撞等相关信息。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:42"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:42", title: "调查生产生活中受迫振动的应用实例", description: "调查生产生活中受迫振动的应用实例。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"exampleIndex\": \"例1\", \"exampleText\": \"调查生产生活中受迫振动的应用实例。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_exampleIndex: "例1", CJ_exampleText: "调查生产生活中受迫振动的应用实例。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:43"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:43", title: "调查生产生活中利用和防止共振的实例", description: "调查生产生活中利用和防止共振的实例。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"exampleIndex\": \"例2\", \"exampleText\": \"调查生产生活中利用和防止共振的实例。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_exampleIndex: "例2", CJ_exampleText: "调查生产生活中利用和防止共振的实例。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:44"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:44", title: "波动演示器显示波的叠加", description: "用波动演示器显示波的叠加。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"exampleIndex\": \"例3\", \"exampleText\": \"用波动演示器显示波的叠加。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_exampleIndex: "例3", CJ_exampleText: "用波动演示器显示波的叠加。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:45"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:45", title: "音叉双臂振动激发的水波干涉现象", description: "观察音叉双臂振动激发的水波干涉现象。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:22\", \"themeL2Key\": \"1.2\", \"exampleIndex\": \"例4\", \"exampleText\": \"观察音叉双臂振动激发的水波干涉现象。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:22", CJ_themeL2Key: "1.2", CJ_exampleIndex: "例4", CJ_exampleText: "观察音叉双臂振动激发的水波干涉现象。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:46"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:46", title: "演示光沿水柱（或弯曲的玻璃柱）的传播", description: "演示光沿水柱（或弯曲的玻璃柱）的传播。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:23\", \"themeL2Key\": \"1.3\", \"exampleIndex\": \"例1\", \"exampleText\": \"演示光沿水柱（或弯曲的玻璃柱）的传播。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:23", CJ_themeL2Key: "1.3", CJ_exampleIndex: "例1", CJ_exampleText: "演示光沿水柱（或弯曲的玻璃柱）的传播。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:47"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:47", title: "光缆的结构", description: "观察光缆的结构，分析光的全反射在光纤中是如何产生的。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:23\", \"themeL2Key\": \"1.3\", \"exampleIndex\": \"例2\", \"exampleText\": \"观察光缆的结构，分析光的全反射在光纤中是如何产生的。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:23", CJ_themeL2Key: "1.3", CJ_exampleIndex: "例2", CJ_exampleText: "观察光缆的结构，分析光的全反射在光纤中是如何产生的。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:48"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:48", title: "演示双缝干涉和单缝衍射现象", description: "演示双缝干涉和单缝衍射现象，观察双缝干涉和单缝衍射图样，并以此说明光具有波的性质。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:23\", \"themeL2Key\": \"1.3\", \"exampleIndex\": \"例3\", \"exampleText\": \"演示双缝干涉和单缝衍射现象，观察双缝干涉和单缝衍射图样，并以此说明光具有波的性质。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:23", CJ_themeL2Key: "1.3", CJ_exampleIndex: "例3", CJ_exampleText: "演示双缝干涉和单缝衍射现象，观察双缝干涉和单缝衍射图样，并以此说明光具有波的性质。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:49"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:49", title: "利用生活中的器材设计实验", description: "利用生活中的器材设计实验，观察光的薄膜干涉现象，讨论薄膜干涉的原因。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:23\", \"themeL2Key\": \"1.3\", \"exampleIndex\": \"例4\", \"exampleText\": \"利用生活中的器材设计实验，观察光的薄膜干涉现象，讨论薄膜干涉的原因。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:23", CJ_themeL2Key: "1.3", CJ_exampleIndex: "例4", CJ_exampleText: "利用生活中的器材设计实验，观察光的薄膜干涉现象，讨论薄膜干涉的原因。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:50"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:50", title: "利用电流天平等简易装置测量安培力", description: "利用电流天平等简易装置测量安培力。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:24\", \"themeL2Key\": \"2.1\", \"exampleIndex\": \"例1\", \"exampleText\": \"利用电流天平等简易装置测量安培力。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:24", CJ_themeL2Key: "2.1", CJ_exampleIndex: "例1", CJ_exampleText: "利用电流天平等简易装置测量安培力。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:51"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:51", title: "了解磁电式电表的结构和工作原理", description: "了解磁电式电表的结构和工作原理。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:24\", \"themeL2Key\": \"2.1\", \"exampleIndex\": \"例2\", \"exampleText\": \"了解磁电式电表的结构和工作原理。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:24", CJ_themeL2Key: "2.1", CJ_exampleIndex: "例2", CJ_exampleText: "了解磁电式电表的结构和工作原理。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:52"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:52", title: "阴极射线在磁场中的偏转", description: "观察阴极射线在磁场中的偏转。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:24\", \"themeL2Key\": \"2.1\", \"exampleIndex\": \"例3\", \"exampleText\": \"观察阴极射线在磁场中的偏转。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:24", CJ_themeL2Key: "2.1", CJ_exampleIndex: "例3", CJ_exampleText: "观察阴极射线在磁场中的偏转。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:53"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:53", title: "了解质谱仪和回旋加速器的工作原理", description: "了解质谱仪和回旋加速器的工作原理。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:24\", \"themeL2Key\": \"2.1\", \"exampleIndex\": \"例4\", \"exampleText\": \"了解质谱仪和回旋加速器的工作原理。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:24", CJ_themeL2Key: "2.1", CJ_exampleIndex: "例4", CJ_exampleText: "了解质谱仪和回旋加速器的工作原理。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:54"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:54", title: "能量的观点解释楞次定律", description: "用能量的观点解释楞次定律。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"exampleIndex\": \"例1\", \"exampleText\": \"用能量的观点解释楞次定律。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_exampleIndex: "例1", CJ_exampleText: "用能量的观点解释楞次定律。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:55"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:55", title: "了解电磁炉的结构和原理", description: "了解电磁炉的结构和原理。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"exampleIndex\": \"例2\", \"exampleText\": \"了解电磁炉的结构和原理。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_exampleIndex: "例2", CJ_exampleText: "了解电磁炉的结构和原理。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:56"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:56", title: "示波器或其他设备观察交变电流的波形", description: "用示波器或其他设备观察交变电流的波形，并测算其峰值和有效值。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"exampleIndex\": \"例3\", \"exampleText\": \"用示波器或其他设备观察交变电流的波形，并测算其峰值和有效值。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_exampleIndex: "例3", CJ_exampleText: "用示波器或其他设备观察交变电流的波形，并测算其峰值和有效值。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:57"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:57", title: "常见的变压器", description: "观察常见的变压器，了解其作用。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"exampleIndex\": \"例4\", \"exampleText\": \"观察常见的变压器，了解其作用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_exampleIndex: "例4", CJ_exampleText: "观察常见的变压器，了解其作用。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:58"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:58", title: "探讨远距离输电中导致电能损耗的因素", description: "探讨远距离输电中导致电能损耗的因素。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:25\", \"themeL2Key\": \"2.2\", \"exampleIndex\": \"例5\", \"exampleText\": \"探讨远距离输电中导致电能损耗的因素。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:25", CJ_themeL2Key: "2.2", CJ_exampleIndex: "例5", CJ_exampleText: "探讨远距离输电中导致电能损耗的因素。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:59"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:59", title: "结合牛顿万有引力定律和麦克斯韦电磁场理论", description: "结合牛顿万有引力定律和麦克斯韦电磁场理论，体会物理学发展过程中对统一性的追求。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:26\", \"themeL2Key\": \"2.3\", \"exampleIndex\": \"例1\", \"exampleText\": \"结合牛顿万有引力定律和麦克斯韦电磁场理论，体会物理学发展过程中对统一性的追求。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:26", CJ_themeL2Key: "2.3", CJ_exampleIndex: "例1", CJ_exampleText: "结合牛顿万有引力定律和麦克斯韦电磁场理论，体会物理学发展过程中对统一性的追求。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:60"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:60", title: "演示赫兹实验", description: "演示赫兹实验，体会理论预言在科学发展中的作用，以及实", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:26\", \"themeL2Key\": \"2.3\", \"exampleIndex\": \"例2\", \"exampleText\": \"演示赫兹实验，体会理论预言在科学发展中的作用，以及实\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:26", CJ_themeL2Key: "2.3", CJ_exampleIndex: "例2", CJ_exampleText: "演示赫兹实验，体会理论预言在科学发展中的作用，以及实"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:61"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:61", title: "通过热敏电阻实验", description: "通过热敏电阻实验，了解温度传感器的工作原理。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:27\", \"themeL2Key\": \"2.4\", \"exampleIndex\": \"例1\", \"exampleText\": \"通过热敏电阻实验，了解温度传感器的工作原理。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:27", CJ_themeL2Key: "2.4", CJ_exampleIndex: "例1", CJ_exampleText: "通过热敏电阻实验，了解温度传感器的工作原理。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:62"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:62", title: "了解光敏传感器及其在生产生活中的应用", description: "了解光敏传感器及其在生产生活中的应用。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:27\", \"themeL2Key\": \"2.4\", \"exampleIndex\": \"例2\", \"exampleText\": \"了解光敏传感器及其在生产生活中的应用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:27", CJ_themeL2Key: "2.4", CJ_exampleIndex: "例2", CJ_exampleText: "了解光敏传感器及其在生产生活中的应用。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:63"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:63", title: "利用显微镜观察布朗运动", description: "利用显微镜观察布朗运动。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"exampleIndex\": \"例1\", \"exampleText\": \"利用显微镜观察布朗运动。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_exampleIndex: "例1", CJ_exampleText: "利用显微镜观察布朗运动。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:64"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:64", title: "利用熔化的石蜡显示云母片的各向异性和玻璃片的各向同性", description: "利用熔化的石蜡显示云母片的各向异性和玻璃片的各向同性。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"exampleIndex\": \"例2\", \"exampleText\": \"利用熔化的石蜡显示云母片的各向异性和玻璃片的各向同性。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_exampleIndex: "例2", CJ_exampleText: "利用熔化的石蜡显示云母片的各向异性和玻璃片的各向同性。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:65"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:65", title: "知道半导体的特点", description: "知道半导体的特点，了解半导体技术在生产生活中的应用。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"exampleIndex\": \"例3\", \"exampleText\": \"知道半导体的特点，了解半导体技术在生产生活中的应用。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_exampleIndex: "例3", CJ_exampleText: "知道半导体的特点，了解半导体技术在生产生活中的应用。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:66"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:66", title: "初步了解纳米材料的特性", description: "初步了解纳米材料的特性，关注纳米材料的研究和应用及其可能存在的问题。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"exampleIndex\": \"例4\", \"exampleText\": \"初步了解纳米材料的特性，关注纳米材料的研究和应用及其可能存在的问题。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_exampleIndex: "例4", CJ_exampleText: "初步了解纳米材料的特性，关注纳米材料的研究和应用及其可能存在的问题。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:67"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:67", title: "生活中与表面张力相关的实例", description: "分析生活中与表面张力相关的实例。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:28\", \"themeL2Key\": \"3.1\", \"exampleIndex\": \"例5\", \"exampleText\": \"分析生活中与表面张力相关的实例。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:28", CJ_themeL2Key: "3.1", CJ_exampleIndex: "例5", CJ_exampleText: "分析生活中与表面张力相关的实例。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:68"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:68", title: "了解电子衍射实验", description: "了解电子衍射实验。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:31\", \"themeL2Key\": \"3.4\", \"exampleIndex\": \"例1\", \"exampleText\": \"了解电子衍射实验。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:31", CJ_themeL2Key: "3.4", CJ_exampleIndex: "例1", CJ_exampleText: "了解电子衍射实验。"};

MERGE (n:Example {identifier: "urn:jy:physics:SB0401:OB06:Example:69"})
SET n += {identifier: "urn:jy:physics:SB0401:OB06:Example:69", title: "通过史实", description: "通过史实，了解量子概念的建构对人类认识自然的影响。", subject: "SB0401", type: "Example", applicableLevel: "OB06", contentJson: "{\"themeL2\": \"urn:jy:physics:SB0401:OB06:ThemeL2:31\", \"themeL2Key\": \"3.4\", \"exampleIndex\": \"例2\", \"exampleText\": \"通过史实，了解量子概念的建构对人类认识自然的影响。\"}", CJ_themeL2: "urn:jy:physics:SB0401:OB06:ThemeL2:31", CJ_themeL2Key: "3.4", CJ_exampleIndex: "例2", CJ_exampleText: "通过史实，了解量子概念的建构对人类认识自然的影响。"};

// =====================================================
// 导入关系
// =====================================================

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:1"})
MERGE (source)-[r:academicQualityAppliesToCourseModule]->(target)
SET r.label = "学业质量适用于课程模块 / appliesToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:1"})
MERGE (source)-[r:courseModuleEvaluatedByAcademicQuality]->(target)
SET r.label = "课程模块以学业质量评价 / evaluatedByAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:2"})
MERGE (source)-[r:academicQualityAppliesToCourseModule]->(target)
SET r.label = "学业质量适用于课程模块 / appliesToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:1"})
MERGE (source)-[r:courseModuleEvaluatedByAcademicQuality]->(target)
SET r.label = "课程模块以学业质量评价 / evaluatedByAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MERGE (source)-[r:academicQualityAppliesToCourseModule]->(target)
SET r.label = "学业质量适用于课程模块 / appliesToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:1"})
MERGE (source)-[r:courseModuleEvaluatedByAcademicQuality]->(target)
SET r.label = "课程模块以学业质量评价 / evaluatedByAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:1"})
MERGE (source)-[r:academicQualityAppliesToCourseModule]->(target)
SET r.label = "学业质量适用于课程模块 / appliesToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:2"})
MERGE (source)-[r:courseModuleEvaluatedByAcademicQuality]->(target)
SET r.label = "课程模块以学业质量评价 / evaluatedByAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:2"})
MERGE (source)-[r:academicQualityAppliesToCourseModule]->(target)
SET r.label = "学业质量适用于课程模块 / appliesToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:2"})
MERGE (source)-[r:courseModuleEvaluatedByAcademicQuality]->(target)
SET r.label = "课程模块以学业质量评价 / evaluatedByAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MERGE (source)-[r:academicQualityAppliesToCourseModule]->(target)
SET r.label = "学业质量适用于课程模块 / appliesToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:2"})
MERGE (source)-[r:courseModuleEvaluatedByAcademicQuality]->(target)
SET r.label = "课程模块以学业质量评价 / evaluatedByAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:1"})
MERGE (source)-[r:academicQualityAppliesToCourseModule]->(target)
SET r.label = "学业质量适用于课程模块 / appliesToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:3"})
MERGE (source)-[r:courseModuleEvaluatedByAcademicQuality]->(target)
SET r.label = "课程模块以学业质量评价 / evaluatedByAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:2"})
MERGE (source)-[r:academicQualityAppliesToCourseModule]->(target)
SET r.label = "学业质量适用于课程模块 / appliesToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:3"})
MERGE (source)-[r:courseModuleEvaluatedByAcademicQuality]->(target)
SET r.label = "课程模块以学业质量评价 / evaluatedByAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MERGE (source)-[r:academicQualityAppliesToCourseModule]->(target)
SET r.label = "学业质量适用于课程模块 / appliesToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:3"})
MERGE (source)-[r:courseModuleEvaluatedByAcademicQuality]->(target)
SET r.label = "课程模块以学业质量评价 / evaluatedByAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:1"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / alignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:1"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:2"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / alignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:2"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:3"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / alignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:3"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:1"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / alignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:4"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:2"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / alignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:5"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:3"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / alignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:6"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:1"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / alignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:7"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:2"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / alignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:8"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:3"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / alignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:9"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:1"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / alignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:10"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:2"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / alignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:11"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:3"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / alignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:12"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:13"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:1"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / alignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:13"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:2"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / alignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:14"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:3"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / alignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:15"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:16"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:1"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / alignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:16"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:2"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / alignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:17"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:18"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:3"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / alignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:AcademicQuality:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CoreLiteracy:18"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:1"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:1"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:2"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:1"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:3"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:2"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:4"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:2"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:5"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:2"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:6"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:3"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:7"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:3"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:8"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:3"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:9"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:3"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:10"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:10"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:4"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:11"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:4"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:12"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:4"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:13"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:13"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:5"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:14"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:5"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:15"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:5"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:16"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:16"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:5"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:17"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:6"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:18"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:18"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:6"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:19"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:19"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:6"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:20"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:20"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:6"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:7"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:7"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:7"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:8"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:8"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:8"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:8"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:32"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "主题包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:32"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "二级主题属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:1"})
MERGE (source)-[r:themeHasExperiment]->(target)
SET r.label = "主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MERGE (source)-[r:experimentBelongsToTheme]->(target)
SET r.label = "实验属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:2"})
MERGE (source)-[r:themeHasExperiment]->(target)
SET r.label = "主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MERGE (source)-[r:experimentBelongsToTheme]->(target)
SET r.label = "实验属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:3"})
MERGE (source)-[r:themeHasExperiment]->(target)
SET r.label = "主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MERGE (source)-[r:experimentBelongsToTheme]->(target)
SET r.label = "实验属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:4"})
MERGE (source)-[r:themeHasExperiment]->(target)
SET r.label = "主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MERGE (source)-[r:experimentBelongsToTheme]->(target)
SET r.label = "实验属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:5"})
MERGE (source)-[r:themeHasExperiment]->(target)
SET r.label = "主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MERGE (source)-[r:experimentBelongsToTheme]->(target)
SET r.label = "实验属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:6"})
MERGE (source)-[r:themeHasExperiment]->(target)
SET r.label = "主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MERGE (source)-[r:experimentBelongsToTheme]->(target)
SET r.label = "实验属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:7"})
MERGE (source)-[r:themeHasExperiment]->(target)
SET r.label = "主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MERGE (source)-[r:experimentBelongsToTheme]->(target)
SET r.label = "实验属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:8"})
MERGE (source)-[r:themeHasExperiment]->(target)
SET r.label = "主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MERGE (source)-[r:experimentBelongsToTheme]->(target)
SET r.label = "实验属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:9"})
MERGE (source)-[r:themeHasExperiment]->(target)
SET r.label = "主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MERGE (source)-[r:experimentBelongsToTheme]->(target)
SET r.label = "实验属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:10"})
MERGE (source)-[r:themeHasExperiment]->(target)
SET r.label = "主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:10"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MERGE (source)-[r:experimentBelongsToTheme]->(target)
SET r.label = "实验属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:11"})
MERGE (source)-[r:themeHasExperiment]->(target)
SET r.label = "主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MERGE (source)-[r:experimentBelongsToTheme]->(target)
SET r.label = "实验属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:12"})
MERGE (source)-[r:themeHasExperiment]->(target)
SET r.label = "主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MERGE (source)-[r:experimentBelongsToTheme]->(target)
SET r.label = "实验属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:13"})
MERGE (source)-[r:themeHasExperiment]->(target)
SET r.label = "主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:13"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MERGE (source)-[r:experimentBelongsToTheme]->(target)
SET r.label = "实验属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:14"})
MERGE (source)-[r:themeHasExperiment]->(target)
SET r.label = "主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MERGE (source)-[r:experimentBelongsToTheme]->(target)
SET r.label = "实验属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:15"})
MERGE (source)-[r:themeHasExperiment]->(target)
SET r.label = "主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MERGE (source)-[r:experimentBelongsToTheme]->(target)
SET r.label = "实验属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:16"})
MERGE (source)-[r:themeHasExperiment]->(target)
SET r.label = "主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:16"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MERGE (source)-[r:experimentBelongsToTheme]->(target)
SET r.label = "实验属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:17"})
MERGE (source)-[r:themeHasExperiment]->(target)
SET r.label = "主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MERGE (source)-[r:experimentBelongsToTheme]->(target)
SET r.label = "实验属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:18"})
MERGE (source)-[r:themeHasExperiment]->(target)
SET r.label = "主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:18"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MERGE (source)-[r:experimentBelongsToTheme]->(target)
SET r.label = "实验属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:19"})
MERGE (source)-[r:themeHasExperiment]->(target)
SET r.label = "主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:19"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MERGE (source)-[r:experimentBelongsToTheme]->(target)
SET r.label = "实验属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:20"})
MERGE (source)-[r:themeHasExperiment]->(target)
SET r.label = "主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:20"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MERGE (source)-[r:experimentBelongsToTheme]->(target)
SET r.label = "实验属于主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:104"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:104"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:1"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:1"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:2"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:6"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:3"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:8"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:4"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:10"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:10"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:5"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:12"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:6"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:15"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:7"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:17"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:8"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:33"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:33"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:9"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:10"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:35"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:35"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:10"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:34"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:34"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:11"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:12"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:13"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:20"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:20"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:13"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:21"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:14"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:26"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:15"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:16"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:29"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:16"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:4"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:17"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:18"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:32"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:32"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:18"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:19"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:32"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:32"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:19"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:20"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:15"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:20"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:42"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:42"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:21"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:13"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:13"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:22"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:23"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:23"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:24"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:42"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:42"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:25"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:45"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:45"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:26"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:51"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:51"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:27"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:49"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:49"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:28"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:50"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:50"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:29"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:54"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:54"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:30"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:53"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:53"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:31"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:32"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:47"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:47"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:32"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:33"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:59"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:59"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:33"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:34"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:57"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:57"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:34"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:35"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:58"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:58"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:35"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:36"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:97"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:97"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:36"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:37"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:59"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:59"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:37"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:38"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:60"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:60"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:38"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:39"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:124"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:124"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:39"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:40"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:52"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:52"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:40"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:41"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:55"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:55"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:41"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:42"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:112"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:112"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:42"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:43"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:62"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:62"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:43"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:44"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:65"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:65"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:44"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:45"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:108"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:108"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:45"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:46"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:68"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:68"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:46"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:47"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:15"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:47"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:48"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:72"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:72"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:48"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:49"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:74"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:74"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:49"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:50"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:75"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:75"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:50"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:51"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:77"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:77"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:51"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:52"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:78"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:78"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:52"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:53"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:78"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:78"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:53"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:54"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:81"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:81"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:54"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:55"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:83"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:83"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:55"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:56"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:84"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:84"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:56"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:57"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:84"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:84"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:57"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:58"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:86"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:86"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:58"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:59"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:88"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:88"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:59"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:60"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:89"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:89"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:60"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:61"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:91"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:91"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:61"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:62"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:93"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:93"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:62"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:63"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:94"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:94"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:63"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:64"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:46"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:46"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:64"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:65"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:44"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:44"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:65"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:66"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:96"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:96"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:66"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:67"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:98"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:98"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:67"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:68"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:59"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:59"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:68"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:69"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:45"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:45"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:69"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:70"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:102"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:102"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:70"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:71"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:101"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:101"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:71"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:72"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:104"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:104"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:72"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:73"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:105"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:105"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:73"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:74"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:108"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:108"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:74"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:75"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:18"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:18"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:75"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:76"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:12"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:76"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:77"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:108"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:108"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:77"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:78"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:113"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:113"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:78"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:79"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:52"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:52"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:79"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:80"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:115"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:115"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:80"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:81"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:118"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:118"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:81"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:82"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:121"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:121"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:82"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:83"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:122"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:122"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:83"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:84"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:124"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:124"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:84"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:85"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:118"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:118"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:85"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:86"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:117"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:117"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:86"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:87"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:120"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:120"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:87"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:88"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:32"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:32"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:88"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:89"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:32"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:32"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:89"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:90"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:133"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:133"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:90"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:91"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:120"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:120"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:91"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:92"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:32"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:32"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:92"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:93"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:133"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:133"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:93"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:94"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:18"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:18"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:94"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:95"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:59"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:59"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:95"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:96"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:48"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:48"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:96"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:97"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:18"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:18"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:97"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:98"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:18"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:18"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:98"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:99"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:55"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:55"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:99"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:100"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:46"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:46"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:100"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:101"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:73"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:73"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:101"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:102"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:83"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:83"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:102"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:103"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:103"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:104"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:75"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:75"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:104"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:105"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:77"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:77"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:105"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:106"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:108"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:108"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:106"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:107"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:103"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:103"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:107"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:108"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:48"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:48"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:108"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:109"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:55"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:55"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:109"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:110"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:110"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:111"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:124"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:124"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:111"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:112"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:52"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:52"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:112"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:113"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:127"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:127"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:113"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:114"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:48"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:48"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:114"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:115"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:48"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:48"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:115"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:116"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:48"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:48"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:116"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:117"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:133"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:133"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:117"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:118"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:136"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:136"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:118"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:119"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:119"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:120"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:18"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:18"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:120"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:121"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:35"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:35"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:121"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:122"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:1"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:122"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:123"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:120"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:120"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:123"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:124"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:62"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:62"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:124"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:125"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:125"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:125"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:125"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:126"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:125"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:125"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:126"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:127"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:119"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:119"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:127"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:128"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:117"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:117"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:128"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:129"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:52"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:52"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:129"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:130"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:32"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:32"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:130"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:131"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:5"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:131"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:132"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:103"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:103"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:132"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:133"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:59"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:59"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:133"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:134"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:60"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:60"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:134"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:135"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:133"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:133"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:135"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:136"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:31"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:136"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:137"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:13"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:13"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:137"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:138"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:12"})
MERGE (source)-[r:themeL3RequiresSectionKnowledge]->(target)
SET r.label = "解决三级主题所需知识点 / requiresKnowledgeFromSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:138"})
MERGE (source)-[r:sectionSupportsThemeL3]->(target)
SET r.label = "节支撑三级主题 / supportsThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:1"})
MERGE (source)-[r:experimentBelongsToThemeL2]->(target)
SET r.label = "实验属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:1"})
MERGE (source)-[r:themeL2HasExperiment]->(target)
SET r.label = "二级主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:2"})
MERGE (source)-[r:experimentBelongsToThemeL2]->(target)
SET r.label = "实验属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:2"})
MERGE (source)-[r:themeL2HasExperiment]->(target)
SET r.label = "二级主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:2"})
MERGE (source)-[r:experimentBelongsToThemeL2]->(target)
SET r.label = "实验属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:3"})
MERGE (source)-[r:themeL2HasExperiment]->(target)
SET r.label = "二级主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:2"})
MERGE (source)-[r:experimentBelongsToThemeL2]->(target)
SET r.label = "实验属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:4"})
MERGE (source)-[r:themeL2HasExperiment]->(target)
SET r.label = "二级主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:3"})
MERGE (source)-[r:experimentBelongsToThemeL2]->(target)
SET r.label = "实验属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:5"})
MERGE (source)-[r:themeL2HasExperiment]->(target)
SET r.label = "二级主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:4"})
MERGE (source)-[r:experimentBelongsToThemeL2]->(target)
SET r.label = "实验属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:6"})
MERGE (source)-[r:themeL2HasExperiment]->(target)
SET r.label = "二级主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:4"})
MERGE (source)-[r:experimentBelongsToThemeL2]->(target)
SET r.label = "实验属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:7"})
MERGE (source)-[r:themeL2HasExperiment]->(target)
SET r.label = "二级主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:6"})
MERGE (source)-[r:experimentBelongsToThemeL2]->(target)
SET r.label = "实验属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:8"})
MERGE (source)-[r:themeL2HasExperiment]->(target)
SET r.label = "二级主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:1"})
MERGE (source)-[r:experimentBelongsToThemeL2]->(target)
SET r.label = "实验属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:9"})
MERGE (source)-[r:themeL2HasExperiment]->(target)
SET r.label = "二级主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:10"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:7"})
MERGE (source)-[r:experimentBelongsToThemeL2]->(target)
SET r.label = "实验属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:10"})
MERGE (source)-[r:themeL2HasExperiment]->(target)
SET r.label = "二级主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:7"})
MERGE (source)-[r:experimentBelongsToThemeL2]->(target)
SET r.label = "实验属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:11"})
MERGE (source)-[r:themeL2HasExperiment]->(target)
SET r.label = "二级主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:7"})
MERGE (source)-[r:experimentBelongsToThemeL2]->(target)
SET r.label = "实验属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:12"})
MERGE (source)-[r:themeL2HasExperiment]->(target)
SET r.label = "二级主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:13"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:10"})
MERGE (source)-[r:experimentBelongsToThemeL2]->(target)
SET r.label = "实验属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:10"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:13"})
MERGE (source)-[r:themeL2HasExperiment]->(target)
SET r.label = "二级主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:11"})
MERGE (source)-[r:experimentBelongsToThemeL2]->(target)
SET r.label = "实验属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:14"})
MERGE (source)-[r:themeL2HasExperiment]->(target)
SET r.label = "二级主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:12"})
MERGE (source)-[r:experimentBelongsToThemeL2]->(target)
SET r.label = "实验属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:15"})
MERGE (source)-[r:themeL2HasExperiment]->(target)
SET r.label = "二级主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:16"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:12"})
MERGE (source)-[r:experimentBelongsToThemeL2]->(target)
SET r.label = "实验属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:16"})
MERGE (source)-[r:themeL2HasExperiment]->(target)
SET r.label = "二级主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:14"})
MERGE (source)-[r:experimentBelongsToThemeL2]->(target)
SET r.label = "实验属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:17"})
MERGE (source)-[r:themeL2HasExperiment]->(target)
SET r.label = "二级主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:18"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:14"})
MERGE (source)-[r:experimentBelongsToThemeL2]->(target)
SET r.label = "实验属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:18"})
MERGE (source)-[r:themeL2HasExperiment]->(target)
SET r.label = "二级主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:19"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:16"})
MERGE (source)-[r:experimentBelongsToThemeL2]->(target)
SET r.label = "实验属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:16"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:19"})
MERGE (source)-[r:themeL2HasExperiment]->(target)
SET r.label = "二级主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:20"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:17"})
MERGE (source)-[r:experimentBelongsToThemeL2]->(target)
SET r.label = "实验属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:20"})
MERGE (source)-[r:themeL2HasExperiment]->(target)
SET r.label = "二级主题包含实验 / hasExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:1"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:2"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:3"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:4"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:5"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:6"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:7"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:8"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:9"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:10"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:10"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:11"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:12"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:13"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:13"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:14"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:15"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:16"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:16"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:17"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:18"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:18"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:19"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:19"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:20"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:20"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:21"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:22"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:23"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:23"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:24"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:25"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:26"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:27"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:28"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:29"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:30"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:31"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:32"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:32"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:33"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:33"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:34"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:34"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:35"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:35"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:36"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:36"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:37"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:37"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:38"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:38"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:39"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:39"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:40"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:40"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:41"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:41"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:42"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:42"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:43"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:43"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:44"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:44"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:45"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:45"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:46"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:46"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:47"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:47"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:48"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:48"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:49"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:49"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:50"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:50"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:51"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:51"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:52"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:52"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:53"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:53"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:54"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:54"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:55"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:55"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:56"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:56"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:57"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:57"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:58"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:58"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:59"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:59"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:60"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:60"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:61"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:61"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:62"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:62"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:63"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:63"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:64"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:64"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:65"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:65"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:66"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:66"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:67"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:67"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:68"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:68"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:69"})
MERGE (source)-[r:themeHasExample]->(target)
SET r.label = "二级主题包含例题 / hasExample";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:69"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MERGE (source)-[r:exampleBelongsToTheme]->(target)
SET r.label = "例题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:128"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 了解伽利、略的实验、研究工作、认识伽利、略有关实、验的科学";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:128"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:1"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 了解伽利、略的实验、研究工作、认识伽利、略有关实、验的科学";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:133"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 质点";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:133"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:2"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 质点";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:4"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 速度、瞬时速度";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:3"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 速度、瞬时速度";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:4"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 速度、加速度";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:4"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 速度、加速度";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:6"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 匀变速";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:5"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 匀变速";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:134"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 力";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:134"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:6"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 力";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:8"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 自由落体";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:7"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 自由落体";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 调查生产、生活中所、用弹簧的、形状及使、用目的";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:8"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 调查生产、生活中所、用弹簧的、形状及使、用目的";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:114"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 力";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:114"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:9"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 力";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:10"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:6"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 力、功";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:10"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 力、功";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:14"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 速度、力、功、功率";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:11"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 速度、力、功、功率";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:16"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 牛顿第二定律、动能";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:16"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:12"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 牛顿第二定律、动能";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:13"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:20"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 曲线运动";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:20"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:13"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 曲线运动";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:14"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 了解铁路、和高速公、路拐弯处、路面有一、定倾斜度、的原因";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:14"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 了解铁路、和高速公、路拐弯处、路面有一、定倾斜度、的原因";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:114"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 通过发现、海王星等、事实、说明科学、定律的作";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:114"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:15"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 通过发现、海王星等、事实、说明科学、定律的作";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:16"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:29"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 力";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:16"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 力";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:32"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 力";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:32"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:17"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 力";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:18"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:77"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 初步了解、长度收缩、效应和时、间延缓效";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:77"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:18"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 初步了解、长度收缩、效应和时、间延缓效";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:19"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:60"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 初步了解、时空弯曲";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:60"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:19"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 初步了解、时空弯曲";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:20"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:60"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 资料、查阅资料、初步了解、典型的恒、星演化过";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:60"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:20"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 资料、查阅资料、初步了解、典型的恒、星演化过";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:127"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 通过多种、方式使物、体带电、观察静电、现象";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:127"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:21"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 通过多种、方式使物、体带电、观察静电、现象";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:58"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 演示并分、析静电感、应现象";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:58"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:22"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 演示并分、析静电感、应现象";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:23"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:1"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 质点";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:23"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 质点";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:128"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 体会库仑、扭秤实验、设计的巧、妙之处";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:128"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:24"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 体会库仑、扭秤实验、设计的巧、妙之处";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 电场";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:25"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 电场";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 光";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:26"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 光";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:45"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 电容、光";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:45"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:27"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 电容、光";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:101"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 知道滑动、变阻器的、工作原理";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:101"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:28"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 知道滑动、变阻器的、工作原理";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:48"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 电阻";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:48"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:29"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 电阻";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:15"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 电流、电压";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:30"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 电流、电压";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:48"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 根据某家、庭的电器、设施、估算该家、庭电路中、所需导线";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:48"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:31"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 根据某家、庭的电器、设施、估算该家、庭电路中、所需导线";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:32"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:84"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 磁场";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:84"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:32"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 磁场";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:33"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 收集资料、了解手机、无线充电、的原理";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:33"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 收集资料、了解手机、无线充电、的原理";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:34"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:59"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 知道手机、和卫星通、信等都是、电磁波的、应用、了解我国";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:59"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:34"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 知道手机、和卫星通、信等都是、电磁波的、应用、了解我国";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:35"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:52"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 哪些来自、家庭生活、中一天所、用的能量、可再生能、讨论家庭";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:52"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:35"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 哪些来自、家庭生活、中一天所、用的能量、可再生能、讨论家庭";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:36"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 在生活中、可采取哪、些方式节、讨论在生、活中可采、取哪些方";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:36"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 在生活中、可采取哪、些方式节、讨论在生、活中可采、取哪些方";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:37"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:1"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 收集资料、调查当地、大气污染、水污染、声污染等、的主要污";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:37"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 收集资料、调查当地、大气污染、水污染、声污染等、的主要污";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:38"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:55"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 收集资料、从能源的、角度讨论、为什么要、对垃圾进、行分类";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:55"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:38"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 收集资料、从能源的、角度讨论、为什么要、对垃圾进、行分类";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:39"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:66"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 知道火箭、的发射利、用了反冲、现象";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:66"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:39"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 知道火箭、的发射利、用了反冲、现象";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:40"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:63"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 动量、动量守恒";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:63"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:40"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 动量、动量守恒";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:41"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:65"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 资料、查阅资料、了解太空、物体的碰、撞和微观、粒子的碰";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:65"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:41"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 资料、查阅资料、了解太空、物体的碰、撞和微观、粒子的碰";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:42"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:72"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 调查生产、生活中受、迫振动的、应用实例";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:72"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:42"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 调查生产、生活中受、迫振动的、应用实例";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:43"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 调查生产、生活中利、用和防止、共振的实";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:43"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 调查生产、生活中利、用和防止、共振的实";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:44"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:73"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 波动";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:73"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:44"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 波动";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:45"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:72"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 干涉";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:72"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:45"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 干涉";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:46"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:1"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 光";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:46"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 光";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:47"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:118"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 光";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:118"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:47"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 光";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:48"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:81"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 光、干涉、衍射";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:81"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:48"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 光、干涉、衍射";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:49"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 光、干涉";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:49"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 光、干涉";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:50"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:92"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 力、电流";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:92"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:50"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 力、电流";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:51"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:101"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 了解磁电、式电表的、结构和工、作原理";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:101"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:51"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 了解磁电、式电表的、结构和工、作原理";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:52"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:46"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 磁场";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:46"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:52"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 磁场";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:53"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:87"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 了解质谱、仪和回旋、加速器的、工作原理";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:87"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:53"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 了解质谱、仪和回旋、加速器的、工作原理";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:54"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:88"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 能量的观、点解释楞、次定律、用能量的、观点解释、楞次定律";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:88"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:54"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 能量的观、点解释楞、次定律、用能量的、观点解释、楞次定律";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:55"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:97"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 了解电磁、炉的结构、和原理";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:97"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:55"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 了解电磁、炉的结构、和原理";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:56"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:93"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 电流";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:93"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:56"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 电流";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:57"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:94"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 常见的变、压器、观察常见、的变压器、了解其作";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:94"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:57"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 常见的变、压器、观察常见、的变压器、了解其作";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:58"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:95"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 探讨远距、离输电中、导致电能、损耗的因";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:95"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:58"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 探讨远距、离输电中、导致电能、损耗的因";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:59"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:29"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 力、磁场";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:59"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 力、磁场";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:60"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:128"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 演示赫兹、体会理论、预言在科、学发展中、的作用、以及实";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:128"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:60"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 演示赫兹、体会理论、预言在科、学发展中、的作用、以及实";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:61"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:101"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 电阻";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:101"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:61"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 电阻";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:62"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:101"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 光";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:101"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:62"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 光";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:63"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:20"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 利用显微、镜观察布、朗运动";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:20"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:63"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 利用显微、镜观察布、朗运动";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:64"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 利用熔化、的石蜡显、示云母片、的各向异、性和玻璃、片的各向";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:64"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 利用熔化、的石蜡显、示云母片、的各向异、性和玻璃、片的各向";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:65"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:48"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 知道半导、体的特点、了解半导、体技术在、生产生活、中的应用";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:48"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:65"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 知道半导、体的特点、了解半导、体技术在、生产生活、中的应用";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:66"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 初步了解、纳米材料、的特性、关注纳米、材料的研、究和应用";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:66"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 初步了解、纳米材料、的特性、关注纳米、材料的研、究和应用";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:67"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 力";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:67"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 力";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:68"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:82"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 衍射";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:82"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:68"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 衍射";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Example:69"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:120"})
MERGE (source)-[r:exampleBelongsToSection]->(target)
SET r.label = "例题属于节 / belongsToSection；解题所需知识点: 量子";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:120"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Example:69"})
MERGE (source)-[r:sectionHasExample]->(target)
SET r.label = "节包含例题 / hasExample；例题训练点: 量子";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:1"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:2"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:2"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:2"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:3"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:2"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:4"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:2"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:5"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:3"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:6"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:3"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:7"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:3"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:8"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:3"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:9"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:4"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:10"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:10"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:4"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:11"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:4"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:12"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:4"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:13"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:13"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:4"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:14"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:5"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:15"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:5"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:16"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:16"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:5"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:17"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:5"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:18"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:18"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:5"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:19"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:19"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:5"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:20"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:20"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:8"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:21"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:8"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:22"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:8"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:23"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:23"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:8"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:24"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:25"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:26"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:9"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:10"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:28"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:10"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:10"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:29"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:10"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:10"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:30"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:10"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:10"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:31"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:10"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:10"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:32"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:32"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:10"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:33"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:33"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:11"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:34"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:34"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:11"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:35"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:35"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:11"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:36"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:36"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:11"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:11"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:13"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:13"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:13"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:39"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:39"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:13"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:13"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:40"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:13"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:13"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:13"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:42"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:42"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:14"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:43"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:43"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:14"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:44"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:44"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:14"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:45"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:45"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:14"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:46"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:46"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:14"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:47"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:47"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:15"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:48"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:48"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:15"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:49"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:49"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:15"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:50"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:50"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:15"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:51"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:51"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:15"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:16"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:52"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:52"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:16"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:16"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:53"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:53"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:16"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:16"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:54"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:54"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:16"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:16"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:55"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:55"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:16"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:56"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:56"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:57"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:57"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:58"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:58"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:59"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:59"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:60"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:60"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:17"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:19"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:61"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:61"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:19"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:19"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:62"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:62"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:19"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:19"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:63"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:63"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:19"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:19"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:64"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:64"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:19"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:19"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:65"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:65"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:19"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:19"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:66"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:66"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:19"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:20"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:67"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:67"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:20"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:20"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:68"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:68"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:20"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:20"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:20"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:20"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:70"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:70"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:20"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:20"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:71"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:71"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:20"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:20"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:72"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:72"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:20"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:73"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:73"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:21"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:74"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:74"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:21"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:75"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:75"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:21"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:76"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:76"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:21"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:77"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:77"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:21"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:78"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:78"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:22"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:79"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:79"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:22"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:80"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:80"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:22"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:81"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:81"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:22"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:82"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:82"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:22"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:83"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:83"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:22"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:84"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:84"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:24"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:85"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:85"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:24"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:86"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:86"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:24"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:87"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:87"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:24"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:88"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:88"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:25"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:89"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:89"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:25"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:90"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:90"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:25"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:91"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:91"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:25"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:92"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:92"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:26"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:93"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:93"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:26"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:94"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:94"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:26"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:95"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:95"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:26"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:96"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:96"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:27"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:97"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:97"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:27"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:98"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:98"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:27"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:99"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:99"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:27"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:100"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:100"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:28"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:101"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:101"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:28"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:102"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:102"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:28"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:103"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:103"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:30"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:104"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:104"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:30"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:105"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:105"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:30"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:106"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:106"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:30"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:107"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:107"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:31"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:108"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:108"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:31"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:109"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:109"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:31"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:110"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:110"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:31"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:111"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:111"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:31"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:32"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:112"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:112"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:32"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:32"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:113"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:113"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:32"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:32"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:114"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:114"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:32"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:32"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:115"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:115"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:32"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:33"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:116"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:116"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:33"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:33"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:117"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:117"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:33"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:33"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:118"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:118"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:33"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:33"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:119"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:119"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:33"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:33"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:120"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:120"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:33"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:34"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:121"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:121"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:34"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:34"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:122"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:122"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:34"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:34"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:123"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:123"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:34"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:34"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:124"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:124"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:34"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:34"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:125"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:125"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:34"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:36"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:126"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:126"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:36"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:36"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:127"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:127"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:36"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:36"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:128"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:128"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:36"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:36"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:129"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:129"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:36"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:36"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:130"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:130"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:36"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:36"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:131"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:131"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:36"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:36"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:132"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:132"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:36"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:36"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:133"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:133"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:36"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:36"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:134"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:134"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:36"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:36"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:135"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:135"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:36"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:36"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:136"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:136"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:36"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:36"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:137"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:137"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:36"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:36"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:138"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:138"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:36"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Chapter:36"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:139"})
MERGE (source)-[r:chapterHasSection]->(target)
SET r.label = "章节包含节 / hasSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:139"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Chapter:36"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节隶属于章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:1"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:2"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:3"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:4"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:5"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:6"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:7"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:8"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:9"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:10"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:10"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:11"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:12"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:13"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:13"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:14"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:15"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:16"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:16"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:17"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:18"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:18"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:19"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:19"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:20"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:20"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:21"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:22"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:23"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:23"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:24"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:25"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:26"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:27"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:28"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:29"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:30"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:31"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:32"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:32"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:33"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:33"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:34"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:34"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:35"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:35"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:36"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:36"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:37"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:37"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:38"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:38"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:39"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:39"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:40"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:40"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:41"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:41"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:42"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:42"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:43"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:43"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:44"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:44"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:45"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:45"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:46"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:46"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:47"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:47"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:48"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:48"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:49"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:49"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:50"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:50"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:51"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:51"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:52"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:52"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:53"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:53"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:54"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:54"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:55"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:55"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:56"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:56"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:57"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:57"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:58"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:58"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:59"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:59"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:60"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:60"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:61"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:61"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:62"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:62"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:63"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:63"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:64"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:64"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:65"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:65"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:66"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:66"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:67"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:67"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:68"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:68"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:69"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:69"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:70"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:70"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:71"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:71"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:72"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:72"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:73"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:73"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:74"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:74"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:75"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:75"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:76"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:76"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:77"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:77"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:78"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:78"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:79"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:79"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:80"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:80"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:81"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:81"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:82"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:82"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:83"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:83"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:84"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:84"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:85"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:85"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:86"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:86"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:87"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:87"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:88"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:88"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:89"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:89"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:90"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:90"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:91"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:91"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:92"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:92"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:93"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:93"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:94"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:94"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:95"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:95"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:96"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:96"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:97"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:97"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:98"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:98"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:99"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:99"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:100"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:100"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:101"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:101"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:102"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:102"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:103"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:103"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:104"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:104"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:105"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:105"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:106"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:106"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:107"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:107"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:108"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:108"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:109"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:109"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:110"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:110"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:111"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:111"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:112"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:112"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:113"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:113"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:114"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:114"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:115"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:115"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:116"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:116"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:117"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:117"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:118"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:118"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:119"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:119"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:120"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:120"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:121"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:121"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:122"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:122"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:123"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:123"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:124"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:124"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:125"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:125"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:126"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:126"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:127"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:127"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:128"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:128"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:129"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:129"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:130"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:130"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:131"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:131"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:132"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:132"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:133"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:133"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:134"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:134"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:135"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:135"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:136"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:136"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:137"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:137"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:138"})
MERGE (source)-[r:themeL2IncludesThemeL3]->(target)
SET r.label = "二级主题包含三级主题 / includesThemeL3";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL3:138"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MERGE (source)-[r:themeL3BelongsToThemeL2]->(target)
SET r.label = "三级主题属于二级主题 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:1"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:2"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:3"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:4"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:5"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:6"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:7"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:8"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:9"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:10"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:10"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:11"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:12"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:13"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:13"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:14"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:15"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:16"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:16"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:17"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:18"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:18"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:19"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:19"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:20"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:20"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:21"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:22"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:23"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:23"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:24"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:25"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:26"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:27"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:28"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:29"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:30"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:31"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:32"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:32"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:33"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:33"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:34"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:34"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:35"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:35"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:36"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:36"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:37"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:37"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:38"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:38"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:39"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:39"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:40"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:40"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:41"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:41"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:42"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:42"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:43"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:43"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:44"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:44"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:45"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:45"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:46"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:46"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:47"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:47"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:48"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:48"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:21"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:49"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:49"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:50"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:50"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:51"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:51"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:52"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:52"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:22"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:53"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:53"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:54"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:54"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:55"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:55"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:56"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:56"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:23"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:57"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:57"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:58"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:58"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:24"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:59"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:59"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:60"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:60"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:61"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:61"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:25"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:62"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:62"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:63"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:63"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:64"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:64"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:26"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:65"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:65"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:66"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:66"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:67"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:67"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:68"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:68"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:69"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:69"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:27"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:70"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:70"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:71"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:71"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:72"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:72"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:28"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:73"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:73"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:74"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:74"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:29"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:75"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:75"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:76"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:76"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:30"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:77"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:77"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:78"})
MERGE (source)-[r:themeHasActivitySuggestion]->(target)
SET r.label = "相关联 / relatedTo";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:78"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ThemeL2:31"})
MERGE (source)-[r:activitySuggestionBelongsToTheme]->(target)
SET r.label = "属于 / belongsToThemeL2";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:6"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:1"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:1"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:6"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:7"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:1"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:1"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:7"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:9"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:2"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:2"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:9"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:34"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:34"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:2"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:34"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:2"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:34"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:12"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:3"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:3"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:12"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:21"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:3"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:3"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:21"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:32"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:32"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:4"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:32"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:4"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:32"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:4"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:4"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:4"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:4"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:5"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:5"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:37"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:106"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:106"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:5"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:106"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:5"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:106"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:36"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:36"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:5"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:36"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:5"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:36"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:22"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:6"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:6"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:22"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:20"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:20"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:6"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:20"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:6"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:20"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:6"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:6"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:6"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:6"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:7"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:7"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:26"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:7"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:7"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:26"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:45"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:45"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:8"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:45"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:8"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:45"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:17"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:9"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:9"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:17"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:10"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:17"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:10"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:10"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:10"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:17"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:17"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:11"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:11"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:17"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:136"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:136"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:12"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:136"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:12"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:136"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:126"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:126"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:12"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:126"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:12"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:126"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:13"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:64"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:64"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:13"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:64"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:13"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:13"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:64"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:13"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:48"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:48"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:13"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:48"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:13"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:13"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:48"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:93"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:93"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:14"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:93"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:14"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:93"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:47"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:47"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:14"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:47"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:14"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:47"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:53"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:53"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:15"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:53"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:15"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:53"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:47"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:47"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:15"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:47"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:15"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:47"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:16"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:81"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:81"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:16"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:81"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:16"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:16"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:81"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:16"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:16"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:16"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:16"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:69"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:16"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:68"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:68"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:16"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:68"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:16"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:16"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:68"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:75"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:75"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:17"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:75"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:17"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:75"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:78"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:78"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:17"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:78"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:17"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:78"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:18"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:76"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:76"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:18"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:76"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:18"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:18"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:76"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:18"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:80"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:80"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:18"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:80"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:18"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:18"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:80"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:19"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:57"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:57"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:19"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:57"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:19"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:19"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:57"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:19"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:58"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:58"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:19"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:58"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:19"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:19"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:58"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:20"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:58"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:58"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:20"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:58"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:20"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:20"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:58"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:20"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:89"})
MERGE (source)-[r:experimentRequiresSectionKnowledge]->(target)
SET r.label = "实验所需知识点 / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:89"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:20"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:89"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:20"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:20"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:89"})
MERGE (source)-[r:sectionSupportsExperiment]->(target)
SET r.label = "节支撑实验 / supportsExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:1"})
MERGE (source)-[r:courseModuleHasExperiment]->(target)
SET r.label = "课程模块包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MERGE (source)-[r:experimentBelongsToCourseModule]->(target)
SET r.label = "实验属于课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:2"})
MERGE (source)-[r:courseModuleHasExperiment]->(target)
SET r.label = "课程模块包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MERGE (source)-[r:experimentBelongsToCourseModule]->(target)
SET r.label = "实验属于课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:3"})
MERGE (source)-[r:courseModuleHasExperiment]->(target)
SET r.label = "课程模块包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MERGE (source)-[r:experimentBelongsToCourseModule]->(target)
SET r.label = "实验属于课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:4"})
MERGE (source)-[r:courseModuleHasExperiment]->(target)
SET r.label = "课程模块包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MERGE (source)-[r:experimentBelongsToCourseModule]->(target)
SET r.label = "实验属于课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:5"})
MERGE (source)-[r:courseModuleHasExperiment]->(target)
SET r.label = "课程模块包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MERGE (source)-[r:experimentBelongsToCourseModule]->(target)
SET r.label = "实验属于课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:6"})
MERGE (source)-[r:courseModuleHasExperiment]->(target)
SET r.label = "课程模块包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MERGE (source)-[r:experimentBelongsToCourseModule]->(target)
SET r.label = "实验属于课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:7"})
MERGE (source)-[r:courseModuleHasExperiment]->(target)
SET r.label = "课程模块包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MERGE (source)-[r:experimentBelongsToCourseModule]->(target)
SET r.label = "实验属于课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:8"})
MERGE (source)-[r:courseModuleHasExperiment]->(target)
SET r.label = "课程模块包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MERGE (source)-[r:experimentBelongsToCourseModule]->(target)
SET r.label = "实验属于课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:9"})
MERGE (source)-[r:courseModuleHasExperiment]->(target)
SET r.label = "课程模块包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MERGE (source)-[r:experimentBelongsToCourseModule]->(target)
SET r.label = "实验属于课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:10"})
MERGE (source)-[r:courseModuleHasExperiment]->(target)
SET r.label = "课程模块包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:10"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MERGE (source)-[r:experimentBelongsToCourseModule]->(target)
SET r.label = "实验属于课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:11"})
MERGE (source)-[r:courseModuleHasExperiment]->(target)
SET r.label = "课程模块包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MERGE (source)-[r:experimentBelongsToCourseModule]->(target)
SET r.label = "实验属于课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:12"})
MERGE (source)-[r:courseModuleHasExperiment]->(target)
SET r.label = "课程模块包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MERGE (source)-[r:experimentBelongsToCourseModule]->(target)
SET r.label = "实验属于课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:13"})
MERGE (source)-[r:courseModuleHasExperiment]->(target)
SET r.label = "课程模块包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:13"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MERGE (source)-[r:experimentBelongsToCourseModule]->(target)
SET r.label = "实验属于课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:14"})
MERGE (source)-[r:courseModuleHasExperiment]->(target)
SET r.label = "课程模块包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MERGE (source)-[r:experimentBelongsToCourseModule]->(target)
SET r.label = "实验属于课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:15"})
MERGE (source)-[r:courseModuleHasExperiment]->(target)
SET r.label = "课程模块包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MERGE (source)-[r:experimentBelongsToCourseModule]->(target)
SET r.label = "实验属于课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:16"})
MERGE (source)-[r:courseModuleHasExperiment]->(target)
SET r.label = "课程模块包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:16"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MERGE (source)-[r:experimentBelongsToCourseModule]->(target)
SET r.label = "实验属于课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:17"})
MERGE (source)-[r:courseModuleHasExperiment]->(target)
SET r.label = "课程模块包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MERGE (source)-[r:experimentBelongsToCourseModule]->(target)
SET r.label = "实验属于课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:18"})
MERGE (source)-[r:courseModuleHasExperiment]->(target)
SET r.label = "课程模块包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:18"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MERGE (source)-[r:experimentBelongsToCourseModule]->(target)
SET r.label = "实验属于课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:19"})
MERGE (source)-[r:courseModuleHasExperiment]->(target)
SET r.label = "课程模块包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:19"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MERGE (source)-[r:experimentBelongsToCourseModule]->(target)
SET r.label = "实验属于课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Experiment:20"})
MERGE (source)-[r:courseModuleHasExperiment]->(target)
SET r.label = "课程模块包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Experiment:20"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MERGE (source)-[r:experimentBelongsToCourseModule]->(target)
SET r.label = "实验属于课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:1"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:1"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:1"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:2"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:1"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:3"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:2"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:4"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:2"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:5"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:2"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:6"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:7"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:8"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:CourseModule:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Theme:9"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:1"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:8"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:1"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:2"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:5"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:2"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:3"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:3"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:4"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:19"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:19"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:4"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:16"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:16"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:5"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:6"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:23"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:23"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:6"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:7"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:25"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:7"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:8"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:31"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:8"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:9"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:31"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:9"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:10"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:32"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:32"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:10"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:11"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:28"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:11"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:12"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:116"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:116"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:12"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:13"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:13"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:14"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:45"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:45"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:14"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:15"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:22"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:15"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:16"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:101"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:101"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:16"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:17"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:101"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:101"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:17"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:18"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:52"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:52"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:18"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:19"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:19"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:20"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:58"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:58"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:20"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:21"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:58"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:58"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:21"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:22"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:55"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:55"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:22"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:23"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:23"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:24"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:124"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:124"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:24"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:25"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:137"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:137"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:25"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:26"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:66"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:66"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:26"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:28"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:27"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:73"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:73"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:28"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:77"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:77"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:29"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:28"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:30"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:31"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:83"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:83"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:31"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:32"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:101"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:101"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:32"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:33"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:101"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:101"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:33"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:34"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:84"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:84"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:34"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:35"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:52"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:52"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:35"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:36"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:89"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:89"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:36"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:37"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:51"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:51"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:37"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:38"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:98"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:98"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:38"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:39"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:18"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:18"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:39"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:40"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:101"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:101"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:40"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:41"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:101"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:101"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:41"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:42"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:5"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:42"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:43"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:43"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:44"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:55"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:55"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:44"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:45"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:5"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:5"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:45"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:46"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:29"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:29"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:46"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:47"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:120"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:120"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:47"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:48"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:32"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:32"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:48"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:49"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:49"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:50"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:55"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:55"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:50"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:51"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:55"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:55"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:51"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:52"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:30"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:52"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:53"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:53"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:54"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:101"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:101"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:54"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:55"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:102"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:102"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:55"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:56"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:18"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:18"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:56"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:57"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:129"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:129"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:57"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:58"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:59"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:59"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:58"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:59"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:139"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:139"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:59"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:60"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:41"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:60"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:61"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:61"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:62"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:59"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:59"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:62"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:63"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:18"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:18"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:63"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:64"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:64"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:65"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:120"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:120"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:65"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:66"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:51"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:51"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:66"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:67"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:67"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:68"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:68"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:69"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:27"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:69"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:70"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:116"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:116"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:70"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:71"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:71"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:72"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:55"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:55"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:72"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:73"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:137"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:137"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:73"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:74"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:28"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:28"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:74"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:75"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:30"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:30"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:75"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:76"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:125"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:125"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:76"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:77"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:77"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:78"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:Section:137"})
MERGE (source)-[r:activitySuggestionAppliesToSection]->(target)
SET r.label = "活动建议对应节 / appliesToSection";

MATCH (source {identifier: "urn:jy:physics:SB0401:OB06:Section:137"})
MATCH (target {identifier: "urn:jy:physics:SB0401:OB06:ActivitySuggestion:78"})
MERGE (source)-[r:sectionSupportsActivitySuggestion]->(target)
SET r.label = "节支撑活动建议 / supportsActivitySuggestion";
