// =====================================================
// 义教历史课标图谱 - Neo4j导入脚本
// 生成时间: 2026-01-22T23:17:08.124212
// =====================================================

// 创建约束和索引
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Domain) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Theme) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Section) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Unknown) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Chapter) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:AcademicQuality) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:CoreLiteracy) REQUIRE n.identifier IS UNIQUE;

// =====================================================
// 导入实体
// =====================================================

MERGE (n:Domain {identifier: "urn:jy:history:SB0307:OB03:Domain:1:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:Domain:1:OB03", title: "中国历史", description: "古代：统一多民族国家的形成与发展；近代：争取民族独立、人民解放的历程；现代：社会主义现代化的建设。", subject: "SB0307", type: "Domain", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:Domain {identifier: "urn:jy:history:SB0307:OB03:Domain:2:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:Domain:2:OB03", title: "世界历史", description: "古代：区域文明的多元发展；近代：资本主义发展、社会主义运动和民族解放运动；现代：战争与革命、和平与发展。", subject: "SB0307", type: "Domain", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:Domain {identifier: "urn:jy:history:SB0307:OB03:Domain:3:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:Domain:3:OB03", title: "跨学科主题学习", description: "围绕“人类社会的不断演进”等主题，综合运用历史与相关学科知识与方法开展探究、实践与表达，形成跨学科理解与解决问题的能力。", subject: "SB0307", type: "Domain", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:history:SB0307:OB03:CoreLiteracy:1:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:CoreLiteracy:1:OB03", title: "唯物史观", description: "唯物史观是揭示人类社会历史客观基础及发展规律的科学的历史 观和方法论。\n\n人类对历史的认识是由表及里、逐渐深化的，要透过历史的纷杂 表象认识历史的本质，必须以科学的历史观和方法论为指导。唯物史 观使历史学成为一门科学，只有运用唯物史观的立场、观点和方法， 才能对历史有全面、客观的认识。\n\n在义务教育阶段，要求学生初步学会在唯物史观的指导下看待 历史。", subject: "SB0307", type: "CoreLiteracy", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:history:SB0307:OB03:CoreLiteracy:2:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:CoreLiteracy:2:OB03", title: "时空观念", description: "时空观念是在特定的时间联系和空间联系中对事物进行观察、分 析的意识和思维方式。\n\n任何事物都是在特定的、具体的时间和空间条件下存在的，只有 在特定的时空框架中，才可能对史事有准确的理解。\n\n在义务教育阶段，要求学生学会在具体的时空条件下考察历史。", subject: "SB0307", type: "CoreLiteracy", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:history:SB0307:OB03:CoreLiteracy:3:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:CoreLiteracy:3:OB03", title: "史料实证", description: "史料实证是指对获取的史料进行辨析，并运用可信史料努力重现 历史真实的态度与方法。\n\n史料是认识历史的主要依据。要形成对历史的正确、客观的认 识，必须重视史料的搜集和解读，并在学习和探究活动中加以运用。\n\n在义务教育阶段，要求学生初步学会依靠可信史料了解和认识 历史。", subject: "SB0307", type: "CoreLiteracy", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:history:SB0307:OB03:CoreLiteracy:4:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:CoreLiteracy:4:OB03", title: "历史解释", description: "历史解释是指以史料为依据，客观地认识和评判历史的态度和 方法。\n\n所有历史叙述本质上都是对历史的解释，即便是对基本事实的陈 述也包含了陈述者的主观认识。只有通过对史料的搜集、整理和辨 析，辩证、客观地描述历史，揭示历史表象背后的深层因果关系，才 能不断接近历史真实。\n\n在义务教育阶段，要求学生初步学会有理有据地表达自己对历史 的看法。", subject: "SB0307", type: "CoreLiteracy", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:history:SB0307:OB03:CoreLiteracy:5:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:CoreLiteracy:5:OB03", title: "家国情怀", description: "家国情怀是学习和探究历史应具有的人文追求与社会责任。\n\n学习和探究历史应充满人文情怀并关注现实问题，热爱家乡，热 爱祖国，放眼世界，以服务于国家富强、中华民族伟大复兴和人类命 运共同体的构建。\n\n在义务教育阶段，要求学生形成对家乡、国家和中华民族的认 同，具有国际视野，有理想、有担当。", subject: "SB0307", type: "CoreLiteracy", applicableLevel: "OB03", contentJson: "{}"};

MERGE (n:Theme {identifier: "urn:jy:history:SB0307:OB03:Theme:1:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:Theme:1:OB03", title: "中国古代史", description: "中国古代史始于中国境内早期人类活动，止于1840 年鸦片战争，重点叙述 5000 多年中华文明的演进，以及统一多民族国家的起源、建立、巩固和发展的历程。", subject: "SB0307", type: "Theme", applicableLevel: "OB03", contentJson: "{\"ContentRequirements\": \"1.1 史前时期\\n通过了解元谋人、郧县人、蓝田人、北京人等旧石器时代的人类及其文化遗存，知道中国境内原始社会时期的人类活动；通过了解河姆渡、半坡、良渚、陶寺、二里头等新石器时代的文化遗存，知道中国的原始农耕生活；了解私有制、阶级和早期国家的产生；知道考古发现是了解原始社会的重要依据；通过古代文献中记述的黄帝、炎帝等神话传说，了解其中蕴含的历史信息。\\n1.2 夏商西周与春秋战国时期\\n知道甲骨文是已知最早的汉字；通过了解甲骨文、青铜铭文、其他文献记载和典型器物，知道具有奴隶制特点的夏、商、西周王朝的建立与发展，了解西周分封制等重要制度；知道老子、孔子的生平与思想；通过了解这一时期的生产力水平和社会关系的变化，初步理解春秋时期诸侯争霸局面的形成、战国时期商鞅变法等改革和“百家争鸣”局面的产生；通过《黄帝内经》和名医扁鹊，了解这一时期的医学成就；通过都江堰工程，感受古代劳动人民的智慧和创造力。\\n1.3 秦汉时期\\n通过了解秦朝统一、陈胜和吴广等领导的秦末农民起义、西汉“削藩”和尊崇儒术，知道统一多民族封建国家建立和早期发展的过程；通过了解休养生息政策、“文景之治”、张骞通西域、“丝绸之路”的开辟、汉武帝的大一统，知道西汉从建立之初的社会残破发展到国力强盛的变化及原因；通过了解西汉末到东汉的政治、社会动荡，了解佛教传入和道教产生的背景；知道这一时期的重要文化和科技成就，如司马迁与《史记》、蔡伦与造纸术、张仲景与《伤寒杂病论》、华佗的故事等。\\n1.4 三国两晋南北朝时期\\n通过了解三国两晋南北朝时期的政权更迭和北魏孝文帝改革、人口迁徙和区域开发，认识这一时期民族交往交流交融的历史特点及其对中华民族发展的意义；通过了解这一时期的科技和艺术成就，如祖冲之的数学成就，认识传统文化的继承与创新。\\n1.5 隋唐五代十国时期\\n通过了解隋朝的兴亡、“贞观之治”与“开元盛世”，知道隋朝速亡和唐朝兴盛的原因；了解科举制度创建、大运河开通、文成公主入藏、鉴真东渡、玄奘西行等史事，从制度、经济、文学艺术、民族交往、中外文化交流等方面认识隋唐王朝在世界历史上的重要地位；通过了解“安史之乱”后藩镇割据和五代十国的局面，认识唐末五代的社会危机。\\n1.6 辽宋夏金元时期\\n认识北宋面临的新形势，了解辽、宋、西夏的并立与北宋强化中央集权和重文轻武的政策；通过了解宋金之战、南宋偏安和南方地区的经济繁荣，知道中国古代经济重心的进一步南移；通过了解蒙古兴起和元朝统一，设立行省、宣政院等制度，知道西藏在元代正式纳入中国版图，理解元朝统一对中华民族进一步交融的重要意义；通过了解这一时期的城市和商业发展、科技创新、文学艺术成就和对外交流，认识宋元时期繁荣的经济、文化在中国历史上的重要地位；通过了解岳飞、文天祥等人的英雄事迹，体会中华民族英勇不屈的精神；通过印刷术、指南针、火药的应用和外传，认识中国古代的重要发明对世界文明发展的贡献。\\n1.7 明清时期（至鸦片战争前）\\n通过了解明清时期加强皇权的举措，初步认识君主专制带来的社会弊端；通过了解明清时期的经济改革和全球性经济互动，初步认识这一阶段中国经济发展的内因和外因；通过郑和下西洋、戚继光抗倭等史事，了解明朝的对外关系；通过了解郑成功收复台湾、清朝在台湾的建制、册封达赖和班禅以及设置驻藏大臣等中央政权在边疆地区的各种举措，认识西藏地区、新疆地区、南海诸岛、台湾及其包括钓鱼岛在内的附属岛屿是中国的领土，理解统一多民族国家版图奠定的重要意义；通过了解《本草纲目》《天工开物》《农政全书》，认识明朝的科技成就及其影响；通过了解小说、戏曲的繁荣，知道明清时期文学艺术的特色；通过了解明末李自成起义、清中叶以来的政治腐败、故步自封和 19 世纪的国际局势史实，认识当时中国社会面临的严重危机。\", \"achievementRequirement\": \"2.1 能够了解中国古代历史的基本线索和重要的事件、人物、现象，知道重大史事发生的时间和地点、原因和结果，初步养成历史时序意识和历史空间感。（唯物史观、时空观念）\\n2.2 能够知道中国古代遗留至今的各类史料是了解和认识中国古代历史的证据，能结合语文、地理、艺术等课程的学习，初步理解古代史料的含义，尝试运用史料说明历史问题。（史料实证、历史解释）\\n2.3 能够对中国古代历史上的重要事件、人物、现象等形成合理想象，进行初步分析，认识其意义和影响。（唯物史观、历史解释、家国情怀）\\n2.4 能够通过中国古代的经济、科技成就，了解生产力发展对政治、社会、文化变革的推动作用；通过古代历史上治乱兴衰的史事，认识阶级社会中阶级斗争在历史发展中的作用。（唯物史观、历史解释、家国情怀）\\n2.5 能够通过了解中国古代历史发展的总体趋势，认识统一多民族国家形成、巩固和发展的重要历史意义；通过中国古代历史上各民族的交往交流交融，认识中华民族共同体的形成是中国历史发展的必然结果，树立正确的中华民族历史观；通过了解中国古代文明的辉煌成就，认识中华优秀传统文化的独特价值和突出优势，提高民族自尊心、自信心和自豪感，增强民族凝聚力。（唯物史观、家国情怀）\", \"teachingTip\": \"学生初学历史，需要培养兴趣，调动学习积极性。在教学过程中，教师要通过情境再现、问题引领、故事讲述和多样化的资源运用等方式，激发学生的求知欲，促进学生积极、主动地学习历史。\\n要注重对学生历史学习方法的指导，从帮助学生学会阅读、理解教材，概括所学内容入手，进而指导学生解读史料，使学生逐步学会对史事进行分析。\\n中国古代史的教学，要通过把握中国古代历史发展的基本线索及相关重要史事，围绕统一多民族国家形成、巩固和发展的过程展开。教师要把历代政权的分立与统一、中华民族的发展演变，理解为从区域到整体、从碰撞到交融的过程，引导学生初步学会分析重要史事间的因果关系，初步学会对史事进行评判。\\n中国古代史是学生学习历史最先接触的内容。因此，教师要尽可能以感性的、易于理解的、多种多样的呈现方式开展教学。教师不仅应在课堂上尝试创设帮助学生感同身受的历史情境，还应充分利用博物馆、档案馆、图书馆、历史遗址、古代建筑、古村落，以及爱国主义教育基地、历史文化名城等，尽量发掘乡土历史资源，合理利用网络资源。\", \"Domain\": \"urn:jy:history:SB0307:OB03:Domain:1:OB03\"}", CJ_ContentRequirements: "1.1 史前时期\n通过了解元谋人、郧县人、蓝田人、北京人等旧石器时代的人类及其文化遗存，知道中国境内原始社会时期的人类活动；通过了解河姆渡、半坡、良渚、陶寺、二里头等新石器时代的文化遗存，知道中国的原始农耕生活；了解私有制、阶级和早期国家的产生；知道考古发现是了解原始社会的重要依据；通过古代文献中记述的黄帝、炎帝等神话传说，了解其中蕴含的历史信息。\n1.2 夏商西周与春秋战国时期\n知道甲骨文是已知最早的汉字；通过了解甲骨文、青铜铭文、其他文献记载和典型器物，知道具有奴隶制特点的夏、商、西周王朝的建立与发展，了解西周分封制等重要制度；知道老子、孔子的生平与思想；通过了解这一时期的生产力水平和社会关系的变化，初步理解春秋时期诸侯争霸局面的形成、战国时期商鞅变法等改革和“百家争鸣”局面的产生；通过《黄帝内经》和名医扁鹊，了解这一时期的医学成就；通过都江堰工程，感受古代劳动人民的智慧和创造力。\n1.3 秦汉时期\n通过了解秦朝统一、陈胜和吴广等领导的秦末农民起义、西汉“削藩”和尊崇儒术，知道统一多民族封建国家建立和早期发展的过程；通过了解休养生息政策、“文景之治”、张骞通西域、“丝绸之路”的开辟、汉武帝的大一统，知道西汉从建立之初的社会残破发展到国力强盛的变化及原因；通过了解西汉末到东汉的政治、社会动荡，了解佛教传入和道教产生的背景；知道这一时期的重要文化和科技成就，如司马迁与《史记》、蔡伦与造纸术、张仲景与《伤寒杂病论》、华佗的故事等。\n1.4 三国两晋南北朝时期\n通过了解三国两晋南北朝时期的政权更迭和北魏孝文帝改革、人口迁徙和区域开发，认识这一时期民族交往交流交融的历史特点及其对中华民族发展的意义；通过了解这一时期的科技和艺术成就，如祖冲之的数学成就，认识传统文化的继承与创新。\n1.5 隋唐五代十国时期\n通过了解隋朝的兴亡、“贞观之治”与“开元盛世”，知道隋朝速亡和唐朝兴盛的原因；了解科举制度创建、大运河开通、文成公主入藏、鉴真东渡、玄奘西行等史事，从制度、经济、文学艺术、民族交往、中外文化交流等方面认识隋唐王朝在世界历史上的重要地位；通过了解“安史之乱”后藩镇割据和五代十国的局面，认识唐末五代的社会危机。\n1.6 辽宋夏金元时期\n认识北宋面临的新形势，了解辽、宋、西夏的并立与北宋强化中央集权和重文轻武的政策；通过了解宋金之战、南宋偏安和南方地区的经济繁荣，知道中国古代经济重心的进一步南移；通过了解蒙古兴起和元朝统一，设立行省、宣政院等制度，知道西藏在元代正式纳入中国版图，理解元朝统一对中华民族进一步交融的重要意义；通过了解这一时期的城市和商业发展、科技创新、文学艺术成就和对外交流，认识宋元时期繁荣的经济、文化在中国历史上的重要地位；通过了解岳飞、文天祥等人的英雄事迹，体会中华民族英勇不屈的精神；通过印刷术、指南针、火药的应用和外传，认识中国古代的重要发明对世界文明发展的贡献。\n1.7 明清时期（至鸦片战争前）\n通过了解明清时期加强皇权的举措，初步认识君主专制带来的社会弊端；通过了解明清时期的经济改革和全球性经济互动，初步认识这一阶段中国经济发展的内因和外因；通过郑和下西洋、戚继光抗倭等史事，了解明朝的对外关系；通过了解郑成功收复台湾、清朝在台湾的建制、册封达赖和班禅以及设置驻藏大臣等中央政权在边疆地区的各种举措，认识西藏地区、新疆地区、南海诸岛、台湾及其包括钓鱼岛在内的附属岛屿是中国的领土，理解统一多民族国家版图奠定的重要意义；通过了解《本草纲目》《天工开物》《农政全书》，认识明朝的科技成就及其影响；通过了解小说、戏曲的繁荣，知道明清时期文学艺术的特色；通过了解明末李自成起义、清中叶以来的政治腐败、故步自封和 19 世纪的国际局势史实，认识当时中国社会面临的严重危机。", CJ_achievementRequirement: "2.1 能够了解中国古代历史的基本线索和重要的事件、人物、现象，知道重大史事发生的时间和地点、原因和结果，初步养成历史时序意识和历史空间感。（唯物史观、时空观念）\n2.2 能够知道中国古代遗留至今的各类史料是了解和认识中国古代历史的证据，能结合语文、地理、艺术等课程的学习，初步理解古代史料的含义，尝试运用史料说明历史问题。（史料实证、历史解释）\n2.3 能够对中国古代历史上的重要事件、人物、现象等形成合理想象，进行初步分析，认识其意义和影响。（唯物史观、历史解释、家国情怀）\n2.4 能够通过中国古代的经济、科技成就，了解生产力发展对政治、社会、文化变革的推动作用；通过古代历史上治乱兴衰的史事，认识阶级社会中阶级斗争在历史发展中的作用。（唯物史观、历史解释、家国情怀）\n2.5 能够通过了解中国古代历史发展的总体趋势，认识统一多民族国家形成、巩固和发展的重要历史意义；通过中国古代历史上各民族的交往交流交融，认识中华民族共同体的形成是中国历史发展的必然结果，树立正确的中华民族历史观；通过了解中国古代文明的辉煌成就，认识中华优秀传统文化的独特价值和突出优势，提高民族自尊心、自信心和自豪感，增强民族凝聚力。（唯物史观、家国情怀）", CJ_teachingTip: "学生初学历史，需要培养兴趣，调动学习积极性。在教学过程中，教师要通过情境再现、问题引领、故事讲述和多样化的资源运用等方式，激发学生的求知欲，促进学生积极、主动地学习历史。\n要注重对学生历史学习方法的指导，从帮助学生学会阅读、理解教材，概括所学内容入手，进而指导学生解读史料，使学生逐步学会对史事进行分析。\n中国古代史的教学，要通过把握中国古代历史发展的基本线索及相关重要史事，围绕统一多民族国家形成、巩固和发展的过程展开。教师要把历代政权的分立与统一、中华民族的发展演变，理解为从区域到整体、从碰撞到交融的过程，引导学生初步学会分析重要史事间的因果关系，初步学会对史事进行评判。\n中国古代史是学生学习历史最先接触的内容。因此，教师要尽可能以感性的、易于理解的、多种多样的呈现方式开展教学。教师不仅应在课堂上尝试创设帮助学生感同身受的历史情境，还应充分利用博物馆、档案馆、图书馆、历史遗址、古代建筑、古村落，以及爱国主义教育基地、历史文化名城等，尽量发掘乡土历史资源，合理利用网络资源。", CJ_Domain: "urn:jy:history:SB0307:OB03:Domain:1:OB03"};

MERGE (n:Theme {identifier: "urn:jy:history:SB0307:OB03:Theme:2:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:Theme:2:OB03", title: "中国近代史", description: "中国近代史始于 1840 年鸦片战争，止于 1949 年中华人民共和国成立，重点叙述列强侵略中国，中国逐渐成为半殖民地半封建社会；中华民族对外反抗列强侵略，对内反对封建专制统治，最终由中国共产党团结带领全国各族人民实现了民族独立、人民解放，夺取了新民主主义革命的伟大胜利的历程。", subject: "SB0307", type: "Theme", applicableLevel: "OB03", contentJson: "{\"ContentRequirements\": \"1.1 晚清时期的内忧外患与救亡图存\\n通过了解林则徐虎门销烟、英法联军火烧圆明园、俄国割占中国北方大片领土等两次鸦片战争期间的主要史事，以及《南京条约》等不平等条约的签订，初步认识鸦片战争对中国近代社会的影响；了解太平天国运动的兴衰；了解洋务运动的主要内容，初步认识洋务运动的作用和局限性；了解 19 世纪中后期的边疆危机和中法战争，知道甲午中日战争的主要战役和《马关条约》的主要内容，初步认识《马关条约》与中国民族危机加剧的关系；了解戊戌变法的主要史事，认识变法的意义和局限性；知道义和团运动和抗击八国联军侵华的史事，结合《辛丑条约》的主要内容，认识《辛丑条约》对中国民族危机全面加深的影响。\\n1.2 辛亥革命与中华民国的建立\\n通过了解孙中山等民主革命先行者早年的革命活动、武昌起义及中华民国成立的史事，认识辛亥革命的历史意义及局限性；知道民国初期北洋军阀的统治；了解新文化运动的基本内容，知道陈独秀、李大钊、胡适、鲁迅等新文化运动的代表人物，认识新文化运动在中国近代思想解放运动中的地位和作用。\\n1.3 近代社会生活变化\\n通过了解张謇兴办实业的典型事例，知道近代中国民族工业发展的艰辛历程；通过了解开办京师大学堂、废除科举制度等近代新式教育发展的主要史事及民国以来社会生活的变化，知道中国走向现代化的曲折过程。\\n1.4 中国共产党成立与新民主主义革命的兴起\\n通过了解五四运动的基本史事，理解五四精神的内涵，认识五四运动是中国新民主主义革命的开端；通过了解陈独秀、李大钊传播马克思主义和中国共产党第一次全国代表大会的召开等史事，认识中国共产党成立的历史意义；了解第一次国共合作和北伐战争、南京国民政府的建立；了解南昌起义、秋收起义等史事，知道中国共产党创建人民军队和农村革命根据地的意义；通过了解井冈山革命根据地的建立、红军长征等史事，认识中国共产党开辟革命新道路的艰难历程。\\n1.5 中华民族的抗日战争\\n通过了解九一八事变、西安事变、七七事变等史事，认识日本侵华的罪行；了解正面战场和敌后战场的抗战；了解中国共产党在全民族抗战中的中流砥柱作用；通过了解中国国际地位提高的史事，认识中国抗日战争在世界反法西斯战争中的重要地位。\\n1.6 人民解放战争\\n了解重庆谈判、全面内战爆发和三大战役等史事，知道中国共产党带领中国人民取得人民解放战争胜利的原因；认识中华人民共和国成立的意义。\", \"achievementRequirement\": \"2.1 能够了解中国近代历史的主要线索和重要的事件、人物、现象，知道重大史事发生的时间和地点、原因和结果，初步养成历史时序意识和历史空间感。（唯物史观、时空观念）\\n2.2 能够知道中国近代遗留至今的各类史料是了解和认识中国近代历史的证据，能结合语文、地理、艺术等课程的学习，初步理解近代史料的含义，尝试运用史料说明历史问题。（史料实证、历史解释）\\n2.3 能够对中国近代历史上的重要事件、人物、现象等形成合理想象，进行初步分析，认识其意义和影响。（唯物史观、历史解释、家国情怀）\\n2.4 能够认识中国近代历史的发展趋势，理解近代中国人民反抗外来侵略、争取民族独立和人民解放的历史意义；能够认识中国共产党在新民主主义革命中的领导作用，树立正确的历史观，增强民族自尊心、自信心和自豪感，厚植爱国情怀。（唯物史观、家国情怀）\", \"teachingTip\": \"中国近代史的学习内容，涉及列强侵略与中华民族的抗争、各阶层救亡图存的探索以及中国共产党领导新民主主义革命的历程等。在教学中，要引导学生把握历史发展的基本线索，理解近代中国社会性质的变化，认识中华民族在危难中奋起的历史进程。\\n要注重引导学生运用史料，结合具体史事分析历史问题，理解近代中国人民反抗外来侵略、争取民族独立与人民解放的意义，增强国家认同和民族认同。\", \"Domain\": \"urn:jy:history:SB0307:OB03:Domain:1:OB03\"}", CJ_ContentRequirements: "1.1 晚清时期的内忧外患与救亡图存\n通过了解林则徐虎门销烟、英法联军火烧圆明园、俄国割占中国北方大片领土等两次鸦片战争期间的主要史事，以及《南京条约》等不平等条约的签订，初步认识鸦片战争对中国近代社会的影响；了解太平天国运动的兴衰；了解洋务运动的主要内容，初步认识洋务运动的作用和局限性；了解 19 世纪中后期的边疆危机和中法战争，知道甲午中日战争的主要战役和《马关条约》的主要内容，初步认识《马关条约》与中国民族危机加剧的关系；了解戊戌变法的主要史事，认识变法的意义和局限性；知道义和团运动和抗击八国联军侵华的史事，结合《辛丑条约》的主要内容，认识《辛丑条约》对中国民族危机全面加深的影响。\n1.2 辛亥革命与中华民国的建立\n通过了解孙中山等民主革命先行者早年的革命活动、武昌起义及中华民国成立的史事，认识辛亥革命的历史意义及局限性；知道民国初期北洋军阀的统治；了解新文化运动的基本内容，知道陈独秀、李大钊、胡适、鲁迅等新文化运动的代表人物，认识新文化运动在中国近代思想解放运动中的地位和作用。\n1.3 近代社会生活变化\n通过了解张謇兴办实业的典型事例，知道近代中国民族工业发展的艰辛历程；通过了解开办京师大学堂、废除科举制度等近代新式教育发展的主要史事及民国以来社会生活的变化，知道中国走向现代化的曲折过程。\n1.4 中国共产党成立与新民主主义革命的兴起\n通过了解五四运动的基本史事，理解五四精神的内涵，认识五四运动是中国新民主主义革命的开端；通过了解陈独秀、李大钊传播马克思主义和中国共产党第一次全国代表大会的召开等史事，认识中国共产党成立的历史意义；了解第一次国共合作和北伐战争、南京国民政府的建立；了解南昌起义、秋收起义等史事，知道中国共产党创建人民军队和农村革命根据地的意义；通过了解井冈山革命根据地的建立、红军长征等史事，认识中国共产党开辟革命新道路的艰难历程。\n1.5 中华民族的抗日战争\n通过了解九一八事变、西安事变、七七事变等史事，认识日本侵华的罪行；了解正面战场和敌后战场的抗战；了解中国共产党在全民族抗战中的中流砥柱作用；通过了解中国国际地位提高的史事，认识中国抗日战争在世界反法西斯战争中的重要地位。\n1.6 人民解放战争\n了解重庆谈判、全面内战爆发和三大战役等史事，知道中国共产党带领中国人民取得人民解放战争胜利的原因；认识中华人民共和国成立的意义。", CJ_achievementRequirement: "2.1 能够了解中国近代历史的主要线索和重要的事件、人物、现象，知道重大史事发生的时间和地点、原因和结果，初步养成历史时序意识和历史空间感。（唯物史观、时空观念）\n2.2 能够知道中国近代遗留至今的各类史料是了解和认识中国近代历史的证据，能结合语文、地理、艺术等课程的学习，初步理解近代史料的含义，尝试运用史料说明历史问题。（史料实证、历史解释）\n2.3 能够对中国近代历史上的重要事件、人物、现象等形成合理想象，进行初步分析，认识其意义和影响。（唯物史观、历史解释、家国情怀）\n2.4 能够认识中国近代历史的发展趋势，理解近代中国人民反抗外来侵略、争取民族独立和人民解放的历史意义；能够认识中国共产党在新民主主义革命中的领导作用，树立正确的历史观，增强民族自尊心、自信心和自豪感，厚植爱国情怀。（唯物史观、家国情怀）", CJ_teachingTip: "中国近代史的学习内容，涉及列强侵略与中华民族的抗争、各阶层救亡图存的探索以及中国共产党领导新民主主义革命的历程等。在教学中，要引导学生把握历史发展的基本线索，理解近代中国社会性质的变化，认识中华民族在危难中奋起的历史进程。\n要注重引导学生运用史料，结合具体史事分析历史问题，理解近代中国人民反抗外来侵略、争取民族独立与人民解放的意义，增强国家认同和民族认同。", CJ_Domain: "urn:jy:history:SB0307:OB03:Domain:1:OB03"};

MERGE (n:Theme {identifier: "urn:jy:history:SB0307:OB03:Theme:3:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:Theme:3:OB03", title: "中国现代史", description: "中国现代史自中华人民共和国成立至今，叙述全国各族人民在中国共产党领导下，进行社会主义革命、建立社会主义制度、推进社会主义建设、进行改革开放、走中国特色社会主义道路、建设社会主义现代化国家、开创中国特色社会主义新时代的历程，展现了中华民族从站起来、富起来到强起来的伟大飞跃。", subject: "SB0307", type: "Theme", applicableLevel: "OB03", contentJson: "{\"ContentRequirements\": \"1.1 中华人民共和国成立和巩固\\n通过了解开国大典、抗美援朝、土地改革等史事，认识中华人民共和国成立的伟大意义；知道新中国政权巩固的主要措施。\\n1.2 社会主义制度的建立与社会主义建设的探索\\n了解第一个五年计划、三大改造等史事，认识社会主义制度建立的意义；了解探索社会主义建设道路中取得的成就与出现的失误。\\n1.3 改革开放与社会主义现代化建设\\n了解十一届三中全会、改革开放的主要举措和取得的成就，认识改革开放的历史意义；了解社会主义现代化建设的进程和人民生活水平的提高。\\n1.4 中国特色社会主义进入新时代\\n了解党的十八大以来党和国家事业取得的历史性成就、发生的历史性变革，认识中国特色社会主义进入新时代的重大意义。\", \"achievementRequirement\": \"2.1 能够了解中国现代史的主要线索和重要的事件、人物、现象，知道重大史事发生的时间和地点、原因和结果，初步养成历史时序意识和历史空间感。（唯物史观、时空观念）\\n2.2 能够知道中国现代史相关史料是了解和认识中国现代史的证据，初步理解史料的含义，尝试运用史料说明历史问题。（史料实证、历史解释）\\n2.3 能够对中国现代史上的重要事件、人物、现象等形成合理想象，进行初步分析，认识其意义和影响。（唯物史观、历史解释、家国情怀）\\n2.4 能够认识中国现代化建设的历史进程，理解中国共产党领导人民进行社会主义革命和建设、改革开放与现代化建设取得巨大成就的意义，增强制度自信和道路自信，厚植家国情怀。（唯物史观、家国情怀）\", \"teachingTip\": \"中国现代史的教学应引导学生在理解历史背景的基础上，把握新中国成立以来的历史发展脉络，认识社会主义制度建立、社会主义建设探索、改革开放和中国特色社会主义进入新时代等历史进程。\\n要注重引导学生理解重大历史事件与现实生活的联系，认识中国共产党领导人民取得的历史性成就，增强国家认同、制度认同和责任担当。\", \"Domain\": \"urn:jy:history:SB0307:OB03:Domain:1:OB03\"}", CJ_ContentRequirements: "1.1 中华人民共和国成立和巩固\n通过了解开国大典、抗美援朝、土地改革等史事，认识中华人民共和国成立的伟大意义；知道新中国政权巩固的主要措施。\n1.2 社会主义制度的建立与社会主义建设的探索\n了解第一个五年计划、三大改造等史事，认识社会主义制度建立的意义；了解探索社会主义建设道路中取得的成就与出现的失误。\n1.3 改革开放与社会主义现代化建设\n了解十一届三中全会、改革开放的主要举措和取得的成就，认识改革开放的历史意义；了解社会主义现代化建设的进程和人民生活水平的提高。\n1.4 中国特色社会主义进入新时代\n了解党的十八大以来党和国家事业取得的历史性成就、发生的历史性变革，认识中国特色社会主义进入新时代的重大意义。", CJ_achievementRequirement: "2.1 能够了解中国现代史的主要线索和重要的事件、人物、现象，知道重大史事发生的时间和地点、原因和结果，初步养成历史时序意识和历史空间感。（唯物史观、时空观念）\n2.2 能够知道中国现代史相关史料是了解和认识中国现代史的证据，初步理解史料的含义，尝试运用史料说明历史问题。（史料实证、历史解释）\n2.3 能够对中国现代史上的重要事件、人物、现象等形成合理想象，进行初步分析，认识其意义和影响。（唯物史观、历史解释、家国情怀）\n2.4 能够认识中国现代化建设的历史进程，理解中国共产党领导人民进行社会主义革命和建设、改革开放与现代化建设取得巨大成就的意义，增强制度自信和道路自信，厚植家国情怀。（唯物史观、家国情怀）", CJ_teachingTip: "中国现代史的教学应引导学生在理解历史背景的基础上，把握新中国成立以来的历史发展脉络，认识社会主义制度建立、社会主义建设探索、改革开放和中国特色社会主义进入新时代等历史进程。\n要注重引导学生理解重大历史事件与现实生活的联系，认识中国共产党领导人民取得的历史性成就，增强国家认同、制度认同和责任担当。", CJ_Domain: "urn:jy:history:SB0307:OB03:Domain:1:OB03"};

MERGE (n:Theme {identifier: "urn:jy:history:SB0307:OB03:Theme:4:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:Theme:4:OB03", title: "世界古代史", description: "世界古代史主要叙述人类早期文明的起源与发展，重点阐述世界各区域文明的多元发展及其相互影响。", subject: "SB0307", type: "Theme", applicableLevel: "OB03", contentJson: "{\"ContentRequirements\": \"1.1 区域文明的兴起与发展\\n通过了解两河流域、古埃及、古印度等文明的代表性成就，认识世界古代文明的多元性；了解古代文明与自然环境、生产方式和社会结构之间的关系。\\n1.2 古代帝国与文明交流\\n了解古代希腊罗马文明的主要成就及其对后世的影响；了解丝绸之路等古代文明交流的史事，认识文明交流互鉴对人类文明发展的意义。\", \"achievementRequirement\": \"2.1 能够了解世界古代史的主要线索和重要的事件、人物、现象，知道重大史事发生的时间和地点、原因和结果，初步形成历史时序意识和历史空间感。（唯物史观、时空观念）\\n2.2 能够知道世界古代史相关史料是了解和认识世界古代史的证据，初步理解史料的含义，尝试运用史料说明历史问题。（史料实证、历史解释）\\n2.3 能够对世界古代史上的重要事件、人物、现象等形成合理想象，进行初步分析，认识其意义和影响。（唯物史观、历史解释）\\n2.4 能够认识世界古代文明的多元发展及其交流互鉴的历史意义，理解人类文明发展的多样性与共通性。（唯物史观、时空观念）\", \"teachingTip\": \"世界古代史的学习内容，尤其是一些历史地点、历史人物、历史事件、历史制度等，对于学生来说相对陌生。因此，在教学中要注意充分运用直观材料，拉近学生与所学内容的距离。要注意对世界古代史上典型的文明成果、重要历史人物和历史事件进行具体、形象的讲述，注重对重要历史概念的解读。同时，要加强对学生学习世界史的学法指导，注重学生对世界古代史材料的阅读理解。\\n在教学过程中，要重点概括世界各个区域文明的主要特征，梳理各区域文明互动的过程及其结果。要注意引导学生认识人类文明的起源具有多源性，各大文化区域的文明成果构成了人类文明的多元性特点。同时，要引导学生回顾、联系中国古代史的学习内容，了解中国古代文明在世界文明中的地位。\", \"Domain\": \"urn:jy:history:SB0307:OB03:Domain:2:OB03\"}", CJ_ContentRequirements: "1.1 区域文明的兴起与发展\n通过了解两河流域、古埃及、古印度等文明的代表性成就，认识世界古代文明的多元性；了解古代文明与自然环境、生产方式和社会结构之间的关系。\n1.2 古代帝国与文明交流\n了解古代希腊罗马文明的主要成就及其对后世的影响；了解丝绸之路等古代文明交流的史事，认识文明交流互鉴对人类文明发展的意义。", CJ_achievementRequirement: "2.1 能够了解世界古代史的主要线索和重要的事件、人物、现象，知道重大史事发生的时间和地点、原因和结果，初步形成历史时序意识和历史空间感。（唯物史观、时空观念）\n2.2 能够知道世界古代史相关史料是了解和认识世界古代史的证据，初步理解史料的含义，尝试运用史料说明历史问题。（史料实证、历史解释）\n2.3 能够对世界古代史上的重要事件、人物、现象等形成合理想象，进行初步分析，认识其意义和影响。（唯物史观、历史解释）\n2.4 能够认识世界古代文明的多元发展及其交流互鉴的历史意义，理解人类文明发展的多样性与共通性。（唯物史观、时空观念）", CJ_teachingTip: "世界古代史的学习内容，尤其是一些历史地点、历史人物、历史事件、历史制度等，对于学生来说相对陌生。因此，在教学中要注意充分运用直观材料，拉近学生与所学内容的距离。要注意对世界古代史上典型的文明成果、重要历史人物和历史事件进行具体、形象的讲述，注重对重要历史概念的解读。同时，要加强对学生学习世界史的学法指导，注重学生对世界古代史材料的阅读理解。\n在教学过程中，要重点概括世界各个区域文明的主要特征，梳理各区域文明互动的过程及其结果。要注意引导学生认识人类文明的起源具有多源性，各大文化区域的文明成果构成了人类文明的多元性特点。同时，要引导学生回顾、联系中国古代史的学习内容，了解中国古代文明在世界文明中的地位。", CJ_Domain: "urn:jy:history:SB0307:OB03:Domain:2:OB03"};

MERGE (n:Theme {identifier: "urn:jy:history:SB0307:OB03:Theme:5:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:Theme:5:OB03", title: "世界近代史", description: "世界近代史主要叙述资本主义的形成与发展，社会主义运动与民族解放运动兴起和发展的历程，重点阐释近代世界历史发展的主要线索。", subject: "SB0307", type: "Theme", applicableLevel: "OB03", contentJson: "{\"ContentRequirements\": \"1.1 资本主义制度的形成与发展\\n通过了解文艺复兴、新航路开辟、早期殖民扩张等史事，认识世界由分散走向联系的过程；了解英、美、法资产阶级革命的主要史事，认识资本主义制度确立的历史意义。\\n1.2 工业革命与世界市场的形成\\n了解工业革命的主要成就及其影响，认识生产力发展对社会变革的推动作用；了解殖民扩张与世界市场形成的史事，认识资本主义世界体系的形成。\\n1.3 社会主义运动与民族解放运动\\n了解马克思主义诞生、巴黎公社等史事，认识社会主义运动的发展；了解拉丁美洲独立、亚洲和非洲民族解放运动等史事，认识民族解放运动的历史意义。\", \"achievementRequirement\": \"2.1 能够了解世界近代史的主要线索和重要的事件、人物、现象，知道重大史事发生的时间和地点、原因和结果，初步形成历史时序意识和历史空间感。（唯物史观、时空观念）\\n2.2 能够知道世界近代史相关史料是了解和认识世界近代史的证据，初步理解史料的含义，尝试运用史料说明历史问题。（史料实证、历史解释）\\n2.3 能够对世界近代史上的重要事件、人物、现象等形成合理想象，进行初步分析，认识其意义和影响。（唯物史观、历史解释）\\n2.4 能够认识资本主义发展、社会主义运动和民族解放运动对近代世界历史进程的影响，理解世界历史发展的多样性与复杂性。（唯物史观、时空观念）\", \"teachingTip\": \"世界近代史的教学应引导学生把握资本主义形成与发展、社会主义运动与民族解放运动等基本线索，理解近代世界历史发展的动力与影响。\\n要注重引导学生结合典型史事与史料进行分析，认识生产力发展与社会变革的关系，理解不同国家和地区在近代化进程中的差异与联系。\", \"Domain\": \"urn:jy:history:SB0307:OB03:Domain:2:OB03\"}", CJ_ContentRequirements: "1.1 资本主义制度的形成与发展\n通过了解文艺复兴、新航路开辟、早期殖民扩张等史事，认识世界由分散走向联系的过程；了解英、美、法资产阶级革命的主要史事，认识资本主义制度确立的历史意义。\n1.2 工业革命与世界市场的形成\n了解工业革命的主要成就及其影响，认识生产力发展对社会变革的推动作用；了解殖民扩张与世界市场形成的史事，认识资本主义世界体系的形成。\n1.3 社会主义运动与民族解放运动\n了解马克思主义诞生、巴黎公社等史事，认识社会主义运动的发展；了解拉丁美洲独立、亚洲和非洲民族解放运动等史事，认识民族解放运动的历史意义。", CJ_achievementRequirement: "2.1 能够了解世界近代史的主要线索和重要的事件、人物、现象，知道重大史事发生的时间和地点、原因和结果，初步形成历史时序意识和历史空间感。（唯物史观、时空观念）\n2.2 能够知道世界近代史相关史料是了解和认识世界近代史的证据，初步理解史料的含义，尝试运用史料说明历史问题。（史料实证、历史解释）\n2.3 能够对世界近代史上的重要事件、人物、现象等形成合理想象，进行初步分析，认识其意义和影响。（唯物史观、历史解释）\n2.4 能够认识资本主义发展、社会主义运动和民族解放运动对近代世界历史进程的影响，理解世界历史发展的多样性与复杂性。（唯物史观、时空观念）", CJ_teachingTip: "世界近代史的教学应引导学生把握资本主义形成与发展、社会主义运动与民族解放运动等基本线索，理解近代世界历史发展的动力与影响。\n要注重引导学生结合典型史事与史料进行分析，认识生产力发展与社会变革的关系，理解不同国家和地区在近代化进程中的差异与联系。", CJ_Domain: "urn:jy:history:SB0307:OB03:Domain:2:OB03"};

MERGE (n:Theme {identifier: "urn:jy:history:SB0307:OB03:Theme:6:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:Theme:6:OB03", title: "世界现代史", description: "世界现代史主要叙述 20 世纪以来战争与革命、和平与发展并存的历史进程，重点阐释当代世界的基本特征及其发展趋势。", subject: "SB0307", type: "Theme", applicableLevel: "OB03", contentJson: "{\"ContentRequirements\": \"1.1 两次世界大战与世界格局的演变\\n了解第一次世界大战和第二次世界大战的主要史事，认识战争给人类带来的深重灾难；了解战后国际秩序与国际格局的变化，认识联合国等国际组织的作用。\\n1.2 冷战与世界多极化发展\\n了解冷战的形成与主要事件，认识冷战对世界格局的影响；了解世界多极化和经济全球化的发展趋势。\\n1.3 科学技术进步与社会生活变化\\n了解 20 世纪以来科学技术进步的主要成就及其影响，认识科技发展对社会生活和世界发展的推动作用。\\n1.4 和平与发展时代主题\\n认识当代世界和平与发展的时代主题，理解构建人类命运共同体的必要性和重要性。\", \"achievementRequirement\": \"2.1 能够了解世界现代史的主要线索和重要的事件、人物、现象，知道重大史事发生的时间和地点、原因和结果，初步形成历史时序意识和历史空间感。（唯物史观、时空观念）\\n2.2 能够知道世界现代史相关史料是了解和认识世界现代史的证据，初步理解史料的含义，尝试运用史料说明历史问题。（史料实证、历史解释）\\n2.3 能够对世界现代史上的重要事件、人物、现象等形成合理想象，进行初步分析，认识其意义和影响。（唯物史观、历史解释）\\n2.4 能够认识战争与革命、和平与发展交织的世界现代史进程，理解当代世界发展的基本特征与趋势，形成开放的世界意识。（唯物史观、时空观念）\", \"teachingTip\": \"世界现代史的教学应引导学生在把握重大历史事件的基础上，理解 20 世纪以来世界格局的演变和当代世界发展的基本趋势，关注历史与现实的联系。\\n要引导学生综合运用史料与多学科知识，认识和平与发展主题的重要意义，培养全球视野与责任意识。\", \"Domain\": \"urn:jy:history:SB0307:OB03:Domain:2:OB03\"}", CJ_ContentRequirements: "1.1 两次世界大战与世界格局的演变\n了解第一次世界大战和第二次世界大战的主要史事，认识战争给人类带来的深重灾难；了解战后国际秩序与国际格局的变化，认识联合国等国际组织的作用。\n1.2 冷战与世界多极化发展\n了解冷战的形成与主要事件，认识冷战对世界格局的影响；了解世界多极化和经济全球化的发展趋势。\n1.3 科学技术进步与社会生活变化\n了解 20 世纪以来科学技术进步的主要成就及其影响，认识科技发展对社会生活和世界发展的推动作用。\n1.4 和平与发展时代主题\n认识当代世界和平与发展的时代主题，理解构建人类命运共同体的必要性和重要性。", CJ_achievementRequirement: "2.1 能够了解世界现代史的主要线索和重要的事件、人物、现象，知道重大史事发生的时间和地点、原因和结果，初步形成历史时序意识和历史空间感。（唯物史观、时空观念）\n2.2 能够知道世界现代史相关史料是了解和认识世界现代史的证据，初步理解史料的含义，尝试运用史料说明历史问题。（史料实证、历史解释）\n2.3 能够对世界现代史上的重要事件、人物、现象等形成合理想象，进行初步分析，认识其意义和影响。（唯物史观、历史解释）\n2.4 能够认识战争与革命、和平与发展交织的世界现代史进程，理解当代世界发展的基本特征与趋势，形成开放的世界意识。（唯物史观、时空观念）", CJ_teachingTip: "世界现代史的教学应引导学生在把握重大历史事件的基础上，理解 20 世纪以来世界格局的演变和当代世界发展的基本趋势，关注历史与现实的联系。\n要引导学生综合运用史料与多学科知识，认识和平与发展主题的重要意义，培养全球视野与责任意识。", CJ_Domain: "urn:jy:history:SB0307:OB03:Domain:2:OB03"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:1:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:1:OB03", title: "第一单元 史前时期：原始社会与中华文明的起源", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"新教材-初中历史统编版七年级上册\"}", CJ_course: "新教材-初中历史统编版七年级上册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:2:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:2:OB03", title: "第二单元 夏商周时期：奴隶制王朝的更替和向封建社会的过渡", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"新教材-初中历史统编版七年级上册\"}", CJ_course: "新教材-初中历史统编版七年级上册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:3:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:3:OB03", title: "第三单元 秦汉时期：统一多民族封建国家的建立和巩固", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"新教材-初中历史统编版七年级上册\"}", CJ_course: "新教材-初中历史统编版七年级上册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:4:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:4:OB03", title: "第四单元 三国两晋南北朝时期：政权分立与民族交融", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"新教材-初中历史统编版七年级上册\"}", CJ_course: "新教材-初中历史统编版七年级上册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:5:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:5:OB03", title: "第一单元 隋唐时期：繁荣与开放的时代", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"新教材- 初中历史统编版七年级下册\"}", CJ_course: "新教材- 初中历史统编版七年级下册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:6:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:6:OB03", title: "第二单元 辽宋夏金元时期：民族关系发展和社会变化", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"新教材- 初中历史统编版七年级下册\"}", CJ_course: "新教材- 初中历史统编版七年级下册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:7:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:7:OB03", title: "第三单元 明清时期（至鸦片战争前）：统一多民族封建国家的巩固与发展", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"新教材- 初中历史统编版七年级下册\"}", CJ_course: "新教材- 初中历史统编版七年级下册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:8:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:8:OB03", title: "学史方法", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"新教材- 初中历史统编版七年级下册\"}", CJ_course: "新教材- 初中历史统编版七年级下册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:9:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:9:OB03", title: "附录 中国古代史大事年表（下）", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"新教材- 初中历史统编版七年级下册\"}", CJ_course: "新教材- 初中历史统编版七年级下册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:10:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:10:OB03", title: "第一单元 中国开始沦为半殖民地半封建社会", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"新教材-初中历史统编版八年级上册\"}", CJ_course: "新教材-初中历史统编版八年级上册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:11:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:11:OB03", title: "第二单元 早期现代化的初步探索和民族危机加剧", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"新教材-初中历史统编版八年级上册\"}", CJ_course: "新教材-初中历史统编版八年级上册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:12:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:12:OB03", title: "第三单元 资产阶级民主革命与中华民国的建立", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"新教材-初中历史统编版八年级上册\"}", CJ_course: "新教材-初中历史统编版八年级上册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:13:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:13:OB03", title: "第四单元 新民主主义革命的兴起", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"新教材-初中历史统编版八年级上册\"}", CJ_course: "新教材-初中历史统编版八年级上册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:14:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:14:OB03", title: "第五单元 从国共合作到农村革命根据地的建立", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"新教材-初中历史统编版八年级上册\"}", CJ_course: "新教材-初中历史统编版八年级上册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:15:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:15:OB03", title: "第六单元 中华民族的抗日战争", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"新教材-初中历史统编版八年级上册\"}", CJ_course: "新教材-初中历史统编版八年级上册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:16:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:16:OB03", title: "第七单元 人民解放战争", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"新教材-初中历史统编版八年级上册\"}", CJ_course: "新教材-初中历史统编版八年级上册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:17:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:17:OB03", title: "第一单元 中华人民共和国的成立和巩固", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"初中历史统编版八年级下册\"}", CJ_course: "初中历史统编版八年级下册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:18:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:18:OB03", title: "第二单元 社会主义制度的建立与社会主义建设的探索", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"初中历史统编版八年级下册\"}", CJ_course: "初中历史统编版八年级下册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:19:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:19:OB03", title: "第三单元 中国特色社会主义道路", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"初中历史统编版八年级下册\"}", CJ_course: "初中历史统编版八年级下册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:20:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:20:OB03", title: "第四单元 民族团结与祖国统一", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"初中历史统编版八年级下册\"}", CJ_course: "初中历史统编版八年级下册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:21:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:21:OB03", title: "第五单元 国防建设与外交成就", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"初中历史统编版八年级下册\"}", CJ_course: "初中历史统编版八年级下册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:22:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:22:OB03", title: "第六单元 科技文化与社会生活", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"初中历史统编版八年级下册\"}", CJ_course: "初中历史统编版八年级下册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:23:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:23:OB03", title: "附录 中国近现代史大事年表（下）", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"初中历史统编版八年级下册\"}", CJ_course: "初中历史统编版八年级下册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:24:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:24:OB03", title: "第一单元 古代亚非文明", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"初中历史统编版九年级上册\"}", CJ_course: "初中历史统编版九年级上册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:25:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:25:OB03", title: "第二单元 古代欧洲文明", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"初中历史统编版九年级上册\"}", CJ_course: "初中历史统编版九年级上册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:26:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:26:OB03", title: "第三单元 封建时代的欧洲", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"初中历史统编版九年级上册\"}", CJ_course: "初中历史统编版九年级上册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:27:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:27:OB03", title: "第四单元 封建时代的亚洲国家", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"初中历史统编版九年级上册\"}", CJ_course: "初中历史统编版九年级上册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:28:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:28:OB03", title: "第五单元 走向近代", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"初中历史统编版九年级上册\"}", CJ_course: "初中历史统编版九年级上册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:29:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:29:OB03", title: "第六单元 资本主义制度的初步确立", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"初中历史统编版九年级上册\"}", CJ_course: "初中历史统编版九年级上册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:30:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:30:OB03", title: "第七单元 工业革命和国际共产主义运动的兴起", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"初中历史统编版九年级上册\"}", CJ_course: "初中历史统编版九年级上册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:31:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:31:OB03", title: "附录", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"初中历史统编版九年级上册\"}", CJ_course: "初中历史统编版九年级上册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:32:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:32:OB03", title: "第一单元 殖民地人民的反抗与资本主义制度的扩展", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"初中历史统编版九年级下册\"}", CJ_course: "初中历史统编版九年级下册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:33:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:33:OB03", title: "第二单元 第二次工业革命和近代科学文化", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"初中历史统编版九年级下册\"}", CJ_course: "初中历史统编版九年级下册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:34:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:34:OB03", title: "第三单元 第一次世界大战和战后初期的世界", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"初中历史统编版九年级下册\"}", CJ_course: "初中历史统编版九年级下册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:35:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:35:OB03", title: "第四单元 经济大危机和第二次世界大战", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"初中历史统编版九年级下册\"}", CJ_course: "初中历史统编版九年级下册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:36:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:36:OB03", title: "第五单元 二战后的世界变化", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"初中历史统编版九年级下册\"}", CJ_course: "初中历史统编版九年级下册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:37:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:37:OB03", title: "第六单元 走向和平发展的世界", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"初中历史统编版九年级下册\"}", CJ_course: "初中历史统编版九年级下册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:38:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:38:OB03", title: "提取历史有效信息的主题研究", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"初中历史统编版九年级下册\"}", CJ_course: "初中历史统编版九年级下册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:39:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:39:OB03", title: "单元复习", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"初中历史统编版九年级下册\"}", CJ_course: "初中历史统编版九年级下册"};

MERGE (n:Chapter {identifier: "urn:jy:history:SB0307:OB03:bookunit:40:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:bookunit:40:OB03", title: "中考复习", description: "", type: "Chapter", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"course\": \"初中历史统编版九年级下册\"}", CJ_course: "初中历史统编版九年级下册"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:1:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:1:OB03", title: "第1课 远古时期的人类活动", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第一单元 史前时期：原始社会与中华文明的起源\"}", CJ_bookunit: "第一单元 史前时期：原始社会与中华文明的起源"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:2:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:2:OB03", title: "第2课 原始农业与史前社会", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第一单元 史前时期：原始社会与中华文明的起源\"}", CJ_bookunit: "第一单元 史前时期：原始社会与中华文明的起源"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:3:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:3:OB03", title: "第3课 中华文明的起源", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第一单元 史前时期：原始社会与中华文明的起源\"}", CJ_bookunit: "第一单元 史前时期：原始社会与中华文明的起源"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:4:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:4:OB03", title: "第4课 夏商西周王朝的更替", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第二单元 夏商周时期：奴隶制王朝的更替和向封建社会的过渡\"}", CJ_bookunit: "第二单元 夏商周时期：奴隶制王朝的更替和向封建社会的过渡"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:5:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:5:OB03", title: "第5课 动荡变化中的春秋时期", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第二单元 夏商周时期：奴隶制王朝的更替和向封建社会的过渡\"}", CJ_bookunit: "第二单元 夏商周时期：奴隶制王朝的更替和向封建社会的过渡"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:6:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:6:OB03", title: "第6课 战国时期的社会变革", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第二单元 夏商周时期：奴隶制王朝的更替和向封建社会的过渡\"}", CJ_bookunit: "第二单元 夏商周时期：奴隶制王朝的更替和向封建社会的过渡"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:7:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:7:OB03", title: "第7课 百家争鸣", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第二单元 夏商周时期：奴隶制王朝的更替和向封建社会的过渡\"}", CJ_bookunit: "第二单元 夏商周时期：奴隶制王朝的更替和向封建社会的过渡"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:8:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:8:OB03", title: "第8课 夏商周时期的科技与文化", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第二单元 夏商周时期：奴隶制王朝的更替和向封建社会的过渡\"}", CJ_bookunit: "第二单元 夏商周时期：奴隶制王朝的更替和向封建社会的过渡"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:9:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:9:OB03", title: "第9课 秦统一中国", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 秦汉时期：统一多民族封建国家的建立和巩固\"}", CJ_bookunit: "第三单元 秦汉时期：统一多民族封建国家的建立和巩固"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:10:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:10:OB03", title: "第10课 秦末农民大起义", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 秦汉时期：统一多民族封建国家的建立和巩固\"}", CJ_bookunit: "第三单元 秦汉时期：统一多民族封建国家的建立和巩固"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:11:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:11:OB03", title: "第11课 西汉建立和“文景之治”", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 秦汉时期：统一多民族封建国家的建立和巩固\"}", CJ_bookunit: "第三单元 秦汉时期：统一多民族封建国家的建立和巩固"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:12:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:12:OB03", title: "第12课 大一统王朝的巩固", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 秦汉时期：统一多民族封建国家的建立和巩固\"}", CJ_bookunit: "第三单元 秦汉时期：统一多民族封建国家的建立和巩固"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:13:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:13:OB03", title: "第13课 东汉的兴衰", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 秦汉时期：统一多民族封建国家的建立和巩固\"}", CJ_bookunit: "第三单元 秦汉时期：统一多民族封建国家的建立和巩固"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:14:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:14:OB03", title: "第14课 丝绸之路的开通与经营西域", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 秦汉时期：统一多民族封建国家的建立和巩固\"}", CJ_bookunit: "第三单元 秦汉时期：统一多民族封建国家的建立和巩固"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:15:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:15:OB03", title: "第15课 秦汉时期的科技与文化", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 秦汉时期：统一多民族封建国家的建立和巩固\"}", CJ_bookunit: "第三单元 秦汉时期：统一多民族封建国家的建立和巩固"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:16:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:16:OB03", title: "第16课 三国鼎立", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第四单元 三国两晋南北朝时期：政权分立与民族交融\"}", CJ_bookunit: "第四单元 三国两晋南北朝时期：政权分立与民族交融"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:17:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:17:OB03", title: "第17课 西晋的短暂统一和北方各族的内迁", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第四单元 三国两晋南北朝时期：政权分立与民族交融\"}", CJ_bookunit: "第四单元 三国两晋南北朝时期：政权分立与民族交融"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:18:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:18:OB03", title: "第18课 东晋南朝政治和江南地区开发", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第四单元 三国两晋南北朝时期：政权分立与民族交融\"}", CJ_bookunit: "第四单元 三国两晋南北朝时期：政权分立与民族交融"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:19:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:19:OB03", title: "第19课 北朝政治和北方民族大交融", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第四单元 三国两晋南北朝时期：政权分立与民族交融\"}", CJ_bookunit: "第四单元 三国两晋南北朝时期：政权分立与民族交融"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:20:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:20:OB03", title: "第20课 三国两晋南北朝时期的科技与文化", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第四单元 三国两晋南北朝时期：政权分立与民族交融\"}", CJ_bookunit: "第四单元 三国两晋南北朝时期：政权分立与民族交融"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:21:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:21:OB03", title: "第21课 活动课 从考古发现看中华文明的起源", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第四单元 三国两晋南北朝时期：政权分立与民族交融\"}", CJ_bookunit: "第四单元 三国两晋南北朝时期：政权分立与民族交融"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:22:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:22:OB03", title: "第1 课 隋朝统一与灭亡", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第一单元 隋唐时期：繁荣与开放的时代\"}", CJ_bookunit: "第一单元 隋唐时期：繁荣与开放的时代"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:23:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:23:OB03", title: "第2 课 唐朝建立与“贞观之治”", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第一单元 隋唐时期：繁荣与开放的时代\"}", CJ_bookunit: "第一单元 隋唐时期：繁荣与开放的时代"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:24:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:24:OB03", title: "第3 课 “开元盛世”", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第一单元 隋唐时期：繁荣与开放的时代\"}", CJ_bookunit: "第一单元 隋唐时期：繁荣与开放的时代"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:25:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:25:OB03", title: "第4 课 安史之乱与唐朝衰亡", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第一单元 隋唐时期：繁荣与开放的时代\"}", CJ_bookunit: "第一单元 隋唐时期：繁荣与开放的时代"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:26:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:26:OB03", title: "第5 课 隋唐时期的民族交往与交融", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第一单元 隋唐时期：繁荣与开放的时代\"}", CJ_bookunit: "第一单元 隋唐时期：繁荣与开放的时代"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:27:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:27:OB03", title: "第6 课 隋唐时期的中外文化交流", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第一单元 隋唐时期：繁荣与开放的时代\"}", CJ_bookunit: "第一单元 隋唐时期：繁荣与开放的时代"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:28:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:28:OB03", title: "第7 课 隋唐时期的科技与文化", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第一单元 隋唐时期：繁荣与开放的时代\"}", CJ_bookunit: "第一单元 隋唐时期：繁荣与开放的时代"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:29:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:29:OB03", title: "第8 课 北宋的政治", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第二单元 辽宋夏金元时期：民族关系发展和社会变化\"}", CJ_bookunit: "第二单元 辽宋夏金元时期：民族关系发展和社会变化"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:30:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:30:OB03", title: "第9 课 辽、西夏与北宋并立", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第二单元 辽宋夏金元时期：民族关系发展和社会变化\"}", CJ_bookunit: "第二单元 辽宋夏金元时期：民族关系发展和社会变化"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:31:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:31:OB03", title: "第10 课 金与南宋对峙", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第二单元 辽宋夏金元时期：民族关系发展和社会变化\"}", CJ_bookunit: "第二单元 辽宋夏金元时期：民族关系发展和社会变化"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:32:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:32:OB03", title: "第11 课 元朝的建立与统一", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第二单元 辽宋夏金元时期：民族关系发展和社会变化\"}", CJ_bookunit: "第二单元 辽宋夏金元时期：民族关系发展和社会变化"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:33:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:33:OB03", title: "第12 课 辽宋夏金元时期经济的繁荣", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第二单元 辽宋夏金元时期：民族关系发展和社会变化\"}", CJ_bookunit: "第二单元 辽宋夏金元时期：民族关系发展和社会变化"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:34:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:34:OB03", title: "第13 课 辽宋夏金元时期的对外交流", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第二单元 辽宋夏金元时期：民族关系发展和社会变化\"}", CJ_bookunit: "第二单元 辽宋夏金元时期：民族关系发展和社会变化"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:35:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:35:OB03", title: "第14 课 辽宋夏金元时期的科技与文化", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第二单元 辽宋夏金元时期：民族关系发展和社会变化\"}", CJ_bookunit: "第二单元 辽宋夏金元时期：民族关系发展和社会变化"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:36:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:36:OB03", title: "第15 课 明朝的统治", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 明清时期（至鸦片战争前）：统一多民族封建国家的巩固与发展\"}", CJ_bookunit: "第三单元 明清时期（至鸦片战争前）：统一多民族封建国家的巩固与发展"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:37:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:37:OB03", title: "第16 课 明朝的对外关系", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 明清时期（至鸦片战争前）：统一多民族封建国家的巩固与发展\"}", CJ_bookunit: "第三单元 明清时期（至鸦片战争前）：统一多民族封建国家的巩固与发展"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:38:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:38:OB03", title: "第17 课 明朝的灭亡和清朝的建立", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 明清时期（至鸦片战争前）：统一多民族封建国家的巩固与发展\"}", CJ_bookunit: "第三单元 明清时期（至鸦片战争前）：统一多民族封建国家的巩固与发展"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:39:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:39:OB03", title: "第18 课 清朝的边疆治理", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 明清时期（至鸦片战争前）：统一多民族封建国家的巩固与发展\"}", CJ_bookunit: "第三单元 明清时期（至鸦片战争前）：统一多民族封建国家的巩固与发展"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:40:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:40:OB03", title: "第19 课 清朝君主专制的强化", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 明清时期（至鸦片战争前）：统一多民族封建国家的巩固与发展\"}", CJ_bookunit: "第三单元 明清时期（至鸦片战争前）：统一多民族封建国家的巩固与发展"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:41:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:41:OB03", title: "第20 课 明清时期社会经济的发展", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 明清时期（至鸦片战争前）：统一多民族封建国家的巩固与发展\"}", CJ_bookunit: "第三单元 明清时期（至鸦片战争前）：统一多民族封建国家的巩固与发展"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:42:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:42:OB03", title: "第21 课 明清时期的科技与文化", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 明清时期（至鸦片战争前）：统一多民族封建国家的巩固与发展\"}", CJ_bookunit: "第三单元 明清时期（至鸦片战争前）：统一多民族封建国家的巩固与发展"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:43:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:43:OB03", title: "第22 课 活动课 我国传统节日的起源与传承", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 明清时期（至鸦片战争前）：统一多民族封建国家的巩固与发展\"}", CJ_bookunit: "第三单元 明清时期（至鸦片战争前）：统一多民族封建国家的巩固与发展"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:44:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:44:OB03", title: "（一）如何读懂文献史料", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"学史方法\"}", CJ_bookunit: "学史方法"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:45:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:45:OB03", title: "（二）如何把握史事要素", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"学史方法\"}", CJ_bookunit: "学史方法"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:46:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:46:OB03", title: "第1课 鸦片战争", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第一单元 中国开始沦为半殖民地半封建社会\"}", CJ_bookunit: "第一单元 中国开始沦为半殖民地半封建社会"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:47:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:47:OB03", title: "第2课 第二次鸦片战争", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第一单元 中国开始沦为半殖民地半封建社会\"}", CJ_bookunit: "第一单元 中国开始沦为半殖民地半封建社会"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:48:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:48:OB03", title: "第3课 太平天国运动", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第一单元 中国开始沦为半殖民地半封建社会\"}", CJ_bookunit: "第一单元 中国开始沦为半殖民地半封建社会"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:49:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:49:OB03", title: "第4课 洋务运动和边疆危机", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第二单元 早期现代化的初步探索和民族危机加剧\"}", CJ_bookunit: "第二单元 早期现代化的初步探索和民族危机加剧"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:50:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:50:OB03", title: "第5课 甲午中日战争与列强瓜分中国狂潮", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第二单元 早期现代化的初步探索和民族危机加剧\"}", CJ_bookunit: "第二单元 早期现代化的初步探索和民族危机加剧"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:51:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:51:OB03", title: "第6课 戊戌变法", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第二单元 早期现代化的初步探索和民族危机加剧\"}", CJ_bookunit: "第二单元 早期现代化的初步探索和民族危机加剧"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:52:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:52:OB03", title: "第7课 义和团运动和八国联军侵华", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第二单元 早期现代化的初步探索和民族危机加剧\"}", CJ_bookunit: "第二单元 早期现代化的初步探索和民族危机加剧"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:53:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:53:OB03", title: "第8课 中国同盟会", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 资产阶级民主革命与中华民国的建立\"}", CJ_bookunit: "第三单元 资产阶级民主革命与中华民国的建立"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:54:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:54:OB03", title: "第9课 辛亥革命", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 资产阶级民主革命与中华民国的建立\"}", CJ_bookunit: "第三单元 资产阶级民主革命与中华民国的建立"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:55:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:55:OB03", title: "第10课 帝制复辟与军阀割据", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 资产阶级民主革命与中华民国的建立\"}", CJ_bookunit: "第三单元 资产阶级民主革命与中华民国的建立"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:56:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:56:OB03", title: "第11课 五四运动", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第四单元 新民主主义革命的兴起\"}", CJ_bookunit: "第四单元 新民主主义革命的兴起"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:57:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:57:OB03", title: "第12课 中国共产党诞生", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第四单元 新民主主义革命的兴起\"}", CJ_bookunit: "第四单元 新民主主义革命的兴起"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:58:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:58:OB03", title: "第13课 国共合作与北伐战争", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第五单元 从国共合作到农村革命根据地的建立\"}", CJ_bookunit: "第五单元 从国共合作到农村革命根据地的建立"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:59:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:59:OB03", title: "第14课 毛泽东开辟井冈山道路", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第五单元 从国共合作到农村革命根据地的建立\"}", CJ_bookunit: "第五单元 从国共合作到农村革命根据地的建立"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:60:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:60:OB03", title: "第15课 中国工农红军长征与遵义会议", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第五单元 从国共合作到农村革命根据地的建立\"}", CJ_bookunit: "第五单元 从国共合作到农村革命根据地的建立"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:61:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:61:OB03", title: "第16课 从九一八事变到西安事变", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第六单元 中华民族的抗日战争\"}", CJ_bookunit: "第六单元 中华民族的抗日战争"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:62:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:62:OB03", title: "第17课 七七事变与全民族抗战", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第六单元 中华民族的抗日战争\"}", CJ_bookunit: "第六单元 中华民族的抗日战争"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:63:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:63:OB03", title: "第18课 全民族抗战中的正面战场和敌后战场", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第六单元 中华民族的抗日战争\"}", CJ_bookunit: "第六单元 中华民族的抗日战争"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:64:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:64:OB03", title: "第19课 抗日战争的胜利", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第六单元 中华民族的抗日战争\"}", CJ_bookunit: "第六单元 中华民族的抗日战争"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:65:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:65:OB03", title: "第20课 国民党挑起内战", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第七单元 人民解放战争\"}", CJ_bookunit: "第七单元 人民解放战争"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:66:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:66:OB03", title: "第21课 人民解放战争的胜利", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第七单元 人民解放战争\"}", CJ_bookunit: "第七单元 人民解放战争"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:67:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:67:OB03", title: "第22课 活动课 探寻红色文化的历史基因", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第七单元 人民解放战争\"}", CJ_bookunit: "第七单元 人民解放战争"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:68:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:68:OB03", title: "第1课 中华人民共和国成立", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第一单元 中华人民共和国的成立和巩固\"}", CJ_bookunit: "第一单元 中华人民共和国的成立和巩固"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:69:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:69:OB03", title: "第2课 抗美援朝", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第一单元 中华人民共和国的成立和巩固\"}", CJ_bookunit: "第一单元 中华人民共和国的成立和巩固"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:70:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:70:OB03", title: "第3课 土地改革", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第一单元 中华人民共和国的成立和巩固\"}", CJ_bookunit: "第一单元 中华人民共和国的成立和巩固"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:71:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:71:OB03", title: "第4课 新中国工业化的起步和人民代表大会制度的确立", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第二单元 社会主义制度的建立与社会主义建设的探索\"}", CJ_bookunit: "第二单元 社会主义制度的建立与社会主义建设的探索"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:72:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:72:OB03", title: "第5课 三大改造", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第二单元 社会主义制度的建立与社会主义建设的探索\"}", CJ_bookunit: "第二单元 社会主义制度的建立与社会主义建设的探索"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:73:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:73:OB03", title: "第6课 艰辛探索与建设成就", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第二单元 社会主义制度的建立与社会主义建设的探索\"}", CJ_bookunit: "第二单元 社会主义制度的建立与社会主义建设的探索"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:74:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:74:OB03", title: "第7课 伟大的历史转折", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 中国特色社会主义道路\"}", CJ_bookunit: "第三单元 中国特色社会主义道路"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:75:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:75:OB03", title: "第8课 经济体制改革", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 中国特色社会主义道路\"}", CJ_bookunit: "第三单元 中国特色社会主义道路"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:76:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:76:OB03", title: "第9课 对外开放", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 中国特色社会主义道路\"}", CJ_bookunit: "第三单元 中国特色社会主义道路"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:77:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:77:OB03", title: "第10课 建设中国特色社会主义", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 中国特色社会主义道路\"}", CJ_bookunit: "第三单元 中国特色社会主义道路"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:78:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:78:OB03", title: "第11课 为实现中国梦而努力奋斗", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 中国特色社会主义道路\"}", CJ_bookunit: "第三单元 中国特色社会主义道路"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:79:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:79:OB03", title: "第12课 民族大团结", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第四单元 民族团结与祖国统一\"}", CJ_bookunit: "第四单元 民族团结与祖国统一"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:80:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:80:OB03", title: "第13课 香港和澳门回归祖国", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第四单元 民族团结与祖国统一\"}", CJ_bookunit: "第四单元 民族团结与祖国统一"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:81:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:81:OB03", title: "第14课 海峡两岸的交往", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第四单元 民族团结与祖国统一\"}", CJ_bookunit: "第四单元 民族团结与祖国统一"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:82:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:82:OB03", title: "第15课 钢铁长城", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第五单元 国防建设与外交成就\"}", CJ_bookunit: "第五单元 国防建设与外交成就"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:83:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:83:OB03", title: "第16课 独立自主的和平外交", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第五单元 国防建设与外交成就\"}", CJ_bookunit: "第五单元 国防建设与外交成就"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:84:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:84:OB03", title: "第17课 外交事业的发展", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第五单元 国防建设与外交成就\"}", CJ_bookunit: "第五单元 国防建设与外交成就"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:85:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:85:OB03", title: "第18课 科技文化成就", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第六单元 科技文化与社会生活\"}", CJ_bookunit: "第六单元 科技文化与社会生活"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:86:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:86:OB03", title: "第19课 社会生活的变迁", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第六单元 科技文化与社会生活\"}", CJ_bookunit: "第六单元 科技文化与社会生活"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:87:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:87:OB03", title: "第20课 活动课：生活环境的巨大变化", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第六单元 科技文化与社会生活\"}", CJ_bookunit: "第六单元 科技文化与社会生活"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:88:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:88:OB03", title: "第1课 古代埃及", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第一单元 古代亚非文明\"}", CJ_bookunit: "第一单元 古代亚非文明"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:89:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:89:OB03", title: "第2课 古代两河流域", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第一单元 古代亚非文明\"}", CJ_bookunit: "第一单元 古代亚非文明"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:90:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:90:OB03", title: "第3课 古代印度", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第一单元 古代亚非文明\"}", CJ_bookunit: "第一单元 古代亚非文明"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:91:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:91:OB03", title: "第4课 希腊城邦和亚历山大帝国", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第二单元 古代欧洲文明\"}", CJ_bookunit: "第二单元 古代欧洲文明"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:92:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:92:OB03", title: "第5课 罗马城邦和罗马帝国", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第二单元 古代欧洲文明\"}", CJ_bookunit: "第二单元 古代欧洲文明"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:93:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:93:OB03", title: "第6课 希腊罗马古典文化", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第二单元 古代欧洲文明\"}", CJ_bookunit: "第二单元 古代欧洲文明"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:94:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:94:OB03", title: "第7课 基督教的兴起和法兰克王国", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 封建时代的欧洲\"}", CJ_bookunit: "第三单元 封建时代的欧洲"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:95:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:95:OB03", title: "第8课 西欧庄园", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 封建时代的欧洲\"}", CJ_bookunit: "第三单元 封建时代的欧洲"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:96:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:96:OB03", title: "第9课 中世纪城市和大学的兴起", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 封建时代的欧洲\"}", CJ_bookunit: "第三单元 封建时代的欧洲"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:97:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:97:OB03", title: "第10课 拜占庭帝国和《查士丁尼法典》", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 封建时代的欧洲\"}", CJ_bookunit: "第三单元 封建时代的欧洲"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:98:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:98:OB03", title: "第11课 古代日本", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第四单元 封建时代的亚洲国家\"}", CJ_bookunit: "第四单元 封建时代的亚洲国家"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:99:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:99:OB03", title: "第12课 阿拉伯帝国", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第四单元 封建时代的亚洲国家\"}", CJ_bookunit: "第四单元 封建时代的亚洲国家"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:100:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:100:OB03", title: "第13课 西欧经济和社会的发展", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第五单元 走向近代\"}", CJ_bookunit: "第五单元 走向近代"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:101:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:101:OB03", title: "第14课 文艺复兴运动", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第五单元 走向近代\"}", CJ_bookunit: "第五单元 走向近代"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:102:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:102:OB03", title: "第15课 探寻新航路", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第五单元 走向近代\"}", CJ_bookunit: "第五单元 走向近代"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:103:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:103:OB03", title: "第16课 早期殖民掠夺", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第五单元 走向近代\"}", CJ_bookunit: "第五单元 走向近代"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:104:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:104:OB03", title: "第17课 君主立宪制的英国", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第六单元 资本主义制度的初步确立\"}", CJ_bookunit: "第六单元 资本主义制度的初步确立"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:105:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:105:OB03", title: "第18课 美国的独立", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第六单元 资本主义制度的初步确立\"}", CJ_bookunit: "第六单元 资本主义制度的初步确立"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:106:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:106:OB03", title: "第19课 法国大革命和拿破仑帝国", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第六单元 资本主义制度的初步确立\"}", CJ_bookunit: "第六单元 资本主义制度的初步确立"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:107:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:107:OB03", title: "第20课 第一次工业革命", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第七单元 工业革命和国际共产主义运动的兴起\"}", CJ_bookunit: "第七单元 工业革命和国际共产主义运动的兴起"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:108:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:108:OB03", title: "第21课 马克思主义的诞生和国际共产主义运动的兴起", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第七单元 工业革命和国际共产主义运动的兴起\"}", CJ_bookunit: "第七单元 工业革命和国际共产主义运动的兴起"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:109:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:109:OB03", title: "第22课 活动课：唱响《国际歌》", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第七单元 工业革命和国际共产主义运动的兴起\"}", CJ_bookunit: "第七单元 工业革命和国际共产主义运动的兴起"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:110:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:110:OB03", title: "世界历史大事年表（上）", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"附录\"}", CJ_bookunit: "附录"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:111:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:111:OB03", title: "中英文译名对照表（上）", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"附录\"}", CJ_bookunit: "附录"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:112:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:112:OB03", title: "第1课 殖民地人民的反抗斗争", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第一单元 殖民地人民的反抗与资本主义制度的扩展\"}", CJ_bookunit: "第一单元 殖民地人民的反抗与资本主义制度的扩展"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:113:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:113:OB03", title: "第2课 俄国的改革", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第一单元 殖民地人民的反抗与资本主义制度的扩展\"}", CJ_bookunit: "第一单元 殖民地人民的反抗与资本主义制度的扩展"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:114:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:114:OB03", title: "第3课 美国内战", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第一单元 殖民地人民的反抗与资本主义制度的扩展\"}", CJ_bookunit: "第一单元 殖民地人民的反抗与资本主义制度的扩展"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:115:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:115:OB03", title: "第4课 日本明治维新", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第一单元 殖民地人民的反抗与资本主义制度的扩展\"}", CJ_bookunit: "第一单元 殖民地人民的反抗与资本主义制度的扩展"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:116:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:116:OB03", title: "第5课 第二次工业革命", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第二单元 第二次工业革命和近代科学文化\"}", CJ_bookunit: "第二单元 第二次工业革命和近代科学文化"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:117:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:117:OB03", title: "第6课 工业化国家的社会变化", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第二单元 第二次工业革命和近代科学文化\"}", CJ_bookunit: "第二单元 第二次工业革命和近代科学文化"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:118:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:118:OB03", title: "第7课 近代科学与文化", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第二单元 第二次工业革命和近代科学文化\"}", CJ_bookunit: "第二单元 第二次工业革命和近代科学文化"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:119:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:119:OB03", title: "第8课 第一次世界大战", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 第一次世界大战和战后初期的世界\"}", CJ_bookunit: "第三单元 第一次世界大战和战后初期的世界"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:120:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:120:OB03", title: "第9课 列宁与十月革命", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 第一次世界大战和战后初期的世界\"}", CJ_bookunit: "第三单元 第一次世界大战和战后初期的世界"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:121:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:121:OB03", title: "第10课 《凡尔赛和约》和《九国公约》", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 第一次世界大战和战后初期的世界\"}", CJ_bookunit: "第三单元 第一次世界大战和战后初期的世界"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:122:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:122:OB03", title: "第11课 苏联的社会主义建设", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 第一次世界大战和战后初期的世界\"}", CJ_bookunit: "第三单元 第一次世界大战和战后初期的世界"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:123:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:123:OB03", title: "第12课 亚非拉民族民主运动的高涨", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第三单元 第一次世界大战和战后初期的世界\"}", CJ_bookunit: "第三单元 第一次世界大战和战后初期的世界"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:124:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:124:OB03", title: "第13课 罗斯福新政", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第四单元 经济大危机和第二次世界大战\"}", CJ_bookunit: "第四单元 经济大危机和第二次世界大战"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:125:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:125:OB03", title: "第14课 法西斯国家的侵略扩张", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第四单元 经济大危机和第二次世界大战\"}", CJ_bookunit: "第四单元 经济大危机和第二次世界大战"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:126:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:126:OB03", title: "第15课 第二次世界大战", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第四单元 经济大危机和第二次世界大战\"}", CJ_bookunit: "第四单元 经济大危机和第二次世界大战"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:127:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:127:OB03", title: "第16课 冷战", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第五单元 二战后的世界变化\"}", CJ_bookunit: "第五单元 二战后的世界变化"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:128:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:128:OB03", title: "第17课 二战后资本主义的新变化", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第五单元 二战后的世界变化\"}", CJ_bookunit: "第五单元 二战后的世界变化"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:129:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:129:OB03", title: "第18课 社会主义的发展与挫折", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第五单元 二战后的世界变化\"}", CJ_bookunit: "第五单元 二战后的世界变化"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:130:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:130:OB03", title: "第19课 亚非拉国家的新发展", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第五单元 二战后的世界变化\"}", CJ_bookunit: "第五单元 二战后的世界变化"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:131:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:131:OB03", title: "第20课 联合国与世界贸易组织", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第六单元 走向和平发展的世界\"}", CJ_bookunit: "第六单元 走向和平发展的世界"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:132:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:132:OB03", title: "第21课 冷战后的世界格局", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第六单元 走向和平发展的世界\"}", CJ_bookunit: "第六单元 走向和平发展的世界"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:133:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:133:OB03", title: "第22课 不断发展的现代社会", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第六单元 走向和平发展的世界\"}", CJ_bookunit: "第六单元 走向和平发展的世界"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:134:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:134:OB03", title: "第23课 活动课：时事溯源", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"第六单元 走向和平发展的世界\"}", CJ_bookunit: "第六单元 走向和平发展的世界"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:135:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:135:OB03", title: "提取历史有效信息的主题研究一", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"提取历史有效信息的主题研究\"}", CJ_bookunit: "提取历史有效信息的主题研究"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:136:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:136:OB03", title: "提取历史有效信息的主题研究二", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"提取历史有效信息的主题研究\"}", CJ_bookunit: "提取历史有效信息的主题研究"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:137:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:137:OB03", title: "提取历史有效信息的主题研究三", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"提取历史有效信息的主题研究\"}", CJ_bookunit: "提取历史有效信息的主题研究"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:138:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:138:OB03", title: "提取历史有效信息的主题研究四", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"提取历史有效信息的主题研究\"}", CJ_bookunit: "提取历史有效信息的主题研究"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:139:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:139:OB03", title: "八年级上册历史统编版第一单元复习", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"单元复习\"}", CJ_bookunit: "单元复习"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:140:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:140:OB03", title: "八年级上册历史统编版第二单元复习", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"单元复习\"}", CJ_bookunit: "单元复习"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:141:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:141:OB03", title: "八年级上册历史第三单元复习", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"单元复习\"}", CJ_bookunit: "单元复习"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:142:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:142:OB03", title: "八年级上册历史第四单元复习", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"单元复习\"}", CJ_bookunit: "单元复习"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:143:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:143:OB03", title: "八年级上册历史第五单元复习", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"单元复习\"}", CJ_bookunit: "单元复习"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:144:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:144:OB03", title: "八年级上册历史第六单元复习", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"单元复习\"}", CJ_bookunit: "单元复习"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:145:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:145:OB03", title: "时空视域下历史知识建构", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"中考复习\"}", CJ_bookunit: "中考复习"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:146:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:146:OB03", title: "历史阅读方法——以材料解析为例", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"中考复习\"}", CJ_bookunit: "中考复习"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:147:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:147:OB03", title: "用专题复习提升综合能力——以中外科技发展为例", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"中考复习\"}", CJ_bookunit: "中考复习"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:148:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:148:OB03", title: "用图识史，以图助答—突破世界史的重难点", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"中考复习\"}", CJ_bookunit: "中考复习"};

MERGE (n:Section {identifier: "urn:jy:history:SB0307:OB03:part:149:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:part:149:OB03", title: "中考历史复习（一）", description: "", type: "Section", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"bookunit\": \"中考复习\"}", CJ_bookunit: "中考复习"};

MERGE (n:AcademicQuality {identifier: "urn:jy:history:SB0307:OB03:AcademicQuality:OB0301"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:AcademicQuality:OB0301", type: "AcademicQuality", title: "学业质量", description: "（一）学业质量内涵\n学业质量是学生在完成课程阶段性学习后的学业成就表现，反映核心素养要求。学业质量标准是以核心素养为主要维度，结合课程内容，对学生学业成就具体表现特征的总体刻画。\n\n（二）学业质量描述\n学业质量标准依据学习内容的不同层次，综合评定学生面对真实情境，在完成相应的学习任务过程中所表现出的解决问题的正确价值观、必备品格和关键能力，由此体现核心素养的发展水平和课程目标的实现程度。历史课程7～9年级的学习为一个学段。", subject: "SB0307", applicableLevel: "OB03", contentJson: "{\"standard\": \"7~9年级\", \"standardRequirement\": \"1. 掌握历史发展过程中的重要史事\\n能够运用记录历史年代的基本方式，掌握识读历史地图的基本方法，将重要历史事件、人物、现象置于正确的时间和空间之中。（时空观念）\\n能够准确理解教材和教学活动中所提供的可信史料，如不同历史时期的实物材料、文献材料、图像材料和口述材料等，辨识其中的含义；能够尝试运用这些史料对重要史事进行简要说明，有理有据地表达自己的看法，表现出正确的价值判断和人文情怀。（史料实证、历史解释、家国情怀）\\n能够初步从物质生产活动是人类生存和人类社会发展的基础、生产力与生产关系、人民群众是历史的创造者等方面，理解重要史事的意义，如对中国历史上的江南开发、西欧封建社会的兴衰、活字印刷术的发明等，运用唯物史观作出合理的解释与简要评价。（唯物史观、历史解释、家国情怀）\\n\\n2. 了解历史发展过程中的各种联系\\n能够了解并初步认识四种重要的历史联系：（1）历史发展的古今联系。如以中国的疆域为例，能够从古今联系与变化的角度，对其进行简要论述。（2）不同史事的因果联系。如以工业革命为例，能够从生产力发展的角度，初步分析生产力对政治、经济、文化等方面发展的推动作用；通过历史上治乱兴衰的史事，如以秦统一中国、秦末农民大起义、西汉建立、“文景之治”为例，简要说明在阶级社会中阶级斗争是历史发展的动力。（3）不同领域的横向联系。如以唐太宗和“贞观之治”为例，能够对一定时空条件下的政治、经济、文化等之间的相互关系与相互影响作出合理的解释。（4）中国与世界的联系。如以近代中国为例，能够分析中国成为半殖民地半封建社会的外部原因和内部原因，理解民族独立和人民解放是近代中国的历史任务，认识捍卫国家主权和民族尊严是中华民族的优良传统；能够感悟五四精神、伟大建党精神、抗战精神等。（唯物史观、时空观念、史料实证、历史解释、家国情怀）\\n\\n3. 认识历史发展的基本规律和大趋势\\n能够在了解历史发展的重要史事和各种联系的基础上，简要说明不同历史时期的时代特征，进一步了解人类社会从低级到高级、从分散到整体的发展历程，初步把握中外历史发展的基本线索和规律，并在自己的叙述中加以体现。例如：能够通过了解中国古代历史发展的具体史实，了解统一多民族国家巩固和发展的重要历史意义；能够通过中国近代史上争取民族独立、人民解放的斗争历史，知道民族民主革命的艰巨性，认识没有中国共产党就没有新中国的道理，能够体认仁人志士为救国救民而英勇斗争的精神；能够通过我国改革开放以来特别是中共十八大以来各个领域取得的成就、家乡的巨大变化和综合国力的不断提高，增进爱祖国、爱家乡的情感，铸牢中华民族共同体意识，认同社会主义核心价值观，坚定中国特色社会主义道路自信、理论自信、制度自信、文化自信。（唯物史观、时空观念、史料实证、历史解释、家国情怀）\\n能够通过学习世界历史，了解世界文明的多元性、差异性及其发展的不平衡性，知道资本主义、社会主义和殖民地半殖民地民族解放运动的发展，了解世界历史的形成过程，初步具有国际视野和全球意识，初步理解和平、发展、合作、共赢是不可阻挡的历史潮流，形成构建人类命运共同体的意识。（时空观念、史料实证、唯物史观、历史解释、家国情怀）\"}", CJ_standard: "7~9年级", CJ_standardRequirement: "1. 掌握历史发展过程中的重要史事\n能够运用记录历史年代的基本方式，掌握识读历史地图的基本方法，将重要历史事件、人物、现象置于正确的时间和空间之中。（时空观念）\n能够准确理解教材和教学活动中所提供的可信史料，如不同历史时期的实物材料、文献材料、图像材料和口述材料等，辨识其中的含义；能够尝试运用这些史料对重要史事进行简要说明，有理有据地表达自己的看法，表现出正确的价值判断和人文情怀。（史料实证、历史解释、家国情怀）\n能够初步从物质生产活动是人类生存和人类社会发展的基础、生产力与生产关系、人民群众是历史的创造者等方面，理解重要史事的意义，如对中国历史上的江南开发、西欧封建社会的兴衰、活字印刷术的发明等，运用唯物史观作出合理的解释与简要评价。（唯物史观、历史解释、家国情怀）\n\n2. 了解历史发展过程中的各种联系\n能够了解并初步认识四种重要的历史联系：（1）历史发展的古今联系。如以中国的疆域为例，能够从古今联系与变化的角度，对其进行简要论述。（2）不同史事的因果联系。如以工业革命为例，能够从生产力发展的角度，初步分析生产力对政治、经济、文化等方面发展的推动作用；通过历史上治乱兴衰的史事，如以秦统一中国、秦末农民大起义、西汉建立、“文景之治”为例，简要说明在阶级社会中阶级斗争是历史发展的动力。（3）不同领域的横向联系。如以唐太宗和“贞观之治”为例，能够对一定时空条件下的政治、经济、文化等之间的相互关系与相互影响作出合理的解释。（4）中国与世界的联系。如以近代中国为例，能够分析中国成为半殖民地半封建社会的外部原因和内部原因，理解民族独立和人民解放是近代中国的历史任务，认识捍卫国家主权和民族尊严是中华民族的优良传统；能够感悟五四精神、伟大建党精神、抗战精神等。（唯物史观、时空观念、史料实证、历史解释、家国情怀）\n\n3. 认识历史发展的基本规律和大趋势\n能够在了解历史发展的重要史事和各种联系的基础上，简要说明不同历史时期的时代特征，进一步了解人类社会从低级到高级、从分散到整体的发展历程，初步把握中外历史发展的基本线索和规律，并在自己的叙述中加以体现。例如：能够通过了解中国古代历史发展的具体史实，了解统一多民族国家巩固和发展的重要历史意义；能够通过中国近代史上争取民族独立、人民解放的斗争历史，知道民族民主革命的艰巨性，认识没有中国共产党就没有新中国的道理，能够体认仁人志士为救国救民而英勇斗争的精神；能够通过我国改革开放以来特别是中共十八大以来各个领域取得的成就、家乡的巨大变化和综合国力的不断提高，增进爱祖国、爱家乡的情感，铸牢中华民族共同体意识，认同社会主义核心价值观，坚定中国特色社会主义道路自信、理论自信、制度自信、文化自信。（唯物史观、时空观念、史料实证、历史解释、家国情怀）\n能够通过学习世界历史，了解世界文明的多元性、差异性及其发展的不平衡性，知道资本主义、社会主义和殖民地半殖民地民族解放运动的发展，了解世界历史的形成过程，初步具有国际视野和全球意识，初步理解和平、发展、合作、共赢是不可阻挡的历史潮流，形成构建人类命运共同体的意识。（时空观念、史料实证、唯物史观、历史解释、家国情怀）"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:1:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:1:OB03", title: "史前时期", description: "通过了解元谋人、郧县人、蓝田人、北京人等旧石器时代的人类及其文化遗存，知道中国境内原始社会时期的人类活动；通过了解河姆渡、半坡、良渚、陶寺、二里头等新石器时代的文化遗存，知道中国的原始农耕生活；了解私有制、阶级和早期国家的产生；知道考古发现是了解原始社会的重要依据；通过古代文献中记述的黄帝、炎帝等神话传说，了解其中蕴含的历史信息。", subject: "SB0307", applicableLevel: "OB03", Theme: "中国古代史"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:2:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:2:OB03", title: "夏商西周与春秋战国时期", description: "知道甲骨文是已知最早的汉字；通过了解甲骨文、青铜铭文、其他文献记载和典型器物，知道具有奴隶制特点的夏、商、西周王朝的建立与发展，了解西周分封制等重要制度；知道老子、孔子的生平与思想；通过了解这一时期的生产力水平和社会关系的变化，初步理解春秋时期诸侯争霸局面的形成、战国时期商鞅变法等改革和“百家争鸣”局面的产生；通过《黄帝内经》和名医扁鹊，了解这一时期的医学成就；通过都江堰工程，感受古代劳动人民的智慧和创造力。", subject: "SB0307", applicableLevel: "OB03", Theme: "中国古代史"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:3:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:3:OB03", title: "秦汉时期", description: "通过了解秦朝统一、陈胜和吴广等领导的秦末农民起义、西汉“削藩”和尊崇儒术，知道统一多民族封建国家建立和早期发展的过程；通过了解休养生息政策、“文景之治”、张骞通西域、“丝绸之路”的开辟、汉武帝的大一统，知道西汉从建立之初的社会残破发展到国力强盛的变化及原因；通过了解西汉末到东汉的政治、社会动荡，了解佛教传入和道教产生的背景；知道这一时期的重要文化和科技成就，如司马迁与《史记》、蔡伦与造纸术、张仲景与《伤寒杂病论》、华佗的故事等。", subject: "SB0307", applicableLevel: "OB03", Theme: "中国古代史"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:4:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:4:OB03", title: "三国两晋南北朝时期", description: "通过了解三国两晋南北朝时期的政权更迭和北魏孝文帝改革、人口迁徙和区域开发，认识这一时期民族交往交流交融的历史特点及其对中华民族发展的意义；通过了解这一时期的科技和艺术成就，如祖冲之的数学成就，认识传统文化的继承与创新。", subject: "SB0307", applicableLevel: "OB03", Theme: "中国古代史"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:5:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:5:OB03", title: "隋唐五代十国时期", description: "通过了解隋朝的兴亡、“贞观之治”与“开元盛世”，知道隋朝速亡和唐朝兴盛的原因；了解科举制度创建、大运河开通、文成公主入藏、鉴真东渡、玄奘西行等史事，从制度、经济、文学艺术、民族交往、中外文化交流等方面认识隋唐王朝在世界历史上的重要地位；通过了解“安史之乱”后藩镇割据和五代十国的局面，认识唐末五代的社会危机。", subject: "SB0307", applicableLevel: "OB03", Theme: "中国古代史"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:6:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:6:OB03", title: "辽宋夏金元时期", description: "认识北宋面临的新形势，了解辽、宋、西夏的并立与北宋强化中央集权和重文轻武的政策；通过了解宋金之战、南宋偏安和南方地区的经济繁荣，知道中国古代经济重心的进一步南移；通过了解蒙古兴起和元朝统一，设立行省、宣政院等制度，知道西藏在元代正式纳入中国版图，理解元朝统一对中华民族进一步交融的重要意义；通过了解这一时期的城市和商业发展、科技创新、文学艺术成就和对外交流，认识宋元时期繁荣的经济、文化在中国历史上的重要地位；通过岳飞、文天祥等人的英雄事迹，体会中华民族英勇不屈的精神；通过印刷术、指南针、火药的应用和外传，认识中国古代的重要发明对世界文明发展的贡献。", subject: "SB0307", applicableLevel: "OB03", Theme: "中国古代史"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:7:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:7:OB03", title: "明清时期（至鸦片战争前）", description: "通过了解明清时期加强皇权的举措，初步认识君主专制带来的社会弊端；通过了解明清时期的经济改革和全球性经济互动，初步认识这一阶段中国经济发展的内因和外因；通过郑和下西洋、戚继光抗倭等史事，了解明朝的对外关系；通过了解郑成功收复台湾、清朝在台湾的建制、册封达赖和班禅以及设置驻藏大臣等中央政权在边疆地区的各种举措，认识西藏地区、新疆地区、南海诸岛、台湾及其包括钓鱼岛在内的附属岛屿是中国的领土，理解统一多民族国家版图奠定的重要意义；通过了解《本草纲目》《天工开物》《农政全书》，认识明朝的科技成就及其影响；通过了解小说、戏曲的繁荣，知道明清时期文学艺术的特色；通过了解明末李自成起义，清中叶以来的政治腐败、故步自封和19世纪的国际局势史实，认识当时中国社会面临的严重危机。", subject: "SB0307", applicableLevel: "OB03", Theme: "中国古代史"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:8:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:8:OB03", title: "晚清时期的内忧外患与救亡图存", description: "通过了解林则徐虎门销烟、英法联军火烧圆明园、俄国割占中国北方大片领土等两次鸦片战争期间的主要史事，以及《南京条约》等不平等条约的签订，初步认识鸦片战争对中国近代社会的影响；了解太平天国运动的兴衰；了解洋务运动的主要内容，初步认识洋务运动的作用和局限性；了解19世纪中后期的边疆危机和中法战争，知道甲午中日战争的主要战役和《马关条约》的主要内容，初步认识《马关条约》与中国民族危机加剧的关系；了解戊戌变法的主要史事，认识变法的意义和局限性；知道义和团运动和抗击八国联军侵华的史事，结合《辛丑条约》的主要内容，认识《辛丑条约》对中国民族危机全面加深的影响。", subject: "SB0307", applicableLevel: "OB03", Theme: "中国近代史"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:9:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:9:OB03", title: "辛亥革命与中华民国的建立", description: "通过了解孙中山等民主革命先行者早年的革命活动、武昌起义及中华民国成立的史事，认识辛亥革命的历史意义及局限性；知道民国初期北洋军阀的统治；了解新文化运动的基本内容，知道陈独秀、李大钊、胡适、鲁迅等新文化运动的代表人物，认识新文化运动在中国近代思想解放运动中的地位和作用。", subject: "SB0307", applicableLevel: "OB03", Theme: "中国近代史"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:10:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:10:OB03", title: "近代社会生活变化", description: "通过了解张謇兴办实业的典型事例，知道近代中国民族工业发展的艰辛历程；通过了解开办京师大学堂、废除科举制度等近代新式教育发展的主要史事及民国以来社会生活的变化，知道中国走向现代化的曲折过程。", subject: "SB0307", applicableLevel: "OB03", Theme: "中国近代史"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:11:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:11:OB03", title: "中国共产党成立与新民主主义革命的兴起", description: "通过了解五四运动的基本史事，理解五四精神的内涵，认识五四运动是中国新民主主义革命的开端；通过了解陈独秀、李大钊传播马克思主义和中国共产党第一次全国代表大会的召开等史事，认识中国共产党成立的历史意义，理解伟大建党精神；了解第一次国共合作和北伐战争等国民革命的主要内容；知道南京国民政府的成立及性质；通过了解南昌起义、八七会议、秋收起义、毛泽东与朱德井冈山会师、古田会议等基本史事，认识中国共产党创建人民军队和农村革命根据地的意义；认识遵义会议在中国革命史上的地位；通过了解长征途中红军爬雪山过草地等艰难历程的史事，感悟长征精神。", subject: "SB0307", applicableLevel: "OB03", Theme: "中国近代史"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:12:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:12:OB03", title: "中华民族的抗日战争", description: "通过了解九一八事变、东北抗联、一二·九运动、西安事变、七七事变、南京大屠杀、正面战场和敌后战场的抗战等史事，认识日本侵华的罪行，认识中国人民十四年抗战的艰苦历程，认识中国共产党是全民族抗战的中流砥柱，知道中国战场是世界反法西斯战争的东方主战场，体会中国军民在抗日战争中孕育的抗战精神，认识抗日战争胜利在中华民族伟大复兴中的重要历史意义；通过了解中共七大，认识确立毛泽东思想作为党的指导思想的重大意义。", subject: "SB0307", applicableLevel: "OB03", Theme: "中国近代史"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:13:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:13:OB03", title: "人民解放战争", description: "知道重庆谈判，理解中国共产党为争取和平民主作出的努力；了解全面内战的爆发、中共中央转战陕北和刘邓大军挺进大别山等史事；通过了解解放区的土地改革，辽沈、淮海、平津三大战役，中共七届二中全会，知道国民党反动统治的覆灭和人民解放战争迅速胜利的主要原因，以及中国共产党领导人民取得新民主主义革命胜利的意义。", subject: "SB0307", applicableLevel: "OB03", Theme: "中国近代史"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:14:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:14:OB03", title: "中华人民共和国成立和社会主义制度的确立", description: "了解中国人民政治协商会议召开、开国大典，认识中华人民共和国成立对中国和世界历史的伟大意义；知道抗美援朝、土地改革，理解其对巩固人民民主政权的意义；通过《中华人民共和国宪法》的制定，以及人民代表大会制度、中国共产党领导的多党合作和政治协商制度、民族区域自治制度的确立，认识当代中国政治制度的内涵及意义；了解“一五”计划、“三大改造”、开创独立自主的和平外交，理解建立社会主义制度的重要意义。", subject: "SB0307", applicableLevel: "OB03", Theme: "中国现代史"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:15:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:15:OB03", title: "社会主义建设的艰辛探索和曲折发展", description: "知道中共八大；了解“大跃进”运动、人民公社化运动等错误与调整国民经济的“八字方针”；认识这一时期取得的政治、经济、外交、国防、科技等成就及其具有的开创性、奠基性意义；了解毛泽东对中国社会主义革命和社会主义建设的贡献，认识毛泽东思想的重要指导意义；了解以王进喜、雷锋、钱学森、邓稼先、焦裕禄等为代表的广大干部群众艰苦奋斗的事迹；了解“文化大革命”的严重危害及主要教训。", subject: "SB0307", applicableLevel: "OB03", Theme: "中国现代史"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:16:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:16:OB03", title: "改革开放与中国特色社会主义建设", description: "知道中共十一届三中全会，了解农村改革、城市改革、经济特区建设、沿海港口城市开放、上海浦东开发开放、加入世界贸易组织等史事，认识邓小平对改革开放所起的重要作用，认识改革开放对中国社会发展的重大意义和对世界的重要影响；了解社会主义市场经济体制的建立与完善；知道“一国两制”对实现祖国完全统一的意义；了解改革开放后的外交成就；了解邓小平理论、“三个代表”重要思想、科学发展观对社会主义现代化建设的重要指导意义。", subject: "SB0307", applicableLevel: "OB03", Theme: "中国现代史"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:17:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:17:OB03", title: "中国特色社会主义进入新时代", description: "知道中共十八大以来，中国特色社会主义进入新时代，党和人民面临的主要任务是，实现第一个百年奋斗目标，开启实现第二个百年奋斗目标新征程；了解习近平新时代中国特色社会主义思想；通过新时代中国在经济建设、政治建设、文化建设、社会建设、生态文明建设等领域取得的成就，以及综合国力和国际影响力不断提高的史事，特别是取得脱贫攻坚的伟大胜利、全面建成小康社会的史事，认识中国特色社会主义建设对中国社会发展的意义及对世界的贡献；认识中国共产党百年奋斗的历史意义和历史经验；认识以中国式现代化全面推进中华民族伟大复兴的重要意义。", subject: "SB0307", applicableLevel: "OB03", Theme: "中国现代史"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:18:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:18:OB03", title: "古代文明", description: "初步了解原始社会时期的人类活动；通过金字塔、《汉谟拉比法典》以及种姓制度和佛教的创立，了解亚非古代文明及其传播；知道建立在奴隶制基础上的希腊城邦和罗马共和国，了解希腊、罗马的古典文化成就，以及亚历山大帝国、罗马帝国对文化传播和交流的作用。", subject: "SB0307", applicableLevel: "OB03", Theme: "世界古代史"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:19:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:19:OB03", title: "中古世界", description: "通过封君封臣制、庄园生活、基督教的传播，以及欧洲城市和大学的兴起，了解中世纪西欧封建社会的发展变化；知道《查士丁尼法典》，初步了解拜占庭帝国的历史地位；通过伊斯兰教的创立、阿拉伯帝国的崛起、日本大化改新，以及非洲、美洲的社会发展概况，初步了解中古世界历史发展的多样性。", subject: "SB0307", applicableLevel: "OB03", Theme: "世界古代史"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:20:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:20:OB03", title: "近代早期西欧经济和社会变化", description: "通过了解资本主义性质的手工工场和租地农场的出现，初步理解近代早期西欧社会经济的重要变化；通过了解欧洲兴起的文艺复兴运动及其代表人物和作品，如《神曲》、莎士比亚的戏剧，初步理解“人文主义”的发展及其对人的思想解放的意义。", subject: "SB0307", applicableLevel: "OB03", Theme: "世界近代史"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:21:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:21:OB03", title: "新航路的开辟", description: "通过哥伦布、麦哲伦等航海家的探险活动，以及新航路开辟后的殖民扩张、物种交换和全球贸易，了解资本原始积累的野蛮性和残酷性，认识新航路开辟的世界影响，理解世界逐渐形成一个整体。", subject: "SB0307", applicableLevel: "OB03", Theme: "世界近代史"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:22:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:22:OB03", title: "英、美、法资产阶级革命", description: "知道英国1640年革命、美国独立战争和法国大革命的进程，了解《权利法案》《独立宣言》、1787年宪法和《人权宣言》《拿破仑法典》等文献的主要内容，初步认识这些资产阶级革命的历史意义。", subject: "SB0307", applicableLevel: "OB03", Theme: "世界近代史"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:23:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:23:OB03", title: "第一次工业革命和马克思主义的诞生", description: "通过了解珍妮机、蒸汽机、铁路和现代工厂制度，初步理解第一次工业革命的影响；通过了解早期工人阶级的斗争，马克思、恩格斯的革命活动和《共产党宣言》的发表，理解马克思主义诞生的历史意义；通过了解第一国际成立、巴黎公社，理解马克思主义的传播和国际工人运动的发展。", subject: "SB0307", applicableLevel: "OB03", Theme: "世界近代史"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:24:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:24:OB03", title: "殖民地人民的反抗与资本主义制度的扩展", description: "通过了解拉丁美洲独立运动与印度民族大起义等史事，理解殖民地民族解放斗争的正义性和艰巨性；通过了解美国内战、日本明治维新、俄国1861年改革等史事，初步认识资本主义世界体系的形成。", subject: "SB0307", applicableLevel: "OB03", Theme: "世界近代史"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:25:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:25:OB03", title: "科学技术的发展与第二次工业革命", description: "通过了解第二次工业革命的主要领域和代表性成果，初步理解科学技术发展带来的社会进步和社会问题。", subject: "SB0307", applicableLevel: "OB03", Theme: "世界近代史"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:26:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:26:OB03", title: "近代科学与艺术成就", description: "通过了解牛顿、达尔文、巴尔扎克、贝多芬等人的成就，初步理解科学和文化在近代社会发展中的重要作用。", subject: "SB0307", applicableLevel: "OB03", Theme: "世界近代史"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:27:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:27:OB03", title: "第一次世界大战与俄国十月革命", description: "通过了解“三国同盟”和“三国协约”、萨拉热窝事件、凡尔登战役等，分析第一次世界大战爆发的原因，了解其基本进程以及给人类社会带来的巨大灾难；知道列宁领导的十月革命的背景与过程，理解十月革命胜利的重要历史意义；知道凡尔赛体系、华盛顿体系和国际联盟，了解战后战胜国建立的世界秩序及其局限性。", subject: "SB0307", applicableLevel: "OB03", Theme: "世界现代史"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:28:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:28:OB03", title: "两次世界大战之间的世界政治与经济", description: "通过了解新经济政策、社会主义工业化、农业集体化等举措，认识苏联社会主义建设的重要成就和主要问题；通过了解印度的非暴力不合作运动、埃及的华夫脱运动、墨西哥的卡德纳斯改革，分析两次世界大战期间亚非拉民族民主运动的特点；通过了解经济大危机和罗斯福“新政”，初步理解国家干预政策对西方经济的影响。", subject: "SB0307", applicableLevel: "OB03", Theme: "世界现代史"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:29:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:29:OB03", title: "第二次世界大战", description: "通过了解日本对中国的侵略、意大利法西斯和纳粹德国的对外扩张，知道德国、意大利、日本侵略集团是发动第二次世界大战的罪魁祸首；知道第二次世界大战的主要进程和主要战场，知道《联合国家宣言》和开罗会议、雅尔塔会议、波茨坦会议等重要国际会议，了解世界人民反法西斯战争的艰巨性和胜利原因。", subject: "SB0307", applicableLevel: "OB03", Theme: "世界现代史"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:30:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:30:OB03", title: "第二次世界大战后世界的新变化", description: "通过了解杜鲁门主义、马歇尔计划、德国分裂、“北约”与“华约”的建立，认识美苏“冷战”对峙局面的形成；通过了解美国和日本经济的发展，欧洲联合趋势的发展以及社会保障制度的建立，初步理解战后资本主义发展的新特点；了解社会主义从一国到多国的实践，知道社会主义阵营的形成和苏联的改革，了解苏联解体和东欧剧变，认识中国特色社会主义建设的意义；通过万隆会议、“非洲年”、巴拿马收回运河主权等史事，知道战后殖民体系的崩溃和亚非拉国家为捍卫国家主权、发展经济所进行的斗争。", subject: "SB0307", applicableLevel: "OB03", Theme: "世界现代史"};

MERGE (n:Unknown {identifier: "urn:jy:history:SB0307:OB03:unit:31:OB03"})
SET n += {identifier: "urn:jy:history:SB0307:OB03:unit:31:OB03", title: "当今世界的主要发展趋势", description: "通过世界多极化、经济全球化、社会信息化和文化多样化，了解现代世界的基本特点；知道人口、资源、环境、传染病、社会治理等人类发展面临的共同问题；通过了解联合国、世界贸易组织等，认识世界各国为解决全球性问题所作出的努力；知道和平、发展、合作、共赢是不可阻挡的历史潮流，了解中国致力于促进人类和平与发展、推动构建人类命运共同体的重要意义。", subject: "SB0307", applicableLevel: "OB03", Theme: "世界现代史"};

// =====================================================
// 导入关系
// =====================================================

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:AcademicQuality:OB0301"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:CoreLiteracy:1:OB03"})
MERGE (source)-[r:basedOnCoreLiteracy]->(target)
SET r.label = "学业质量基于核心素养(唯物史观)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:AcademicQuality:OB0301"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:CoreLiteracy:2:OB03"})
MERGE (source)-[r:basedOnCoreLiteracy]->(target)
SET r.label = "学业质量基于核心素养(时空观念)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:AcademicQuality:OB0301"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:CoreLiteracy:3:OB03"})
MERGE (source)-[r:basedOnCoreLiteracy]->(target)
SET r.label = "学业质量基于核心素养(史料实证)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:AcademicQuality:OB0301"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:CoreLiteracy:4:OB03"})
MERGE (source)-[r:basedOnCoreLiteracy]->(target)
SET r.label = "学业质量基于核心素养(历史解释)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:AcademicQuality:OB0301"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:CoreLiteracy:5:OB03"})
MERGE (source)-[r:basedOnCoreLiteracy]->(target)
SET r.label = "学业质量基于核心素养(家国情怀)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:1:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:1:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "史前时期_属于_中国古代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:2:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:1:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "夏商西周与春秋战国时期_属于_中国古代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:3:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:1:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "秦汉时期_属于_中国古代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:4:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:1:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "三国两晋南北朝时期_属于_中国古代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:5:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:1:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "隋唐五代十国时期_属于_中国古代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:6:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:1:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "辽宋夏金元时期_属于_中国古代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:7:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:1:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "明清时期（至鸦片战争前）_属于_中国古代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:8:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:2:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "晚清时期的内忧外患与救亡图存_属于_中国近代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:9:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:2:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "辛亥革命与中华民国的建立_属于_中国近代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:10:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:2:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "近代社会生活变化_属于_中国近代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:11:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:2:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "中国共产党成立与新民主主义革命的兴起_属于_中国近代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:12:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:2:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "中华民族的抗日战争_属于_中国近代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:13:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:2:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "人民解放战争_属于_中国近代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:14:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:3:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "中华人民共和国成立和社会主义制度的确立_属于_中国现代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:15:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:3:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "社会主义建设的艰辛探索和曲折发展_属于_中国现代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:16:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:3:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "改革开放与中国特色社会主义建设_属于_中国现代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:17:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:3:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "中国特色社会主义进入新时代_属于_中国现代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:18:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:4:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "古代文明_属于_世界古代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:19:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:4:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "中古世界_属于_世界古代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:20:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:5:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "近代早期西欧经济和社会变化_属于_世界近代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:21:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:5:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "新航路的开辟_属于_世界近代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:22:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:5:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "英、美、法资产阶级革命_属于_世界近代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:23:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:5:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "第一次工业革命和马克思主义的诞生_属于_世界近代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:24:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:5:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "殖民地人民的反抗与资本主义制度的扩展_属于_世界近代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:25:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:5:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "科学技术的发展与第二次工业革命_属于_世界近代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:26:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:5:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "近代科学与艺术成就_属于_世界近代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:27:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:6:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "第一次世界大战与俄国十月革命_属于_世界现代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:28:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:6:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "两次世界大战之间的世界政治与经济_属于_世界现代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:29:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:6:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "第二次世界大战_属于_世界现代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:30:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:6:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "第二次世界大战后世界的新变化_属于_世界现代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:unit:31:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Theme:6:OB03"})
MERGE (source)-[r:rel_unit_constitutes_theme]->(target)
SET r.label = "当今世界的主要发展趋势_属于_世界现代史";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:1:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:1:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:2:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:2:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:3:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:3:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:4:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:4:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:5:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:5:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:6:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:6:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:7:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:7:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:10:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:8:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:11:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:8:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:12:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:9:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:13:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:11:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:14:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:11:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:15:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:12:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:16:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:13:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:17:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:14:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:18:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:14:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:18:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:15:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:19:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:16:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:20:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:16:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:21:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:16:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:24:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:18:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:25:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:18:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:26:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:19:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:27:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:19:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:28:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:20:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:28:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:21:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:29:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:22:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:30:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:23:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:32:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:24:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:33:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:25:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:33:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:26:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:34:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:27:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:34:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:28:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:35:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:28:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:35:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:29:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:36:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:30:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:37:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:unit:31:OB03"})
MERGE (source)-[r:relates_to_theme]->(target)
SET r.label = "关联主题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Theme:1:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Domain:1:OB03"})
MERGE (source)-[r:rel_theme_part_of_domain_cn]->(target)
SET r.label = "中国古代史_属于_中国历史主线";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Theme:2:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Domain:1:OB03"})
MERGE (source)-[r:rel_theme_part_of_domain_cn]->(target)
SET r.label = "中国近代史_属于_中国历史主线";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Theme:3:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Domain:1:OB03"})
MERGE (source)-[r:rel_theme_part_of_domain_cn]->(target)
SET r.label = "中国现代史_属于_中国历史主线";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Theme:4:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Domain:2:OB03"})
MERGE (source)-[r:rel_theme_part_of_domain_world]->(target)
SET r.label = "世界古代史_属于_世界历史主线";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Theme:5:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Domain:2:OB03"})
MERGE (source)-[r:rel_theme_part_of_domain_world]->(target)
SET r.label = "世界近代史_属于_世界历史主线";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Theme:6:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Domain:2:OB03"})
MERGE (source)-[r:rel_theme_part_of_domain_world]->(target)
SET r.label = "世界现代史_属于_世界历史主线";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Theme:1:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Domain:3:OB03"})
MERGE (source)-[r:rel_theme_supports_domain_interdisciplinary]->(target)
SET r.label = "中国古代史_支撑_跨学科主题学习主线";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Theme:2:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Domain:3:OB03"})
MERGE (source)-[r:rel_theme_supports_domain_interdisciplinary]->(target)
SET r.label = "中国近代史_支撑_跨学科主题学习主线";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Theme:3:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Domain:3:OB03"})
MERGE (source)-[r:rel_theme_supports_domain_interdisciplinary]->(target)
SET r.label = "中国现代史_支撑_跨学科主题学习主线";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Theme:4:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Domain:3:OB03"})
MERGE (source)-[r:rel_theme_supports_domain_interdisciplinary]->(target)
SET r.label = "世界古代史_支撑_跨学科主题学习主线";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Theme:5:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Domain:3:OB03"})
MERGE (source)-[r:rel_theme_supports_domain_interdisciplinary]->(target)
SET r.label = "世界近代史_支撑_跨学科主题学习主线";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Theme:6:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Domain:3:OB03"})
MERGE (source)-[r:rel_theme_supports_domain_interdisciplinary]->(target)
SET r.label = "世界现代史_支撑_跨学科主题学习主线";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:AcademicQuality:OB0301"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Domain:1:OB03"})
MERGE (source)-[r:rel_academic_quality_applies_to_domain]->(target)
SET r.label = "学业质量涵盖与评价中国历史主线";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:AcademicQuality:OB0301"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Domain:2:OB03"})
MERGE (source)-[r:rel_academic_quality_applies_to_domain]->(target)
SET r.label = "学业质量涵盖与评价世界历史主线";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:AcademicQuality:OB0301"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Domain:3:OB03"})
MERGE (source)-[r:rel_academic_quality_applies_to_domain]->(target)
SET r.label = "学业质量涵盖与评价跨学科主题学习主线";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Domain:1:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:CoreLiteracy:1:OB03"})
MERGE (source)-[r:rel_domain_cultivates_literacy]->(target)
SET r.label = "中国历史_培养_唯物史观";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Domain:1:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:CoreLiteracy:2:OB03"})
MERGE (source)-[r:rel_domain_cultivates_literacy]->(target)
SET r.label = "中国历史_培养_时空观念";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Domain:1:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:CoreLiteracy:3:OB03"})
MERGE (source)-[r:rel_domain_cultivates_literacy]->(target)
SET r.label = "中国历史_培养_史料实证";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Domain:1:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:CoreLiteracy:4:OB03"})
MERGE (source)-[r:rel_domain_cultivates_literacy]->(target)
SET r.label = "中国历史_培养_历史解释";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Domain:1:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:CoreLiteracy:5:OB03"})
MERGE (source)-[r:rel_domain_cultivates_literacy]->(target)
SET r.label = "中国历史_培养_家国情怀";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Domain:2:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:CoreLiteracy:1:OB03"})
MERGE (source)-[r:rel_domain_cultivates_literacy]->(target)
SET r.label = "世界历史_培养_唯物史观";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Domain:2:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:CoreLiteracy:2:OB03"})
MERGE (source)-[r:rel_domain_cultivates_literacy]->(target)
SET r.label = "世界历史_培养_时空观念";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Domain:2:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:CoreLiteracy:3:OB03"})
MERGE (source)-[r:rel_domain_cultivates_literacy]->(target)
SET r.label = "世界历史_培养_史料实证";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Domain:2:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:CoreLiteracy:4:OB03"})
MERGE (source)-[r:rel_domain_cultivates_literacy]->(target)
SET r.label = "世界历史_培养_历史解释";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Domain:2:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:CoreLiteracy:5:OB03"})
MERGE (source)-[r:rel_domain_cultivates_literacy]->(target)
SET r.label = "世界历史_培养_家国情怀";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Domain:3:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:CoreLiteracy:1:OB03"})
MERGE (source)-[r:rel_domain_cultivates_literacy]->(target)
SET r.label = "跨学科主题学习_培养_唯物史观";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Domain:3:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:CoreLiteracy:2:OB03"})
MERGE (source)-[r:rel_domain_cultivates_literacy]->(target)
SET r.label = "跨学科主题学习_培养_时空观念";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Domain:3:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:CoreLiteracy:3:OB03"})
MERGE (source)-[r:rel_domain_cultivates_literacy]->(target)
SET r.label = "跨学科主题学习_培养_史料实证";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Domain:3:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:CoreLiteracy:4:OB03"})
MERGE (source)-[r:rel_domain_cultivates_literacy]->(target)
SET r.label = "跨学科主题学习_培养_历史解释";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Domain:3:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:CoreLiteracy:5:OB03"})
MERGE (source)-[r:rel_domain_cultivates_literacy]->(target)
SET r.label = "跨学科主题学习_培养_家国情怀";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:1:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:1:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:1:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:2:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:1:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:3:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:2:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:4:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:2:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:5:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:2:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:6:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:2:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:7:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:2:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:8:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:3:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:9:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:3:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:10:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:3:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:11:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:3:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:12:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:3:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:13:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:3:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:14:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:3:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:15:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:4:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:16:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:4:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:17:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:4:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:18:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:4:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:19:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:4:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:20:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:4:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:21:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:5:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:22:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:5:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:23:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:5:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:24:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:5:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:25:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:5:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:26:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:5:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:27:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:5:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:28:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:6:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:29:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:6:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:30:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:6:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:31:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:6:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:32:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:6:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:33:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:6:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:34:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:6:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:35:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:7:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:36:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:7:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:37:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:7:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:38:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:7:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:39:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:7:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:40:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:7:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:41:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:7:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:42:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:7:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:43:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:8:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:44:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:8:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:45:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:10:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:46:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:10:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:47:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:10:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:48:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:11:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:49:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:11:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:50:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:11:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:51:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:11:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:52:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:12:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:53:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:12:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:54:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:12:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:55:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:13:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:56:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:13:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:57:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:14:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:58:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:14:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:59:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:14:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:60:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:15:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:61:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:15:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:62:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:15:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:63:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:15:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:64:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:16:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:65:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:16:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:66:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:16:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:67:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:17:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:68:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:17:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:69:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:17:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:70:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:18:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:71:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:18:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:72:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:18:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:73:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:19:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:74:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:19:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:75:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:19:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:76:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:19:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:77:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:19:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:78:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:20:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:79:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:20:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:80:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:20:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:81:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:21:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:82:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:21:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:83:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:21:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:84:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:22:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:85:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:22:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:86:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:22:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:87:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:24:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:88:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:24:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:89:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:24:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:90:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:25:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:91:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:25:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:92:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:25:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:93:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:26:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:94:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:26:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:95:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:26:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:96:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:26:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:97:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:27:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:98:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:27:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:99:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:28:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:100:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:28:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:101:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:28:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:102:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:28:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:103:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:29:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:104:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:29:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:105:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:29:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:106:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:30:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:107:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:30:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:108:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:30:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:109:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:32:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:112:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:32:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:113:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:32:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:114:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:32:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:115:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:33:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:116:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:33:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:117:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:33:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:118:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:34:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:119:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:34:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:120:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:34:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:121:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:34:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:122:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:34:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:123:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:35:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:124:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:35:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:125:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:35:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:126:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:36:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:127:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:36:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:128:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:36:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:129:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:36:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:130:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:37:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:131:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:37:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:132:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:37:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:133:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";

MATCH (source {identifier: "urn:jy:history:SB0307:OB03:Chapter:37:OB03"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB03:Section:134:OB03"})
MERGE (source)-[r:contains]->(target)
SET r.label = "包含";
