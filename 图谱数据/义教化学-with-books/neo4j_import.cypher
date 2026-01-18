// =====================================================
// 义教化学课标图谱 - Neo4j导入脚本
// 生成时间: 2026-01-18T17:41:24.627863
// =====================================================

// 创建约束和索引
CREATE CONSTRAINT IF NOT EXISTS FOR (n:LearningTheme) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:CoreLiteracy) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Method) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:CourseTarget) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Chapter) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:CoreKnowledge) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Experiment) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Attitude) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:AcademicQuality) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Interdisciplinary) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Conception) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Section) REQUIRE n.identifier IS UNIQUE;

// =====================================================
// 导入实体
// =====================================================

MERGE (n:LearningTheme {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
SET n += {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1", title: "科学探究与化学实验", description: "", subject: "SB0402", type: "LearningTheme", applicableLevel: "OB03", contentJson: "{\"achievement Requirement\": \"1. 能举例说明化学科学对促进社会发展的重要作用，列举化学家创造的对日常生活有价值的物质；能查找资料并讲述我国化学家胸怀祖国、艰苦奋斗、勇于创新的故事。\\n2. 能结合具体探究活动说明科学探究的要素及各要素之间的关系；能发现和表述有探究价值的问题，提出猜想与假设；能设计简单的实验方案或实践活动方案；能独立或与他人合作开展化学实验，收集证据；能基于事实，分析证据与假设的关系，形成结论；能撰写简单的实验报告，并与他人交流和评价探究过程及结果。\\n3. 能严格遵守实验室安全规则，能识别实验室安全警示标志和常用危险化学品标志，具有预防化学实验安全事故的意识。\\n4. 能正确选取实验试剂和仪器，依据实验方案完成必做实验，并能全面、准确地记录实验过程和现象；能说明必做实验的基本思路与方法，分析实验实施的合理性，能体现严谨求实、敢于质疑的科学态度。\\n5. 能基于必做实验形成的探究思路与方法，结合物质的组成及变化等相关知识，分析解决真实情境中的简单实验问题。\\n6. 能通过小组合作，有意识地应用化学、技术、工程及其他学科知识，完成实验探究及跨学科实践活动，能体现创新意识和勇于克服困难的品质。\", \"teachingTip\": {\"教学策略\": \"(1) 结合生产生活、社会发展、科技进步等方面的典型事例，引导学生认识化学科学在创造新物质、应对人类面临的重大挑战中的作用，彰显我国化学家在其中作出的创新贡献和展现出的科学家精神。\\n（2）选择有意义且适合的探究问题，引导学生经历真实的探究过程，注重运用现代化技术手段，加强探究活动中的科学思维，基于科学探究与实践活动建构化学观念，增进对化学科学及科学探究本质的理解，发展科学探究能力和创新意识。\\n（3）积极创造条件，开足、开好必做实验和跨学科实践活动，倡导“做中学”“用中学”“创中学”，充分发挥必做实验和跨学科实践活动的教学功能及育人价值。在完成必做实验的基础上，努力创造条件，为学生提供更多的动手实验机会。\", \"情景素材\": \"（1）氧气的发现；酸碱指示剂的发现；水的组成的探索；原子结构模型的建立和发展；质量守恒定律的发现；我国传统化学工艺，如“湿法炼铜”，瓷器、铜器、铁器制造等。\\n(2) 家养金鱼存活的条件, 久置氢氧化钠溶液的成分, 不同溶质质量分数的营养液对绿萝生长状况的影响, 公交车或火车车厢内空气的成分, 盐碱湖中氯化钠和碳酸钠的提取, 工业区污水的处理, 贝壳(或鸡蛋壳、大理石) 中碳酸钙的含量, 暖贴或食品干燥剂等产品的说明书。\\n（3）改革开放以来，我国获得国家科学技术奖的化学家及其在建设创新型国家方面所取得的成就；现代化学实验技术手段的发展，如传感器在化学科学实践及生产生活中的应用等。\", \"学习活动\": \"(1) 实验探究活动\\n探究过氧化氢分解反应中二氧化锰的催化作用，探究铜片在空气中灼烧后发生的变化，探究二氧化碳与水或氢氧化钠稀溶液的反应，测定并比较氯化钠、硝酸铵、氢氧化钠在水中溶解时溶液的温度变化，探究铁钉生锈的条件，探究氢氧化钠溶液和稀盐酸发生中和反应时的温度变化、pH变化。\\n\\n (2) 调查与交流活动\\n查阅化学发展史中的重大事件、化学家进行科学探究的有关资料，交流、讨论化学知识是如何在科学探究中发展的，以及科学探究各要素的作用；参加化学实验基本知识与技能比赛；结合实例讨论遵守实验室安全规则的重要性，讨论和演练实验室突发事件的应对措施；调查我国化学家自力更生、艰苦奋斗、为国争光、服务人民的先进事迹，撰写我国化学家的“人物传记”。\\n\\n（3）项目式学习活动\\n探究人体吸入与呼出的气体主要成分的差异、绿色植物叶片在白天和夜晚释放的气体成分的差异；应用数字化实验等手段探究不同环境中的空气质量，调查并分析当地近年来空气质量变化的原因。\"}}", CJ_achievement Requirement: "1. 能举例说明化学科学对促进社会发展的重要作用，列举化学家创造的对日常生活有价值的物质；能查找资料并讲述我国化学家胸怀祖国、艰苦奋斗、勇于创新的故事。\n2. 能结合具体探究活动说明科学探究的要素及各要素之间的关系；能发现和表述有探究价值的问题，提出猜想与假设；能设计简单的实验方案或实践活动方案；能独立或与他人合作开展化学实验，收集证据；能基于事实，分析证据与假设的关系，形成结论；能撰写简单的实验报告，并与他人交流和评价探究过程及结果。\n3. 能严格遵守实验室安全规则，能识别实验室安全警示标志和常用危险化学品标志，具有预防化学实验安全事故的意识。\n4. 能正确选取实验试剂和仪器，依据实验方案完成必做实验，并能全面、准确地记录实验过程和现象；能说明必做实验的基本思路与方法，分析实验实施的合理性，能体现严谨求实、敢于质疑的科学态度。\n5. 能基于必做实验形成的探究思路与方法，结合物质的组成及变化等相关知识，分析解决真实情境中的简单实验问题。\n6. 能通过小组合作，有意识地应用化学、技术、工程及其他学科知识，完成实验探究及跨学科实践活动，能体现创新意识和勇于克服困难的品质。", CJ_teachingTip: "{\"教学策略\": \"(1) 结合生产生活、社会发展、科技进步等方面的典型事例，引导学生认识化学科学在创造新物质、应对人类面临的重大挑战中的作用，彰显我国化学家在其中作出的创新贡献和展现出的科学家精神。\\n（2）选择有意义且适合的探究问题，引导学生经历真实的探究过程，注重运用现代化技术手段，加强探究活动中的科学思维，基于科学探究与实践活动建构化学观念，增进对化学科学及科学探究本质的理解，发展科学探究能力和创新意识。\\n（3）积极创造条件，开足、开好必做实验和跨学科实践活动，倡导“做中学”“用中学”“创中学”，充分发挥必做实验和跨学科实践活动的教学功能及育人价值。在完成必做实验的基础上，努力创造条件，为学生提供更多的动手实验机会。\", \"情景素材\": \"（1）氧气的发现；酸碱指示剂的发现；水的组成的探索；原子结构模型的建立和发展；质量守恒定律的发现；我国传统化学工艺，如“湿法炼铜”，瓷器、铜器、铁器制造等。\\n(2) 家养金鱼存活的条件, 久置氢氧化钠溶液的成分, 不同溶质质量分数的营养液对绿萝生长状况的影响, 公交车或火车车厢内空气的成分, 盐碱湖中氯化钠和碳酸钠的提取, 工业区污水的处理, 贝壳(或鸡蛋壳、大理石) 中碳酸钙的含量, 暖贴或食品干燥剂等产品的说明书。\\n（3）改革开放以来，我国获得国家科学技术奖的化学家及其在建设创新型国家方面所取得的成就；现代化学实验技术手段的发展，如传感器在化学科学实践及生产生活中的应用等。\", \"学习活动\": \"(1) 实验探究活动\\n探究过氧化氢分解反应中二氧化锰的催化作用，探究铜片在空气中灼烧后发生的变化，探究二氧化碳与水或氢氧化钠稀溶液的反应，测定并比较氯化钠、硝酸铵、氢氧化钠在水中溶解时溶液的温度变化，探究铁钉生锈的条件，探究氢氧化钠溶液和稀盐酸发生中和反应时的温度变化、pH变化。\\n\\n (2) 调查与交流活动\\n查阅化学发展史中的重大事件、化学家进行科学探究的有关资料，交流、讨论化学知识是如何在科学探究中发展的，以及科学探究各要素的作用；参加化学实验基本知识与技能比赛；结合实例讨论遵守实验室安全规则的重要性，讨论和演练实验室突发事件的应对措施；调查我国化学家自力更生、艰苦奋斗、为国争光、服务人民的先进事迹，撰写我国化学家的“人物传记”。\\n\\n（3）项目式学习活动\\n探究人体吸入与呼出的气体主要成分的差异、绿色植物叶片在白天和夜晚释放的气体成分的差异；应用数字化实验等手段探究不同环境中的空气质量，调查并分析当地近年来空气质量变化的原因。\"}"};

MERGE (n:LearningTheme {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
SET n += {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2", title: "物质的性质与应用", description: "", subject: "SB0402", type: "LearningTheme", applicableLevel: "OB03", contentJson: "{\"achievement Requirement\": \"1. 能依据物质的组成对物质进行分类，并能识别纯净物和混合物、单质和化合物；能依据物质的类别列举一些简单的单质、氧化物、酸、碱、盐及生活中常见的有机物。  \\n2. 能通过实验说明氧气、二氧化碳，以及常见的金属、酸和碱的主要性质，并能用化学方程式表示；能举例说明物质性质的广泛应用及性质与用途的关系；能利用常见物质的性质，分析、解释一些简单的化学现象和事实；能设计简单实验，制备并检验氧气和二氧化碳；能检验溶液的酸碱性。  \\n3. 能运用研究物质性质的一般思路与方法，从物质类别的视角，依据金属活动性顺序、中和反应等，初步预测常见的金属、酸和碱的主要性质，设计实验方案，分析、解释有关的实验现象，进行证据推理，得出合理的结论。  \\n4. 能从定性和定量的视角，说明饱和溶液、溶解度和溶质质量分数的含义；能进行溶质质量分数的简单计算；能根据需要配制一定溶质质量分数的溶液；能利用物质的溶解性，设计粗盐提纯、水的净化等物质分离的方案。\\n5. 能基于真实问题情境，依据常见物质的性质，初步分析和解决相关的综合问题；能基于物质的性质和用途，从辩证的角度，初步分析和评价物质的实际应用，对空气和水体保护、金属材料使用与金属资源开发、低碳行动、资源回收、化学品合理使用等社会性科学议题展开讨论，积极参与相关的综合实践活动。\", \"teachingTip\": {\"教学策略\": \"（1）通过实物、图片、模型等直观手段，联系学生常见的具体物质，引导学生感受物质的多样性；结合元素、原子和分子等核心概念，引导学生进行比较、分类、概括，建立物质分类的认识，逐步形成基于物质类别研究物质及其变化的视角。  \\n（2）通过典型实例，帮助学生认识物质性质与用途的关系，展现丰富、鲜活的物质应用事实，引导学生基于物质性质对物质应用进行分析、解释和创意设计，促进学生“性质决定用途”观念的形成。  \\n（3）充分发挥学生必做实验的功能，给学生提供充分的动手实践和动脑思考的机会，经历完整的探究过程；引导学生在反思和交流的基础上，提炼研究物质性质的一般思路与方法。  \\n（4）设计关于物质的性质与应用的真实情境和任务，充分利用“基于碳中和理念设计低碳行动方案”等跨学科实践活动，开展项目式学习，发展学生多角度分析和解决实际问题，以及合作、实践、创新等能力。\", \"情景素材\": \"(1) 地球大气成分的演变, 自然界中的碳氧平衡, 氧气的发现,宇航、潜水、医疗等领域的呼吸供氧，鱼池的缺氧现象和增氧方法，碳单质的研究进展，溶洞等自然奇观的形成，二氧化碳在大棚蔬菜种植中的作用，二氧化碳的捕集与封存、转化与利用，我国实现碳中和目标的措施。\\n(2) 淡水危机, 自来水的阶梯价格及收费项目, 水的净化方法和自来水的生产工艺, 工业、农业、生活及医疗等领域使用的溶液, 海水制盐和海水淡化。  \\n(3)我国重要的金属矿产资源及其分布，《天工开物》中对我国古代金属冶炼成就的描述，我国古代合金材料的制造（如铸造钱币、青铜器等），我国在金属及金属材料领域的研究和应用成就，现代交通、航空航天、国防科技等领域使用的合金材料及其发展，废弃金属的分类回收和再利用。  \\n(4) 人体内几种液体的正常  pH  范围, 作物生长适宜的  pH  范围, 生活中常见物质的酸碱性, 酸碱指示剂的发现, 海盐、岩盐、湖盐和井盐, 我国古代文献中对制盐方法的描述, 侯德榜对我国制碱工业的贡献。\", \"学习活动\": \"（1）实验探究活动\\n\\n探究空气中氧气的含量；制取蒸馏水；探究活性炭和明矾等净水剂的净水作用；观察氯化钠、硝酸铵、氢氧化钠在水中溶解时溶液的温度变化；查阅溶解度数据，绘制溶解度曲线；探究铁钉生锈的条件；自制酸碱指示剂并观察其在不同溶液中的颜色变化；使用  pH  试纸等检测生活中常见溶液的酸碱性。\\n\\n(2) 调查与交流活动\\n\\n讨论空气中的二氧化碳是否会越来越多、氧气是否会耗尽等问题，调查降低空气中  PM2.5  浓度的措施，调查当地生产生活用水量的变化并分析原因，调查饮用水源的质量和水净化处理的方法。\\n\\n调查改革开放以来我国重要金属材料生产和使用的有关数据，并分析原因；收集有关钢铁锈蚀造成经济损失的资料；调查日常生活中金属废弃物的种类及回收价值；围绕我国碳达峰、碳中和的目标开展讨论，体会我国对推动构建人类命运共同体的责任和担当。\\n\\n（3）项目式学习活动\\n\\n自制汽水，制订水循环利用方案，合理选择金属易拉罐使用的材料，探秘支持航天员呼吸的气体环境，探究溶液酸碱性及氮、磷、钾元素与植物生长的关系，走进社区调查垃圾分类及处理的具体做法和遇到的问题。\"}}", CJ_achievement Requirement: "1. 能依据物质的组成对物质进行分类，并能识别纯净物和混合物、单质和化合物；能依据物质的类别列举一些简单的单质、氧化物、酸、碱、盐及生活中常见的有机物。  \n2. 能通过实验说明氧气、二氧化碳，以及常见的金属、酸和碱的主要性质，并能用化学方程式表示；能举例说明物质性质的广泛应用及性质与用途的关系；能利用常见物质的性质，分析、解释一些简单的化学现象和事实；能设计简单实验，制备并检验氧气和二氧化碳；能检验溶液的酸碱性。  \n3. 能运用研究物质性质的一般思路与方法，从物质类别的视角，依据金属活动性顺序、中和反应等，初步预测常见的金属、酸和碱的主要性质，设计实验方案，分析、解释有关的实验现象，进行证据推理，得出合理的结论。  \n4. 能从定性和定量的视角，说明饱和溶液、溶解度和溶质质量分数的含义；能进行溶质质量分数的简单计算；能根据需要配制一定溶质质量分数的溶液；能利用物质的溶解性，设计粗盐提纯、水的净化等物质分离的方案。\n5. 能基于真实问题情境，依据常见物质的性质，初步分析和解决相关的综合问题；能基于物质的性质和用途，从辩证的角度，初步分析和评价物质的实际应用，对空气和水体保护、金属材料使用与金属资源开发、低碳行动、资源回收、化学品合理使用等社会性科学议题展开讨论，积极参与相关的综合实践活动。", CJ_teachingTip: "{\"教学策略\": \"（1）通过实物、图片、模型等直观手段，联系学生常见的具体物质，引导学生感受物质的多样性；结合元素、原子和分子等核心概念，引导学生进行比较、分类、概括，建立物质分类的认识，逐步形成基于物质类别研究物质及其变化的视角。  \\n（2）通过典型实例，帮助学生认识物质性质与用途的关系，展现丰富、鲜活的物质应用事实，引导学生基于物质性质对物质应用进行分析、解释和创意设计，促进学生“性质决定用途”观念的形成。  \\n（3）充分发挥学生必做实验的功能，给学生提供充分的动手实践和动脑思考的机会，经历完整的探究过程；引导学生在反思和交流的基础上，提炼研究物质性质的一般思路与方法。  \\n（4）设计关于物质的性质与应用的真实情境和任务，充分利用“基于碳中和理念设计低碳行动方案”等跨学科实践活动，开展项目式学习，发展学生多角度分析和解决实际问题，以及合作、实践、创新等能力。\", \"情景素材\": \"(1) 地球大气成分的演变, 自然界中的碳氧平衡, 氧气的发现,宇航、潜水、医疗等领域的呼吸供氧，鱼池的缺氧现象和增氧方法，碳单质的研究进展，溶洞等自然奇观的形成，二氧化碳在大棚蔬菜种植中的作用，二氧化碳的捕集与封存、转化与利用，我国实现碳中和目标的措施。\\n(2) 淡水危机, 自来水的阶梯价格及收费项目, 水的净化方法和自来水的生产工艺, 工业、农业、生活及医疗等领域使用的溶液, 海水制盐和海水淡化。  \\n(3)我国重要的金属矿产资源及其分布，《天工开物》中对我国古代金属冶炼成就的描述，我国古代合金材料的制造（如铸造钱币、青铜器等），我国在金属及金属材料领域的研究和应用成就，现代交通、航空航天、国防科技等领域使用的合金材料及其发展，废弃金属的分类回收和再利用。  \\n(4) 人体内几种液体的正常  pH  范围, 作物生长适宜的  pH  范围, 生活中常见物质的酸碱性, 酸碱指示剂的发现, 海盐、岩盐、湖盐和井盐, 我国古代文献中对制盐方法的描述, 侯德榜对我国制碱工业的贡献。\", \"学习活动\": \"（1）实验探究活动\\n\\n探究空气中氧气的含量；制取蒸馏水；探究活性炭和明矾等净水剂的净水作用；观察氯化钠、硝酸铵、氢氧化钠在水中溶解时溶液的温度变化；查阅溶解度数据，绘制溶解度曲线；探究铁钉生锈的条件；自制酸碱指示剂并观察其在不同溶液中的颜色变化；使用  pH  试纸等检测生活中常见溶液的酸碱性。\\n\\n(2) 调查与交流活动\\n\\n讨论空气中的二氧化碳是否会越来越多、氧气是否会耗尽等问题，调查降低空气中  PM2.5  浓度的措施，调查当地生产生活用水量的变化并分析原因，调查饮用水源的质量和水净化处理的方法。\\n\\n调查改革开放以来我国重要金属材料生产和使用的有关数据，并分析原因；收集有关钢铁锈蚀造成经济损失的资料；调查日常生活中金属废弃物的种类及回收价值；围绕我国碳达峰、碳中和的目标开展讨论，体会我国对推动构建人类命运共同体的责任和担当。\\n\\n（3）项目式学习活动\\n\\n自制汽水，制订水循环利用方案，合理选择金属易拉罐使用的材料，探秘支持航天员呼吸的气体环境，探究溶液酸碱性及氮、磷、钾元素与植物生长的关系，走进社区调查垃圾分类及处理的具体做法和遇到的问题。\"}"};

MERGE (n:LearningTheme {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l3"})
SET n += {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l3", title: "物质的组成与结构", description: "", subject: "SB0402", type: "LearningTheme", applicableLevel: "OB03", contentJson: "{\"achievement Requirement\": \"1. 能对元素进行简单分类，能识记并正确书写常见元素的名称和符号，能从组成物质的元素的角度判断物质的类别，能根据原子的核电荷数判断质子数和核外电子数，能根据元素的原子序数在元素周期表中查到该元素的名称、符号、相对原子质量等信息。  \\n2. 能用化学式表示某些常见物质的组成，能分析常见物质中元素的化合价；能从宏观与微观、定性与定量相结合的视角说明化学式的含义；能根据化学式进行物质组成的简单计算；能根据相关标签或说明书辨识某些食品、药品的主要成分，并能比较、分析相应物质的含量。\\n3. 能说明分子、原子、离子的区别和联系，能用分子的观点解释生活中的某些变化或现象；能依据化学反应过程中元素不变的规律，推断反应物或生成物的元素组成。  \\n4. 能基于真实情境，从元素、原子、分子的视角分析有关物质及其变化的简单问题，并作出合理的解释和判断。\", \"teachingTip\": {\"教学策略\": \"（1）结合学生熟悉的现象和已有的经验，通过实验探究、模型拼插等活动或动画模拟等可视化手段，充分发挥学生的想象力，引导学生从分子、原子等微观视角认识物质及其变化，帮助学生建立宏观与微观间的联系。  \\n（2）利用科学家探索原子结构的科学史实，启发学生根据实验现象，学习运用类比、推理、模型等思维方法认识原子的结构，了解科学家严谨求实的科学态度，增进对科学本质的理解。  \\n(3) 基于“宏观—微观—符号”多重表征设计学习活动，促进学生形成化学思维方式，引导学生认识物质的组成、结构与性质之间的关系。\", \"情景素材\": \"（1）不同尺度的微观粒子图示，布朗运动，扫描隧道显微镜（STM）与原子操纵技术，简单物理变化、化学变化的微观图示。  \\n（2）人类对物质组成的认识的发展，科学家对分子、原子的认识历程，卢瑟福  α  粒子散射实验史实，科学家探究水的组成的历史，我国化学家张青莲等人对相对原子质量测定的贡献。  \\n(3) 农作物生长必需的化学元素, 人体必需的微量元素和常量元素，地壳中的元素分布，药品、食品标签上相应物质的成分及含量，国家规定的饮用水标准。\", \"学习活动\": \"(1) 实验探究活动\\n\\n观察并解释氨水挥发使酚酞溶液变红，红墨水分别在冷水和热水中扩散的实验现象；观察水的三态变化和水分解的实验现象，并用图示表征变化的微观过程；通过蜡烛、甲烷、乙醇的燃烧实验了解探究物质元素组成的方法。\\n\\n(2) 调查与交流活动\\n\\n查找常见食品的元素组成，并列表说明；收集关于人体必需的微量元素的资料；根据某种氮肥的包装袋上或产品说明书中标示的含氮量推算肥料的纯度；查阅元素概念的发展史，交流对物质组成“基本成分”的认识；以金刚石和石墨为例，探讨物质组成、结构与物质性质的关系。\\n\\n(3) 项目式学习活动\\n\\n查阅相关资料，写一篇科普文章或创编一个情景剧剧本，如“我是一个水分子”“水分子漫游记”等。\"}}", CJ_achievement Requirement: "1. 能对元素进行简单分类，能识记并正确书写常见元素的名称和符号，能从组成物质的元素的角度判断物质的类别，能根据原子的核电荷数判断质子数和核外电子数，能根据元素的原子序数在元素周期表中查到该元素的名称、符号、相对原子质量等信息。  \n2. 能用化学式表示某些常见物质的组成，能分析常见物质中元素的化合价；能从宏观与微观、定性与定量相结合的视角说明化学式的含义；能根据化学式进行物质组成的简单计算；能根据相关标签或说明书辨识某些食品、药品的主要成分，并能比较、分析相应物质的含量。\n3. 能说明分子、原子、离子的区别和联系，能用分子的观点解释生活中的某些变化或现象；能依据化学反应过程中元素不变的规律，推断反应物或生成物的元素组成。  \n4. 能基于真实情境，从元素、原子、分子的视角分析有关物质及其变化的简单问题，并作出合理的解释和判断。", CJ_teachingTip: "{\"教学策略\": \"（1）结合学生熟悉的现象和已有的经验，通过实验探究、模型拼插等活动或动画模拟等可视化手段，充分发挥学生的想象力，引导学生从分子、原子等微观视角认识物质及其变化，帮助学生建立宏观与微观间的联系。  \\n（2）利用科学家探索原子结构的科学史实，启发学生根据实验现象，学习运用类比、推理、模型等思维方法认识原子的结构，了解科学家严谨求实的科学态度，增进对科学本质的理解。  \\n(3) 基于“宏观—微观—符号”多重表征设计学习活动，促进学生形成化学思维方式，引导学生认识物质的组成、结构与性质之间的关系。\", \"情景素材\": \"（1）不同尺度的微观粒子图示，布朗运动，扫描隧道显微镜（STM）与原子操纵技术，简单物理变化、化学变化的微观图示。  \\n（2）人类对物质组成的认识的发展，科学家对分子、原子的认识历程，卢瑟福  α  粒子散射实验史实，科学家探究水的组成的历史，我国化学家张青莲等人对相对原子质量测定的贡献。  \\n(3) 农作物生长必需的化学元素, 人体必需的微量元素和常量元素，地壳中的元素分布，药品、食品标签上相应物质的成分及含量，国家规定的饮用水标准。\", \"学习活动\": \"(1) 实验探究活动\\n\\n观察并解释氨水挥发使酚酞溶液变红，红墨水分别在冷水和热水中扩散的实验现象；观察水的三态变化和水分解的实验现象，并用图示表征变化的微观过程；通过蜡烛、甲烷、乙醇的燃烧实验了解探究物质元素组成的方法。\\n\\n(2) 调查与交流活动\\n\\n查找常见食品的元素组成，并列表说明；收集关于人体必需的微量元素的资料；根据某种氮肥的包装袋上或产品说明书中标示的含氮量推算肥料的纯度；查阅元素概念的发展史，交流对物质组成“基本成分”的认识；以金刚石和石墨为例，探讨物质组成、结构与物质性质的关系。\\n\\n(3) 项目式学习活动\\n\\n查阅相关资料，写一篇科普文章或创编一个情景剧剧本，如“我是一个水分子”“水分子漫游记”等。\"}"};

MERGE (n:LearningTheme {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l4"})
SET n += {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l4", title: "物质的化学变化", description: "", subject: "SB0402", type: "LearningTheme", applicableLevel: "OB03", contentJson: "{\"achievement Requirement\": \"1. 能判断常见的物理变化和化学变化，并能从宏观和微观的视角说明二者的区别；能辨别常见的化合反应、分解反应、置换反应和复分解反应。  \\n2. 能选取实验证据说明质量守恒定律，并阐释其微观本质；能根据实验事实用文字和符号描述、表示化学变化，并正确书写常见的化学方程式。  \\n3. 能举例说明化学变化在自然界和生产生活中的重要应用价值，以及化学家利用化学反应造福人类的创造性贡献。  \\n4. 能利用化学反应相关知识分析和解释自然界、生产生活、实验中的常见现象；能基于守恒和比例关系推断化学反应的相关信息；能根据化学方程式进行简单的计算，并解决生产生活中的简单问题。  \\n5. 能运用变量控制思想设计燃烧条件等实验探究方案；能利用化学反应及绿色环保理念设计实验方案，完成常见物质的制备、检验等任务。  \\n6. 能基于真实的问题情境，多角度分析和解决生产生活中有关化学变化的简单问题；能积极参与有关合理使用化学物质及其反应的媒体信息的评论；能利用化学反应知识完成相关的项目式学习任务及跨学科实践活动。\", \"teachingTip\": {\"教学策略\": \"（1）发挥大概念统领的多维课程内容的素养发展价值，引导学生建构对化学变化的结构化认识，形成认识化学反应的思路与方法，体会通过化学反应实现物质转化的意义和价值，发展核心素养。  \\n(2) 选取学生身边的物质变化事实和生动直观的实验现象, 引导学生进行观察、分类和概括, 建立化学反应的相关概念; 基于微观视角阐释化学变化及质量守恒定律的本质, 进行符号表征, 促进学生化学变化观念的形成和发展。  \\n（3）通过宏观、微观、符号等多重表征手段，引导学生多角度理解化学反应，配合联想、游戏等多种策略，突破化学方程式的学习难点。  \\n（4）结合生产生活和科学研究中有关物质制备、转化的实际问题，帮助学生认识化学反应计算的比例关系，发展对化学变化的定量认识和推理能力。  \\n（5）设计关于化学反应应用的真实情境和任务，促进学生多角度分析和解决问题，逐步发展学生的系统思维，增强学生的跨学科意识，促进核心素养的融合发展。\", \"情景素材\": \"(1) 石灰岩溶洞与钟乳石的形成，呼吸作用及葡萄糖在体内氧化释放能量，用石灰石或贝壳烧制生石灰，《梦溪笔谈》中关于“湿法炼铜”的描述，用食醋清洗水壶中的水垢，酸性和碱性废水的处理，即热饭盒、自热火锅。  \\n(2) 燃料燃烧不充分带来的煤气中毒等危害, 火炬、酒精灯、燃气灶、煤炉、柴灶等燃烧的调控措施, 各种燃烧和爆炸现象及灭火方法，家庭用电、用气及不同材料燃烧引起的火灾与施救，面粉厂、煤粉厂、加油站、矿井等的防燃、防爆措施。\\n（3）铜片在空气中灼烧前后固体质量的比较，拉瓦锡与质量守恒定律的发现，对水的蒸发和水的分解的微观解释。\", \"学习活动\": \"(1) 实验探究活动\\n\\n探究燃烧的条件，探究常见酸溶液、盐溶液与金属发生的置换反应及规律，通过实验论证物质是否发生了化学变化，结合实验说明质量守恒定律，使用传感器等多种技术手段表征化学反应中的物质变化。\\n\\n(2) 调查与交流活动\\n\\n收集日常生活中的化学变化现象和有关事实，交流、讨论并归纳化学变化的特征；查询网络、报刊媒体中的有关资料和报道，交流、分享化学反应对促进社会发展和提高人们生活质量的贡献，讨论合理利用化学反应的重要性；参观工厂或采访企业家、工程技术人员，调查我国重要化工类产品的生产成本、经济效益、绿色环保发展策略等。\\n\\n(3) 项目式学习活动\\n\\n设计和编制可用于探究燃烧条件、化学反应定量关系等的计算机小程序；探讨酒精等易燃品的安全使用等科学议题；利用化学反应模拟“智慧农场”中农作物的生长条件等；小组协作完成当地土壤酸碱性测定的实验，提出土壤改良的建议或适宜的种植方案。\"}}", CJ_achievement Requirement: "1. 能判断常见的物理变化和化学变化，并能从宏观和微观的视角说明二者的区别；能辨别常见的化合反应、分解反应、置换反应和复分解反应。  \n2. 能选取实验证据说明质量守恒定律，并阐释其微观本质；能根据实验事实用文字和符号描述、表示化学变化，并正确书写常见的化学方程式。  \n3. 能举例说明化学变化在自然界和生产生活中的重要应用价值，以及化学家利用化学反应造福人类的创造性贡献。  \n4. 能利用化学反应相关知识分析和解释自然界、生产生活、实验中的常见现象；能基于守恒和比例关系推断化学反应的相关信息；能根据化学方程式进行简单的计算，并解决生产生活中的简单问题。  \n5. 能运用变量控制思想设计燃烧条件等实验探究方案；能利用化学反应及绿色环保理念设计实验方案，完成常见物质的制备、检验等任务。  \n6. 能基于真实的问题情境，多角度分析和解决生产生活中有关化学变化的简单问题；能积极参与有关合理使用化学物质及其反应的媒体信息的评论；能利用化学反应知识完成相关的项目式学习任务及跨学科实践活动。", CJ_teachingTip: "{\"教学策略\": \"（1）发挥大概念统领的多维课程内容的素养发展价值，引导学生建构对化学变化的结构化认识，形成认识化学反应的思路与方法，体会通过化学反应实现物质转化的意义和价值，发展核心素养。  \\n(2) 选取学生身边的物质变化事实和生动直观的实验现象, 引导学生进行观察、分类和概括, 建立化学反应的相关概念; 基于微观视角阐释化学变化及质量守恒定律的本质, 进行符号表征, 促进学生化学变化观念的形成和发展。  \\n（3）通过宏观、微观、符号等多重表征手段，引导学生多角度理解化学反应，配合联想、游戏等多种策略，突破化学方程式的学习难点。  \\n（4）结合生产生活和科学研究中有关物质制备、转化的实际问题，帮助学生认识化学反应计算的比例关系，发展对化学变化的定量认识和推理能力。  \\n（5）设计关于化学反应应用的真实情境和任务，促进学生多角度分析和解决问题，逐步发展学生的系统思维，增强学生的跨学科意识，促进核心素养的融合发展。\", \"情景素材\": \"(1) 石灰岩溶洞与钟乳石的形成，呼吸作用及葡萄糖在体内氧化释放能量，用石灰石或贝壳烧制生石灰，《梦溪笔谈》中关于“湿法炼铜”的描述，用食醋清洗水壶中的水垢，酸性和碱性废水的处理，即热饭盒、自热火锅。  \\n(2) 燃料燃烧不充分带来的煤气中毒等危害, 火炬、酒精灯、燃气灶、煤炉、柴灶等燃烧的调控措施, 各种燃烧和爆炸现象及灭火方法，家庭用电、用气及不同材料燃烧引起的火灾与施救，面粉厂、煤粉厂、加油站、矿井等的防燃、防爆措施。\\n（3）铜片在空气中灼烧前后固体质量的比较，拉瓦锡与质量守恒定律的发现，对水的蒸发和水的分解的微观解释。\", \"学习活动\": \"(1) 实验探究活动\\n\\n探究燃烧的条件，探究常见酸溶液、盐溶液与金属发生的置换反应及规律，通过实验论证物质是否发生了化学变化，结合实验说明质量守恒定律，使用传感器等多种技术手段表征化学反应中的物质变化。\\n\\n(2) 调查与交流活动\\n\\n收集日常生活中的化学变化现象和有关事实，交流、讨论并归纳化学变化的特征；查询网络、报刊媒体中的有关资料和报道，交流、分享化学反应对促进社会发展和提高人们生活质量的贡献，讨论合理利用化学反应的重要性；参观工厂或采访企业家、工程技术人员，调查我国重要化工类产品的生产成本、经济效益、绿色环保发展策略等。\\n\\n(3) 项目式学习活动\\n\\n设计和编制可用于探究燃烧条件、化学反应定量关系等的计算机小程序；探讨酒精等易燃品的安全使用等科学议题；利用化学反应模拟“智慧农场”中农作物的生长条件等；小组协作完成当地土壤酸碱性测定的实验，提出土壤改良的建议或适宜的种植方案。\"}"};

MERGE (n:LearningTheme {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l5"})
SET n += {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l5", title: "化学与社会·跨学科实践", description: "", subject: "SB0402", type: "LearningTheme", applicableLevel: "OB03", contentJson: "{\"achievement Requirement\": \"1. 能列举生活中常见的能源和资源、金属材料和有机合成材料及其应用；能举例说明化学在保护环境、维护人体健康等方面的作用，具有安全用药的意识。  \\n2. 能从物质的组成及变化视角，分析和讨论资源综合利用、材料选取与使用、生态环境保护等有关问题。  \\n3. 在跨学科实践活动中，能综合运用化学、技术、工程及跨学科知识，秉承可持续发展观，设计、评估解决实际问题的方案，制作项目作品，并进行改进和优化，体现创新意识。  \\n4. 在跨学科实践活动中，具有恪守科学伦理、遵守法律法规以及维护国家安全的意识；能积极参与小组合作，勇于批判、质疑，自觉反思，能克服困难，敢于面对陌生的、不确定性的挑战；能积极参加与化学有关的社会热点问题的讨论并作出合理的价值判断；初步形成节能低碳、节约资源、保护环境的态度和健康的生活方式。\", \"teachingTip\": {\"教学策略\": \"（1）明确该学习主题的教学定位，注重综合应用化学知识，引导学生从物质的组成及变化视角分析和解决资源、能源、材料、环境、人类健康等实际问题，认识化学科学的重要价值，培养学生的合作、实践、创新等素养。  \\n（2）设计和开展具有挑战性的实践任务，充分利用社会资源，促进校内外联动。让学生经历调研访谈、创意设计、动手制作、展示表达、方案评价、反思改进等多样化活动，促进学生形成运用多学科知识、技术、工程融合解决问题的系统思维，鼓励学生有意识地使用信息技术解决问题。\\n（3）设计跨学科实践活动，注重将问题解决线、知识逻辑线、素养发展线紧密结合，拆解复杂任务和设计系列活动，实现问题解决过程与核心知识的获得、能力和素养的发展自然融合；确保重点活动的开放度，让学生经历自主思考，合作探究，深度互动、交流，总结、反思等完整的问题解决过程，实现深度学习，提升解决真实问题的能力，促进学生核心素养的融合发展。  \\n（4）综合运用体验和表达、成就和激励、反馈和深化等策略促进学生知、情、意、行的统一，引导学生形成绿色化学与可持续发展观，了解符合科学伦理和法律规定的行为准则，认识这些观念和准则的重要性。  \\n（5）跨学科实践活动的开展应与“物质的性质与应用”“物质的组成与结构”“物质的化学变化”等学习主题中的核心知识、学生必做实验的教学密切结合，充分发挥跨学科实践活动对课程内容和教学实施的整合功能。\", \"情景素材\": \"（1）太阳能、氢能、风能、核能等新能源的开发与利用，我国的“煤改电”工程，沼气、天然气和西气东输工程，我国古代黑火药的发明和使用，我国能源消耗和化石燃料分布，我国可燃冰资源的开发，海水淡化技术和产业发展，南水北调工程。  \\n(2) 污水处理与利用, 空气质量日报, 温室效应与全球变暖, 我国蓝天、碧水、净土三大保卫战。  \\n（3）从石器、青铜器、铁器到高分子合成材料的变迁，塑料制品的回收、降解与再生，我国超导材料的研发，石墨烯材料的特性和我国石墨烯产业的发展，日常生活、信息技术、航空航天和国防科技领域中的新型材料。  \\n（4）均衡膳食结构图，人每天摄入的食物中所含的主要营养物质及其含量，常见的食品添加剂及我国对使用食品添加剂的有关规定，常用药品、家用洗涤剂及消毒剂的使用说明，屠呦呦提取青蒿素的事迹。\", \"学习活动\": \"(1) 实验探究活动\\n模拟从海水中获取淡水的实验，模拟酸雨对植物、建筑等的影响，用简单的实验区分棉纤维、羊毛纤维和合成纤维，检测人体呼出气体中的酒精含量。\\n\\n (2) 调查与交流活动\\n讨论氢气、甲烷、酒精、煤等燃料哪种更理想，评估替代能源的选择；探讨在日常生活中可减少能源消耗的方法；调查当地燃料的来源和使用情况，提出合理使用燃料的建议。\\n调查当地有关生态环境保护的政策与措施，讨论其实效性；分析当地近几年空气质量的相关信息，探讨空气质量变化的原因；参观并讨论当地“三废”（废水、废气、固体废弃物）的处理设施（或观看有关的影像资料）。\\n调查我国探月工程和载人航天工程（如神舟系列飞船）中所研发的新型材料；调查家中常用材料的情况，查阅有关塑料和金属循环再利用的资料；讨论保温杯、易拉罐等材料的选择及使用的注意事项。\\n分析、评估家庭的食谱，并给出改进建议；调研家用清洁剂、消毒剂的种类及使用中的常见问题；查阅家庭常用药品的说明书，了解药品有效成分及含量，明确正确的使用方法；观看展览或影像资料，了解烟草、酒精对人体健康的影响，认识毒品对个人及社会的危害，坚决远离和拒绝毒品；收集化学在帮助人类改善健康状况和战胜疾病方面的实例；调研从事化学化工相关职业劳模的先进事迹，感悟劳模精神。\\n\\n(3) 项目式学习活动\\n选择燃料，设计奥运会火炬；设计海报或制作短视频宣传低碳生活、水资源保护等；调研汽车材料的变迁，设计未来汽车的材料；为特定年龄或职业的人群设计均衡膳食食谱；在家务劳动（如清洗餐具、正确使用燃气做饭、学做馒头或面包等）中感悟化学原理，绘制反映劳动过程和其中所含的化学原理的思维导图。\"}}", CJ_achievement Requirement: "1. 能列举生活中常见的能源和资源、金属材料和有机合成材料及其应用；能举例说明化学在保护环境、维护人体健康等方面的作用，具有安全用药的意识。  \n2. 能从物质的组成及变化视角，分析和讨论资源综合利用、材料选取与使用、生态环境保护等有关问题。  \n3. 在跨学科实践活动中，能综合运用化学、技术、工程及跨学科知识，秉承可持续发展观，设计、评估解决实际问题的方案，制作项目作品，并进行改进和优化，体现创新意识。  \n4. 在跨学科实践活动中，具有恪守科学伦理、遵守法律法规以及维护国家安全的意识；能积极参与小组合作，勇于批判、质疑，自觉反思，能克服困难，敢于面对陌生的、不确定性的挑战；能积极参加与化学有关的社会热点问题的讨论并作出合理的价值判断；初步形成节能低碳、节约资源、保护环境的态度和健康的生活方式。", CJ_teachingTip: "{\"教学策略\": \"（1）明确该学习主题的教学定位，注重综合应用化学知识，引导学生从物质的组成及变化视角分析和解决资源、能源、材料、环境、人类健康等实际问题，认识化学科学的重要价值，培养学生的合作、实践、创新等素养。  \\n（2）设计和开展具有挑战性的实践任务，充分利用社会资源，促进校内外联动。让学生经历调研访谈、创意设计、动手制作、展示表达、方案评价、反思改进等多样化活动，促进学生形成运用多学科知识、技术、工程融合解决问题的系统思维，鼓励学生有意识地使用信息技术解决问题。\\n（3）设计跨学科实践活动，注重将问题解决线、知识逻辑线、素养发展线紧密结合，拆解复杂任务和设计系列活动，实现问题解决过程与核心知识的获得、能力和素养的发展自然融合；确保重点活动的开放度，让学生经历自主思考，合作探究，深度互动、交流，总结、反思等完整的问题解决过程，实现深度学习，提升解决真实问题的能力，促进学生核心素养的融合发展。  \\n（4）综合运用体验和表达、成就和激励、反馈和深化等策略促进学生知、情、意、行的统一，引导学生形成绿色化学与可持续发展观，了解符合科学伦理和法律规定的行为准则，认识这些观念和准则的重要性。  \\n（5）跨学科实践活动的开展应与“物质的性质与应用”“物质的组成与结构”“物质的化学变化”等学习主题中的核心知识、学生必做实验的教学密切结合，充分发挥跨学科实践活动对课程内容和教学实施的整合功能。\", \"情景素材\": \"（1）太阳能、氢能、风能、核能等新能源的开发与利用，我国的“煤改电”工程，沼气、天然气和西气东输工程，我国古代黑火药的发明和使用，我国能源消耗和化石燃料分布，我国可燃冰资源的开发，海水淡化技术和产业发展，南水北调工程。  \\n(2) 污水处理与利用, 空气质量日报, 温室效应与全球变暖, 我国蓝天、碧水、净土三大保卫战。  \\n（3）从石器、青铜器、铁器到高分子合成材料的变迁，塑料制品的回收、降解与再生，我国超导材料的研发，石墨烯材料的特性和我国石墨烯产业的发展，日常生活、信息技术、航空航天和国防科技领域中的新型材料。  \\n（4）均衡膳食结构图，人每天摄入的食物中所含的主要营养物质及其含量，常见的食品添加剂及我国对使用食品添加剂的有关规定，常用药品、家用洗涤剂及消毒剂的使用说明，屠呦呦提取青蒿素的事迹。\", \"学习活动\": \"(1) 实验探究活动\\n模拟从海水中获取淡水的实验，模拟酸雨对植物、建筑等的影响，用简单的实验区分棉纤维、羊毛纤维和合成纤维，检测人体呼出气体中的酒精含量。\\n\\n (2) 调查与交流活动\\n讨论氢气、甲烷、酒精、煤等燃料哪种更理想，评估替代能源的选择；探讨在日常生活中可减少能源消耗的方法；调查当地燃料的来源和使用情况，提出合理使用燃料的建议。\\n调查当地有关生态环境保护的政策与措施，讨论其实效性；分析当地近几年空气质量的相关信息，探讨空气质量变化的原因；参观并讨论当地“三废”（废水、废气、固体废弃物）的处理设施（或观看有关的影像资料）。\\n调查我国探月工程和载人航天工程（如神舟系列飞船）中所研发的新型材料；调查家中常用材料的情况，查阅有关塑料和金属循环再利用的资料；讨论保温杯、易拉罐等材料的选择及使用的注意事项。\\n分析、评估家庭的食谱，并给出改进建议；调研家用清洁剂、消毒剂的种类及使用中的常见问题；查阅家庭常用药品的说明书，了解药品有效成分及含量，明确正确的使用方法；观看展览或影像资料，了解烟草、酒精对人体健康的影响，认识毒品对个人及社会的危害，坚决远离和拒绝毒品；收集化学在帮助人类改善健康状况和战胜疾病方面的实例；调研从事化学化工相关职业劳模的先进事迹，感悟劳模精神。\\n\\n(3) 项目式学习活动\\n选择燃料，设计奥运会火炬；设计海报或制作短视频宣传低碳生活、水资源保护等；调研汽车材料的变迁，设计未来汽车的材料；为特定年龄或职业的人群设计均衡膳食食谱；在家务劳动（如清洗餐具、正确使用燃气做饭、学做馒头或面包等）中感悟化学原理，绘制反映劳动过程和其中所含的化学原理的思维导图。\"}"};

MERGE (n:Conception {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l1"})
SET n += {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l1", title: "化学科学本质", description: "知道化学是研究物质的组成、结构、性质、转化及应用的一门基础学科，其特征是从分子层次认识物质，通过化学变化创造物质；初步了解化学科学的发展历程，体会实验探究和模型建构是化学科学研究的基本方法；认识化学科学、技术、社会、环境的相互关系，了解化学科学对社会发展和人类文明进步的重要价值。\n感悟科学家崇尚真理、严谨求实的科学态度，勇于质疑、批判和创新的精神；学习科学家爱国、奉献的精神，团结协作、攻坚克难的品格。", subject: "SB0402", type: "Conception", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:Conception {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l2"})
SET n += {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l2", title: "物质的多样性", description: "认识物质是多样的，知道物质既有天然存在的也有人工创造的，既有无机物也有有机物；认识依据物质的组成和性质可以对物质进行分类，知道物质可以分为纯净物和混合物、单质和化合物等；知道物质具有独特的物理性质和化学性质，同类物质在性质上具有一定的相似性；知道物质具有广泛的应用价值，物质的性质决定用途。", subject: "SB0402", type: "Conception", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:Conception {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l3"})
SET n += {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l3", title: "物质的组成", description: "初步形成基于元素和分子、原子认识物质及其变化的视角，建立认识物质的宏观和微观视角之间的关联，知道物质的性质与组成、结构有关。", subject: "SB0402", type: "Conception", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:Conception {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l4"})
SET n += {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l4", title: "物质的变化与转化", description: "知道物质是在不断变化的，物质变化包括物理变化和化学变化；认识物质的变化过程伴随着能量变化，在一定条件下通过化学反应可以实现物质转化，化学反应中的各物质间存在定量关系，初步形成变化观。", subject: "SB0402", type: "Conception", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:Conception {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l5"})
SET n += {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l5", title: "化学与可持续发展", description: "知道科学和技术有助于解决社会问题，使用科学和技术时要考虑其对社会和环境的影响，理解科学、技术、社会、环境的相互关系；认识化学在解决与资源、能源、材料、环境、人类健康等相关的问题中的作用，体会化学是推动人类社会可持续发展的重要力量，树立建设美丽中国、为全球生态安全作贡献的信念；主动践行节约资源、环境友好的生活方式，树立人与自然和谐共生的科学自然观和绿色发展观。", subject: "SB0402", type: "Conception", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l1"})
SET n += {type: "CoreLiteracy", title: "化学观念", description: "化学观念是人类探索物质的组成与结构、性质与应用、化学反应及其规律所形成的基本观念，是化学概念、原理和规律的提炼与升华，是认识物质及其变化，以及解决实际问题的基础。\n\n化学观念主要包括：物质是由元素组成的；物质具有多样性，可以分为不同的类别；物质是由分子、原子等构成的，物质结构决定性质，物质性质决定用途；化学变化有新物质生成，其本质是原子的重新组合，且伴随着能量变化，并遵循一定的规律；在一定条件下通过化学反应可以实现物质转化；等等。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{}", identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l1"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l2"})
SET n += {type: "CoreLiteracy", title: "科学思维", description: "科学思维是在化学学习中基于事实与逻辑进行独立思考和判断，对不同信息、观点和结论进行质疑与批判，提出创造性见解的能力；是从化学视角研究物质及其变化规律的思路与方法；是从宏观、微观、符号相结合的视角探究物质及其变化规律的认识方式。\n\n科学思维主要包括：在解决化学问题中所运用的比较、分类、分析、综合、归纳等科学方法，基于实验事实进行证据推理、建构模型并推测物质及其变化的思维能力，在解决与化学相关的真实问题中形成的质疑能力、批判能力和创新意识。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{}", identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l2"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l3"})
SET n += {type: "CoreLiteracy", title: "科学探究与实践", description: "科学探究与实践是指经历化学课程中的实验探究，基于学科和跨学科实践活动形成的学习能力；是综合运用化学等学科的知识和方法，通过一定的技术手段，在解决真实情境问题和完成综合实践活动中展现的能力与品格。\n\n科学探究与实践主要包括：以实验为主的科学探究能力，通过网络查询等技术手段获取和加工信息的自主学习能力，运用简单的技术与工程方法设计、制作与使用相关模型和作品的能力，参与社会调查实践、提出解决实际问题初步方案的能力，与他人分工协作、沟通交流、合作问题解决的能力等。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{}", identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l3"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l4"})
SET n += {type: "CoreLiteracy", title: "科学态度与责任", description: "科学态度与责任是指通过化学课程的学习，在理解科学、技术、社会、环境相互关系的基础上，逐步形成的对化学促进社会可持续发展的正确认识，以及所表现的责任担当。\n\n科学态度与责任主要包括：发展对物质世界的好奇心、想象力和探究欲，保持对化学学习和科学探究的浓厚兴趣；对化学学科促进人类文明和社会可持续发展的重要价值具有积极的认识；具有严谨求实的科学态度，敢于提出并坚持自己的见解、勇于修正或放弃错误观点、反对伪科学的科学精神；遵守科学伦理和法律法规，具有运用化学知识对生活及社会实际问题作出判断和决策的意识；以资源的再生和合理使用、生态和环境的绿色发展为重点，增强学生的资源、生态、环境等方面的国家安全意识；热爱祖国，增强为实现中华民族伟大复兴和推动社会进步而勤奋学习的责任感。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{}", identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l4"};

MERGE (n:Interdisciplinary {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l1"})
SET n += {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l1", type: "Interdisciplinary", title: "微型空气质量 “检测站” 的组装与使用", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:Interdisciplinary {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l2"})
SET n += {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l2", type: "Interdisciplinary", title: "基于特定需求设计和制作简易供氧器", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:Interdisciplinary {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l3"})
SET n += {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l3", type: "Interdisciplinary", title: "水质检测及自制净水器", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:Interdisciplinary {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l4"})
SET n += {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l4", type: "Interdisciplinary", title: "基于碳中和理念设计低碳行动方案", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:Interdisciplinary {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l5"})
SET n += {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l5", type: "Interdisciplinary", title: "垃圾的分类与回收利用", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:Interdisciplinary {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l6"})
SET n += {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l6", type: "Interdisciplinary", title: "探究土壤酸碱性对植物生长的影响", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:Interdisciplinary {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l7"})
SET n += {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l7", type: "Interdisciplinary", title: "海洋资源的综合利用与制盐", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:Interdisciplinary {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l8"})
SET n += {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l8", type: "Interdisciplinary", title: "制作模型并展示科学家探索物质组成与结构的历程", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:Interdisciplinary {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l9"})
SET n += {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l9", type: "Interdisciplinary", title: "调查家用燃料的变迁与合理使用", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:Interdisciplinary {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l10"})
SET n += {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l10", type: "Interdisciplinary", title: "调查我国航天科技领域中新型材料、新型能源的应用", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:Chapter {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l1"})
SET n += {type: "Chapter", title: "绪论", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"上册\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l1", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "上册"};

MERGE (n:Chapter {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l2"})
SET n += {type: "Chapter", title: "走进化学世界", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"上册\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l2", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "上册"};

MERGE (n:Chapter {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l3"})
SET n += {type: "Chapter", title: "空气和氧气", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"上册\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l3", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "上册"};

MERGE (n:Chapter {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l4"})
SET n += {type: "Chapter", title: "物质构成的奥秘", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"上册\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l4", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "上册"};

MERGE (n:Chapter {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l5"})
SET n += {type: "Chapter", title: "自然界的水", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"上册\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l5", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "上册"};

MERGE (n:Chapter {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l6"})
SET n += {type: "Chapter", title: "化学反应的定量关系", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"上册\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l6", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "上册"};

MERGE (n:Chapter {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l7"})
SET n += {type: "Chapter", title: "碳和碳的氧化物", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"上册\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l7", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "上册"};

MERGE (n:Chapter {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l8"})
SET n += {type: "Chapter", title: "能源的合理利用与开发", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"上册\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l8", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "上册"};

MERGE (n:Chapter {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l9"})
SET n += {type: "Chapter", title: "金属和金属材料", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"下册\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l9", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "下册"};

MERGE (n:Chapter {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l10"})
SET n += {type: "Chapter", title: "溶液", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"下册\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l10", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "下册"};

MERGE (n:Chapter {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l11"})
SET n += {type: "Chapter", title: "酸和碱", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"下册\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l11", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "下册"};

MERGE (n:Chapter {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l12"})
SET n += {type: "Chapter", title: "盐 化肥", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"下册\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l12", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "下册"};

MERGE (n:Chapter {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l13"})
SET n += {type: "Chapter", title: "化学与生活", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"下册\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l13", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "下册"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l1"})
SET n += {type: "Section", title: "化学使世界变得更加绚丽多彩", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"chapter\": \"绪论\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l1", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_chapter: "绪论"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l2"})
SET n += {type: "Section", title: "物质的变化和性质", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"chapter\": \"走进化学世界\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l2", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_chapter: "走进化学世界"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l3"})
SET n += {type: "Section", title: "化学实验与科学探究", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"chapter\": \"走进化学世界\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l3", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_chapter: "走进化学世界"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l4"})
SET n += {type: "Section", title: "我们周围的空气", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"chapter\": \"空气和氧气\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l4", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_chapter: "空气和氧气"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l5"})
SET n += {type: "Section", title: "氧气", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"chapter\": \"空气和氧气\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l5", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_chapter: "空气和氧气"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l6"})
SET n += {type: "Section", title: "制取氧气", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"chapter\": \"空气和氧气\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l6", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_chapter: "空气和氧气"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l7"})
SET n += {type: "Section", title: "分子和原子", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"chapter\": \"物质构成的奥秘\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l7", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_chapter: "物质构成的奥秘"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l8"})
SET n += {type: "Section", title: "原子结构", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"chapter\": \"物质构成的奥秘\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l8", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_chapter: "物质构成的奥秘"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l9"})
SET n += {type: "Section", title: "元素", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"chapter\": \"物质构成的奥秘\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l9", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_chapter: "物质构成的奥秘"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l10"})
SET n += {type: "Section", title: "水资源及其利用", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"chapter\": \"自然界的水\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l10", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_chapter: "自然界的水"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l11"})
SET n += {type: "Section", title: "水的组成", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"chapter\": \"自然界的水\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l11", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_chapter: "自然界的水"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l12"})
SET n += {type: "Section", title: "物质组成的表示", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"chapter\": \"自然界的水\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l12", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_chapter: "自然界的水"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l13"})
SET n += {type: "Section", title: "质量守恒定律", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"chapter\": \"化学反应的定量关系\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l13", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_chapter: "化学反应的定量关系"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l14"})
SET n += {type: "Section", title: "化学方程式", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"chapter\": \"化学反应的定量关系\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l14", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_chapter: "化学反应的定量关系"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l15"})
SET n += {type: "Section", title: "碳单质的多样性", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"chapter\": \"碳和碳的氧化物\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l15", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_chapter: "碳和碳的氧化物"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l16"})
SET n += {type: "Section", title: "碳的氧化物", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"chapter\": \"碳和碳的氧化物\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l16", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_chapter: "碳和碳的氧化物"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l17"})
SET n += {type: "Section", title: "二氧化碳的实验室制取", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"chapter\": \"碳和碳的氧化物\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l17", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_chapter: "碳和碳的氧化物"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l18"})
SET n += {type: "Section", title: "燃料的燃烧", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"chapter\": \"能源的合理利用与开发\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l18", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_chapter: "能源的合理利用与开发"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l19"})
SET n += {type: "Section", title: "化石能源的合理利用", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"chapter\": \"能源的合理利用与开发\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l19", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_chapter: "能源的合理利用与开发"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l20"})
SET n += {type: "Section", title: "金属材料", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"chapter\": \"金属和金属材料\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l20", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_chapter: "金属和金属材料"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l21"})
SET n += {type: "Section", title: "金属的化学性质", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"chapter\": \"金属和金属材料\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l21", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_chapter: "金属和金属材料"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l22"})
SET n += {type: "Section", title: "金属资源的利用和保护", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"chapter\": \"金属和金属材料\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l22", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_chapter: "金属和金属材料"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l23"})
SET n += {type: "Section", title: "溶液的形成", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"chapter\": \"溶液\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l23", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_chapter: "溶液"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l24"})
SET n += {type: "Section", title: "溶解度", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"chapter\": \"溶液\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l24", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_chapter: "溶液"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l25"})
SET n += {type: "Section", title: "溶液的浓度", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"chapter\": \"溶液\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l25", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_chapter: "溶液"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l26"})
SET n += {type: "Section", title: "常见的酸和碱", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"chapter\": \"酸和碱\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l26", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_chapter: "酸和碱"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l27"})
SET n += {type: "Section", title: "酸和碱的中和反应", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"chapter\": \"酸和碱\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l27", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_chapter: "酸和碱"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l28"})
SET n += {type: "Section", title: "生活中常见的盐", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"chapter\": \"盐 化肥\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l28", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_chapter: "盐 化肥"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l29"})
SET n += {type: "Section", title: "化学肥料", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"chapter\": \"盐 化肥\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l29", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_chapter: "盐 化肥"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l30"})
SET n += {type: "Section", title: "人类重要的营养物质", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"chapter\": \"化学与生活\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l30", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_chapter: "化学与生活"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l31"})
SET n += {type: "Section", title: "化学元素与人体健康", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"chapter\": \"化学与生活\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l31", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_chapter: "化学与生活"};

MERGE (n:Section {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l32"})
SET n += {type: "Section", title: "有机合成材料", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"九年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"chapter\": \"化学与生活\"}", identifier: "urn:jy:chemistry:SB0402:OB03:Section:l32", CJ_academicTerm: "初中", CJ_grade: "九年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_chapter: "化学与生活"};

MERGE (n:Attitude {identifier: "urn:jy:chemistry:SB0402:OB03:Attitude:l1"})
SET n += {type: "Attitude", title: "科学探究的态度", description: "发展科学探究的好奇心、想象力与探究欲；通过探究活动，初步养成注重实证、严谨求实的科学态度，初步学会批判性思维方法，具有敢于提出并坚持自己的见解、勇于修正或放弃错误观点、反对伪科学的科学精神。\n\n树立自觉的安全意识和观念，知道化学实验存在安全风险，明确化学实验室安全规则和实验操作规范，了解实验室基本布局，学会正确使用安全防护设施，养成节约环保、清洁卫生的实验习惯。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{}", identifier: "urn:jy:chemistry:SB0402:OB03:Attitude:l1"};

MERGE (n:Attitude {identifier: "urn:jy:chemistry:SB0402:OB03:Attitude:l2"})
SET n += {type: "Attitude", title: "物质性质的广泛应用及化学品的合理使用", description: "认识物质性质在生活、生产、科技发展等方面的广泛应用，体会科学地利用物质性质对提高人们的生活质量具有重要作用。\n\n结合实例体会化学品的保存、选择和使用与物质性质的重要关系，认识合理使用化学品对保护环境的重要意义，形成合理使用化学品的意识。\n\n认识空气、水、金属矿物是宝贵的自然资源，形成保护和节约资源的可持续发展意识与社会责任。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{}", identifier: "urn:jy:chemistry:SB0402:OB03:Attitude:l2"};

MERGE (n:Attitude {identifier: "urn:jy:chemistry:SB0402:OB03:Attitude:l3"})
SET n += {type: "Attitude", title: "研究物质的组成与结构的意义", description: "了解人类对物质的组成与结构的探索是不断发展的，初步认识物质的组成、结构与性质之间的关系，了解研究物质的组成与结构对认识和创造物质的重要意义。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{}", identifier: "urn:jy:chemistry:SB0402:OB03:Attitude:l3"};

MERGE (n:Attitude {identifier: "urn:jy:chemistry:SB0402:OB03:Attitude:l4"})
SET n += {type: "Attitude", title: "化学反应的应用价值及合理调控", description: "认识化学变化在自然界和生产生活中的广泛存在及重要应用，感受大自然中化学变化的神奇；结合实例体会通过化学反应实现物质转化的意义和价值；欣赏化学反应造福人类的独特价值，学习化学家的创新精神。\n\n结合实例认识合理利用、调控化学反应的重要性，关注产品需求和成本核算，初步树立资源循环使用、绿色环保的发展理念。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{}", identifier: "urn:jy:chemistry:SB0402:OB03:Attitude:l4"};

MERGE (n:Attitude {identifier: "urn:jy:chemistry:SB0402:OB03:Attitude:l5"})
SET n += {type: "Attitude", title: "应对未来不确定性挑战", description: "1.科学伦理及法律规范\n通过实例分析或参加与化学相关的职业体验活动，认识到应用科学知识解决问题时，应恪守科学伦理；知道国家在生态环境保护，化学品、食品、药品安全等方面颁布了法律法规，增强遵纪守法、自我保护及维护社会安全的意识。\n\n2.社会性科学议题的合理应对\n知道现代科学技术的开发和应用可能会引起与生态环境、伦理道德、经济发展等相关的问题；知道人类生存与发展会面临来自环境、能源、资源、健康和公共卫生等方面的危机与不确定性挑战；通过参与社会性科学议题的探讨活动，体会以理性、积极的态度和系统、创新的思维应对挑战的重要性。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{}", identifier: "urn:jy:chemistry:SB0402:OB03:Attitude:l5"};

MERGE (n:CoreKnowledge {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l1"})
SET n += {type: "CoreKnowledge", title: "科学探究的能力", description: "知道科学探究是收集证据和作出解释，进行发现、创造与应用的科学实践活动，也是获取科学知识、理解科学本质、认识客观世界的重要途径。\n了解科学探究过程包括提出问题、形成假设、设计并实施实验或调查方案、获取证据、分析解释数据、形成结论及建构模型、反思评价及表达交流等要素。\n经历科学探究的一般过程，认识从问题和假设出发确定探究目标、依据探究目标设计并实施实验方案、通过观察和实验等方法获取证据、基于证据进行分析推理及形成结论等对于科学探究的意义，体会合作与交流在科学探究中的重要作用。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"knowledgeUnit\": \"实验探究\"}", identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l1", CJ_knowledgeUnit: "实验探究"};

MERGE (n:CoreKnowledge {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l2"})
SET n += {type: "CoreKnowledge", title: "基本的化学实验技能", description: "知道化学实验是进行科学探究的重要方式，具备基本的化学实验技能是学习化学和进行探究活动的基础和保证。\n\n对于化学实验技能，应达到如下基本要求。\n\n（1）熟悉化学实验室安全警示标志，学会正确使用安全防护设施，学习妥善应对实验安全问题的必要措施。\n(2) 学会试剂的取用、简单仪器的使用及连接、加热等实验基本操作。\n(3) 初步学会在教师指导下根据实验需要选择实验试剂和仪器,并能安全操作。\n(4) 初步学会配制一定溶质质量分数的溶液。\n(5) 学会用酸碱指示剂、 pH试纸检验溶液的酸碱性。  \n(6) 初步学会根据某些性质检验和区分一些常见的物质。  \n(7) 初步学习使用过滤、蒸发的方法对混合物进行分离。\n(8) 初步学习运用简单的装置和方法制取某些气体。  \n(9) 初步学会观察实验现象，并如实记录、处理实验数据，撰写实验报告等技能。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"knowledgeUnit\": \"实验探究\"}", identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l2", CJ_knowledgeUnit: "实验探究"};

MERGE (n:CoreKnowledge {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l3"})
SET n += {type: "CoreKnowledge", title: "空气、氧气、二氧化碳", description: "了解空气的主要成分；通过实验探究认识氧气、二氧化碳的主要性质，认识物质的性质与用途的关系；初步学习氧气和二氧化碳的实验室制法，归纳实验室制取气体的一般思路与方法；以自然界中的氧循环和碳循环为例，认识物质在自然界中可以相互转化及其对维持人类生活与生态平衡的意义。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"knowledgeUnit\": \"常见的物质\"}", identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l3", CJ_knowledgeUnit: "常见的物质"};

MERGE (n:CoreKnowledge {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l4"})
SET n += {type: "CoreKnowledge", title: "水和溶液", description: "认识水的组成，知道水是一种重要的溶剂，了解吸附、沉降、过滤和蒸馏是净化水的常用方法。\n\n认识溶解和结晶现象；知道溶液是由溶质和溶剂组成的，具有均一性和稳定性；知道绝大多数物质在溶剂中的溶解是有限度的，了解饱和溶液和溶解度的含义。\n\n知道溶质质量分数可以表示浓度，认识溶质质量分数的含义，学习计算溶质质量分数和配制一定溶质质量分数的溶液的基本方法，初步感受定量研究的意义；体会溶液在生产生活中的应用价值。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"knowledgeUnit\": \"常见的物质\"}", identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l4", CJ_knowledgeUnit: "常见的物质"};

MERGE (n:CoreKnowledge {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l5"})
SET n += {type: "CoreKnowledge", title: "金属与金属矿物", description: "知道大多数金属在自然界中是以金属矿物形式存在的，体会化学方法在金属冶炼中的重要性；知道金属具有一些共同的物理性质，通过实验探究等活动认识常见金属的主要化学性质及金属活动性顺序。\n\n知道在金属中加入其他元素形成合金可以改变金属材料的性能；了解金属、金属材料在生产生活和社会发展中的重要作用；以铁生锈为例，了解防止金属腐蚀的常用方法；了解废弃金属对环境的影响及金属回收再利用的价值。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"knowledgeUnit\": \"常见的物质\"}", identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l5", CJ_knowledgeUnit: "常见的物质"};

MERGE (n:CoreKnowledge {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l6"})
SET n += {type: "CoreKnowledge", title: "常见的酸、碱、盐", description: "以盐酸、硫酸、氢氧化钠和氢氧化钙为例，通过实验探究认识酸、碱的主要性质和用途；了解检验溶液酸碱性的基本方法，知道酸碱性对人体健康和农作物生长的影响；了解食盐、纯碱、小苏打和碳酸钙等盐在日常生活中的应用；知道一些常用化肥及其在农业生产中的作用。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"knowledgeUnit\": \"常见的物质\"}", identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l6", CJ_knowledgeUnit: "常见的物质"};

MERGE (n:CoreKnowledge {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l7"})
SET n += {type: "CoreKnowledge", title: "元素", description: "认识物质是由元素组成的，知道质子数相同的一类原子属于同种元素，了解在化学反应中元素的种类是不变的，初步认识元素周期表。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"knowledgeUnit\": \"元素、分子、原子与物质\"}", identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l7", CJ_knowledgeUnit: "元素、分子、原子与物质"};

MERGE (n:CoreKnowledge {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l8"})
SET n += {type: "CoreKnowledge", title: "分子、原子", description: "知道物质是由分子、原子等微观粒子构成的；认识原子是由原子核和核外电子构成的；知道原子可以结合成分子，也可以转变为离子。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"knowledgeUnit\": \"元素、分子、原子与物质\"}", identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l8", CJ_knowledgeUnit: "元素、分子、原子与物质"};

MERGE (n:CoreKnowledge {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l9"})
SET n += {type: "CoreKnowledge", title: "物质组成的表示", description: "知道可以用符号表示物质的组成，认识表示分子、原子、离子的符号，知道常见元素的化合价，学习用化学式表示常见物质组成的方法，认识相对原子质量、相对分子质量的含义及应用。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"knowledgeUnit\": \"元素、分子、原子与物质\"}", identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l9", CJ_knowledgeUnit: "元素、分子、原子与物质"};

MERGE (n:CoreKnowledge {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l10"})
SET n += {type: "CoreKnowledge", title: "化学变化的特征及化学反应的基本类型", description: "认识化学变化是产生新物质的过程，知道化学变化常伴随生成沉淀、产生气体、发生颜色变化、发光，以及吸热或放热等现象。\n\n理解化学反应的本质是原子的重新组合，化学反应前后，原子的种类和数量不变，分子的种类发生改变；认识常见的化合反应、分解反应、置换反应和复分解反应及简单应用。\n\n了解化学反应需要一定的条件，知道催化剂对化学反应的重要作用；通过实验探究认识燃烧的条件，理解燃烧和灭火的原理及其在生活中的应用，初步体会调控化学反应的重要意义。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"knowledgeUnit\": \"化学反应及质量守恒定律\"}", identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l10", CJ_knowledgeUnit: "化学反应及质量守恒定律"};

MERGE (n:CoreKnowledge {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l11"})
SET n += {type: "CoreKnowledge", title: "化学反应的定量关系与质量守恒定律", description: "认识化学反应中的各物质间存在定量关系，化学反应遵守质量守恒定律；理解质量守恒定律的微观本质；知道化学方程式可以表示化学反应，了解化学方程式的含义和书写规则。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"knowledgeUnit\": \"化学反应及质量守恒定律\"}", identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l11", CJ_knowledgeUnit: "化学反应及质量守恒定律"};

MERGE (n:CoreKnowledge {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l12"})
SET n += {type: "CoreKnowledge", title: "化学与资源、能源、材料、环境、健康", description: "结合实例，从物质及其变化的视角，认识资源的综合利用与新能源的开发、材料的科学利用与新材料的研发，理解化学与生态环境保护、医药研制及营养健康的关系；了解酒精、天然气、有机高分子材料等在社会生活中的应用；知道资源开发、能源利用和材料使用可能会对环境产生影响，树立环保意识。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"knowledgeUnit\": \"化学与资源、能源、材料、环境、健康\"}", identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l12", CJ_knowledgeUnit: "化学与资源、能源、材料、环境、健康"};

MERGE (n:CourseTarget {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l1"})
SET n += {type: "CourseTarget", title: "形成化学观念，解决实际问题", description: "初步认识物质的多样性，能对物质及其变化进行分类；能从元素、原子、分子等视角初步分析物质的组成及变化，认识“在一定条件下通过化学反应可以实现物质转化”的重要性；初步学会从定性和定量的视角研究物质的组成及变化，认识质量守恒定律对资源利用和物质转化的重要意义；能通过实例认识物质的性质与应用的关系，形成合理利用物质的意识；能从物质及其变化的视角初步分析、解决一些与化学相关的简单的实际问题，发展辩证唯物主义世界观。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{}", identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l1"};

MERGE (n:CourseTarget {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l2"})
SET n += {type: "CourseTarget", title: "发展科学思维，强化创新意识", description: "初步学会运用观察、实验、调查等手段获取化学事实，能初步运用比较、分类、分析、综合、归纳等方法认识物质及其变化，形成一定的证据推理能力；能从变化和联系的视角分析常见的化学现象，能以宏观、微观、符号相结合的方式认识和表征化学变化；初步建立物质及其变化的相关模型，能根据物质的类别和信息提示预测其性质，并能解释一些简单的化学问题；能从跨学科角度初步分析和解决简单的开放性问题，体会系统思维的意义；能对不同的观点和方案提出自己的见解，发展创新思维能力，逐步学会辩证唯物主义方法论。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{}", identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l2"};

MERGE (n:CourseTarget {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l3"})
SET n += {type: "CourseTarget", title: "经历科学探究，增强实践能力", description: "认识实验是科学探究、创新实践的重要形式和学习化学的重要途径，能进行安全、规范的实验基本操作，独立或与同学合作完成简单的化学实验任务；能主动提出有探究价值的问题，从问题和假设出发确定探究目标，设计和实施探究方案，获取证据并分析得到结论，能用科学语言和信息技术手段合理表述探究的过程和结果，并与同学交流；能从化学视角对常见的生活现象、简单的跨学科问题进行探讨，能运用简单的技术与工程的方法初步解决与化学有关的实际问题，完成社会实践活动；在科学探究与实践活动中，能根据自己的实际情况制订学习计划，开展自主学习活动，能与同学合作、分享，善于听取他人的合理建议，评价、反思、改进学习过程与结果，初步形成自主、合作、探究的能力。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{}", identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l3"};

MERGE (n:CourseTarget {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l4"})
SET n += {type: "CourseTarget", title: "养成科学态度，具有责任担当", description: "具有对物质世界及其变化的好奇心、探究欲和审美情趣；热爱科学，逐步形成崇尚科学、严谨求实、大胆质疑、追求真理、反对伪科学的科学精神及勇于克服困难的坚毅品质；学习科学家胸怀祖国、服务人民的爱国精神，勇攀高峰、敢为人先的创新精神，淡泊名利、潜心研究的奉献精神；认识创新在我国现代化建设全局中的核心地位，努力把科技自立自强信念自觉融入人生追求之中。赞赏化学对满足人民日益增长的美好生活需要和社会可持续发展作出的重大贡献；具有安全意识和合理选用化学品的观念；牢固树立和践行“绿水青山就是金山银山”的理念，强化绿色、循环、低碳发展的意识，认识资源的节约集约利用和废弃物循环利用的意义与价值，树立人与自然和谐共生的科学自然观；初步认识科学、技术、社会、环境之间的相互关系，遵守与化学、技术相关的伦理道德及法律法规，能积极参加与化学有关的社会热点问题的讨论并作出合理的价值判断，初步形成主动参与社会决策的意识；具有为全面建成社会主义现代化强国、实现中华民族伟大复兴而学习化学的志向和责任担当。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{}", identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l4"};

MERGE (n:Experiment {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l1"})
SET n += {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l1", type: "Experiment", title: "粗盐中难溶性杂质的去除", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"learningTheme\": \"物质的性质与应用\"}", CJ_learningTheme: "物质的性质与应用"};

MERGE (n:Experiment {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l2"})
SET n += {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l2", type: "Experiment", title: "氧气的实验室制取与性质", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"learningTheme\": \"物质的性质与应用\"}", CJ_learningTheme: "物质的性质与应用"};

MERGE (n:Experiment {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l3"})
SET n += {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l3", type: "Experiment", title: "二氧化碳的实验室制取与性质", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"learningTheme\": \"物质的性质与应用\"}", CJ_learningTheme: "物质的性质与应用"};

MERGE (n:Experiment {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l4"})
SET n += {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l4", type: "Experiment", title: "常见金属的物理性质和化学性质", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"learningTheme\": \"物质的性质与应用\"}", CJ_learningTheme: "物质的性质与应用"};

MERGE (n:Experiment {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l5"})
SET n += {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l5", type: "Experiment", title: "常见酸、碱的化学性质", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"learningTheme\": \"物质的性质与应用\"}", CJ_learningTheme: "物质的性质与应用"};

MERGE (n:Experiment {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l6"})
SET n += {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l6", type: "Experiment", title: "一定溶质质量分数的氯化钠溶液的配制", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"learningTheme\": \"物质的性质与应用\"}", CJ_learningTheme: "物质的性质与应用"};

MERGE (n:Experiment {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l7"})
SET n += {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l7", type: "Experiment", title: "水的组成及变化的探究", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"learningTheme\": \"物质的组成与结构\"}", CJ_learningTheme: "物质的组成与结构"};

MERGE (n:Experiment {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l8"})
SET n += {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l8", type: "Experiment", title: "燃烧条件的探究", description: "", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"learningTheme\": \"物质的化学变化\"}", CJ_learningTheme: "物质的化学变化"};

MERGE (n:AcademicQuality {identifier: "urn:jy:chemistry:SB0402:OB03:AcademicQuality:l1"})
SET n += {type: "AcademicQuality", title: "学业质量", description: "学业质量是学生在完成课程学习后的学业成就表现，反映了核心素养的培养要求。义务教育化学课程学业质量标准是以化学课程对核心素养的目标要求为依据、结合课程内容对学生学业成就的具体表现特征进行的整体刻画，用于反映课程目标的达成程度。学业质量标准是化学学业水平考试命题的重要依据，对化学教材编写、教学和评价实施具有重要的指导作用。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"aspect\": \"物质结构与性质\", \"aspectDescription\": \"在认识物质组成、性质及分析相关实际问题的情境中，能根据科学家建立的模型认识原子的结构，能说明分子、原子、离子的区别和联系，能用分子的观点解释生活中的某些变化或现象；能从元素与分子视角辨识常见物质，结合实例区分混合物与纯净物、单质与化合物；能举例说明物质组成、性质和用途的关系；能用物质名称和化学式表示常见物质，能分析常见物质中元素的化合价；能用相对原子质量、相对分子质量进行物质组成的简单计算，能用质量分数表示混合物体系中物质的成分；能通过溶解度和溶解度曲线描述物质的溶解程度，能利用溶解性的差异进行物质的分离、提纯；感受物质的多样性，体会物质的性质及应用与日常生活、科技发展的密切联系，认识化学科学对解决实际问题的重要意义。\"}", identifier: "urn:jy:chemistry:SB0402:OB03:AcademicQuality:l1", CJ_aspect: "物质结构与性质", CJ_aspectDescription: "在认识物质组成、性质及分析相关实际问题的情境中，能根据科学家建立的模型认识原子的结构，能说明分子、原子、离子的区别和联系，能用分子的观点解释生活中的某些变化或现象；能从元素与分子视角辨识常见物质，结合实例区分混合物与纯净物、单质与化合物；能举例说明物质组成、性质和用途的关系；能用物质名称和化学式表示常见物质，能分析常见物质中元素的化合价；能用相对原子质量、相对分子质量进行物质组成的简单计算，能用质量分数表示混合物体系中物质的成分；能通过溶解度和溶解度曲线描述物质的溶解程度，能利用溶解性的差异进行物质的分离、提纯；感受物质的多样性，体会物质的性质及应用与日常生活、科技发展的密切联系，认识化学科学对解决实际问题的重要意义。"};

MERGE (n:AcademicQuality {identifier: "urn:jy:chemistry:SB0402:OB03:AcademicQuality:l2"})
SET n += {type: "AcademicQuality", title: "学业质量", description: "学业质量是学生在完成课程学习后的学业成就表现，反映了核心素养的培养要求。义务教育化学课程学业质量标准是以化学课程对核心素养的目标要求为依据、结合课程内容对学生学业成就的具体表现特征进行的整体刻画，用于反映课程目标的达成程度。学业质量标准是化学学业水平考试命题的重要依据，对化学教材编写、教学和评价实施具有重要的指导作用。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"aspect\": \"化学反应规律\", \"aspectDescription\": \"在探索化学变化规律及解决实际问题的情境中，能基于化学变化中元素种类不变、有新物质生成且伴随着能量变化的特征，从宏观、微观、符号相结合的视角说明物质变化的现象和本质；能依据化学变化的特征对常见化学反应进行分类，说明不同类型反应的特征及在生活中的应用；能依据质量守恒定律，用化学方程式表征简单的化学反应，结合真实情境中物质的转化进行简单计算；能结合简单的实例说明反应条件对物质变化的影响，初步形成条件控制的意识；能依据物质类别及变化特征、元素守恒、金属活动性顺序等，预测、判断与分析常见物质的性质和物质转化的产物；能体会化学反应在金属冶炼、石油化工、药物合成、材料研制、能源开发、资源利用和生态环境保护等方面的应用价值。\"}", identifier: "urn:jy:chemistry:SB0402:OB03:AcademicQuality:l2", CJ_aspect: "化学反应规律", CJ_aspectDescription: "在探索化学变化规律及解决实际问题的情境中，能基于化学变化中元素种类不变、有新物质生成且伴随着能量变化的特征，从宏观、微观、符号相结合的视角说明物质变化的现象和本质；能依据化学变化的特征对常见化学反应进行分类，说明不同类型反应的特征及在生活中的应用；能依据质量守恒定律，用化学方程式表征简单的化学反应，结合真实情境中物质的转化进行简单计算；能结合简单的实例说明反应条件对物质变化的影响，初步形成条件控制的意识；能依据物质类别及变化特征、元素守恒、金属活动性顺序等，预测、判断与分析常见物质的性质和物质转化的产物；能体会化学反应在金属冶炼、石油化工、药物合成、材料研制、能源开发、资源利用和生态环境保护等方面的应用价值。"};

MERGE (n:AcademicQuality {identifier: "urn:jy:chemistry:SB0402:OB03:AcademicQuality:l3"})
SET n += {type: "AcademicQuality", title: "学业质量", description: "学业质量是学生在完成课程学习后的学业成就表现，反映了核心素养的培养要求。义务教育化学课程学业质量标准是以化学课程对核心素养的目标要求为依据、结合课程内容对学生学业成就的具体表现特征进行的整体刻画，用于反映课程目标的达成程度。学业质量标准是化学学业水平考试命题的重要依据，对化学教材编写、教学和评价实施具有重要的指导作用。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"aspect\": \"化学实验探究\", \"aspectDescription\": \"在实验探究情境和实践活动中，能根据解决与化学相关的简单问题的需要，运用混合物分离、常见物质制备、物质检验和性质探究等实验探究的一般思路与方法，设计简单的实验探究方案；能根据实验目的选择必要的试剂、常见的实验仪器和装置，运用实验基本操作技能和条件控制的方法，安全、顺利地实施实验探究方案；能对观察、记录的实验现象和数据进行分析、处理，对实验证据进行分析和推理，得出合理的结论，能用规范的语言呈现探究结果，并与他人交流、讨论；能基于物质及其反应的规律和跨学科知识，运用实验等手段，完成简单的作品制作、社会调查等跨学科实践活动；能体会实验在化学科学发展、解决与物质转化及应用相关实际问题中的重要作用，意识到协同创新对解决跨学科复杂问题的重要性。\"}", identifier: "urn:jy:chemistry:SB0402:OB03:AcademicQuality:l3", CJ_aspect: "化学实验探究", CJ_aspectDescription: "在实验探究情境和实践活动中，能根据解决与化学相关的简单问题的需要，运用混合物分离、常见物质制备、物质检验和性质探究等实验探究的一般思路与方法，设计简单的实验探究方案；能根据实验目的选择必要的试剂、常见的实验仪器和装置，运用实验基本操作技能和条件控制的方法，安全、顺利地实施实验探究方案；能对观察、记录的实验现象和数据进行分析、处理，对实验证据进行分析和推理，得出合理的结论，能用规范的语言呈现探究结果，并与他人交流、讨论；能基于物质及其反应的规律和跨学科知识，运用实验等手段，完成简单的作品制作、社会调查等跨学科实践活动；能体会实验在化学科学发展、解决与物质转化及应用相关实际问题中的重要作用，意识到协同创新对解决跨学科复杂问题的重要性。"};

MERGE (n:AcademicQuality {identifier: "urn:jy:chemistry:SB0402:OB03:AcademicQuality:l4"})
SET n += {type: "AcademicQuality", title: "学业质量", description: "学业质量是学生在完成课程学习后的学业成就表现，反映了核心素养的培养要求。义务教育化学课程学业质量标准是以化学课程对核心素养的目标要求为依据、结合课程内容对学生学业成就的具体表现特征进行的整体刻画，用于反映课程目标的达成程度。学业质量标准是化学学业水平考试命题的重要依据，对化学教材编写、教学和评价实施具有重要的指导作用。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{\"aspect\": \"物质转化与应用\", \"aspectDescription\": \"在常见的生产生活和社会情境中，能初步运用化学观念解释与化学相关的现象和事实，参与相关的简单的实践活动；能将化学知识与生产生活实际相结合，主动关注有关空气和水资源保护、资源回收再利用、健康安全、化学品妥善保存与合理使用等实际问题，并参与讨论；能从科学、技术、社会、环境的相互关系，安全环保和科学伦理等角度，辩证分析与化学相关的简单的社会性科学议题，尝试提出自己的见解和建议，作出合理的价值判断，初步形成节能低碳、节约资源、保护环境的态度和绿色出行的健康生活方式；能从化学角度认识我国生态环境保护、食品安全、公共卫生等法律法规对促进社会可持续发展的重要性；能体会化学科学在应对环境污染、资源匮乏、能源危机、药物短缺等人类面临的重大挑战中作出的创造性贡献。\"}", identifier: "urn:jy:chemistry:SB0402:OB03:AcademicQuality:l4", CJ_aspect: "物质转化与应用", CJ_aspectDescription: "在常见的生产生活和社会情境中，能初步运用化学观念解释与化学相关的现象和事实，参与相关的简单的实践活动；能将化学知识与生产生活实际相结合，主动关注有关空气和水资源保护、资源回收再利用、健康安全、化学品妥善保存与合理使用等实际问题，并参与讨论；能从科学、技术、社会、环境的相互关系，安全环保和科学伦理等角度，辩证分析与化学相关的简单的社会性科学议题，尝试提出自己的见解和建议，作出合理的价值判断，初步形成节能低碳、节约资源、保护环境的态度和绿色出行的健康生活方式；能从化学角度认识我国生态环境保护、食品安全、公共卫生等法律法规对促进社会可持续发展的重要性；能体会化学科学在应对环境污染、资源匮乏、能源危机、药物短缺等人类面临的重大挑战中作出的创造性贡献。"};

MERGE (n:Method {identifier: "urn:jy:chemistry:SB0402:OB03:Method:l1"})
SET n += {type: "Method", title: "化学实验探究的思路与方法", description: "通过具体的实验活动初步形成化学实验探究的一般思路与方法，知道围绕实验目的确定实验原理，选择实验仪器，组装实验装置，设计实验步骤，实施实验并完成实验记录，基于实验事实得出结论。\n\n通过具体的化学实验探究活动，学习研究物质性质，探究物质组成和反应规律，进行物质分离、检验和制备等不同类型化学实验探究活动的一般思路与基本方法；学习控制变量和对比实验的实验设计方法。\n\n通过化学科学发展历程中的经典实验，学习和体会化学家进行科学探究的智慧和方法，理解科学探究的本质。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{}", identifier: "urn:jy:chemistry:SB0402:OB03:Method:l1"};

MERGE (n:Method {identifier: "urn:jy:chemistry:SB0402:OB03:Method:l2"})
SET n += {type: "Method", title: "认识物质性质的思路与方法", description: "了解物质性质包括物理性质和化学性质，知道可以从物质的存在、组成、变化和用途等视角认识物质的性质。\n\n知道可以通过物质类别认识具体物质的性质，了解通过物质的共性和差异性认识一类物质性质的方法。\n\n了解观察、实验，以及对事实进行归纳概括、分析解释等认识物质性质的基本方法。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{}", identifier: "urn:jy:chemistry:SB0402:OB03:Method:l2"};

MERGE (n:Method {identifier: "urn:jy:chemistry:SB0402:OB03:Method:l3"})
SET n += {type: "Method", title: "认识物质的组成与结构的思路与方法", description: "通过科学史实体会科学家探索物质的组成与结构的智慧，知道可以通过实验、想象、推理、假说、模型等方法探索物质的结构；初步学习利用物质的性质和化学反应探究物质组成的基本思路与方法。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{}", identifier: "urn:jy:chemistry:SB0402:OB03:Method:l3"};

MERGE (n:Method {identifier: "urn:jy:chemistry:SB0402:OB03:Method:l4"})
SET n += {type: "Method", title: "认识化学反应的思路与方法", description: "学习从物质变化、能量变化、反应条件、反应现象、反应类型和元素守恒等视角认识化学反应，初步形成认识化学反应的系统思维意识。\n\n学习利用质量关系、比例关系定量认识化学反应，认识定量研究对化学科学发展的重大作用。\n\n初步形成利用化学反应探究物质性质和组成、解决物质制备和检验等实际问题的思路，初步体会化学反应与技术、工程的关系。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{}", identifier: "urn:jy:chemistry:SB0402:OB03:Method:l4"};

MERGE (n:Method {identifier: "urn:jy:chemistry:SB0402:OB03:Method:l5"})
SET n += {type: "Method", title: "化学、技术、工程融合解决跨学科问题的思路与方法", description: "通过实践活动，初步形成应用元素观、变化观等化学观念和科学探究方法解决问题的思路；认识在解决实际问题时，需要综合运用各学科知识，采用合适的方法和工具，以及系统规划和实施；体会有效使用科学技术，以及合作、协同创新解决问题的重要性。", subject: "SB0402", applicableLevel: "OB03", contentJson: "{}", identifier: "urn:jy:chemistry:SB0402:OB03:Method:l5"};

// =====================================================
// 导入关系
// =====================================================

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MERGE (source)-[r:targetGuidesTheme]->(target)
SET r.label = "课程目标统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l1"})
MERGE (source)-[r:themeAchievesTarget]->(target)
SET r.label = "学习主题达成课程目标 / achievesTarget";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MERGE (source)-[r:targetGuidesTheme]->(target)
SET r.label = "课程目标统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l2"})
MERGE (source)-[r:themeAchievesTarget]->(target)
SET r.label = "学习主题达成课程目标 / achievesTarget";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MERGE (source)-[r:targetGuidesTheme]->(target)
SET r.label = "课程目标统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l3"})
MERGE (source)-[r:themeAchievesTarget]->(target)
SET r.label = "学习主题达成课程目标 / achievesTarget";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MERGE (source)-[r:targetGuidesTheme]->(target)
SET r.label = "课程目标统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l4"})
MERGE (source)-[r:themeAchievesTarget]->(target)
SET r.label = "学习主题达成课程目标 / achievesTarget";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MERGE (source)-[r:targetGuidesTheme]->(target)
SET r.label = "课程目标统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l1"})
MERGE (source)-[r:themeAchievesTarget]->(target)
SET r.label = "学习主题达成课程目标 / achievesTarget";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MERGE (source)-[r:targetGuidesTheme]->(target)
SET r.label = "课程目标统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l2"})
MERGE (source)-[r:themeAchievesTarget]->(target)
SET r.label = "学习主题达成课程目标 / achievesTarget";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MERGE (source)-[r:targetGuidesTheme]->(target)
SET r.label = "课程目标统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l3"})
MERGE (source)-[r:themeAchievesTarget]->(target)
SET r.label = "学习主题达成课程目标 / achievesTarget";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MERGE (source)-[r:targetGuidesTheme]->(target)
SET r.label = "课程目标统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l4"})
MERGE (source)-[r:themeAchievesTarget]->(target)
SET r.label = "学习主题达成课程目标 / achievesTarget";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l3"})
MERGE (source)-[r:targetGuidesTheme]->(target)
SET r.label = "课程目标统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l1"})
MERGE (source)-[r:themeAchievesTarget]->(target)
SET r.label = "学习主题达成课程目标 / achievesTarget";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l3"})
MERGE (source)-[r:targetGuidesTheme]->(target)
SET r.label = "课程目标统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l2"})
MERGE (source)-[r:themeAchievesTarget]->(target)
SET r.label = "学习主题达成课程目标 / achievesTarget";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l3"})
MERGE (source)-[r:targetGuidesTheme]->(target)
SET r.label = "课程目标统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l3"})
MERGE (source)-[r:themeAchievesTarget]->(target)
SET r.label = "学习主题达成课程目标 / achievesTarget";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l3"})
MERGE (source)-[r:targetGuidesTheme]->(target)
SET r.label = "课程目标统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l4"})
MERGE (source)-[r:themeAchievesTarget]->(target)
SET r.label = "学习主题达成课程目标 / achievesTarget";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l4"})
MERGE (source)-[r:targetGuidesTheme]->(target)
SET r.label = "课程目标统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l1"})
MERGE (source)-[r:themeAchievesTarget]->(target)
SET r.label = "学习主题达成课程目标 / achievesTarget";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l4"})
MERGE (source)-[r:targetGuidesTheme]->(target)
SET r.label = "课程目标统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l2"})
MERGE (source)-[r:themeAchievesTarget]->(target)
SET r.label = "学习主题达成课程目标 / achievesTarget";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l4"})
MERGE (source)-[r:targetGuidesTheme]->(target)
SET r.label = "课程目标统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l3"})
MERGE (source)-[r:themeAchievesTarget]->(target)
SET r.label = "学习主题达成课程目标 / achievesTarget";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l4"})
MERGE (source)-[r:targetGuidesTheme]->(target)
SET r.label = "课程目标统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l4"})
MERGE (source)-[r:themeAchievesTarget]->(target)
SET r.label = "学习主题达成课程目标 / achievesTarget";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l5"})
MERGE (source)-[r:targetGuidesTheme]->(target)
SET r.label = "课程目标统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l1"})
MERGE (source)-[r:themeAchievesTarget]->(target)
SET r.label = "学习主题达成课程目标 / achievesTarget";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l5"})
MERGE (source)-[r:targetGuidesTheme]->(target)
SET r.label = "课程目标统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l2"})
MERGE (source)-[r:themeAchievesTarget]->(target)
SET r.label = "学习主题达成课程目标 / achievesTarget";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l5"})
MERGE (source)-[r:targetGuidesTheme]->(target)
SET r.label = "课程目标统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l3"})
MERGE (source)-[r:themeAchievesTarget]->(target)
SET r.label = "学习主题达成课程目标 / achievesTarget";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l5"})
MERGE (source)-[r:targetGuidesTheme]->(target)
SET r.label = "课程目标统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CourseTarget:l4"})
MERGE (source)-[r:themeAchievesTarget]->(target)
SET r.label = "学习主题达成课程目标 / achievesTarget";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l1"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l2"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l3"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l4"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l5"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l6"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l7"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l8"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l9"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l10"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l1"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l2"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l3"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l4"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l5"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l6"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l7"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l8"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l9"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l10"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l1"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l2"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l3"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l4"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l5"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l6"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l7"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l8"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l9"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l10"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l1"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l2"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l3"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l4"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l5"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l6"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l7"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l8"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l9"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Interdisciplinary:l10"})
MERGE (source)-[r:literacyGuidesInterdisciplinary]->(target)
SET r.label = "核心素养引领跨学科实践 / guidesInterdisciplinary";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l1"})
MERGE (source)-[r:ConceptionStructuresCoreKnowledge]->(target)
SET r.label = "大概念统摄核心知识 / structuresCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l2"})
MERGE (source)-[r:ConceptionStructuresCoreKnowledge]->(target)
SET r.label = "大概念统摄核心知识 / structuresCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l3"})
MERGE (source)-[r:ConceptionStructuresCoreKnowledge]->(target)
SET r.label = "大概念统摄核心知识 / structuresCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l4"})
MERGE (source)-[r:ConceptionStructuresCoreKnowledge]->(target)
SET r.label = "大概念统摄核心知识 / structuresCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l5"})
MERGE (source)-[r:ConceptionStructuresCoreKnowledge]->(target)
SET r.label = "大概念统摄核心知识 / structuresCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l6"})
MERGE (source)-[r:ConceptionStructuresCoreKnowledge]->(target)
SET r.label = "大概念统摄核心知识 / structuresCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l7"})
MERGE (source)-[r:ConceptionStructuresCoreKnowledge]->(target)
SET r.label = "大概念统摄核心知识 / structuresCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l8"})
MERGE (source)-[r:ConceptionStructuresCoreKnowledge]->(target)
SET r.label = "大概念统摄核心知识 / structuresCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l9"})
MERGE (source)-[r:ConceptionStructuresCoreKnowledge]->(target)
SET r.label = "大概念统摄核心知识 / structuresCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l10"})
MERGE (source)-[r:ConceptionStructuresCoreKnowledge]->(target)
SET r.label = "大概念统摄核心知识 / structuresCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l11"})
MERGE (source)-[r:ConceptionStructuresCoreKnowledge]->(target)
SET r.label = "大概念统摄核心知识 / structuresCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l12"})
MERGE (source)-[r:ConceptionStructuresCoreKnowledge]->(target)
SET r.label = "大概念统摄核心知识 / structuresCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Attitude:l1"})
MERGE (source)-[r:themeCultivatesAttitude]->(target)
SET r.label = "学习主题培育重要态度 / cultivatesAttitude";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Attitude:l2"})
MERGE (source)-[r:themeCultivatesAttitude]->(target)
SET r.label = "学习主题培育重要态度 / cultivatesAttitude";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Attitude:l3"})
MERGE (source)-[r:themeCultivatesAttitude]->(target)
SET r.label = "学习主题培育重要态度 / cultivatesAttitude";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Attitude:l4"})
MERGE (source)-[r:themeCultivatesAttitude]->(target)
SET r.label = "学习主题培育重要态度 / cultivatesAttitude";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Attitude:l5"})
MERGE (source)-[r:themeCultivatesAttitude]->(target)
SET r.label = "学习主题培育重要态度 / cultivatesAttitude";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l2"})
MERGE (source)-[r:ExperimentImplementsConception]->(target)
SET r.label = "实验落实大概念 / implementsConception";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l1"})
MERGE (source)-[r:ConceptionGuidesExperiment]->(target)
SET r.label = "大概念统领实验 / guidesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l2"})
MERGE (source)-[r:ExperimentImplementsConception]->(target)
SET r.label = "实验落实大概念 / implementsConception";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l2"})
MERGE (source)-[r:ConceptionGuidesExperiment]->(target)
SET r.label = "大概念统领实验 / guidesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l2"})
MERGE (source)-[r:ExperimentImplementsConception]->(target)
SET r.label = "实验落实大概念 / implementsConception";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l3"})
MERGE (source)-[r:ConceptionGuidesExperiment]->(target)
SET r.label = "大概念统领实验 / guidesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l2"})
MERGE (source)-[r:ExperimentImplementsConception]->(target)
SET r.label = "实验落实大概念 / implementsConception";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l4"})
MERGE (source)-[r:ConceptionGuidesExperiment]->(target)
SET r.label = "大概念统领实验 / guidesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l2"})
MERGE (source)-[r:ExperimentImplementsConception]->(target)
SET r.label = "实验落实大概念 / implementsConception";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l5"})
MERGE (source)-[r:ConceptionGuidesExperiment]->(target)
SET r.label = "大概念统领实验 / guidesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l6"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l2"})
MERGE (source)-[r:ExperimentImplementsConception]->(target)
SET r.label = "实验落实大概念 / implementsConception";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l6"})
MERGE (source)-[r:ConceptionGuidesExperiment]->(target)
SET r.label = "大概念统领实验 / guidesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l7"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l3"})
MERGE (source)-[r:ExperimentImplementsConception]->(target)
SET r.label = "实验落实大概念 / implementsConception";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l7"})
MERGE (source)-[r:ConceptionGuidesExperiment]->(target)
SET r.label = "大概念统领实验 / guidesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l8"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l4"})
MERGE (source)-[r:ExperimentImplementsConception]->(target)
SET r.label = "实验落实大概念 / implementsConception";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l8"})
MERGE (source)-[r:ConceptionGuidesExperiment]->(target)
SET r.label = "大概念统领实验 / guidesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Method:l1"})
MERGE (source)-[r:themeImplementsMethod]->(target)
SET r.label = "学习主题落实思路与方法 / implementsMethod";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Method:l2"})
MERGE (source)-[r:themeImplementsMethod]->(target)
SET r.label = "学习主题落实思路与方法 / implementsMethod";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Method:l3"})
MERGE (source)-[r:themeImplementsMethod]->(target)
SET r.label = "学习主题落实思路与方法 / implementsMethod";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Method:l4"})
MERGE (source)-[r:themeImplementsMethod]->(target)
SET r.label = "学习主题落实思路与方法 / implementsMethod";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Method:l5"})
MERGE (source)-[r:themeImplementsMethod]->(target)
SET r.label = "学习主题落实思路与方法 / implementsMethod";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l1"})
MERGE (source)-[r:themeCoversCoreKnowledge]->(target)
SET r.label = "学习主题统摄核心知识点 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l2"})
MERGE (source)-[r:themeCoversCoreKnowledge]->(target)
SET r.label = "学习主题统摄核心知识点 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l3"})
MERGE (source)-[r:themeCoversCoreKnowledge]->(target)
SET r.label = "学习主题统摄核心知识点 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l4"})
MERGE (source)-[r:themeCoversCoreKnowledge]->(target)
SET r.label = "学习主题统摄核心知识点 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l5"})
MERGE (source)-[r:themeCoversCoreKnowledge]->(target)
SET r.label = "学习主题统摄核心知识点 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l6"})
MERGE (source)-[r:themeCoversCoreKnowledge]->(target)
SET r.label = "学习主题统摄核心知识点 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l7"})
MERGE (source)-[r:themeCoversCoreKnowledge]->(target)
SET r.label = "学习主题统摄核心知识点 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l8"})
MERGE (source)-[r:themeCoversCoreKnowledge]->(target)
SET r.label = "学习主题统摄核心知识点 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l9"})
MERGE (source)-[r:themeCoversCoreKnowledge]->(target)
SET r.label = "学习主题统摄核心知识点 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l10"})
MERGE (source)-[r:themeCoversCoreKnowledge]->(target)
SET r.label = "学习主题统摄核心知识点 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l11"})
MERGE (source)-[r:themeCoversCoreKnowledge]->(target)
SET r.label = "学习主题统摄核心知识点 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l12"})
MERGE (source)-[r:themeCoversCoreKnowledge]->(target)
SET r.label = "学习主题统摄核心知识点 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l2"})
MERGE (source)-[r:ExperimentEmbodiesCoreKnowledge]->(target)
SET r.label = "实验体现核心知识 / embodiesCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l4"})
MERGE (source)-[r:ExperimentEmbodiesCoreKnowledge]->(target)
SET r.label = "实验体现核心知识 / embodiesCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l2"})
MERGE (source)-[r:ExperimentEmbodiesCoreKnowledge]->(target)
SET r.label = "实验体现核心知识 / embodiesCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l3"})
MERGE (source)-[r:ExperimentEmbodiesCoreKnowledge]->(target)
SET r.label = "实验体现核心知识 / embodiesCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l2"})
MERGE (source)-[r:ExperimentEmbodiesCoreKnowledge]->(target)
SET r.label = "实验体现核心知识 / embodiesCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l3"})
MERGE (source)-[r:ExperimentEmbodiesCoreKnowledge]->(target)
SET r.label = "实验体现核心知识 / embodiesCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l6"})
MERGE (source)-[r:ExperimentEmbodiesCoreKnowledge]->(target)
SET r.label = "实验体现核心知识 / embodiesCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l2"})
MERGE (source)-[r:ExperimentEmbodiesCoreKnowledge]->(target)
SET r.label = "实验体现核心知识 / embodiesCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l5"})
MERGE (source)-[r:ExperimentEmbodiesCoreKnowledge]->(target)
SET r.label = "实验体现核心知识 / embodiesCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l2"})
MERGE (source)-[r:ExperimentEmbodiesCoreKnowledge]->(target)
SET r.label = "实验体现核心知识 / embodiesCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l6"})
MERGE (source)-[r:ExperimentEmbodiesCoreKnowledge]->(target)
SET r.label = "实验体现核心知识 / embodiesCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l6"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l2"})
MERGE (source)-[r:ExperimentEmbodiesCoreKnowledge]->(target)
SET r.label = "实验体现核心知识 / embodiesCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l6"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l4"})
MERGE (source)-[r:ExperimentEmbodiesCoreKnowledge]->(target)
SET r.label = "实验体现核心知识 / embodiesCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l7"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l1"})
MERGE (source)-[r:ExperimentEmbodiesCoreKnowledge]->(target)
SET r.label = "实验体现核心知识 / embodiesCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l7"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l2"})
MERGE (source)-[r:ExperimentEmbodiesCoreKnowledge]->(target)
SET r.label = "实验体现核心知识 / embodiesCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l7"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l4"})
MERGE (source)-[r:ExperimentEmbodiesCoreKnowledge]->(target)
SET r.label = "实验体现核心知识 / embodiesCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l7"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l7"})
MERGE (source)-[r:ExperimentEmbodiesCoreKnowledge]->(target)
SET r.label = "实验体现核心知识 / embodiesCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l7"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l8"})
MERGE (source)-[r:ExperimentEmbodiesCoreKnowledge]->(target)
SET r.label = "实验体现核心知识 / embodiesCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l7"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l9"})
MERGE (source)-[r:ExperimentEmbodiesCoreKnowledge]->(target)
SET r.label = "实验体现核心知识 / embodiesCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l8"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l1"})
MERGE (source)-[r:ExperimentEmbodiesCoreKnowledge]->(target)
SET r.label = "实验体现核心知识 / embodiesCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l8"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l2"})
MERGE (source)-[r:ExperimentEmbodiesCoreKnowledge]->(target)
SET r.label = "实验体现核心知识 / embodiesCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l8"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l10"})
MERGE (source)-[r:ExperimentEmbodiesCoreKnowledge]->(target)
SET r.label = "实验体现核心知识 / embodiesCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l6"})
MERGE (source)-[r:ExperimentSupportsSection]->(target)
SET r.label = "实验支撑小节 / supportsSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l6"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l2"})
MERGE (source)-[r:SectionIncludesExperiment]->(target)
SET r.label = "小节包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l5"})
MERGE (source)-[r:ExperimentSupportsSection]->(target)
SET r.label = "实验支撑小节 / supportsSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l2"})
MERGE (source)-[r:SectionIncludesExperiment]->(target)
SET r.label = "小节包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l4"})
MERGE (source)-[r:ExperimentSupportsSection]->(target)
SET r.label = "实验支撑小节 / supportsSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l2"})
MERGE (source)-[r:SectionIncludesExperiment]->(target)
SET r.label = "小节包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l7"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l11"})
MERGE (source)-[r:ExperimentSupportsSection]->(target)
SET r.label = "实验支撑小节 / supportsSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l11"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l7"})
MERGE (source)-[r:SectionIncludesExperiment]->(target)
SET r.label = "小节包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l7"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l12"})
MERGE (source)-[r:ExperimentSupportsSection]->(target)
SET r.label = "实验支撑小节 / supportsSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l12"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l7"})
MERGE (source)-[r:SectionIncludesExperiment]->(target)
SET r.label = "小节包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l7"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l10"})
MERGE (source)-[r:ExperimentSupportsSection]->(target)
SET r.label = "实验支撑小节 / supportsSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l10"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l7"})
MERGE (source)-[r:SectionIncludesExperiment]->(target)
SET r.label = "小节包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l17"})
MERGE (source)-[r:ExperimentSupportsSection]->(target)
SET r.label = "实验支撑小节 / supportsSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l17"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l3"})
MERGE (source)-[r:SectionIncludesExperiment]->(target)
SET r.label = "小节包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l16"})
MERGE (source)-[r:ExperimentSupportsSection]->(target)
SET r.label = "实验支撑小节 / supportsSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l16"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l3"})
MERGE (source)-[r:SectionIncludesExperiment]->(target)
SET r.label = "小节包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l15"})
MERGE (source)-[r:ExperimentSupportsSection]->(target)
SET r.label = "实验支撑小节 / supportsSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l15"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l3"})
MERGE (source)-[r:SectionIncludesExperiment]->(target)
SET r.label = "小节包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l8"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l18"})
MERGE (source)-[r:ExperimentSupportsSection]->(target)
SET r.label = "实验支撑小节 / supportsSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l18"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l8"})
MERGE (source)-[r:SectionIncludesExperiment]->(target)
SET r.label = "小节包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l8"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l19"})
MERGE (source)-[r:ExperimentSupportsSection]->(target)
SET r.label = "实验支撑小节 / supportsSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l19"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l8"})
MERGE (source)-[r:SectionIncludesExperiment]->(target)
SET r.label = "小节包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l21"})
MERGE (source)-[r:ExperimentSupportsSection]->(target)
SET r.label = "实验支撑小节 / supportsSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l21"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l4"})
MERGE (source)-[r:SectionIncludesExperiment]->(target)
SET r.label = "小节包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l20"})
MERGE (source)-[r:ExperimentSupportsSection]->(target)
SET r.label = "实验支撑小节 / supportsSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l20"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l4"})
MERGE (source)-[r:SectionIncludesExperiment]->(target)
SET r.label = "小节包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l22"})
MERGE (source)-[r:ExperimentSupportsSection]->(target)
SET r.label = "实验支撑小节 / supportsSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l22"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l4"})
MERGE (source)-[r:SectionIncludesExperiment]->(target)
SET r.label = "小节包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l6"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l25"})
MERGE (source)-[r:ExperimentSupportsSection]->(target)
SET r.label = "实验支撑小节 / supportsSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l25"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l6"})
MERGE (source)-[r:SectionIncludesExperiment]->(target)
SET r.label = "小节包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l6"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l23"})
MERGE (source)-[r:ExperimentSupportsSection]->(target)
SET r.label = "实验支撑小节 / supportsSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l23"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l6"})
MERGE (source)-[r:SectionIncludesExperiment]->(target)
SET r.label = "小节包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l6"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l24"})
MERGE (source)-[r:ExperimentSupportsSection]->(target)
SET r.label = "实验支撑小节 / supportsSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l24"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l6"})
MERGE (source)-[r:SectionIncludesExperiment]->(target)
SET r.label = "小节包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l26"})
MERGE (source)-[r:ExperimentSupportsSection]->(target)
SET r.label = "实验支撑小节 / supportsSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l26"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l5"})
MERGE (source)-[r:SectionIncludesExperiment]->(target)
SET r.label = "小节包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l27"})
MERGE (source)-[r:ExperimentSupportsSection]->(target)
SET r.label = "实验支撑小节 / supportsSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l27"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l5"})
MERGE (source)-[r:SectionIncludesExperiment]->(target)
SET r.label = "小节包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l28"})
MERGE (source)-[r:ExperimentSupportsSection]->(target)
SET r.label = "实验支撑小节 / supportsSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l28"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l1"})
MERGE (source)-[r:SectionIncludesExperiment]->(target)
SET r.label = "小节包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l29"})
MERGE (source)-[r:ExperimentSupportsSection]->(target)
SET r.label = "实验支撑小节 / supportsSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l29"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l1"})
MERGE (source)-[r:SectionIncludesExperiment]->(target)
SET r.label = "小节包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l3"})
MERGE (source)-[r:ExperimentBelongsToChapter]->(target)
SET r.label = "实验隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l7"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l5"})
MERGE (source)-[r:ExperimentBelongsToChapter]->(target)
SET r.label = "实验隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l7"})
MERGE (source)-[r:ExperimentBelongsToChapter]->(target)
SET r.label = "实验隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l8"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l8"})
MERGE (source)-[r:ExperimentBelongsToChapter]->(target)
SET r.label = "实验隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l9"})
MERGE (source)-[r:ExperimentBelongsToChapter]->(target)
SET r.label = "实验隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l6"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l10"})
MERGE (source)-[r:ExperimentBelongsToChapter]->(target)
SET r.label = "实验隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l11"})
MERGE (source)-[r:ExperimentBelongsToChapter]->(target)
SET r.label = "实验隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l12"})
MERGE (source)-[r:ExperimentBelongsToChapter]->(target)
SET r.label = "实验隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l1"})
MERGE (source)-[r:themeImplementsConception]->(target)
SET r.label = "学习主题落实大概念 / implementsConception";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l2"})
MERGE (source)-[r:themeImplementsConception]->(target)
SET r.label = "学习主题落实大概念 / implementsConception";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l3"})
MERGE (source)-[r:themeImplementsConception]->(target)
SET r.label = "学习主题落实大概念 / implementsConception";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l4"})
MERGE (source)-[r:themeImplementsConception]->(target)
SET r.label = "学习主题落实大概念 / implementsConception";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Conception:l5"})
MERGE (source)-[r:themeImplementsConception]->(target)
SET r.label = "学习主题落实大概念 / implementsConception";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l1"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l1"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l2"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l2"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l2"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l3"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l3"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l4"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l3"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l5"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l6"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l3"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l6"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l7"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l4"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l7"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l8"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l4"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l8"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l9"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l4"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l9"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l10"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l5"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l10"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l11"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l5"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l11"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l12"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l5"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l12"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l13"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l6"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l6"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l13"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l14"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l6"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l6"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l14"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l15"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l7"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l7"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l15"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l16"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l7"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l7"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l16"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l17"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l7"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l7"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l17"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l18"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l8"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l8"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l18"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l19"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l8"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l8"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l19"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l20"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l9"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l9"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l20"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l21"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l9"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l9"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l21"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l22"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l9"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l9"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l22"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l23"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l10"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l10"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l23"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l24"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l10"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l10"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l24"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l25"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l10"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l10"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l25"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l26"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l11"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l11"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l26"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l27"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l11"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l11"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l27"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l28"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l12"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l12"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l28"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l29"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l12"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l12"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l29"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l30"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l13"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l13"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l30"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l31"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l13"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l13"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l31"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l32"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l13"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Chapter:l13"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l32"})
MERGE (source)-[r:ChapterIncludesSection]->(target)
SET r.label = "章节包含小节 / includesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l12"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l12"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l1"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l10"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l10"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l2"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l1"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l3"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l2"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l3"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l3"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l4"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l3"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l5"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l10"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l10"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l5"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l6"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l2"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l6"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l6"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l3"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l6"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l7"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l8"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l8"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l7"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l8"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l8"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l8"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l8"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l8"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l7"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l7"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l8"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l9"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l7"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l7"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l9"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l10"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l4"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l10"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l10"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l12"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l12"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l10"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l11"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l4"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l11"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l11"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l10"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l10"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l11"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l12"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l9"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l9"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l12"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l13"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l11"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l11"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l13"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l14"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l11"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l11"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l14"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l14"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l9"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l9"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l14"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l15"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l3"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l15"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l15"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l12"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l12"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l15"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l16"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l3"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l16"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l16"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l10"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l10"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l16"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l16"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l12"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l12"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l16"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l17"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l2"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l17"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l17"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l3"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l17"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l17"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l10"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l10"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l17"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l18"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l10"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l10"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l18"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l18"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l12"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l12"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l18"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l19"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l12"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l12"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l19"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l20"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l5"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l20"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l20"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l12"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l12"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l20"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l21"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l5"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l21"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l21"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l10"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l10"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l21"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l22"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l5"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l22"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l22"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l12"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l12"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l22"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l23"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l4"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l23"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l23"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l2"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l23"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l24"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l4"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l24"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l25"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l4"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l25"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l25"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l2"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l25"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l26"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l6"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l6"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l26"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l26"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l2"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l26"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l27"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l6"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l6"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l27"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l27"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l10"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l10"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l27"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l28"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l6"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l6"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l28"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l28"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l12"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l12"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l28"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l29"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l6"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l6"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l29"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l29"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l12"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l12"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l29"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l30"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l12"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l12"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l30"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l31"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l12"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l12"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l31"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l31"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l7"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l7"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l31"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l32"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l12"})
MERGE (source)-[r:SectionCoversCoreKnowledge]->(target)
SET r.label = "小节涵盖核心知识 / coversCoreKnowledge";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreKnowledge:l12"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Section:l32"})
MERGE (source)-[r:CoreKnowledgeGuidesSection]->(target)
SET r.label = "核心知识统领小节 / guidesSection";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MERGE (source)-[r:ExperimentSupportsTheme]->(target)
SET r.label = "实验支撑学习主题 / supportsTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l1"})
MERGE (source)-[r:themeIncludesExperiment]->(target)
SET r.label = "学习主题包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MERGE (source)-[r:ExperimentSupportsTheme]->(target)
SET r.label = "实验支撑学习主题 / supportsTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l2"})
MERGE (source)-[r:themeIncludesExperiment]->(target)
SET r.label = "学习主题包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MERGE (source)-[r:ExperimentSupportsTheme]->(target)
SET r.label = "实验支撑学习主题 / supportsTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l3"})
MERGE (source)-[r:themeIncludesExperiment]->(target)
SET r.label = "学习主题包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MERGE (source)-[r:ExperimentSupportsTheme]->(target)
SET r.label = "实验支撑学习主题 / supportsTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l4"})
MERGE (source)-[r:themeIncludesExperiment]->(target)
SET r.label = "学习主题包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MERGE (source)-[r:ExperimentSupportsTheme]->(target)
SET r.label = "实验支撑学习主题 / supportsTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l5"})
MERGE (source)-[r:themeIncludesExperiment]->(target)
SET r.label = "学习主题包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l6"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MERGE (source)-[r:ExperimentSupportsTheme]->(target)
SET r.label = "实验支撑学习主题 / supportsTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l6"})
MERGE (source)-[r:themeIncludesExperiment]->(target)
SET r.label = "学习主题包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l7"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MERGE (source)-[r:ExperimentSupportsTheme]->(target)
SET r.label = "实验支撑学习主题 / supportsTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l7"})
MERGE (source)-[r:themeIncludesExperiment]->(target)
SET r.label = "学习主题包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l8"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MERGE (source)-[r:ExperimentSupportsTheme]->(target)
SET r.label = "实验支撑学习主题 / supportsTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l8"})
MERGE (source)-[r:themeIncludesExperiment]->(target)
SET r.label = "学习主题包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MERGE (source)-[r:ExperimentSupportsTheme]->(target)
SET r.label = "实验支撑学习主题 / supportsTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l1"})
MERGE (source)-[r:themeIncludesExperiment]->(target)
SET r.label = "学习主题包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MERGE (source)-[r:ExperimentSupportsTheme]->(target)
SET r.label = "实验支撑学习主题 / supportsTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l2"})
MERGE (source)-[r:themeIncludesExperiment]->(target)
SET r.label = "学习主题包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MERGE (source)-[r:ExperimentSupportsTheme]->(target)
SET r.label = "实验支撑学习主题 / supportsTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l3"})
MERGE (source)-[r:themeIncludesExperiment]->(target)
SET r.label = "学习主题包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MERGE (source)-[r:ExperimentSupportsTheme]->(target)
SET r.label = "实验支撑学习主题 / supportsTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l4"})
MERGE (source)-[r:themeIncludesExperiment]->(target)
SET r.label = "学习主题包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MERGE (source)-[r:ExperimentSupportsTheme]->(target)
SET r.label = "实验支撑学习主题 / supportsTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l5"})
MERGE (source)-[r:themeIncludesExperiment]->(target)
SET r.label = "学习主题包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l6"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MERGE (source)-[r:ExperimentSupportsTheme]->(target)
SET r.label = "实验支撑学习主题 / supportsTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l6"})
MERGE (source)-[r:themeIncludesExperiment]->(target)
SET r.label = "学习主题包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l7"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l3"})
MERGE (source)-[r:ExperimentSupportsTheme]->(target)
SET r.label = "实验支撑学习主题 / supportsTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l7"})
MERGE (source)-[r:themeIncludesExperiment]->(target)
SET r.label = "学习主题包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l8"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l4"})
MERGE (source)-[r:ExperimentSupportsTheme]->(target)
SET r.label = "实验支撑学习主题 / supportsTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:Experiment:l8"})
MERGE (source)-[r:themeIncludesExperiment]->(target)
SET r.label = "学习主题包含实验 / includesExperiment";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l1"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l1"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l3"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l1"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l4"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l1"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l5"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l1"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l2"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l2"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l3"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l2"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l4"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l2"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l5"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l2"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l3"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l3"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l3"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l3"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l4"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l3"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l5"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l3"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l4"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l4"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l3"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l4"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l4"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l4"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l5"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "统领学习主题 / guidesTheme";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:LearningTheme:l5"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l4"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:AcademicQuality:l1"})
MERGE (source)-[r:literacyGuidesQuality]->(target)
SET r.label = "指导学业质量 / guidesQuality";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:AcademicQuality:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l1"})
MERGE (source)-[r:qualityEmbodiesLiteracy]->(target)
SET r.label = "体现核心素养 / embodiesLiteracy";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:AcademicQuality:l2"})
MERGE (source)-[r:literacyGuidesQuality]->(target)
SET r.label = "指导学业质量 / guidesQuality";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:AcademicQuality:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l1"})
MERGE (source)-[r:qualityEmbodiesLiteracy]->(target)
SET r.label = "体现核心素养 / embodiesLiteracy";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:AcademicQuality:l4"})
MERGE (source)-[r:literacyGuidesQuality]->(target)
SET r.label = "指导学业质量 / guidesQuality";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:AcademicQuality:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l1"})
MERGE (source)-[r:qualityEmbodiesLiteracy]->(target)
SET r.label = "体现核心素养 / embodiesLiteracy";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:AcademicQuality:l1"})
MERGE (source)-[r:literacyGuidesQuality]->(target)
SET r.label = "指导学业质量 / guidesQuality";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:AcademicQuality:l1"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l2"})
MERGE (source)-[r:qualityEmbodiesLiteracy]->(target)
SET r.label = "体现核心素养 / embodiesLiteracy";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:AcademicQuality:l2"})
MERGE (source)-[r:literacyGuidesQuality]->(target)
SET r.label = "指导学业质量 / guidesQuality";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:AcademicQuality:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l2"})
MERGE (source)-[r:qualityEmbodiesLiteracy]->(target)
SET r.label = "体现核心素养 / embodiesLiteracy";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l2"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:AcademicQuality:l3"})
MERGE (source)-[r:literacyGuidesQuality]->(target)
SET r.label = "指导学业质量 / guidesQuality";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:AcademicQuality:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l2"})
MERGE (source)-[r:qualityEmbodiesLiteracy]->(target)
SET r.label = "体现核心素养 / embodiesLiteracy";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:AcademicQuality:l3"})
MERGE (source)-[r:literacyGuidesQuality]->(target)
SET r.label = "指导学业质量 / guidesQuality";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:AcademicQuality:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l3"})
MERGE (source)-[r:qualityEmbodiesLiteracy]->(target)
SET r.label = "体现核心素养 / embodiesLiteracy";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l3"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:AcademicQuality:l4"})
MERGE (source)-[r:literacyGuidesQuality]->(target)
SET r.label = "指导学业质量 / guidesQuality";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:AcademicQuality:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l3"})
MERGE (source)-[r:qualityEmbodiesLiteracy]->(target)
SET r.label = "体现核心素养 / embodiesLiteracy";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:AcademicQuality:l4"})
MERGE (source)-[r:literacyGuidesQuality]->(target)
SET r.label = "指导学业质量 / guidesQuality";

MATCH (source {identifier: "urn:jy:chemistry:SB0402:OB03:AcademicQuality:l4"})
MATCH (target {identifier: "urn:jy:chemistry:SB0402:OB03:CoreLiteracy:l4"})
MERGE (source)-[r:qualityEmbodiesLiteracy]->(target)
SET r.label = "体现核心素养 / embodiesLiteracy";
