// =====================================================
// 义教地理课标图谱 - Neo4j导入脚本
// 生成时间: 2026-01-23T15:49:01.184887
// =====================================================

// 创建约束和索引
CREATE CONSTRAINT IF NOT EXISTS FOR (n:CourseTarget) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:LearningThemeL3) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:LearningThemeL1) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:CoreLiteracy) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Chapter) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Section) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:LearningThemeL2) REQUIRE n.identifier IS UNIQUE;

// =====================================================
// 导入实体
// =====================================================

MERGE (n:LearningThemeL1 {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:01"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:01", title: "地球的宇宙环境", description: "主题一：地球的宇宙环境，包括地球在宇宙中、太空探索等内容", subject: "SB0308", type: "LearningThemeL1", applicableLevel: "OB03", contentJson: "{\"contentRequirement\": \"1. 地球在宇宙中：结合科学故事、史实材料等，说出人类对地球形状的认识过程，使用数据、类比等方式描述地球的大小。运用图片、影视资料以及数字技术等手段，描述地球的宇宙环境、地球在太阳系中的位置，认识地球是迄今人类唯一的家园。2. 太空探索：结合图片、影视资料等，描述探月工程、火星探测以及空间站建设等人类太空探索的进展与意义。收集中国航天及太空观测发展的相关材料，举例说出中国太空探索的成就。\", \"achievementRequirement\": \"学习本主题后，学生能够借助相关资料以及教具、学具等，描述人类认识地球形状的过程，领悟求真务实、勇于创新的科学精神；能够说出地球在宇宙环境中的位置、地球的大小、初步建立科学的宇宙观；能够说出中国太空探索取得的成就等，认识人类太空探索的意义和价值，保持对未知世界的好奇心，形成科学探究的兴趣与情怀，提升民族自豪感和自信心。\", \"teachingTip\": \"本主题包括地球在宇宙中、太空探索等内容，旨在帮助学生初步形成科学的宇宙观，增强科学兴趣，提升科学探究意识与科学精神。本主题内容在教学情境创设上要突出直观性，便于学生理解。重视使用与主题相关的图像、视频等，如人类探月、火星探测、载人航天以及空间站建设等素材。重视实践教学资源的利用，如天文馆、天文台、高校及科研院所等科普基地或科研机构，组织学生参观、考察、听报告等，拓展学生的认知渠道。本主题内容教学要重视激发学生探索宇宙奥秘的好奇心，从生活中的日月星辰现象出发，让学生产生疑问、提出问题，逐步引导学生学会思考，主动学习。充分利用现代信息技术手段，包括遥感影像、视频素材、数据可视化图以及软件平台等，引导学生观察地球的宇宙环境、太阳系的组成等；使用模型等直观教具、学具，让学生模拟演示太阳系的组成、地球的形状和大小等，培养学生的空间感，激发他们的探究兴趣。\"}", CJ_contentRequirement: "1. 地球在宇宙中：结合科学故事、史实材料等，说出人类对地球形状的认识过程，使用数据、类比等方式描述地球的大小。运用图片、影视资料以及数字技术等手段，描述地球的宇宙环境、地球在太阳系中的位置，认识地球是迄今人类唯一的家园。2. 太空探索：结合图片、影视资料等，描述探月工程、火星探测以及空间站建设等人类太空探索的进展与意义。收集中国航天及太空观测发展的相关材料，举例说出中国太空探索的成就。", CJ_achievementRequirement: "学习本主题后，学生能够借助相关资料以及教具、学具等，描述人类认识地球形状的过程，领悟求真务实、勇于创新的科学精神；能够说出地球在宇宙环境中的位置、地球的大小、初步建立科学的宇宙观；能够说出中国太空探索取得的成就等，认识人类太空探索的意义和价值，保持对未知世界的好奇心，形成科学探究的兴趣与情怀，提升民族自豪感和自信心。", CJ_teachingTip: "本主题包括地球在宇宙中、太空探索等内容，旨在帮助学生初步形成科学的宇宙观，增强科学兴趣，提升科学探究意识与科学精神。本主题内容在教学情境创设上要突出直观性，便于学生理解。重视使用与主题相关的图像、视频等，如人类探月、火星探测、载人航天以及空间站建设等素材。重视实践教学资源的利用，如天文馆、天文台、高校及科研院所等科普基地或科研机构，组织学生参观、考察、听报告等，拓展学生的认知渠道。本主题内容教学要重视激发学生探索宇宙奥秘的好奇心，从生活中的日月星辰现象出发，让学生产生疑问、提出问题，逐步引导学生学会思考，主动学习。充分利用现代信息技术手段，包括遥感影像、视频素材、数据可视化图以及软件平台等，引导学生观察地球的宇宙环境、太阳系的组成等；使用模型等直观教具、学具，让学生模拟演示太阳系的组成、地球的形状和大小等，培养学生的空间感，激发他们的探究兴趣。"};

MERGE (n:LearningThemeL1 {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:02"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:02", title: "地球的运动", description: "主题二：地球的运动，包括地球自转和公转等内容", subject: "SB0308", type: "LearningThemeL1", applicableLevel: "OB03", contentJson: "{\"contentRequirement\": \"1. 地球自转：运用地球仪或软件，演示地球的自转运动，说出地球的自转方向、周期。结合实例，说出地球自转产生的主要自然现象及其对人们生产生活的影响。2. 地球公转：运用模型或软件，演示地球的公转运动，说出地球的公转方向、周期。结合实例，说出地球公转产生的主要自然现象及其对人们生产生活的影响。\", \"achievementRequirement\": \"学习本主题后，学生能够自主演示地球的自转和公转运动，归纳地球的运动规律，并用现实世界中的事例证明地球运动的存在，形成尊重客观事实的科学态度；能够举例说明地球运动所产生的主要自然现象及其对人们生产生活的影响，以及人们顺应自然规律进行社会活动所展现出的智慧，树立尊重自然、顺应自然的观念。\", \"teachingTip\": \"本主题包括地球的自转和公转、地球运动产生的自然现象等内容，旨在帮助学生科学地认识地球运动规律及其对人类地球家园的意义，形成尊重、敬畏、顺应自然规律，以及科学认识自然现象的意识。地球运动产生的很多自然现象是学生十分熟悉的，可以结合学生的生活感受设计教学情境。例如，利用表现太阳东升西落、四季更替、昼夜长短变化等现象的示意图、视频素材、数据可视化图等，启发学生思考这些现象产生的可能原因。还可以结合地球运动影响人们生产生活的实例设计教学情境，例如：时差对世界各地收看国际体育赛事的影响；节气与农业生产的关系，以及其中反映的中国古代劳动人民的智慧等。本主题教学中要注重使用直观教具和其他教学资源，让学生在实际操作中感知地球自转、公转的基本状态和运动规律。引导学生根据已有的生活经验思考问题，如“怎么证明地球是运动的？”“地球运动对我们的生产生活有什么影响？”等，培养学生科学实证的理性思维，以及对身边事物和现象的观察、解释能力。\"}", CJ_contentRequirement: "1. 地球自转：运用地球仪或软件，演示地球的自转运动，说出地球的自转方向、周期。结合实例，说出地球自转产生的主要自然现象及其对人们生产生活的影响。2. 地球公转：运用模型或软件，演示地球的公转运动，说出地球的公转方向、周期。结合实例，说出地球公转产生的主要自然现象及其对人们生产生活的影响。", CJ_achievementRequirement: "学习本主题后，学生能够自主演示地球的自转和公转运动，归纳地球的运动规律，并用现实世界中的事例证明地球运动的存在，形成尊重客观事实的科学态度；能够举例说明地球运动所产生的主要自然现象及其对人们生产生活的影响，以及人们顺应自然规律进行社会活动所展现出的智慧，树立尊重自然、顺应自然的观念。", CJ_teachingTip: "本主题包括地球的自转和公转、地球运动产生的自然现象等内容，旨在帮助学生科学地认识地球运动规律及其对人类地球家园的意义，形成尊重、敬畏、顺应自然规律，以及科学认识自然现象的意识。地球运动产生的很多自然现象是学生十分熟悉的，可以结合学生的生活感受设计教学情境。例如，利用表现太阳东升西落、四季更替、昼夜长短变化等现象的示意图、视频素材、数据可视化图等，启发学生思考这些现象产生的可能原因。还可以结合地球运动影响人们生产生活的实例设计教学情境，例如：时差对世界各地收看国际体育赛事的影响；节气与农业生产的关系，以及其中反映的中国古代劳动人民的智慧等。本主题教学中要注重使用直观教具和其他教学资源，让学生在实际操作中感知地球自转、公转的基本状态和运动规律。引导学生根据已有的生活经验思考问题，如“怎么证明地球是运动的？”“地球运动对我们的生产生活有什么影响？”等，培养学生科学实证的理性思维，以及对身边事物和现象的观察、解释能力。"};

MERGE (n:LearningThemeL1 {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:03"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:03", title: "地球的表层", description: "主题三：地球的表层，包括自然环境和人文环境等内容", subject: "SB0308", type: "LearningThemeL1", applicableLevel: "OB03", contentJson: "{\"contentRequirement\": \"1. 自然环境：(1) 陆地和海洋：阅读世界地图，描述世界海陆分布状况，说出七大洲、四大洋的分布。通过阅读地形图、图像，观看影视资料，观察地形模型或实地考察等，区别山地、丘陵、高原、平原、盆地的形态特征。在世界地形图上指出陆地主要地形和海底主要地形的分布，观察地形分布大势。结合实例，说明海洋和陆地处于不断的运动变化之中；说出板块构造学说的基本观点，并解释世界火山、地震带的分布与板块运动的关系。结合实例，说出海洋对人们生产生活的影响。(2) 天气与气候：收看天气预报节目，识别常见的天气符号，模拟播报天气。阅读世界年平均气温和1月、7月平均气温分布图，描述和简要归纳世界气温分布特点。阅读世界年降水量分布图，描述和简要归纳世界降水分布特点。阅读某地区气温、降水数据资料，并据此绘制气温曲线图和降水量柱状图，说出气温与降水量随时间变化的特点。阅读世界气候类型分布图，描述世界主要气候类型的分布特征；结合实例，说明纬度位置、海陆分布、地形等对气候的影响。结合实例，说明天气和气候对人们生产生活的影响。2. 人文环境：(1) 居民与文化：运用地图和相关资料，描述并简要归纳世界人口数量变化和人口空间分布特点。通过阅读图像、观看视频或实地考察等，描述城镇与乡村的景观特征及其变化。运用反映人种、语言、宗教、习俗等内容的图文资料，描述世界文化的丰富多彩，树立尊重世界文化多样性的意识。(2) 发展与合作：以某发达国家和某发展中国家为例，描述不同国家发展水平的差异。结合实例，说明交通运输在全球经济发展中的重要作用。结合实例，说明加强国际合作的重要意义。\", \"achievementRequirement\": \"学习本主题后，学生能够运用地图及其他地理工具，观察、描述地球表层陆地、海洋的基本面貌，说出地形、气候等自然环境要素的基本状况，以及自然环境要素对人们生产生活的影响；能够观察、描述地球上人口、城乡、文化等人文环境要素的基本状况，以及人类活动对自然环境的影响；能够比较不同地区与国家的发展水平差异，认识全球经济合作的重要意义，初步形成人类命运共同体意识。\", \"teachingTip\": \"本主题包括全球陆地与海洋、地形、气候等自然地理内容，以及人口、城乡、文化、经济发展等人文地理内容，旨在帮助学生认识全球自然与人文环境的基本状况，提高学生对有关全球议题的理解能力。运用全球或区域资料，结合具体内容，设计不同的教学情境。用地球仪、地图、遥感影像、影视资料、数据可视化图等资料，结合若干能够反映地理环境特点的素材，如世界的三极（南极、北极和青藏高原）、世界地形之最、世界气候之最、世界旅游攻略、反映世界经济社会发展差异的统计数据、中国的“一带一路”倡议等，创设教学情境。从情境中引发问题，再转化为解决问题的任务，促使学生在完成任务的过程中领会和建构知识，如利用地图和其他资料，了解世界地形、世界气候基本的空间分布特征；结合具体案例，运用数据、图像等资料，描述和简要归纳世界人口、城乡、文化的基本特征与空间分布特点；用比较、分析的方法，认识世界发展差异与经济全球化的重要意义。根据学生的学习情况，还可以结合事实材料适当拓展，讲述一些全球性的环境问题，如地球面临海平面上升、荒漠化等问题，以及全球气候变化和碳达峰与碳中和的关系等内容，强化生态环境保护教育。\"}", CJ_contentRequirement: "1. 自然环境：(1) 陆地和海洋：阅读世界地图，描述世界海陆分布状况，说出七大洲、四大洋的分布。通过阅读地形图、图像，观看影视资料，观察地形模型或实地考察等，区别山地、丘陵、高原、平原、盆地的形态特征。在世界地形图上指出陆地主要地形和海底主要地形的分布，观察地形分布大势。结合实例，说明海洋和陆地处于不断的运动变化之中；说出板块构造学说的基本观点，并解释世界火山、地震带的分布与板块运动的关系。结合实例，说出海洋对人们生产生活的影响。(2) 天气与气候：收看天气预报节目，识别常见的天气符号，模拟播报天气。阅读世界年平均气温和1月、7月平均气温分布图，描述和简要归纳世界气温分布特点。阅读世界年降水量分布图，描述和简要归纳世界降水分布特点。阅读某地区气温、降水数据资料，并据此绘制气温曲线图和降水量柱状图，说出气温与降水量随时间变化的特点。阅读世界气候类型分布图，描述世界主要气候类型的分布特征；结合实例，说明纬度位置、海陆分布、地形等对气候的影响。结合实例，说明天气和气候对人们生产生活的影响。2. 人文环境：(1) 居民与文化：运用地图和相关资料，描述并简要归纳世界人口数量变化和人口空间分布特点。通过阅读图像、观看视频或实地考察等，描述城镇与乡村的景观特征及其变化。运用反映人种、语言、宗教、习俗等内容的图文资料，描述世界文化的丰富多彩，树立尊重世界文化多样性的意识。(2) 发展与合作：以某发达国家和某发展中国家为例，描述不同国家发展水平的差异。结合实例，说明交通运输在全球经济发展中的重要作用。结合实例，说明加强国际合作的重要意义。", CJ_achievementRequirement: "学习本主题后，学生能够运用地图及其他地理工具，观察、描述地球表层陆地、海洋的基本面貌，说出地形、气候等自然环境要素的基本状况，以及自然环境要素对人们生产生活的影响；能够观察、描述地球上人口、城乡、文化等人文环境要素的基本状况，以及人类活动对自然环境的影响；能够比较不同地区与国家的发展水平差异，认识全球经济合作的重要意义，初步形成人类命运共同体意识。", CJ_teachingTip: "本主题包括全球陆地与海洋、地形、气候等自然地理内容，以及人口、城乡、文化、经济发展等人文地理内容，旨在帮助学生认识全球自然与人文环境的基本状况，提高学生对有关全球议题的理解能力。运用全球或区域资料，结合具体内容，设计不同的教学情境。用地球仪、地图、遥感影像、影视资料、数据可视化图等资料，结合若干能够反映地理环境特点的素材，如世界的三极（南极、北极和青藏高原）、世界地形之最、世界气候之最、世界旅游攻略、反映世界经济社会发展差异的统计数据、中国的“一带一路”倡议等，创设教学情境。从情境中引发问题，再转化为解决问题的任务，促使学生在完成任务的过程中领会和建构知识，如利用地图和其他资料，了解世界地形、世界气候基本的空间分布特征；结合具体案例，运用数据、图像等资料，描述和简要归纳世界人口、城乡、文化的基本特征与空间分布特点；用比较、分析的方法，认识世界发展差异与经济全球化的重要意义。根据学生的学习情况，还可以结合事实材料适当拓展，讲述一些全球性的环境问题，如地球面临海平面上升、荒漠化等问题，以及全球气候变化和碳达峰与碳中和的关系等内容，强化生态环境保护教育。"};

MERGE (n:LearningThemeL1 {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:04"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:04", title: "认识世界", description: "主题四：认识世界，包括认识大洲、认识地区、认识国家等内容", subject: "SB0308", type: "LearningThemeL1", applicableLevel: "OB03", contentJson: "{\"contentRequirement\": \"1. 认识大洲：运用地图和相关资料，描述某大洲的地理位置，并依据大洲地理位置特点，判断大洲所处热量带和降水的空间分布概况。运用地图和相关资料，简要归纳某大洲的地形、气候、人口、经济等地理特征。2. 认识地区：运用地图和相关资料，描述某地区的地理位置，简要归纳自然地理特征，说明该特征对当地人们生产生活的影响。以某地区的一种自然资源为例，说出该资源在当地的分布状况、对外输出地区以及对当地乃至世界的重要意义。结合实例，说明某地区发展旅游业的优势。根据南极、北极地区自然地理环境的特殊性，说明开展极地科学考察和保护极地环境的重要性。3. 认识国家：运用地图和相关资料，说出某国家的地理位置、范围、领土构成和首都；选择与该国地理位置差异明显的国家，比较它们纬度位置和海陆位置的差异。运用地图和相关资料，描述某国家突出的自然地理特征。运用地图和相关资料，说出某国家人文地理主要特点及其与自然地理环境的联系。运用地图和相关资料，联系某国家的自然地理环境特点，结合实例简要分析该国因地制宜发展经济的途径。运用地图和相关资料，简要分析某国家在资源开发、环境保护方面的经验和教训。结合实例，简要说明一个国家对某地自然环境的改造活动对其他地方自然环境的影响。结合某国家的实例，简要说明该国家与其他国家在经济社会等方面的联系及其意义。说明：(1) 本主题规定从世界范围内选学部分大洲、地区、国家，旨在使学生认识区域自然地理环境和人文地理环境的主要特征，初步掌握认识区域地理特征的基本方法。(2) 从世界范围内选择区域进行学习时，除南极和北极地区是必学区域外，还需从世界范围内至少选择一个大洲、三个地区和四个国家作为必学内容。(3) 所选择的“大洲—地区—国家”组合必须涉及所有大洲，其内容必须涵盖本主题全部的“内容要求”。就某一个区域而言，可以落实若干条“内容要求”，合理组织相关素材。\", \"achievementRequirement\": \"学习本主题后，学生能够运用地图及其他地理工具，从地理位置、地理事物和现象的空间分布、人与自然的关系，以及区域差异和区域联系等角度，描述并简要分析某大洲、地区和国家的主要地理特征；能够结合世界政治、经济、社会、文化事物和现象，运用认识区域的方法，简要分析这些事物和现象发生的区域地理背景，形成从地理视角看待、探究现实世界的意识和能力，初步具备全球视野和社会责任感。\", \"teachingTip\": \"本主题包括认识大洲、地区、国家等不同空间尺度的区域，涵盖这些区域的地理位置、空间分布、区域差异、区域联系等内容，旨在帮助学生理解世界不同区域自然地理环境的差异性、社会文化的多样性，以及人与自然的关系，初步形成人与自然生命共同体、人类命运共同体等意识。本主题要通过创设一定的情境、问题和任务开展教学活动。在情境创设上，要关注区域差异，侧重空间联系与相互作用。选择当前社会热点和世界各地富有特色的生产生活活动，作为情境创设的基本素材。创设的情境要契合学生的认知发展水平，与地理问题、任务有较强的关联性，有利于激发学生对地方、区域和全球问题的好奇心。在问题与任务的设计上，可以从世界的某个事件在何处发生、为何发生为起点，提出问题，设计学习任务。然后引导学生运用地图、图像、数字资源以及地理信息技术等工具，完成空间位置辨识、地理现象观察、区域特征归纳、区域联系分析等任务。总的要求是，通过创设特定的情境，设计有驱动性的地理问题和具体任务，引导学生学会自主学习、合作探究，同时将评价嵌入学生学习的全过程。本主题涉及的内容非常广泛，要有重点地设计学习活动。\"}", CJ_contentRequirement: "1. 认识大洲：运用地图和相关资料，描述某大洲的地理位置，并依据大洲地理位置特点，判断大洲所处热量带和降水的空间分布概况。运用地图和相关资料，简要归纳某大洲的地形、气候、人口、经济等地理特征。2. 认识地区：运用地图和相关资料，描述某地区的地理位置，简要归纳自然地理特征，说明该特征对当地人们生产生活的影响。以某地区的一种自然资源为例，说出该资源在当地的分布状况、对外输出地区以及对当地乃至世界的重要意义。结合实例，说明某地区发展旅游业的优势。根据南极、北极地区自然地理环境的特殊性，说明开展极地科学考察和保护极地环境的重要性。3. 认识国家：运用地图和相关资料，说出某国家的地理位置、范围、领土构成和首都；选择与该国地理位置差异明显的国家，比较它们纬度位置和海陆位置的差异。运用地图和相关资料，描述某国家突出的自然地理特征。运用地图和相关资料，说出某国家人文地理主要特点及其与自然地理环境的联系。运用地图和相关资料，联系某国家的自然地理环境特点，结合实例简要分析该国因地制宜发展经济的途径。运用地图和相关资料，简要分析某国家在资源开发、环境保护方面的经验和教训。结合实例，简要说明一个国家对某地自然环境的改造活动对其他地方自然环境的影响。结合某国家的实例，简要说明该国家与其他国家在经济社会等方面的联系及其意义。说明：(1) 本主题规定从世界范围内选学部分大洲、地区、国家，旨在使学生认识区域自然地理环境和人文地理环境的主要特征，初步掌握认识区域地理特征的基本方法。(2) 从世界范围内选择区域进行学习时，除南极和北极地区是必学区域外，还需从世界范围内至少选择一个大洲、三个地区和四个国家作为必学内容。(3) 所选择的“大洲—地区—国家”组合必须涉及所有大洲，其内容必须涵盖本主题全部的“内容要求”。就某一个区域而言，可以落实若干条“内容要求”，合理组织相关素材。", CJ_achievementRequirement: "学习本主题后，学生能够运用地图及其他地理工具，从地理位置、地理事物和现象的空间分布、人与自然的关系，以及区域差异和区域联系等角度，描述并简要分析某大洲、地区和国家的主要地理特征；能够结合世界政治、经济、社会、文化事物和现象，运用认识区域的方法，简要分析这些事物和现象发生的区域地理背景，形成从地理视角看待、探究现实世界的意识和能力，初步具备全球视野和社会责任感。", CJ_teachingTip: "本主题包括认识大洲、地区、国家等不同空间尺度的区域，涵盖这些区域的地理位置、空间分布、区域差异、区域联系等内容，旨在帮助学生理解世界不同区域自然地理环境的差异性、社会文化的多样性，以及人与自然的关系，初步形成人与自然生命共同体、人类命运共同体等意识。本主题要通过创设一定的情境、问题和任务开展教学活动。在情境创设上，要关注区域差异，侧重空间联系与相互作用。选择当前社会热点和世界各地富有特色的生产生活活动，作为情境创设的基本素材。创设的情境要契合学生的认知发展水平，与地理问题、任务有较强的关联性，有利于激发学生对地方、区域和全球问题的好奇心。在问题与任务的设计上，可以从世界的某个事件在何处发生、为何发生为起点，提出问题，设计学习任务。然后引导学生运用地图、图像、数字资源以及地理信息技术等工具，完成空间位置辨识、地理现象观察、区域特征归纳、区域联系分析等任务。总的要求是，通过创设特定的情境，设计有驱动性的地理问题和具体任务，引导学生学会自主学习、合作探究，同时将评价嵌入学生学习的全过程。本主题涉及的内容非常广泛，要有重点地设计学习活动。"};

MERGE (n:LearningThemeL1 {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:05"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:05", title: "认识中国", description: "主题五：认识中国，包括认识中国全貌、认识分区和认识家乡等内容", subject: "SB0308", type: "LearningThemeL1", applicableLevel: "OB03", contentJson: "{\"contentRequirement\": \"1. 认识中国全貌：运用地图，描述中国的地理位置与疆域特征，说明南海诸岛是中国领土的组成部分，钓鱼岛及其附属岛屿是中国固有领土，增强国家版图意识与海洋权益意识。运用中国行政区划图，识别34个省级行政区，记住它们的简称和行政中心。运用地图和相关资料，简要归纳中国地形、气候、河湖等的特征；简要分析影响中国气候的主要因素。运用地图和相关资料，描述长江、黄河的特点，举例说明其对经济发展和人们生活的影响。运用地图和相关资料，描述中国人口的基本状况和变化。运用地图和相关资料，简要归纳中国的民族分布特点，树立中华民族共同体意识。运用地图和相关资料，描述中国水资源、土地资源、矿产资源和海洋资源等自然资源的主要特征，举例说明自然资源与人们生产生活的关系，认识开发、利用、保护自然资源的重要意义。借助地图和相关资料，举例描述中国农业、工业等生产活动的分布，并用实例说明科学技术在产业发展中的重要作用。运用地图和相关资料，说明中国交通运输线的分布特征，以及高速公路、高速铁路的快速发展对人们生产生活的影响。运用地图和相关资料，描述中国主要的自然灾害和环境问题；针对某一自然灾害或环境问题提出合理的防治建议；掌握一定的气象灾害和地质灾害的安全防护技能。2. 认识分区：运用地图、图像等资料，说明秦岭—淮河等重要自然地理界线在地理分区中的意义。运用地图和相关资料，说出某区域的地理位置和自然地理特征，说明自然条件对该区域经济社会发展的影响，认识因地制宜的重要性。结合实例，描述不同区域的差异，说明区域联系和协同发展对经济社会发展的意义。运用地图和相关资料，描述某区域城乡分布和变化，推测该区域城乡发展图景。进行野外考察或运用相关资料，说明自然环境与地方文化景观之间的关系。运用地图和相关资料，说明北京的自然地理特点、历史文化传统和城市建设成就，认识首都职能。运用地图和相关资料，说明香港、澳门的自然地理、历史文化传统和经济建设特点，以及港澳与内地经济发展的相互促进作用，增强区域联系的意识。运用地图和相关资料，说明台湾的自然地理、历史文化传统和现代化建设特点，认识台湾自古以来就是中国不可分割的领土，以及促进海峡两岸经济社会融合发展的意义。3. 认识家乡：进行野外考察并利用图文资料，描述家乡典型的自然与人文地理事物和现象，归纳家乡地理环境的特点，举例说明其形成过程及原因。与他人交流各自对家乡的看法并说明理由，感悟人们在不同体验和感知背景下对家乡形成的不同看法。举例说明家乡环境及生产发展给当地居民生活带来的影响和变化，并尝试用绿色发展理念，对家乡的发展规划提出合理建议，增强热爱家乡、建设家乡的意识。说明：(1) 除北京、香港、澳门、台湾外，还需从全国范围内至少选择五个不同空间尺度或不同类型的区域作为必学内容。(2) 家乡范围一般指县一级行政区。根据各地实际情况，认识家乡内容的教学可讲授本地区（省辖市）地理，或者本省（自治区、直辖市）地理。认识家乡的内容可以融入“认识中国全貌”和“认识分区”中，也可以单独教学。(3) 从本主题“内容要求”中至少选择一条，以实践活动的方式展开教学。\", \"achievementRequirement\": \"学习本主题后，学生能够运用地图及其他地理工具，从不同媒体及生活体验中获取并运用有关中国地理的信息资料，描述和说明中国基本的地理面貌，表达热爱祖国的情感；能够描述中国不同地区的主要地理特征，比较区域差异，从区域的视角说明人类活动与自然环境和资源的关系，初步形成因地制宜、区域协调发展的观念；能够观察、描述、解释家乡生产生活中的地理事物和现象，表现出主动学习及问题探究的意识和能力；能够在生活、学习中积极参与相关的公益活动，具有社会责任感。\", \"teachingTip\": \"本主题包括认识中国全貌、认识分区和认识家乡三部分，重在引导学生运用认识区域的方法，学习中国及其内部不同区域的自然和人文环境特点，以及经济社会发展状况，旨在帮助学生认识中国辽阔的疆域、优越的地理位置，强化国家领土主权、国土安全意识，感受祖国山河的壮美、人们生产生活的丰富多彩，培育生态文明意识和热爱祖国、热爱家乡的情感。本主题的教学可以从中国的地理事物和现象入手，利用丰富的图文资料和学生已有的常识、经验，创设多样的教学情境。例如：安排户外教学，为学生提供亲身体验和感知祖国大好河山的机会；组织学生进行地理阅读，引导他们欣赏中国的自然和文化景观，认同中华优秀传统文化，感悟党领导人民进行革命、改革、建设取得的伟大成就；组织学生对家乡环境的变化进行实地调查，感受美丽中国的建设步伐；利用现代信息技术，为学生提供直观、生动、便捷的学习资源，营造开放、活泼、多样的学习环境。本主题的教学要引导学生采用观察、描述、比较、归纳、说明、分析、评价等方法，认识中国地理环境的特点，思考家乡建设与祖国发展的关联；结合学生的生活体验，利用生产生活实例、时事热点问题等激发学生的兴趣，引导学生进行探究学习；开展学具制作、地理实验、社会调查、野外考察、社会实践、劳动，以及防灾避险紧急演练等实践活动，让学生在做中学。\"}", CJ_contentRequirement: "1. 认识中国全貌：运用地图，描述中国的地理位置与疆域特征，说明南海诸岛是中国领土的组成部分，钓鱼岛及其附属岛屿是中国固有领土，增强国家版图意识与海洋权益意识。运用中国行政区划图，识别34个省级行政区，记住它们的简称和行政中心。运用地图和相关资料，简要归纳中国地形、气候、河湖等的特征；简要分析影响中国气候的主要因素。运用地图和相关资料，描述长江、黄河的特点，举例说明其对经济发展和人们生活的影响。运用地图和相关资料，描述中国人口的基本状况和变化。运用地图和相关资料，简要归纳中国的民族分布特点，树立中华民族共同体意识。运用地图和相关资料，描述中国水资源、土地资源、矿产资源和海洋资源等自然资源的主要特征，举例说明自然资源与人们生产生活的关系，认识开发、利用、保护自然资源的重要意义。借助地图和相关资料，举例描述中国农业、工业等生产活动的分布，并用实例说明科学技术在产业发展中的重要作用。运用地图和相关资料，说明中国交通运输线的分布特征，以及高速公路、高速铁路的快速发展对人们生产生活的影响。运用地图和相关资料，描述中国主要的自然灾害和环境问题；针对某一自然灾害或环境问题提出合理的防治建议；掌握一定的气象灾害和地质灾害的安全防护技能。2. 认识分区：运用地图、图像等资料，说明秦岭—淮河等重要自然地理界线在地理分区中的意义。运用地图和相关资料，说出某区域的地理位置和自然地理特征，说明自然条件对该区域经济社会发展的影响，认识因地制宜的重要性。结合实例，描述不同区域的差异，说明区域联系和协同发展对经济社会发展的意义。运用地图和相关资料，描述某区域城乡分布和变化，推测该区域城乡发展图景。进行野外考察或运用相关资料，说明自然环境与地方文化景观之间的关系。运用地图和相关资料，说明北京的自然地理特点、历史文化传统和城市建设成就，认识首都职能。运用地图和相关资料，说明香港、澳门的自然地理、历史文化传统和经济建设特点，以及港澳与内地经济发展的相互促进作用，增强区域联系的意识。运用地图和相关资料，说明台湾的自然地理、历史文化传统和现代化建设特点，认识台湾自古以来就是中国不可分割的领土，以及促进海峡两岸经济社会融合发展的意义。3. 认识家乡：进行野外考察并利用图文资料，描述家乡典型的自然与人文地理事物和现象，归纳家乡地理环境的特点，举例说明其形成过程及原因。与他人交流各自对家乡的看法并说明理由，感悟人们在不同体验和感知背景下对家乡形成的不同看法。举例说明家乡环境及生产发展给当地居民生活带来的影响和变化，并尝试用绿色发展理念，对家乡的发展规划提出合理建议，增强热爱家乡、建设家乡的意识。说明：(1) 除北京、香港、澳门、台湾外，还需从全国范围内至少选择五个不同空间尺度或不同类型的区域作为必学内容。(2) 家乡范围一般指县一级行政区。根据各地实际情况，认识家乡内容的教学可讲授本地区（省辖市）地理，或者本省（自治区、直辖市）地理。认识家乡的内容可以融入“认识中国全貌”和“认识分区”中，也可以单独教学。(3) 从本主题“内容要求”中至少选择一条，以实践活动的方式展开教学。", CJ_achievementRequirement: "学习本主题后，学生能够运用地图及其他地理工具，从不同媒体及生活体验中获取并运用有关中国地理的信息资料，描述和说明中国基本的地理面貌，表达热爱祖国的情感；能够描述中国不同地区的主要地理特征，比较区域差异，从区域的视角说明人类活动与自然环境和资源的关系，初步形成因地制宜、区域协调发展的观念；能够观察、描述、解释家乡生产生活中的地理事物和现象，表现出主动学习及问题探究的意识和能力；能够在生活、学习中积极参与相关的公益活动，具有社会责任感。", CJ_teachingTip: "本主题包括认识中国全貌、认识分区和认识家乡三部分，重在引导学生运用认识区域的方法，学习中国及其内部不同区域的自然和人文环境特点，以及经济社会发展状况，旨在帮助学生认识中国辽阔的疆域、优越的地理位置，强化国家领土主权、国土安全意识，感受祖国山河的壮美、人们生产生活的丰富多彩，培育生态文明意识和热爱祖国、热爱家乡的情感。本主题的教学可以从中国的地理事物和现象入手，利用丰富的图文资料和学生已有的常识、经验，创设多样的教学情境。例如：安排户外教学，为学生提供亲身体验和感知祖国大好河山的机会；组织学生进行地理阅读，引导他们欣赏中国的自然和文化景观，认同中华优秀传统文化，感悟党领导人民进行革命、改革、建设取得的伟大成就；组织学生对家乡环境的变化进行实地调查，感受美丽中国的建设步伐；利用现代信息技术，为学生提供直观、生动、便捷的学习资源，营造开放、活泼、多样的学习环境。本主题的教学要引导学生采用观察、描述、比较、归纳、说明、分析、评价等方法，认识中国地理环境的特点，思考家乡建设与祖国发展的关联；结合学生的生活体验，利用生产生活实例、时事热点问题等激发学生的兴趣，引导学生进行探究学习；开展学具制作、地理实验、社会调查、野外考察、社会实践、劳动，以及防灾避险紧急演练等实践活动，让学生在做中学。"};

MERGE (n:LearningThemeL3 {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01", title: "陆地和海洋", description: "自然环境的三级主题：陆地和海洋", subject: "SB0308", type: "LearningThemeL3", applicableLevel: "OB03", contentJson: "{\"contentRequirement\": \"阅读世界地图，描述世界海陆分布状况，说出七大洲、四大洋的分布。通过阅读地形图、图像，观看影视资料，观察地形模型或实地考察等，区别山地、丘陵、高原、平原、盆地的形态特征。在世界地形图上指出陆地主要地形和海底主要地形的分布，观察地形分布大势。结合实例，说明海洋和陆地处于不断的运动变化之中；说出板块构造学说的基本观点，并解释世界火山、地震带的分布与板块运动的关系。结合实例，说出海洋对人们生产生活的影响。\", \"ThemeL1\": \"urn:jy:Geography:SB0308:OB03:LearningThemeL1:03\", \"ThemeL2\": \"urn:jy:Geography:SB0308:OB03:LearningThemeL2:05\"}", CJ_contentRequirement: "阅读世界地图，描述世界海陆分布状况，说出七大洲、四大洋的分布。通过阅读地形图、图像，观看影视资料，观察地形模型或实地考察等，区别山地、丘陵、高原、平原、盆地的形态特征。在世界地形图上指出陆地主要地形和海底主要地形的分布，观察地形分布大势。结合实例，说明海洋和陆地处于不断的运动变化之中；说出板块构造学说的基本观点，并解释世界火山、地震带的分布与板块运动的关系。结合实例，说出海洋对人们生产生活的影响。", CJ_ThemeL1: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:03", CJ_ThemeL2: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"};

MERGE (n:LearningThemeL3 {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02", title: "天气与气候", description: "自然环境的三级主题：天气与气候", subject: "SB0308", type: "LearningThemeL3", applicableLevel: "OB03", contentJson: "{\"contentRequirement\": \"收看天气预报节目，识别常见的天气符号，模拟播报天气。阅读世界年平均气温和1月、7月平均气温分布图，描述和简要归纳世界气温分布特点。阅读世界年降水量分布图，描述和简要归纳世界降水分布特点。阅读某地区气温、降水数据资料，并据此绘制气温曲线图和降水量柱状图，说出气温与降水量随时间变化的特点。阅读世界气候类型分布图，描述世界主要气候类型的分布特征；结合实例，说明纬度位置、海陆分布、地形等对气候的影响。结合实例，说明天气和气候对人们生产生活的影响。\", \"ThemeL1\": \"urn:jy:Geography:SB0308:OB03:LearningThemeL1:03\", \"ThemeL2\": \"urn:jy:Geography:SB0308:OB03:LearningThemeL2:05\"}", CJ_contentRequirement: "收看天气预报节目，识别常见的天气符号，模拟播报天气。阅读世界年平均气温和1月、7月平均气温分布图，描述和简要归纳世界气温分布特点。阅读世界年降水量分布图，描述和简要归纳世界降水分布特点。阅读某地区气温、降水数据资料，并据此绘制气温曲线图和降水量柱状图，说出气温与降水量随时间变化的特点。阅读世界气候类型分布图，描述世界主要气候类型的分布特征；结合实例，说明纬度位置、海陆分布、地形等对气候的影响。结合实例，说明天气和气候对人们生产生活的影响。", CJ_ThemeL1: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:03", CJ_ThemeL2: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"};

MERGE (n:LearningThemeL3 {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03", title: "居民与文化", description: "人文环境的三级主题：居民与文化", subject: "SB0308", type: "LearningThemeL3", applicableLevel: "OB03", contentJson: "{\"contentRequirement\": \"运用地图和相关资料，描述并简要归纳世界人口数量变化和人口空间分布特点。通过阅读图像、观看视频或实地考察等，描述城镇与乡村的景观特征及其变化。运用反映人种、语言、宗教、习俗等内容的图文资料，描述世界文化的丰富多彩，树立尊重世界文化多样性的意识。\", \"ThemeL1\": \"urn:jy:Geography:SB0308:OB03:LearningThemeL1:03\", \"ThemeL2\": \"urn:jy:Geography:SB0308:OB03:LearningThemeL2:06\"}", CJ_contentRequirement: "运用地图和相关资料，描述并简要归纳世界人口数量变化和人口空间分布特点。通过阅读图像、观看视频或实地考察等，描述城镇与乡村的景观特征及其变化。运用反映人种、语言、宗教、习俗等内容的图文资料，描述世界文化的丰富多彩，树立尊重世界文化多样性的意识。", CJ_ThemeL1: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:03", CJ_ThemeL2: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"};

MERGE (n:LearningThemeL3 {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04", title: "发展与合作", description: "人文环境的三级主题：发展与合作", subject: "SB0308", type: "LearningThemeL3", applicableLevel: "OB03", contentJson: "{\"contentRequirement\": \"以某发达国家和某发展中国家为例，描述不同国家发展水平的差异。结合实例，说明交通运输在全球经济发展中的重要作用。结合实例，说明加强国际合作的重要意义。\", \"ThemeL1\": \"urn:jy:Geography:SB0308:OB03:LearningThemeL1:03\", \"ThemeL2\": \"urn:jy:Geography:SB0308:OB03:LearningThemeL2:06\"}", CJ_contentRequirement: "以某发达国家和某发展中国家为例，描述不同国家发展水平的差异。结合实例，说明交通运输在全球经济发展中的重要作用。结合实例，说明加强国际合作的重要意义。", CJ_ThemeL1: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:03", CJ_ThemeL2: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01", title: "人地协调观", description: "指人们对人类活动与地理环境之间的关系秉持的正确价值观。地理环境是人类生存的基础，人类活动深刻影响着地理环境，协调人类活动与地理环境的关系，是建立人与自然生命共同体的需要。人地协调观的培育，有助于学生形成尊重、顺应和保护自然，绿色发展，国土安全等观念，滋养人文情怀，增强社会责任感。", subject: "SB0308", type: "CoreLiteracy", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02", title: "综合思维", description: "指人们从综合的视角认识地理环境及人地关系的思维方式和能力。人地系统是一个综合体，需要从多种地理要素相互联系、时空变化等角度加以认识。综合思维的培育，有助于学生形成系统、动态、辩证地看待问题的思维方式，树立求真务实、开拓创新的科学精神。", subject: "SB0308", type: "CoreLiteracy", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03", title: "区域认知", description: "指人们从空间—区域的视角认识地理环境及人地关系的思维方式和能力。人类生存的地理环境复杂多样，人们将其划分成不同空间尺度、不同类型的区域加以认识。区域认知的培育，有助于学生建立地理空间观念，认识不同的区域既各有特色，又相互联系，增强热爱家乡的情感和国家认同感，增进对世界的理解，逐步形成人类命运共同体意识。", subject: "SB0308", type: "CoreLiteracy", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04", title: "地理实践力", description: "指人们在地理实验、社会调查、野外考察等地理实践活动中所具备的行动力和意志品质。地理实验、社会调查、野外考察是地理学常用的研究方法，也是地理课程重要的学习方式。地理实践力的培育，有助于学生在真实环境中运用适当的地理实践活动方式，观察和认识地理环境，体验和感悟人地关系，并在活动中做到知行合一、乐学善学、不畏困难。", subject: "SB0308", type: "CoreLiteracy", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:01"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:01", type: "Section", title: "第一节 地球的宇宙环境", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第一章 地球\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第一章 地球"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:02"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:02", type: "Section", title: "第二节 地球与地球仪", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第一章 地球\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第一章 地球"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:03"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:03", type: "Section", title: "第三节 地球的运动", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第一章 地球\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第一章 地球"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:04"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:04", type: "Section", title: "第一节 地图的阅读", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第二章 地图\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第二章 地图"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:05"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:05", type: "Section", title: "第二节 地形图的判读", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第二章 地图\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第二章 地图"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:06"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:06", type: "Section", title: "第三节 地图的选择和应用", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第二章 地图\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第二章 地图"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:07"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:07", type: "Section", title: "第一节 大洲和大洋", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第三章 陆地和海洋\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第三章 陆地和海洋"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:08"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:08", type: "Section", title: "第二节 世界的地形", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第三章 陆地和海洋\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第三章 陆地和海洋"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:09"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:09", type: "Section", title: "第三节 海陆的变迁", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第三章 陆地和海洋\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第三章 陆地和海洋"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:10"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:10", type: "Section", title: "第一节 多变的天气", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第四章 天气与气候\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第四章 天气与气候"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:11"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:11", type: "Section", title: "第二节 气温的变化与分布", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第四章 天气与气候\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第四章 天气与气候"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:12"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:12", type: "Section", title: "第三节 降水的变化与分布", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第四章 天气与气候\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第四章 天气与气候"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:13"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:13", type: "Section", title: "第四节 世界的气候", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第四章 天气与气候\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第四章 天气与气候"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:14"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:14", type: "Section", title: "第一节 人口与人种", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第五章 居民与文化\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第五章 居民与文化"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:15"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:15", type: "Section", title: "第二节 城镇与乡村", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第五章 居民与文化\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第五章 居民与文化"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:16"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:16", type: "Section", title: "第三节 多样的文化", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第五章 居民与文化\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第五章 居民与文化"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:17"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:17", type: "Section", title: "第一节 自然环境", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"new\", \"chapterTitle\": \"第七章 我们生活的大洲——亚洲\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "new", CJ_chapterTitle: "第七章 我们生活的大洲——亚洲"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:18"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:18", type: "Section", title: "第二节 人文环境", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"new\", \"chapterTitle\": \"第七章 我们生活的大洲——亚洲\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "new", CJ_chapterTitle: "第七章 我们生活的大洲——亚洲"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:19"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:19", type: "Section", title: "第一节 日本", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"new\", \"chapterTitle\": \"第八章 我们邻近的地区和国家\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "new", CJ_chapterTitle: "第八章 我们邻近的地区和国家"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:20"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:20", type: "Section", title: "第二节 东南亚", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"new\", \"chapterTitle\": \"第八章 我们邻近的地区和国家\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "new", CJ_chapterTitle: "第八章 我们邻近的地区和国家"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:21"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:21", type: "Section", title: "第三节 印度", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"new\", \"chapterTitle\": \"第八章 我们邻近的地区和国家\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "new", CJ_chapterTitle: "第八章 我们邻近的地区和国家"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:22"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:22", type: "Section", title: "第四节 俄罗斯", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"new\", \"chapterTitle\": \"第八章 我们邻近的地区和国家\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "new", CJ_chapterTitle: "第八章 我们邻近的地区和国家"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:23"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:23", type: "Section", title: "第一节 西亚", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"new\", \"chapterTitle\": \"第九章 东半球其他的地区和国家\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "new", CJ_chapterTitle: "第九章 东半球其他的地区和国家"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:24"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:24", type: "Section", title: "第二节 欧洲西部", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"new\", \"chapterTitle\": \"第九章 东半球其他的地区和国家\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "new", CJ_chapterTitle: "第九章 东半球其他的地区和国家"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:25"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:25", type: "Section", title: "第三节 撒哈拉以南非洲", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"new\", \"chapterTitle\": \"第九章 东半球其他的地区和国家\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "new", CJ_chapterTitle: "第九章 东半球其他的地区和国家"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:26"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:26", type: "Section", title: "第四节 澳大利亚", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"new\", \"chapterTitle\": \"第九章 东半球其他的地区和国家\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "new", CJ_chapterTitle: "第九章 东半球其他的地区和国家"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:27"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:27", type: "Section", title: "第一节 美国", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"new\", \"chapterTitle\": \"第十章 西半球的国家\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "new", CJ_chapterTitle: "第十章 西半球的国家"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:28"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:28", type: "Section", title: "第二节 巴西", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"new\", \"chapterTitle\": \"第十章 西半球的国家\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "new", CJ_chapterTitle: "第十章 西半球的国家"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:29"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:29", type: "Section", title: "第一节 疆域", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第一章 从世界看中国\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第一章 从世界看中国"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:30"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:30", type: "Section", title: "第二节 人口", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第一章 从世界看中国\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第一章 从世界看中国"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:31"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:31", type: "Section", title: "第三节 民族", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第一章 从世界看中国\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第一章 从世界看中国"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:32"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:32", type: "Section", title: "第一节 地形", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第二章 中国的自然环境\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第二章 中国的自然环境"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:33"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:33", type: "Section", title: "第二节 气候", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第二章 中国的自然环境\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第二章 中国的自然环境"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:34"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:34", type: "Section", title: "第三节 河流与湖泊", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第二章 中国的自然环境\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第二章 中国的自然环境"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:35"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:35", type: "Section", title: "第一节 土地资源", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第三章 中国的自然资源\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第三章 中国的自然资源"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:36"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:36", type: "Section", title: "第二节 水资源", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第三章 中国的自然资源\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第三章 中国的自然资源"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:37"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:37", type: "Section", title: "第三节 矿产资源", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第三章 中国的自然资源\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第三章 中国的自然资源"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:38"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:38", type: "Section", title: "第四节 海洋资源", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第三章 中国的自然资源\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第三章 中国的自然资源"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:39"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:39", type: "Section", title: "第一节 农业", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第四章 中国的经济发展\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第四章 中国的经济发展"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:40"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:40", type: "Section", title: "第二节 工业", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第四章 中国的经济发展\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第四章 中国的经济发展"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:41"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:41", type: "Section", title: "第三节 交通运输", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第四章 中国的经济发展\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第四章 中国的经济发展"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:42"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:42", type: "Section", title: "第一节 自然灾害与防灾减灾", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第五章 建设美丽中国\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第五章 建设美丽中国"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:43"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:43", type: "Section", title: "第二节 环境保护与发展", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\", \"chapterTitle\": \"第五章 建设美丽中国\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new", CJ_chapterTitle: "第五章 建设美丽中国"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:44"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:44", type: "Section", title: "第一节　自然特征与农业", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\", \"chapterTitle\": \"第六章　北方地区\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old", CJ_chapterTitle: "第六章　北方地区"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:45"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:45", type: "Section", title: "第二节　“白山黑水”──东北三省", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\", \"chapterTitle\": \"第六章　北方地区\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old", CJ_chapterTitle: "第六章　北方地区"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:46"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:46", type: "Section", title: "第三节　世界最大的黄土堆积区──黄土高原", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\", \"chapterTitle\": \"第六章　北方地区\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old", CJ_chapterTitle: "第六章　北方地区"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:47"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:47", type: "Section", title: "第四节　祖国的首都──北京", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\", \"chapterTitle\": \"第六章　北方地区\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old", CJ_chapterTitle: "第六章　北方地区"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:48"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:48", type: "Section", title: "第一节　自然特征与农业", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\", \"chapterTitle\": \"第七章　南方地区\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old", CJ_chapterTitle: "第七章　南方地区"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:49"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:49", type: "Section", title: "第二节　“鱼米之乡”──长江三角洲地区", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\", \"chapterTitle\": \"第七章　南方地区\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old", CJ_chapterTitle: "第七章　南方地区"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:50"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:50", type: "Section", title: "第三节　“东方明珠”──香港和澳门", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\", \"chapterTitle\": \"第七章　南方地区\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old", CJ_chapterTitle: "第七章　南方地区"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:51"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:51", type: "Section", title: "第四节　祖国的神圣领土──台湾省", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\", \"chapterTitle\": \"第七章　南方地区\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old", CJ_chapterTitle: "第七章　南方地区"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:52"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:52", type: "Section", title: "第一节　自然特征与农业", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\", \"chapterTitle\": \"第八章　西北地区\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old", CJ_chapterTitle: "第八章　西北地区"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:53"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:53", type: "Section", title: "第二节　干旱的宝地──塔里木盆地", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\", \"chapterTitle\": \"第八章　西北地区\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old", CJ_chapterTitle: "第八章　西北地区"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:54"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:54", type: "Section", title: "第一节　自然特征与农业", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\", \"chapterTitle\": \"第九章　青藏地区\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old", CJ_chapterTitle: "第九章　青藏地区"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:55"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:55", type: "Section", title: "第二节　高原湿地──三江源地区", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\", \"chapterTitle\": \"第九章　青藏地区\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old", CJ_chapterTitle: "第九章　青藏地区"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:56"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:56", type: "Section", title: "认识区域位置", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\", \"chapterTitle\": \"中考复习\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old", CJ_chapterTitle: "中考复习"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:57"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:57", type: "Section", title: "中国地理", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\", \"chapterTitle\": \"中考复习\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old", CJ_chapterTitle: "中考复习"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:58"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:58", type: "Section", title: "中国的气候", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\", \"chapterTitle\": \"中考复习\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old", CJ_chapterTitle: "中考复习"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:59"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:59", type: "Section", title: "人口专题", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\", \"chapterTitle\": \"中考复习\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old", CJ_chapterTitle: "中考复习"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:60"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:60", type: "Section", title: "农业专题", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\", \"chapterTitle\": \"中考复习\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old", CJ_chapterTitle: "中考复习"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:61"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:61", type: "Section", title: "地球运动", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\", \"chapterTitle\": \"中考复习\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old", CJ_chapterTitle: "中考复习"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:62"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:62", type: "Section", title: "工业专题", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\", \"chapterTitle\": \"中考复习\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old", CJ_chapterTitle: "中考复习"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:63"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:63", type: "Section", title: "气候专题", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\", \"chapterTitle\": \"中考复习\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old", CJ_chapterTitle: "中考复习"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:64"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:64", type: "Section", title: "河流专题", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\", \"chapterTitle\": \"中考复习\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old", CJ_chapterTitle: "中考复习"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:65"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:65", type: "Section", title: "自然专题", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\", \"chapterTitle\": \"中考复习\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old", CJ_chapterTitle: "中考复习"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:66"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:66", type: "Section", title: "中国地势地形", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\", \"chapterTitle\": \"中考复习\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old", CJ_chapterTitle: "中考复习"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:67"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:67", type: "Section", title: "大洲概况", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\", \"chapterTitle\": \"中考复习\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old", CJ_chapterTitle: "中考复习"};

MERGE (n:Section {identifier: "urn:jy:Geography:SB0308:OB03:Section:68"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Section:68", type: "Section", title: "中考串讲", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\", \"chapterTitle\": \"中考复习\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old", CJ_chapterTitle: "中考复习"};

MERGE (n:CourseTarget {identifier: "urn:jy:Geography:SB0308:OB03:CourseTarget:01"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:CourseTarget:01", title: "人地协调观目标要求", description: "学生能够初步认识地理环境是人类生存的基础，人类活动深刻影响着地理环境，协调人地关系是人类社会可持续发展的必然选择，人与自然和谐共生是中国式现代化的特色之一；能够运用所学的知识、方法和工具，初步分析和评价世界、中国、家乡的人口、资源、环境和发展状况，并具有遵守相关法律法规的意识；能够初步形成尊重自然、和谐发展的观念。", subject: "SB0308", type: "CourseTarget", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:CourseTarget {identifier: "urn:jy:Geography:SB0308:OB03:CourseTarget:02"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:CourseTarget:02", title: "综合思维目标要求", description: "学生能够初步理解地理事物和现象是由地理要素在不同时空条件下相互作用形成的；能够通过观察、比较、分析等方法，认识地理事物和现象的自然、人文特征及其时空变化特点，初步形成从地理综合的视角看待和分析问题的意识和能力；能够初步具备崇尚真知、独立思考、大胆尝试等科学品质。", subject: "SB0308", type: "CourseTarget", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:CourseTarget {identifier: "urn:jy:Geography:SB0308:OB03:CourseTarget:03"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:CourseTarget:03", title: "区域认知目标要求", description: "学生能够初步理解地球表层可分为不同空间尺度、不同类型的区域，每一个区域都有各自的特征，不同区域之间会产生联系；能够运用多种地理工具获取区域信息，认识区域特征、区域差异和区域联系，初步形成从空间—区域的视角看待、分析问题的意识和能力；能够增进热爱家乡、热爱祖国的情感，形成人类命运共同体意识。", subject: "SB0308", type: "CourseTarget", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:CourseTarget {identifier: "urn:jy:Geography:SB0308:OB03:CourseTargete:04"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:CourseTargete:04", title: "地理实践力目标要求", description: "学生能够初步掌握地理实验、社会调查、野外考察等地理实践活动的基本方法；能够在校内、校外的真实环境下，运用所学知识和地理工具，通过地理实践活动，观察和感悟地理环境及人们生产生活的状态，尝试解决实际地理问题，增强信息运用、实践操作等行动力；能够养成在实践活动中乐于合作、勇于克服困难等品质。", subject: "SB0308", type: "CourseTarget", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:01"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:01", type: "Chapter", title: "第一章 地球", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:02"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:02", type: "Chapter", title: "第二章 地图", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:03"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:03", type: "Chapter", title: "【跨学科主题学习】美化校园", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:04"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:04", type: "Chapter", title: "第三章 陆地和海洋", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:05"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:05", type: "Chapter", title: "第四章 天气与气候", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:06"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:06", type: "Chapter", title: "第五章 居民与文化", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:07"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:07", type: "Chapter", title: "第六章 发展与合作", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:08"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:08", type: "Chapter", title: "【跨学科主题学习】探索外来食料作物传播史", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:09"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:09", type: "Chapter", title: "第七章 我们生活的大洲——亚洲", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "new"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:10"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:10", type: "Chapter", title: "第八章 我们邻近的地区和国家", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "new"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:11"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:11", type: "Chapter", title: "第九章 东半球其他的地区和国家", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "new"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:12"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:12", type: "Chapter", title: "第十章 西半球的国家", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "new"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:13"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:13", type: "Chapter", title: "第十一章 极地地区", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"七年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "七年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "new"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:14"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:14", type: "Chapter", title: "第一章 从世界看中国", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:15"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:15", type: "Chapter", title: "第二章 中国的自然环境", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:16"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:16", type: "Chapter", title: "【跨学科主题学习】探究\"束水攻沙\"原理", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:17"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:17", type: "Chapter", title: "第三章 中国的自然资源", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:18"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:18", type: "Chapter", title: "【跨学科主题学习】认识我国的\"世界灌溉工程遗产\"", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:19"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:19", type: "Chapter", title: "第四章 中国的经济发展", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:20"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:20", type: "Chapter", title: "第五章 建设美丽中国", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"上册\", \"year\": \"new\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "上册", CJ_year: "new"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:21"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:21", type: "Chapter", title: "第五章　中国的地理差异", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:22"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:22", type: "Chapter", title: "第六章　北方地区", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:23"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:23", type: "Chapter", title: "第七章　南方地区", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:24"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:24", type: "Chapter", title: "第八章　西北地区", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:25"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:25", type: "Chapter", title: "第九章　青藏地区", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:26"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:26", type: "Chapter", title: "第十章　中国在世界中", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:Chapter {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:27"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:27", type: "Chapter", title: "中考复习", description: "", subject: "SB0308", applicableLevel: "OB03", contentJson: "{\"academicTerm\": \"初中\", \"grade\": \"八年级\", \"edition\": \"人教版\", \"volume\": \"下册\", \"year\": \"old\"}", CJ_academicTerm: "初中", CJ_grade: "八年级", CJ_edition: "人教版", CJ_volume: "下册", CJ_year: "old"};

MERGE (n:LearningThemeL2 {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:01"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:01", title: "地球在宇宙中", description: "地球的宇宙环境二级主题：地球在宇宙中", subject: "SB0308", type: "LearningThemeL2", applicableLevel: "OB03", contentJson: "{\"contentRequirement\": \"结合科学故事、史实材料等，说出人类对地球形状的认识过程，使用数据、类比等方式描述地球的大小。运用图片、影视资料以及数字技术等手段，描述地球的宇宙环境、地球在太阳系中的位置，认识地球是迄今人类唯一的家园。\", \"ThemeL1\": \"urn:jy:Geography:SB0308:OB03:LearningThemeL1:01\"}", CJ_contentRequirement: "结合科学故事、史实材料等，说出人类对地球形状的认识过程，使用数据、类比等方式描述地球的大小。运用图片、影视资料以及数字技术等手段，描述地球的宇宙环境、地球在太阳系中的位置，认识地球是迄今人类唯一的家园。", CJ_ThemeL1: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:01"};

MERGE (n:LearningThemeL2 {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:02"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:02", title: "太空探索", description: "地球的宇宙环境二级主题：太空探索", subject: "SB0308", type: "LearningThemeL2", applicableLevel: "OB03", contentJson: "{\"contentRequirement\": \"结合图片、影视资料等，描述探月工程、火星探测以及空间站建设等人类太空探索的进展与意义。收集中国航天及太空观测发展的相关材料，举例说出中国太空探索的成就。\", \"ThemeL1\": \"urn:jy:Geography:SB0308:OB03:LearningThemeL1:01\"}", CJ_contentRequirement: "结合图片、影视资料等，描述探月工程、火星探测以及空间站建设等人类太空探索的进展与意义。收集中国航天及太空观测发展的相关材料，举例说出中国太空探索的成就。", CJ_ThemeL1: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:01"};

MERGE (n:LearningThemeL2 {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:03"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:03", title: "地球自转", description: "地球的运动二级主题：地球自转", subject: "SB0308", type: "LearningThemeL2", applicableLevel: "OB03", contentJson: "{\"contentRequirement\": \"运用地球仪或软件，演示地球的自转运动，说出地球的自转方向、周期。结合实例，说出地球自转产生的主要自然现象及其对人们生产生活的影响。\", \"ThemeL1\": \"urn:jy:Geography:SB0308:OB03:LearningThemeL1:02\"}", CJ_contentRequirement: "运用地球仪或软件，演示地球的自转运动，说出地球的自转方向、周期。结合实例，说出地球自转产生的主要自然现象及其对人们生产生活的影响。", CJ_ThemeL1: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:02"};

MERGE (n:LearningThemeL2 {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:04"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:04", title: "地球公转", description: "地球的运动二级主题：地球公转", subject: "SB0308", type: "LearningThemeL2", applicableLevel: "OB03", contentJson: "{\"contentRequirement\": \"运用模型或软件，演示地球的公转运动，说出地球的公转方向、周期。结合实例，说出地球公转产生的主要自然现象及其对人们生产生活的影响。\", \"ThemeL1\": \"urn:jy:Geography:SB0308:OB03:LearningThemeL1:02\"}", CJ_contentRequirement: "运用模型或软件，演示地球的公转运动，说出地球的公转方向、周期。结合实例，说出地球公转产生的主要自然现象及其对人们生产生活的影响。", CJ_ThemeL1: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:02"};

MERGE (n:LearningThemeL2 {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05", title: "自然环境", description: "地球的表层二级主题：自然环境", subject: "SB0308", type: "LearningThemeL2", applicableLevel: "OB03", contentJson: "{\"contentRequirement\": \"(1) 陆地和海洋：阅读世界地图，描述世界海陆分布状况，说出七大洲、四大洋的分布。通过阅读地形图、图像，观看影视资料，观察地形模型或实地考察等，区别山地、丘陵、高原、平原、盆地的形态特征。在世界地形图上指出陆地主要地形和海底主要地形的分布，观察地形分布大势。结合实例，说明海洋和陆地处于不断的运动变化之中；说出板块构造学说的基本观点，并解释世界火山、地震带的分布与板块运动的关系。结合实例，说出海洋对人们生产生活的影响。(2) 天气与气候：收看天气预报节目，识别常见的天气符号，模拟播报天气。阅读世界年平均气温和1月、7月平均气温分布图，描述和简要归纳世界气温分布特点。阅读世界年降水量分布图，描述和简要归纳世界降水分布特点。阅读某地区气温、降水数据资料，并据此绘制气温曲线图和降水量柱状图，说出气温与降水量随时间变化的特点。阅读世界气候类型分布图，描述世界主要气候类型的分布特征；结合实例，说明纬度位置、海陆分布、地形等对气候的影响。结合实例，说明天气和气候对人们生产生活的影响。\", \"ThemeL1\": \"urn:jy:Geography:SB0308:OB03:LearningThemeL1:03\"}", CJ_contentRequirement: "(1) 陆地和海洋：阅读世界地图，描述世界海陆分布状况，说出七大洲、四大洋的分布。通过阅读地形图、图像，观看影视资料，观察地形模型或实地考察等，区别山地、丘陵、高原、平原、盆地的形态特征。在世界地形图上指出陆地主要地形和海底主要地形的分布，观察地形分布大势。结合实例，说明海洋和陆地处于不断的运动变化之中；说出板块构造学说的基本观点，并解释世界火山、地震带的分布与板块运动的关系。结合实例，说出海洋对人们生产生活的影响。(2) 天气与气候：收看天气预报节目，识别常见的天气符号，模拟播报天气。阅读世界年平均气温和1月、7月平均气温分布图，描述和简要归纳世界气温分布特点。阅读世界年降水量分布图，描述和简要归纳世界降水分布特点。阅读某地区气温、降水数据资料，并据此绘制气温曲线图和降水量柱状图，说出气温与降水量随时间变化的特点。阅读世界气候类型分布图，描述世界主要气候类型的分布特征；结合实例，说明纬度位置、海陆分布、地形等对气候的影响。结合实例，说明天气和气候对人们生产生活的影响。", CJ_ThemeL1: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:03"};

MERGE (n:LearningThemeL2 {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06", title: "人文环境", description: "地球的表层二级主题：人文环境", subject: "SB0308", type: "LearningThemeL2", applicableLevel: "OB03", contentJson: "{\"contentRequirement\": \"(1) 居民与文化：运用地图和相关资料，描述并简要归纳世界人口数量变化和人口空间分布特点。通过阅读图像、观看视频或实地考察等，描述城镇与乡村的景观特征及其变化。运用反映人种、语言、宗教、习俗等内容的图文资料，描述世界文化的丰富多彩，树立尊重世界文化多样性的意识。(2) 发展与合作：以某发达国家和某发展中国家为例，描述不同国家发展水平的差异。结合实例，说明交通运输在全球经济发展中的重要作用。结合实例，说明加强国际合作的重要意义。\", \"ThemeL1\": \"urn:jy:Geography:SB0308:OB03:LearningThemeL1:03\"}", CJ_contentRequirement: "(1) 居民与文化：运用地图和相关资料，描述并简要归纳世界人口数量变化和人口空间分布特点。通过阅读图像、观看视频或实地考察等，描述城镇与乡村的景观特征及其变化。运用反映人种、语言、宗教、习俗等内容的图文资料，描述世界文化的丰富多彩，树立尊重世界文化多样性的意识。(2) 发展与合作：以某发达国家和某发展中国家为例，描述不同国家发展水平的差异。结合实例，说明交通运输在全球经济发展中的重要作用。结合实例，说明加强国际合作的重要意义。", CJ_ThemeL1: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:03"};

MERGE (n:LearningThemeL2 {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:07"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:07", title: "认识大洲", description: "认识世界二级主题：认识大洲", subject: "SB0308", type: "LearningThemeL2", applicableLevel: "OB03", contentJson: "{\"contentRequirement\": \"运用地图和相关资料，描述某大洲的地理位置，并依据大洲地理位置特点，判断大洲所处热量带和降水的空间分布概况。运用地图和相关资料，简要归纳某大洲的地形、气候、人口、经济等地理特征。\", \"ThemeL1\": \"urn:jy:Geography:SB0308:OB03:LearningThemeL1:04\"}", CJ_contentRequirement: "运用地图和相关资料，描述某大洲的地理位置，并依据大洲地理位置特点，判断大洲所处热量带和降水的空间分布概况。运用地图和相关资料，简要归纳某大洲的地形、气候、人口、经济等地理特征。", CJ_ThemeL1: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:04"};

MERGE (n:LearningThemeL2 {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:08"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:08", title: "认识地区", description: "认识世界二级主题：认识地区", subject: "SB0308", type: "LearningThemeL2", applicableLevel: "OB03", contentJson: "{\"contentRequirement\": \"运用地图和相关资料，描述某地区的地理位置，简要归纳自然地理特征，说明该特征对当地人们生产生活的影响。以某地区的一种自然资源为例，说出该资源在当地的分布状况、对外输出地区以及对当地乃至世界的重要意义。结合实例，说明某地区发展旅游业的优势。根据南极、北极地区自然地理环境的特殊性，说明开展极地科学考察和保护极地环境的重要性。\", \"ThemeL1\": \"urn:jy:Geography:SB0308:OB03:LearningThemeL1:04\"}", CJ_contentRequirement: "运用地图和相关资料，描述某地区的地理位置，简要归纳自然地理特征，说明该特征对当地人们生产生活的影响。以某地区的一种自然资源为例，说出该资源在当地的分布状况、对外输出地区以及对当地乃至世界的重要意义。结合实例，说明某地区发展旅游业的优势。根据南极、北极地区自然地理环境的特殊性，说明开展极地科学考察和保护极地环境的重要性。", CJ_ThemeL1: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:04"};

MERGE (n:LearningThemeL2 {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:09"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:09", title: "认识国家", description: "认识世界二级主题：认识国家", subject: "SB0308", type: "LearningThemeL2", applicableLevel: "OB03", contentJson: "{\"contentRequirement\": \"运用地图和相关资料，说出某国家的地理位置、范围、领土构成和首都；选择与该国地理位置差异明显的国家，比较它们纬度位置和海陆位置的差异。运用地图和相关资料，描述某国家突出的自然地理特征。运用地图和相关资料，说出某国家人文地理主要特点及其与自然地理环境的联系。运用地图和相关资料，联系某国家的自然地理环境特点，结合实例简要分析该国因地制宜发展经济的途径。运用地图和相关资料，简要分析某国家在资源开发、环境保护方面的经验和教训。结合实例，简要说明一个国家对某地自然环境的改造活动对其他地方自然环境的影响。结合某国家的实例，简要说明该国家与其他国家在经济社会等方面的联系及其意义。\", \"ThemeL1\": \"urn:jy:Geography:SB0308:OB03:LearningThemeL1:04\"}", CJ_contentRequirement: "运用地图和相关资料，说出某国家的地理位置、范围、领土构成和首都；选择与该国地理位置差异明显的国家，比较它们纬度位置和海陆位置的差异。运用地图和相关资料，描述某国家突出的自然地理特征。运用地图和相关资料，说出某国家人文地理主要特点及其与自然地理环境的联系。运用地图和相关资料，联系某国家的自然地理环境特点，结合实例简要分析该国因地制宜发展经济的途径。运用地图和相关资料，简要分析某国家在资源开发、环境保护方面的经验和教训。结合实例，简要说明一个国家对某地自然环境的改造活动对其他地方自然环境的影响。结合某国家的实例，简要说明该国家与其他国家在经济社会等方面的联系及其意义。", CJ_ThemeL1: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:04"};

MERGE (n:LearningThemeL2 {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10", title: "认识中国全貌", description: "认识中国二级主题：认识中国全貌", subject: "SB0308", type: "LearningThemeL2", applicableLevel: "OB03", contentJson: "{\"contentRequirement\": \"运用地图，描述中国的地理位置与疆域特征，说明南海诸岛是中国领土的组成部分，钓鱼岛及其附属岛屿是中国固有领土，增强国家版图意识与海洋权益意识。运用中国行政区划图，识别34个省级行政区，记住它们的简称和行政中心。运用地图和相关资料，简要归纳中国地形、气候、河湖等的特征；简要分析影响中国气候的主要因素。运用地图和相关资料，描述长江、黄河的特点，举例说明其对经济发展和人们生活的影响。运用地图和相关资料，描述中国人口的基本状况和变化。运用地图和相关资料，简要归纳中国的民族分布特点，树立中华民族共同体意识。运用地图和相关资料，描述中国水资源、土地资源、矿产资源和海洋资源等自然资源的主要特征，举例说明自然资源与人们生产生活的关系，认识开发、利用、保护自然资源的重要意义。借助地图和相关资料，举例描述中国农业、工业等生产活动的分布，并用实例说明科学技术在产业发展中的重要作用。运用地图和相关资料，说明中国交通运输线的分布特征，以及高速公路、高速铁路的快速发展对人们生产生活的影响。运用地图和相关资料，描述中国主要的自然灾害和环境问题；针对某一自然灾害或环境问题提出合理的防治建议；掌握一定的气象灾害和地质灾害的安全防护技能。\", \"ThemeL1\": \"urn:jy:Geography:SB0308:OB03:LearningThemeL1:05\"}", CJ_contentRequirement: "运用地图，描述中国的地理位置与疆域特征，说明南海诸岛是中国领土的组成部分，钓鱼岛及其附属岛屿是中国固有领土，增强国家版图意识与海洋权益意识。运用中国行政区划图，识别34个省级行政区，记住它们的简称和行政中心。运用地图和相关资料，简要归纳中国地形、气候、河湖等的特征；简要分析影响中国气候的主要因素。运用地图和相关资料，描述长江、黄河的特点，举例说明其对经济发展和人们生活的影响。运用地图和相关资料，描述中国人口的基本状况和变化。运用地图和相关资料，简要归纳中国的民族分布特点，树立中华民族共同体意识。运用地图和相关资料，描述中国水资源、土地资源、矿产资源和海洋资源等自然资源的主要特征，举例说明自然资源与人们生产生活的关系，认识开发、利用、保护自然资源的重要意义。借助地图和相关资料，举例描述中国农业、工业等生产活动的分布，并用实例说明科学技术在产业发展中的重要作用。运用地图和相关资料，说明中国交通运输线的分布特征，以及高速公路、高速铁路的快速发展对人们生产生活的影响。运用地图和相关资料，描述中国主要的自然灾害和环境问题；针对某一自然灾害或环境问题提出合理的防治建议；掌握一定的气象灾害和地质灾害的安全防护技能。", CJ_ThemeL1: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:05"};

MERGE (n:LearningThemeL2 {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11", title: "认识分区", description: "认识中国二级主题：认识分区", subject: "SB0308", type: "LearningThemeL2", applicableLevel: "OB03", contentJson: "{\"contentRequirement\": \"运用地图、图像等资料，说明秦岭—淮河等重要自然地理界线在地理分区中的意义。运用地图和相关资料，说出某区域的地理位置和自然地理特征，说明自然条件对该区域经济社会发展的影响，认识因地制宜的重要性。结合实例，描述不同区域的差异，说明区域联系和协同发展对经济社会发展的意义。运用地图和相关资料，描述某区域城乡分布和变化，推测该区域城乡发展图景。进行野外考察或运用相关资料，说明自然环境与地方文化景观之间的关系。运用地图和相关资料，说明北京的自然地理特点、历史文化传统和城市建设成就，认识首都职能。运用地图和相关资料，说明香港、澳门的自然地理、历史文化传统和经济建设特点，以及港澳与内地经济发展的相互促进作用，增强区域联系的意识。运用地图和相关资料，说明台湾的自然地理、历史文化传统和现代化建设特点，认识台湾自古以来就是中国不可分割的领土，以及促进海峡两岸经济社会融合发展的意义。\", \"ThemeL1\": \"urn:jy:Geography:SB0308:OB03:LearningThemeL1:05\"}", CJ_contentRequirement: "运用地图、图像等资料，说明秦岭—淮河等重要自然地理界线在地理分区中的意义。运用地图和相关资料，说出某区域的地理位置和自然地理特征，说明自然条件对该区域经济社会发展的影响，认识因地制宜的重要性。结合实例，描述不同区域的差异，说明区域联系和协同发展对经济社会发展的意义。运用地图和相关资料，描述某区域城乡分布和变化，推测该区域城乡发展图景。进行野外考察或运用相关资料，说明自然环境与地方文化景观之间的关系。运用地图和相关资料，说明北京的自然地理特点、历史文化传统和城市建设成就，认识首都职能。运用地图和相关资料，说明香港、澳门的自然地理、历史文化传统和经济建设特点，以及港澳与内地经济发展的相互促进作用，增强区域联系的意识。运用地图和相关资料，说明台湾的自然地理、历史文化传统和现代化建设特点，认识台湾自古以来就是中国不可分割的领土，以及促进海峡两岸经济社会融合发展的意义。", CJ_ThemeL1: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:05"};

MERGE (n:LearningThemeL2 {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:12"})
SET n += {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:12", title: "认识家乡", description: "认识中国二级主题：认识家乡", subject: "SB0308", type: "LearningThemeL2", applicableLevel: "OB03", contentJson: "{\"contentRequirement\": \"进行野外考察并利用图文资料，描述家乡典型的自然与人文地理事物和现象，归纳家乡地理环境的特点，举例说明其形成过程及原因。与他人交流各自对家乡的看法并说明理由，感悟人们在不同体验和感知背景下对家乡形成的不同看法。举例说明家乡环境及生产发展给当地居民生活带来的影响和变化，并尝试用绿色发展理念，对家乡的发展规划提出合理建议，增强热爱家乡、建设家乡的意识。\", \"ThemeL1\": \"urn:jy:Geography:SB0308:OB03:LearningThemeL1:05\"}", CJ_contentRequirement: "进行野外考察并利用图文资料，描述家乡典型的自然与人文地理事物和现象，归纳家乡地理环境的特点，举例说明其形成过程及原因。与他人交流各自对家乡的看法并说明理由，感悟人们在不同体验和感知背景下对家乡形成的不同看法。举例说明家乡环境及生产发展给当地居民生活带来的影响和变化，并尝试用绿色发展理念，对家乡的发展规划提出合理建议，增强热爱家乡、建设家乡的意识。", CJ_ThemeL1: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:05"};

// =====================================================
// 导入关系
// =====================================================

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MERGE (source)-[r:ChapterCoversLearningThemeL3]->(target)
SET r.label = "章节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:03"})
MERGE (source)-[r:LearningThemeL3CoveredByChapter]->(target)
SET r.label = "三级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:ChapterCoversLearningThemeL3]->(target)
SET r.label = "章节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:07"})
MERGE (source)-[r:LearningThemeL3CoveredByChapter]->(target)
SET r.label = "三级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MERGE (source)-[r:ChapterCoversLearningThemeL3]->(target)
SET r.label = "章节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:08"})
MERGE (source)-[r:LearningThemeL3CoveredByChapter]->(target)
SET r.label = "三级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:13"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:ChapterCoversLearningThemeL3]->(target)
SET r.label = "章节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:13"})
MERGE (source)-[r:LearningThemeL3CoveredByChapter]->(target)
SET r.label = "三级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:13"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MERGE (source)-[r:ChapterCoversLearningThemeL3]->(target)
SET r.label = "章节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:13"})
MERGE (source)-[r:LearningThemeL3CoveredByChapter]->(target)
SET r.label = "三级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:16"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:ChapterCoversLearningThemeL3]->(target)
SET r.label = "章节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:16"})
MERGE (source)-[r:LearningThemeL3CoveredByChapter]->(target)
SET r.label = "三级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:18"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MERGE (source)-[r:ChapterCoversLearningThemeL3]->(target)
SET r.label = "章节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:18"})
MERGE (source)-[r:LearningThemeL3CoveredByChapter]->(target)
SET r.label = "三级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:18"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:ChapterCoversLearningThemeL3]->(target)
SET r.label = "章节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:18"})
MERGE (source)-[r:LearningThemeL3CoveredByChapter]->(target)
SET r.label = "三级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:21"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:ChapterCoversLearningThemeL3]->(target)
SET r.label = "章节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:21"})
MERGE (source)-[r:LearningThemeL3CoveredByChapter]->(target)
SET r.label = "三级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:21"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MERGE (source)-[r:ChapterCoversLearningThemeL3]->(target)
SET r.label = "章节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:21"})
MERGE (source)-[r:LearningThemeL3CoveredByChapter]->(target)
SET r.label = "三级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:21"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MERGE (source)-[r:ChapterCoversLearningThemeL3]->(target)
SET r.label = "章节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:21"})
MERGE (source)-[r:LearningThemeL3CoveredByChapter]->(target)
SET r.label = "三级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:26"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:ChapterCoversLearningThemeL3]->(target)
SET r.label = "章节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:26"})
MERGE (source)-[r:LearningThemeL3CoveredByChapter]->(target)
SET r.label = "三级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:01"})
MERGE (source)-[r:literacyIsCoreValue]->(target)
SET r.label = "是课程内容蕴含的核心价值观 / isCoreValue";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:02"})
MERGE (source)-[r:literacyIsCoreValue]->(target)
SET r.label = "是课程内容蕴含的核心价值观 / isCoreValue";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:03"})
MERGE (source)-[r:literacyIsCoreValue]->(target)
SET r.label = "是课程内容蕴含的核心价值观 / isCoreValue";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:04"})
MERGE (source)-[r:literacyIsCoreValue]->(target)
SET r.label = "是课程内容蕴含的核心价值观 / isCoreValue";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:05"})
MERGE (source)-[r:literacyIsCoreValue]->(target)
SET r.label = "是课程内容蕴含的核心价值观 / isCoreValue";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:01"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:02"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:03"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:04"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:05"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:01"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:02"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:03"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:04"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:05"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:01"})
MERGE (source)-[r:literacyIsPracticedInCourse]->(target)
SET r.label = "在分析和解决地理实践中遇到问题时具备 / isPracticedInCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:02"})
MERGE (source)-[r:literacyIsPracticedInCourse]->(target)
SET r.label = "在分析和解决地理实践中遇到问题时具备 / isPracticedInCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:03"})
MERGE (source)-[r:literacyIsPracticedInCourse]->(target)
SET r.label = "在分析和解决地理实践中遇到问题时具备 / isPracticedInCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:04"})
MERGE (source)-[r:literacyIsPracticedInCourse]->(target)
SET r.label = "在分析和解决地理实践中遇到问题时具备 / isPracticedInCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:05"})
MERGE (source)-[r:literacyIsPracticedInCourse]->(target)
SET r.label = "在分析和解决地理实践中遇到问题时具备 / isPracticedInCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "培养 / guidesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "有助于学生形成 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "培养 / guidesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "树立绿色发展、共同发展、人地协调发展的观念 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "培养 / guidesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "有助于学生形成系统、动态、辩证的思维方式 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "培养 / guidesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "有助于学生建立地理空间观念 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "培养 / guidesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "有助于学生在真实或模拟环境中通过地理实践活动 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:literacyGuidesTheme]->(target)
SET r.label = "培养 / guidesTheme";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "说明加强国际合作的重要意义 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CourseTarget:01"})
MERGE (source)-[r:targetIsRequirementForLiteracy]->(target)
SET r.label = "是“人地协调观”的目标要求 / isTargetRequirementForLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CourseTarget:02"})
MERGE (source)-[r:targetIsRequirementForLiteracy]->(target)
SET r.label = "是“综合思维”的目标要求 / isTargetRequirementForLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CourseTarget:03"})
MERGE (source)-[r:targetIsRequirementForLiteracy]->(target)
SET r.label = "是“区域认知”的目标要求 / isTargetRequirementForLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CourseTargete:04"})
MERGE (source)-[r:targetIsRequirementForLiteracy]->(target)
SET r.label = "是“地理实践力”的目标要求 / isTargetRequirementForLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CourseTarget:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MERGE (source)-[r:isSpecificTargetOfCoreLiteracy]->(target)
SET r.label = "是地理学科核心素养的具体目标 / isSpecificTargetOfCoreLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CourseTarget:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MERGE (source)-[r:isSpecificTargetOfCoreLiteracy]->(target)
SET r.label = "是地理学科核心素养的具体目标 / isSpecificTargetOfCoreLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CourseTarget:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MERGE (source)-[r:isSpecificTargetOfCoreLiteracy]->(target)
SET r.label = "是地理学科核心素养的具体目标 / isSpecificTargetOfCoreLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CourseTargete:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MERGE (source)-[r:isSpecificTargetOfCoreLiteracy]->(target)
SET r.label = "是地理学科核心素养的具体目标 / isSpecificTargetOfCoreLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:01"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:01"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:02"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:01"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:01"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:02"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:03"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:03"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:04"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:03"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:04"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:05"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:06"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:07"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:08"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:09"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:10"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:11"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:12"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:13"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:13"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:14"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:14"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:15"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:15"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:16"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:16"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:17"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:17"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:18"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:18"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:19"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:09"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:19"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:20"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:08"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:20"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:21"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:09"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:21"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:22"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:09"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:22"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:23"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:08"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:23"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:24"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:08"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:24"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:25"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:08"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:25"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:26"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:09"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:26"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:27"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:09"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:27"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:28"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:09"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:28"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:29"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:29"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:30"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:30"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:31"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:31"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:32"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:32"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:33"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:33"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:34"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:34"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:35"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:35"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:36"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:36"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:37"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:37"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:38"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:38"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:39"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:39"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:40"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:40"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:41"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:41"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:42"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:42"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:43"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:43"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:44"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:44"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:45"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:45"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:46"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:46"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:47"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:47"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:48"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:48"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:49"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:49"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:50"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:50"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:51"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:51"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:52"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:52"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:53"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:53"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:54"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:54"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:55"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:55"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:56"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:56"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:57"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:57"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:58"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:58"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:59"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:59"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:60"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:60"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:61"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:03"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:61"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:61"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:04"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:61"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:62"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:62"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:63"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:63"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:64"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:64"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:65"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:65"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:66"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:66"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:67"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:07"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:67"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:67"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:67"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:68"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MERGE (source)-[r:SectionCoversLearningThemeL2]->(target)
SET r.label = "小节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:68"})
MERGE (source)-[r:LearningThemeL2CoveredBySection]->(target)
SET r.label = "二级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:01"})
MERGE (source)-[r:themeL1OrganizesL2]->(target)
SET r.label = "以自然环境系统及其要素发展、演变过程对人类活动的影响为线索组织 / organizesL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:01"})
MERGE (source)-[r:themeL2BelongsToL1]->(target)
SET r.label = "描述地球的宇宙环境 / belongsToL1";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:02"})
MERGE (source)-[r:themeL1OrganizesL2]->(target)
SET r.label = "以自然环境系统及其要素发展、演变过程对人类活动的影响为线索组织 / organizesL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:01"})
MERGE (source)-[r:themeL2BelongsToL1]->(target)
SET r.label = "描述探月工程、火星探测以及空间站建设等人类太空探索的进展与意义 / belongsToL1";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:03"})
MERGE (source)-[r:themeL1OrganizesL2]->(target)
SET r.label = "以自然环境系统及其要素发展、演变过程对人类活动的影响为线索组织 / organizesL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:02"})
MERGE (source)-[r:themeL2BelongsToL1]->(target)
SET r.label = "演示地球的自转运动 / belongsToL1";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:04"})
MERGE (source)-[r:themeL1OrganizesL2]->(target)
SET r.label = "以自然环境系统及其要素发展、演变过程对人类活动的影响为线索组织 / organizesL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:02"})
MERGE (source)-[r:themeL2BelongsToL1]->(target)
SET r.label = "演示地球的公转运动 / belongsToL1";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MERGE (source)-[r:themeL1OrganizesL2]->(target)
SET r.label = "以认识自然地理要素及其与人类活动的关系为线索组织 / organizesL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:03"})
MERGE (source)-[r:themeL2BelongsToL1]->(target)
SET r.label = "描述世界海陆分布状况 / belongsToL1";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
MERGE (source)-[r:themeL1OrganizesL2]->(target)
SET r.label = "以基本社会经济活动的空间特点为线索组织 / organizesL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:03"})
MERGE (source)-[r:themeL2BelongsToL1]->(target)
SET r.label = "描述并简要归纳世界人口数量变化和人口空间分布特点 / belongsToL1";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:07"})
MERGE (source)-[r:themeL1OrganizesL2]->(target)
SET r.label = "以认识区域地理条件、区域特征和发展方向为线索组织 / organizesL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:04"})
MERGE (source)-[r:themeL2BelongsToL1]->(target)
SET r.label = "描述某大洲的地理位置 / belongsToL1";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:08"})
MERGE (source)-[r:themeL1OrganizesL2]->(target)
SET r.label = "以认识区域地理条件、区域特征和发展方向为线索组织 / organizesL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:04"})
MERGE (source)-[r:themeL2BelongsToL1]->(target)
SET r.label = "描述某地区的地理位置 / belongsToL1";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:09"})
MERGE (source)-[r:themeL1OrganizesL2]->(target)
SET r.label = "以认识区域地理条件、区域特征和发展方向为线索组织 / organizesL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:04"})
MERGE (source)-[r:themeL2BelongsToL1]->(target)
SET r.label = "说出某国家的地理位置 / belongsToL1";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MERGE (source)-[r:themeL1OrganizesL2]->(target)
SET r.label = "以认识区域地理条件、区域特征和发展方向为线索组织 / organizesL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:05"})
MERGE (source)-[r:themeL2BelongsToL1]->(target)
SET r.label = "描述中国的地理位置与疆域特征 / belongsToL1";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MERGE (source)-[r:themeL1OrganizesL2]->(target)
SET r.label = "以认识区域地理条件、区域特征和发展方向为线索组织 / organizesL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:05"})
MERGE (source)-[r:themeL2BelongsToL1]->(target)
SET r.label = "说出某区域的地理位置和自然地理特征 / belongsToL1";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:12"})
MERGE (source)-[r:themeL1OrganizesL2]->(target)
SET r.label = "以认识区域地理条件、区域特征和发展方向为线索组织 / organizesL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL1:05"})
MERGE (source)-[r:themeL2BelongsToL1]->(target)
SET r.label = "描述家乡典型的自然与人文地理事物和现象 / belongsToL1";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:themeL2OrganizesL3]->(target)
SET r.label = "以认识自然地理要素及其与人类活动的关系为线索组织 / organizesL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MERGE (source)-[r:themeL3BelongsToL2]->(target)
SET r.label = "是自然环境的学习内容 / belongsToL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MERGE (source)-[r:themeL2OrganizesL3]->(target)
SET r.label = "以认识自然地理要素及其与人类活动的关系为线索组织 / organizesL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MERGE (source)-[r:themeL3BelongsToL2]->(target)
SET r.label = "是自然环境的学习内容 / belongsToL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MERGE (source)-[r:themeL2OrganizesL3]->(target)
SET r.label = "以基本社会经济活动的空间特点为线索组织 / organizesL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
MERGE (source)-[r:themeL3BelongsToL2]->(target)
SET r.label = "是人文环境的学习内容 / belongsToL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:themeL2OrganizesL3]->(target)
SET r.label = "以基本社会经济活动的空间特点为线索组织 / organizesL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
MERGE (source)-[r:themeL3BelongsToL2]->(target)
SET r.label = "是人文环境的学习内容 / belongsToL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:01"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:02"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:03"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:04"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:04"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:04"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:05"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:05"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:05"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:06"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:06"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:06"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:07"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:08"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:09"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:10"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:11"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:12"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:13"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:13"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:14"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:14"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:15"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:15"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:16"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:16"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:17"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:17"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:18"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:18"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:19"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:19"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:20"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:20"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:21"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:21"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:22"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:22"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:23"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:23"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:24"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:24"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:25"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:25"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:26"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:26"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:27"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:27"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:28"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:28"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:29"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:29"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:30"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:30"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:31"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:31"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:32"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:32"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:33"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:33"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:34"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:34"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:35"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:35"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:36"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:36"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:37"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:37"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:38"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:38"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:39"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:39"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:40"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:40"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:41"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:41"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:42"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:42"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:43"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:43"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:44"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:44"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:45"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:45"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:46"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:46"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:47"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:47"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:48"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:48"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:49"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:49"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:50"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:50"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:51"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:51"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:52"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:52"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:53"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:53"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:54"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:54"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:55"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:55"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:56"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:56"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:57"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:57"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:57"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:57"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:57"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:57"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:57"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:57"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:58"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:58"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:59"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:59"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:60"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:60"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:61"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:61"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:62"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:62"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:63"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:63"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:64"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:64"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:65"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:65"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:66"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:66"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:67"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:67"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:68"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:68"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:68"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:68"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:68"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:68"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:68"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:SectionCoversLearningThemeL3]->(target)
SET r.label = "小节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Section:68"})
MERGE (source)-[r:LearningThemeL3CoveredBySection]->(target)
SET r.label = "三级主题被小节涵盖 / coveredBySection";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MERGE (source)-[r:ChapterCoversLearningThemeL3]->(target)
SET r.label = "章节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:03"})
MERGE (source)-[r:LearningThemeL3CoveredByChapter]->(target)
SET r.label = "三级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:ChapterCoversLearningThemeL3]->(target)
SET r.label = "章节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:07"})
MERGE (source)-[r:LearningThemeL3CoveredByChapter]->(target)
SET r.label = "三级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MERGE (source)-[r:ChapterCoversLearningThemeL3]->(target)
SET r.label = "章节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:08"})
MERGE (source)-[r:LearningThemeL3CoveredByChapter]->(target)
SET r.label = "三级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:13"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:ChapterCoversLearningThemeL3]->(target)
SET r.label = "章节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:13"})
MERGE (source)-[r:LearningThemeL3CoveredByChapter]->(target)
SET r.label = "三级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:13"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MERGE (source)-[r:ChapterCoversLearningThemeL3]->(target)
SET r.label = "章节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:13"})
MERGE (source)-[r:LearningThemeL3CoveredByChapter]->(target)
SET r.label = "三级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:16"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:ChapterCoversLearningThemeL3]->(target)
SET r.label = "章节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:16"})
MERGE (source)-[r:LearningThemeL3CoveredByChapter]->(target)
SET r.label = "三级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:18"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MERGE (source)-[r:ChapterCoversLearningThemeL3]->(target)
SET r.label = "章节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:18"})
MERGE (source)-[r:LearningThemeL3CoveredByChapter]->(target)
SET r.label = "三级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:18"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:ChapterCoversLearningThemeL3]->(target)
SET r.label = "章节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:18"})
MERGE (source)-[r:LearningThemeL3CoveredByChapter]->(target)
SET r.label = "三级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:21"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MERGE (source)-[r:ChapterCoversLearningThemeL3]->(target)
SET r.label = "章节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:21"})
MERGE (source)-[r:LearningThemeL3CoveredByChapter]->(target)
SET r.label = "三级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:21"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MERGE (source)-[r:ChapterCoversLearningThemeL3]->(target)
SET r.label = "章节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:21"})
MERGE (source)-[r:LearningThemeL3CoveredByChapter]->(target)
SET r.label = "三级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:21"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MERGE (source)-[r:ChapterCoversLearningThemeL3]->(target)
SET r.label = "章节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:21"})
MERGE (source)-[r:LearningThemeL3CoveredByChapter]->(target)
SET r.label = "三级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:26"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MERGE (source)-[r:ChapterCoversLearningThemeL3]->(target)
SET r.label = "章节涵盖三级主题 / coversLearningThemeL3";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL3:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:26"})
MERGE (source)-[r:LearningThemeL3CoveredByChapter]->(target)
SET r.label = "三级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:01"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:01"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:01"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:02"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:02"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:02"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:04"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:04"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:04"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:05"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:05"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:05"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:13"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:05"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:14"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:06"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:15"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:06"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:16"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:06"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:17"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:09"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:18"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:09"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:19"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:10"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:20"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:10"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:21"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:10"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:22"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:10"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:23"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:11"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:24"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:11"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:25"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:11"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:26"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:11"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:27"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:12"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:28"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:12"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:29"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:14"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:30"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:14"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:31"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:14"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:32"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:15"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:33"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:15"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:34"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:15"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:35"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:17"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:36"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:17"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:37"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:17"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:38"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:17"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:39"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:19"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:40"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:19"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:41"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:19"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:42"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:20"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:43"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:20"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:44"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:22"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:45"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:22"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:46"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:22"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:47"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:22"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:48"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:23"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:49"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:23"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:50"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:23"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:51"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:23"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:52"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:24"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:53"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:24"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:54"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:25"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:55"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:25"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:56"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:27"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:57"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:27"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:58"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:27"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:59"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:27"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:60"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:27"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:61"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:27"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:62"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:27"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:63"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:27"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:64"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:27"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:65"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:27"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:66"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:27"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:67"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:27"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Section:68"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:27"})
MERGE (source)-[r:SectionBelongsToChapter]->(target)
SET r.label = "小节隶属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:12"})
MERGE (source)-[r:ChapterCoversLearningThemeL2]->(target)
SET r.label = "章节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:03"})
MERGE (source)-[r:LearningThemeL2CoveredByChapter]->(target)
SET r.label = "二级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
MERGE (source)-[r:ChapterCoversLearningThemeL2]->(target)
SET r.label = "章节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:07"})
MERGE (source)-[r:LearningThemeL2CoveredByChapter]->(target)
SET r.label = "二级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
MERGE (source)-[r:ChapterCoversLearningThemeL2]->(target)
SET r.label = "章节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:08"})
MERGE (source)-[r:LearningThemeL2CoveredByChapter]->(target)
SET r.label = "二级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:13"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:08"})
MERGE (source)-[r:ChapterCoversLearningThemeL2]->(target)
SET r.label = "章节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:13"})
MERGE (source)-[r:LearningThemeL2CoveredByChapter]->(target)
SET r.label = "二级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:16"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MERGE (source)-[r:ChapterCoversLearningThemeL2]->(target)
SET r.label = "章节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:16"})
MERGE (source)-[r:LearningThemeL2CoveredByChapter]->(target)
SET r.label = "二级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:18"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MERGE (source)-[r:ChapterCoversLearningThemeL2]->(target)
SET r.label = "章节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:18"})
MERGE (source)-[r:LearningThemeL2CoveredByChapter]->(target)
SET r.label = "二级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:21"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MERGE (source)-[r:ChapterCoversLearningThemeL2]->(target)
SET r.label = "章节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:21"})
MERGE (source)-[r:LearningThemeL2CoveredByChapter]->(target)
SET r.label = "二级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:26"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MERGE (source)-[r:ChapterCoversLearningThemeL2]->(target)
SET r.label = "章节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:26"})
MERGE (source)-[r:LearningThemeL2CoveredByChapter]->(target)
SET r.label = "二级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:26"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
MERGE (source)-[r:ChapterCoversLearningThemeL2]->(target)
SET r.label = "章节涵盖二级主题 / coversLearningThemeL2";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:Chapter:26"})
MERGE (source)-[r:LearningThemeL2CoveredByChapter]->(target)
SET r.label = "二级主题被章节涵盖 / coveredByChapter";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:01"})
MERGE (source)-[r:literacyIsCoreValue]->(target)
SET r.label = "是课程内容蕴含的核心价值观 / isCoreValue";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:02"})
MERGE (source)-[r:literacyIsCoreValue]->(target)
SET r.label = "是课程内容蕴含的核心价值观 / isCoreValue";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:03"})
MERGE (source)-[r:literacyIsCoreValue]->(target)
SET r.label = "是课程内容蕴含的核心价值观 / isCoreValue";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:04"})
MERGE (source)-[r:literacyIsCoreValue]->(target)
SET r.label = "是课程内容蕴含的核心价值观 / isCoreValue";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MERGE (source)-[r:literacyIsCoreValue]->(target)
SET r.label = "是课程内容蕴含的核心价值观 / isCoreValue";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
MERGE (source)-[r:literacyIsCoreValue]->(target)
SET r.label = "是课程内容蕴含的核心价值观 / isCoreValue";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:07"})
MERGE (source)-[r:literacyIsCoreValue]->(target)
SET r.label = "是课程内容蕴含的核心价值观 / isCoreValue";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:08"})
MERGE (source)-[r:literacyIsCoreValue]->(target)
SET r.label = "是课程内容蕴含的核心价值观 / isCoreValue";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:09"})
MERGE (source)-[r:literacyIsCoreValue]->(target)
SET r.label = "是课程内容蕴含的核心价值观 / isCoreValue";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MERGE (source)-[r:literacyIsCoreValue]->(target)
SET r.label = "是课程内容蕴含的核心价值观 / isCoreValue";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MERGE (source)-[r:literacyIsCoreValue]->(target)
SET r.label = "是课程内容蕴含的核心价值观 / isCoreValue";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:12"})
MERGE (source)-[r:literacyIsCoreValue]->(target)
SET r.label = "是课程内容蕴含的核心价值观 / isCoreValue";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:01"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:01"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:02"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:03"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:04"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:07"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:08"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:09"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:12"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:02"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:01"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:02"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:03"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:04"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:07"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:08"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:09"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:12"})
MERGE (source)-[r:literacyIsCultivatedByCourse]->(target)
SET r.label = "是地理课程要培育的核心素养 / isCultivatedByCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:03"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:01"})
MERGE (source)-[r:literacyIsPracticedInCourse]->(target)
SET r.label = "在分析和解决地理实践中遇到问题时具备 / isPracticedInCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:01"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:02"})
MERGE (source)-[r:literacyIsPracticedInCourse]->(target)
SET r.label = "在分析和解决地理实践中遇到问题时具备 / isPracticedInCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:02"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:03"})
MERGE (source)-[r:literacyIsPracticedInCourse]->(target)
SET r.label = "在分析和解决地理实践中遇到问题时具备 / isPracticedInCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:03"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:04"})
MERGE (source)-[r:literacyIsPracticedInCourse]->(target)
SET r.label = "在分析和解决地理实践中遇到问题时具备 / isPracticedInCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MERGE (source)-[r:literacyIsPracticedInCourse]->(target)
SET r.label = "在分析和解决地理实践中遇到问题时具备 / isPracticedInCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:05"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
MERGE (source)-[r:literacyIsPracticedInCourse]->(target)
SET r.label = "在分析和解决地理实践中遇到问题时具备 / isPracticedInCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:06"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:07"})
MERGE (source)-[r:literacyIsPracticedInCourse]->(target)
SET r.label = "在分析和解决地理实践中遇到问题时具备 / isPracticedInCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:07"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:08"})
MERGE (source)-[r:literacyIsPracticedInCourse]->(target)
SET r.label = "在分析和解决地理实践中遇到问题时具备 / isPracticedInCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:08"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:09"})
MERGE (source)-[r:literacyIsPracticedInCourse]->(target)
SET r.label = "在分析和解决地理实践中遇到问题时具备 / isPracticedInCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:09"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MERGE (source)-[r:literacyIsPracticedInCourse]->(target)
SET r.label = "在分析和解决地理实践中遇到问题时具备 / isPracticedInCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:10"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MERGE (source)-[r:literacyIsPracticedInCourse]->(target)
SET r.label = "在分析和解决地理实践中遇到问题时具备 / isPracticedInCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:11"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:12"})
MERGE (source)-[r:literacyIsPracticedInCourse]->(target)
SET r.label = "在分析和解决地理实践中遇到问题时具备 / isPracticedInCourse";

MATCH (source {identifier: "urn:jy:Geography:SB0308:OB03:LearningThemeL2:12"})
MATCH (target {identifier: "urn:jy:Geography:SB0308:OB03:CoreLiteracy:04"})
MERGE (source)-[r:themeCultivatesLiteracy]->(target)
SET r.label = "培育核心素养 / cultivatesLiteracy";
