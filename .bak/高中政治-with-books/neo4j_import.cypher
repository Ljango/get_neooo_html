// =====================================================
// 高中政治课标图谱 - Neo4j导入脚本
// 生成时间: 2026-01-20T14:35:29.615348
// =====================================================

// 创建约束和索引
CREATE CONSTRAINT IF NOT EXISTS FOR (n:ThemeL2) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Theme) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:CourseModule) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:AcademicQuality) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:CoreLiteracy) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Section) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:CourseStructure) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Chapter) REQUIRE n.identifier IS UNIQUE;

// =====================================================
// 导入实体
// =====================================================

MERGE (n:CoreLiteracy {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:1"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:1", title: "政治认同 素养水平 1", description: "", subject: "SB0310", type: "CoreLiteracy", applicableLevel: "OB06", contentJson: "{\"standard\": \"1\", \"standardDescription\": \"能够面对简单问题,引证走中国特色社会主义道路的成功事例;表述马克思列宁主义、毛泽东思想、邓小平理论、“三个代表”重要思想、科学发展观、习近平新时代中国特色社会主义思想是中国共产党的行动指南;叙述宪法对我国根本制度的规定;认同中国共产党是中国特色社会主义事业的领导核心,认同伟大祖国、中华民族、中华文化、中国共产党和中国特色社会主义;解释社会主义核心价值观在国家层面的价值目标。\"}", CJ_standard: "1", CJ_standardDescription: "能够面对简单问题,引证走中国特色社会主义道路的成功事例;表述马克思列宁主义、毛泽东思想、邓小平理论、“三个代表”重要思想、科学发展观、习近平新时代中国特色社会主义思想是中国共产党的行动指南;叙述宪法对我国根本制度的规定;认同中国共产党是中国特色社会主义事业的领导核心,认同伟大祖国、中华民族、中华文化、中国共产党和中国特色社会主义;解释社会主义核心价值观在国家层面的价值目标。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2", title: "政治认同 素养水平 2", description: "", subject: "SB0310", type: "CoreLiteracy", applicableLevel: "OB06", contentJson: "{\"standard\": \"2\", \"standardDescription\": \"能够面对复杂问题,比较世界各国发展道路,论证只有社会主义才能救中国,只有中国特色社会主义才能发展中国,中国特色社会主义是实现中华民族伟大复兴的必由之路;结合改革开放的实践,阐述马克思主义中国化时代化最新成果的时代特征;对照西方主要国家说明中国绝不能照搬其政治制度模式;着眼于中国共产党的先进性和纯洁性,阐述全面从严治党的意义;论述社会主义核心价值观体现文化自信的意义。\"}", CJ_standard: "2", CJ_standardDescription: "能够面对复杂问题,比较世界各国发展道路,论证只有社会主义才能救中国,只有中国特色社会主义才能发展中国,中国特色社会主义是实现中华民族伟大复兴的必由之路;结合改革开放的实践,阐述马克思主义中国化时代化最新成果的时代特征;对照西方主要国家说明中国绝不能照搬其政治制度模式;着眼于中国共产党的先进性和纯洁性,阐述全面从严治党的意义;论述社会主义核心价值观体现文化自信的意义。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:3"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:3", title: "政治认同 素养水平 3", description: "", subject: "SB0310", type: "CoreLiteracy", applicableLevel: "OB06", contentJson: "{\"standard\": \"3\", \"standardDescription\": \"能够面对具有挑战性的复杂问题，回应各种封闭僵化或改旗易帜的主张，阐述走中国特色社会主义道路的坚定信念；辨析各种错误思潮的影响，阐述马克思主义中国化时代化最新成果；跟进全面深化改革的进程，坚持中国特色社会主义制度不动摇；立足新时代新征程，阐述中国共产党是最高政治领导力量；洞察不同价值观的影响，揭示其根源，阐明社会主义核心价值观是当代中国精神的集中体现，凝结着全体人民共同的价值追求，是凝聚人心、汇聚民力的强大力量。\"}", CJ_standard: "3", CJ_standardDescription: "能够面对具有挑战性的复杂问题，回应各种封闭僵化或改旗易帜的主张，阐述走中国特色社会主义道路的坚定信念；辨析各种错误思潮的影响，阐述马克思主义中国化时代化最新成果；跟进全面深化改革的进程，坚持中国特色社会主义制度不动摇；立足新时代新征程，阐述中国共产党是最高政治领导力量；洞察不同价值观的影响，揭示其根源，阐明社会主义核心价值观是当代中国精神的集中体现，凝结着全体人民共同的价值追求，是凝聚人心、汇聚民力的强大力量。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4", title: "科学精神 素养水平 1", description: "", subject: "SB0310", type: "CoreLiteracy", applicableLevel: "OB06", contentJson: "{\"standard\": \"1\", \"standardDescription\": \"能够面对简单问题，懂得用马克思主义哲学的基本原理，观察和理解经济、政治、文化、社会和生态等现象，解释当前的发展理念；用相关学科方法，说明有关制度运行的意义和基本原则；意识到个人在社会生活中的角色，冷静面对各式各样的矛盾争端；识别当前各种文化现象，进行恰当的文化选择。\"}", CJ_standard: "1", CJ_standardDescription: "能够面对简单问题，懂得用马克思主义哲学的基本原理，观察和理解经济、政治、文化、社会和生态等现象，解释当前的发展理念；用相关学科方法，说明有关制度运行的意义和基本原则；意识到个人在社会生活中的角色，冷静面对各式各样的矛盾争端；识别当前各种文化现象，进行恰当的文化选择。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5", title: "科学精神 素养水平 2", description: "", subject: "SB0310", type: "CoreLiteracy", applicableLevel: "OB06", contentJson: "{\"standard\": \"2\", \"standardDescription\": \"能够面对复杂问题，坚持历史唯物主义的基本观点，阐释社会变迁的原因，把握社会发展的趋势；用开放而敏锐的眼光，辨识和分析不同信息和观点；在公共生活和私人生活领域辨识各种限制性条件，进行有理有据的研判，作出正确抉择，提出实现目标的合理方案；着眼于中华优秀传统文化的创造性转化、创新性发展，表达传承和弘扬中华文化的积极态度。\"}", CJ_standard: "2", CJ_standardDescription: "能够面对复杂问题，坚持历史唯物主义的基本观点，阐释社会变迁的原因，把握社会发展的趋势；用开放而敏锐的眼光，辨识和分析不同信息和观点；在公共生活和私人生活领域辨识各种限制性条件，进行有理有据的研判，作出正确抉择，提出实现目标的合理方案；着眼于中华优秀传统文化的创造性转化、创新性发展，表达传承和弘扬中华文化的积极态度。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:6"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:6", title: "科学精神 素养水平 3", description: "", subject: "SB0310", type: "CoreLiteracy", applicableLevel: "OB06", contentJson: "{\"standard\": \"3\", \"standardDescription\": \"能够面对具有挑战性的复杂问题，把握社会历史发展的阶段性特征；用辩证思维与历史思维独立思考，以建设性批判的态度，回应社会转型的复杂变化，有所作为；针对突发事件，理性澄清有关信息和观点，回应各种不确定性，创造性地提出解决方案；在全球视野下，针对各种思想文化的交流交融交锋，表现强大的文化理解力和国际传播力。\"}", CJ_standard: "3", CJ_standardDescription: "能够面对具有挑战性的复杂问题，把握社会历史发展的阶段性特征；用辩证思维与历史思维独立思考，以建设性批判的态度，回应社会转型的复杂变化，有所作为；针对突发事件，理性澄清有关信息和观点，回应各种不确定性，创造性地提出解决方案；在全球视野下，针对各种思想文化的交流交融交锋，表现强大的文化理解力和国际传播力。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7", title: "法治意识 素养水平 1", description: "", subject: "SB0310", type: "CoreLiteracy", applicableLevel: "OB06", contentJson: "{\"standard\": \"1\", \"standardDescription\": \"\"}", CJ_standard: "1", CJ_standardDescription: ""};

MERGE (n:CoreLiteracy {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:8"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:8", title: "法治意识 素养水平 2", description: "", subject: "SB0310", type: "CoreLiteracy", applicableLevel: "OB06", contentJson: "{\"standard\": \"2\", \"standardDescription\": \"\"}", CJ_standard: "2", CJ_standardDescription: ""};

MERGE (n:CoreLiteracy {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:9"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:9", title: "法治意识 素养水平 3", description: "", subject: "SB0310", type: "CoreLiteracy", applicableLevel: "OB06", contentJson: "{\"standard\": \"3\", \"standardDescription\": \"\"}", CJ_standard: "3", CJ_standardDescription: ""};

MERGE (n:CoreLiteracy {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:10"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:10", title: "公共参与 素养水平 1", description: "", subject: "SB0310", type: "CoreLiteracy", applicableLevel: "OB06", contentJson: "{\"standard\": \"1\", \"standardDescription\": \"能够面对简单问题，识别不同领域、不同层面的公共事务；运用实例说明通过民主协商解决问题的好处；描述自己所在社区公共事务管理的经验，表现村民自治或居民自治的方式；引用经过核实的报道，表达民主选举、民主协商、民主决策、民主管理、民主监督的好处；基于爱国、敬业、诚信、友善的价值准则，表达乐于参与公益活动的态度。\"}", CJ_standard: "1", CJ_standardDescription: "能够面对简单问题，识别不同领域、不同层面的公共事务；运用实例说明通过民主协商解决问题的好处；描述自己所在社区公共事务管理的经验，表现村民自治或居民自治的方式；引用经过核实的报道，表达民主选举、民主协商、民主决策、民主管理、民主监督的好处；基于爱国、敬业、诚信、友善的价值准则，表达乐于参与公益活动的态度。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:11"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:11", title: "公共参与 素养水平 2", description: "", subject: "SB0310", type: "CoreLiteracy", applicableLevel: "OB06", contentJson: "{\"standard\": \"2\", \"standardDescription\": \"能够面对复杂问题，剖析若干实例，阐释公民参与公共事务的意义和价值，解析公民参与国家立法、政府决策、社会治理、公共服务的途径和方式；解释民主选举、民主协商、民主决策、民主管理、民主监督的参与实践，阐述全过程人民民主的价值，展现出对话协商、沟通合作、表达诉求和解决问题的能力；比较公民政治参与和社会参与的角色行为，展现公共参与的理性行动能力；着眼于人民当家作主的意义，论述公共参与的责任担当精神。\"}", CJ_standard: "2", CJ_standardDescription: "能够面对复杂问题，剖析若干实例，阐释公民参与公共事务的意义和价值，解析公民参与国家立法、政府决策、社会治理、公共服务的途径和方式；解释民主选举、民主协商、民主决策、民主管理、民主监督的参与实践，阐述全过程人民民主的价值，展现出对话协商、沟通合作、表达诉求和解决问题的能力；比较公民政治参与和社会参与的角色行为，展现公共参与的理性行动能力；着眼于人民当家作主的意义，论述公共参与的责任担当精神。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:12"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:12", title: "公共参与 素养水平 3", description: "", subject: "SB0310", type: "CoreLiteracy", applicableLevel: "OB06", contentJson: "{\"standard\": \"3\", \"standardDescription\": \"能够面对具有挑战性的复杂问题，回应各种指向公共机构的质疑，解释公民在公共参与过程中与各领域、各层面公共机构的相互作用，阐述公民有序参与的意义和价值；回应社会上各种冷漠的表现和议论，剖析导致冷漠的思想根源；回应不同群体之间的利益冲突，揭示其历史和现实根源，并提出管控冲突、解决矛盾的办法或方案。\"}", CJ_standard: "3", CJ_standardDescription: "能够面对具有挑战性的复杂问题，回应各种指向公共机构的质疑，解释公民在公共参与过程中与各领域、各层面公共机构的相互作用，阐述公民有序参与的意义和价值；回应社会上各种冷漠的表现和议论，剖析导致冷漠的思想根源；回应不同群体之间的利益冲突，揭示其历史和现实根源，并提出管控冲突、解决矛盾的办法或方案。"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:1"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:1", title: "1.人类社会发展的进程与趋势", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:1\", \"academicRequirements\": \"通过本模块的学习，学生能够结合社会实践活动，了解人类社会发展的一般过程和基本规律；确信社会主义终将代替资本主义是不可抗拒的历史趋势；懂得中国特色社会主义是科学社会主义的成功实践，是中国近现代历史发展的必然选择；理解中国共产党为什么能，中国特色社会主义为什么好，归根到底是马克思主义行，是中国化时代化的马克思主义行；明确中国特色社会主义是实现中华民族伟大复兴的必由之路，以中国式现代化全面推进强国建设、民族复兴是新时代新征程党和国家的中心任务；展现中国特色社会主义道路自信、理论自信、制度自信、文化自信；坚定马克思主义信仰、中国特色社会主义信念、中华民族伟大复兴信心。\"}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:1", CJ_academicRequirements: "通过本模块的学习，学生能够结合社会实践活动，了解人类社会发展的一般过程和基本规律；确信社会主义终将代替资本主义是不可抗拒的历史趋势；懂得中国特色社会主义是科学社会主义的成功实践，是中国近现代历史发展的必然选择；理解中国共产党为什么能，中国特色社会主义为什么好，归根到底是马克思主义行，是中国化时代化的马克思主义行；明确中国特色社会主义是实现中华民族伟大复兴的必由之路，以中国式现代化全面推进强国建设、民族复兴是新时代新征程党和国家的中心任务；展现中国特色社会主义道路自信、理论自信、制度自信、文化自信；坚定马克思主义信仰、中国特色社会主义信念、中华民族伟大复兴信心。"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:2"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:2", title: "2. 中国特色社会主义的探索、开创与发展", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:1\", \"academicRequirements\": \"通过本模块的学习，学生能够结合社会实践活动，了解人类社会发展的一般过程和基本规律；确信社会主义终将代替资本主义是不可抗拒的历史趋势；懂得中国特色社会主义是科学社会主义的成功实践，是中国近现代历史发展的必然选择；理解中国共产党为什么能，中国特色社会主义为什么好，归根到底是马克思主义行，是中国化时代化的马克思主义行；明确中国特色社会主义是实现中华民族伟大复兴的必由之路，以中国式现代化全面推进强国建设、民族复兴是新时代新征程党和国家的中心任务；展现中国特色社会主义道路自信、理论自信、制度自信、文化自信；坚定马克思主义信仰、中国特色社会主义信念、中华民族伟大复兴信心。\"}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:1", CJ_academicRequirements: "通过本模块的学习，学生能够结合社会实践活动，了解人类社会发展的一般过程和基本规律；确信社会主义终将代替资本主义是不可抗拒的历史趋势；懂得中国特色社会主义是科学社会主义的成功实践，是中国近现代历史发展的必然选择；理解中国共产党为什么能，中国特色社会主义为什么好，归根到底是马克思主义行，是中国化时代化的马克思主义行；明确中国特色社会主义是实现中华民族伟大复兴的必由之路，以中国式现代化全面推进强国建设、民族复兴是新时代新征程党和国家的中心任务；展现中国特色社会主义道路自信、理论自信、制度自信、文化自信；坚定马克思主义信仰、中国特色社会主义信念、中华民族伟大复兴信心。"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:3"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:3", title: "1.经济制度与经济体制", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:2\", \"academicRequirements\": \"通过本模块的学习，学生能够结合社会实践活动，初步运用中国特色社会主义政治经济学的基本观点，观察和分析经济社会现象；了解社会主义基本经济制度的优越性；理解坚持社会主义市场经济和深化经济体制改革的意义；了解加快构建新发展格局、着力推动高质量发展的措施，明确发展新质生产力是推动高质量发展的内在要求和重要着力点；树立以人民为中心的发展思想；尝试对促进社会公正、实现共同富裕、营造良好社会风尚、完善社会保障的政策提出建议。\"}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:2", CJ_academicRequirements: "通过本模块的学习，学生能够结合社会实践活动，初步运用中国特色社会主义政治经济学的基本观点，观察和分析经济社会现象；了解社会主义基本经济制度的优越性；理解坚持社会主义市场经济和深化经济体制改革的意义；了解加快构建新发展格局、着力推动高质量发展的措施，明确发展新质生产力是推动高质量发展的内在要求和重要着力点；树立以人民为中心的发展思想；尝试对促进社会公正、实现共同富裕、营造良好社会风尚、完善社会保障的政策提出建议。"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:4"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:4", title: "2.经济发展与社会进步", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:2\", \"academicRequirements\": \"通过本模块的学习，学生能够结合社会实践活动，初步运用中国特色社会主义政治经济学的基本观点，观察和分析经济社会现象；了解社会主义基本经济制度的优越性；理解坚持社会主义市场经济和深化经济体制改革的意义；了解加快构建新发展格局、着力推动高质量发展的措施，明确发展新质生产力是推动高质量发展的内在要求和重要着力点；树立以人民为中心的发展思想；尝试对促进社会公正、实现共同富裕、营造良好社会风尚、完善社会保障的政策提出建议。\"}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:2", CJ_academicRequirements: "通过本模块的学习，学生能够结合社会实践活动，初步运用中国特色社会主义政治经济学的基本观点，观察和分析经济社会现象；了解社会主义基本经济制度的优越性；理解坚持社会主义市场经济和深化经济体制改革的意义；了解加快构建新发展格局、着力推动高质量发展的措施，明确发展新质生产力是推动高质量发展的内在要求和重要着力点；树立以人民为中心的发展思想；尝试对促进社会公正、实现共同富裕、营造良好社会风尚、完善社会保障的政策提出建议。"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:5"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:5", title: "1.中国共产党的领导", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:3\", \"academicRequirements\": \"通过本模块的学习，学生能够结合社会实践活动，了解中国共产党的性质、宗旨和指导思想，明确党的执政地位是历史和人民的选择；阐释中国特色社会主义政治制度的基本内容、鲜明特点和主要优势；了解全面推进依法治国的总目标，知道科学立法、严格执法、公正司法、全民守法的基本要求；懂得走中国特色社会主义政治发展道路，必须坚持党的领导、人民当家作主、依法治国有机统一，理解推进国家治理体系和治理能力现代化的重要性；具备有序参与国家政治生活和社会公共生活的能力。\"}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:3", CJ_academicRequirements: "通过本模块的学习，学生能够结合社会实践活动，了解中国共产党的性质、宗旨和指导思想，明确党的执政地位是历史和人民的选择；阐释中国特色社会主义政治制度的基本内容、鲜明特点和主要优势；了解全面推进依法治国的总目标，知道科学立法、严格执法、公正司法、全民守法的基本要求；懂得走中国特色社会主义政治发展道路，必须坚持党的领导、人民当家作主、依法治国有机统一，理解推进国家治理体系和治理能力现代化的重要性；具备有序参与国家政治生活和社会公共生活的能力。"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:6"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:6", title: "2.人民当家作主", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:3\", \"academicRequirements\": \"通过本模块的学习，学生能够结合社会实践活动，了解中国共产党的性质、宗旨和指导思想，明确党的执政地位是历史和人民的选择；阐释中国特色社会主义政治制度的基本内容、鲜明特点和主要优势；了解全面推进依法治国的总目标，知道科学立法、严格执法、公正司法、全民守法的基本要求；懂得走中国特色社会主义政治发展道路，必须坚持党的领导、人民当家作主、依法治国有机统一，理解推进国家治理体系和治理能力现代化的重要性；具备有序参与国家政治生活和社会公共生活的能力。\"}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:3", CJ_academicRequirements: "通过本模块的学习，学生能够结合社会实践活动，了解中国共产党的性质、宗旨和指导思想，明确党的执政地位是历史和人民的选择；阐释中国特色社会主义政治制度的基本内容、鲜明特点和主要优势；了解全面推进依法治国的总目标，知道科学立法、严格执法、公正司法、全民守法的基本要求；懂得走中国特色社会主义政治发展道路，必须坚持党的领导、人民当家作主、依法治国有机统一，理解推进国家治理体系和治理能力现代化的重要性；具备有序参与国家政治生活和社会公共生活的能力。"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:7"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:7", title: "3.依法治国", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:3\", \"academicRequirements\": \"通过本模块的学习，学生能够结合社会实践活动，了解中国共产党的性质、宗旨和指导思想，明确党的执政地位是历史和人民的选择；阐释中国特色社会主义政治制度的基本内容、鲜明特点和主要优势；了解全面推进依法治国的总目标，知道科学立法、严格执法、公正司法、全民守法的基本要求；懂得走中国特色社会主义政治发展道路，必须坚持党的领导、人民当家作主、依法治国有机统一，理解推进国家治理体系和治理能力现代化的重要性；具备有序参与国家政治生活和社会公共生活的能力。\"}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:3", CJ_academicRequirements: "通过本模块的学习，学生能够结合社会实践活动，了解中国共产党的性质、宗旨和指导思想，明确党的执政地位是历史和人民的选择；阐释中国特色社会主义政治制度的基本内容、鲜明特点和主要优势；了解全面推进依法治国的总目标，知道科学立法、严格执法、公正司法、全民守法的基本要求；懂得走中国特色社会主义政治发展道路，必须坚持党的领导、人民当家作主、依法治国有机统一，理解推进国家治理体系和治理能力现代化的重要性；具备有序参与国家政治生活和社会公共生活的能力。"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:8"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:8", title: "1.探索世界与追求真理", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:4\", \"academicRequirements\": \"通过本模块的学习，学生能够结合社会实践活动，了解马克思主义哲学的基本原理；运用辩证唯物主义和历史唯物主义观点认识自然界、人类社会、人类思维，确信实践是检验真理的唯一标准；实事求是、与时俱进地观察和分析经济、政治、文化、社会、生态等现象，在生活中作出科学的价值判断和行为选择，树立正确人生理想和信念，培养担当意识和社会责任感；发展社会主义先进文化，弘扬革命文化，传承中华优秀传统文化，尊重世界文化多样性，增强文化自信；树立正确的世界观、人生观、价值观。\"}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:4", CJ_academicRequirements: "通过本模块的学习，学生能够结合社会实践活动，了解马克思主义哲学的基本原理；运用辩证唯物主义和历史唯物主义观点认识自然界、人类社会、人类思维，确信实践是检验真理的唯一标准；实事求是、与时俱进地观察和分析经济、政治、文化、社会、生态等现象，在生活中作出科学的价值判断和行为选择，树立正确人生理想和信念，培养担当意识和社会责任感；发展社会主义先进文化，弘扬革命文化，传承中华优秀传统文化，尊重世界文化多样性，增强文化自信；树立正确的世界观、人生观、价值观。"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:9"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:9", title: "2.认识社会与价值选择", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:4\", \"academicRequirements\": \"通过本模块的学习，学生能够结合社会实践活动，了解马克思主义哲学的基本原理；运用辩证唯物主义和历史唯物主义观点认识自然界、人类社会、人类思维，确信实践是检验真理的唯一标准；实事求是、与时俱进地观察和分析经济、政治、文化、社会、生态等现象，在生活中作出科学的价值判断和行为选择，树立正确人生理想和信念，培养担当意识和社会责任感；发展社会主义先进文化，弘扬革命文化，传承中华优秀传统文化，尊重世界文化多样性，增强文化自信；树立正确的世界观、人生观、价值观。\"}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:4", CJ_academicRequirements: "通过本模块的学习，学生能够结合社会实践活动，了解马克思主义哲学的基本原理；运用辩证唯物主义和历史唯物主义观点认识自然界、人类社会、人类思维，确信实践是检验真理的唯一标准；实事求是、与时俱进地观察和分析经济、政治、文化、社会、生态等现象，在生活中作出科学的价值判断和行为选择，树立正确人生理想和信念，培养担当意识和社会责任感；发展社会主义先进文化，弘扬革命文化，传承中华优秀传统文化，尊重世界文化多样性，增强文化自信；树立正确的世界观、人生观、价值观。"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:10"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:10", title: "3.文化传承与文化创新", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:4\", \"academicRequirements\": \"通过本模块的学习，学生能够结合社会实践活动，了解马克思主义哲学的基本原理；运用辩证唯物主义和历史唯物主义观点认识自然界、人类社会、人类思维，确信实践是检验真理的唯一标准；实事求是、与时俱进地观察和分析经济、政治、文化、社会、生态等现象，在生活中作出科学的价值判断和行为选择，树立正确人生理想和信念，培养担当意识和社会责任感；发展社会主义先进文化，弘扬革命文化，传承中华优秀传统文化，尊重世界文化多样性，增强文化自信；树立正确的世界观、人生观、价值观。\"}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:4", CJ_academicRequirements: "通过本模块的学习，学生能够结合社会实践活动，了解马克思主义哲学的基本原理；运用辩证唯物主义和历史唯物主义观点认识自然界、人类社会、人类思维，确信实践是检验真理的唯一标准；实事求是、与时俱进地观察和分析经济、政治、文化、社会、生态等现象，在生活中作出科学的价值判断和行为选择，树立正确人生理想和信念，培养担当意识和社会责任感；发展社会主义先进文化，弘扬革命文化，传承中华优秀传统文化，尊重世界文化多样性，增强文化自信；树立正确的世界观、人生观、价值观。"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:11"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:11", title: "1. 各具特色的国家", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:5\", \"academicRequirements\": \"通过本模块的学习，学生能够在全球视野中观察不同国家的政治制度，坚定中国特色社会主义道路自信、理论自信、制度自信、文化自信；弘扬全人类共同价值，理解各国相互联系的程度空前加深，全球越来越成为相互依存的命运共同体，懂得和平、发展、合作、共赢是历史潮流；解析当今世界多极化和经济全球化进程，理解国际组织在国际事务中的作用；明确国家利益和国家实力是决定国际关系的主要因素；具有融入国际社会的积极意愿和开放态度，自觉维护国家主权、安全、发展利益，推动构建人类命运共同体。\"}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:5", CJ_academicRequirements: "通过本模块的学习，学生能够在全球视野中观察不同国家的政治制度，坚定中国特色社会主义道路自信、理论自信、制度自信、文化自信；弘扬全人类共同价值，理解各国相互联系的程度空前加深，全球越来越成为相互依存的命运共同体，懂得和平、发展、合作、共赢是历史潮流；解析当今世界多极化和经济全球化进程，理解国际组织在国际事务中的作用；明确国家利益和国家实力是决定国际关系的主要因素；具有融入国际社会的积极意愿和开放态度，自觉维护国家主权、安全、发展利益，推动构建人类命运共同体。"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:12"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:12", title: "2. 世界多极化", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:5\", \"academicRequirements\": \"通过本模块的学习，学生能够在全球视野中观察不同国家的政治制度，坚定中国特色社会主义道路自信、理论自信、制度自信、文化自信；弘扬全人类共同价值，理解各国相互联系的程度空前加深，全球越来越成为相互依存的命运共同体，懂得和平、发展、合作、共赢是历史潮流；解析当今世界多极化和经济全球化进程，理解国际组织在国际事务中的作用；明确国家利益和国家实力是决定国际关系的主要因素；具有融入国际社会的积极意愿和开放态度，自觉维护国家主权、安全、发展利益，推动构建人类命运共同体。\"}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:5", CJ_academicRequirements: "通过本模块的学习，学生能够在全球视野中观察不同国家的政治制度，坚定中国特色社会主义道路自信、理论自信、制度自信、文化自信；弘扬全人类共同价值，理解各国相互联系的程度空前加深，全球越来越成为相互依存的命运共同体，懂得和平、发展、合作、共赢是历史潮流；解析当今世界多极化和经济全球化进程，理解国际组织在国际事务中的作用；明确国家利益和国家实力是决定国际关系的主要因素；具有融入国际社会的积极意愿和开放态度，自觉维护国家主权、安全、发展利益，推动构建人类命运共同体。"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:13"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:13", title: "3. 经济全球化", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:5\", \"academicRequirements\": \"通过本模块的学习，学生能够在全球视野中观察不同国家的政治制度，坚定中国特色社会主义道路自信、理论自信、制度自信、文化自信；弘扬全人类共同价值，理解各国相互联系的程度空前加深，全球越来越成为相互依存的命运共同体，懂得和平、发展、合作、共赢是历史潮流；解析当今世界多极化和经济全球化进程，理解国际组织在国际事务中的作用；明确国家利益和国家实力是决定国际关系的主要因素；具有融入国际社会的积极意愿和开放态度，自觉维护国家主权、安全、发展利益，推动构建人类命运共同体。\"}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:5", CJ_academicRequirements: "通过本模块的学习，学生能够在全球视野中观察不同国家的政治制度，坚定中国特色社会主义道路自信、理论自信、制度自信、文化自信；弘扬全人类共同价值，理解各国相互联系的程度空前加深，全球越来越成为相互依存的命运共同体，懂得和平、发展、合作、共赢是历史潮流；解析当今世界多极化和经济全球化进程，理解国际组织在国际事务中的作用；明确国家利益和国家实力是决定国际关系的主要因素；具有融入国际社会的积极意愿和开放态度，自觉维护国家主权、安全、发展利益，推动构建人类命运共同体。"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:14"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:14", title: "4. 国际组织", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:5\", \"academicRequirements\": \"通过本模块的学习，学生能够在全球视野中观察不同国家的政治制度，坚定中国特色社会主义道路自信、理论自信、制度自信、文化自信；弘扬全人类共同价值，理解各国相互联系的程度空前加深，全球越来越成为相互依存的命运共同体，懂得和平、发展、合作、共赢是历史潮流；解析当今世界多极化和经济全球化进程，理解国际组织在国际事务中的作用；明确国家利益和国家实力是决定国际关系的主要因素；具有融入国际社会的积极意愿和开放态度，自觉维护国家主权、安全、发展利益，推动构建人类命运共同体。\"}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:5", CJ_academicRequirements: "通过本模块的学习，学生能够在全球视野中观察不同国家的政治制度，坚定中国特色社会主义道路自信、理论自信、制度自信、文化自信；弘扬全人类共同价值，理解各国相互联系的程度空前加深，全球越来越成为相互依存的命运共同体，懂得和平、发展、合作、共赢是历史潮流；解析当今世界多极化和经济全球化进程，理解国际组织在国际事务中的作用；明确国家利益和国家实力是决定国际关系的主要因素；具有融入国际社会的积极意愿和开放态度，自觉维护国家主权、安全、发展利益，推动构建人类命运共同体。"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:15"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:15", title: "1. 民事权利与义务", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:6\", \"academicRequirements\": \"通过本模块的学习，学生能够结合生活实际，更加全面地认识民事权利与义务；更为具体地理解婚姻家庭中的法律责任，以及与创业和就业相关的法律制度；更为理性地看待生活中的矛盾和纠纷，懂得调解、仲裁、诉讼等不同的纠纷解决机制；进一步提高主动学法的意愿、自觉用法的能力。\"}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:6", CJ_academicRequirements: "通过本模块的学习，学生能够结合生活实际，更加全面地认识民事权利与义务；更为具体地理解婚姻家庭中的法律责任，以及与创业和就业相关的法律制度；更为理性地看待生活中的矛盾和纠纷，懂得调解、仲裁、诉讼等不同的纠纷解决机制；进一步提高主动学法的意愿、自觉用法的能力。"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:16"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:16", title: "2. 家庭与婚姻", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:6\", \"academicRequirements\": \"通过本模块的学习，学生能够结合生活实际，更加全面地认识民事权利与义务；更为具体地理解婚姻家庭中的法律责任，以及与创业和就业相关的法律制度；更为理性地看待生活中的矛盾和纠纷，懂得调解、仲裁、诉讼等不同的纠纷解决机制；进一步提高主动学法的意愿、自觉用法的能力。\"}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:6", CJ_academicRequirements: "通过本模块的学习，学生能够结合生活实际，更加全面地认识民事权利与义务；更为具体地理解婚姻家庭中的法律责任，以及与创业和就业相关的法律制度；更为理性地看待生活中的矛盾和纠纷，懂得调解、仲裁、诉讼等不同的纠纷解决机制；进一步提高主动学法的意愿、自觉用法的能力。"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:17"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:17", title: "3.就业与创业", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:6\", \"academicRequirements\": \"通过本模块的学习，学生能够结合生活实际，更加全面地认识民事权利与义务；更为具体地理解婚姻家庭中的法律责任，以及与创业和就业相关的法律制度；更为理性地看待生活中的矛盾和纠纷，懂得调解、仲裁、诉讼等不同的纠纷解决机制；进一步提高主动学法的意愿、自觉用法的能力。\"}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:6", CJ_academicRequirements: "通过本模块的学习，学生能够结合生活实际，更加全面地认识民事权利与义务；更为具体地理解婚姻家庭中的法律责任，以及与创业和就业相关的法律制度；更为理性地看待生活中的矛盾和纠纷，懂得调解、仲裁、诉讼等不同的纠纷解决机制；进一步提高主动学法的意愿、自觉用法的能力。"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:18"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:18", title: "4. 社会争议解决", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:6\", \"academicRequirements\": \"通过本模块的学习，学生能够结合生活实际，更加全面地认识民事权利与义务；更为具体地理解婚姻家庭中的法律责任，以及与创业和就业相关的法律制度；更为理性地看待生活中的矛盾和纠纷，懂得调解、仲裁、诉讼等不同的纠纷解决机制；进一步提高主动学法的意愿、自觉用法的能力。\"}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:6", CJ_academicRequirements: "通过本模块的学习，学生能够结合生活实际，更加全面地认识民事权利与义务；更为具体地理解婚姻家庭中的法律责任，以及与创业和就业相关的法律制度；更为理性地看待生活中的矛盾和纠纷，懂得调解、仲裁、诉讼等不同的纠纷解决机制；进一步提高主动学法的意愿、自觉用法的能力。"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:19"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:19", title: "1.学会科学思维", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:7\", \"academicRequirements\": \"通过本模块的学习，学生能够经历探究过程，明确科学思维的重要意义；学会遵循逻辑思维的规律；把握辩证思维的方法；提高创新思维的能力；提升自己的思维品质；正确运用科学思维方法观察和理解社会，处理学习和生活中遇到的问题。\"}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:7", CJ_academicRequirements: "通过本模块的学习，学生能够经历探究过程，明确科学思维的重要意义；学会遵循逻辑思维的规律；把握辩证思维的方法；提高创新思维的能力；提升自己的思维品质；正确运用科学思维方法观察和理解社会，处理学习和生活中遇到的问题。"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:20"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:20", title: "2. 遵循逻辑思维要求", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:7\", \"academicRequirements\": \"通过本模块的学习，学生能够经历探究过程，明确科学思维的重要意义；学会遵循逻辑思维的规律；把握辩证思维的方法；提高创新思维的能力；提升自己的思维品质；正确运用科学思维方法观察和理解社会，处理学习和生活中遇到的问题。\"}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:7", CJ_academicRequirements: "通过本模块的学习，学生能够经历探究过程，明确科学思维的重要意义；学会遵循逻辑思维的规律；把握辩证思维的方法；提高创新思维的能力；提升自己的思维品质；正确运用科学思维方法观察和理解社会，处理学习和生活中遇到的问题。"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:21"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:21", title: "3. 运用辩证思维方法", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:7\", \"academicRequirements\": \"通过本模块的学习，学生能够经历探究过程，明确科学思维的重要意义；学会遵循逻辑思维的规律；把握辩证思维的方法；提高创新思维的能力；提升自己的思维品质；正确运用科学思维方法观察和理解社会，处理学习和生活中遇到的问题。\"}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:7", CJ_academicRequirements: "通过本模块的学习，学生能够经历探究过程，明确科学思维的重要意义；学会遵循逻辑思维的规律；把握辩证思维的方法；提高创新思维的能力；提升自己的思维品质；正确运用科学思维方法观察和理解社会，处理学习和生活中遇到的问题。"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:22"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:22", title: "4. 提高创新思维能力", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:7\", \"academicRequirements\": \"通过本模块的学习，学生能够经历探究过程，明确科学思维的重要意义；学会遵循逻辑思维的规律；把握辩证思维的方法；提高创新思维的能力；提升自己的思维品质；正确运用科学思维方法观察和理解社会，处理学习和生活中遇到的问题。\"}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:7", CJ_academicRequirements: "通过本模块的学习，学生能够经历探究过程，明确科学思维的重要意义；学会遵循逻辑思维的规律；把握辩证思维的方法；提高创新思维的能力；提升自己的思维品质；正确运用科学思维方法观察和理解社会，处理学习和生活中遇到的问题。"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:23"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:23", title: "1. 货币与市场", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:8\", \"academicRequirements\": null}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:8"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:24"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:24", title: "2. 收入与支出", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:8\", \"academicRequirements\": null}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:8"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:25"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:25", title: "3. 投资与理财", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:8\", \"academicRequirements\": null}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:8"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:26"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:26", title: "4. 企业与就业", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:8\", \"academicRequirements\": null}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:8"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:27"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:27", title: "1. 法官的职责", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:9\", \"academicRequirements\": null}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:9"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:28"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:28", title: "2.审判程序", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:9\", \"academicRequirements\": null}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:9"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:29"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:29", title: "3. 律师的职责", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:9\", \"academicRequirements\": null}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:9"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:30"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:30", title: "4. 辩护和代理", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:9\", \"academicRequirements\": null}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:9"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:31", title: "1. 百家争鸣的时代", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:10\", \"academicRequirements\": null}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:10"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:32", title: "2. 理学与心学的演变", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:10\", \"academicRequirements\": null}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:10"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:33", title: "3. 西方哲学的起源", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:10\", \"academicRequirements\": null}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:10"};

MERGE (n:Theme {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Theme:34", title: "4. 西方哲学的发展", description: "", subject: "SB0310", type: "Theme", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:politics:SB0310:OB06:CourseModule:10\", \"academicRequirements\": null}", CJ_courseModule: "urn:jy:politics:SB0310:OB06:CourseModule:10"};

MERGE (n:CourseModule {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:1"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:1", title: "模块1：中国特色社会主义", description: "着眼于人类社会的发展历程，立足中国特色社会主义的伟大实践，明确中国特色社会主义是科学社会主义理论逻辑与中国社会发展历史逻辑的辩证统一，中国特色社会主义已进入新时代，帮助学生树立为共产主义远大理想和中国特色社会主义共同理想而团结奋斗的信念。", subject: "SB0310", type: "CourseModule", applicableLevel: "OB06", contentJson: "{\"courseStructure\": \"urn:jy:politics:SB0310:OB06:CourseStructure:1\", \"courseStructureTitle\": \"必修课程\"}", CJ_courseStructure: "urn:jy:politics:SB0310:OB06:CourseStructure:1", CJ_courseStructureTitle: "必修课程"};

MERGE (n:CourseModule {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:2"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:2", title: "模块2：经济与社会", description: "依据习近平经济思想的基本原理，讲述我国社会主义基本经济制", subject: "SB0310", type: "CourseModule", applicableLevel: "OB06", contentJson: "{\"courseStructure\": \"urn:jy:politics:SB0310:OB06:CourseStructure:1\", \"courseStructureTitle\": \"必修课程\"}", CJ_courseStructure: "urn:jy:politics:SB0310:OB06:CourseStructure:1", CJ_courseStructureTitle: "必修课程"};

MERGE (n:CourseModule {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:3"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:3", title: "模块3：政治与法治", description: "以党的领导、人民当家作主、依法治国有机统一为主线，讲述党的领导是人民当家作主和依法治国的根本保证，人民当家作主是社会主义民主政治的本质特征，依法治国是党领导人民治理国家的基本方式，奠定学生政治立场与法治思维的基础。", subject: "SB0310", type: "CourseModule", applicableLevel: "OB06", contentJson: "{\"courseStructure\": \"urn:jy:politics:SB0310:OB06:CourseStructure:1\", \"courseStructureTitle\": \"必修课程\"}", CJ_courseStructure: "urn:jy:politics:SB0310:OB06:CourseStructure:1", CJ_courseStructureTitle: "必修课程"};

MERGE (n:CourseModule {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:4"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:4", title: "模块4：哲学与文化", description: "阐明马克思主义哲学是科学的世界观和方法论，讲述辩证唯物主义和历史唯物主义基本观点，坚持实践的观点、历史的观点、辩证的观点、发展的观点、群众的观点，在实践中认识真理、检验真理、发展真理；讲述社会生活及个人成长中价值判断、行为选择和文化自信的意义；为培育学生思想政治学科核心素养，奠定世界观、人生观、价值观基础。", subject: "SB0310", type: "CourseModule", applicableLevel: "OB06", contentJson: "{\"courseStructure\": \"urn:jy:politics:SB0310:OB06:CourseStructure:1\", \"courseStructureTitle\": \"必修课程\"}", CJ_courseStructure: "urn:jy:politics:SB0310:OB06:CourseStructure:1", CJ_courseStructureTitle: "必修课程"};

MERGE (n:CourseModule {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:5"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:5", title: "模块1：当代国际政治与经济", description: "围绕当今世界多极化与经济全球化趋势，解析不同的国家性质和国家形式，说明国际关系的主要影响因素和世界经济发展的基本特点，介绍国际组织的主要类型及作用，引导学生坚持胸怀天下，在拓展国际视野的过程中，坚持总体国家安全观，坚定不移地走中国特色社会主义道路，积极贡献中国智慧和力量，推动构建人类命运共同体。", subject: "SB0310", type: "CourseModule", applicableLevel: "OB06", contentJson: "{\"courseStructure\": \"urn:jy:politics:SB0310:OB06:CourseStructure:2\", \"courseStructureTitle\": \"选择性必修课程\"}", CJ_courseStructure: "urn:jy:politics:SB0310:OB06:CourseStructure:2", CJ_courseStructureTitle: "选择性必修课程"};

MERGE (n:CourseModule {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:6"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:6", title: "模块2：法律与生活", description: "聚焦公民依法维护合法权益的法律行为，介绍民事主体一般的民事权利和义务，了解婚姻家庭中的法律关系和法律责任、劳动关系的法律保障、社会纠纷的解决机制和法律程序，为学生进一步发展思想政治学科核心素养、牢固树立法治观念，提供日常生活中的法律常识。", subject: "SB0310", type: "CourseModule", applicableLevel: "OB06", contentJson: "{\"courseStructure\": \"urn:jy:politics:SB0310:OB06:CourseStructure:2\", \"courseStructureTitle\": \"选择性必修课程\"}", CJ_courseStructure: "urn:jy:politics:SB0310:OB06:CourseStructure:2", CJ_courseStructureTitle: "选择性必修课程"};

MERGE (n:CourseModule {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:7"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:7", title: "模块3：逻辑与思维", description: "通过科学思维的训练，引导学生掌握科学思维的基本要求，把握逻", subject: "SB0310", type: "CourseModule", applicableLevel: "OB06", contentJson: "{\"courseStructure\": \"urn:jy:politics:SB0310:OB06:CourseStructure:2\", \"courseStructureTitle\": \"选择性必修课程\"}", CJ_courseStructure: "urn:jy:politics:SB0310:OB06:CourseStructure:2", CJ_courseStructureTitle: "选择性必修课程"};

MERGE (n:CourseModule {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:8"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:8", title: "模块1：财经与生活", description: "提供本课程模块，目的是帮助学生在中国特色社会主义新时代，更好地立足社会主义市场经济运行和社会主义现代化建设的需要，了解经济生活的基本概念和原理，提升学生正确理解和积极参与经济生活的能力，帮助学生进一步树立正确的财富观与人生观，坚持公正、法治的价值取向，践行敬业、诚信的价值准则。", subject: "SB0310", type: "CourseModule", applicableLevel: "OB06", contentJson: "{\"courseStructure\": \"urn:jy:politics:SB0310:OB06:CourseStructure:3\", \"courseStructureTitle\": \"选修课程\"}", CJ_courseStructure: "urn:jy:politics:SB0310:OB06:CourseStructure:3", CJ_courseStructureTitle: "选修课程"};

MERGE (n:CourseModule {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:9"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:9", title: "模块2：法官与律师", description: "提供本课程模块，目的是帮助学生更多地了解法官和律师这两种有代表性的法律职业的不同职责和共同使命；理解法官和律师对于维护公平正义、推动社会进步、满足人民美好生活需要的作用；在建设社会主义法治文化的实践中，不断增强法治观念，尊法学法守法用法，做社会主义法治的忠实崇尚者、自觉遵守者、坚定捍卫者。", subject: "SB0310", type: "CourseModule", applicableLevel: "OB06", contentJson: "{\"courseStructure\": \"urn:jy:politics:SB0310:OB06:CourseStructure:3\", \"courseStructureTitle\": \"选修课程\"}", CJ_courseStructure: "urn:jy:politics:SB0310:OB06:CourseStructure:3", CJ_courseStructureTitle: "选修课程"};

MERGE (n:CourseModule {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:10"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:10", title: "模块3：历史上的哲学家", description: "提供本课程模块，目的是帮助学生更多地了解中外历史上唯物主义与唯心主义哲学流派的代表人物及其核心思想；通过对不同哲学观点进行比较、鉴别和评价，看到哲学的时代价值及其影响历史进程的作用；每一个时代的理论思维，都是历史的产物，学习哲学史可以帮助我们提高理论思维水平，更加自觉地理解和掌握马克思主义哲学原理。", subject: "SB0310", type: "CourseModule", applicableLevel: "OB06", contentJson: "{\"courseStructure\": \"urn:jy:politics:SB0310:OB06:CourseStructure:3\", \"courseStructureTitle\": \"选修课程\"}", CJ_courseStructure: "urn:jy:politics:SB0310:OB06:CourseStructure:3", CJ_courseStructureTitle: "选修课程"};

MERGE (n:Chapter {identifier: "urn:jy:politics:SB0310:OB06:Chapter:1"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Chapter:1", title: "第一课 社会主义从空想到科学、从理论到实践的发展", description: "", subject: "SB0310", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修1 中国特色社会主义\", \"sourceTextbook\": \"高中思想政治统编版高一必修1 中国特色社会主义\", \"course\": \"思想政治\", \"bookIndex\": 1}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修1 中国特色社会主义", CJ_sourceTextbook: "高中思想政治统编版高一必修1 中国特色社会主义", CJ_course: "思想政治", CJ_bookIndex: 1};

MERGE (n:Chapter {identifier: "urn:jy:politics:SB0310:OB06:Chapter:2"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Chapter:2", title: "第二课 只有社会主义才能救中国", description: "", subject: "SB0310", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修1 中国特色社会主义\", \"sourceTextbook\": \"高中思想政治统编版高一必修1 中国特色社会主义\", \"course\": \"思想政治\", \"bookIndex\": 2}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修1 中国特色社会主义", CJ_sourceTextbook: "高中思想政治统编版高一必修1 中国特色社会主义", CJ_course: "思想政治", CJ_bookIndex: 2};

MERGE (n:Chapter {identifier: "urn:jy:politics:SB0310:OB06:Chapter:3"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Chapter:3", title: "第三课 只有中国特色社会主义才能发展中国", description: "", subject: "SB0310", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修1 中国特色社会主义\", \"sourceTextbook\": \"高中思想政治统编版高一必修1 中国特色社会主义\", \"course\": \"思想政治\", \"bookIndex\": 3}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修1 中国特色社会主义", CJ_sourceTextbook: "高中思想政治统编版高一必修1 中国特色社会主义", CJ_course: "思想政治", CJ_bookIndex: 3};

MERGE (n:Chapter {identifier: "urn:jy:politics:SB0310:OB06:Chapter:4"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Chapter:4", title: "第四课 只有坚持和发展中国特色社会主义才能实现中华民族伟大复兴", description: "", subject: "SB0310", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修1 中国特色社会主义\", \"sourceTextbook\": \"高中思想政治统编版高一必修1 中国特色社会主义\", \"course\": \"思想政治\", \"bookIndex\": 4}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修1 中国特色社会主义", CJ_sourceTextbook: "高中思想政治统编版高一必修1 中国特色社会主义", CJ_course: "思想政治", CJ_bookIndex: 4};

MERGE (n:Chapter {identifier: "urn:jy:politics:SB0310:OB06:Chapter:5"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Chapter:5", title: "综合探究一 回看走过的路 比较别人的路 远眺前行的路", description: "", subject: "SB0310", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修1 中国特色社会主义\", \"sourceTextbook\": \"高中思想政治统编版高一必修1 中国特色社会主义\", \"course\": \"思想政治\", \"bookIndex\": 5}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修1 中国特色社会主义", CJ_sourceTextbook: "高中思想政治统编版高一必修1 中国特色社会主义", CJ_course: "思想政治", CJ_bookIndex: 5};

MERGE (n:Chapter {identifier: "urn:jy:politics:SB0310:OB06:Chapter:6"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Chapter:6", title: "综合探究二 方向决定道路 道路决定命运", description: "", subject: "SB0310", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修1 中国特色社会主义\", \"sourceTextbook\": \"高中思想政治统编版高一必修1 中国特色社会主义\", \"course\": \"思想政治\", \"bookIndex\": 6}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修1 中国特色社会主义", CJ_sourceTextbook: "高中思想政治统编版高一必修1 中国特色社会主义", CJ_course: "思想政治", CJ_bookIndex: 6};

MERGE (n:Chapter {identifier: "urn:jy:politics:SB0310:OB06:Chapter:7"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Chapter:7", title: "第一单元 生产资料所有制与经济体制", description: "", subject: "SB0310", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修2 经济与社会\", \"sourceTextbook\": \"高中思想政治统编版高一必修2 经济与社会\", \"course\": \"思想政治\", \"bookIndex\": 1}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修2 经济与社会", CJ_sourceTextbook: "高中思想政治统编版高一必修2 经济与社会", CJ_course: "思想政治", CJ_bookIndex: 1};

MERGE (n:Chapter {identifier: "urn:jy:politics:SB0310:OB06:Chapter:8"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Chapter:8", title: "第二单元 经济发展与社会进步", description: "", subject: "SB0310", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修2 经济与社会\", \"sourceTextbook\": \"高中思想政治统编版高一必修2 经济与社会\", \"course\": \"思想政治\", \"bookIndex\": 2}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修2 经济与社会", CJ_sourceTextbook: "高中思想政治统编版高一必修2 经济与社会", CJ_course: "思想政治", CJ_bookIndex: 2};

MERGE (n:Chapter {identifier: "urn:jy:politics:SB0310:OB06:Chapter:9"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Chapter:9", title: "其他", description: "", subject: "SB0310", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修2 经济与社会\", \"sourceTextbook\": \"高中思想政治统编版高一必修2 经济与社会\", \"course\": \"思想政治\", \"bookIndex\": 3}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修2 经济与社会", CJ_sourceTextbook: "高中思想政治统编版高一必修2 经济与社会", CJ_course: "思想政治", CJ_bookIndex: 3};

MERGE (n:Chapter {identifier: "urn:jy:politics:SB0310:OB06:Chapter:10"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Chapter:10", title: "第一单元 中国共产党的领导", description: "", subject: "SB0310", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修3 政治与法治\", \"sourceTextbook\": \"高中思想政治统编版高一必修3 政治与法治\", \"course\": \"思想政治\", \"bookIndex\": 1}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修3 政治与法治", CJ_sourceTextbook: "高中思想政治统编版高一必修3 政治与法治", CJ_course: "思想政治", CJ_bookIndex: 1};

MERGE (n:Chapter {identifier: "urn:jy:politics:SB0310:OB06:Chapter:11"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Chapter:11", title: "第二单元 人民当家作主", description: "", subject: "SB0310", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修3 政治与法治\", \"sourceTextbook\": \"高中思想政治统编版高一必修3 政治与法治\", \"course\": \"思想政治\", \"bookIndex\": 2}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修3 政治与法治", CJ_sourceTextbook: "高中思想政治统编版高一必修3 政治与法治", CJ_course: "思想政治", CJ_bookIndex: 2};

MERGE (n:Chapter {identifier: "urn:jy:politics:SB0310:OB06:Chapter:12"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Chapter:12", title: "第三单元 全面依法治国", description: "", subject: "SB0310", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修3 政治与法治\", \"sourceTextbook\": \"高中思想政治统编版高一必修3 政治与法治\", \"course\": \"思想政治\", \"bookIndex\": 3}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修3 政治与法治", CJ_sourceTextbook: "高中思想政治统编版高一必修3 政治与法治", CJ_course: "思想政治", CJ_bookIndex: 3};

MERGE (n:Chapter {identifier: "urn:jy:politics:SB0310:OB06:Chapter:13"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Chapter:13", title: "第一单元 探索世界与把握规律", description: "", subject: "SB0310", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"统编版\", \"volume\": \"必修4 哲学与文化\", \"sourceTextbook\": \"高中思想政治统编版高二必修4 哲学与文化\", \"course\": \"思想政治\", \"bookIndex\": 1}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "统编版", CJ_volume: "必修4 哲学与文化", CJ_sourceTextbook: "高中思想政治统编版高二必修4 哲学与文化", CJ_course: "思想政治", CJ_bookIndex: 1};

MERGE (n:Chapter {identifier: "urn:jy:politics:SB0310:OB06:Chapter:14"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Chapter:14", title: "第二单元 认识社会与价值选择", description: "", subject: "SB0310", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"统编版\", \"volume\": \"必修4 哲学与文化\", \"sourceTextbook\": \"高中思想政治统编版高二必修4 哲学与文化\", \"course\": \"思想政治\", \"bookIndex\": 2}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "统编版", CJ_volume: "必修4 哲学与文化", CJ_sourceTextbook: "高中思想政治统编版高二必修4 哲学与文化", CJ_course: "思想政治", CJ_bookIndex: 2};

MERGE (n:Chapter {identifier: "urn:jy:politics:SB0310:OB06:Chapter:15"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Chapter:15", title: "第三单元 文化传承与文化创新", description: "", subject: "SB0310", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"统编版\", \"volume\": \"必修4 哲学与文化\", \"sourceTextbook\": \"高中思想政治统编版高二必修4 哲学与文化\", \"course\": \"思想政治\", \"bookIndex\": 3}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "统编版", CJ_volume: "必修4 哲学与文化", CJ_sourceTextbook: "高中思想政治统编版高二必修4 哲学与文化", CJ_course: "思想政治", CJ_bookIndex: 3};

MERGE (n:Chapter {identifier: "urn:jy:politics:SB0310:OB06:Chapter:16"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Chapter:16", title: "第一单元 各具特色的国家", description: "", subject: "SB0310", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修1 当代国际政治与经济\", \"sourceTextbook\": \"高中思想政治统编版选择性必修1 当代国际政治与经济\", \"course\": \"思想政治\", \"bookIndex\": 1}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修1 当代国际政治与经济", CJ_sourceTextbook: "高中思想政治统编版选择性必修1 当代国际政治与经济", CJ_course: "思想政治", CJ_bookIndex: 1};

MERGE (n:Chapter {identifier: "urn:jy:politics:SB0310:OB06:Chapter:17"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Chapter:17", title: "第二单元 世界多极化", description: "", subject: "SB0310", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修1 当代国际政治与经济\", \"sourceTextbook\": \"高中思想政治统编版选择性必修1 当代国际政治与经济\", \"course\": \"思想政治\", \"bookIndex\": 2}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修1 当代国际政治与经济", CJ_sourceTextbook: "高中思想政治统编版选择性必修1 当代国际政治与经济", CJ_course: "思想政治", CJ_bookIndex: 2};

MERGE (n:Chapter {identifier: "urn:jy:politics:SB0310:OB06:Chapter:18"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Chapter:18", title: "第三单元 经济全球化", description: "", subject: "SB0310", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修1 当代国际政治与经济\", \"sourceTextbook\": \"高中思想政治统编版选择性必修1 当代国际政治与经济\", \"course\": \"思想政治\", \"bookIndex\": 3}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修1 当代国际政治与经济", CJ_sourceTextbook: "高中思想政治统编版选择性必修1 当代国际政治与经济", CJ_course: "思想政治", CJ_bookIndex: 3};

MERGE (n:Chapter {identifier: "urn:jy:politics:SB0310:OB06:Chapter:19"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Chapter:19", title: "第四单元 国际组织", description: "", subject: "SB0310", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修1 当代国际政治与经济\", \"sourceTextbook\": \"高中思想政治统编版选择性必修1 当代国际政治与经济\", \"course\": \"思想政治\", \"bookIndex\": 4}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修1 当代国际政治与经济", CJ_sourceTextbook: "高中思想政治统编版选择性必修1 当代国际政治与经济", CJ_course: "思想政治", CJ_bookIndex: 4};

MERGE (n:Chapter {identifier: "urn:jy:politics:SB0310:OB06:Chapter:20"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Chapter:20", title: "第一单元 民事权利与义务", description: "", subject: "SB0310", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修2 法律与生活\", \"sourceTextbook\": \"高中思想政治统编版选择性必修2 法律与生活\", \"course\": \"思想政治\", \"bookIndex\": 1}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修2 法律与生活", CJ_sourceTextbook: "高中思想政治统编版选择性必修2 法律与生活", CJ_course: "思想政治", CJ_bookIndex: 1};

MERGE (n:Chapter {identifier: "urn:jy:politics:SB0310:OB06:Chapter:21"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Chapter:21", title: "第二单元 家庭与婚姻", description: "", subject: "SB0310", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修2 法律与生活\", \"sourceTextbook\": \"高中思想政治统编版选择性必修2 法律与生活\", \"course\": \"思想政治\", \"bookIndex\": 2}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修2 法律与生活", CJ_sourceTextbook: "高中思想政治统编版选择性必修2 法律与生活", CJ_course: "思想政治", CJ_bookIndex: 2};

MERGE (n:Chapter {identifier: "urn:jy:politics:SB0310:OB06:Chapter:22"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Chapter:22", title: "第三单元 就业与创业", description: "", subject: "SB0310", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修2 法律与生活\", \"sourceTextbook\": \"高中思想政治统编版选择性必修2 法律与生活\", \"course\": \"思想政治\", \"bookIndex\": 3}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修2 法律与生活", CJ_sourceTextbook: "高中思想政治统编版选择性必修2 法律与生活", CJ_course: "思想政治", CJ_bookIndex: 3};

MERGE (n:Chapter {identifier: "urn:jy:politics:SB0310:OB06:Chapter:23"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Chapter:23", title: "第四单元 社会争议解决", description: "", subject: "SB0310", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修2 法律与生活\", \"sourceTextbook\": \"高中思想政治统编版选择性必修2 法律与生活\", \"course\": \"思想政治\", \"bookIndex\": 4}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修2 法律与生活", CJ_sourceTextbook: "高中思想政治统编版选择性必修2 法律与生活", CJ_course: "思想政治", CJ_bookIndex: 4};

MERGE (n:Chapter {identifier: "urn:jy:politics:SB0310:OB06:Chapter:24"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Chapter:24", title: "第一单元 树立科学思维观念", description: "", subject: "SB0310", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修3 逻辑与思维\", \"sourceTextbook\": \"高中思想政治统编版选择性必修3 逻辑与思维\", \"course\": \"思想政治\", \"bookIndex\": 1}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修3 逻辑与思维", CJ_sourceTextbook: "高中思想政治统编版选择性必修3 逻辑与思维", CJ_course: "思想政治", CJ_bookIndex: 1};

MERGE (n:Chapter {identifier: "urn:jy:politics:SB0310:OB06:Chapter:25"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Chapter:25", title: "第二单元 遵循逻辑思维规则", description: "", subject: "SB0310", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修3 逻辑与思维\", \"sourceTextbook\": \"高中思想政治统编版选择性必修3 逻辑与思维\", \"course\": \"思想政治\", \"bookIndex\": 2}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修3 逻辑与思维", CJ_sourceTextbook: "高中思想政治统编版选择性必修3 逻辑与思维", CJ_course: "思想政治", CJ_bookIndex: 2};

MERGE (n:Chapter {identifier: "urn:jy:politics:SB0310:OB06:Chapter:26"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Chapter:26", title: "第三单元 运用辩证思维方法", description: "", subject: "SB0310", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修3 逻辑与思维\", \"sourceTextbook\": \"高中思想政治统编版选择性必修3 逻辑与思维\", \"course\": \"思想政治\", \"bookIndex\": 3}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修3 逻辑与思维", CJ_sourceTextbook: "高中思想政治统编版选择性必修3 逻辑与思维", CJ_course: "思想政治", CJ_bookIndex: 3};

MERGE (n:Chapter {identifier: "urn:jy:politics:SB0310:OB06:Chapter:27"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Chapter:27", title: "第四单元 提高创新思维能力", description: "", subject: "SB0310", type: "Chapter", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修3 逻辑与思维\", \"sourceTextbook\": \"高中思想政治统编版选择性必修3 逻辑与思维\", \"course\": \"思想政治\", \"bookIndex\": 4}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修3 逻辑与思维", CJ_sourceTextbook: "高中思想政治统编版选择性必修3 逻辑与思维", CJ_course: "思想政治", CJ_bookIndex: 4};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:1"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:1", title: "原始社会的解体和阶级社会的演进", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修1 中国特色社会主义\", \"chapter\": \"第一课 社会主义从空想到科学、从理论到实践的发展\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修1 中国特色社会主义", CJ_chapter: "第一课 社会主义从空想到科学、从理论到实践的发展"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:2"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:2", title: "科学社会主义的理论与实践", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修1 中国特色社会主义\", \"chapter\": \"第一课 社会主义从空想到科学、从理论到实践的发展\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修1 中国特色社会主义", CJ_chapter: "第一课 社会主义从空想到科学、从理论到实践的发展"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:3", title: "新民主主义革命的胜利", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修1 中国特色社会主义\", \"chapter\": \"第二课 只有社会主义才能救中国\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修1 中国特色社会主义", CJ_chapter: "第二课 只有社会主义才能救中国"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:4", title: "社会主义制度在中国的确立", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修1 中国特色社会主义\", \"chapter\": \"第二课 只有社会主义才能救中国\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修1 中国特色社会主义", CJ_chapter: "第二课 只有社会主义才能救中国"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:5"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:5", title: "伟大的改革开放", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修1 中国特色社会主义\", \"chapter\": \"第三课 只有中国特色社会主义才能发展中国\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修1 中国特色社会主义", CJ_chapter: "第三课 只有中国特色社会主义才能发展中国"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:6"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:6", title: "中国特色社会主义的创立、发展和完善", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修1 中国特色社会主义\", \"chapter\": \"第三课 只有中国特色社会主义才能发展中国\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修1 中国特色社会主义", CJ_chapter: "第三课 只有中国特色社会主义才能发展中国"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:7"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:7", title: "中国特色社会主义进入新时代", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修1 中国特色社会主义\", \"chapter\": \"第四课 只有坚持和发展中国特色社会主义才能实现中华民族伟大复兴\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修1 中国特色社会主义", CJ_chapter: "第四课 只有坚持和发展中国特色社会主义才能实现中华民族伟大复兴"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:8", title: "实现中华民族伟大复兴的中国梦", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修1 中国特色社会主义\", \"chapter\": \"第四课 只有坚持和发展中国特色社会主义才能实现中华民族伟大复兴\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修1 中国特色社会主义", CJ_chapter: "第四课 只有坚持和发展中国特色社会主义才能实现中华民族伟大复兴"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:9"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:9", title: "习近平新时代中国特色社会主义思想", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修1 中国特色社会主义\", \"chapter\": \"第四课 只有坚持和发展中国特色社会主义才能实现中华民族伟大复兴\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修1 中国特色社会主义", CJ_chapter: "第四课 只有坚持和发展中国特色社会主义才能实现中华民族伟大复兴"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:10"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:10", title: "第一课 我国的生产资料所有制", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修2 经济与社会\", \"chapter\": \"第一单元 生产资料所有制与经济体制\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修2 经济与社会", CJ_chapter: "第一单元 生产资料所有制与经济体制"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:11"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:11", title: "第二课 我国的社会主义市场经济体制", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修2 经济与社会\", \"chapter\": \"第一单元 生产资料所有制与经济体制\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修2 经济与社会", CJ_chapter: "第一单元 生产资料所有制与经济体制"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:12"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:12", title: "第三课 我国的经济发展", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修2 经济与社会\", \"chapter\": \"第二单元 经济发展与社会进步\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修2 经济与社会", CJ_chapter: "第二单元 经济发展与社会进步"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:13"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:13", title: "第四课 我国的个人收入分配与社会保障", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修2 经济与社会\", \"chapter\": \"第二单元 经济发展与社会进步\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修2 经济与社会", CJ_chapter: "第二单元 经济发展与社会进步"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:14"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:14", title: "综合探究 践行社会责任 促进社会进步", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修2 经济与社会\", \"chapter\": \"第二单元 经济发展与社会进步\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修2 经济与社会", CJ_chapter: "第二单元 经济发展与社会进步"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:15"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:15", title: "使市场在资源配置中起决定性作用", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修2 经济与社会\", \"chapter\": \"其他\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修2 经济与社会", CJ_chapter: "其他"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:16"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:16", title: "坚持新发展理念", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修2 经济与社会\", \"chapter\": \"其他\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修2 经济与社会", CJ_chapter: "其他"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:17"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:17", title: "建设现代化经济体系", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修2 经济与社会\", \"chapter\": \"其他\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修2 经济与社会", CJ_chapter: "其他"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:18"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:18", title: "综合探究 加快完善社会主义市场经济体制", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修2 经济与社会\", \"chapter\": \"其他\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修2 经济与社会", CJ_chapter: "其他"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:19"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:19", title: "第一课 历史和人民的选择", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修3 政治与法治\", \"chapter\": \"第一单元 中国共产党的领导\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修3 政治与法治", CJ_chapter: "第一单元 中国共产党的领导"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:20"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:20", title: "第二课 中国共产党的先进性", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修3 政治与法治\", \"chapter\": \"第一单元 中国共产党的领导\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修3 政治与法治", CJ_chapter: "第一单元 中国共产党的领导"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:21"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:21", title: "第三课 坚持和加强党的全面领导", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修3 政治与法治\", \"chapter\": \"第一单元 中国共产党的领导\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修3 政治与法治", CJ_chapter: "第一单元 中国共产党的领导"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:22"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:22", title: "综合探究 始终走在时代前列的中国共产党", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修3 政治与法治\", \"chapter\": \"第一单元 中国共产党的领导\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修3 政治与法治", CJ_chapter: "第一单元 中国共产党的领导"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:23"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:23", title: "第四课 人民民主专政的社会主义国家", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修3 政治与法治\", \"chapter\": \"第二单元 人民当家作主\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修3 政治与法治", CJ_chapter: "第二单元 人民当家作主"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:24"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:24", title: "第五课 我国的根本政治制度", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修3 政治与法治\", \"chapter\": \"第二单元 人民当家作主\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修3 政治与法治", CJ_chapter: "第二单元 人民当家作主"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:25"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:25", title: "第六课 我国的基本政治制度", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修3 政治与法治\", \"chapter\": \"第二单元 人民当家作主\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修3 政治与法治", CJ_chapter: "第二单元 人民当家作主"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:26"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:26", title: "综合探究 在党的领导下实现人民当家作主", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修3 政治与法治\", \"chapter\": \"第二单元 人民当家作主\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修3 政治与法治", CJ_chapter: "第二单元 人民当家作主"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:27"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:27", title: "第七课 治国理政的基本方式", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修3 政治与法治\", \"chapter\": \"第三单元 全面依法治国\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修3 政治与法治", CJ_chapter: "第三单元 全面依法治国"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:28"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:28", title: "第八课 法治中国建设", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修3 政治与法治\", \"chapter\": \"第三单元 全面依法治国\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修3 政治与法治", CJ_chapter: "第三单元 全面依法治国"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:29"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:29", title: "第九课 全面依法治国的基本要求", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修3 政治与法治\", \"chapter\": \"第三单元 全面依法治国\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修3 政治与法治", CJ_chapter: "第三单元 全面依法治国"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:30"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:30", title: "综合探究 坚持党的领导、人民当家做主、依法治国有机统一", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高一\", \"edition\": \"统编版\", \"volume\": \"必修3 政治与法治\", \"chapter\": \"第三单元 全面依法治国\"}", CJ_academicTerm: "高中", CJ_grade: "高一", CJ_edition: "统编版", CJ_volume: "必修3 政治与法治", CJ_chapter: "第三单元 全面依法治国"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:31"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:31", title: "第一课 时代精神的精华", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"统编版\", \"volume\": \"必修4 哲学与文化\", \"chapter\": \"第一单元 探索世界与把握规律\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "统编版", CJ_volume: "必修4 哲学与文化", CJ_chapter: "第一单元 探索世界与把握规律"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:32"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:32", title: "第二课 探究世界的本质", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"统编版\", \"volume\": \"必修4 哲学与文化\", \"chapter\": \"第一单元 探索世界与把握规律\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "统编版", CJ_volume: "必修4 哲学与文化", CJ_chapter: "第一单元 探索世界与把握规律"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:33"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:33", title: "第三课 把握世界的规律", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"统编版\", \"volume\": \"必修4 哲学与文化\", \"chapter\": \"第一单元 探索世界与把握规律\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "统编版", CJ_volume: "必修4 哲学与文化", CJ_chapter: "第一单元 探索世界与把握规律"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:34"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:34", title: "综合探究 坚持唯物辩证法 反对形而上学", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"统编版\", \"volume\": \"必修4 哲学与文化\", \"chapter\": \"第一单元 探索世界与把握规律\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "统编版", CJ_volume: "必修4 哲学与文化", CJ_chapter: "第一单元 探索世界与把握规律"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:35"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:35", title: "第四课 探索认识的奥秘", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"统编版\", \"volume\": \"必修4 哲学与文化\", \"chapter\": \"第二单元 认识社会与价值选择\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "统编版", CJ_volume: "必修4 哲学与文化", CJ_chapter: "第二单元 认识社会与价值选择"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:36"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:36", title: "第五课 寻觅社会的真谛", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"统编版\", \"volume\": \"必修4 哲学与文化\", \"chapter\": \"第二单元 认识社会与价值选择\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "统编版", CJ_volume: "必修4 哲学与文化", CJ_chapter: "第二单元 认识社会与价值选择"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:37"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:37", title: "第六课 实现人生的价值", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"统编版\", \"volume\": \"必修4 哲学与文化\", \"chapter\": \"第二单元 认识社会与价值选择\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "统编版", CJ_volume: "必修4 哲学与文化", CJ_chapter: "第二单元 认识社会与价值选择"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:38"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:38", title: "综合探究 坚持历史唯物主义 反对历史虚无主义", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"统编版\", \"volume\": \"必修4 哲学与文化\", \"chapter\": \"第二单元 认识社会与价值选择\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "统编版", CJ_volume: "必修4 哲学与文化", CJ_chapter: "第二单元 认识社会与价值选择"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:39"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:39", title: "第七课 继承发展中华优秀传统文化", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"统编版\", \"volume\": \"必修4 哲学与文化\", \"chapter\": \"第三单元 文化传承与文化创新\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "统编版", CJ_volume: "必修4 哲学与文化", CJ_chapter: "第三单元 文化传承与文化创新"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:40"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:40", title: "第八课 学习借鉴外来文化的有益成果", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"统编版\", \"volume\": \"必修4 哲学与文化\", \"chapter\": \"第三单元 文化传承与文化创新\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "统编版", CJ_volume: "必修4 哲学与文化", CJ_chapter: "第三单元 文化传承与文化创新"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:41"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:41", title: "第九课 发展中国特色社会主义文化", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"统编版\", \"volume\": \"必修4 哲学与文化\", \"chapter\": \"第三单元 文化传承与文化创新\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "统编版", CJ_volume: "必修4 哲学与文化", CJ_chapter: "第三单元 文化传承与文化创新"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:42"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:42", title: "综合探究 坚持以马克思主义为指导 发展中国特色社会主义文化", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"高二\", \"edition\": \"统编版\", \"volume\": \"必修4 哲学与文化\", \"chapter\": \"第三单元 文化传承与文化创新\"}", CJ_academicTerm: "高中", CJ_grade: "高二", CJ_edition: "统编版", CJ_volume: "必修4 哲学与文化", CJ_chapter: "第三单元 文化传承与文化创新"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:43"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:43", title: "第一课 国体与政体", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修1 当代国际政治与经济\", \"chapter\": \"第一单元 各具特色的国家\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修1 当代国际政治与经济", CJ_chapter: "第一单元 各具特色的国家"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:44"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:44", title: "第二课 国家的结构形式", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修1 当代国际政治与经济\", \"chapter\": \"第一单元 各具特色的国家\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修1 当代国际政治与经济", CJ_chapter: "第一单元 各具特色的国家"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:45"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:45", title: "综合探究 国家安全与核心利益", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修1 当代国际政治与经济\", \"chapter\": \"第一单元 各具特色的国家\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修1 当代国际政治与经济", CJ_chapter: "第一单元 各具特色的国家"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:46"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:46", title: "第三课 多极化趋势", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修1 当代国际政治与经济\", \"chapter\": \"第二单元 世界多极化\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修1 当代国际政治与经济", CJ_chapter: "第二单元 世界多极化"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:47"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:47", title: "第四课 和平与发展", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修1 当代国际政治与经济\", \"chapter\": \"第二单元 世界多极化\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修1 当代国际政治与经济", CJ_chapter: "第二单元 世界多极化"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:48"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:48", title: "第五课 中国的外交", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修1 当代国际政治与经济\", \"chapter\": \"第二单元 世界多极化\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修1 当代国际政治与经济", CJ_chapter: "第二单元 世界多极化"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:49"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:49", title: "综合探究 贡献中国智慧", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修1 当代国际政治与经济\", \"chapter\": \"第二单元 世界多极化\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修1 当代国际政治与经济", CJ_chapter: "第二单元 世界多极化"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:50"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:50", title: "第六课 走进经济全球化", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修1 当代国际政治与经济\", \"chapter\": \"第三单元 经济全球化\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修1 当代国际政治与经济", CJ_chapter: "第三单元 经济全球化"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:51"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:51", title: "第七课 经济全球化与中国", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修1 当代国际政治与经济\", \"chapter\": \"第三单元 经济全球化\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修1 当代国际政治与经济", CJ_chapter: "第三单元 经济全球化"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:52"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:52", title: "综合探究 发展更高层次开放型经济 完善全球治理", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修1 当代国际政治与经济\", \"chapter\": \"第三单元 经济全球化\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修1 当代国际政治与经济", CJ_chapter: "第三单元 经济全球化"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:53"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:53", title: "第八课 主要的国际组织", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修1 当代国际政治与经济\", \"chapter\": \"第四单元 国际组织\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修1 当代国际政治与经济", CJ_chapter: "第四单元 国际组织"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:54"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:54", title: "第九课 中国与国际组织", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修1 当代国际政治与经济\", \"chapter\": \"第四单元 国际组织\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修1 当代国际政治与经济", CJ_chapter: "第四单元 国际组织"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:55"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:55", title: "综合探究 国际视野及国际人才", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修1 当代国际政治与经济\", \"chapter\": \"第四单元 国际组织\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修1 当代国际政治与经济", CJ_chapter: "第四单元 国际组织"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:56"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:56", title: "第一课 在生活中学民法用民法", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修2 法律与生活\", \"chapter\": \"第一单元 民事权利与义务\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修2 法律与生活", CJ_chapter: "第一单元 民事权利与义务"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:57"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:57", title: "第二课 依法有效保护财产权", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修2 法律与生活\", \"chapter\": \"第一单元 民事权利与义务\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修2 法律与生活", CJ_chapter: "第一单元 民事权利与义务"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:58"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:58", title: "第三课 订约履约 诚信为本", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修2 法律与生活\", \"chapter\": \"第一单元 民事权利与义务\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修2 法律与生活", CJ_chapter: "第一单元 民事权利与义务"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:59"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:59", title: "第四课 侵权责任与权利界限", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修2 法律与生活\", \"chapter\": \"第一单元 民事权利与义务\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修2 法律与生活", CJ_chapter: "第一单元 民事权利与义务"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:60"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:60", title: "综合探究 财产制度助力经济社会发展", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修2 法律与生活\", \"chapter\": \"第一单元 民事权利与义务\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修2 法律与生活", CJ_chapter: "第一单元 民事权利与义务"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:61"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:61", title: "第五课 在和睦家庭中成长", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修2 法律与生活\", \"chapter\": \"第二单元 家庭与婚姻\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修2 法律与生活", CJ_chapter: "第二单元 家庭与婚姻"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:62"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:62", title: "第六课 珍惜婚姻关系", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修2 法律与生活\", \"chapter\": \"第二单元 家庭与婚姻\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修2 法律与生活", CJ_chapter: "第二单元 家庭与婚姻"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:63"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:63", title: "综合探究 家庭生活 法律守护", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修2 法律与生活\", \"chapter\": \"第二单元 家庭与婚姻\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修2 法律与生活", CJ_chapter: "第二单元 家庭与婚姻"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:64"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:64", title: "第七课 做个明白的劳动者", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修2 法律与生活\", \"chapter\": \"第三单元 就业与创业\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修2 法律与生活", CJ_chapter: "第三单元 就业与创业"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:65"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:65", title: "第八课 自主创业与诚信经营", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修2 法律与生活\", \"chapter\": \"第三单元 就业与创业\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修2 法律与生活", CJ_chapter: "第三单元 就业与创业"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:66"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:66", title: "综合探究 企业创办之旅", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修2 法律与生活\", \"chapter\": \"第三单元 就业与创业\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修2 法律与生活", CJ_chapter: "第三单元 就业与创业"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:67"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:67", title: "第九课 纠纷的多元解决方式", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修2 法律与生活\", \"chapter\": \"第四单元 社会争议解决\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修2 法律与生活", CJ_chapter: "第四单元 社会争议解决"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:68"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:68", title: "第十课 诉讼实现公平正义", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修2 法律与生活\", \"chapter\": \"第四单元 社会争议解决\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修2 法律与生活", CJ_chapter: "第四单元 社会争议解决"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:69"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:69", title: "综合探究 感受司法公正", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修2 法律与生活\", \"chapter\": \"第四单元 社会争议解决\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修2 法律与生活", CJ_chapter: "第四单元 社会争议解决"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:70"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:70", title: "第一课 走进思维世界", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修3 逻辑与思维\", \"chapter\": \"第一单元 树立科学思维观念\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修3 逻辑与思维", CJ_chapter: "第一单元 树立科学思维观念"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:71"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:71", title: "第二课 把握逻辑要义", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修3 逻辑与思维\", \"chapter\": \"第一单元 树立科学思维观念\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修3 逻辑与思维", CJ_chapter: "第一单元 树立科学思维观念"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:72"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:72", title: "第三课 领会科学思维", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修3 逻辑与思维\", \"chapter\": \"第一单元 树立科学思维观念\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修3 逻辑与思维", CJ_chapter: "第一单元 树立科学思维观念"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:73"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:73", title: "综合探究 学会科学思维 提升思维品质", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修3 逻辑与思维\", \"chapter\": \"第一单元 树立科学思维观念\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修3 逻辑与思维", CJ_chapter: "第一单元 树立科学思维观念"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:74"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:74", title: "第四课 准确把握概念", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修3 逻辑与思维\", \"chapter\": \"第二单元 遵循逻辑思维规则\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修3 逻辑与思维", CJ_chapter: "第二单元 遵循逻辑思维规则"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:75"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:75", title: "第五课 正确运用判断", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修3 逻辑与思维\", \"chapter\": \"第二单元 遵循逻辑思维规则\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修3 逻辑与思维", CJ_chapter: "第二单元 遵循逻辑思维规则"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:76"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:76", title: "第六课 掌握演绎推理方法", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修3 逻辑与思维\", \"chapter\": \"第二单元 遵循逻辑思维规则\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修3 逻辑与思维", CJ_chapter: "第二单元 遵循逻辑思维规则"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:77"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:77", title: "第七课 学会归纳与类比推理", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修3 逻辑与思维\", \"chapter\": \"第二单元 遵循逻辑思维规则\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修3 逻辑与思维", CJ_chapter: "第二单元 遵循逻辑思维规则"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:78"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:78", title: "综合探究 把握逻辑规则 纠正逻辑错误", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修3 逻辑与思维\", \"chapter\": \"第二单元 遵循逻辑思维规则\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修3 逻辑与思维", CJ_chapter: "第二单元 遵循逻辑思维规则"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:79"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:79", title: "第八课 把握辩证分合", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修3 逻辑与思维\", \"chapter\": \"第三单元 运用辩证思维方法\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修3 逻辑与思维", CJ_chapter: "第三单元 运用辩证思维方法"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:80"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:80", title: "第九课 理解质量互变", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修3 逻辑与思维\", \"chapter\": \"第三单元 运用辩证思维方法\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修3 逻辑与思维", CJ_chapter: "第三单元 运用辩证思维方法"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:81"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:81", title: "第十课 推动认识发展", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修3 逻辑与思维\", \"chapter\": \"第三单元 运用辩证思维方法\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修3 逻辑与思维", CJ_chapter: "第三单元 运用辩证思维方法"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:82"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:82", title: "综合探究 领悟辩证精髓 处理复杂问题", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修3 逻辑与思维\", \"chapter\": \"第三单元 运用辩证思维方法\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修3 逻辑与思维", CJ_chapter: "第三单元 运用辩证思维方法"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:83"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:83", title: "第十一课 创新思维要善于联想", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修3 逻辑与思维\", \"chapter\": \"第四单元 提高创新思维能力\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修3 逻辑与思维", CJ_chapter: "第四单元 提高创新思维能力"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:84"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:84", title: "第十二课 创新思维要多路探索", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修3 逻辑与思维\", \"chapter\": \"第四单元 提高创新思维能力\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修3 逻辑与思维", CJ_chapter: "第四单元 提高创新思维能力"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:85"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:85", title: "第十三课 创新思维要力求超前", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修3 逻辑与思维\", \"chapter\": \"第四单元 提高创新思维能力\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修3 逻辑与思维", CJ_chapter: "第四单元 提高创新思维能力"};

MERGE (n:Section {identifier: "urn:jy:politics:SB0310:OB06:Section:86"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:Section:86", title: "综合探究 结合社会实践 勇于开拓创新", description: "", subject: "SB0310", type: "Section", applicableLevel: "OB06", contentJson: "{\"academicTerm\": \"高中\", \"grade\": \"\", \"edition\": \"统编版\", \"volume\": \"选择性必修3 逻辑与思维\", \"chapter\": \"第四单元 提高创新思维能力\"}", CJ_academicTerm: "高中", CJ_grade: "", CJ_edition: "统编版", CJ_volume: "选择性必修3 逻辑与思维", CJ_chapter: "第四单元 提高创新思维能力"};

MERGE (n:CourseStructure {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1", title: "必修课程", description: "必修课程是培育全体学生学科核心素养的基本载体。", subject: "SB0310", type: "CourseStructure", applicableLevel: "OB06", contentJson: "{}"};

MERGE (n:CourseStructure {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2", title: "选择性必修课程", description: "选择性必修课程是对必修课程的延展，满足学生多样化的学习兴趣和升学需要。", subject: "SB0310", type: "CourseStructure", applicableLevel: "OB06", contentJson: "{}"};

MERGE (n:CourseStructure {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3", title: "选修课程", description: "选修课程更关注学生专业素养发展、高校自主招生及学生个性化发展的需要。", subject: "SB0310", type: "CourseStructure", applicableLevel: "OB06", contentJson: "{}"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:1"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:1", title: "1.1", description: "描述不同社会形态的本质特征；解释人类社会发展的一般过程，阐明社会发展的历史进程取决于社会基本矛盾的运动。", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:1\", \"themeTitle\": \"1.人类社会发展的进程与趋势\", \"teachingSuggestion\": \"◆以“怎样揭示人类社会发展的奥秘”为议题，探究社会发展的基本规律和主要阶段。可绘制展板，标识各种社会形态，比较它们的差异。可采用图说等方式，阐释生产力与生产关系、经济基础与上层建筑相互作用的原理，揭示生产力与生产关系的矛盾运动是社会发展的根本动力。可列举实例，反映不同社会形态的更替，证实生产关系是否适合生产力发展是衡量社会进步的标准。\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:1", CJ_themeTitle: "1.人类社会发展的进程与趋势", CJ_teachingSuggestion: "◆以“怎样揭示人类社会发展的奥秘”为议题，探究社会发展的基本规律和主要阶段。可绘制展板，标识各种社会形态，比较它们的差异。可采用图说等方式，阐释生产力与生产关系、经济基础与上层建筑相互作用的原理，揭示生产力与生产关系的矛盾运动是社会发展的根本动力。可列举实例，反映不同社会形态的更替，证实生产关系是否适合生产力发展是衡量社会进步的标准。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:2"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:2", title: "1.2", description: "分析资本主义社会的历史地位，概述社会主义从空想到科学、从理论到现实的历史轨迹，阐明人类社会发展的趋势。", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:1\", \"themeTitle\": \"1.人类社会发展的进程与趋势\", \"teachingSuggestion\": \"◆以“怎样看待资本主义社会的兴衰”为议题，探究资本主义社会基本矛盾的表现。可回顾资本主义生产关系的形成与发展，揭示社会化大生产与生产资料资本主义私有制之间的矛盾。可评析当代资本主义的发展困境，明确社会主义终将代替资本主义的历史趋势。\\n◆以“科学社会主义为什么科学”为议题，探究科学社会主义的基本原则。可讲述空想社会主义代表人物的故事，理解空想社会主义产生的历史条件及其局限性。可讲述马克思、恩格斯从事科学研究和革命活动的故事，解释科学社会主义诞生的时代背景，明确唯物史观和剩余价值学说是科学社会主义的理论基石。可朗读《共产党宣言》的名言名句，分享对科学社会主义理论的感悟，表达对共产主义社会的憧憬。可查阅十月革命的相关资料，讨论科学社会主义从理论到实践的发展。\\n◆以“不同国家、地区的历史各具特色是否有悖社会发展的一般过程”为议题，探究历史进程的统一性和多样性。可列举不同发展道路的表现，如社会制度的形式、社会变革的方式、发展程度的差距、发展阶段的跨越等，分析地理环境、文化传统、外部影响等因素对发展道路选择的影响。可列举事实，表明人类社会发展的一般过程是由各国、各地区、各民族历史的多样性反映出来的。\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:1", CJ_themeTitle: "1.人类社会发展的进程与趋势", CJ_teachingSuggestion: "◆以“怎样看待资本主义社会的兴衰”为议题，探究资本主义社会基本矛盾的表现。可回顾资本主义生产关系的形成与发展，揭示社会化大生产与生产资料资本主义私有制之间的矛盾。可评析当代资本主义的发展困境，明确社会主义终将代替资本主义的历史趋势。\n◆以“科学社会主义为什么科学”为议题，探究科学社会主义的基本原则。可讲述空想社会主义代表人物的故事，理解空想社会主义产生的历史条件及其局限性。可讲述马克思、恩格斯从事科学研究和革命活动的故事，解释科学社会主义诞生的时代背景，明确唯物史观和剩余价值学说是科学社会主义的理论基石。可朗读《共产党宣言》的名言名句，分享对科学社会主义理论的感悟，表达对共产主义社会的憧憬。可查阅十月革命的相关资料，讨论科学社会主义从理论到实践的发展。\n◆以“不同国家、地区的历史各具特色是否有悖社会发展的一般过程”为议题，探究历史进程的统一性和多样性。可列举不同发展道路的表现，如社会制度的形式、社会变革的方式、发展程度的差距、发展阶段的跨越等，分析地理环境、文化传统、外部影响等因素对发展道路选择的影响。可列举事实，表明人类社会发展的一般过程是由各国、各地区、各民族历史的多样性反映出来的。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:3"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:3", title: "2.1", description: "阐述新民主主义革命的性质和特点，理解新中国确立社会主义制度的历史必然性。", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:2\", \"themeTitle\": \"2. 中国特色社会主义的探索、开创与发展\", \"teachingSuggestion\": \"◆以“社会主义为什么是近代中国历史发展的必然”为议题，探究只有社会主义才能救中国的道理。可列举基本事实，反映近代中国探索复兴之路的悲怆历程，分析多种尝试终归失败的原因，证\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:2", CJ_themeTitle: "2. 中国特色社会主义的探索、开创与发展", CJ_teachingSuggestion: "◆以“社会主义为什么是近代中国历史发展的必然”为议题，探究只有社会主义才能救中国的道理。可列举基本事实，反映近代中国探索复兴之路的悲怆历程，分析多种尝试终归失败的原因，证"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:4"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:4", title: "2.2", description: "阐述社会主义革命和建设时期，党团结带领全国人民实现从新民主主义到社会主义的转变，进行社会主义革命，推进社会主义建设，为实现中华民族伟大复兴奠定根本政治前提和制度基础；理解只有社会主义才能救中国，只有社会主义才能发展中国。", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:2\", \"themeTitle\": \"2. 中国特色社会主义的探索、开创与发展\", \"teachingSuggestion\": \"实只有经过新民主主义革命建立人民政权，才能确立社会主义制度，实现中华民族有史以来最为广泛而深刻的社会变革，为实现中华民族伟大复兴奠定根本政治前提和制度基础。可基于我国社会主义政治制度、经济制度的特色，讨论社会主义初级阶段的基本国情。\\n◆以“中国特色社会主义为什么好”为议题，探究中国特色社会主义是实现中华民族伟大复兴的必由之路的道理。可讲述党的十一届三中全会实现历史性转折的意义，理解中国特色社会主义是党和人民在革命、建设时期付出各种代价，经过接力探索，在改革开放和社会主义现代化建设新时期开创的，从根本上改变了中国人民和中华民族的前途命运，不可逆转地开启了中华民族走向伟大复兴的征程。可结合载人航天、探月探火、深海深地探测、超级计算机、卫星导航、量子信息、核电技术、新能源技术、大飞机制造、生物医药等，讨论党的十八大以来党和国家事业取得的历史性成就、发生的历史性变革，评述中国特色社会主义进入新时代，中国人民的前进动力更加强大、奋斗精神更加昂扬、必胜信念更加坚定，焕发出更为强烈的历史自觉和主动精神，中国共产党和中国人民正信心百倍推进中华民族从站起来、富起来到强起来的伟大飞跃。结合中国特色社会主义创立、发展的过程，阐释必须坚持自信自立的意义。\\n◆以“为什么要一脉相承、与时俱进”为议题，探究如何站在新的历史起点上，夺取新时代中国特色社会主义伟大胜利，实现中华民族伟大复兴的中国梦。可结合马克思主义基本原理同中国具体实际相结合、同中华优秀传统文化相结合的历史经\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:2", CJ_themeTitle: "2. 中国特色社会主义的探索、开创与发展", CJ_teachingSuggestion: "实只有经过新民主主义革命建立人民政权，才能确立社会主义制度，实现中华民族有史以来最为广泛而深刻的社会变革，为实现中华民族伟大复兴奠定根本政治前提和制度基础。可基于我国社会主义政治制度、经济制度的特色，讨论社会主义初级阶段的基本国情。\n◆以“中国特色社会主义为什么好”为议题，探究中国特色社会主义是实现中华民族伟大复兴的必由之路的道理。可讲述党的十一届三中全会实现历史性转折的意义，理解中国特色社会主义是党和人民在革命、建设时期付出各种代价，经过接力探索，在改革开放和社会主义现代化建设新时期开创的，从根本上改变了中国人民和中华民族的前途命运，不可逆转地开启了中华民族走向伟大复兴的征程。可结合载人航天、探月探火、深海深地探测、超级计算机、卫星导航、量子信息、核电技术、新能源技术、大飞机制造、生物医药等，讨论党的十八大以来党和国家事业取得的历史性成就、发生的历史性变革，评述中国特色社会主义进入新时代，中国人民的前进动力更加强大、奋斗精神更加昂扬、必胜信念更加坚定，焕发出更为强烈的历史自觉和主动精神，中国共产党和中国人民正信心百倍推进中华民族从站起来、富起来到强起来的伟大飞跃。结合中国特色社会主义创立、发展的过程，阐释必须坚持自信自立的意义。\n◆以“为什么要一脉相承、与时俱进”为议题，探究如何站在新的历史起点上，夺取新时代中国特色社会主义伟大胜利，实现中华民族伟大复兴的中国梦。可结合马克思主义基本原理同中国具体实际相结合、同中华优秀传统文化相结合的历史经"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:5"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:5", title: "2.3", description: "阐述在改革开放和社会主义现代化建设新时期，党团结带领全国人民继续探索中国建设社会主义的正确道路，解放和发展社会生产力，使人民摆脱贫困、尽快富裕起来，为实现中华民族伟大复兴提供充满新的活力的体制保证和快速发展的物质条件。", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:2\", \"themeTitle\": \"2. 中国特色社会主义的探索、开创与发展\", \"teachingSuggestion\": \"实只有经过新民主主义革命建立人民政权，才能确立社会主义制度，实现中华民族有史以来最为广泛而深刻的社会变革，为实现中华民族伟大复兴奠定根本政治前提和制度基础。可基于我国社会主义政治制度、经济制度的特色，讨论社会主义初级阶段的基本国情。\\n◆以“中国特色社会主义为什么好”为议题，探究中国特色社会主义是实现中华民族伟大复兴的必由之路的道理。可讲述党的十一届三中全会实现历史性转折的意义，理解中国特色社会主义是党和人民在革命、建设时期付出各种代价，经过接力探索，在改革开放和社会主义现代化建设新时期开创的，从根本上改变了中国人民和中华民族的前途命运，不可逆转地开启了中华民族走向伟大复兴的征程。可结合载人航天、探月探火、深海深地探测、超级计算机、卫星导航、量子信息、核电技术、新能源技术、大飞机制造、生物医药等，讨论党的十八大以来党和国家事业取得的历史性成就、发生的历史性变革，评述中国特色社会主义进入新时代，中国人民的前进动力更加强大、奋斗精神更加昂扬、必胜信念更加坚定，焕发出更为强烈的历史自觉和主动精神，中国共产党和中国人民正信心百倍推进中华民族从站起来、富起来到强起来的伟大飞跃。结合中国特色社会主义创立、发展的过程，阐释必须坚持自信自立的意义。\\n◆以“为什么要一脉相承、与时俱进”为议题，探究如何站在新的历史起点上，夺取新时代中国特色社会主义伟大胜利，实现中华民族伟大复兴的中国梦。可结合马克思主义基本原理同中国具体实际相结合、同中华优秀传统文化相结合的历史经\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:2", CJ_themeTitle: "2. 中国特色社会主义的探索、开创与发展", CJ_teachingSuggestion: "实只有经过新民主主义革命建立人民政权，才能确立社会主义制度，实现中华民族有史以来最为广泛而深刻的社会变革，为实现中华民族伟大复兴奠定根本政治前提和制度基础。可基于我国社会主义政治制度、经济制度的特色，讨论社会主义初级阶段的基本国情。\n◆以“中国特色社会主义为什么好”为议题，探究中国特色社会主义是实现中华民族伟大复兴的必由之路的道理。可讲述党的十一届三中全会实现历史性转折的意义，理解中国特色社会主义是党和人民在革命、建设时期付出各种代价，经过接力探索，在改革开放和社会主义现代化建设新时期开创的，从根本上改变了中国人民和中华民族的前途命运，不可逆转地开启了中华民族走向伟大复兴的征程。可结合载人航天、探月探火、深海深地探测、超级计算机、卫星导航、量子信息、核电技术、新能源技术、大飞机制造、生物医药等，讨论党的十八大以来党和国家事业取得的历史性成就、发生的历史性变革，评述中国特色社会主义进入新时代，中国人民的前进动力更加强大、奋斗精神更加昂扬、必胜信念更加坚定，焕发出更为强烈的历史自觉和主动精神，中国共产党和中国人民正信心百倍推进中华民族从站起来、富起来到强起来的伟大飞跃。结合中国特色社会主义创立、发展的过程，阐释必须坚持自信自立的意义。\n◆以“为什么要一脉相承、与时俱进”为议题，探究如何站在新的历史起点上，夺取新时代中国特色社会主义伟大胜利，实现中华民族伟大复兴的中国梦。可结合马克思主义基本原理同中国具体实际相结合、同中华优秀传统文化相结合的历史经"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:6"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:6", title: "2.4", description: "阐述党的十八大以来，以习近平同志为主要代表的中国共产党人，坚持把马克思主义基本原理同中国具体实际相结合、同中华优秀传统文化相结合，创立了习近平新时代中国特色社会主义思", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:2\", \"themeTitle\": \"2. 中国特色社会主义的探索、开创与发展\", \"teachingSuggestion\": \"实只有经过新民主主义革命建立人民政权，才能确立社会主义制度，实现中华民族有史以来最为广泛而深刻的社会变革，为实现中华民族伟大复兴奠定根本政治前提和制度基础。可基于我国社会主义政治制度、经济制度的特色，讨论社会主义初级阶段的基本国情。\\n◆以“中国特色社会主义为什么好”为议题，探究中国特色社会主义是实现中华民族伟大复兴的必由之路的道理。可讲述党的十一届三中全会实现历史性转折的意义，理解中国特色社会主义是党和人民在革命、建设时期付出各种代价，经过接力探索，在改革开放和社会主义现代化建设新时期开创的，从根本上改变了中国人民和中华民族的前途命运，不可逆转地开启了中华民族走向伟大复兴的征程。可结合载人航天、探月探火、深海深地探测、超级计算机、卫星导航、量子信息、核电技术、新能源技术、大飞机制造、生物医药等，讨论党的十八大以来党和国家事业取得的历史性成就、发生的历史性变革，评述中国特色社会主义进入新时代，中国人民的前进动力更加强大、奋斗精神更加昂扬、必胜信念更加坚定，焕发出更为强烈的历史自觉和主动精神，中国共产党和中国人民正信心百倍推进中华民族从站起来、富起来到强起来的伟大飞跃。结合中国特色社会主义创立、发展的过程，阐释必须坚持自信自立的意义。\\n◆以“为什么要一脉相承、与时俱进”为议题，探究如何站在新的历史起点上，夺取新时代中国特色社会主义伟大胜利，实现中华民族伟大复兴的中国梦。可结合马克思主义基本原理同中国具体实际相结合、同中华优秀传统文化相结合的历史经\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:2", CJ_themeTitle: "2. 中国特色社会主义的探索、开创与发展", CJ_teachingSuggestion: "实只有经过新民主主义革命建立人民政权，才能确立社会主义制度，实现中华民族有史以来最为广泛而深刻的社会变革，为实现中华民族伟大复兴奠定根本政治前提和制度基础。可基于我国社会主义政治制度、经济制度的特色，讨论社会主义初级阶段的基本国情。\n◆以“中国特色社会主义为什么好”为议题，探究中国特色社会主义是实现中华民族伟大复兴的必由之路的道理。可讲述党的十一届三中全会实现历史性转折的意义，理解中国特色社会主义是党和人民在革命、建设时期付出各种代价，经过接力探索，在改革开放和社会主义现代化建设新时期开创的，从根本上改变了中国人民和中华民族的前途命运，不可逆转地开启了中华民族走向伟大复兴的征程。可结合载人航天、探月探火、深海深地探测、超级计算机、卫星导航、量子信息、核电技术、新能源技术、大飞机制造、生物医药等，讨论党的十八大以来党和国家事业取得的历史性成就、发生的历史性变革，评述中国特色社会主义进入新时代，中国人民的前进动力更加强大、奋斗精神更加昂扬、必胜信念更加坚定，焕发出更为强烈的历史自觉和主动精神，中国共产党和中国人民正信心百倍推进中华民族从站起来、富起来到强起来的伟大飞跃。结合中国特色社会主义创立、发展的过程，阐释必须坚持自信自立的意义。\n◆以“为什么要一脉相承、与时俱进”为议题，探究如何站在新的历史起点上，夺取新时代中国特色社会主义伟大胜利，实现中华民族伟大复兴的中国梦。可结合马克思主义基本原理同中国具体实际相结合、同中华优秀传统文化相结合的历史经"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:7"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:7", title: "1.1", description: "理解公有制为主体、多种所有制经济共同发展，按劳分配为主体、多种分配方式并存，社会主义市场经济体制等社会主义基本经济制度，既体现了社会主义制度优越性，又同我国社会主义初级阶段社会生产力发展水平相适应，是党和人民的伟大创造。", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:3\", \"themeTitle\": \"1.经济制度与经济体制\", \"teachingSuggestion\": \"◆以“为什么要坚持‘两个毫不动摇’”为议题，探究我国社会主义基本经济制度的优越性。可调研某项公共工程，印证坚持公有制主体地位、发挥国有经济主导作用的必要性和重要性。可通过查阅资料、专家讲座，了解混合所有制经济是如何实现公有制经济与非公有制经济相互促进、共同发展的；或就如何完善混合所有制经济改革进行调研，提出对策建议。可通过问卷调查或访谈，了解发展非公有制经济对经济发展和提高人民生活水平的意义。\\n    ◆以“为什么‘两只手’优于‘一只手’”为议题，探究市场在资源配置中起决定性作用、更好发挥政府作用的道理，明确社会主义市场经济体制的特点。可结合企业经营活动的特点，或调研某商品的生产和销售情况，引用典型案例，说明市场在资源配置中如何起决定性作用。可调研某市场，分析市场调节的局限性，就如何更好发挥政府作用提出建议。\\n    ◆以“怎样保持经济平稳运行”为议题，探究如何正确运用宏观调控手段，实现宏观调控目标。可搜集有关资料，了解国内生产总值的构成，讨论国内生产总值作为宏观经济统计指标存在的价值与不足，并利用国内生产总值的数据，解析宏观调控的意义。可邀请专家或银行、财政部门的管理者举办一场关于宏观经济调控的讲座；或搜集实例，探究如何随着宏观经济形势的变化合理运用调控手段。\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:3", CJ_themeTitle: "1.经济制度与经济体制", CJ_teachingSuggestion: "◆以“为什么要坚持‘两个毫不动摇’”为议题，探究我国社会主义基本经济制度的优越性。可调研某项公共工程，印证坚持公有制主体地位、发挥国有经济主导作用的必要性和重要性。可通过查阅资料、专家讲座，了解混合所有制经济是如何实现公有制经济与非公有制经济相互促进、共同发展的；或就如何完善混合所有制经济改革进行调研，提出对策建议。可通过问卷调查或访谈，了解发展非公有制经济对经济发展和提高人民生活水平的意义。\n    ◆以“为什么‘两只手’优于‘一只手’”为议题，探究市场在资源配置中起决定性作用、更好发挥政府作用的道理，明确社会主义市场经济体制的特点。可结合企业经营活动的特点，或调研某商品的生产和销售情况，引用典型案例，说明市场在资源配置中如何起决定性作用。可调研某市场，分析市场调节的局限性，就如何更好发挥政府作用提出建议。\n    ◆以“怎样保持经济平稳运行”为议题，探究如何正确运用宏观调控手段，实现宏观调控目标。可搜集有关资料，了解国内生产总值的构成，讨论国内生产总值作为宏观经济统计指标存在的价值与不足，并利用国内生产总值的数据，解析宏观调控的意义。可邀请专家或银行、财政部门的管理者举办一场关于宏观经济调控的讲座；或搜集实例，探究如何随着宏观经济形势的变化合理运用调控手段。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:8"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:8", title: "1.2", description: "了解各种所有制经济的地位与作用，阐释公有制经济与非公有制经济相互促进、共同发展，明确坚持毫不动摇巩固和发展公有制经济，毫不动摇鼓励、支持、引导非公有制经济发展。", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:3\", \"themeTitle\": \"1.经济制度与经济体制\", \"teachingSuggestion\": \"◆以“为什么要坚持‘两个毫不动摇’”为议题，探究我国社会主义基本经济制度的优越性。可调研某项公共工程，印证坚持公有制主体地位、发挥国有经济主导作用的必要性和重要性。可通过查阅资料、专家讲座，了解混合所有制经济是如何实现公有制经济与非公有制经济相互促进、共同发展的；或就如何完善混合所有制经济改革进行调研，提出对策建议。可通过问卷调查或访谈，了解发展非公有制经济对经济发展和提高人民生活水平的意义。\\n    ◆以“为什么‘两只手’优于‘一只手’”为议题，探究市场在资源配置中起决定性作用、更好发挥政府作用的道理，明确社会主义市场经济体制的特点。可结合企业经营活动的特点，或调研某商品的生产和销售情况，引用典型案例，说明市场在资源配置中如何起决定性作用。可调研某市场，分析市场调节的局限性，就如何更好发挥政府作用提出建议。\\n    ◆以“怎样保持经济平稳运行”为议题，探究如何正确运用宏观调控手段，实现宏观调控目标。可搜集有关资料，了解国内生产总值的构成，讨论国内生产总值作为宏观经济统计指标存在的价值与不足，并利用国内生产总值的数据，解析宏观调控的意义。可邀请专家或银行、财政部门的管理者举办一场关于宏观经济调控的讲座；或搜集实例，探究如何随着宏观经济形势的变化合理运用调控手段。\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:3", CJ_themeTitle: "1.经济制度与经济体制", CJ_teachingSuggestion: "◆以“为什么要坚持‘两个毫不动摇’”为议题，探究我国社会主义基本经济制度的优越性。可调研某项公共工程，印证坚持公有制主体地位、发挥国有经济主导作用的必要性和重要性。可通过查阅资料、专家讲座，了解混合所有制经济是如何实现公有制经济与非公有制经济相互促进、共同发展的；或就如何完善混合所有制经济改革进行调研，提出对策建议。可通过问卷调查或访谈，了解发展非公有制经济对经济发展和提高人民生活水平的意义。\n    ◆以“为什么‘两只手’优于‘一只手’”为议题，探究市场在资源配置中起决定性作用、更好发挥政府作用的道理，明确社会主义市场经济体制的特点。可结合企业经营活动的特点，或调研某商品的生产和销售情况，引用典型案例，说明市场在资源配置中如何起决定性作用。可调研某市场，分析市场调节的局限性，就如何更好发挥政府作用提出建议。\n    ◆以“怎样保持经济平稳运行”为议题，探究如何正确运用宏观调控手段，实现宏观调控目标。可搜集有关资料，了解国内生产总值的构成，讨论国内生产总值作为宏观经济统计指标存在的价值与不足，并利用国内生产总值的数据，解析宏观调控的意义。可邀请专家或银行、财政部门的管理者举办一场关于宏观经济调控的讲座；或搜集实例，探究如何随着宏观经济形势的变化合理运用调控手段。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:9"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:9", title: "1.3", description: "阐述构建高水平社会主义市场经济体制的意义，辨析经济运行中政府与市场的关系，解析宏观调控的目标与手段。", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:3\", \"themeTitle\": \"1.经济制度与经济体制\", \"teachingSuggestion\": \"◆以“为什么要坚持‘两个毫不动摇’”为议题，探究我国社会主义基本经济制度的优越性。可调研某项公共工程，印证坚持公有制主体地位、发挥国有经济主导作用的必要性和重要性。可通过查阅资料、专家讲座，了解混合所有制经济是如何实现公有制经济与非公有制经济相互促进、共同发展的；或就如何完善混合所有制经济改革进行调研，提出对策建议。可通过问卷调查或访谈，了解发展非公有制经济对经济发展和提高人民生活水平的意义。\\n    ◆以“为什么‘两只手’优于‘一只手’”为议题，探究市场在资源配置中起决定性作用、更好发挥政府作用的道理，明确社会主义市场经济体制的特点。可结合企业经营活动的特点，或调研某商品的生产和销售情况，引用典型案例，说明市场在资源配置中如何起决定性作用。可调研某市场，分析市场调节的局限性，就如何更好发挥政府作用提出建议。\\n    ◆以“怎样保持经济平稳运行”为议题，探究如何正确运用宏观调控手段，实现宏观调控目标。可搜集有关资料，了解国内生产总值的构成，讨论国内生产总值作为宏观经济统计指标存在的价值与不足，并利用国内生产总值的数据，解析宏观调控的意义。可邀请专家或银行、财政部门的管理者举办一场关于宏观经济调控的讲座；或搜集实例，探究如何随着宏观经济形势的变化合理运用调控手段。\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:3", CJ_themeTitle: "1.经济制度与经济体制", CJ_teachingSuggestion: "◆以“为什么要坚持‘两个毫不动摇’”为议题，探究我国社会主义基本经济制度的优越性。可调研某项公共工程，印证坚持公有制主体地位、发挥国有经济主导作用的必要性和重要性。可通过查阅资料、专家讲座，了解混合所有制经济是如何实现公有制经济与非公有制经济相互促进、共同发展的；或就如何完善混合所有制经济改革进行调研，提出对策建议。可通过问卷调查或访谈，了解发展非公有制经济对经济发展和提高人民生活水平的意义。\n    ◆以“为什么‘两只手’优于‘一只手’”为议题，探究市场在资源配置中起决定性作用、更好发挥政府作用的道理，明确社会主义市场经济体制的特点。可结合企业经营活动的特点，或调研某商品的生产和销售情况，引用典型案例，说明市场在资源配置中如何起决定性作用。可调研某市场，分析市场调节的局限性，就如何更好发挥政府作用提出建议。\n    ◆以“怎样保持经济平稳运行”为议题，探究如何正确运用宏观调控手段，实现宏观调控目标。可搜集有关资料，了解国内生产总值的构成，讨论国内生产总值作为宏观经济统计指标存在的价值与不足，并利用国内生产总值的数据，解析宏观调控的意义。可邀请专家或银行、财政部门的管理者举办一场关于宏观经济调控的讲座；或搜集实例，探究如何随着宏观经济形势的变化合理运用调控手段。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:10"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:10", title: "2.1", description: "阐明以人民为中心的发展思想，阐释创新、协调、绿色、开放、共享的新发展理念，阐述加快构建新发展格局、因地制宜发展新质生产力、着力推动高质量发展的意义和要求，解释经济发展方式的转变和供给侧结构性改革，评析经济发展中践行社会责任的实例。", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:4\", \"themeTitle\": \"2.经济发展与社会进步\", \"teachingSuggestion\": \"◆以“为什么发展必须以人民为中心”为议题，探究坚持新发展理念、转变经济发展方式的意义。可结合抗震救灾、防疫抗疫等，帮助学生了解党和国家始终把确保人民群众生命安全和身体健康放在第一位的基本事实，深刻理解我国为什么要坚持以人民为中心的发展思想。可进行专题调研，如组织参观当地高新技术企业、制作“科技创新推动经济发展”展板、为社区或学校制作数字化宣传资料。可结合当地实际，举办“经济社会发展与生态文明建设并举”征文比赛；或对当地转变经济发展方式的某方面情况进行调研，剖析存在的问题及其原因，提出对策建议。\\n◆以“如何推动高质量发展”为议题，探究深化供给侧结构性改革的必要性、意义和途径。可通过查阅资料或请教专家，了解当前我国经济所处的发展阶段及其基本特征，思考为什么要发展新质生产力。可搜集实体经济和虚拟经济的相关资料，探讨发展经济的着力点为什么要放在实体经济上。可针对建设制造强国、发展先进制造业、发展现代服务业、发展数字经济等现代化经济体系建设中的某个问题，组织调研或参观，撰写报告，提出对策建议。可就“如何成为知识型、技能型、创新型劳动者”组织学生开展讨论，并要求他们结合自己的实际情况，拟定学习计划。\\n◆以“如何从收入分配中品味获得感”为议题，探究实现共同富裕、完善个人收入分配的意义和途径。可查阅统计部门的资料，或通过走访政府\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:4", CJ_themeTitle: "2.经济发展与社会进步", CJ_teachingSuggestion: "◆以“为什么发展必须以人民为中心”为议题，探究坚持新发展理念、转变经济发展方式的意义。可结合抗震救灾、防疫抗疫等，帮助学生了解党和国家始终把确保人民群众生命安全和身体健康放在第一位的基本事实，深刻理解我国为什么要坚持以人民为中心的发展思想。可进行专题调研，如组织参观当地高新技术企业、制作“科技创新推动经济发展”展板、为社区或学校制作数字化宣传资料。可结合当地实际，举办“经济社会发展与生态文明建设并举”征文比赛；或对当地转变经济发展方式的某方面情况进行调研，剖析存在的问题及其原因，提出对策建议。\n◆以“如何推动高质量发展”为议题，探究深化供给侧结构性改革的必要性、意义和途径。可通过查阅资料或请教专家，了解当前我国经济所处的发展阶段及其基本特征，思考为什么要发展新质生产力。可搜集实体经济和虚拟经济的相关资料，探讨发展经济的着力点为什么要放在实体经济上。可针对建设制造强国、发展先进制造业、发展现代服务业、发展数字经济等现代化经济体系建设中的某个问题，组织调研或参观，撰写报告，提出对策建议。可就“如何成为知识型、技能型、创新型劳动者”组织学生开展讨论，并要求他们结合自己的实际情况，拟定学习计划。\n◆以“如何从收入分配中品味获得感”为议题，探究实现共同富裕、完善个人收入分配的意义和途径。可查阅统计部门的资料，或通过走访政府"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:11"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:11", title: "2.2", description: "了解我国个人收入的方式与合法途径，解释个人收入分配政策的完善；评析实现共同富裕、促进社会公平正义的收入分配与社会保障政策，列举完善社会保障体系的措施。", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:4\", \"themeTitle\": \"2.经济发展与社会进步\", \"teachingSuggestion\": \"◆以“为什么发展必须以人民为中心”为议题，探究坚持新发展理念、转变经济发展方式的意义。可结合抗震救灾、防疫抗疫等，帮助学生了解党和国家始终把确保人民群众生命安全和身体健康放在第一位的基本事实，深刻理解我国为什么要坚持以人民为中心的发展思想。可进行专题调研，如组织参观当地高新技术企业、制作“科技创新推动经济发展”展板、为社区或学校制作数字化宣传资料。可结合当地实际，举办“经济社会发展与生态文明建设并举”征文比赛；或对当地转变经济发展方式的某方面情况进行调研，剖析存在的问题及其原因，提出对策建议。\\n◆以“如何推动高质量发展”为议题，探究深化供给侧结构性改革的必要性、意义和途径。可通过查阅资料或请教专家，了解当前我国经济所处的发展阶段及其基本特征，思考为什么要发展新质生产力。可搜集实体经济和虚拟经济的相关资料，探讨发展经济的着力点为什么要放在实体经济上。可针对建设制造强国、发展先进制造业、发展现代服务业、发展数字经济等现代化经济体系建设中的某个问题，组织调研或参观，撰写报告，提出对策建议。可就“如何成为知识型、技能型、创新型劳动者”组织学生开展讨论，并要求他们结合自己的实际情况，拟定学习计划。\\n◆以“如何从收入分配中品味获得感”为议题，探究实现共同富裕、完善个人收入分配的意义和途径。可查阅统计部门的资料，或通过走访政府\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:4", CJ_themeTitle: "2.经济发展与社会进步", CJ_teachingSuggestion: "◆以“为什么发展必须以人民为中心”为议题，探究坚持新发展理念、转变经济发展方式的意义。可结合抗震救灾、防疫抗疫等，帮助学生了解党和国家始终把确保人民群众生命安全和身体健康放在第一位的基本事实，深刻理解我国为什么要坚持以人民为中心的发展思想。可进行专题调研，如组织参观当地高新技术企业、制作“科技创新推动经济发展”展板、为社区或学校制作数字化宣传资料。可结合当地实际，举办“经济社会发展与生态文明建设并举”征文比赛；或对当地转变经济发展方式的某方面情况进行调研，剖析存在的问题及其原因，提出对策建议。\n◆以“如何推动高质量发展”为议题，探究深化供给侧结构性改革的必要性、意义和途径。可通过查阅资料或请教专家，了解当前我国经济所处的发展阶段及其基本特征，思考为什么要发展新质生产力。可搜集实体经济和虚拟经济的相关资料，探讨发展经济的着力点为什么要放在实体经济上。可针对建设制造强国、发展先进制造业、发展现代服务业、发展数字经济等现代化经济体系建设中的某个问题，组织调研或参观，撰写报告，提出对策建议。可就“如何成为知识型、技能型、创新型劳动者”组织学生开展讨论，并要求他们结合自己的实际情况，拟定学习计划。\n◆以“如何从收入分配中品味获得感”为议题，探究实现共同富裕、完善个人收入分配的意义和途径。可查阅统计部门的资料，或通过走访政府"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:12"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:12", title: "2.3", description: "阐明劳动对社会发展和进步的意义，弘扬劳动精神，树立崇尚劳动、热爱劳动的观念。", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:4\", \"themeTitle\": \"2.经济发展与社会进步\", \"teachingSuggestion\": \"◆以“为什么发展必须以人民为中心”为议题，探究坚持新发展理念、转变经济发展方式的意义。可结合抗震救灾、防疫抗疫等，帮助学生了解党和国家始终把确保人民群众生命安全和身体健康放在第一位的基本事实，深刻理解我国为什么要坚持以人民为中心的发展思想。可进行专题调研，如组织参观当地高新技术企业、制作“科技创新推动经济发展”展板、为社区或学校制作数字化宣传资料。可结合当地实际，举办“经济社会发展与生态文明建设并举”征文比赛；或对当地转变经济发展方式的某方面情况进行调研，剖析存在的问题及其原因，提出对策建议。\\n◆以“如何推动高质量发展”为议题，探究深化供给侧结构性改革的必要性、意义和途径。可通过查阅资料或请教专家，了解当前我国经济所处的发展阶段及其基本特征，思考为什么要发展新质生产力。可搜集实体经济和虚拟经济的相关资料，探讨发展经济的着力点为什么要放在实体经济上。可针对建设制造强国、发展先进制造业、发展现代服务业、发展数字经济等现代化经济体系建设中的某个问题，组织调研或参观，撰写报告，提出对策建议。可就“如何成为知识型、技能型、创新型劳动者”组织学生开展讨论，并要求他们结合自己的实际情况，拟定学习计划。\\n◆以“如何从收入分配中品味获得感”为议题，探究实现共同富裕、完善个人收入分配的意义和途径。可查阅统计部门的资料，或通过走访政府\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:4", CJ_themeTitle: "2.经济发展与社会进步", CJ_teachingSuggestion: "◆以“为什么发展必须以人民为中心”为议题，探究坚持新发展理念、转变经济发展方式的意义。可结合抗震救灾、防疫抗疫等，帮助学生了解党和国家始终把确保人民群众生命安全和身体健康放在第一位的基本事实，深刻理解我国为什么要坚持以人民为中心的发展思想。可进行专题调研，如组织参观当地高新技术企业、制作“科技创新推动经济发展”展板、为社区或学校制作数字化宣传资料。可结合当地实际，举办“经济社会发展与生态文明建设并举”征文比赛；或对当地转变经济发展方式的某方面情况进行调研，剖析存在的问题及其原因，提出对策建议。\n◆以“如何推动高质量发展”为议题，探究深化供给侧结构性改革的必要性、意义和途径。可通过查阅资料或请教专家，了解当前我国经济所处的发展阶段及其基本特征，思考为什么要发展新质生产力。可搜集实体经济和虚拟经济的相关资料，探讨发展经济的着力点为什么要放在实体经济上。可针对建设制造强国、发展先进制造业、发展现代服务业、发展数字经济等现代化经济体系建设中的某个问题，组织调研或参观，撰写报告，提出对策建议。可就“如何成为知识型、技能型、创新型劳动者”组织学生开展讨论，并要求他们结合自己的实际情况，拟定学习计划。\n◆以“如何从收入分配中品味获得感”为议题，探究实现共同富裕、完善个人收入分配的意义和途径。可查阅统计部门的资料，或通过走访政府"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:13"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:13", title: "1.1", description: "引述宪法序言，说明没有中国共产党就没有新中国，阐明中国共产党成为执政党的必然性。", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:5\", \"themeTitle\": \"1.中国共产党的领导\", \"teachingSuggestion\": \"◆以“为什么中国共产党执政是历史和人民的选择”为议题，探究中国共产党一百多年的奋斗历程。充分发挥红色资源育人功能，如参观烈士陵园、革命遗址、革命历史展览馆等相关教育实践基地，理解中国共产党是中国工人阶级的先锋队，同时是中国人民和中华民族的先锋队。可开展“不忘初心、牢记使命”的访谈，请老党员宣讲党的初心使命，请老战士、老模范口述历史，理解以伟大建党精神为源头的中国共产党人的精神谱系，从中汲取一代又一代中国共产党人为共产主义理想而团结奋斗的精神力量。可针对各种质疑，澄清基本事实，阐明党的宗旨，论证中国共产党是中国特色社会主义事业的坚强领导核心。\\n◆以“怎样高扬永不褪色的旗帜”为议题，探究中国共产党永远保持先进性、纯洁性的重要意义。可查阅党史相关文献，讨论中国共产党的初心使命，就保持本色、坚持特色、与时俱进的要求，分享各自的心得。可查阅雷锋等时代楷模的相关资料，体会他们的精神境界。可发掘本地资源，采取多种访谈方式，引用身边党员的先进事迹，讨论保持党的先进性和纯洁性所面临的新问题新挑战。可搜集有关反腐倡廉的材料，结合新时代的伟大斗争、伟大工程、伟大事业、伟大梦想，揭示全面从严治党的意义。\\n◆以“如何理解依法执政”为议题，探究党领导人民制定宪法和法律、在宪法和法律范围内活动的方式。可评析有关事例，说明“党政军民学，东西南北中，党是领导一切的”。可走访所在地区的政府机关、企事业单位的党组织，了解党依法执政的表现。可就坚持和改善党的领导的有关举措，分享各自的心得。\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:5", CJ_themeTitle: "1.中国共产党的领导", CJ_teachingSuggestion: "◆以“为什么中国共产党执政是历史和人民的选择”为议题，探究中国共产党一百多年的奋斗历程。充分发挥红色资源育人功能，如参观烈士陵园、革命遗址、革命历史展览馆等相关教育实践基地，理解中国共产党是中国工人阶级的先锋队，同时是中国人民和中华民族的先锋队。可开展“不忘初心、牢记使命”的访谈，请老党员宣讲党的初心使命，请老战士、老模范口述历史，理解以伟大建党精神为源头的中国共产党人的精神谱系，从中汲取一代又一代中国共产党人为共产主义理想而团结奋斗的精神力量。可针对各种质疑，澄清基本事实，阐明党的宗旨，论证中国共产党是中国特色社会主义事业的坚强领导核心。\n◆以“怎样高扬永不褪色的旗帜”为议题，探究中国共产党永远保持先进性、纯洁性的重要意义。可查阅党史相关文献，讨论中国共产党的初心使命，就保持本色、坚持特色、与时俱进的要求，分享各自的心得。可查阅雷锋等时代楷模的相关资料，体会他们的精神境界。可发掘本地资源，采取多种访谈方式，引用身边党员的先进事迹，讨论保持党的先进性和纯洁性所面临的新问题新挑战。可搜集有关反腐倡廉的材料，结合新时代的伟大斗争、伟大工程、伟大事业、伟大梦想，揭示全面从严治党的意义。\n◆以“如何理解依法执政”为议题，探究党领导人民制定宪法和法律、在宪法和法律范围内活动的方式。可评析有关事例，说明“党政军民学，东西南北中，党是领导一切的”。可走访所在地区的政府机关、企事业单位的党组织，了解党依法执政的表现。可就坚持和改善党的领导的有关举措，分享各自的心得。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:14"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:14", title: "1.2", description: "引述党章规定，明确党的性质、宗旨和指导思想。", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:5\", \"themeTitle\": \"1.中国共产党的领导\", \"teachingSuggestion\": \"◆以“为什么中国共产党执政是历史和人民的选择”为议题，探究中国共产党一百多年的奋斗历程。充分发挥红色资源育人功能，如参观烈士陵园、革命遗址、革命历史展览馆等相关教育实践基地，理解中国共产党是中国工人阶级的先锋队，同时是中国人民和中华民族的先锋队。可开展“不忘初心、牢记使命”的访谈，请老党员宣讲党的初心使命，请老战士、老模范口述历史，理解以伟大建党精神为源头的中国共产党人的精神谱系，从中汲取一代又一代中国共产党人为共产主义理想而团结奋斗的精神力量。可针对各种质疑，澄清基本事实，阐明党的宗旨，论证中国共产党是中国特色社会主义事业的坚强领导核心。\\n◆以“怎样高扬永不褪色的旗帜”为议题，探究中国共产党永远保持先进性、纯洁性的重要意义。可查阅党史相关文献，讨论中国共产党的初心使命，就保持本色、坚持特色、与时俱进的要求，分享各自的心得。可查阅雷锋等时代楷模的相关资料，体会他们的精神境界。可发掘本地资源，采取多种访谈方式，引用身边党员的先进事迹，讨论保持党的先进性和纯洁性所面临的新问题新挑战。可搜集有关反腐倡廉的材料，结合新时代的伟大斗争、伟大工程、伟大事业、伟大梦想，揭示全面从严治党的意义。\\n◆以“如何理解依法执政”为议题，探究党领导人民制定宪法和法律、在宪法和法律范围内活动的方式。可评析有关事例，说明“党政军民学，东西南北中，党是领导一切的”。可走访所在地区的政府机关、企事业单位的党组织，了解党依法执政的表现。可就坚持和改善党的领导的有关举措，分享各自的心得。\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:5", CJ_themeTitle: "1.中国共产党的领导", CJ_teachingSuggestion: "◆以“为什么中国共产党执政是历史和人民的选择”为议题，探究中国共产党一百多年的奋斗历程。充分发挥红色资源育人功能，如参观烈士陵园、革命遗址、革命历史展览馆等相关教育实践基地，理解中国共产党是中国工人阶级的先锋队，同时是中国人民和中华民族的先锋队。可开展“不忘初心、牢记使命”的访谈，请老党员宣讲党的初心使命，请老战士、老模范口述历史，理解以伟大建党精神为源头的中国共产党人的精神谱系，从中汲取一代又一代中国共产党人为共产主义理想而团结奋斗的精神力量。可针对各种质疑，澄清基本事实，阐明党的宗旨，论证中国共产党是中国特色社会主义事业的坚强领导核心。\n◆以“怎样高扬永不褪色的旗帜”为议题，探究中国共产党永远保持先进性、纯洁性的重要意义。可查阅党史相关文献，讨论中国共产党的初心使命，就保持本色、坚持特色、与时俱进的要求，分享各自的心得。可查阅雷锋等时代楷模的相关资料，体会他们的精神境界。可发掘本地资源，采取多种访谈方式，引用身边党员的先进事迹，讨论保持党的先进性和纯洁性所面临的新问题新挑战。可搜集有关反腐倡廉的材料，结合新时代的伟大斗争、伟大工程、伟大事业、伟大梦想，揭示全面从严治党的意义。\n◆以“如何理解依法执政”为议题，探究党领导人民制定宪法和法律、在宪法和法律范围内活动的方式。可评析有关事例，说明“党政军民学，东西南北中，党是领导一切的”。可走访所在地区的政府机关、企事业单位的党组织，了解党依法执政的表现。可就坚持和改善党的领导的有关举措，分享各自的心得。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:15"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:15", title: "1.3", description: "理解坚持党的全面领导的意义，阐述坚持依法治国、依法执政、依法行政共同推进的道理。", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:5\", \"themeTitle\": \"1.中国共产党的领导\", \"teachingSuggestion\": \"◆以“为什么中国共产党执政是历史和人民的选择”为议题，探究中国共产党一百多年的奋斗历程。充分发挥红色资源育人功能，如参观烈士陵园、革命遗址、革命历史展览馆等相关教育实践基地，理解中国共产党是中国工人阶级的先锋队，同时是中国人民和中华民族的先锋队。可开展“不忘初心、牢记使命”的访谈，请老党员宣讲党的初心使命，请老战士、老模范口述历史，理解以伟大建党精神为源头的中国共产党人的精神谱系，从中汲取一代又一代中国共产党人为共产主义理想而团结奋斗的精神力量。可针对各种质疑，澄清基本事实，阐明党的宗旨，论证中国共产党是中国特色社会主义事业的坚强领导核心。\\n◆以“怎样高扬永不褪色的旗帜”为议题，探究中国共产党永远保持先进性、纯洁性的重要意义。可查阅党史相关文献，讨论中国共产党的初心使命，就保持本色、坚持特色、与时俱进的要求，分享各自的心得。可查阅雷锋等时代楷模的相关资料，体会他们的精神境界。可发掘本地资源，采取多种访谈方式，引用身边党员的先进事迹，讨论保持党的先进性和纯洁性所面临的新问题新挑战。可搜集有关反腐倡廉的材料，结合新时代的伟大斗争、伟大工程、伟大事业、伟大梦想，揭示全面从严治党的意义。\\n◆以“如何理解依法执政”为议题，探究党领导人民制定宪法和法律、在宪法和法律范围内活动的方式。可评析有关事例，说明“党政军民学，东西南北中，党是领导一切的”。可走访所在地区的政府机关、企事业单位的党组织，了解党依法执政的表现。可就坚持和改善党的领导的有关举措，分享各自的心得。\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:5", CJ_themeTitle: "1.中国共产党的领导", CJ_teachingSuggestion: "◆以“为什么中国共产党执政是历史和人民的选择”为议题，探究中国共产党一百多年的奋斗历程。充分发挥红色资源育人功能，如参观烈士陵园、革命遗址、革命历史展览馆等相关教育实践基地，理解中国共产党是中国工人阶级的先锋队，同时是中国人民和中华民族的先锋队。可开展“不忘初心、牢记使命”的访谈，请老党员宣讲党的初心使命，请老战士、老模范口述历史，理解以伟大建党精神为源头的中国共产党人的精神谱系，从中汲取一代又一代中国共产党人为共产主义理想而团结奋斗的精神力量。可针对各种质疑，澄清基本事实，阐明党的宗旨，论证中国共产党是中国特色社会主义事业的坚强领导核心。\n◆以“怎样高扬永不褪色的旗帜”为议题，探究中国共产党永远保持先进性、纯洁性的重要意义。可查阅党史相关文献，讨论中国共产党的初心使命，就保持本色、坚持特色、与时俱进的要求，分享各自的心得。可查阅雷锋等时代楷模的相关资料，体会他们的精神境界。可发掘本地资源，采取多种访谈方式，引用身边党员的先进事迹，讨论保持党的先进性和纯洁性所面临的新问题新挑战。可搜集有关反腐倡廉的材料，结合新时代的伟大斗争、伟大工程、伟大事业、伟大梦想，揭示全面从严治党的意义。\n◆以“如何理解依法执政”为议题，探究党领导人民制定宪法和法律、在宪法和法律范围内活动的方式。可评析有关事例，说明“党政军民学，东西南北中，党是领导一切的”。可走访所在地区的政府机关、企事业单位的党组织，了解党依法执政的表现。可就坚持和改善党的领导的有关举措，分享各自的心得。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:16"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:16", title: "2.1", description: "列举宪法有关人\n民主体地位的规定，说明\n我国是人民民主专政的社\n会主义国家，人民代表大\n会制度是我国的根本政治\n制度。", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:6\", \"themeTitle\": \"2.人民当家作主\", \"teachingSuggestion\": \"◆以“怎样看人大代表的作用”为议题，探\\n究人民代表大会与“一府一委两院”的职权及其关\\n系，感悟全过程人民民主是社会主义民主政治的本质属性，是最广泛、最真实、最管用的民主。可走访本地人大代表，知道人大代表的产生过程、活动方式和主要职责，了解其履职的经验。可针对热点问题，模拟人大代表撰写议案；或举办“假如我是\\n人大代表”的演讲会。\\n◆以“协商民主有什么优势”为议题，探究\\n我国政党制度的特色以及协商民主的意义和价值，\\n认识协商民主是实践全过程人民民主的重要形式。\\n可走访本地政协委员，了解他们对本地社会热点问\\n题的看法、对有争议公共问题的立场以及应对措\\n施，并加以评析，理解“有事好商量，众人的事\\n情由众人商量，是人民民主的真谛”。可参加有关方面组织的对话协商活动，对有关公共政策的制定，或有关争议问题的解决发表见解，如废旧电\\n池回收利用、垃圾分类处理、食品安全、道路安\\n全、环境治理问题等。\\n◆以“如何铸牢中华民族共同体意识”为议\\n题，探究不断巩固和发展平等团结互助和谐的社会主义民族关系的意义，认同我国是统一的多民族国家。可查阅资料，了解中华民族五千多年的文明史，理解我国各民族共同开拓了祖国的辽阔疆域，共同缔造了统一的多民族国家，共同书写了辉煌的中国历史，共同创造了灿烂的中华文化，共同培育了伟大的民族精神。可参观民族区域自治地方的建设成就展览；或搜集有关材料，制作反映民族平等、民族团结和各民族共同繁荣的展板。可阅读民族\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:6", CJ_themeTitle: "2.人民当家作主", CJ_teachingSuggestion: "◆以“怎样看人大代表的作用”为议题，探\n究人民代表大会与“一府一委两院”的职权及其关\n系，感悟全过程人民民主是社会主义民主政治的本质属性，是最广泛、最真实、最管用的民主。可走访本地人大代表，知道人大代表的产生过程、活动方式和主要职责，了解其履职的经验。可针对热点问题，模拟人大代表撰写议案；或举办“假如我是\n人大代表”的演讲会。\n◆以“协商民主有什么优势”为议题，探究\n我国政党制度的特色以及协商民主的意义和价值，\n认识协商民主是实践全过程人民民主的重要形式。\n可走访本地政协委员，了解他们对本地社会热点问\n题的看法、对有争议公共问题的立场以及应对措\n施，并加以评析，理解“有事好商量，众人的事\n情由众人商量，是人民民主的真谛”。可参加有关方面组织的对话协商活动，对有关公共政策的制定，或有关争议问题的解决发表见解，如废旧电\n池回收利用、垃圾分类处理、食品安全、道路安\n全、环境治理问题等。\n◆以“如何铸牢中华民族共同体意识”为议\n题，探究不断巩固和发展平等团结互助和谐的社会主义民族关系的意义，认同我国是统一的多民族国家。可查阅资料，了解中华民族五千多年的文明史，理解我国各民族共同开拓了祖国的辽阔疆域，共同缔造了统一的多民族国家，共同书写了辉煌的中国历史，共同创造了灿烂的中华文化，共同培育了伟大的民族精神。可参观民族区域自治地方的建设成就展览；或搜集有关材料，制作反映民族平等、民族团结和各民族共同繁荣的展板。可阅读民族"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:17"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:17", title: "2.2", description: "阐明中国共产党\n领导的多党合作和政治协\n商制度是具有中国特色的\n基本政治制度。", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:6\", \"themeTitle\": \"2.人民当家作主\", \"teachingSuggestion\": \"◆以“怎样看人大代表的作用”为议题，探\\n究人民代表大会与“一府一委两院”的职权及其关\\n系，感悟全过程人民民主是社会主义民主政治的本质属性，是最广泛、最真实、最管用的民主。可走访本地人大代表，知道人大代表的产生过程、活动方式和主要职责，了解其履职的经验。可针对热点问题，模拟人大代表撰写议案；或举办“假如我是\\n人大代表”的演讲会。\\n◆以“协商民主有什么优势”为议题，探究\\n我国政党制度的特色以及协商民主的意义和价值，\\n认识协商民主是实践全过程人民民主的重要形式。\\n可走访本地政协委员，了解他们对本地社会热点问\\n题的看法、对有争议公共问题的立场以及应对措\\n施，并加以评析，理解“有事好商量，众人的事\\n情由众人商量，是人民民主的真谛”。可参加有关方面组织的对话协商活动，对有关公共政策的制定，或有关争议问题的解决发表见解，如废旧电\\n池回收利用、垃圾分类处理、食品安全、道路安\\n全、环境治理问题等。\\n◆以“如何铸牢中华民族共同体意识”为议\\n题，探究不断巩固和发展平等团结互助和谐的社会主义民族关系的意义，认同我国是统一的多民族国家。可查阅资料，了解中华民族五千多年的文明史，理解我国各民族共同开拓了祖国的辽阔疆域，共同缔造了统一的多民族国家，共同书写了辉煌的中国历史，共同创造了灿烂的中华文化，共同培育了伟大的民族精神。可参观民族区域自治地方的建设成就展览；或搜集有关材料，制作反映民族平等、民族团结和各民族共同繁荣的展板。可阅读民族\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:6", CJ_themeTitle: "2.人民当家作主", CJ_teachingSuggestion: "◆以“怎样看人大代表的作用”为议题，探\n究人民代表大会与“一府一委两院”的职权及其关\n系，感悟全过程人民民主是社会主义民主政治的本质属性，是最广泛、最真实、最管用的民主。可走访本地人大代表，知道人大代表的产生过程、活动方式和主要职责，了解其履职的经验。可针对热点问题，模拟人大代表撰写议案；或举办“假如我是\n人大代表”的演讲会。\n◆以“协商民主有什么优势”为议题，探究\n我国政党制度的特色以及协商民主的意义和价值，\n认识协商民主是实践全过程人民民主的重要形式。\n可走访本地政协委员，了解他们对本地社会热点问\n题的看法、对有争议公共问题的立场以及应对措\n施，并加以评析，理解“有事好商量，众人的事\n情由众人商量，是人民民主的真谛”。可参加有关方面组织的对话协商活动，对有关公共政策的制定，或有关争议问题的解决发表见解，如废旧电\n池回收利用、垃圾分类处理、食品安全、道路安\n全、环境治理问题等。\n◆以“如何铸牢中华民族共同体意识”为议\n题，探究不断巩固和发展平等团结互助和谐的社会主义民族关系的意义，认同我国是统一的多民族国家。可查阅资料，了解中华民族五千多年的文明史，理解我国各民族共同开拓了祖国的辽阔疆域，共同缔造了统一的多民族国家，共同书写了辉煌的中国历史，共同创造了灿烂的中华文化，共同培育了伟大的民族精神。可参观民族区域自治地方的建设成就展览；或搜集有关材料，制作反映民族平等、民族团结和各民族共同繁荣的展板。可阅读民族"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:18"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:18", title: "2.3", description: "阐述民族区域自\n治制度是符合我国国情\n的基本政治制度，铸牢中\n华民族共同体意识；解\n释公民享有宗教信仰自由\n的含义。", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:6\", \"themeTitle\": \"2.人民当家作主\", \"teachingSuggestion\": \"◆以“怎样看人大代表的作用”为议题，探\\n究人民代表大会与“一府一委两院”的职权及其关\\n系，感悟全过程人民民主是社会主义民主政治的本质属性，是最广泛、最真实、最管用的民主。可走访本地人大代表，知道人大代表的产生过程、活动方式和主要职责，了解其履职的经验。可针对热点问题，模拟人大代表撰写议案；或举办“假如我是\\n人大代表”的演讲会。\\n◆以“协商民主有什么优势”为议题，探究\\n我国政党制度的特色以及协商民主的意义和价值，\\n认识协商民主是实践全过程人民民主的重要形式。\\n可走访本地政协委员，了解他们对本地社会热点问\\n题的看法、对有争议公共问题的立场以及应对措\\n施，并加以评析，理解“有事好商量，众人的事\\n情由众人商量，是人民民主的真谛”。可参加有关方面组织的对话协商活动，对有关公共政策的制定，或有关争议问题的解决发表见解，如废旧电\\n池回收利用、垃圾分类处理、食品安全、道路安\\n全、环境治理问题等。\\n◆以“如何铸牢中华民族共同体意识”为议\\n题，探究不断巩固和发展平等团结互助和谐的社会主义民族关系的意义，认同我国是统一的多民族国家。可查阅资料，了解中华民族五千多年的文明史，理解我国各民族共同开拓了祖国的辽阔疆域，共同缔造了统一的多民族国家，共同书写了辉煌的中国历史，共同创造了灿烂的中华文化，共同培育了伟大的民族精神。可参观民族区域自治地方的建设成就展览；或搜集有关材料，制作反映民族平等、民族团结和各民族共同繁荣的展板。可阅读民族\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:6", CJ_themeTitle: "2.人民当家作主", CJ_teachingSuggestion: "◆以“怎样看人大代表的作用”为议题，探\n究人民代表大会与“一府一委两院”的职权及其关\n系，感悟全过程人民民主是社会主义民主政治的本质属性，是最广泛、最真实、最管用的民主。可走访本地人大代表，知道人大代表的产生过程、活动方式和主要职责，了解其履职的经验。可针对热点问题，模拟人大代表撰写议案；或举办“假如我是\n人大代表”的演讲会。\n◆以“协商民主有什么优势”为议题，探究\n我国政党制度的特色以及协商民主的意义和价值，\n认识协商民主是实践全过程人民民主的重要形式。\n可走访本地政协委员，了解他们对本地社会热点问\n题的看法、对有争议公共问题的立场以及应对措\n施，并加以评析，理解“有事好商量，众人的事\n情由众人商量，是人民民主的真谛”。可参加有关方面组织的对话协商活动，对有关公共政策的制定，或有关争议问题的解决发表见解，如废旧电\n池回收利用、垃圾分类处理、食品安全、道路安\n全、环境治理问题等。\n◆以“如何铸牢中华民族共同体意识”为议\n题，探究不断巩固和发展平等团结互助和谐的社会主义民族关系的意义，认同我国是统一的多民族国家。可查阅资料，了解中华民族五千多年的文明史，理解我国各民族共同开拓了祖国的辽阔疆域，共同缔造了统一的多民族国家，共同书写了辉煌的中国历史，共同创造了灿烂的中华文化，共同培育了伟大的民族精神。可参观民族区域自治地方的建设成就展览；或搜集有关材料，制作反映民族平等、民族团结和各民族共同繁荣的展板。可阅读民族"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:19"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:19", title: "2.4", description: "领悟基层群众自治制度是我国人民依法直接行使民主权利的基本政治制度。", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:6\", \"themeTitle\": \"2.人民当家作主\", \"teachingSuggestion\": \"文学作品，组织观赏民族歌舞，领略各民族文化的魅力。可查阅相关资料，了解各民族杰出人物的故事。\\n◆以“我们怎样当家作主”为议题，探究人民直接行使民主权利的内容和方式。可搜集校规校纪、村规民约，讨论其与国家法律的关系。可从各种媒体的报道中，从对所在社区的考察中，搜集人民依法直接参加民主选举、民主协商、民主决策、民主管理、民主监督的积极表现，讨论有序参与的意义、无序参与的后果。\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:6", CJ_themeTitle: "2.人民当家作主", CJ_teachingSuggestion: "文学作品，组织观赏民族歌舞，领略各民族文化的魅力。可查阅相关资料，了解各民族杰出人物的故事。\n◆以“我们怎样当家作主”为议题，探究人民直接行使民主权利的内容和方式。可搜集校规校纪、村规民约，讨论其与国家法律的关系。可从各种媒体的报道中，从对所在社区的考察中，搜集人民依法直接参加民主选举、民主协商、民主决策、民主管理、民主监督的积极表现，讨论有序参与的意义、无序参与的后果。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:20"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:20", title: "3.1", description: "简述我国法治建设的成就；明确全面推进依法治国的总目标是建设中国特色社会主义法治体系，建设社会主义法治国家。", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:7\", \"themeTitle\": \"3.依法治国\", \"teachingSuggestion\": \"◆以“公民参与立法有什么意义、有哪些途径”为议题，探究推进科学立法、民主立法、依法立法，以良法促进发展、保障善治的意义，理解公民依法行使民主权利的制度。可了解全国人大常委会法工委及地方人大在各地设立的基层立法联系点，探究其发挥的立法听取民意直通车作用。可观看有关人大会议的录像，或旁听地方立法听证会，以“我的立法建议”为题组织讨论，解析公民有序参与立法的方式和途径。可参与社区有关规则的制定，亲身体验基层群众依法表达诉求、参与社区治理的过程。\\n◆以“如何增强政府的公信力和执行力”为议题，探究建设职能科学、权责法定、执法严明、公开公正、智能高效、廉洁诚信、人民满意的法治政府的意义。可参观行政服务机构，了解政府部门的办事程序，考察政府履行职能的表现。可参加价格听证会等活动，感受政府决策的过程。可识别政府执法标识，模拟政府执法活动，体验严格规范公正文明执法。可以“假如我是执法者”或“我为政府决策提建议”为话题，举行主题活动。\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:7", CJ_themeTitle: "3.依法治国", CJ_teachingSuggestion: "◆以“公民参与立法有什么意义、有哪些途径”为议题，探究推进科学立法、民主立法、依法立法，以良法促进发展、保障善治的意义，理解公民依法行使民主权利的制度。可了解全国人大常委会法工委及地方人大在各地设立的基层立法联系点，探究其发挥的立法听取民意直通车作用。可观看有关人大会议的录像，或旁听地方立法听证会，以“我的立法建议”为题组织讨论，解析公民有序参与立法的方式和途径。可参与社区有关规则的制定，亲身体验基层群众依法表达诉求、参与社区治理的过程。\n◆以“如何增强政府的公信力和执行力”为议题，探究建设职能科学、权责法定、执法严明、公开公正、智能高效、廉洁诚信、人民满意的法治政府的意义。可参观行政服务机构，了解政府部门的办事程序，考察政府履行职能的表现。可参加价格听证会等活动，感受政府决策的过程。可识别政府执法标识，模拟政府执法活动，体验严格规范公正文明执法。可以“假如我是执法者”或“我为政府决策提建议”为话题，举行主题活动。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:21"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:21", title: "3.2", description: "搜集材料，阐述科学立法、严格执法、公正司法、全民守法的基本要求。", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:7\", \"themeTitle\": \"3.依法治国\", \"teachingSuggestion\": \"◆以“公民参与立法有什么意义、有哪些途径”为议题，探究推进科学立法、民主立法、依法立法，以良法促进发展、保障善治的意义，理解公民依法行使民主权利的制度。可了解全国人大常委会法工委及地方人大在各地设立的基层立法联系点，探究其发挥的立法听取民意直通车作用。可观看有关人大会议的录像，或旁听地方立法听证会，以“我的立法建议”为题组织讨论，解析公民有序参与立法的方式和途径。可参与社区有关规则的制定，亲身体验基层群众依法表达诉求、参与社区治理的过程。\\n◆以“如何增强政府的公信力和执行力”为议题，探究建设职能科学、权责法定、执法严明、公开公正、智能高效、廉洁诚信、人民满意的法治政府的意义。可参观行政服务机构，了解政府部门的办事程序，考察政府履行职能的表现。可参加价格听证会等活动，感受政府决策的过程。可识别政府执法标识，模拟政府执法活动，体验严格规范公正文明执法。可以“假如我是执法者”或“我为政府决策提建议”为话题，举行主题活动。\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:7", CJ_themeTitle: "3.依法治国", CJ_teachingSuggestion: "◆以“公民参与立法有什么意义、有哪些途径”为议题，探究推进科学立法、民主立法、依法立法，以良法促进发展、保障善治的意义，理解公民依法行使民主权利的制度。可了解全国人大常委会法工委及地方人大在各地设立的基层立法联系点，探究其发挥的立法听取民意直通车作用。可观看有关人大会议的录像，或旁听地方立法听证会，以“我的立法建议”为题组织讨论，解析公民有序参与立法的方式和途径。可参与社区有关规则的制定，亲身体验基层群众依法表达诉求、参与社区治理的过程。\n◆以“如何增强政府的公信力和执行力”为议题，探究建设职能科学、权责法定、执法严明、公开公正、智能高效、廉洁诚信、人民满意的法治政府的意义。可参观行政服务机构，了解政府部门的办事程序，考察政府履行职能的表现。可参加价格听证会等活动，感受政府决策的过程。可识别政府执法标识，模拟政府执法活动，体验严格规范公正文明执法。可以“假如我是执法者”或“我为政府决策提建议”为话题，举行主题活动。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:22"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:22", title: "3.3", description: "列举事例，阐明建设法治国家、法治政府、法治社会的意义。", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:7\", \"themeTitle\": \"3.依法治国\", \"teachingSuggestion\": \"◆以“为什么说公正司法是维护社会公平正义的最后一道防线”为议题，探究公正司法的意义和价值，以及体现公正司法的制度和措施。可组织考察活动，归纳解决社会争议的多种途径。可参观调解中心、仲裁委员会、人民法院或人民检察院，认识其功能和作用。可通过具体案件的审理，感受公平正义。\\n◆以“法治如何让生活更美好”为议题，探究法治与生活、法治与道德的关系，认识建设法治社会的重要意义。可搜集相关资料，归纳公民的知情权、参与权、表达权、监督权的法治保障，展望人们在法治国家享受经济生活、政治生活、文化生活、社会生活和优美环境的美好前景。可调研当前人们关注社会问题的实例并发表见解，如环保问题。可开展普法志愿服务活动，例如，制作民法典普法展板，给家人、同学或朋友讲法治课；或组织以“法治在身边”为主题的演讲会。\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:7", CJ_themeTitle: "3.依法治国", CJ_teachingSuggestion: "◆以“为什么说公正司法是维护社会公平正义的最后一道防线”为议题，探究公正司法的意义和价值，以及体现公正司法的制度和措施。可组织考察活动，归纳解决社会争议的多种途径。可参观调解中心、仲裁委员会、人民法院或人民检察院，认识其功能和作用。可通过具体案件的审理，感受公平正义。\n◆以“法治如何让生活更美好”为议题，探究法治与生活、法治与道德的关系，认识建设法治社会的重要意义。可搜集相关资料，归纳公民的知情权、参与权、表达权、监督权的法治保障，展望人们在法治国家享受经济生活、政治生活、文化生活、社会生活和优美环境的美好前景。可调研当前人们关注社会问题的实例并发表见解，如环保问题。可开展普法志愿服务活动，例如，制作民法典普法展板，给家人、同学或朋友讲法治课；或组织以“法治在身边”为主题的演讲会。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:23"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:23", title: "1.1", description: "比较哲学思维与日常思维的异同；理解任何真正的哲学都是自己时代的精神上的精华，阐明马克思主义哲学是科学的世界观和方法论。", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:8\", \"themeTitle\": \"1.探索世界与追求真理\", \"teachingSuggestion\": \"◆以“哲学有什么用”为议题，探究哲学把握世界的独特方式。可寻找生活和学习中充满智慧、蕴含哲理的故事，感悟哲学的基本问题与生活息息相关。可分享各自搜集的资料，归纳哲学思维和日常思维的特点，领会哲学思维的重要意义。\\n    ◆以“人的正确思想是从哪里来的”为议题，探究“实践—认识—再实践—再认识……”的过程。可结合生活中的具体事例，讨论如何在实践中获得和深化认识、追求真理。可着眼于正确结论的形成，讨论“第一手材料”与“第二手材料”的不同作用。\\n    ◆以“为什么要具体问题具体分析”为议题，探究实事求是的观点。可创设辨析性情境，剖析孤立地、静止地、片面地看问题的错误；分享从实际出发，运用“两点论”“重点论”等认识和解决具体问题的成功经验。\\n    ◆以“为什么要一切以时间、地点和条件为转移”为议题，探究解放思想、与时俱进的意义。可结合走进新时代的中国所取得的历史性成就、发生的历史性变革，理解我国社会主要矛盾已经转化为人民日益增长的美好生活需要和不平衡不充分的发展之间的矛盾，讨论这一关系全局的历史\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:8", CJ_themeTitle: "1.探索世界与追求真理", CJ_teachingSuggestion: "◆以“哲学有什么用”为议题，探究哲学把握世界的独特方式。可寻找生活和学习中充满智慧、蕴含哲理的故事，感悟哲学的基本问题与生活息息相关。可分享各自搜集的资料，归纳哲学思维和日常思维的特点，领会哲学思维的重要意义。\n    ◆以“人的正确思想是从哪里来的”为议题，探究“实践—认识—再实践—再认识……”的过程。可结合生活中的具体事例，讨论如何在实践中获得和深化认识、追求真理。可着眼于正确结论的形成，讨论“第一手材料”与“第二手材料”的不同作用。\n    ◆以“为什么要具体问题具体分析”为议题，探究实事求是的观点。可创设辨析性情境，剖析孤立地、静止地、片面地看问题的错误；分享从实际出发，运用“两点论”“重点论”等认识和解决具体问题的成功经验。\n    ◆以“为什么要一切以时间、地点和条件为转移”为议题，探究解放思想、与时俱进的意义。可结合走进新时代的中国所取得的历史性成就、发生的历史性变革，理解我国社会主要矛盾已经转化为人民日益增长的美好生活需要和不平衡不充分的发展之间的矛盾，讨论这一关系全局的历史"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:24"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:24", title: "1.2", description: "说明思维和存在的关系问题，阐释世界的统一性在于它的物质性；表达无神论立场；表明坚持一切从实际出发、实事求是的态度。", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:8\", \"themeTitle\": \"1.探索世界与追求真理\", \"teachingSuggestion\": \"◆以“哲学有什么用”为议题，探究哲学把握世界的独特方式。可寻找生活和学习中充满智慧、蕴含哲理的故事，感悟哲学的基本问题与生活息息相关。可分享各自搜集的资料，归纳哲学思维和日常思维的特点，领会哲学思维的重要意义。\\n    ◆以“人的正确思想是从哪里来的”为议题，探究“实践—认识—再实践—再认识……”的过程。可结合生活中的具体事例，讨论如何在实践中获得和深化认识、追求真理。可着眼于正确结论的形成，讨论“第一手材料”与“第二手材料”的不同作用。\\n    ◆以“为什么要具体问题具体分析”为议题，探究实事求是的观点。可创设辨析性情境，剖析孤立地、静止地、片面地看问题的错误；分享从实际出发，运用“两点论”“重点论”等认识和解决具体问题的成功经验。\\n    ◆以“为什么要一切以时间、地点和条件为转移”为议题，探究解放思想、与时俱进的意义。可结合走进新时代的中国所取得的历史性成就、发生的历史性变革，理解我国社会主要矛盾已经转化为人民日益增长的美好生活需要和不平衡不充分的发展之间的矛盾，讨论这一关系全局的历史\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:8", CJ_themeTitle: "1.探索世界与追求真理", CJ_teachingSuggestion: "◆以“哲学有什么用”为议题，探究哲学把握世界的独特方式。可寻找生活和学习中充满智慧、蕴含哲理的故事，感悟哲学的基本问题与生活息息相关。可分享各自搜集的资料，归纳哲学思维和日常思维的特点，领会哲学思维的重要意义。\n    ◆以“人的正确思想是从哪里来的”为议题，探究“实践—认识—再实践—再认识……”的过程。可结合生活中的具体事例，讨论如何在实践中获得和深化认识、追求真理。可着眼于正确结论的形成，讨论“第一手材料”与“第二手材料”的不同作用。\n    ◆以“为什么要具体问题具体分析”为议题，探究实事求是的观点。可创设辨析性情境，剖析孤立地、静止地、片面地看问题的错误；分享从实际出发，运用“两点论”“重点论”等认识和解决具体问题的成功经验。\n    ◆以“为什么要一切以时间、地点和条件为转移”为议题，探究解放思想、与时俱进的意义。可结合走进新时代的中国所取得的历史性成就、发生的历史性变革，理解我国社会主要矛盾已经转化为人民日益增长的美好生活需要和不平衡不充分的发展之间的矛盾，讨论这一关系全局的历史"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:25"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:25", title: "1.3", description: "了解人的实践活动的特性和作用，理解社会生活的实践本质；阐明实践是认识的基础，是检验真理的唯一标准；阐述认识运动的辩证发展过程。", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:8\", \"themeTitle\": \"1.探索世界与追求真理\", \"teachingSuggestion\": \"◆以“哲学有什么用”为议题，探究哲学把握世界的独特方式。可寻找生活和学习中充满智慧、蕴含哲理的故事，感悟哲学的基本问题与生活息息相关。可分享各自搜集的资料，归纳哲学思维和日常思维的特点，领会哲学思维的重要意义。\\n    ◆以“人的正确思想是从哪里来的”为议题，探究“实践—认识—再实践—再认识……”的过程。可结合生活中的具体事例，讨论如何在实践中获得和深化认识、追求真理。可着眼于正确结论的形成，讨论“第一手材料”与“第二手材料”的不同作用。\\n    ◆以“为什么要具体问题具体分析”为议题，探究实事求是的观点。可创设辨析性情境，剖析孤立地、静止地、片面地看问题的错误；分享从实际出发，运用“两点论”“重点论”等认识和解决具体问题的成功经验。\\n    ◆以“为什么要一切以时间、地点和条件为转移”为议题，探究解放思想、与时俱进的意义。可结合走进新时代的中国所取得的历史性成就、发生的历史性变革，理解我国社会主要矛盾已经转化为人民日益增长的美好生活需要和不平衡不充分的发展之间的矛盾，讨论这一关系全局的历史\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:8", CJ_themeTitle: "1.探索世界与追求真理", CJ_teachingSuggestion: "◆以“哲学有什么用”为议题，探究哲学把握世界的独特方式。可寻找生活和学习中充满智慧、蕴含哲理的故事，感悟哲学的基本问题与生活息息相关。可分享各自搜集的资料，归纳哲学思维和日常思维的特点，领会哲学思维的重要意义。\n    ◆以“人的正确思想是从哪里来的”为议题，探究“实践—认识—再实践—再认识……”的过程。可结合生活中的具体事例，讨论如何在实践中获得和深化认识、追求真理。可着眼于正确结论的形成，讨论“第一手材料”与“第二手材料”的不同作用。\n    ◆以“为什么要具体问题具体分析”为议题，探究实事求是的观点。可创设辨析性情境，剖析孤立地、静止地、片面地看问题的错误；分享从实际出发，运用“两点论”“重点论”等认识和解决具体问题的成功经验。\n    ◆以“为什么要一切以时间、地点和条件为转移”为议题，探究解放思想、与时俱进的意义。可结合走进新时代的中国所取得的历史性成就、发生的历史性变革，理解我国社会主要矛盾已经转化为人民日益增长的美好生活需要和不平衡不充分的发展之间的矛盾，讨论这一关系全局的历史"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:26"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:26", title: "1.4", description: "坚持系统观念，理解世界是普遍联系、永恒运动的，领会全面地、", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:8\", \"themeTitle\": \"1.探索世界与追求真理\", \"teachingSuggestion\": \"◆以“哲学有什么用”为议题，探究哲学把握世界的独特方式。可寻找生活和学习中充满智慧、蕴含哲理的故事，感悟哲学的基本问题与生活息息相关。可分享各自搜集的资料，归纳哲学思维和日常思维的特点，领会哲学思维的重要意义。\\n    ◆以“人的正确思想是从哪里来的”为议题，探究“实践—认识—再实践—再认识……”的过程。可结合生活中的具体事例，讨论如何在实践中获得和深化认识、追求真理。可着眼于正确结论的形成，讨论“第一手材料”与“第二手材料”的不同作用。\\n    ◆以“为什么要具体问题具体分析”为议题，探究实事求是的观点。可创设辨析性情境，剖析孤立地、静止地、片面地看问题的错误；分享从实际出发，运用“两点论”“重点论”等认识和解决具体问题的成功经验。\\n    ◆以“为什么要一切以时间、地点和条件为转移”为议题，探究解放思想、与时俱进的意义。可结合走进新时代的中国所取得的历史性成就、发生的历史性变革，理解我国社会主要矛盾已经转化为人民日益增长的美好生活需要和不平衡不充分的发展之间的矛盾，讨论这一关系全局的历史\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:8", CJ_themeTitle: "1.探索世界与追求真理", CJ_teachingSuggestion: "◆以“哲学有什么用”为议题，探究哲学把握世界的独特方式。可寻找生活和学习中充满智慧、蕴含哲理的故事，感悟哲学的基本问题与生活息息相关。可分享各自搜集的资料，归纳哲学思维和日常思维的特点，领会哲学思维的重要意义。\n    ◆以“人的正确思想是从哪里来的”为议题，探究“实践—认识—再实践—再认识……”的过程。可结合生活中的具体事例，讨论如何在实践中获得和深化认识、追求真理。可着眼于正确结论的形成，讨论“第一手材料”与“第二手材料”的不同作用。\n    ◆以“为什么要具体问题具体分析”为议题，探究实事求是的观点。可创设辨析性情境，剖析孤立地、静止地、片面地看问题的错误；分享从实际出发，运用“两点论”“重点论”等认识和解决具体问题的成功经验。\n    ◆以“为什么要一切以时间、地点和条件为转移”为议题，探究解放思想、与时俱进的意义。可结合走进新时代的中国所取得的历史性成就、发生的历史性变革，理解我国社会主要矛盾已经转化为人民日益增长的美好生活需要和不平衡不充分的发展之间的矛盾，讨论这一关系全局的历史"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:27"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:27", title: "2.1", description: "领悟社会存在决定社会意识，理解价值观的形成与时代和环境密切相关；解析价值观差异与冲突产生的社会根源，能够进行合理的价值判断和行为选择。", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:9\", \"themeTitle\": \"2.认识社会与价值选择\", \"teachingSuggestion\": \"◆以“人们为什么有不同的价值观”为议题，探究价值判断的依据和意义。可讨论媒体中关于事实和观点陈述的内容，调查不同人群对某项改革措施的不同看法，分析其价值取向的差异及成因。可结合不同历史时期著名人物的言论，分析影响其价值判断的时代因素。\\n◆以“面对价值冲突如何选择”为议题，探究生活中进行价值选择的标准。可针对“价值两难”的情况，辨析价值评价中的“动机论”和“效果论”。可针对公共政策的制定或公共问题的不同解决方案，讨论应坚持什么价值取向。\\n◆以“劳动对实现人生价值有何意义”为议题，探究劳动在实现人生价值中的作用和意义。可针对我国在劳动教育中存在的薄弱环节和问题，例如，学生劳动机会减少、劳动意识缺乏，有的学生不会劳动、轻视劳动、不珍惜劳动成果的现象，开展调查，阐释这些现象给青少年健康成长带来的不良影响。可搜集生活中人们辛勤劳动、诚实劳动、创造性劳动的事例，感悟劳动最光荣、劳动最崇高、劳动最伟大、劳动最美丽，懂得崇尚劳动、尊重劳动对个人成长的意义。\\n◆以“怎样才能内化于心、外化于行”为议题，探究如何践行社会主义核心价值观。可寻找身边的榜样，感受具体的、现实的典范，为其撰写颁奖词。可组织社会主义核心价值观专题解读，\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:9", CJ_themeTitle: "2.认识社会与价值选择", CJ_teachingSuggestion: "◆以“人们为什么有不同的价值观”为议题，探究价值判断的依据和意义。可讨论媒体中关于事实和观点陈述的内容，调查不同人群对某项改革措施的不同看法，分析其价值取向的差异及成因。可结合不同历史时期著名人物的言论，分析影响其价值判断的时代因素。\n◆以“面对价值冲突如何选择”为议题，探究生活中进行价值选择的标准。可针对“价值两难”的情况，辨析价值评价中的“动机论”和“效果论”。可针对公共政策的制定或公共问题的不同解决方案，讨论应坚持什么价值取向。\n◆以“劳动对实现人生价值有何意义”为议题，探究劳动在实现人生价值中的作用和意义。可针对我国在劳动教育中存在的薄弱环节和问题，例如，学生劳动机会减少、劳动意识缺乏，有的学生不会劳动、轻视劳动、不珍惜劳动成果的现象，开展调查，阐释这些现象给青少年健康成长带来的不良影响。可搜集生活中人们辛勤劳动、诚实劳动、创造性劳动的事例，感悟劳动最光荣、劳动最崇高、劳动最伟大、劳动最美丽，懂得崇尚劳动、尊重劳动对个人成长的意义。\n◆以“怎样才能内化于心、外化于行”为议题，探究如何践行社会主义核心价值观。可寻找身边的榜样，感受具体的、现实的典范，为其撰写颁奖词。可组织社会主义核心价值观专题解读，"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:28"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:28", title: "2.2", description: "理解价值观对人们行为的导向作用，探寻实现人生价值的条件和途径，践行社会主义核心价值观。", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:9\", \"themeTitle\": \"2.认识社会与价值选择\", \"teachingSuggestion\": \"◆以“人们为什么有不同的价值观”为议题，探究价值判断的依据和意义。可讨论媒体中关于事实和观点陈述的内容，调查不同人群对某项改革措施的不同看法，分析其价值取向的差异及成因。可结合不同历史时期著名人物的言论，分析影响其价值判断的时代因素。\\n◆以“面对价值冲突如何选择”为议题，探究生活中进行价值选择的标准。可针对“价值两难”的情况，辨析价值评价中的“动机论”和“效果论”。可针对公共政策的制定或公共问题的不同解决方案，讨论应坚持什么价值取向。\\n◆以“劳动对实现人生价值有何意义”为议题，探究劳动在实现人生价值中的作用和意义。可针对我国在劳动教育中存在的薄弱环节和问题，例如，学生劳动机会减少、劳动意识缺乏，有的学生不会劳动、轻视劳动、不珍惜劳动成果的现象，开展调查，阐释这些现象给青少年健康成长带来的不良影响。可搜集生活中人们辛勤劳动、诚实劳动、创造性劳动的事例，感悟劳动最光荣、劳动最崇高、劳动最伟大、劳动最美丽，懂得崇尚劳动、尊重劳动对个人成长的意义。\\n◆以“怎样才能内化于心、外化于行”为议题，探究如何践行社会主义核心价值观。可寻找身边的榜样，感受具体的、现实的典范，为其撰写颁奖词。可组织社会主义核心价值观专题解读，\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:9", CJ_themeTitle: "2.认识社会与价值选择", CJ_teachingSuggestion: "◆以“人们为什么有不同的价值观”为议题，探究价值判断的依据和意义。可讨论媒体中关于事实和观点陈述的内容，调查不同人群对某项改革措施的不同看法，分析其价值取向的差异及成因。可结合不同历史时期著名人物的言论，分析影响其价值判断的时代因素。\n◆以“面对价值冲突如何选择”为议题，探究生活中进行价值选择的标准。可针对“价值两难”的情况，辨析价值评价中的“动机论”和“效果论”。可针对公共政策的制定或公共问题的不同解决方案，讨论应坚持什么价值取向。\n◆以“劳动对实现人生价值有何意义”为议题，探究劳动在实现人生价值中的作用和意义。可针对我国在劳动教育中存在的薄弱环节和问题，例如，学生劳动机会减少、劳动意识缺乏，有的学生不会劳动、轻视劳动、不珍惜劳动成果的现象，开展调查，阐释这些现象给青少年健康成长带来的不良影响。可搜集生活中人们辛勤劳动、诚实劳动、创造性劳动的事例，感悟劳动最光荣、劳动最崇高、劳动最伟大、劳动最美丽，懂得崇尚劳动、尊重劳动对个人成长的意义。\n◆以“怎样才能内化于心、外化于行”为议题，探究如何践行社会主义核心价值观。可寻找身边的榜样，感受具体的、现实的典范，为其撰写颁奖词。可组织社会主义核心价值观专题解读，"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:29"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:29", title: "3.1", description: "坚持守正创新，理解坚守马克思主义这个魂脉、中华优秀传统文化这个根脉的重要性，了解中华文明的五个突出特性——连续性、创新性、统一性、包容性、和平性，领会对中华优秀传统文化进行创造性转化、创新性发展的重要意义，弘扬民族精神。", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:10\", \"themeTitle\": \"3.文化传承与文化创新\", \"teachingSuggestion\": \"◆以“传统文化是包袱还是财富”为议题，探究对待传统文化的正确态度。可结合对非物质文化遗产的保护，讨论如何传承和弘扬中华优秀传统文化。可开展“寻找共同的文化记忆”的访谈，搜集“我国的文化遗产”实例，组织“制作家乡的文化名片”等活动。可搜集有关资料，寻找并讨论最能体现中华优秀传统文化精髓的标识。\\n◆以“文化的力量有多大”为议题，探究中国特色社会主义文化 的影响力，理解坚持马克思主义在意识形态领域指导地位这一根本制度的意义。可通过社会调查，感受中国特色社会主义文化源自于中华民族五千多年文明历史所孕育的中华优秀传统文化，熔铸于党领导人民创造的革命文化和社会主义先进文化，植根于中国特色社会主义伟大实践。可评析流行文化与经典文化的价值，评估现代传媒对文化传播的影响，感受文化差异对人们的经济、政治和日常生活的影响。\\n◆以“文化创新靠什么”为议题，探究文化创新的动力和途径。可组织系列活动，比较、评议各种文化创新的表现。可通过事例解读，说明文化创新和发展源于社会实践。可搜集材料，理解交流互鉴、推陈出新、革故鼎新是文化创新的重要途径。\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:10", CJ_themeTitle: "3.文化传承与文化创新", CJ_teachingSuggestion: "◆以“传统文化是包袱还是财富”为议题，探究对待传统文化的正确态度。可结合对非物质文化遗产的保护，讨论如何传承和弘扬中华优秀传统文化。可开展“寻找共同的文化记忆”的访谈，搜集“我国的文化遗产”实例，组织“制作家乡的文化名片”等活动。可搜集有关资料，寻找并讨论最能体现中华优秀传统文化精髓的标识。\n◆以“文化的力量有多大”为议题，探究中国特色社会主义文化 的影响力，理解坚持马克思主义在意识形态领域指导地位这一根本制度的意义。可通过社会调查，感受中国特色社会主义文化源自于中华民族五千多年文明历史所孕育的中华优秀传统文化，熔铸于党领导人民创造的革命文化和社会主义先进文化，植根于中国特色社会主义伟大实践。可评析流行文化与经典文化的价值，评估现代传媒对文化传播的影响，感受文化差异对人们的经济、政治和日常生活的影响。\n◆以“文化创新靠什么”为议题，探究文化创新的动力和途径。可组织系列活动，比较、评议各种文化创新的表现。可通过事例解读，说明文化创新和发展源于社会实践。可搜集材料，理解交流互鉴、推陈出新、革故鼎新是文化创新的重要途径。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:30"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:30", title: "3.2", description: "坚持胸怀天下，弘扬全人类共同价值，了解我国坚持平等、互鉴、对话、包容文明观的意义，感悟世界文化的多样性，理解文化多样性的价值，明确文化交流互鉴的途径和意义。", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:10\", \"themeTitle\": \"3.文化传承与文化创新\", \"teachingSuggestion\": \"◆以“传统文化是包袱还是财富”为议题，探究对待传统文化的正确态度。可结合对非物质文化遗产的保护，讨论如何传承和弘扬中华优秀传统文化。可开展“寻找共同的文化记忆”的访谈，搜集“我国的文化遗产”实例，组织“制作家乡的文化名片”等活动。可搜集有关资料，寻找并讨论最能体现中华优秀传统文化精髓的标识。\\n◆以“文化的力量有多大”为议题，探究中国特色社会主义文化 的影响力，理解坚持马克思主义在意识形态领域指导地位这一根本制度的意义。可通过社会调查，感受中国特色社会主义文化源自于中华民族五千多年文明历史所孕育的中华优秀传统文化，熔铸于党领导人民创造的革命文化和社会主义先进文化，植根于中国特色社会主义伟大实践。可评析流行文化与经典文化的价值，评估现代传媒对文化传播的影响，感受文化差异对人们的经济、政治和日常生活的影响。\\n◆以“文化创新靠什么”为议题，探究文化创新的动力和途径。可组织系列活动，比较、评议各种文化创新的表现。可通过事例解读，说明文化创新和发展源于社会实践。可搜集材料，理解交流互鉴、推陈出新、革故鼎新是文化创新的重要途径。\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:10", CJ_themeTitle: "3.文化传承与文化创新", CJ_teachingSuggestion: "◆以“传统文化是包袱还是财富”为议题，探究对待传统文化的正确态度。可结合对非物质文化遗产的保护，讨论如何传承和弘扬中华优秀传统文化。可开展“寻找共同的文化记忆”的访谈，搜集“我国的文化遗产”实例，组织“制作家乡的文化名片”等活动。可搜集有关资料，寻找并讨论最能体现中华优秀传统文化精髓的标识。\n◆以“文化的力量有多大”为议题，探究中国特色社会主义文化 的影响力，理解坚持马克思主义在意识形态领域指导地位这一根本制度的意义。可通过社会调查，感受中国特色社会主义文化源自于中华民族五千多年文明历史所孕育的中华优秀传统文化，熔铸于党领导人民创造的革命文化和社会主义先进文化，植根于中国特色社会主义伟大实践。可评析流行文化与经典文化的价值，评估现代传媒对文化传播的影响，感受文化差异对人们的经济、政治和日常生活的影响。\n◆以“文化创新靠什么”为议题，探究文化创新的动力和途径。可组织系列活动，比较、评议各种文化创新的表现。可通过事例解读，说明文化创新和发展源于社会实践。可搜集材料，理解交流互鉴、推陈出新、革故鼎新是文化创新的重要途径。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:31"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:31", title: "3.3", description: "辨识各种文化现象，领悟优秀文化作品的影响力和感召力；明确建设社会主义文化强国的要求，展示中国特色社会主义文化自信。", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"theme\": \"urn:jy:politics:SB0310:OB06:Theme:10\", \"themeTitle\": \"3.文化传承与文化创新\", \"teachingSuggestion\": \"◆以“传统文化是包袱还是财富”为议题，探究对待传统文化的正确态度。可结合对非物质文化遗产的保护，讨论如何传承和弘扬中华优秀传统文化。可开展“寻找共同的文化记忆”的访谈，搜集“我国的文化遗产”实例，组织“制作家乡的文化名片”等活动。可搜集有关资料，寻找并讨论最能体现中华优秀传统文化精髓的标识。\\n◆以“文化的力量有多大”为议题，探究中国特色社会主义文化 的影响力，理解坚持马克思主义在意识形态领域指导地位这一根本制度的意义。可通过社会调查，感受中国特色社会主义文化源自于中华民族五千多年文明历史所孕育的中华优秀传统文化，熔铸于党领导人民创造的革命文化和社会主义先进文化，植根于中国特色社会主义伟大实践。可评析流行文化与经典文化的价值，评估现代传媒对文化传播的影响，感受文化差异对人们的经济、政治和日常生活的影响。\\n◆以“文化创新靠什么”为议题，探究文化创新的动力和途径。可组织系列活动，比较、评议各种文化创新的表现。可通过事例解读，说明文化创新和发展源于社会实践。可搜集材料，理解交流互鉴、推陈出新、革故鼎新是文化创新的重要途径。\"}", CJ_theme: "urn:jy:politics:SB0310:OB06:Theme:10", CJ_themeTitle: "3.文化传承与文化创新", CJ_teachingSuggestion: "◆以“传统文化是包袱还是财富”为议题，探究对待传统文化的正确态度。可结合对非物质文化遗产的保护，讨论如何传承和弘扬中华优秀传统文化。可开展“寻找共同的文化记忆”的访谈，搜集“我国的文化遗产”实例，组织“制作家乡的文化名片”等活动。可搜集有关资料，寻找并讨论最能体现中华优秀传统文化精髓的标识。\n◆以“文化的力量有多大”为议题，探究中国特色社会主义文化 的影响力，理解坚持马克思主义在意识形态领域指导地位这一根本制度的意义。可通过社会调查，感受中国特色社会主义文化源自于中华民族五千多年文明历史所孕育的中华优秀传统文化，熔铸于党领导人民创造的革命文化和社会主义先进文化，植根于中国特色社会主义伟大实践。可评析流行文化与经典文化的价值，评估现代传媒对文化传播的影响，感受文化差异对人们的经济、政治和日常生活的影响。\n◆以“文化创新靠什么”为议题，探究文化创新的动力和途径。可组织系列活动，比较、评议各种文化创新的表现。可通过事例解读，说明文化创新和发展源于社会实践。可搜集材料，理解交流互鉴、推陈出新、革故鼎新是文化创新的重要途径。"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:32"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:32", title: "1.1", description: "了解国体和政体的关系，揭示国家的本质，理解国家管理形式的多样性", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"$\\\\spadesuit$  采用宣传板报等形式，选取典型国家，展示“君主立宪制”和“民主共和制”两种国家管理形式，说明各自的特点。\\n$\\\\spadesuit$  以“国家结构形式的形成与发展”为题，查阅有关文献，探究“联邦制”和“单一制”的历史成因，比较两者之间的差异。\\n$\\\\spadesuit$  可聚焦有关边界问题，讨论在发展睦邻关系的同时如何维护主权安全。\\n$\\\\spadesuit$  以中美关系、中俄关系、中日关系的发展变化等为例，找出影响国家间关系的主要因素，讨论国家利益和国家实力在国际关系中的作用，以及对我国外交政策的影响。\\n$\\\\spadesuit$  结合实例，阐释世界各国弘扬和平、发展、公平、正义、民主、自由的全人类共同价值的意义。\\n$\\\\spadesuit$  以“合作共赢是最大公约数”为题，组织辩论赛、主题征文、新闻素材搜集等活动。可就“共建‘一带一路’”，撰写调研报告。\\n$\\\\spadesuit$  调研我国当前的比较优势，提出符合我国比较优势的产业发展建议；结合自己的职业倾向和兴趣、特长，探讨如何培养和提升自己的比较优势，制定人生职业规划。\\n$\\\\spadesuit$  搜集材料，展示第二次世界大战后主要国际金融危机的基本过程及影响，以及经济全球化时代国际金融危机对我国经济社会发展的影响；或针对我国出口面临的主要贸易壁垒，探讨我国企业如何打破贸易壁垒。\\n$\\\\spadesuit$  搜集2014年亚洲太平洋经济合作组织领导人非正式会议、2016年二十国集团领导人杭州峰会、2017年金砖国家领导人厦门会晤的材料，分析中国主办这些活动的重要意义；了解二十国集团、亚洲太平洋经济合作组织、金砖国家的发展历程及中国在其中发挥的作用；搜集材料，谈谈这些平台为世界经济增长和全球经济治理作出了哪些贡献。\\n$\\\\spadesuit$  搜集有关经济全球化的不同观点，阐释经济全球化开放、包容、普惠、平衡、共赢的发展方向，探讨如何在利用好国际国内两个市场、两种资源的同时维护好国家经济安全；或与身边的人交流经济全球化对个人生活的影响。\\n$\\\\spadesuit$  搜集有关联合国议事和决策的规则及其执行机制的材料，分析\\n中国在联合国的地位和作用；或展示世界贸易组织、世界银行、国际货币基金组织的主要发展历程、基本职能以及中国在其中发挥的作用；或探讨构建人类命运共同体的意义，评估国际组织对我们生活的影响。\\n$\\\\spadesuit$  搜集欧洲联盟、非洲联盟、东南亚国家联盟、亚洲太平洋经济合作组织等区域性国际组织的资料，感受和评估区域性国际组织在国际事务中的作用；或模拟国际论坛和国际对话，举办辩论会；或搜集中国倡导成立的区域性国际组织或机制（上海合作组织、澜沧江一湄公河合作、亚洲基础设施投资银行等）的资料，了解它们的职能，评价中国在其中发挥的作用。\", \"module\": \"模块1：当代国际政治与经济\"}", CJ_teachingTips: "$\\spadesuit$  采用宣传板报等形式，选取典型国家，展示“君主立宪制”和“民主共和制”两种国家管理形式，说明各自的特点。\n$\\spadesuit$  以“国家结构形式的形成与发展”为题，查阅有关文献，探究“联邦制”和“单一制”的历史成因，比较两者之间的差异。\n$\\spadesuit$  可聚焦有关边界问题，讨论在发展睦邻关系的同时如何维护主权安全。\n$\\spadesuit$  以中美关系、中俄关系、中日关系的发展变化等为例，找出影响国家间关系的主要因素，讨论国家利益和国家实力在国际关系中的作用，以及对我国外交政策的影响。\n$\\spadesuit$  结合实例，阐释世界各国弘扬和平、发展、公平、正义、民主、自由的全人类共同价值的意义。\n$\\spadesuit$  以“合作共赢是最大公约数”为题，组织辩论赛、主题征文、新闻素材搜集等活动。可就“共建‘一带一路’”，撰写调研报告。\n$\\spadesuit$  调研我国当前的比较优势，提出符合我国比较优势的产业发展建议；结合自己的职业倾向和兴趣、特长，探讨如何培养和提升自己的比较优势，制定人生职业规划。\n$\\spadesuit$  搜集材料，展示第二次世界大战后主要国际金融危机的基本过程及影响，以及经济全球化时代国际金融危机对我国经济社会发展的影响；或针对我国出口面临的主要贸易壁垒，探讨我国企业如何打破贸易壁垒。\n$\\spadesuit$  搜集2014年亚洲太平洋经济合作组织领导人非正式会议、2016年二十国集团领导人杭州峰会、2017年金砖国家领导人厦门会晤的材料，分析中国主办这些活动的重要意义；了解二十国集团、亚洲太平洋经济合作组织、金砖国家的发展历程及中国在其中发挥的作用；搜集材料，谈谈这些平台为世界经济增长和全球经济治理作出了哪些贡献。\n$\\spadesuit$  搜集有关经济全球化的不同观点，阐释经济全球化开放、包容、普惠、平衡、共赢的发展方向，探讨如何在利用好国际国内两个市场、两种资源的同时维护好国家经济安全；或与身边的人交流经济全球化对个人生活的影响。\n$\\spadesuit$  搜集有关联合国议事和决策的规则及其执行机制的材料，分析\n中国在联合国的地位和作用；或展示世界贸易组织、世界银行、国际货币基金组织的主要发展历程、基本职能以及中国在其中发挥的作用；或探讨构建人类命运共同体的意义，评估国际组织对我们生活的影响。\n$\\spadesuit$  搜集欧洲联盟、非洲联盟、东南亚国家联盟、亚洲太平洋经济合作组织等区域性国际组织的资料，感受和评估区域性国际组织在国际事务中的作用；或模拟国际论坛和国际对话，举办辩论会；或搜集中国倡导成立的区域性国际组织或机制（上海合作组织、澜沧江一湄公河合作、亚洲基础设施投资银行等）的资料，了解它们的职能，评价中国在其中发挥的作用。", CJ_module: "模块1：当代国际政治与经济"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:33"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:33", title: "1.2", description: "解析国家的结构形式，理解维护国家统一、捍卫国家主权的意义", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"$\\\\spadesuit$  采用宣传板报等形式，选取典型国家，展示“君主立宪制”和“民主共和制”两种国家管理形式，说明各自的特点。\\n$\\\\spadesuit$  以“国家结构形式的形成与发展”为题，查阅有关文献，探究“联邦制”和“单一制”的历史成因，比较两者之间的差异。\\n$\\\\spadesuit$  可聚焦有关边界问题，讨论在发展睦邻关系的同时如何维护主权安全。\\n$\\\\spadesuit$  以中美关系、中俄关系、中日关系的发展变化等为例，找出影响国家间关系的主要因素，讨论国家利益和国家实力在国际关系中的作用，以及对我国外交政策的影响。\\n$\\\\spadesuit$  结合实例，阐释世界各国弘扬和平、发展、公平、正义、民主、自由的全人类共同价值的意义。\\n$\\\\spadesuit$  以“合作共赢是最大公约数”为题，组织辩论赛、主题征文、新闻素材搜集等活动。可就“共建‘一带一路’”，撰写调研报告。\\n$\\\\spadesuit$  调研我国当前的比较优势，提出符合我国比较优势的产业发展建议；结合自己的职业倾向和兴趣、特长，探讨如何培养和提升自己的比较优势，制定人生职业规划。\\n$\\\\spadesuit$  搜集材料，展示第二次世界大战后主要国际金融危机的基本过程及影响，以及经济全球化时代国际金融危机对我国经济社会发展的影响；或针对我国出口面临的主要贸易壁垒，探讨我国企业如何打破贸易壁垒。\\n$\\\\spadesuit$  搜集2014年亚洲太平洋经济合作组织领导人非正式会议、2016年二十国集团领导人杭州峰会、2017年金砖国家领导人厦门会晤的材料，分析中国主办这些活动的重要意义；了解二十国集团、亚洲太平洋经济合作组织、金砖国家的发展历程及中国在其中发挥的作用；搜集材料，谈谈这些平台为世界经济增长和全球经济治理作出了哪些贡献。\\n$\\\\spadesuit$  搜集有关经济全球化的不同观点，阐释经济全球化开放、包容、普惠、平衡、共赢的发展方向，探讨如何在利用好国际国内两个市场、两种资源的同时维护好国家经济安全；或与身边的人交流经济全球化对个人生活的影响。\\n$\\\\spadesuit$  搜集有关联合国议事和决策的规则及其执行机制的材料，分析\\n中国在联合国的地位和作用；或展示世界贸易组织、世界银行、国际货币基金组织的主要发展历程、基本职能以及中国在其中发挥的作用；或探讨构建人类命运共同体的意义，评估国际组织对我们生活的影响。\\n$\\\\spadesuit$  搜集欧洲联盟、非洲联盟、东南亚国家联盟、亚洲太平洋经济合作组织等区域性国际组织的资料，感受和评估区域性国际组织在国际事务中的作用；或模拟国际论坛和国际对话，举办辩论会；或搜集中国倡导成立的区域性国际组织或机制（上海合作组织、澜沧江一湄公河合作、亚洲基础设施投资银行等）的资料，了解它们的职能，评价中国在其中发挥的作用。\", \"module\": \"模块1：当代国际政治与经济\"}", CJ_teachingTips: "$\\spadesuit$  采用宣传板报等形式，选取典型国家，展示“君主立宪制”和“民主共和制”两种国家管理形式，说明各自的特点。\n$\\spadesuit$  以“国家结构形式的形成与发展”为题，查阅有关文献，探究“联邦制”和“单一制”的历史成因，比较两者之间的差异。\n$\\spadesuit$  可聚焦有关边界问题，讨论在发展睦邻关系的同时如何维护主权安全。\n$\\spadesuit$  以中美关系、中俄关系、中日关系的发展变化等为例，找出影响国家间关系的主要因素，讨论国家利益和国家实力在国际关系中的作用，以及对我国外交政策的影响。\n$\\spadesuit$  结合实例，阐释世界各国弘扬和平、发展、公平、正义、民主、自由的全人类共同价值的意义。\n$\\spadesuit$  以“合作共赢是最大公约数”为题，组织辩论赛、主题征文、新闻素材搜集等活动。可就“共建‘一带一路’”，撰写调研报告。\n$\\spadesuit$  调研我国当前的比较优势，提出符合我国比较优势的产业发展建议；结合自己的职业倾向和兴趣、特长，探讨如何培养和提升自己的比较优势，制定人生职业规划。\n$\\spadesuit$  搜集材料，展示第二次世界大战后主要国际金融危机的基本过程及影响，以及经济全球化时代国际金融危机对我国经济社会发展的影响；或针对我国出口面临的主要贸易壁垒，探讨我国企业如何打破贸易壁垒。\n$\\spadesuit$  搜集2014年亚洲太平洋经济合作组织领导人非正式会议、2016年二十国集团领导人杭州峰会、2017年金砖国家领导人厦门会晤的材料，分析中国主办这些活动的重要意义；了解二十国集团、亚洲太平洋经济合作组织、金砖国家的发展历程及中国在其中发挥的作用；搜集材料，谈谈这些平台为世界经济增长和全球经济治理作出了哪些贡献。\n$\\spadesuit$  搜集有关经济全球化的不同观点，阐释经济全球化开放、包容、普惠、平衡、共赢的发展方向，探讨如何在利用好国际国内两个市场、两种资源的同时维护好国家经济安全；或与身边的人交流经济全球化对个人生活的影响。\n$\\spadesuit$  搜集有关联合国议事和决策的规则及其执行机制的材料，分析\n中国在联合国的地位和作用；或展示世界贸易组织、世界银行、国际货币基金组织的主要发展历程、基本职能以及中国在其中发挥的作用；或探讨构建人类命运共同体的意义，评估国际组织对我们生活的影响。\n$\\spadesuit$  搜集欧洲联盟、非洲联盟、东南亚国家联盟、亚洲太平洋经济合作组织等区域性国际组织的资料，感受和评估区域性国际组织在国际事务中的作用；或模拟国际论坛和国际对话，举办辩论会；或搜集中国倡导成立的区域性国际组织或机制（上海合作组织、澜沧江一湄公河合作、亚洲基础设施投资银行等）的资料，了解它们的职能，评价中国在其中发挥的作用。", CJ_module: "模块1：当代国际政治与经济"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:34"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:34", title: "1.3", description: "引用实例，比较不同国家的特点及发展状况，阐明我国的总体国家安全观", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"$\\\\spadesuit$  采用宣传板报等形式，选取典型国家，展示“君主立宪制”和“民主共和制”两种国家管理形式，说明各自的特点。\\n$\\\\spadesuit$  以“国家结构形式的形成与发展”为题，查阅有关文献，探究“联邦制”和“单一制”的历史成因，比较两者之间的差异。\\n$\\\\spadesuit$  可聚焦有关边界问题，讨论在发展睦邻关系的同时如何维护主权安全。\\n$\\\\spadesuit$  以中美关系、中俄关系、中日关系的发展变化等为例，找出影响国家间关系的主要因素，讨论国家利益和国家实力在国际关系中的作用，以及对我国外交政策的影响。\\n$\\\\spadesuit$  结合实例，阐释世界各国弘扬和平、发展、公平、正义、民主、自由的全人类共同价值的意义。\\n$\\\\spadesuit$  以“合作共赢是最大公约数”为题，组织辩论赛、主题征文、新闻素材搜集等活动。可就“共建‘一带一路’”，撰写调研报告。\\n$\\\\spadesuit$  调研我国当前的比较优势，提出符合我国比较优势的产业发展建议；结合自己的职业倾向和兴趣、特长，探讨如何培养和提升自己的比较优势，制定人生职业规划。\\n$\\\\spadesuit$  搜集材料，展示第二次世界大战后主要国际金融危机的基本过程及影响，以及经济全球化时代国际金融危机对我国经济社会发展的影响；或针对我国出口面临的主要贸易壁垒，探讨我国企业如何打破贸易壁垒。\\n$\\\\spadesuit$  搜集2014年亚洲太平洋经济合作组织领导人非正式会议、2016年二十国集团领导人杭州峰会、2017年金砖国家领导人厦门会晤的材料，分析中国主办这些活动的重要意义；了解二十国集团、亚洲太平洋经济合作组织、金砖国家的发展历程及中国在其中发挥的作用；搜集材料，谈谈这些平台为世界经济增长和全球经济治理作出了哪些贡献。\\n$\\\\spadesuit$  搜集有关经济全球化的不同观点，阐释经济全球化开放、包容、普惠、平衡、共赢的发展方向，探讨如何在利用好国际国内两个市场、两种资源的同时维护好国家经济安全；或与身边的人交流经济全球化对个人生活的影响。\\n$\\\\spadesuit$  搜集有关联合国议事和决策的规则及其执行机制的材料，分析\\n中国在联合国的地位和作用；或展示世界贸易组织、世界银行、国际货币基金组织的主要发展历程、基本职能以及中国在其中发挥的作用；或探讨构建人类命运共同体的意义，评估国际组织对我们生活的影响。\\n$\\\\spadesuit$  搜集欧洲联盟、非洲联盟、东南亚国家联盟、亚洲太平洋经济合作组织等区域性国际组织的资料，感受和评估区域性国际组织在国际事务中的作用；或模拟国际论坛和国际对话，举办辩论会；或搜集中国倡导成立的区域性国际组织或机制（上海合作组织、澜沧江一湄公河合作、亚洲基础设施投资银行等）的资料，了解它们的职能，评价中国在其中发挥的作用。\", \"module\": \"模块1：当代国际政治与经济\"}", CJ_teachingTips: "$\\spadesuit$  采用宣传板报等形式，选取典型国家，展示“君主立宪制”和“民主共和制”两种国家管理形式，说明各自的特点。\n$\\spadesuit$  以“国家结构形式的形成与发展”为题，查阅有关文献，探究“联邦制”和“单一制”的历史成因，比较两者之间的差异。\n$\\spadesuit$  可聚焦有关边界问题，讨论在发展睦邻关系的同时如何维护主权安全。\n$\\spadesuit$  以中美关系、中俄关系、中日关系的发展变化等为例，找出影响国家间关系的主要因素，讨论国家利益和国家实力在国际关系中的作用，以及对我国外交政策的影响。\n$\\spadesuit$  结合实例，阐释世界各国弘扬和平、发展、公平、正义、民主、自由的全人类共同价值的意义。\n$\\spadesuit$  以“合作共赢是最大公约数”为题，组织辩论赛、主题征文、新闻素材搜集等活动。可就“共建‘一带一路’”，撰写调研报告。\n$\\spadesuit$  调研我国当前的比较优势，提出符合我国比较优势的产业发展建议；结合自己的职业倾向和兴趣、特长，探讨如何培养和提升自己的比较优势，制定人生职业规划。\n$\\spadesuit$  搜集材料，展示第二次世界大战后主要国际金融危机的基本过程及影响，以及经济全球化时代国际金融危机对我国经济社会发展的影响；或针对我国出口面临的主要贸易壁垒，探讨我国企业如何打破贸易壁垒。\n$\\spadesuit$  搜集2014年亚洲太平洋经济合作组织领导人非正式会议、2016年二十国集团领导人杭州峰会、2017年金砖国家领导人厦门会晤的材料，分析中国主办这些活动的重要意义；了解二十国集团、亚洲太平洋经济合作组织、金砖国家的发展历程及中国在其中发挥的作用；搜集材料，谈谈这些平台为世界经济增长和全球经济治理作出了哪些贡献。\n$\\spadesuit$  搜集有关经济全球化的不同观点，阐释经济全球化开放、包容、普惠、平衡、共赢的发展方向，探讨如何在利用好国际国内两个市场、两种资源的同时维护好国家经济安全；或与身边的人交流经济全球化对个人生活的影响。\n$\\spadesuit$  搜集有关联合国议事和决策的规则及其执行机制的材料，分析\n中国在联合国的地位和作用；或展示世界贸易组织、世界银行、国际货币基金组织的主要发展历程、基本职能以及中国在其中发挥的作用；或探讨构建人类命运共同体的意义，评估国际组织对我们生活的影响。\n$\\spadesuit$  搜集欧洲联盟、非洲联盟、东南亚国家联盟、亚洲太平洋经济合作组织等区域性国际组织的资料，感受和评估区域性国际组织在国际事务中的作用；或模拟国际论坛和国际对话，举办辩论会；或搜集中国倡导成立的区域性国际组织或机制（上海合作组织、澜沧江一湄公河合作、亚洲基础设施投资银行等）的资料，了解它们的职能，评价中国在其中发挥的作用。", CJ_module: "模块1：当代国际政治与经济"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:35"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:35", title: "2.1", description: "引用国家之间合作、竞争、冲突的实例，印证国家利益和国家实力是决定国际关系的主要因素", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"$\\\\spadesuit$  采用宣传板报等形式，选取典型国家，展示“君主立宪制”和“民主共和制”两种国家管理形式，说明各自的特点。\\n$\\\\spadesuit$  以“国家结构形式的形成与发展”为题，查阅有关文献，探究“联邦制”和“单一制”的历史成因，比较两者之间的差异。\\n$\\\\spadesuit$  可聚焦有关边界问题，讨论在发展睦邻关系的同时如何维护主权安全。\\n$\\\\spadesuit$  以中美关系、中俄关系、中日关系的发展变化等为例，找出影响国家间关系的主要因素，讨论国家利益和国家实力在国际关系中的作用，以及对我国外交政策的影响。\\n$\\\\spadesuit$  结合实例，阐释世界各国弘扬和平、发展、公平、正义、民主、自由的全人类共同价值的意义。\\n$\\\\spadesuit$  以“合作共赢是最大公约数”为题，组织辩论赛、主题征文、新闻素材搜集等活动。可就“共建‘一带一路’”，撰写调研报告。\\n$\\\\spadesuit$  调研我国当前的比较优势，提出符合我国比较优势的产业发展建议；结合自己的职业倾向和兴趣、特长，探讨如何培养和提升自己的比较优势，制定人生职业规划。\\n$\\\\spadesuit$  搜集材料，展示第二次世界大战后主要国际金融危机的基本过程及影响，以及经济全球化时代国际金融危机对我国经济社会发展的影响；或针对我国出口面临的主要贸易壁垒，探讨我国企业如何打破贸易壁垒。\\n$\\\\spadesuit$  搜集2014年亚洲太平洋经济合作组织领导人非正式会议、2016年二十国集团领导人杭州峰会、2017年金砖国家领导人厦门会晤的材料，分析中国主办这些活动的重要意义；了解二十国集团、亚洲太平洋经济合作组织、金砖国家的发展历程及中国在其中发挥的作用；搜集材料，谈谈这些平台为世界经济增长和全球经济治理作出了哪些贡献。\\n$\\\\spadesuit$  搜集有关经济全球化的不同观点，阐释经济全球化开放、包容、普惠、平衡、共赢的发展方向，探讨如何在利用好国际国内两个市场、两种资源的同时维护好国家经济安全；或与身边的人交流经济全球化对个人生活的影响。\\n$\\\\spadesuit$  搜集有关联合国议事和决策的规则及其执行机制的材料，分析\\n中国在联合国的地位和作用；或展示世界贸易组织、世界银行、国际货币基金组织的主要发展历程、基本职能以及中国在其中发挥的作用；或探讨构建人类命运共同体的意义，评估国际组织对我们生活的影响。\\n$\\\\spadesuit$  搜集欧洲联盟、非洲联盟、东南亚国家联盟、亚洲太平洋经济合作组织等区域性国际组织的资料，感受和评估区域性国际组织在国际事务中的作用；或模拟国际论坛和国际对话，举办辩论会；或搜集中国倡导成立的区域性国际组织或机制（上海合作组织、澜沧江一湄公河合作、亚洲基础设施投资银行等）的资料，了解它们的职能，评价中国在其中发挥的作用。\", \"module\": \"模块1：当代国际政治与经济\"}", CJ_teachingTips: "$\\spadesuit$  采用宣传板报等形式，选取典型国家，展示“君主立宪制”和“民主共和制”两种国家管理形式，说明各自的特点。\n$\\spadesuit$  以“国家结构形式的形成与发展”为题，查阅有关文献，探究“联邦制”和“单一制”的历史成因，比较两者之间的差异。\n$\\spadesuit$  可聚焦有关边界问题，讨论在发展睦邻关系的同时如何维护主权安全。\n$\\spadesuit$  以中美关系、中俄关系、中日关系的发展变化等为例，找出影响国家间关系的主要因素，讨论国家利益和国家实力在国际关系中的作用，以及对我国外交政策的影响。\n$\\spadesuit$  结合实例，阐释世界各国弘扬和平、发展、公平、正义、民主、自由的全人类共同价值的意义。\n$\\spadesuit$  以“合作共赢是最大公约数”为题，组织辩论赛、主题征文、新闻素材搜集等活动。可就“共建‘一带一路’”，撰写调研报告。\n$\\spadesuit$  调研我国当前的比较优势，提出符合我国比较优势的产业发展建议；结合自己的职业倾向和兴趣、特长，探讨如何培养和提升自己的比较优势，制定人生职业规划。\n$\\spadesuit$  搜集材料，展示第二次世界大战后主要国际金融危机的基本过程及影响，以及经济全球化时代国际金融危机对我国经济社会发展的影响；或针对我国出口面临的主要贸易壁垒，探讨我国企业如何打破贸易壁垒。\n$\\spadesuit$  搜集2014年亚洲太平洋经济合作组织领导人非正式会议、2016年二十国集团领导人杭州峰会、2017年金砖国家领导人厦门会晤的材料，分析中国主办这些活动的重要意义；了解二十国集团、亚洲太平洋经济合作组织、金砖国家的发展历程及中国在其中发挥的作用；搜集材料，谈谈这些平台为世界经济增长和全球经济治理作出了哪些贡献。\n$\\spadesuit$  搜集有关经济全球化的不同观点，阐释经济全球化开放、包容、普惠、平衡、共赢的发展方向，探讨如何在利用好国际国内两个市场、两种资源的同时维护好国家经济安全；或与身边的人交流经济全球化对个人生活的影响。\n$\\spadesuit$  搜集有关联合国议事和决策的规则及其执行机制的材料，分析\n中国在联合国的地位和作用；或展示世界贸易组织、世界银行、国际货币基金组织的主要发展历程、基本职能以及中国在其中发挥的作用；或探讨构建人类命运共同体的意义，评估国际组织对我们生活的影响。\n$\\spadesuit$  搜集欧洲联盟、非洲联盟、东南亚国家联盟、亚洲太平洋经济合作组织等区域性国际组织的资料，感受和评估区域性国际组织在国际事务中的作用；或模拟国际论坛和国际对话，举办辩论会；或搜集中国倡导成立的区域性国际组织或机制（上海合作组织、澜沧江一湄公河合作、亚洲基础设施投资银行等）的资料，了解它们的职能，评价中国在其中发挥的作用。", CJ_module: "模块1：当代国际政治与经济"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:36"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:36", title: "2.2", description: "引述有关资料，全面阐述和平、发展、合作、共赢的历史潮流，描述当前世界之变、时代之变、历史之变正以前所未有的方式展开；解释我国独立自主的和平外交政策，阐述合作共赢的理念，认识促进世界和平与发展、推动构建人类命运共同体的意义", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"$\\\\spadesuit$  采用宣传板报等形式，选取典型国家，展示“君主立宪制”和“民主共和制”两种国家管理形式，说明各自的特点。\\n$\\\\spadesuit$  以“国家结构形式的形成与发展”为题，查阅有关文献，探究“联邦制”和“单一制”的历史成因，比较两者之间的差异。\\n$\\\\spadesuit$  可聚焦有关边界问题，讨论在发展睦邻关系的同时如何维护主权安全。\\n$\\\\spadesuit$  以中美关系、中俄关系、中日关系的发展变化等为例，找出影响国家间关系的主要因素，讨论国家利益和国家实力在国际关系中的作用，以及对我国外交政策的影响。\\n$\\\\spadesuit$  结合实例，阐释世界各国弘扬和平、发展、公平、正义、民主、自由的全人类共同价值的意义。\\n$\\\\spadesuit$  以“合作共赢是最大公约数”为题，组织辩论赛、主题征文、新闻素材搜集等活动。可就“共建‘一带一路’”，撰写调研报告。\\n$\\\\spadesuit$  调研我国当前的比较优势，提出符合我国比较优势的产业发展建议；结合自己的职业倾向和兴趣、特长，探讨如何培养和提升自己的比较优势，制定人生职业规划。\\n$\\\\spadesuit$  搜集材料，展示第二次世界大战后主要国际金融危机的基本过程及影响，以及经济全球化时代国际金融危机对我国经济社会发展的影响；或针对我国出口面临的主要贸易壁垒，探讨我国企业如何打破贸易壁垒。\\n$\\\\spadesuit$  搜集2014年亚洲太平洋经济合作组织领导人非正式会议、2016年二十国集团领导人杭州峰会、2017年金砖国家领导人厦门会晤的材料，分析中国主办这些活动的重要意义；了解二十国集团、亚洲太平洋经济合作组织、金砖国家的发展历程及中国在其中发挥的作用；搜集材料，谈谈这些平台为世界经济增长和全球经济治理作出了哪些贡献。\\n$\\\\spadesuit$  搜集有关经济全球化的不同观点，阐释经济全球化开放、包容、普惠、平衡、共赢的发展方向，探讨如何在利用好国际国内两个市场、两种资源的同时维护好国家经济安全；或与身边的人交流经济全球化对个人生活的影响。\\n$\\\\spadesuit$  搜集有关联合国议事和决策的规则及其执行机制的材料，分析\\n中国在联合国的地位和作用；或展示世界贸易组织、世界银行、国际货币基金组织的主要发展历程、基本职能以及中国在其中发挥的作用；或探讨构建人类命运共同体的意义，评估国际组织对我们生活的影响。\\n$\\\\spadesuit$  搜集欧洲联盟、非洲联盟、东南亚国家联盟、亚洲太平洋经济合作组织等区域性国际组织的资料，感受和评估区域性国际组织在国际事务中的作用；或模拟国际论坛和国际对话，举办辩论会；或搜集中国倡导成立的区域性国际组织或机制（上海合作组织、澜沧江一湄公河合作、亚洲基础设施投资银行等）的资料，了解它们的职能，评价中国在其中发挥的作用。\", \"module\": \"模块1：当代国际政治与经济\"}", CJ_teachingTips: "$\\spadesuit$  采用宣传板报等形式，选取典型国家，展示“君主立宪制”和“民主共和制”两种国家管理形式，说明各自的特点。\n$\\spadesuit$  以“国家结构形式的形成与发展”为题，查阅有关文献，探究“联邦制”和“单一制”的历史成因，比较两者之间的差异。\n$\\spadesuit$  可聚焦有关边界问题，讨论在发展睦邻关系的同时如何维护主权安全。\n$\\spadesuit$  以中美关系、中俄关系、中日关系的发展变化等为例，找出影响国家间关系的主要因素，讨论国家利益和国家实力在国际关系中的作用，以及对我国外交政策的影响。\n$\\spadesuit$  结合实例，阐释世界各国弘扬和平、发展、公平、正义、民主、自由的全人类共同价值的意义。\n$\\spadesuit$  以“合作共赢是最大公约数”为题，组织辩论赛、主题征文、新闻素材搜集等活动。可就“共建‘一带一路’”，撰写调研报告。\n$\\spadesuit$  调研我国当前的比较优势，提出符合我国比较优势的产业发展建议；结合自己的职业倾向和兴趣、特长，探讨如何培养和提升自己的比较优势，制定人生职业规划。\n$\\spadesuit$  搜集材料，展示第二次世界大战后主要国际金融危机的基本过程及影响，以及经济全球化时代国际金融危机对我国经济社会发展的影响；或针对我国出口面临的主要贸易壁垒，探讨我国企业如何打破贸易壁垒。\n$\\spadesuit$  搜集2014年亚洲太平洋经济合作组织领导人非正式会议、2016年二十国集团领导人杭州峰会、2017年金砖国家领导人厦门会晤的材料，分析中国主办这些活动的重要意义；了解二十国集团、亚洲太平洋经济合作组织、金砖国家的发展历程及中国在其中发挥的作用；搜集材料，谈谈这些平台为世界经济增长和全球经济治理作出了哪些贡献。\n$\\spadesuit$  搜集有关经济全球化的不同观点，阐释经济全球化开放、包容、普惠、平衡、共赢的发展方向，探讨如何在利用好国际国内两个市场、两种资源的同时维护好国家经济安全；或与身边的人交流经济全球化对个人生活的影响。\n$\\spadesuit$  搜集有关联合国议事和决策的规则及其执行机制的材料，分析\n中国在联合国的地位和作用；或展示世界贸易组织、世界银行、国际货币基金组织的主要发展历程、基本职能以及中国在其中发挥的作用；或探讨构建人类命运共同体的意义，评估国际组织对我们生活的影响。\n$\\spadesuit$  搜集欧洲联盟、非洲联盟、东南亚国家联盟、亚洲太平洋经济合作组织等区域性国际组织的资料，感受和评估区域性国际组织在国际事务中的作用；或模拟国际论坛和国际对话，举办辩论会；或搜集中国倡导成立的区域性国际组织或机制（上海合作组织、澜沧江一湄公河合作、亚洲基础设施投资银行等）的资料，了解它们的职能，评价中国在其中发挥的作用。", CJ_module: "模块1：当代国际政治与经济"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:37"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:37", title: "2.3", description: "阐明霸权主义、强权政治的危害，了解共商共建共享的全球治理观，理解推动平等有序的世界多极化的意义", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"$\\\\spadesuit$  采用宣传板报等形式，选取典型国家，展示“君主立宪制”和“民主共和制”两种国家管理形式，说明各自的特点。\\n$\\\\spadesuit$  以“国家结构形式的形成与发展”为题，查阅有关文献，探究“联邦制”和“单一制”的历史成因，比较两者之间的差异。\\n$\\\\spadesuit$  可聚焦有关边界问题，讨论在发展睦邻关系的同时如何维护主权安全。\\n$\\\\spadesuit$  以中美关系、中俄关系、中日关系的发展变化等为例，找出影响国家间关系的主要因素，讨论国家利益和国家实力在国际关系中的作用，以及对我国外交政策的影响。\\n$\\\\spadesuit$  结合实例，阐释世界各国弘扬和平、发展、公平、正义、民主、自由的全人类共同价值的意义。\\n$\\\\spadesuit$  以“合作共赢是最大公约数”为题，组织辩论赛、主题征文、新闻素材搜集等活动。可就“共建‘一带一路’”，撰写调研报告。\\n$\\\\spadesuit$  调研我国当前的比较优势，提出符合我国比较优势的产业发展建议；结合自己的职业倾向和兴趣、特长，探讨如何培养和提升自己的比较优势，制定人生职业规划。\\n$\\\\spadesuit$  搜集材料，展示第二次世界大战后主要国际金融危机的基本过程及影响，以及经济全球化时代国际金融危机对我国经济社会发展的影响；或针对我国出口面临的主要贸易壁垒，探讨我国企业如何打破贸易壁垒。\\n$\\\\spadesuit$  搜集2014年亚洲太平洋经济合作组织领导人非正式会议、2016年二十国集团领导人杭州峰会、2017年金砖国家领导人厦门会晤的材料，分析中国主办这些活动的重要意义；了解二十国集团、亚洲太平洋经济合作组织、金砖国家的发展历程及中国在其中发挥的作用；搜集材料，谈谈这些平台为世界经济增长和全球经济治理作出了哪些贡献。\\n$\\\\spadesuit$  搜集有关经济全球化的不同观点，阐释经济全球化开放、包容、普惠、平衡、共赢的发展方向，探讨如何在利用好国际国内两个市场、两种资源的同时维护好国家经济安全；或与身边的人交流经济全球化对个人生活的影响。\\n$\\\\spadesuit$  搜集有关联合国议事和决策的规则及其执行机制的材料，分析\\n中国在联合国的地位和作用；或展示世界贸易组织、世界银行、国际货币基金组织的主要发展历程、基本职能以及中国在其中发挥的作用；或探讨构建人类命运共同体的意义，评估国际组织对我们生活的影响。\\n$\\\\spadesuit$  搜集欧洲联盟、非洲联盟、东南亚国家联盟、亚洲太平洋经济合作组织等区域性国际组织的资料，感受和评估区域性国际组织在国际事务中的作用；或模拟国际论坛和国际对话，举办辩论会；或搜集中国倡导成立的区域性国际组织或机制（上海合作组织、澜沧江一湄公河合作、亚洲基础设施投资银行等）的资料，了解它们的职能，评价中国在其中发挥的作用。\", \"module\": \"模块1：当代国际政治与经济\"}", CJ_teachingTips: "$\\spadesuit$  采用宣传板报等形式，选取典型国家，展示“君主立宪制”和“民主共和制”两种国家管理形式，说明各自的特点。\n$\\spadesuit$  以“国家结构形式的形成与发展”为题，查阅有关文献，探究“联邦制”和“单一制”的历史成因，比较两者之间的差异。\n$\\spadesuit$  可聚焦有关边界问题，讨论在发展睦邻关系的同时如何维护主权安全。\n$\\spadesuit$  以中美关系、中俄关系、中日关系的发展变化等为例，找出影响国家间关系的主要因素，讨论国家利益和国家实力在国际关系中的作用，以及对我国外交政策的影响。\n$\\spadesuit$  结合实例，阐释世界各国弘扬和平、发展、公平、正义、民主、自由的全人类共同价值的意义。\n$\\spadesuit$  以“合作共赢是最大公约数”为题，组织辩论赛、主题征文、新闻素材搜集等活动。可就“共建‘一带一路’”，撰写调研报告。\n$\\spadesuit$  调研我国当前的比较优势，提出符合我国比较优势的产业发展建议；结合自己的职业倾向和兴趣、特长，探讨如何培养和提升自己的比较优势，制定人生职业规划。\n$\\spadesuit$  搜集材料，展示第二次世界大战后主要国际金融危机的基本过程及影响，以及经济全球化时代国际金融危机对我国经济社会发展的影响；或针对我国出口面临的主要贸易壁垒，探讨我国企业如何打破贸易壁垒。\n$\\spadesuit$  搜集2014年亚洲太平洋经济合作组织领导人非正式会议、2016年二十国集团领导人杭州峰会、2017年金砖国家领导人厦门会晤的材料，分析中国主办这些活动的重要意义；了解二十国集团、亚洲太平洋经济合作组织、金砖国家的发展历程及中国在其中发挥的作用；搜集材料，谈谈这些平台为世界经济增长和全球经济治理作出了哪些贡献。\n$\\spadesuit$  搜集有关经济全球化的不同观点，阐释经济全球化开放、包容、普惠、平衡、共赢的发展方向，探讨如何在利用好国际国内两个市场、两种资源的同时维护好国家经济安全；或与身边的人交流经济全球化对个人生活的影响。\n$\\spadesuit$  搜集有关联合国议事和决策的规则及其执行机制的材料，分析\n中国在联合国的地位和作用；或展示世界贸易组织、世界银行、国际货币基金组织的主要发展历程、基本职能以及中国在其中发挥的作用；或探讨构建人类命运共同体的意义，评估国际组织对我们生活的影响。\n$\\spadesuit$  搜集欧洲联盟、非洲联盟、东南亚国家联盟、亚洲太平洋经济合作组织等区域性国际组织的资料，感受和评估区域性国际组织在国际事务中的作用；或模拟国际论坛和国际对话，举办辩论会；或搜集中国倡导成立的区域性国际组织或机制（上海合作组织、澜沧江一湄公河合作、亚洲基础设施投资银行等）的资料，了解它们的职能，评价中国在其中发挥的作用。", CJ_module: "模块1：当代国际政治与经济"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:38"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:38", title: "3.1", description: "辨识国际经济中的比较优势，描述当代国际经济发展的基本特点和趋势", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"$\\\\spadesuit$  采用宣传板报等形式，选取典型国家，展示“君主立宪制”和“民主共和制”两种国家管理形式，说明各自的特点。\\n$\\\\spadesuit$  以“国家结构形式的形成与发展”为题，查阅有关文献，探究“联邦制”和“单一制”的历史成因，比较两者之间的差异。\\n$\\\\spadesuit$  可聚焦有关边界问题，讨论在发展睦邻关系的同时如何维护主权安全。\\n$\\\\spadesuit$  以中美关系、中俄关系、中日关系的发展变化等为例，找出影响国家间关系的主要因素，讨论国家利益和国家实力在国际关系中的作用，以及对我国外交政策的影响。\\n$\\\\spadesuit$  结合实例，阐释世界各国弘扬和平、发展、公平、正义、民主、自由的全人类共同价值的意义。\\n$\\\\spadesuit$  以“合作共赢是最大公约数”为题，组织辩论赛、主题征文、新闻素材搜集等活动。可就“共建‘一带一路’”，撰写调研报告。\\n$\\\\spadesuit$  调研我国当前的比较优势，提出符合我国比较优势的产业发展建议；结合自己的职业倾向和兴趣、特长，探讨如何培养和提升自己的比较优势，制定人生职业规划。\\n$\\\\spadesuit$  搜集材料，展示第二次世界大战后主要国际金融危机的基本过程及影响，以及经济全球化时代国际金融危机对我国经济社会发展的影响；或针对我国出口面临的主要贸易壁垒，探讨我国企业如何打破贸易壁垒。\\n$\\\\spadesuit$  搜集2014年亚洲太平洋经济合作组织领导人非正式会议、2016年二十国集团领导人杭州峰会、2017年金砖国家领导人厦门会晤的材料，分析中国主办这些活动的重要意义；了解二十国集团、亚洲太平洋经济合作组织、金砖国家的发展历程及中国在其中发挥的作用；搜集材料，谈谈这些平台为世界经济增长和全球经济治理作出了哪些贡献。\\n$\\\\spadesuit$  搜集有关经济全球化的不同观点，阐释经济全球化开放、包容、普惠、平衡、共赢的发展方向，探讨如何在利用好国际国内两个市场、两种资源的同时维护好国家经济安全；或与身边的人交流经济全球化对个人生活的影响。\\n$\\\\spadesuit$  搜集有关联合国议事和决策的规则及其执行机制的材料，分析\\n中国在联合国的地位和作用；或展示世界贸易组织、世界银行、国际货币基金组织的主要发展历程、基本职能以及中国在其中发挥的作用；或探讨构建人类命运共同体的意义，评估国际组织对我们生活的影响。\\n$\\\\spadesuit$  搜集欧洲联盟、非洲联盟、东南亚国家联盟、亚洲太平洋经济合作组织等区域性国际组织的资料，感受和评估区域性国际组织在国际事务中的作用；或模拟国际论坛和国际对话，举办辩论会；或搜集中国倡导成立的区域性国际组织或机制（上海合作组织、澜沧江一湄公河合作、亚洲基础设施投资银行等）的资料，了解它们的职能，评价中国在其中发挥的作用。\", \"module\": \"模块1：当代国际政治与经济\"}", CJ_teachingTips: "$\\spadesuit$  采用宣传板报等形式，选取典型国家，展示“君主立宪制”和“民主共和制”两种国家管理形式，说明各自的特点。\n$\\spadesuit$  以“国家结构形式的形成与发展”为题，查阅有关文献，探究“联邦制”和“单一制”的历史成因，比较两者之间的差异。\n$\\spadesuit$  可聚焦有关边界问题，讨论在发展睦邻关系的同时如何维护主权安全。\n$\\spadesuit$  以中美关系、中俄关系、中日关系的发展变化等为例，找出影响国家间关系的主要因素，讨论国家利益和国家实力在国际关系中的作用，以及对我国外交政策的影响。\n$\\spadesuit$  结合实例，阐释世界各国弘扬和平、发展、公平、正义、民主、自由的全人类共同价值的意义。\n$\\spadesuit$  以“合作共赢是最大公约数”为题，组织辩论赛、主题征文、新闻素材搜集等活动。可就“共建‘一带一路’”，撰写调研报告。\n$\\spadesuit$  调研我国当前的比较优势，提出符合我国比较优势的产业发展建议；结合自己的职业倾向和兴趣、特长，探讨如何培养和提升自己的比较优势，制定人生职业规划。\n$\\spadesuit$  搜集材料，展示第二次世界大战后主要国际金融危机的基本过程及影响，以及经济全球化时代国际金融危机对我国经济社会发展的影响；或针对我国出口面临的主要贸易壁垒，探讨我国企业如何打破贸易壁垒。\n$\\spadesuit$  搜集2014年亚洲太平洋经济合作组织领导人非正式会议、2016年二十国集团领导人杭州峰会、2017年金砖国家领导人厦门会晤的材料，分析中国主办这些活动的重要意义；了解二十国集团、亚洲太平洋经济合作组织、金砖国家的发展历程及中国在其中发挥的作用；搜集材料，谈谈这些平台为世界经济增长和全球经济治理作出了哪些贡献。\n$\\spadesuit$  搜集有关经济全球化的不同观点，阐释经济全球化开放、包容、普惠、平衡、共赢的发展方向，探讨如何在利用好国际国内两个市场、两种资源的同时维护好国家经济安全；或与身边的人交流经济全球化对个人生活的影响。\n$\\spadesuit$  搜集有关联合国议事和决策的规则及其执行机制的材料，分析\n中国在联合国的地位和作用；或展示世界贸易组织、世界银行、国际货币基金组织的主要发展历程、基本职能以及中国在其中发挥的作用；或探讨构建人类命运共同体的意义，评估国际组织对我们生活的影响。\n$\\spadesuit$  搜集欧洲联盟、非洲联盟、东南亚国家联盟、亚洲太平洋经济合作组织等区域性国际组织的资料，感受和评估区域性国际组织在国际事务中的作用；或模拟国际论坛和国际对话，举办辩论会；或搜集中国倡导成立的区域性国际组织或机制（上海合作组织、澜沧江一湄公河合作、亚洲基础设施投资银行等）的资料，了解它们的职能，评价中国在其中发挥的作用。", CJ_module: "模块1：当代国际政治与经济"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:39"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:39", title: "3.2", description: "分析经济全球化的机遇和挑战，坚持正确义利观，阐释推动建设开放型世界经济的意义", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"$\\\\spadesuit$  采用宣传板报等形式，选取典型国家，展示“君主立宪制”和“民主共和制”两种国家管理形式，说明各自的特点。\\n$\\\\spadesuit$  以“国家结构形式的形成与发展”为题，查阅有关文献，探究“联邦制”和“单一制”的历史成因，比较两者之间的差异。\\n$\\\\spadesuit$  可聚焦有关边界问题，讨论在发展睦邻关系的同时如何维护主权安全。\\n$\\\\spadesuit$  以中美关系、中俄关系、中日关系的发展变化等为例，找出影响国家间关系的主要因素，讨论国家利益和国家实力在国际关系中的作用，以及对我国外交政策的影响。\\n$\\\\spadesuit$  结合实例，阐释世界各国弘扬和平、发展、公平、正义、民主、自由的全人类共同价值的意义。\\n$\\\\spadesuit$  以“合作共赢是最大公约数”为题，组织辩论赛、主题征文、新闻素材搜集等活动。可就“共建‘一带一路’”，撰写调研报告。\\n$\\\\spadesuit$  调研我国当前的比较优势，提出符合我国比较优势的产业发展建议；结合自己的职业倾向和兴趣、特长，探讨如何培养和提升自己的比较优势，制定人生职业规划。\\n$\\\\spadesuit$  搜集材料，展示第二次世界大战后主要国际金融危机的基本过程及影响，以及经济全球化时代国际金融危机对我国经济社会发展的影响；或针对我国出口面临的主要贸易壁垒，探讨我国企业如何打破贸易壁垒。\\n$\\\\spadesuit$  搜集2014年亚洲太平洋经济合作组织领导人非正式会议、2016年二十国集团领导人杭州峰会、2017年金砖国家领导人厦门会晤的材料，分析中国主办这些活动的重要意义；了解二十国集团、亚洲太平洋经济合作组织、金砖国家的发展历程及中国在其中发挥的作用；搜集材料，谈谈这些平台为世界经济增长和全球经济治理作出了哪些贡献。\\n$\\\\spadesuit$  搜集有关经济全球化的不同观点，阐释经济全球化开放、包容、普惠、平衡、共赢的发展方向，探讨如何在利用好国际国内两个市场、两种资源的同时维护好国家经济安全；或与身边的人交流经济全球化对个人生活的影响。\\n$\\\\spadesuit$  搜集有关联合国议事和决策的规则及其执行机制的材料，分析\\n中国在联合国的地位和作用；或展示世界贸易组织、世界银行、国际货币基金组织的主要发展历程、基本职能以及中国在其中发挥的作用；或探讨构建人类命运共同体的意义，评估国际组织对我们生活的影响。\\n$\\\\spadesuit$  搜集欧洲联盟、非洲联盟、东南亚国家联盟、亚洲太平洋经济合作组织等区域性国际组织的资料，感受和评估区域性国际组织在国际事务中的作用；或模拟国际论坛和国际对话，举办辩论会；或搜集中国倡导成立的区域性国际组织或机制（上海合作组织、澜沧江一湄公河合作、亚洲基础设施投资银行等）的资料，了解它们的职能，评价中国在其中发挥的作用。\", \"module\": \"模块1：当代国际政治与经济\"}", CJ_teachingTips: "$\\spadesuit$  采用宣传板报等形式，选取典型国家，展示“君主立宪制”和“民主共和制”两种国家管理形式，说明各自的特点。\n$\\spadesuit$  以“国家结构形式的形成与发展”为题，查阅有关文献，探究“联邦制”和“单一制”的历史成因，比较两者之间的差异。\n$\\spadesuit$  可聚焦有关边界问题，讨论在发展睦邻关系的同时如何维护主权安全。\n$\\spadesuit$  以中美关系、中俄关系、中日关系的发展变化等为例，找出影响国家间关系的主要因素，讨论国家利益和国家实力在国际关系中的作用，以及对我国外交政策的影响。\n$\\spadesuit$  结合实例，阐释世界各国弘扬和平、发展、公平、正义、民主、自由的全人类共同价值的意义。\n$\\spadesuit$  以“合作共赢是最大公约数”为题，组织辩论赛、主题征文、新闻素材搜集等活动。可就“共建‘一带一路’”，撰写调研报告。\n$\\spadesuit$  调研我国当前的比较优势，提出符合我国比较优势的产业发展建议；结合自己的职业倾向和兴趣、特长，探讨如何培养和提升自己的比较优势，制定人生职业规划。\n$\\spadesuit$  搜集材料，展示第二次世界大战后主要国际金融危机的基本过程及影响，以及经济全球化时代国际金融危机对我国经济社会发展的影响；或针对我国出口面临的主要贸易壁垒，探讨我国企业如何打破贸易壁垒。\n$\\spadesuit$  搜集2014年亚洲太平洋经济合作组织领导人非正式会议、2016年二十国集团领导人杭州峰会、2017年金砖国家领导人厦门会晤的材料，分析中国主办这些活动的重要意义；了解二十国集团、亚洲太平洋经济合作组织、金砖国家的发展历程及中国在其中发挥的作用；搜集材料，谈谈这些平台为世界经济增长和全球经济治理作出了哪些贡献。\n$\\spadesuit$  搜集有关经济全球化的不同观点，阐释经济全球化开放、包容、普惠、平衡、共赢的发展方向，探讨如何在利用好国际国内两个市场、两种资源的同时维护好国家经济安全；或与身边的人交流经济全球化对个人生活的影响。\n$\\spadesuit$  搜集有关联合国议事和决策的规则及其执行机制的材料，分析\n中国在联合国的地位和作用；或展示世界贸易组织、世界银行、国际货币基金组织的主要发展历程、基本职能以及中国在其中发挥的作用；或探讨构建人类命运共同体的意义，评估国际组织对我们生活的影响。\n$\\spadesuit$  搜集欧洲联盟、非洲联盟、东南亚国家联盟、亚洲太平洋经济合作组织等区域性国际组织的资料，感受和评估区域性国际组织在国际事务中的作用；或模拟国际论坛和国际对话，举办辩论会；或搜集中国倡导成立的区域性国际组织或机制（上海合作组织、澜沧江一湄公河合作、亚洲基础设施投资银行等）的资料，了解它们的职能，评价中国在其中发挥的作用。", CJ_module: "模块1：当代国际政治与经济"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:40"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:40", title: "3.3", description: "引用实例，说明中国如何推动经济全球化朝着更加开放、包容、普惠、平衡、共赢的方向发展", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"$\\\\spadesuit$  采用宣传板报等形式，选取典型国家，展示“君主立宪制”和“民主共和制”两种国家管理形式，说明各自的特点。\\n$\\\\spadesuit$  以“国家结构形式的形成与发展”为题，查阅有关文献，探究“联邦制”和“单一制”的历史成因，比较两者之间的差异。\\n$\\\\spadesuit$  可聚焦有关边界问题，讨论在发展睦邻关系的同时如何维护主权安全。\\n$\\\\spadesuit$  以中美关系、中俄关系、中日关系的发展变化等为例，找出影响国家间关系的主要因素，讨论国家利益和国家实力在国际关系中的作用，以及对我国外交政策的影响。\\n$\\\\spadesuit$  结合实例，阐释世界各国弘扬和平、发展、公平、正义、民主、自由的全人类共同价值的意义。\\n$\\\\spadesuit$  以“合作共赢是最大公约数”为题，组织辩论赛、主题征文、新闻素材搜集等活动。可就“共建‘一带一路’”，撰写调研报告。\\n$\\\\spadesuit$  调研我国当前的比较优势，提出符合我国比较优势的产业发展建议；结合自己的职业倾向和兴趣、特长，探讨如何培养和提升自己的比较优势，制定人生职业规划。\\n$\\\\spadesuit$  搜集材料，展示第二次世界大战后主要国际金融危机的基本过程及影响，以及经济全球化时代国际金融危机对我国经济社会发展的影响；或针对我国出口面临的主要贸易壁垒，探讨我国企业如何打破贸易壁垒。\\n$\\\\spadesuit$  搜集2014年亚洲太平洋经济合作组织领导人非正式会议、2016年二十国集团领导人杭州峰会、2017年金砖国家领导人厦门会晤的材料，分析中国主办这些活动的重要意义；了解二十国集团、亚洲太平洋经济合作组织、金砖国家的发展历程及中国在其中发挥的作用；搜集材料，谈谈这些平台为世界经济增长和全球经济治理作出了哪些贡献。\\n$\\\\spadesuit$  搜集有关经济全球化的不同观点，阐释经济全球化开放、包容、普惠、平衡、共赢的发展方向，探讨如何在利用好国际国内两个市场、两种资源的同时维护好国家经济安全；或与身边的人交流经济全球化对个人生活的影响。\\n$\\\\spadesuit$  搜集有关联合国议事和决策的规则及其执行机制的材料，分析\\n中国在联合国的地位和作用；或展示世界贸易组织、世界银行、国际货币基金组织的主要发展历程、基本职能以及中国在其中发挥的作用；或探讨构建人类命运共同体的意义，评估国际组织对我们生活的影响。\\n$\\\\spadesuit$  搜集欧洲联盟、非洲联盟、东南亚国家联盟、亚洲太平洋经济合作组织等区域性国际组织的资料，感受和评估区域性国际组织在国际事务中的作用；或模拟国际论坛和国际对话，举办辩论会；或搜集中国倡导成立的区域性国际组织或机制（上海合作组织、澜沧江一湄公河合作、亚洲基础设施投资银行等）的资料，了解它们的职能，评价中国在其中发挥的作用。\", \"module\": \"模块1：当代国际政治与经济\"}", CJ_teachingTips: "$\\spadesuit$  采用宣传板报等形式，选取典型国家，展示“君主立宪制”和“民主共和制”两种国家管理形式，说明各自的特点。\n$\\spadesuit$  以“国家结构形式的形成与发展”为题，查阅有关文献，探究“联邦制”和“单一制”的历史成因，比较两者之间的差异。\n$\\spadesuit$  可聚焦有关边界问题，讨论在发展睦邻关系的同时如何维护主权安全。\n$\\spadesuit$  以中美关系、中俄关系、中日关系的发展变化等为例，找出影响国家间关系的主要因素，讨论国家利益和国家实力在国际关系中的作用，以及对我国外交政策的影响。\n$\\spadesuit$  结合实例，阐释世界各国弘扬和平、发展、公平、正义、民主、自由的全人类共同价值的意义。\n$\\spadesuit$  以“合作共赢是最大公约数”为题，组织辩论赛、主题征文、新闻素材搜集等活动。可就“共建‘一带一路’”，撰写调研报告。\n$\\spadesuit$  调研我国当前的比较优势，提出符合我国比较优势的产业发展建议；结合自己的职业倾向和兴趣、特长，探讨如何培养和提升自己的比较优势，制定人生职业规划。\n$\\spadesuit$  搜集材料，展示第二次世界大战后主要国际金融危机的基本过程及影响，以及经济全球化时代国际金融危机对我国经济社会发展的影响；或针对我国出口面临的主要贸易壁垒，探讨我国企业如何打破贸易壁垒。\n$\\spadesuit$  搜集2014年亚洲太平洋经济合作组织领导人非正式会议、2016年二十国集团领导人杭州峰会、2017年金砖国家领导人厦门会晤的材料，分析中国主办这些活动的重要意义；了解二十国集团、亚洲太平洋经济合作组织、金砖国家的发展历程及中国在其中发挥的作用；搜集材料，谈谈这些平台为世界经济增长和全球经济治理作出了哪些贡献。\n$\\spadesuit$  搜集有关经济全球化的不同观点，阐释经济全球化开放、包容、普惠、平衡、共赢的发展方向，探讨如何在利用好国际国内两个市场、两种资源的同时维护好国家经济安全；或与身边的人交流经济全球化对个人生活的影响。\n$\\spadesuit$  搜集有关联合国议事和决策的规则及其执行机制的材料，分析\n中国在联合国的地位和作用；或展示世界贸易组织、世界银行、国际货币基金组织的主要发展历程、基本职能以及中国在其中发挥的作用；或探讨构建人类命运共同体的意义，评估国际组织对我们生活的影响。\n$\\spadesuit$  搜集欧洲联盟、非洲联盟、东南亚国家联盟、亚洲太平洋经济合作组织等区域性国际组织的资料，感受和评估区域性国际组织在国际事务中的作用；或模拟国际论坛和国际对话，举办辩论会；或搜集中国倡导成立的区域性国际组织或机制（上海合作组织、澜沧江一湄公河合作、亚洲基础设施投资银行等）的资料，了解它们的职能，评价中国在其中发挥的作用。", CJ_module: "模块1：当代国际政治与经济"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:41"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:41", title: "4.1", description: "阐释联合国宪章倡导的国际关系基本准则，评析联合国在国际事务中发挥的作用；分析世界贸易组织、世界银行、国际货币基金组织、亚洲基础设施投资银行等在国际经济事务中发挥的作用", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"$\\\\spadesuit$  采用宣传板报等形式，选取典型国家，展示“君主立宪制”和“民主共和制”两种国家管理形式，说明各自的特点。\\n$\\\\spadesuit$  以“国家结构形式的形成与发展”为题，查阅有关文献，探究“联邦制”和“单一制”的历史成因，比较两者之间的差异。\\n$\\\\spadesuit$  可聚焦有关边界问题，讨论在发展睦邻关系的同时如何维护主权安全。\\n$\\\\spadesuit$  以中美关系、中俄关系、中日关系的发展变化等为例，找出影响国家间关系的主要因素，讨论国家利益和国家实力在国际关系中的作用，以及对我国外交政策的影响。\\n$\\\\spadesuit$  结合实例，阐释世界各国弘扬和平、发展、公平、正义、民主、自由的全人类共同价值的意义。\\n$\\\\spadesuit$  以“合作共赢是最大公约数”为题，组织辩论赛、主题征文、新闻素材搜集等活动。可就“共建‘一带一路’”，撰写调研报告。\\n$\\\\spadesuit$  调研我国当前的比较优势，提出符合我国比较优势的产业发展建议；结合自己的职业倾向和兴趣、特长，探讨如何培养和提升自己的比较优势，制定人生职业规划。\\n$\\\\spadesuit$  搜集材料，展示第二次世界大战后主要国际金融危机的基本过程及影响，以及经济全球化时代国际金融危机对我国经济社会发展的影响；或针对我国出口面临的主要贸易壁垒，探讨我国企业如何打破贸易壁垒。\\n$\\\\spadesuit$  搜集2014年亚洲太平洋经济合作组织领导人非正式会议、2016年二十国集团领导人杭州峰会、2017年金砖国家领导人厦门会晤的材料，分析中国主办这些活动的重要意义；了解二十国集团、亚洲太平洋经济合作组织、金砖国家的发展历程及中国在其中发挥的作用；搜集材料，谈谈这些平台为世界经济增长和全球经济治理作出了哪些贡献。\\n$\\\\spadesuit$  搜集有关经济全球化的不同观点，阐释经济全球化开放、包容、普惠、平衡、共赢的发展方向，探讨如何在利用好国际国内两个市场、两种资源的同时维护好国家经济安全；或与身边的人交流经济全球化对个人生活的影响。\\n$\\\\spadesuit$  搜集有关联合国议事和决策的规则及其执行机制的材料，分析\\n中国在联合国的地位和作用；或展示世界贸易组织、世界银行、国际货币基金组织的主要发展历程、基本职能以及中国在其中发挥的作用；或探讨构建人类命运共同体的意义，评估国际组织对我们生活的影响。\\n$\\\\spadesuit$  搜集欧洲联盟、非洲联盟、东南亚国家联盟、亚洲太平洋经济合作组织等区域性国际组织的资料，感受和评估区域性国际组织在国际事务中的作用；或模拟国际论坛和国际对话，举办辩论会；或搜集中国倡导成立的区域性国际组织或机制（上海合作组织、澜沧江一湄公河合作、亚洲基础设施投资银行等）的资料，了解它们的职能，评价中国在其中发挥的作用。\", \"module\": \"模块1：当代国际政治与经济\"}", CJ_teachingTips: "$\\spadesuit$  采用宣传板报等形式，选取典型国家，展示“君主立宪制”和“民主共和制”两种国家管理形式，说明各自的特点。\n$\\spadesuit$  以“国家结构形式的形成与发展”为题，查阅有关文献，探究“联邦制”和“单一制”的历史成因，比较两者之间的差异。\n$\\spadesuit$  可聚焦有关边界问题，讨论在发展睦邻关系的同时如何维护主权安全。\n$\\spadesuit$  以中美关系、中俄关系、中日关系的发展变化等为例，找出影响国家间关系的主要因素，讨论国家利益和国家实力在国际关系中的作用，以及对我国外交政策的影响。\n$\\spadesuit$  结合实例，阐释世界各国弘扬和平、发展、公平、正义、民主、自由的全人类共同价值的意义。\n$\\spadesuit$  以“合作共赢是最大公约数”为题，组织辩论赛、主题征文、新闻素材搜集等活动。可就“共建‘一带一路’”，撰写调研报告。\n$\\spadesuit$  调研我国当前的比较优势，提出符合我国比较优势的产业发展建议；结合自己的职业倾向和兴趣、特长，探讨如何培养和提升自己的比较优势，制定人生职业规划。\n$\\spadesuit$  搜集材料，展示第二次世界大战后主要国际金融危机的基本过程及影响，以及经济全球化时代国际金融危机对我国经济社会发展的影响；或针对我国出口面临的主要贸易壁垒，探讨我国企业如何打破贸易壁垒。\n$\\spadesuit$  搜集2014年亚洲太平洋经济合作组织领导人非正式会议、2016年二十国集团领导人杭州峰会、2017年金砖国家领导人厦门会晤的材料，分析中国主办这些活动的重要意义；了解二十国集团、亚洲太平洋经济合作组织、金砖国家的发展历程及中国在其中发挥的作用；搜集材料，谈谈这些平台为世界经济增长和全球经济治理作出了哪些贡献。\n$\\spadesuit$  搜集有关经济全球化的不同观点，阐释经济全球化开放、包容、普惠、平衡、共赢的发展方向，探讨如何在利用好国际国内两个市场、两种资源的同时维护好国家经济安全；或与身边的人交流经济全球化对个人生活的影响。\n$\\spadesuit$  搜集有关联合国议事和决策的规则及其执行机制的材料，分析\n中国在联合国的地位和作用；或展示世界贸易组织、世界银行、国际货币基金组织的主要发展历程、基本职能以及中国在其中发挥的作用；或探讨构建人类命运共同体的意义，评估国际组织对我们生活的影响。\n$\\spadesuit$  搜集欧洲联盟、非洲联盟、东南亚国家联盟、亚洲太平洋经济合作组织等区域性国际组织的资料，感受和评估区域性国际组织在国际事务中的作用；或模拟国际论坛和国际对话，举办辩论会；或搜集中国倡导成立的区域性国际组织或机制（上海合作组织、澜沧江一湄公河合作、亚洲基础设施投资银行等）的资料，了解它们的职能，评价中国在其中发挥的作用。", CJ_module: "模块1：当代国际政治与经济"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:42"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:42", title: "4.2", description: "识别主要的区域性国际组织，评价区域性国际组织在国际事务中发挥的作用", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"$\\\\spadesuit$  采用宣传板报等形式，选取典型国家，展示“君主立宪制”和“民主共和制”两种国家管理形式，说明各自的特点。\\n$\\\\spadesuit$  以“国家结构形式的形成与发展”为题，查阅有关文献，探究“联邦制”和“单一制”的历史成因，比较两者之间的差异。\\n$\\\\spadesuit$  可聚焦有关边界问题，讨论在发展睦邻关系的同时如何维护主权安全。\\n$\\\\spadesuit$  以中美关系、中俄关系、中日关系的发展变化等为例，找出影响国家间关系的主要因素，讨论国家利益和国家实力在国际关系中的作用，以及对我国外交政策的影响。\\n$\\\\spadesuit$  结合实例，阐释世界各国弘扬和平、发展、公平、正义、民主、自由的全人类共同价值的意义。\\n$\\\\spadesuit$  以“合作共赢是最大公约数”为题，组织辩论赛、主题征文、新闻素材搜集等活动。可就“共建‘一带一路’”，撰写调研报告。\\n$\\\\spadesuit$  调研我国当前的比较优势，提出符合我国比较优势的产业发展建议；结合自己的职业倾向和兴趣、特长，探讨如何培养和提升自己的比较优势，制定人生职业规划。\\n$\\\\spadesuit$  搜集材料，展示第二次世界大战后主要国际金融危机的基本过程及影响，以及经济全球化时代国际金融危机对我国经济社会发展的影响；或针对我国出口面临的主要贸易壁垒，探讨我国企业如何打破贸易壁垒。\\n$\\\\spadesuit$  搜集2014年亚洲太平洋经济合作组织领导人非正式会议、2016年二十国集团领导人杭州峰会、2017年金砖国家领导人厦门会晤的材料，分析中国主办这些活动的重要意义；了解二十国集团、亚洲太平洋经济合作组织、金砖国家的发展历程及中国在其中发挥的作用；搜集材料，谈谈这些平台为世界经济增长和全球经济治理作出了哪些贡献。\\n$\\\\spadesuit$  搜集有关经济全球化的不同观点，阐释经济全球化开放、包容、普惠、平衡、共赢的发展方向，探讨如何在利用好国际国内两个市场、两种资源的同时维护好国家经济安全；或与身边的人交流经济全球化对个人生活的影响。\\n$\\\\spadesuit$  搜集有关联合国议事和决策的规则及其执行机制的材料，分析\\n中国在联合国的地位和作用；或展示世界贸易组织、世界银行、国际货币基金组织的主要发展历程、基本职能以及中国在其中发挥的作用；或探讨构建人类命运共同体的意义，评估国际组织对我们生活的影响。\\n$\\\\spadesuit$  搜集欧洲联盟、非洲联盟、东南亚国家联盟、亚洲太平洋经济合作组织等区域性国际组织的资料，感受和评估区域性国际组织在国际事务中的作用；或模拟国际论坛和国际对话，举办辩论会；或搜集中国倡导成立的区域性国际组织或机制（上海合作组织、澜沧江一湄公河合作、亚洲基础设施投资银行等）的资料，了解它们的职能，评价中国在其中发挥的作用。\", \"module\": \"模块1：当代国际政治与经济\"}", CJ_teachingTips: "$\\spadesuit$  采用宣传板报等形式，选取典型国家，展示“君主立宪制”和“民主共和制”两种国家管理形式，说明各自的特点。\n$\\spadesuit$  以“国家结构形式的形成与发展”为题，查阅有关文献，探究“联邦制”和“单一制”的历史成因，比较两者之间的差异。\n$\\spadesuit$  可聚焦有关边界问题，讨论在发展睦邻关系的同时如何维护主权安全。\n$\\spadesuit$  以中美关系、中俄关系、中日关系的发展变化等为例，找出影响国家间关系的主要因素，讨论国家利益和国家实力在国际关系中的作用，以及对我国外交政策的影响。\n$\\spadesuit$  结合实例，阐释世界各国弘扬和平、发展、公平、正义、民主、自由的全人类共同价值的意义。\n$\\spadesuit$  以“合作共赢是最大公约数”为题，组织辩论赛、主题征文、新闻素材搜集等活动。可就“共建‘一带一路’”，撰写调研报告。\n$\\spadesuit$  调研我国当前的比较优势，提出符合我国比较优势的产业发展建议；结合自己的职业倾向和兴趣、特长，探讨如何培养和提升自己的比较优势，制定人生职业规划。\n$\\spadesuit$  搜集材料，展示第二次世界大战后主要国际金融危机的基本过程及影响，以及经济全球化时代国际金融危机对我国经济社会发展的影响；或针对我国出口面临的主要贸易壁垒，探讨我国企业如何打破贸易壁垒。\n$\\spadesuit$  搜集2014年亚洲太平洋经济合作组织领导人非正式会议、2016年二十国集团领导人杭州峰会、2017年金砖国家领导人厦门会晤的材料，分析中国主办这些活动的重要意义；了解二十国集团、亚洲太平洋经济合作组织、金砖国家的发展历程及中国在其中发挥的作用；搜集材料，谈谈这些平台为世界经济增长和全球经济治理作出了哪些贡献。\n$\\spadesuit$  搜集有关经济全球化的不同观点，阐释经济全球化开放、包容、普惠、平衡、共赢的发展方向，探讨如何在利用好国际国内两个市场、两种资源的同时维护好国家经济安全；或与身边的人交流经济全球化对个人生活的影响。\n$\\spadesuit$  搜集有关联合国议事和决策的规则及其执行机制的材料，分析\n中国在联合国的地位和作用；或展示世界贸易组织、世界银行、国际货币基金组织的主要发展历程、基本职能以及中国在其中发挥的作用；或探讨构建人类命运共同体的意义，评估国际组织对我们生活的影响。\n$\\spadesuit$  搜集欧洲联盟、非洲联盟、东南亚国家联盟、亚洲太平洋经济合作组织等区域性国际组织的资料，感受和评估区域性国际组织在国际事务中的作用；或模拟国际论坛和国际对话，举办辩论会；或搜集中国倡导成立的区域性国际组织或机制（上海合作组织、澜沧江一湄公河合作、亚洲基础设施投资银行等）的资料，了解它们的职能，评价中国在其中发挥的作用。", CJ_module: "模块1：当代国际政治与经济"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:43"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:43", title: "1.1", description: "了解我国民法典确立的民法基本原则，识别民事主体的民事权利和民事责任，明确民事权利与义务的关系", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"结合自己或家人的生活经验，讨论自愿、平等、诚信等民法原\\n则，了解自然人的民事权利能力和民事行为能力，理解如何依法行使民事权利、承担民事责任。\\n$\\\\spadesuit$  解析有关农村宅基地权属关系的案例，理解不同类型的所有权；探究小区业主对小区住宅、道路、绿地等的权属关系；讨论邻居之间的相邻权关系，列举团结互助邻里关系的事例，彰显友善的价值观念。\\n$\\\\spadesuit$  组织或者模拟商业行为，讨论合同对经济活动和社会生活的意义；引用实例，说明合同订立的基本规则。\\n$\\\\spadesuit$  搜集有关校园安全的纠纷，分析学校、家长、教师、学生承担责任的不同情形，增强安全意识。\\n$\\\\spadesuit$  以“常回家看看为什么要立法”为议题，引用自己的经验或家人的感受，说明法律与道德之间的关系。\\n$\\\\spadesuit$  组织模拟求职、招聘、应聘等活动，说明劳动者与用人单位各自的权利和义务；或以“我想创业”为题，讲解企业开办程序；模拟公司运营活动，了解经济活动中的法律制度。\\n$\\\\spadesuit$  模拟治安纠纷、医疗纠纷等争议解决活动，归纳不同调解方式的作用；或参观劳动争议仲裁、商事仲裁机构，讲解建立仲裁制度的意义；或组织民事诉讼、刑事诉讼、行政诉讼的模拟法庭，辨析不同诉讼的举证规则。\", \"module\": \"模块2：法律与生活\"}", CJ_teachingTips: "结合自己或家人的生活经验，讨论自愿、平等、诚信等民法原\n则，了解自然人的民事权利能力和民事行为能力，理解如何依法行使民事权利、承担民事责任。\n$\\spadesuit$  解析有关农村宅基地权属关系的案例，理解不同类型的所有权；探究小区业主对小区住宅、道路、绿地等的权属关系；讨论邻居之间的相邻权关系，列举团结互助邻里关系的事例，彰显友善的价值观念。\n$\\spadesuit$  组织或者模拟商业行为，讨论合同对经济活动和社会生活的意义；引用实例，说明合同订立的基本规则。\n$\\spadesuit$  搜集有关校园安全的纠纷，分析学校、家长、教师、学生承担责任的不同情形，增强安全意识。\n$\\spadesuit$  以“常回家看看为什么要立法”为议题，引用自己的经验或家人的感受，说明法律与道德之间的关系。\n$\\spadesuit$  组织模拟求职、招聘、应聘等活动，说明劳动者与用人单位各自的权利和义务；或以“我想创业”为题，讲解企业开办程序；模拟公司运营活动，了解经济活动中的法律制度。\n$\\spadesuit$  模拟治安纠纷、医疗纠纷等争议解决活动，归纳不同调解方式的作用；或参观劳动争议仲裁、商事仲裁机构，讲解建立仲裁制度的意义；或组织民事诉讼、刑事诉讼、行政诉讼的模拟法庭，辨析不同诉讼的举证规则。", CJ_module: "模块2：法律与生活"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:44"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:44", title: "1.2", description: "了解物权的主要类型，懂得维护物权的途径；理解知识产权保护的意义", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"结合自己或家人的生活经验，讨论自愿、平等、诚信等民法原\\n则，了解自然人的民事权利能力和民事行为能力，理解如何依法行使民事权利、承担民事责任。\\n$\\\\spadesuit$  解析有关农村宅基地权属关系的案例，理解不同类型的所有权；探究小区业主对小区住宅、道路、绿地等的权属关系；讨论邻居之间的相邻权关系，列举团结互助邻里关系的事例，彰显友善的价值观念。\\n$\\\\spadesuit$  组织或者模拟商业行为，讨论合同对经济活动和社会生活的意义；引用实例，说明合同订立的基本规则。\\n$\\\\spadesuit$  搜集有关校园安全的纠纷，分析学校、家长、教师、学生承担责任的不同情形，增强安全意识。\\n$\\\\spadesuit$  以“常回家看看为什么要立法”为议题，引用自己的经验或家人的感受，说明法律与道德之间的关系。\\n$\\\\spadesuit$  组织模拟求职、招聘、应聘等活动，说明劳动者与用人单位各自的权利和义务；或以“我想创业”为题，讲解企业开办程序；模拟公司运营活动，了解经济活动中的法律制度。\\n$\\\\spadesuit$  模拟治安纠纷、医疗纠纷等争议解决活动，归纳不同调解方式的作用；或参观劳动争议仲裁、商事仲裁机构，讲解建立仲裁制度的意义；或组织民事诉讼、刑事诉讼、行政诉讼的模拟法庭，辨析不同诉讼的举证规则。\", \"module\": \"模块2：法律与生活\"}", CJ_teachingTips: "结合自己或家人的生活经验，讨论自愿、平等、诚信等民法原\n则，了解自然人的民事权利能力和民事行为能力，理解如何依法行使民事权利、承担民事责任。\n$\\spadesuit$  解析有关农村宅基地权属关系的案例，理解不同类型的所有权；探究小区业主对小区住宅、道路、绿地等的权属关系；讨论邻居之间的相邻权关系，列举团结互助邻里关系的事例，彰显友善的价值观念。\n$\\spadesuit$  组织或者模拟商业行为，讨论合同对经济活动和社会生活的意义；引用实例，说明合同订立的基本规则。\n$\\spadesuit$  搜集有关校园安全的纠纷，分析学校、家长、教师、学生承担责任的不同情形，增强安全意识。\n$\\spadesuit$  以“常回家看看为什么要立法”为议题，引用自己的经验或家人的感受，说明法律与道德之间的关系。\n$\\spadesuit$  组织模拟求职、招聘、应聘等活动，说明劳动者与用人单位各自的权利和义务；或以“我想创业”为题，讲解企业开办程序；模拟公司运营活动，了解经济活动中的法律制度。\n$\\spadesuit$  模拟治安纠纷、医疗纠纷等争议解决活动，归纳不同调解方式的作用；或参观劳动争议仲裁、商事仲裁机构，讲解建立仲裁制度的意义；或组织民事诉讼、刑事诉讼、行政诉讼的模拟法庭，辨析不同诉讼的举证规则。", CJ_module: "模块2：法律与生活"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:45"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:45", title: "1.3", description: "简述合同的价值，理解合同的主要内容和违约责任，了解合同订立的程序和解决合同纠纷的途径", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"结合自己或家人的生活经验，讨论自愿、平等、诚信等民法原\\n则，了解自然人的民事权利能力和民事行为能力，理解如何依法行使民事权利、承担民事责任。\\n$\\\\spadesuit$  解析有关农村宅基地权属关系的案例，理解不同类型的所有权；探究小区业主对小区住宅、道路、绿地等的权属关系；讨论邻居之间的相邻权关系，列举团结互助邻里关系的事例，彰显友善的价值观念。\\n$\\\\spadesuit$  组织或者模拟商业行为，讨论合同对经济活动和社会生活的意义；引用实例，说明合同订立的基本规则。\\n$\\\\spadesuit$  搜集有关校园安全的纠纷，分析学校、家长、教师、学生承担责任的不同情形，增强安全意识。\\n$\\\\spadesuit$  以“常回家看看为什么要立法”为议题，引用自己的经验或家人的感受，说明法律与道德之间的关系。\\n$\\\\spadesuit$  组织模拟求职、招聘、应聘等活动，说明劳动者与用人单位各自的权利和义务；或以“我想创业”为题，讲解企业开办程序；模拟公司运营活动，了解经济活动中的法律制度。\\n$\\\\spadesuit$  模拟治安纠纷、医疗纠纷等争议解决活动，归纳不同调解方式的作用；或参观劳动争议仲裁、商事仲裁机构，讲解建立仲裁制度的意义；或组织民事诉讼、刑事诉讼、行政诉讼的模拟法庭，辨析不同诉讼的举证规则。\", \"module\": \"模块2：法律与生活\"}", CJ_teachingTips: "结合自己或家人的生活经验，讨论自愿、平等、诚信等民法原\n则，了解自然人的民事权利能力和民事行为能力，理解如何依法行使民事权利、承担民事责任。\n$\\spadesuit$  解析有关农村宅基地权属关系的案例，理解不同类型的所有权；探究小区业主对小区住宅、道路、绿地等的权属关系；讨论邻居之间的相邻权关系，列举团结互助邻里关系的事例，彰显友善的价值观念。\n$\\spadesuit$  组织或者模拟商业行为，讨论合同对经济活动和社会生活的意义；引用实例，说明合同订立的基本规则。\n$\\spadesuit$  搜集有关校园安全的纠纷，分析学校、家长、教师、学生承担责任的不同情形，增强安全意识。\n$\\spadesuit$  以“常回家看看为什么要立法”为议题，引用自己的经验或家人的感受，说明法律与道德之间的关系。\n$\\spadesuit$  组织模拟求职、招聘、应聘等活动，说明劳动者与用人单位各自的权利和义务；或以“我想创业”为题，讲解企业开办程序；模拟公司运营活动，了解经济活动中的法律制度。\n$\\spadesuit$  模拟治安纠纷、医疗纠纷等争议解决活动，归纳不同调解方式的作用；或参观劳动争议仲裁、商事仲裁机构，讲解建立仲裁制度的意义；或组织民事诉讼、刑事诉讼、行政诉讼的模拟法庭，辨析不同诉讼的举证规则。", CJ_module: "模块2：法律与生活"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:46"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:46", title: "1.4", description: "引用实例说明侵权责任的内容，树立依法承担责任的观念", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"结合自己或家人的生活经验，讨论自愿、平等、诚信等民法原\\n则，了解自然人的民事权利能力和民事行为能力，理解如何依法行使民事权利、承担民事责任。\\n$\\\\spadesuit$  解析有关农村宅基地权属关系的案例，理解不同类型的所有权；探究小区业主对小区住宅、道路、绿地等的权属关系；讨论邻居之间的相邻权关系，列举团结互助邻里关系的事例，彰显友善的价值观念。\\n$\\\\spadesuit$  组织或者模拟商业行为，讨论合同对经济活动和社会生活的意义；引用实例，说明合同订立的基本规则。\\n$\\\\spadesuit$  搜集有关校园安全的纠纷，分析学校、家长、教师、学生承担责任的不同情形，增强安全意识。\\n$\\\\spadesuit$  以“常回家看看为什么要立法”为议题，引用自己的经验或家人的感受，说明法律与道德之间的关系。\\n$\\\\spadesuit$  组织模拟求职、招聘、应聘等活动，说明劳动者与用人单位各自的权利和义务；或以“我想创业”为题，讲解企业开办程序；模拟公司运营活动，了解经济活动中的法律制度。\\n$\\\\spadesuit$  模拟治安纠纷、医疗纠纷等争议解决活动，归纳不同调解方式的作用；或参观劳动争议仲裁、商事仲裁机构，讲解建立仲裁制度的意义；或组织民事诉讼、刑事诉讼、行政诉讼的模拟法庭，辨析不同诉讼的举证规则。\", \"module\": \"模块2：法律与生活\"}", CJ_teachingTips: "结合自己或家人的生活经验，讨论自愿、平等、诚信等民法原\n则，了解自然人的民事权利能力和民事行为能力，理解如何依法行使民事权利、承担民事责任。\n$\\spadesuit$  解析有关农村宅基地权属关系的案例，理解不同类型的所有权；探究小区业主对小区住宅、道路、绿地等的权属关系；讨论邻居之间的相邻权关系，列举团结互助邻里关系的事例，彰显友善的价值观念。\n$\\spadesuit$  组织或者模拟商业行为，讨论合同对经济活动和社会生活的意义；引用实例，说明合同订立的基本规则。\n$\\spadesuit$  搜集有关校园安全的纠纷，分析学校、家长、教师、学生承担责任的不同情形，增强安全意识。\n$\\spadesuit$  以“常回家看看为什么要立法”为议题，引用自己的经验或家人的感受，说明法律与道德之间的关系。\n$\\spadesuit$  组织模拟求职、招聘、应聘等活动，说明劳动者与用人单位各自的权利和义务；或以“我想创业”为题，讲解企业开办程序；模拟公司运营活动，了解经济活动中的法律制度。\n$\\spadesuit$  模拟治安纠纷、医疗纠纷等争议解决活动，归纳不同调解方式的作用；或参观劳动争议仲裁、商事仲裁机构，讲解建立仲裁制度的意义；或组织民事诉讼、刑事诉讼、行政诉讼的模拟法庭，辨析不同诉讼的举证规则。", CJ_module: "模块2：法律与生活"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:47"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:47", title: "2.1", description: "了解抚养、扶养、赡养等民事关系，培育家庭责任意识", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"结合自己或家人的生活经验，讨论自愿、平等、诚信等民法原\\n则，了解自然人的民事权利能力和民事行为能力，理解如何依法行使民事权利、承担民事责任。\\n$\\\\spadesuit$  解析有关农村宅基地权属关系的案例，理解不同类型的所有权；探究小区业主对小区住宅、道路、绿地等的权属关系；讨论邻居之间的相邻权关系，列举团结互助邻里关系的事例，彰显友善的价值观念。\\n$\\\\spadesuit$  组织或者模拟商业行为，讨论合同对经济活动和社会生活的意义；引用实例，说明合同订立的基本规则。\\n$\\\\spadesuit$  搜集有关校园安全的纠纷，分析学校、家长、教师、学生承担责任的不同情形，增强安全意识。\\n$\\\\spadesuit$  以“常回家看看为什么要立法”为议题，引用自己的经验或家人的感受，说明法律与道德之间的关系。\\n$\\\\spadesuit$  组织模拟求职、招聘、应聘等活动，说明劳动者与用人单位各自的权利和义务；或以“我想创业”为题，讲解企业开办程序；模拟公司运营活动，了解经济活动中的法律制度。\\n$\\\\spadesuit$  模拟治安纠纷、医疗纠纷等争议解决活动，归纳不同调解方式的作用；或参观劳动争议仲裁、商事仲裁机构，讲解建立仲裁制度的意义；或组织民事诉讼、刑事诉讼、行政诉讼的模拟法庭，辨析不同诉讼的举证规则。\", \"module\": \"模块2：法律与生活\"}", CJ_teachingTips: "结合自己或家人的生活经验，讨论自愿、平等、诚信等民法原\n则，了解自然人的民事权利能力和民事行为能力，理解如何依法行使民事权利、承担民事责任。\n$\\spadesuit$  解析有关农村宅基地权属关系的案例，理解不同类型的所有权；探究小区业主对小区住宅、道路、绿地等的权属关系；讨论邻居之间的相邻权关系，列举团结互助邻里关系的事例，彰显友善的价值观念。\n$\\spadesuit$  组织或者模拟商业行为，讨论合同对经济活动和社会生活的意义；引用实例，说明合同订立的基本规则。\n$\\spadesuit$  搜集有关校园安全的纠纷，分析学校、家长、教师、学生承担责任的不同情形，增强安全意识。\n$\\spadesuit$  以“常回家看看为什么要立法”为议题，引用自己的经验或家人的感受，说明法律与道德之间的关系。\n$\\spadesuit$  组织模拟求职、招聘、应聘等活动，说明劳动者与用人单位各自的权利和义务；或以“我想创业”为题，讲解企业开办程序；模拟公司运营活动，了解经济活动中的法律制度。\n$\\spadesuit$  模拟治安纠纷、医疗纠纷等争议解决活动，归纳不同调解方式的作用；或参观劳动争议仲裁、商事仲裁机构，讲解建立仲裁制度的意义；或组织民事诉讼、刑事诉讼、行政诉讼的模拟法庭，辨析不同诉讼的举证规则。", CJ_module: "模块2：法律与生活"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:48"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:48", title: "2.2", description: "理解婚姻法律关系，树立正确的婚姻家庭观念", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"结合自己或家人的生活经验，讨论自愿、平等、诚信等民法原\\n则，了解自然人的民事权利能力和民事行为能力，理解如何依法行使民事权利、承担民事责任。\\n$\\\\spadesuit$  解析有关农村宅基地权属关系的案例，理解不同类型的所有权；探究小区业主对小区住宅、道路、绿地等的权属关系；讨论邻居之间的相邻权关系，列举团结互助邻里关系的事例，彰显友善的价值观念。\\n$\\\\spadesuit$  组织或者模拟商业行为，讨论合同对经济活动和社会生活的意义；引用实例，说明合同订立的基本规则。\\n$\\\\spadesuit$  搜集有关校园安全的纠纷，分析学校、家长、教师、学生承担责任的不同情形，增强安全意识。\\n$\\\\spadesuit$  以“常回家看看为什么要立法”为议题，引用自己的经验或家人的感受，说明法律与道德之间的关系。\\n$\\\\spadesuit$  组织模拟求职、招聘、应聘等活动，说明劳动者与用人单位各自的权利和义务；或以“我想创业”为题，讲解企业开办程序；模拟公司运营活动，了解经济活动中的法律制度。\\n$\\\\spadesuit$  模拟治安纠纷、医疗纠纷等争议解决活动，归纳不同调解方式的作用；或参观劳动争议仲裁、商事仲裁机构，讲解建立仲裁制度的意义；或组织民事诉讼、刑事诉讼、行政诉讼的模拟法庭，辨析不同诉讼的举证规则。\", \"module\": \"模块2：法律与生活\"}", CJ_teachingTips: "结合自己或家人的生活经验，讨论自愿、平等、诚信等民法原\n则，了解自然人的民事权利能力和民事行为能力，理解如何依法行使民事权利、承担民事责任。\n$\\spadesuit$  解析有关农村宅基地权属关系的案例，理解不同类型的所有权；探究小区业主对小区住宅、道路、绿地等的权属关系；讨论邻居之间的相邻权关系，列举团结互助邻里关系的事例，彰显友善的价值观念。\n$\\spadesuit$  组织或者模拟商业行为，讨论合同对经济活动和社会生活的意义；引用实例，说明合同订立的基本规则。\n$\\spadesuit$  搜集有关校园安全的纠纷，分析学校、家长、教师、学生承担责任的不同情形，增强安全意识。\n$\\spadesuit$  以“常回家看看为什么要立法”为议题，引用自己的经验或家人的感受，说明法律与道德之间的关系。\n$\\spadesuit$  组织模拟求职、招聘、应聘等活动，说明劳动者与用人单位各自的权利和义务；或以“我想创业”为题，讲解企业开办程序；模拟公司运营活动，了解经济活动中的法律制度。\n$\\spadesuit$  模拟治安纠纷、医疗纠纷等争议解决活动，归纳不同调解方式的作用；或参观劳动争议仲裁、商事仲裁机构，讲解建立仲裁制度的意义；或组织民事诉讼、刑事诉讼、行政诉讼的模拟法庭，辨析不同诉讼的举证规则。", CJ_module: "模块2：法律与生活"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:49"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:49", title: "3.1", description: "理解劳动者的权利和义务，了解劳动合同的主要内容和劳动者依法维权的途径、方式", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"结合自己或家人的生活经验，讨论自愿、平等、诚信等民法原\\n则，了解自然人的民事权利能力和民事行为能力，理解如何依法行使民事权利、承担民事责任。\\n$\\\\spadesuit$  解析有关农村宅基地权属关系的案例，理解不同类型的所有权；探究小区业主对小区住宅、道路、绿地等的权属关系；讨论邻居之间的相邻权关系，列举团结互助邻里关系的事例，彰显友善的价值观念。\\n$\\\\spadesuit$  组织或者模拟商业行为，讨论合同对经济活动和社会生活的意义；引用实例，说明合同订立的基本规则。\\n$\\\\spadesuit$  搜集有关校园安全的纠纷，分析学校、家长、教师、学生承担责任的不同情形，增强安全意识。\\n$\\\\spadesuit$  以“常回家看看为什么要立法”为议题，引用自己的经验或家人的感受，说明法律与道德之间的关系。\\n$\\\\spadesuit$  组织模拟求职、招聘、应聘等活动，说明劳动者与用人单位各自的权利和义务；或以“我想创业”为题，讲解企业开办程序；模拟公司运营活动，了解经济活动中的法律制度。\\n$\\\\spadesuit$  模拟治安纠纷、医疗纠纷等争议解决活动，归纳不同调解方式的作用；或参观劳动争议仲裁、商事仲裁机构，讲解建立仲裁制度的意义；或组织民事诉讼、刑事诉讼、行政诉讼的模拟法庭，辨析不同诉讼的举证规则。\", \"module\": \"模块2：法律与生活\"}", CJ_teachingTips: "结合自己或家人的生活经验，讨论自愿、平等、诚信等民法原\n则，了解自然人的民事权利能力和民事行为能力，理解如何依法行使民事权利、承担民事责任。\n$\\spadesuit$  解析有关农村宅基地权属关系的案例，理解不同类型的所有权；探究小区业主对小区住宅、道路、绿地等的权属关系；讨论邻居之间的相邻权关系，列举团结互助邻里关系的事例，彰显友善的价值观念。\n$\\spadesuit$  组织或者模拟商业行为，讨论合同对经济活动和社会生活的意义；引用实例，说明合同订立的基本规则。\n$\\spadesuit$  搜集有关校园安全的纠纷，分析学校、家长、教师、学生承担责任的不同情形，增强安全意识。\n$\\spadesuit$  以“常回家看看为什么要立法”为议题，引用自己的经验或家人的感受，说明法律与道德之间的关系。\n$\\spadesuit$  组织模拟求职、招聘、应聘等活动，说明劳动者与用人单位各自的权利和义务；或以“我想创业”为题，讲解企业开办程序；模拟公司运营活动，了解经济活动中的法律制度。\n$\\spadesuit$  模拟治安纠纷、医疗纠纷等争议解决活动，归纳不同调解方式的作用；或参观劳动争议仲裁、商事仲裁机构，讲解建立仲裁制度的意义；或组织民事诉讼、刑事诉讼、行政诉讼的模拟法庭，辨析不同诉讼的举证规则。", CJ_module: "模块2：法律与生活"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:50"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:50", title: "3.2", description: "列举与创业有关的企业登记、企业信息公示等基本法律规定，评述市场竞争的基本规则，说明依法经营的必要性", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"结合自己或家人的生活经验，讨论自愿、平等、诚信等民法原\\n则，了解自然人的民事权利能力和民事行为能力，理解如何依法行使民事权利、承担民事责任。\\n$\\\\spadesuit$  解析有关农村宅基地权属关系的案例，理解不同类型的所有权；探究小区业主对小区住宅、道路、绿地等的权属关系；讨论邻居之间的相邻权关系，列举团结互助邻里关系的事例，彰显友善的价值观念。\\n$\\\\spadesuit$  组织或者模拟商业行为，讨论合同对经济活动和社会生活的意义；引用实例，说明合同订立的基本规则。\\n$\\\\spadesuit$  搜集有关校园安全的纠纷，分析学校、家长、教师、学生承担责任的不同情形，增强安全意识。\\n$\\\\spadesuit$  以“常回家看看为什么要立法”为议题，引用自己的经验或家人的感受，说明法律与道德之间的关系。\\n$\\\\spadesuit$  组织模拟求职、招聘、应聘等活动，说明劳动者与用人单位各自的权利和义务；或以“我想创业”为题，讲解企业开办程序；模拟公司运营活动，了解经济活动中的法律制度。\\n$\\\\spadesuit$  模拟治安纠纷、医疗纠纷等争议解决活动，归纳不同调解方式的作用；或参观劳动争议仲裁、商事仲裁机构，讲解建立仲裁制度的意义；或组织民事诉讼、刑事诉讼、行政诉讼的模拟法庭，辨析不同诉讼的举证规则。\", \"module\": \"模块2：法律与生活\"}", CJ_teachingTips: "结合自己或家人的生活经验，讨论自愿、平等、诚信等民法原\n则，了解自然人的民事权利能力和民事行为能力，理解如何依法行使民事权利、承担民事责任。\n$\\spadesuit$  解析有关农村宅基地权属关系的案例，理解不同类型的所有权；探究小区业主对小区住宅、道路、绿地等的权属关系；讨论邻居之间的相邻权关系，列举团结互助邻里关系的事例，彰显友善的价值观念。\n$\\spadesuit$  组织或者模拟商业行为，讨论合同对经济活动和社会生活的意义；引用实例，说明合同订立的基本规则。\n$\\spadesuit$  搜集有关校园安全的纠纷，分析学校、家长、教师、学生承担责任的不同情形，增强安全意识。\n$\\spadesuit$  以“常回家看看为什么要立法”为议题，引用自己的经验或家人的感受，说明法律与道德之间的关系。\n$\\spadesuit$  组织模拟求职、招聘、应聘等活动，说明劳动者与用人单位各自的权利和义务；或以“我想创业”为题，讲解企业开办程序；模拟公司运营活动，了解经济活动中的法律制度。\n$\\spadesuit$  模拟治安纠纷、医疗纠纷等争议解决活动，归纳不同调解方式的作用；或参观劳动争议仲裁、商事仲裁机构，讲解建立仲裁制度的意义；或组织民事诉讼、刑事诉讼、行政诉讼的模拟法庭，辨析不同诉讼的举证规则。", CJ_module: "模块2：法律与生活"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:51"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:51", title: "4.1", description: "识别人民调解、行政调解等不同的调解方式，明确调解制度的特点和程序", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"结合自己或家人的生活经验，讨论自愿、平等、诚信等民法原\\n则，了解自然人的民事权利能力和民事行为能力，理解如何依法行使民事权利、承担民事责任。\\n$\\\\spadesuit$  解析有关农村宅基地权属关系的案例，理解不同类型的所有权；探究小区业主对小区住宅、道路、绿地等的权属关系；讨论邻居之间的相邻权关系，列举团结互助邻里关系的事例，彰显友善的价值观念。\\n$\\\\spadesuit$  组织或者模拟商业行为，讨论合同对经济活动和社会生活的意义；引用实例，说明合同订立的基本规则。\\n$\\\\spadesuit$  搜集有关校园安全的纠纷，分析学校、家长、教师、学生承担责任的不同情形，增强安全意识。\\n$\\\\spadesuit$  以“常回家看看为什么要立法”为议题，引用自己的经验或家人的感受，说明法律与道德之间的关系。\\n$\\\\spadesuit$  组织模拟求职、招聘、应聘等活动，说明劳动者与用人单位各自的权利和义务；或以“我想创业”为题，讲解企业开办程序；模拟公司运营活动，了解经济活动中的法律制度。\\n$\\\\spadesuit$  模拟治安纠纷、医疗纠纷等争议解决活动，归纳不同调解方式的作用；或参观劳动争议仲裁、商事仲裁机构，讲解建立仲裁制度的意义；或组织民事诉讼、刑事诉讼、行政诉讼的模拟法庭，辨析不同诉讼的举证规则。\", \"module\": \"模块2：法律与生活\"}", CJ_teachingTips: "结合自己或家人的生活经验，讨论自愿、平等、诚信等民法原\n则，了解自然人的民事权利能力和民事行为能力，理解如何依法行使民事权利、承担民事责任。\n$\\spadesuit$  解析有关农村宅基地权属关系的案例，理解不同类型的所有权；探究小区业主对小区住宅、道路、绿地等的权属关系；讨论邻居之间的相邻权关系，列举团结互助邻里关系的事例，彰显友善的价值观念。\n$\\spadesuit$  组织或者模拟商业行为，讨论合同对经济活动和社会生活的意义；引用实例，说明合同订立的基本规则。\n$\\spadesuit$  搜集有关校园安全的纠纷，分析学校、家长、教师、学生承担责任的不同情形，增强安全意识。\n$\\spadesuit$  以“常回家看看为什么要立法”为议题，引用自己的经验或家人的感受，说明法律与道德之间的关系。\n$\\spadesuit$  组织模拟求职、招聘、应聘等活动，说明劳动者与用人单位各自的权利和义务；或以“我想创业”为题，讲解企业开办程序；模拟公司运营活动，了解经济活动中的法律制度。\n$\\spadesuit$  模拟治安纠纷、医疗纠纷等争议解决活动，归纳不同调解方式的作用；或参观劳动争议仲裁、商事仲裁机构，讲解建立仲裁制度的意义；或组织民事诉讼、刑事诉讼、行政诉讼的模拟法庭，辨析不同诉讼的举证规则。", CJ_module: "模块2：法律与生活"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:52"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:52", title: "4.2", description: "列举劳动争议仲裁、商事仲裁等仲裁形式，明确仲裁制度的特点和程序", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"结合自己或家人的生活经验，讨论自愿、平等、诚信等民法原\\n则，了解自然人的民事权利能力和民事行为能力，理解如何依法行使民事权利、承担民事责任。\\n$\\\\spadesuit$  解析有关农村宅基地权属关系的案例，理解不同类型的所有权；探究小区业主对小区住宅、道路、绿地等的权属关系；讨论邻居之间的相邻权关系，列举团结互助邻里关系的事例，彰显友善的价值观念。\\n$\\\\spadesuit$  组织或者模拟商业行为，讨论合同对经济活动和社会生活的意义；引用实例，说明合同订立的基本规则。\\n$\\\\spadesuit$  搜集有关校园安全的纠纷，分析学校、家长、教师、学生承担责任的不同情形，增强安全意识。\\n$\\\\spadesuit$  以“常回家看看为什么要立法”为议题，引用自己的经验或家人的感受，说明法律与道德之间的关系。\\n$\\\\spadesuit$  组织模拟求职、招聘、应聘等活动，说明劳动者与用人单位各自的权利和义务；或以“我想创业”为题，讲解企业开办程序；模拟公司运营活动，了解经济活动中的法律制度。\\n$\\\\spadesuit$  模拟治安纠纷、医疗纠纷等争议解决活动，归纳不同调解方式的作用；或参观劳动争议仲裁、商事仲裁机构，讲解建立仲裁制度的意义；或组织民事诉讼、刑事诉讼、行政诉讼的模拟法庭，辨析不同诉讼的举证规则。\", \"module\": \"模块2：法律与生活\"}", CJ_teachingTips: "结合自己或家人的生活经验，讨论自愿、平等、诚信等民法原\n则，了解自然人的民事权利能力和民事行为能力，理解如何依法行使民事权利、承担民事责任。\n$\\spadesuit$  解析有关农村宅基地权属关系的案例，理解不同类型的所有权；探究小区业主对小区住宅、道路、绿地等的权属关系；讨论邻居之间的相邻权关系，列举团结互助邻里关系的事例，彰显友善的价值观念。\n$\\spadesuit$  组织或者模拟商业行为，讨论合同对经济活动和社会生活的意义；引用实例，说明合同订立的基本规则。\n$\\spadesuit$  搜集有关校园安全的纠纷，分析学校、家长、教师、学生承担责任的不同情形，增强安全意识。\n$\\spadesuit$  以“常回家看看为什么要立法”为议题，引用自己的经验或家人的感受，说明法律与道德之间的关系。\n$\\spadesuit$  组织模拟求职、招聘、应聘等活动，说明劳动者与用人单位各自的权利和义务；或以“我想创业”为题，讲解企业开办程序；模拟公司运营活动，了解经济活动中的法律制度。\n$\\spadesuit$  模拟治安纠纷、医疗纠纷等争议解决活动，归纳不同调解方式的作用；或参观劳动争议仲裁、商事仲裁机构，讲解建立仲裁制度的意义；或组织民事诉讼、刑事诉讼、行政诉讼的模拟法庭，辨析不同诉讼的举证规则。", CJ_module: "模块2：法律与生活"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:53"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:53", title: "4.3", description: "了解民事诉讼、刑事诉讼、行政诉讼的特点，说明不同诉讼中的举证规则，树立证据意识", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"结合自己或家人的生活经验，讨论自愿、平等、诚信等民法原\\n则，了解自然人的民事权利能力和民事行为能力，理解如何依法行使民事权利、承担民事责任。\\n$\\\\spadesuit$  解析有关农村宅基地权属关系的案例，理解不同类型的所有权；探究小区业主对小区住宅、道路、绿地等的权属关系；讨论邻居之间的相邻权关系，列举团结互助邻里关系的事例，彰显友善的价值观念。\\n$\\\\spadesuit$  组织或者模拟商业行为，讨论合同对经济活动和社会生活的意义；引用实例，说明合同订立的基本规则。\\n$\\\\spadesuit$  搜集有关校园安全的纠纷，分析学校、家长、教师、学生承担责任的不同情形，增强安全意识。\\n$\\\\spadesuit$  以“常回家看看为什么要立法”为议题，引用自己的经验或家人的感受，说明法律与道德之间的关系。\\n$\\\\spadesuit$  组织模拟求职、招聘、应聘等活动，说明劳动者与用人单位各自的权利和义务；或以“我想创业”为题，讲解企业开办程序；模拟公司运营活动，了解经济活动中的法律制度。\\n$\\\\spadesuit$  模拟治安纠纷、医疗纠纷等争议解决活动，归纳不同调解方式的作用；或参观劳动争议仲裁、商事仲裁机构，讲解建立仲裁制度的意义；或组织民事诉讼、刑事诉讼、行政诉讼的模拟法庭，辨析不同诉讼的举证规则。\", \"module\": \"模块2：法律与生活\"}", CJ_teachingTips: "结合自己或家人的生活经验，讨论自愿、平等、诚信等民法原\n则，了解自然人的民事权利能力和民事行为能力，理解如何依法行使民事权利、承担民事责任。\n$\\spadesuit$  解析有关农村宅基地权属关系的案例，理解不同类型的所有权；探究小区业主对小区住宅、道路、绿地等的权属关系；讨论邻居之间的相邻权关系，列举团结互助邻里关系的事例，彰显友善的价值观念。\n$\\spadesuit$  组织或者模拟商业行为，讨论合同对经济活动和社会生活的意义；引用实例，说明合同订立的基本规则。\n$\\spadesuit$  搜集有关校园安全的纠纷，分析学校、家长、教师、学生承担责任的不同情形，增强安全意识。\n$\\spadesuit$  以“常回家看看为什么要立法”为议题，引用自己的经验或家人的感受，说明法律与道德之间的关系。\n$\\spadesuit$  组织模拟求职、招聘、应聘等活动，说明劳动者与用人单位各自的权利和义务；或以“我想创业”为题，讲解企业开办程序；模拟公司运营活动，了解经济活动中的法律制度。\n$\\spadesuit$  模拟治安纠纷、医疗纠纷等争议解决活动，归纳不同调解方式的作用；或参观劳动争议仲裁、商事仲裁机构，讲解建立仲裁制度的意义；或组织民事诉讼、刑事诉讼、行政诉讼的模拟法庭，辨析不同诉讼的举证规则。", CJ_module: "模块2：法律与生活"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:54"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:54", title: "4.4", description: "概述公民的诉讼权利，熟悉公民获得法律援助的渠道", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"结合自己或家人的生活经验，讨论自愿、平等、诚信等民法原\\n则，了解自然人的民事权利能力和民事行为能力，理解如何依法行使民事权利、承担民事责任。\\n$\\\\spadesuit$  解析有关农村宅基地权属关系的案例，理解不同类型的所有权；探究小区业主对小区住宅、道路、绿地等的权属关系；讨论邻居之间的相邻权关系，列举团结互助邻里关系的事例，彰显友善的价值观念。\\n$\\\\spadesuit$  组织或者模拟商业行为，讨论合同对经济活动和社会生活的意义；引用实例，说明合同订立的基本规则。\\n$\\\\spadesuit$  搜集有关校园安全的纠纷，分析学校、家长、教师、学生承担责任的不同情形，增强安全意识。\\n$\\\\spadesuit$  以“常回家看看为什么要立法”为议题，引用自己的经验或家人的感受，说明法律与道德之间的关系。\\n$\\\\spadesuit$  组织模拟求职、招聘、应聘等活动，说明劳动者与用人单位各自的权利和义务；或以“我想创业”为题，讲解企业开办程序；模拟公司运营活动，了解经济活动中的法律制度。\\n$\\\\spadesuit$  模拟治安纠纷、医疗纠纷等争议解决活动，归纳不同调解方式的作用；或参观劳动争议仲裁、商事仲裁机构，讲解建立仲裁制度的意义；或组织民事诉讼、刑事诉讼、行政诉讼的模拟法庭，辨析不同诉讼的举证规则。\", \"module\": \"模块2：法律与生活\"}", CJ_teachingTips: "结合自己或家人的生活经验，讨论自愿、平等、诚信等民法原\n则，了解自然人的民事权利能力和民事行为能力，理解如何依法行使民事权利、承担民事责任。\n$\\spadesuit$  解析有关农村宅基地权属关系的案例，理解不同类型的所有权；探究小区业主对小区住宅、道路、绿地等的权属关系；讨论邻居之间的相邻权关系，列举团结互助邻里关系的事例，彰显友善的价值观念。\n$\\spadesuit$  组织或者模拟商业行为，讨论合同对经济活动和社会生活的意义；引用实例，说明合同订立的基本规则。\n$\\spadesuit$  搜集有关校园安全的纠纷，分析学校、家长、教师、学生承担责任的不同情形，增强安全意识。\n$\\spadesuit$  以“常回家看看为什么要立法”为议题，引用自己的经验或家人的感受，说明法律与道德之间的关系。\n$\\spadesuit$  组织模拟求职、招聘、应聘等活动，说明劳动者与用人单位各自的权利和义务；或以“我想创业”为题，讲解企业开办程序；模拟公司运营活动，了解经济活动中的法律制度。\n$\\spadesuit$  模拟治安纠纷、医疗纠纷等争议解决活动，归纳不同调解方式的作用；或参观劳动争议仲裁、商事仲裁机构，讲解建立仲裁制度的意义；或组织民事诉讼、刑事诉讼、行政诉讼的模拟法庭，辨析不同诉讼的举证规则。", CJ_module: "模块2：法律与生活"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:55"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:55", title: "1.1", description: "描述常见的思维活动，体会思维是人所特有的属性，了解思维的基本形态和特征；懂得正确思维的基本条件", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"$\\\\spadesuit$  可搜集资料，探究生活中的思维活动，概括人的思维的特征，分享自己对思维基本形态的认识。\\n$\\\\spadesuit$  列举生活中正、反两方面的事例，通过故事讲述、主题演讲等形式，分享如何运用科学思维处理学习、生活中遇到的困难。\\n$\\\\spadesuit$  联系科学思维与文学想象的差异，讨论逻辑思维与形象思维的特点，探究二者的关系。\\n$\\\\spadesuit$  辨析“飞矢不动”“白马非马”等论题。运用所学逻辑知识，分析日常生活中常见的各类逻辑和推理错误，培养逻辑思维能力。\\n结合学习、生活实际，从如何平衡和运筹长远目标和阶段目标、整体目标和具体目标的角度，体会辩证思维就是复杂性思维，是在关系、矛盾、运动、变化过程中进行思考。\\n$\\\\spadesuit$  可比较“刻舟求剑”等寓言故事与“草船借箭”等智慧故事中的思维方法。可开展调研活动，了解当地存在的发展问题，学会运用辩证思维的方法制定解决方案。\\n$\\\\spadesuit$  搜集科技发明背后的故事，了解科学家探究未知现象时的思维方法，尝试运用“头脑风暴”等创新思维的方法和技巧，举办创意大赛。\", \"module\": \"模块3：逻辑与思维\"}", CJ_teachingTips: "$\\spadesuit$  可搜集资料，探究生活中的思维活动，概括人的思维的特征，分享自己对思维基本形态的认识。\n$\\spadesuit$  列举生活中正、反两方面的事例，通过故事讲述、主题演讲等形式，分享如何运用科学思维处理学习、生活中遇到的困难。\n$\\spadesuit$  联系科学思维与文学想象的差异，讨论逻辑思维与形象思维的特点，探究二者的关系。\n$\\spadesuit$  辨析“飞矢不动”“白马非马”等论题。运用所学逻辑知识，分析日常生活中常见的各类逻辑和推理错误，培养逻辑思维能力。\n结合学习、生活实际，从如何平衡和运筹长远目标和阶段目标、整体目标和具体目标的角度，体会辩证思维就是复杂性思维，是在关系、矛盾、运动、变化过程中进行思考。\n$\\spadesuit$  可比较“刻舟求剑”等寓言故事与“草船借箭”等智慧故事中的思维方法。可开展调研活动，了解当地存在的发展问题，学会运用辩证思维的方法制定解决方案。\n$\\spadesuit$  搜集科技发明背后的故事，了解科学家探究未知现象时的思维方法，尝试运用“头脑风暴”等创新思维的方法和技巧，举办创意大赛。", CJ_module: "模块3：逻辑与思维"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:56"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:56", title: "1.2", description: "区分抽象思维和形象思维；掌握科学思维的特点，体悟学会科学思维的意义", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"$\\\\spadesuit$  可搜集资料，探究生活中的思维活动，概括人的思维的特征，分享自己对思维基本形态的认识。\\n$\\\\spadesuit$  列举生活中正、反两方面的事例，通过故事讲述、主题演讲等形式，分享如何运用科学思维处理学习、生活中遇到的困难。\\n$\\\\spadesuit$  联系科学思维与文学想象的差异，讨论逻辑思维与形象思维的特点，探究二者的关系。\\n$\\\\spadesuit$  辨析“飞矢不动”“白马非马”等论题。运用所学逻辑知识，分析日常生活中常见的各类逻辑和推理错误，培养逻辑思维能力。\\n结合学习、生活实际，从如何平衡和运筹长远目标和阶段目标、整体目标和具体目标的角度，体会辩证思维就是复杂性思维，是在关系、矛盾、运动、变化过程中进行思考。\\n$\\\\spadesuit$  可比较“刻舟求剑”等寓言故事与“草船借箭”等智慧故事中的思维方法。可开展调研活动，了解当地存在的发展问题，学会运用辩证思维的方法制定解决方案。\\n$\\\\spadesuit$  搜集科技发明背后的故事，了解科学家探究未知现象时的思维方法，尝试运用“头脑风暴”等创新思维的方法和技巧，举办创意大赛。\", \"module\": \"模块3：逻辑与思维\"}", CJ_teachingTips: "$\\spadesuit$  可搜集资料，探究生活中的思维活动，概括人的思维的特征，分享自己对思维基本形态的认识。\n$\\spadesuit$  列举生活中正、反两方面的事例，通过故事讲述、主题演讲等形式，分享如何运用科学思维处理学习、生活中遇到的困难。\n$\\spadesuit$  联系科学思维与文学想象的差异，讨论逻辑思维与形象思维的特点，探究二者的关系。\n$\\spadesuit$  辨析“飞矢不动”“白马非马”等论题。运用所学逻辑知识，分析日常生活中常见的各类逻辑和推理错误，培养逻辑思维能力。\n结合学习、生活实际，从如何平衡和运筹长远目标和阶段目标、整体目标和具体目标的角度，体会辩证思维就是复杂性思维，是在关系、矛盾、运动、变化过程中进行思考。\n$\\spadesuit$  可比较“刻舟求剑”等寓言故事与“草船借箭”等智慧故事中的思维方法。可开展调研活动，了解当地存在的发展问题，学会运用辩证思维的方法制定解决方案。\n$\\spadesuit$  搜集科技发明背后的故事，了解科学家探究未知现象时的思维方法，尝试运用“头脑风暴”等创新思维的方法和技巧，举办创意大赛。", CJ_module: "模块3：逻辑与思维"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:57"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:57", title: "2.1", description: "知道概念是反映事物本质属性的思维形式；理解任何概念都是内涵和外延的统一", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"$\\\\spadesuit$  可搜集资料，探究生活中的思维活动，概括人的思维的特征，分享自己对思维基本形态的认识。\\n$\\\\spadesuit$  列举生活中正、反两方面的事例，通过故事讲述、主题演讲等形式，分享如何运用科学思维处理学习、生活中遇到的困难。\\n$\\\\spadesuit$  联系科学思维与文学想象的差异，讨论逻辑思维与形象思维的特点，探究二者的关系。\\n$\\\\spadesuit$  辨析“飞矢不动”“白马非马”等论题。运用所学逻辑知识，分析日常生活中常见的各类逻辑和推理错误，培养逻辑思维能力。\\n结合学习、生活实际，从如何平衡和运筹长远目标和阶段目标、整体目标和具体目标的角度，体会辩证思维就是复杂性思维，是在关系、矛盾、运动、变化过程中进行思考。\\n$\\\\spadesuit$  可比较“刻舟求剑”等寓言故事与“草船借箭”等智慧故事中的思维方法。可开展调研活动，了解当地存在的发展问题，学会运用辩证思维的方法制定解决方案。\\n$\\\\spadesuit$  搜集科技发明背后的故事，了解科学家探究未知现象时的思维方法，尝试运用“头脑风暴”等创新思维的方法和技巧，举办创意大赛。\", \"module\": \"模块3：逻辑与思维\"}", CJ_teachingTips: "$\\spadesuit$  可搜集资料，探究生活中的思维活动，概括人的思维的特征，分享自己对思维基本形态的认识。\n$\\spadesuit$  列举生活中正、反两方面的事例，通过故事讲述、主题演讲等形式，分享如何运用科学思维处理学习、生活中遇到的困难。\n$\\spadesuit$  联系科学思维与文学想象的差异，讨论逻辑思维与形象思维的特点，探究二者的关系。\n$\\spadesuit$  辨析“飞矢不动”“白马非马”等论题。运用所学逻辑知识，分析日常生活中常见的各类逻辑和推理错误，培养逻辑思维能力。\n结合学习、生活实际，从如何平衡和运筹长远目标和阶段目标、整体目标和具体目标的角度，体会辩证思维就是复杂性思维，是在关系、矛盾、运动、变化过程中进行思考。\n$\\spadesuit$  可比较“刻舟求剑”等寓言故事与“草船借箭”等智慧故事中的思维方法。可开展调研活动，了解当地存在的发展问题，学会运用辩证思维的方法制定解决方案。\n$\\spadesuit$  搜集科技发明背后的故事，了解科学家探究未知现象时的思维方法，尝试运用“头脑风暴”等创新思维的方法和技巧，举办创意大赛。", CJ_module: "模块3：逻辑与思维"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:58"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:58", title: "2.2", description: "知道判断的基本特征；了解形成恰当判断的条件；学会正确运用判断；结合具体的判断活动，区分判断的不同类型", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"$\\\\spadesuit$  可搜集资料，探究生活中的思维活动，概括人的思维的特征，分享自己对思维基本形态的认识。\\n$\\\\spadesuit$  列举生活中正、反两方面的事例，通过故事讲述、主题演讲等形式，分享如何运用科学思维处理学习、生活中遇到的困难。\\n$\\\\spadesuit$  联系科学思维与文学想象的差异，讨论逻辑思维与形象思维的特点，探究二者的关系。\\n$\\\\spadesuit$  辨析“飞矢不动”“白马非马”等论题。运用所学逻辑知识，分析日常生活中常见的各类逻辑和推理错误，培养逻辑思维能力。\\n结合学习、生活实际，从如何平衡和运筹长远目标和阶段目标、整体目标和具体目标的角度，体会辩证思维就是复杂性思维，是在关系、矛盾、运动、变化过程中进行思考。\\n$\\\\spadesuit$  可比较“刻舟求剑”等寓言故事与“草船借箭”等智慧故事中的思维方法。可开展调研活动，了解当地存在的发展问题，学会运用辩证思维的方法制定解决方案。\\n$\\\\spadesuit$  搜集科技发明背后的故事，了解科学家探究未知现象时的思维方法，尝试运用“头脑风暴”等创新思维的方法和技巧，举办创意大赛。\", \"module\": \"模块3：逻辑与思维\"}", CJ_teachingTips: "$\\spadesuit$  可搜集资料，探究生活中的思维活动，概括人的思维的特征，分享自己对思维基本形态的认识。\n$\\spadesuit$  列举生活中正、反两方面的事例，通过故事讲述、主题演讲等形式，分享如何运用科学思维处理学习、生活中遇到的困难。\n$\\spadesuit$  联系科学思维与文学想象的差异，讨论逻辑思维与形象思维的特点，探究二者的关系。\n$\\spadesuit$  辨析“飞矢不动”“白马非马”等论题。运用所学逻辑知识，分析日常生活中常见的各类逻辑和推理错误，培养逻辑思维能力。\n结合学习、生活实际，从如何平衡和运筹长远目标和阶段目标、整体目标和具体目标的角度，体会辩证思维就是复杂性思维，是在关系、矛盾、运动、变化过程中进行思考。\n$\\spadesuit$  可比较“刻舟求剑”等寓言故事与“草船借箭”等智慧故事中的思维方法。可开展调研活动，了解当地存在的发展问题，学会运用辩证思维的方法制定解决方案。\n$\\spadesuit$  搜集科技发明背后的故事，了解科学家探究未知现象时的思维方法，尝试运用“头脑风暴”等创新思维的方法和技巧，举办创意大赛。", CJ_module: "模块3：逻辑与思维"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:59"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:59", title: "2.3", description: "了解推理的类型；掌握演绎推理的基本方法；学会归纳推理、类比推理；评析常见的推理错误", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"$\\\\spadesuit$  可搜集资料，探究生活中的思维活动，概括人的思维的特征，分享自己对思维基本形态的认识。\\n$\\\\spadesuit$  列举生活中正、反两方面的事例，通过故事讲述、主题演讲等形式，分享如何运用科学思维处理学习、生活中遇到的困难。\\n$\\\\spadesuit$  联系科学思维与文学想象的差异，讨论逻辑思维与形象思维的特点，探究二者的关系。\\n$\\\\spadesuit$  辨析“飞矢不动”“白马非马”等论题。运用所学逻辑知识，分析日常生活中常见的各类逻辑和推理错误，培养逻辑思维能力。\\n结合学习、生活实际，从如何平衡和运筹长远目标和阶段目标、整体目标和具体目标的角度，体会辩证思维就是复杂性思维，是在关系、矛盾、运动、变化过程中进行思考。\\n$\\\\spadesuit$  可比较“刻舟求剑”等寓言故事与“草船借箭”等智慧故事中的思维方法。可开展调研活动，了解当地存在的发展问题，学会运用辩证思维的方法制定解决方案。\\n$\\\\spadesuit$  搜集科技发明背后的故事，了解科学家探究未知现象时的思维方法，尝试运用“头脑风暴”等创新思维的方法和技巧，举办创意大赛。\", \"module\": \"模块3：逻辑与思维\"}", CJ_teachingTips: "$\\spadesuit$  可搜集资料，探究生活中的思维活动，概括人的思维的特征，分享自己对思维基本形态的认识。\n$\\spadesuit$  列举生活中正、反两方面的事例，通过故事讲述、主题演讲等形式，分享如何运用科学思维处理学习、生活中遇到的困难。\n$\\spadesuit$  联系科学思维与文学想象的差异，讨论逻辑思维与形象思维的特点，探究二者的关系。\n$\\spadesuit$  辨析“飞矢不动”“白马非马”等论题。运用所学逻辑知识，分析日常生活中常见的各类逻辑和推理错误，培养逻辑思维能力。\n结合学习、生活实际，从如何平衡和运筹长远目标和阶段目标、整体目标和具体目标的角度，体会辩证思维就是复杂性思维，是在关系、矛盾、运动、变化过程中进行思考。\n$\\spadesuit$  可比较“刻舟求剑”等寓言故事与“草船借箭”等智慧故事中的思维方法。可开展调研活动，了解当地存在的发展问题，学会运用辩证思维的方法制定解决方案。\n$\\spadesuit$  搜集科技发明背后的故事，了解科学家探究未知现象时的思维方法，尝试运用“头脑风暴”等创新思维的方法和技巧，举办创意大赛。", CJ_module: "模块3：逻辑与思维"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:60"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:60", title: "2.4", description: "辨析常见的逻辑错误，掌握形式逻辑的三个基本规律", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"$\\\\spadesuit$  可搜集资料，探究生活中的思维活动，概括人的思维的特征，分享自己对思维基本形态的认识。\\n$\\\\spadesuit$  列举生活中正、反两方面的事例，通过故事讲述、主题演讲等形式，分享如何运用科学思维处理学习、生活中遇到的困难。\\n$\\\\spadesuit$  联系科学思维与文学想象的差异，讨论逻辑思维与形象思维的特点，探究二者的关系。\\n$\\\\spadesuit$  辨析“飞矢不动”“白马非马”等论题。运用所学逻辑知识，分析日常生活中常见的各类逻辑和推理错误，培养逻辑思维能力。\\n结合学习、生活实际，从如何平衡和运筹长远目标和阶段目标、整体目标和具体目标的角度，体会辩证思维就是复杂性思维，是在关系、矛盾、运动、变化过程中进行思考。\\n$\\\\spadesuit$  可比较“刻舟求剑”等寓言故事与“草船借箭”等智慧故事中的思维方法。可开展调研活动，了解当地存在的发展问题，学会运用辩证思维的方法制定解决方案。\\n$\\\\spadesuit$  搜集科技发明背后的故事，了解科学家探究未知现象时的思维方法，尝试运用“头脑风暴”等创新思维的方法和技巧，举办创意大赛。\", \"module\": \"模块3：逻辑与思维\"}", CJ_teachingTips: "$\\spadesuit$  可搜集资料，探究生活中的思维活动，概括人的思维的特征，分享自己对思维基本形态的认识。\n$\\spadesuit$  列举生活中正、反两方面的事例，通过故事讲述、主题演讲等形式，分享如何运用科学思维处理学习、生活中遇到的困难。\n$\\spadesuit$  联系科学思维与文学想象的差异，讨论逻辑思维与形象思维的特点，探究二者的关系。\n$\\spadesuit$  辨析“飞矢不动”“白马非马”等论题。运用所学逻辑知识，分析日常生活中常见的各类逻辑和推理错误，培养逻辑思维能力。\n结合学习、生活实际，从如何平衡和运筹长远目标和阶段目标、整体目标和具体目标的角度，体会辩证思维就是复杂性思维，是在关系、矛盾、运动、变化过程中进行思考。\n$\\spadesuit$  可比较“刻舟求剑”等寓言故事与“草船借箭”等智慧故事中的思维方法。可开展调研活动，了解当地存在的发展问题，学会运用辩证思维的方法制定解决方案。\n$\\spadesuit$  搜集科技发明背后的故事，了解科学家探究未知现象时的思维方法，尝试运用“头脑风暴”等创新思维的方法和技巧，举办创意大赛。", CJ_module: "模块3：逻辑与思维"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:61"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:61", title: "3.1", description: "结合对复杂事物的把握，体会辩证思维的特征；理解分析与综合的辩证关系", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"$\\\\spadesuit$  可搜集资料，探究生活中的思维活动，概括人的思维的特征，分享自己对思维基本形态的认识。\\n$\\\\spadesuit$  列举生活中正、反两方面的事例，通过故事讲述、主题演讲等形式，分享如何运用科学思维处理学习、生活中遇到的困难。\\n$\\\\spadesuit$  联系科学思维与文学想象的差异，讨论逻辑思维与形象思维的特点，探究二者的关系。\\n$\\\\spadesuit$  辨析“飞矢不动”“白马非马”等论题。运用所学逻辑知识，分析日常生活中常见的各类逻辑和推理错误，培养逻辑思维能力。\\n结合学习、生活实际，从如何平衡和运筹长远目标和阶段目标、整体目标和具体目标的角度，体会辩证思维就是复杂性思维，是在关系、矛盾、运动、变化过程中进行思考。\\n$\\\\spadesuit$  可比较“刻舟求剑”等寓言故事与“草船借箭”等智慧故事中的思维方法。可开展调研活动，了解当地存在的发展问题，学会运用辩证思维的方法制定解决方案。\\n$\\\\spadesuit$  搜集科技发明背后的故事，了解科学家探究未知现象时的思维方法，尝试运用“头脑风暴”等创新思维的方法和技巧，举办创意大赛。\", \"module\": \"模块3：逻辑与思维\"}", CJ_teachingTips: "$\\spadesuit$  可搜集资料，探究生活中的思维活动，概括人的思维的特征，分享自己对思维基本形态的认识。\n$\\spadesuit$  列举生活中正、反两方面的事例，通过故事讲述、主题演讲等形式，分享如何运用科学思维处理学习、生活中遇到的困难。\n$\\spadesuit$  联系科学思维与文学想象的差异，讨论逻辑思维与形象思维的特点，探究二者的关系。\n$\\spadesuit$  辨析“飞矢不动”“白马非马”等论题。运用所学逻辑知识，分析日常生活中常见的各类逻辑和推理错误，培养逻辑思维能力。\n结合学习、生活实际，从如何平衡和运筹长远目标和阶段目标、整体目标和具体目标的角度，体会辩证思维就是复杂性思维，是在关系、矛盾、运动、变化过程中进行思考。\n$\\spadesuit$  可比较“刻舟求剑”等寓言故事与“草船借箭”等智慧故事中的思维方法。可开展调研活动，了解当地存在的发展问题，学会运用辩证思维的方法制定解决方案。\n$\\spadesuit$  搜集科技发明背后的故事，了解科学家探究未知现象时的思维方法，尝试运用“头脑风暴”等创新思维的方法和技巧，举办创意大赛。", CJ_module: "模块3：逻辑与思维"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:62"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:62", title: "3.2", description: "联系事物发展过程中的渐进性和飞跃性，懂得事物的发展过程是量变与质变的统一；理解质量互变规律；把握适度原则", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"$\\\\spadesuit$  可搜集资料，探究生活中的思维活动，概括人的思维的特征，分享自己对思维基本形态的认识。\\n$\\\\spadesuit$  列举生活中正、反两方面的事例，通过故事讲述、主题演讲等形式，分享如何运用科学思维处理学习、生活中遇到的困难。\\n$\\\\spadesuit$  联系科学思维与文学想象的差异，讨论逻辑思维与形象思维的特点，探究二者的关系。\\n$\\\\spadesuit$  辨析“飞矢不动”“白马非马”等论题。运用所学逻辑知识，分析日常生活中常见的各类逻辑和推理错误，培养逻辑思维能力。\\n结合学习、生活实际，从如何平衡和运筹长远目标和阶段目标、整体目标和具体目标的角度，体会辩证思维就是复杂性思维，是在关系、矛盾、运动、变化过程中进行思考。\\n$\\\\spadesuit$  可比较“刻舟求剑”等寓言故事与“草船借箭”等智慧故事中的思维方法。可开展调研活动，了解当地存在的发展问题，学会运用辩证思维的方法制定解决方案。\\n$\\\\spadesuit$  搜集科技发明背后的故事，了解科学家探究未知现象时的思维方法，尝试运用“头脑风暴”等创新思维的方法和技巧，举办创意大赛。\", \"module\": \"模块3：逻辑与思维\"}", CJ_teachingTips: "$\\spadesuit$  可搜集资料，探究生活中的思维活动，概括人的思维的特征，分享自己对思维基本形态的认识。\n$\\spadesuit$  列举生活中正、反两方面的事例，通过故事讲述、主题演讲等形式，分享如何运用科学思维处理学习、生活中遇到的困难。\n$\\spadesuit$  联系科学思维与文学想象的差异，讨论逻辑思维与形象思维的特点，探究二者的关系。\n$\\spadesuit$  辨析“飞矢不动”“白马非马”等论题。运用所学逻辑知识，分析日常生活中常见的各类逻辑和推理错误，培养逻辑思维能力。\n结合学习、生活实际，从如何平衡和运筹长远目标和阶段目标、整体目标和具体目标的角度，体会辩证思维就是复杂性思维，是在关系、矛盾、运动、变化过程中进行思考。\n$\\spadesuit$  可比较“刻舟求剑”等寓言故事与“草船借箭”等智慧故事中的思维方法。可开展调研活动，了解当地存在的发展问题，学会运用辩证思维的方法制定解决方案。\n$\\spadesuit$  搜集科技发明背后的故事，了解科学家探究未知现象时的思维方法，尝试运用“头脑风暴”等创新思维的方法和技巧，举办创意大赛。", CJ_module: "模块3：逻辑与思维"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:63"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:63", title: "3.3", description: "辨析简单肯定一切或否定一切的危害，了解辩证否定观的实质，体会认识不断深化的历程", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"$\\\\spadesuit$  可搜集资料，探究生活中的思维活动，概括人的思维的特征，分享自己对思维基本形态的认识。\\n$\\\\spadesuit$  列举生活中正、反两方面的事例，通过故事讲述、主题演讲等形式，分享如何运用科学思维处理学习、生活中遇到的困难。\\n$\\\\spadesuit$  联系科学思维与文学想象的差异，讨论逻辑思维与形象思维的特点，探究二者的关系。\\n$\\\\spadesuit$  辨析“飞矢不动”“白马非马”等论题。运用所学逻辑知识，分析日常生活中常见的各类逻辑和推理错误，培养逻辑思维能力。\\n结合学习、生活实际，从如何平衡和运筹长远目标和阶段目标、整体目标和具体目标的角度，体会辩证思维就是复杂性思维，是在关系、矛盾、运动、变化过程中进行思考。\\n$\\\\spadesuit$  可比较“刻舟求剑”等寓言故事与“草船借箭”等智慧故事中的思维方法。可开展调研活动，了解当地存在的发展问题，学会运用辩证思维的方法制定解决方案。\\n$\\\\spadesuit$  搜集科技发明背后的故事，了解科学家探究未知现象时的思维方法，尝试运用“头脑风暴”等创新思维的方法和技巧，举办创意大赛。\", \"module\": \"模块3：逻辑与思维\"}", CJ_teachingTips: "$\\spadesuit$  可搜集资料，探究生活中的思维活动，概括人的思维的特征，分享自己对思维基本形态的认识。\n$\\spadesuit$  列举生活中正、反两方面的事例，通过故事讲述、主题演讲等形式，分享如何运用科学思维处理学习、生活中遇到的困难。\n$\\spadesuit$  联系科学思维与文学想象的差异，讨论逻辑思维与形象思维的特点，探究二者的关系。\n$\\spadesuit$  辨析“飞矢不动”“白马非马”等论题。运用所学逻辑知识，分析日常生活中常见的各类逻辑和推理错误，培养逻辑思维能力。\n结合学习、生活实际，从如何平衡和运筹长远目标和阶段目标、整体目标和具体目标的角度，体会辩证思维就是复杂性思维，是在关系、矛盾、运动、变化过程中进行思考。\n$\\spadesuit$  可比较“刻舟求剑”等寓言故事与“草船借箭”等智慧故事中的思维方法。可开展调研活动，了解当地存在的发展问题，学会运用辩证思维的方法制定解决方案。\n$\\spadesuit$  搜集科技发明背后的故事，了解科学家探究未知现象时的思维方法，尝试运用“头脑风暴”等创新思维的方法和技巧，举办创意大赛。", CJ_module: "模块3：逻辑与思维"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:64"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:64", title: "4.1", description: "理解创新思维的重要性；运用科学思维方法，提高创新思维能力", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"$\\\\spadesuit$  可搜集资料，探究生活中的思维活动，概括人的思维的特征，分享自己对思维基本形态的认识。\\n$\\\\spadesuit$  列举生活中正、反两方面的事例，通过故事讲述、主题演讲等形式，分享如何运用科学思维处理学习、生活中遇到的困难。\\n$\\\\spadesuit$  联系科学思维与文学想象的差异，讨论逻辑思维与形象思维的特点，探究二者的关系。\\n$\\\\spadesuit$  辨析“飞矢不动”“白马非马”等论题。运用所学逻辑知识，分析日常生活中常见的各类逻辑和推理错误，培养逻辑思维能力。\\n结合学习、生活实际，从如何平衡和运筹长远目标和阶段目标、整体目标和具体目标的角度，体会辩证思维就是复杂性思维，是在关系、矛盾、运动、变化过程中进行思考。\\n$\\\\spadesuit$  可比较“刻舟求剑”等寓言故事与“草船借箭”等智慧故事中的思维方法。可开展调研活动，了解当地存在的发展问题，学会运用辩证思维的方法制定解决方案。\\n$\\\\spadesuit$  搜集科技发明背后的故事，了解科学家探究未知现象时的思维方法，尝试运用“头脑风暴”等创新思维的方法和技巧，举办创意大赛。\", \"module\": \"模块3：逻辑与思维\"}", CJ_teachingTips: "$\\spadesuit$  可搜集资料，探究生活中的思维活动，概括人的思维的特征，分享自己对思维基本形态的认识。\n$\\spadesuit$  列举生活中正、反两方面的事例，通过故事讲述、主题演讲等形式，分享如何运用科学思维处理学习、生活中遇到的困难。\n$\\spadesuit$  联系科学思维与文学想象的差异，讨论逻辑思维与形象思维的特点，探究二者的关系。\n$\\spadesuit$  辨析“飞矢不动”“白马非马”等论题。运用所学逻辑知识，分析日常生活中常见的各类逻辑和推理错误，培养逻辑思维能力。\n结合学习、生活实际，从如何平衡和运筹长远目标和阶段目标、整体目标和具体目标的角度，体会辩证思维就是复杂性思维，是在关系、矛盾、运动、变化过程中进行思考。\n$\\spadesuit$  可比较“刻舟求剑”等寓言故事与“草船借箭”等智慧故事中的思维方法。可开展调研活动，了解当地存在的发展问题，学会运用辩证思维的方法制定解决方案。\n$\\spadesuit$  搜集科技发明背后的故事，了解科学家探究未知现象时的思维方法，尝试运用“头脑风暴”等创新思维的方法和技巧，举办创意大赛。", CJ_module: "模块3：逻辑与思维"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:65"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:65", title: "4.2", description: "学习运用联想思维，了解发散思维和聚合思维的意义，以超前思维把握事物的发展趋势", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"$\\\\spadesuit$  可搜集资料，探究生活中的思维活动，概括人的思维的特征，分享自己对思维基本形态的认识。\\n$\\\\spadesuit$  列举生活中正、反两方面的事例，通过故事讲述、主题演讲等形式，分享如何运用科学思维处理学习、生活中遇到的困难。\\n$\\\\spadesuit$  联系科学思维与文学想象的差异，讨论逻辑思维与形象思维的特点，探究二者的关系。\\n$\\\\spadesuit$  辨析“飞矢不动”“白马非马”等论题。运用所学逻辑知识，分析日常生活中常见的各类逻辑和推理错误，培养逻辑思维能力。\\n结合学习、生活实际，从如何平衡和运筹长远目标和阶段目标、整体目标和具体目标的角度，体会辩证思维就是复杂性思维，是在关系、矛盾、运动、变化过程中进行思考。\\n$\\\\spadesuit$  可比较“刻舟求剑”等寓言故事与“草船借箭”等智慧故事中的思维方法。可开展调研活动，了解当地存在的发展问题，学会运用辩证思维的方法制定解决方案。\\n$\\\\spadesuit$  搜集科技发明背后的故事，了解科学家探究未知现象时的思维方法，尝试运用“头脑风暴”等创新思维的方法和技巧，举办创意大赛。\", \"module\": \"模块3：逻辑与思维\"}", CJ_teachingTips: "$\\spadesuit$  可搜集资料，探究生活中的思维活动，概括人的思维的特征，分享自己对思维基本形态的认识。\n$\\spadesuit$  列举生活中正、反两方面的事例，通过故事讲述、主题演讲等形式，分享如何运用科学思维处理学习、生活中遇到的困难。\n$\\spadesuit$  联系科学思维与文学想象的差异，讨论逻辑思维与形象思维的特点，探究二者的关系。\n$\\spadesuit$  辨析“飞矢不动”“白马非马”等论题。运用所学逻辑知识，分析日常生活中常见的各类逻辑和推理错误，培养逻辑思维能力。\n结合学习、生活实际，从如何平衡和运筹长远目标和阶段目标、整体目标和具体目标的角度，体会辩证思维就是复杂性思维，是在关系、矛盾、运动、变化过程中进行思考。\n$\\spadesuit$  可比较“刻舟求剑”等寓言故事与“草船借箭”等智慧故事中的思维方法。可开展调研活动，了解当地存在的发展问题，学会运用辩证思维的方法制定解决方案。\n$\\spadesuit$  搜集科技发明背后的故事，了解科学家探究未知现象时的思维方法，尝试运用“头脑风暴”等创新思维的方法和技巧，举办创意大赛。", CJ_module: "模块3：逻辑与思维"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:66"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:66", title: "1.1", description: "描述货币形态的变迁，了解货币的职能，树立正确的金钱观", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块1：财经与生活\"}", CJ_teachingTips: "", CJ_module: "模块1：财经与生活"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:67"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:67", title: "1.2", description: "知道影响货币供求的主要因素，解析中央银行和商业银行在货币供应中的作用", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块1：财经与生活\"}", CJ_teachingTips: "", CJ_module: "模块1：财经与生活"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:68"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:68", title: "1.3", description: "说明市场供求与价格的关系，解析市场价格如何引导资源合理配置，阐释维护市场竞争与交易秩序的意义", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块1：财经与生活\"}", CJ_teachingTips: "", CJ_module: "模块1：财经与生活"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:69"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:69", title: "2.1", description: "归纳影响个人收入和消费水平的主要因素，分析消费结构变迁的主要规律", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块1：财经与生活\"}", CJ_teachingTips: "", CJ_module: "模块1：财经与生活"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:70"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:70", title: "2.2", description: "概括影响消费决策的主要因素，解析绿色低碳的生活方式，反对奢侈浪费和不合理消费，坚定走生产发展、生活富裕、生态良好的文明发展道路", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块1：财经与生活\"}", CJ_teachingTips: "", CJ_module: "模块1：财经与生活"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:71"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:71", title: "2.3", description: "说明政府筹集收入的途径，了解政府的主要支出，阐明依法纳税的意义", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块1：财经与生活\"}", CJ_teachingTips: "", CJ_module: "模块1：财经与生活"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:72"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:72", title: "3.1", description: "运用实例，描述主要的金融市场，分析它们在我国经济生活中发挥的主要功能", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块1：财经与生活\"}", CJ_teachingTips: "", CJ_module: "模块1：财经与生活"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:73"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:73", title: "3.2", description: "比较各种常见的投资理财方式；探讨投资理财风险的管控与规避，合理确定投资理财组合，树立正确的财富积累观念", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块1：财经与生活\"}", CJ_teachingTips: "", CJ_module: "模块1：财经与生活"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:74"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:74", title: "3.3", description: "运用实例，阐释财务管理的基本原则，了解财务管理的根本方法", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块1：财经与生活\"}", CJ_teachingTips: "", CJ_module: "模块1：财经与生活"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:75"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:75", title: "4.1", description: "对比不同类型的企业，了解公司的组织机构，理解成本、收益和利润", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块1：财经与生活\"}", CJ_teachingTips: "", CJ_module: "模块1：财经与生活"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:99"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:99", title: "4.2", description: "探讨增强企业竞争力的途径，了解企业失信联合惩戒制度措施，剖析企业诚信经营的价值。", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块1：财经与生活\"}", CJ_teachingTips: "", CJ_module: "模块1：财经与生活"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:76"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:76", title: "4.3", description: "评述提高就业率的措施，阐发正确的就业观，弘扬劳模精神和工匠精神，营造劳动光荣的社会风尚和精益求精的敬业风气", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块1：财经与生活\"}", CJ_teachingTips: "", CJ_module: "模块1：财经与生活"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:77"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:77", title: "1.1", description: "简述人民法院的机构设置；明确法官的任职条件、主要职责，以及义务和权利", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块2：法官与律师\"}", CJ_teachingTips: "", CJ_module: "模块2：法官与律师"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:78"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:78", title: "1.2", description: "评析法官的职业道德准则", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块2：法官与律师\"}", CJ_teachingTips: "", CJ_module: "模块2：法官与律师"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:79"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:79", title: "1.3", description: "概括法官对维护司法公正的价值", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块2：法官与律师\"}", CJ_teachingTips: "", CJ_module: "模块2：法官与律师"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:80"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:80", title: "2.1", description: "简述民事诉讼的审判程序", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块2：法官与律师\"}", CJ_teachingTips: "", CJ_module: "模块2：法官与律师"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:81"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:81", title: "2.2", description: "简述刑事诉讼的审判程序", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块2：法官与律师\"}", CJ_teachingTips: "", CJ_module: "模块2：法官与律师"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:82"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:82", title: "2.3", description: "简述行政诉讼的审判程序", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块2：法官与律师\"}", CJ_teachingTips: "", CJ_module: "模块2：法官与律师"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:83"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:83", title: "3.1", description: "简述律师的执业条件、业务范围和权利义务", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块2：法官与律师\"}", CJ_teachingTips: "", CJ_module: "模块2：法官与律师"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:84"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:84", title: "3.2", description: "了解律师的职业道德和执业纪律", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块2：法官与律师\"}", CJ_teachingTips: "", CJ_module: "模块2：法官与律师"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:85"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:85", title: "3.3", description: "评析律师维护社会正义的价值", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块2：法官与律师\"}", CJ_teachingTips: "", CJ_module: "模块2：法官与律师"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:86"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:86", title: "4.1", description: "简述律师刑事辩护的基本要求，阅读辩护词", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块2：法官与律师\"}", CJ_teachingTips: "", CJ_module: "模块2：法官与律师"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:87"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:87", title: "4.2", description: "概述律师民事代理的业务范围，阅读代理词", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块2：法官与律师\"}", CJ_teachingTips: "", CJ_module: "模块2：法官与律师"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:88"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:88", title: "1.1", description: "简述老子的生平和著作，了解道家哲学的思想观点", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块3：历史上的哲学家\"}", CJ_teachingTips: "", CJ_module: "模块3：历史上的哲学家"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:89"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:89", title: "1.2", description: "熟悉孔子的生平和思想，评析儒家哲学的代表人物和思想观点", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块3：历史上的哲学家\"}", CJ_teachingTips: "", CJ_module: "模块3：历史上的哲学家"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:90"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:90", title: "1.3", description: "了解韩非子的生平和著作，评析法家哲学的代表人物和思想观点", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块3：历史上的哲学家\"}", CJ_teachingTips: "", CJ_module: "模块3：历史上的哲学家"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:91"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:91", title: "2.1", description: "知道宋明理学的代表人物及其思想观点", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块3：历史上的哲学家\"}", CJ_teachingTips: "", CJ_module: "模块3：历史上的哲学家"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:92"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:92", title: "2.2", description: "了解陆王心学的代表人物及其思想观点", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块3：历史上的哲学家\"}", CJ_teachingTips: "", CJ_module: "模块3：历史上的哲学家"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:93"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:93", title: "3.2", description: "简述古希腊哲学从泰勒斯到德谟克利特的发展历程", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块3：历史上的哲学家\"}", CJ_teachingTips: "", CJ_module: "模块3：历史上的哲学家"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:94"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:94", title: "3.2", description: "概述从苏格拉底经柏拉图到亚里士多德的哲学思想发展脉络", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块3：历史上的哲学家\"}", CJ_teachingTips: "", CJ_module: "模块3：历史上的哲学家"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:95"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:95", title: "4.1", description: "列举经验论和唯理论哲学的代表人物和思想观点", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块3：历史上的哲学家\"}", CJ_teachingTips: "", CJ_module: "模块3：历史上的哲学家"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:96"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:96", title: "4.2", description: "列举十八世纪法国唯物主义的代表人物和思想观点", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块3：历史上的哲学家\"}", CJ_teachingTips: "", CJ_module: "模块3：历史上的哲学家"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:97"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:97", title: "4.3", description: "概述德国古典哲学的发展脉络、代表人物和思想观点", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块3：历史上的哲学家\"}", CJ_teachingTips: "", CJ_module: "模块3：历史上的哲学家"};

MERGE (n:ThemeL2 {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:98"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:98", title: "4.4", description: "了解德国古典哲学的终结与马克思主义哲学的革命性变革", subject: "SB0310", type: "ThemeL2", applicableLevel: "OB06", contentJson: "{\"teachingTips\": \"\", \"module\": \"模块3：历史上的哲学家\"}", CJ_teachingTips: "", CJ_module: "模块3：历史上的哲学家"};

MERGE (n:AcademicQuality {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:1"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:1", title: "学业质量水平 1-1", description: "", subject: "SB0310", type: "AcademicQuality", applicableLevel: "OB06", contentJson: "{\"standard\": \"1-1\", \"standardRequirement\": \"能够结合简单材料，辨别不同的社会形态，简要概述人类社会发展的基本趋势和规律；能够结合近代以来中国社会发展的典型实践，简要说明中国特色社会主义的科学真理性和历史必然性；能够概述习近平新时代中国特色社会主义思想的主要内容，并运用贯穿其中的立场观点方法分析社会发展和生活中的典型事例，辨析什么是对的、什么是错的，判断什么是合理的、什么是不合理的，坚定坚持和发展中国特色社会主义的自信；能够通过手抄报、宣讲稿、新媒体等方式宣传中国特色社会主义的伟大成就，结合典型事例，说明中国特色社会主义是实现 中华民族伟大复兴的必由之路，展现青少年学生在以中国式现代化全面推进中华民族伟大复兴中的责任与担当。\"}", CJ_standard: "1-1", CJ_standardRequirement: "能够结合简单材料，辨别不同的社会形态，简要概述人类社会发展的基本趋势和规律；能够结合近代以来中国社会发展的典型实践，简要说明中国特色社会主义的科学真理性和历史必然性；能够概述习近平新时代中国特色社会主义思想的主要内容，并运用贯穿其中的立场观点方法分析社会发展和生活中的典型事例，辨析什么是对的、什么是错的，判断什么是合理的、什么是不合理的，坚定坚持和发展中国特色社会主义的自信；能够通过手抄报、宣讲稿、新媒体等方式宣传中国特色社会主义的伟大成就，结合典型事例，说明中国特色社会主义是实现 中华民族伟大复兴的必由之路，展现青少年学生在以中国式现代化全面推进中华民族伟大复兴中的责任与担当。"};

MERGE (n:AcademicQuality {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:2"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:2", title: "学业质量水平 1-2", description: "", subject: "SB0310", type: "AcademicQuality", applicableLevel: "OB06", contentJson: "{\"standard\": \"1-2\", \"standardRequirement\": \"能够结合简单材料，简述社会主义基本经济制度的内涵与特征，区分不同的生产资料所有制形式，引用新中国成立以来经济发展中的典型事例，说明社会主义基本经济制度对我国经济社会发展的重大作用和意义；能够概述习近平经济思想的主要内容，分析当前经济社会发展的典型现象，辨别其是否符合新发展理念，阐述构建新发展格局、实现高质量发展的意义；运用展馆、文献等资源，结合简单的典型案例，通过手抄报、宣讲稿、新媒体等方式，说明市场经济运行中法律法规、行业规范、道德规范对企业发展的作用，能够针对某一具体问题，提出自己的看法。\"}", CJ_standard: "1-2", CJ_standardRequirement: "能够结合简单材料，简述社会主义基本经济制度的内涵与特征，区分不同的生产资料所有制形式，引用新中国成立以来经济发展中的典型事例，说明社会主义基本经济制度对我国经济社会发展的重大作用和意义；能够概述习近平经济思想的主要内容，分析当前经济社会发展的典型现象，辨别其是否符合新发展理念，阐述构建新发展格局、实现高质量发展的意义；运用展馆、文献等资源，结合简单的典型案例，通过手抄报、宣讲稿、新媒体等方式，说明市场经济运行中法律法规、行业规范、道德规范对企业发展的作用，能够针对某一具体问题，提出自己的看法。"};

MERGE (n:AcademicQuality {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:3"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:3", title: "学业质量水平 1-3", description: "", subject: "SB0310", type: "AcademicQuality", applicableLevel: "OB06", contentJson: "{\"standard\": \"1-3\", \"standardRequirement\": \"能够结合简单材料，简要概述中国特色社会主义政治制度的内涵与特征，并运用其核心观点分析简单的政治生活现象，识别生活中党的领导、人民当家作主和依法治国的具体表现形式；引用典型案例，阐述依法治国是党领导人民治理国家的基本方式，选择经济、政治、文化、社会、生态文明等领域中的简单事例，结合相关法律知识，简述法治保障对提升人民生活品质的重要作用；开展社会调查和实践活动，通过手抄报、宣讲稿、新媒体等方式宣传我国政治制度，阐述公民依法参与政治生活和公共实践的途径与方法；在公共生活中，能够通过对话协商表达自己的合理诉求，充分展现公共参与是体现人民当家作主的必然要求和重要途径。\"}", CJ_standard: "1-3", CJ_standardRequirement: "能够结合简单材料，简要概述中国特色社会主义政治制度的内涵与特征，并运用其核心观点分析简单的政治生活现象，识别生活中党的领导、人民当家作主和依法治国的具体表现形式；引用典型案例，阐述依法治国是党领导人民治理国家的基本方式，选择经济、政治、文化、社会、生态文明等领域中的简单事例，结合相关法律知识，简述法治保障对提升人民生活品质的重要作用；开展社会调查和实践活动，通过手抄报、宣讲稿、新媒体等方式宣传我国政治制度，阐述公民依法参与政治生活和公共实践的途径与方法；在公共生活中，能够通过对话协商表达自己的合理诉求，充分展现公共参与是体现人民当家作主的必然要求和重要途径。"};

MERGE (n:AcademicQuality {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:4"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:4", title: "学业质量水平 1-4", description: "", subject: "SB0310", type: "AcademicQuality", applicableLevel: "OB06", contentJson: "{\"standard\": \"1-4\", \"standardRequirement\": \"能够结合简单材料，简要概述马克思主义基本原理的主要内容，运用辩证唯物主义和历史唯物主义的基本观点、方法，分析自然界、人类社会和人类思维中的典型现象；能够概述社会主义核心价值观的基本内容，在社会和文化生活的典型案例中，能够分清什么符合社会主义核心价值观、什么不符合社会主义核心价值观，什么是正确的文化现象、什么是错误的文化现象，并简要说明理由；能够通过手抄报、宣讲稿、新媒体等方式宣传中华优秀传统文化、革命文化和社会主义先进 文化，阐述正确价值观对个人、社会和国家的重要意义；能够参加志愿服务、公益劳动等社会实践活动，以实际行动践行社会主义核心价值观。\"}", CJ_standard: "1-4", CJ_standardRequirement: "能够结合简单材料，简要概述马克思主义基本原理的主要内容，运用辩证唯物主义和历史唯物主义的基本观点、方法，分析自然界、人类社会和人类思维中的典型现象；能够概述社会主义核心价值观的基本内容，在社会和文化生活的典型案例中，能够分清什么符合社会主义核心价值观、什么不符合社会主义核心价值观，什么是正确的文化现象、什么是错误的文化现象，并简要说明理由；能够通过手抄报、宣讲稿、新媒体等方式宣传中华优秀传统文化、革命文化和社会主义先进 文化，阐述正确价值观对个人、社会和国家的重要意义；能够参加志愿服务、公益劳动等社会实践活动，以实际行动践行社会主义核心价值观。"};

MERGE (n:AcademicQuality {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:5"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:5", title: "学业质量水平 2-1", description: "", subject: "SB0310", type: "AcademicQuality", applicableLevel: "OB06", contentJson: "{\"standard\": \"2-1\", \"standardRequirement\": \"能够结合多项复杂材料，辨析不同社会形态及其更替的一般过程，运用人类社会发展的基本趋势和规律，结合近代以来中国社会发展的历史进程，阐释中国特色社会主义的科学真理性和历史必然性；能够阐述习近平新时代中国特色社会主义思想的主要内容，并运用贯穿其中的立场观点方法分析社会发展和生活中较为复杂的现象，辨析什么是对的、什么是错的，判断什么是合理的、什么是不合理的，对错误的和不合理的观点进行剖析，阐明正确的方向；能够通过演讲稿、小论文、新媒体等方式宣传中国特色社会主义的伟大成就，初步分析中国成就背后的成功经验，通过多角度的具体事例，运用学科思维方法，说明中国特色社会主义是实现中华民族伟大复兴的必由之路；能够积极参与社会实践，在实践中作出正确的决策与选择，展现青少年学生在以中国式现代化全面推进中华民族伟大复兴中的责任、担当与行动，坚定实现中国梦的自信。\"}", CJ_standard: "2-1", CJ_standardRequirement: "能够结合多项复杂材料，辨析不同社会形态及其更替的一般过程，运用人类社会发展的基本趋势和规律，结合近代以来中国社会发展的历史进程，阐释中国特色社会主义的科学真理性和历史必然性；能够阐述习近平新时代中国特色社会主义思想的主要内容，并运用贯穿其中的立场观点方法分析社会发展和生活中较为复杂的现象，辨析什么是对的、什么是错的，判断什么是合理的、什么是不合理的，对错误的和不合理的观点进行剖析，阐明正确的方向；能够通过演讲稿、小论文、新媒体等方式宣传中国特色社会主义的伟大成就，初步分析中国成就背后的成功经验，通过多角度的具体事例，运用学科思维方法，说明中国特色社会主义是实现中华民族伟大复兴的必由之路；能够积极参与社会实践，在实践中作出正确的决策与选择，展现青少年学生在以中国式现代化全面推进中华民族伟大复兴中的责任、担当与行动，坚定实现中国梦的自信。"};

MERGE (n:AcademicQuality {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:6"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:6", title: "学业质量水平 2-2", description: "", subject: "SB0310", type: "AcademicQuality", applicableLevel: "OB06", contentJson: "{\"standard\": \"2-2\", \"standardRequirement\": \"能够结合多项复杂材料，概述社会主义基本经济制度的内涵，分辨不同所有制经济形式，阐述不同所有制经济形式对我国经济社会发展的作用，分析我国社会经济发展不同阶段中出现的复杂现象，阐述社会主义基本经济制度的优势和价值；能够阐述习近平经济思想的主要内容，并用其分析当前社会经济发展中的复杂现象，辨别其是否符合新发展理念，引用多角度事例，对经济发展新格局进行阐释；运用展馆、文献等资源，通过演讲稿、小论文、新媒体等方式，结合复杂的经济发展事例，分析市场经济运行中法律法规、行业规范、道德规范是如何影响企业发展的，概述影响经济发展活力的外部因素和内部因素，针对促进高质量发展的政策提出具有建设性的意见和建议。\"}", CJ_standard: "2-2", CJ_standardRequirement: "能够结合多项复杂材料，概述社会主义基本经济制度的内涵，分辨不同所有制经济形式，阐述不同所有制经济形式对我国经济社会发展的作用，分析我国社会经济发展不同阶段中出现的复杂现象，阐述社会主义基本经济制度的优势和价值；能够阐述习近平经济思想的主要内容，并用其分析当前社会经济发展中的复杂现象，辨别其是否符合新发展理念，引用多角度事例，对经济发展新格局进行阐释；运用展馆、文献等资源，通过演讲稿、小论文、新媒体等方式，结合复杂的经济发展事例，分析市场经济运行中法律法规、行业规范、道德规范是如何影响企业发展的，概述影响经济发展活力的外部因素和内部因素，针对促进高质量发展的政策提出具有建设性的意见和建议。"};

MERGE (n:AcademicQuality {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:7"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:7", title: "学业质量水平 2-3", description: "", subject: "SB0310", type: "AcademicQuality", applicableLevel: "OB06", contentJson: "{\"standard\": \"2-3\", \"standardRequirement\": \"能够结合多项复杂材料，概述中国特色社会主义政治制度的内涵与表现，并运用其核心观点与内容，分析复杂的政治生活现象，运用辩证唯物主义和历史唯物主义的基本观点和方法，阐述坚定不移走中国 特色社会主义政治发展道路必须坚持党的领导、人民当家作主、依法治国有机统一；结合中国式现代化的具体实践，阐释依法治国是党领导人民治理国家的基本方式，识别法治国家、法治政府、法治社会的基本表征，引用经济、政治、文化、社会、生态文明等领域中的若干复杂事例，阐述法治对提高人民生活品质的重要作用；开展社会调查和实践活动，通过演讲稿、小论文、新媒体等方式宣传我国政治制度，结合自身实践和各层面、各领域公民参与的实例，评析依法办事、依法维权、依法解决纠纷的典型案例，证实法治在促进社会和谐方面的重要作用，能够积极参与社会实践，通过对话协商，表达自己的合理诉求，并提出具体可行的建议。\"}", CJ_standard: "2-3", CJ_standardRequirement: "能够结合多项复杂材料，概述中国特色社会主义政治制度的内涵与表现，并运用其核心观点与内容，分析复杂的政治生活现象，运用辩证唯物主义和历史唯物主义的基本观点和方法，阐述坚定不移走中国 特色社会主义政治发展道路必须坚持党的领导、人民当家作主、依法治国有机统一；结合中国式现代化的具体实践，阐释依法治国是党领导人民治理国家的基本方式，识别法治国家、法治政府、法治社会的基本表征，引用经济、政治、文化、社会、生态文明等领域中的若干复杂事例，阐述法治对提高人民生活品质的重要作用；开展社会调查和实践活动，通过演讲稿、小论文、新媒体等方式宣传我国政治制度，结合自身实践和各层面、各领域公民参与的实例，评析依法办事、依法维权、依法解决纠纷的典型案例，证实法治在促进社会和谐方面的重要作用，能够积极参与社会实践，通过对话协商，表达自己的合理诉求，并提出具体可行的建议。"};

MERGE (n:AcademicQuality {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:8"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:8", title: "学业质量水平 2-4", description: "", subject: "SB0310", type: "AcademicQuality", applicableLevel: "OB06", contentJson: "{\"standard\": \"2-4\", \"standardRequirement\": \"能够结合多项复杂材料，概述马克思主义基本原理的主要内容，运用辩证唯物主义和历史唯物主义的基本观点、方法，分析自然界、人类社会和人类思维中的较复杂现象，用科学的思维方法观察和分析经济、政治、文化、社会、生态文明等领域中的较复杂现象；能够阐述社会主义核心价值观的基本内容，在较复杂的社会和文化生活案例中，能够判断什么符合社会主义核心价值观、什么不符合社会主义核心价值观，什么是正确的文化现象、什么是错误的文化现象，批评错误的现象和观点，能够以演讲稿、小论文、新媒体等方式宣传中华优秀传统文化、革命文化和社会主义先进文化，阐述正确价值观对个人、社会和国家的重要意义；能够积极参加志愿服务、公益劳动等社会实践活动，广泛践行社会主义核心价值观，展现青少年的责任与担当；在面对公共生活中的不确定事件时，能够结合生活经验与学科知识，运用科学方法进行深入分析，合理选择解决方案并阐述理由，既体现出担当社会责任的正确态度，又展现出促进社会和谐的科学思维方式。\"}", CJ_standard: "2-4", CJ_standardRequirement: "能够结合多项复杂材料，概述马克思主义基本原理的主要内容，运用辩证唯物主义和历史唯物主义的基本观点、方法，分析自然界、人类社会和人类思维中的较复杂现象，用科学的思维方法观察和分析经济、政治、文化、社会、生态文明等领域中的较复杂现象；能够阐述社会主义核心价值观的基本内容，在较复杂的社会和文化生活案例中，能够判断什么符合社会主义核心价值观、什么不符合社会主义核心价值观，什么是正确的文化现象、什么是错误的文化现象，批评错误的现象和观点，能够以演讲稿、小论文、新媒体等方式宣传中华优秀传统文化、革命文化和社会主义先进文化，阐述正确价值观对个人、社会和国家的重要意义；能够积极参加志愿服务、公益劳动等社会实践活动，广泛践行社会主义核心价值观，展现青少年的责任与担当；在面对公共生活中的不确定事件时，能够结合生活经验与学科知识，运用科学方法进行深入分析，合理选择解决方案并阐述理由，既体现出担当社会责任的正确态度，又展现出促进社会和谐的科学思维方式。"};

MERGE (n:AcademicQuality {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:9"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:9", title: "学业质量水平 3-1", description: "", subject: "SB0310", type: "AcademicQuality", applicableLevel: "OB06", contentJson: "{\"standard\": \"3-1\", \"standardRequirement\": \"能够结合多项复杂且有挑战性的材料，在全球视野中比较分析不同国家、地区的发展道路，探究历史进程的统一性和多样性，运用人类社会发展的基本趋势和规律，结合近代以来中国社会发展的历史进程，阐释中国特色社会主义是科学社会主义理论逻辑与中国发展历史逻 辑的辩证统一；阐释习近平新时代中国特色社会主义思想的主要内容及其对马克思主义的原创性贡献，并综合运用贯穿其中的立场观点方法分析社会发展和生活中的复杂现象，选择恰当论据，辨析各种错误观点，阐释方向决定道路、道路决定命运的价值意蕴；能够通过辩论稿、调查报告、新媒体等多种方式宣传中国特色社会主义的伟大成就，概括中国在不同领域的成功经验，综合运用学科思维方法，比较中西方社会不同发展道路，说明中国特色社会主义是实现中华民族伟大复兴的必由之路，坚定中国特色社会主义道路自信、理论自信、制度自信、文化自信；能够积极参与社会实践，在实践中作出正确的决策与选择，展现青少年学生在以中国式现代化全面推进中华民族伟大复兴中的责任、担当与行动，坚定实现中国梦的自信，树立共产主义远大理想。\"}", CJ_standard: "3-1", CJ_standardRequirement: "能够结合多项复杂且有挑战性的材料，在全球视野中比较分析不同国家、地区的发展道路，探究历史进程的统一性和多样性，运用人类社会发展的基本趋势和规律，结合近代以来中国社会发展的历史进程，阐释中国特色社会主义是科学社会主义理论逻辑与中国发展历史逻 辑的辩证统一；阐释习近平新时代中国特色社会主义思想的主要内容及其对马克思主义的原创性贡献，并综合运用贯穿其中的立场观点方法分析社会发展和生活中的复杂现象，选择恰当论据，辨析各种错误观点，阐释方向决定道路、道路决定命运的价值意蕴；能够通过辩论稿、调查报告、新媒体等多种方式宣传中国特色社会主义的伟大成就，概括中国在不同领域的成功经验，综合运用学科思维方法，比较中西方社会不同发展道路，说明中国特色社会主义是实现中华民族伟大复兴的必由之路，坚定中国特色社会主义道路自信、理论自信、制度自信、文化自信；能够积极参与社会实践，在实践中作出正确的决策与选择，展现青少年学生在以中国式现代化全面推进中华民族伟大复兴中的责任、担当与行动，坚定实现中国梦的自信，树立共产主义远大理想。"};

MERGE (n:AcademicQuality {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:10"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:10", title: "学业质量水平 3-2", description: "", subject: "SB0310", type: "AcademicQuality", applicableLevel: "OB06", contentJson: "{\"standard\": \"3-2\", \"standardRequirement\": \"能够结合多项复杂且有挑战性的材料，阐述社会主义基本经济制度对经济制度属性和经济发展方式的决定性影响，结合我国社会主义基本经济制度不断完善与发展的历程，从多角度选择恰当的论据，论述新时代推进经济高质量发展必须坚定不移地坚持社会主义基本经济制度；能够阐释习近平经济思想的核心要义，并用其深入剖析当前社会经济发展中复杂且有挑战性的现象，辨别其是否符合新发展理念，在全球视野中比较各国现代化进程，选择多角度论据，依循逻辑，阐述贯彻新发展理念、构建新发展格局、实现高质量发展是全面推进中国式现代化的必由之路；针对经济社会活动中的重大议题，能够通过辩论稿、调查报告、新媒体等方式剖析企业发展的典型复杂案例，分析社会主义市场经济运行中法律法规、行业规范、道德规范所发挥的关键作用，以及经济领域制度实施、体制运行的具体过程，对案例中的问题进行有理有据的研判，科学预测未来发展趋势，评估或设计合理的解决方案。\"}", CJ_standard: "3-2", CJ_standardRequirement: "能够结合多项复杂且有挑战性的材料，阐述社会主义基本经济制度对经济制度属性和经济发展方式的决定性影响，结合我国社会主义基本经济制度不断完善与发展的历程，从多角度选择恰当的论据，论述新时代推进经济高质量发展必须坚定不移地坚持社会主义基本经济制度；能够阐释习近平经济思想的核心要义，并用其深入剖析当前社会经济发展中复杂且有挑战性的现象，辨别其是否符合新发展理念，在全球视野中比较各国现代化进程，选择多角度论据，依循逻辑，阐述贯彻新发展理念、构建新发展格局、实现高质量发展是全面推进中国式现代化的必由之路；针对经济社会活动中的重大议题，能够通过辩论稿、调查报告、新媒体等方式剖析企业发展的典型复杂案例，分析社会主义市场经济运行中法律法规、行业规范、道德规范所发挥的关键作用，以及经济领域制度实施、体制运行的具体过程，对案例中的问题进行有理有据的研判，科学预测未来发展趋势，评估或设计合理的解决方案。"};

MERGE (n:AcademicQuality {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:11"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:11", title: "学业质量水平 3-3", description: "", subject: "SB0310", type: "AcademicQuality", applicableLevel: "OB06", contentJson: "{\"standard\": \"3-3\", \"standardRequirement\": \"能够结合多项复杂且有挑战性的材料，系统阐述中国特色社会主义政治制度的内涵与表现，并运用其核心观点与内容，分析复杂且具有挑战性的政治生活现象，通过回顾历史和国际比较，综合运用学科基本观点和方法，选择恰当论据，运用辩证唯物主义和历史唯物主义的基本 本观点、方法，论述坚定不移走中国特色社会主义政治发展道路必须坚持党的领导、人民当家作主、依法治国有机统一；结合中国式现代化的具体实践，论述依法治国是党领导人民治理国家的基本方式，针对经济、政治、文化、社会、生态文明等多领域复杂事例，运用相关法律知识进行辨析并提出合理建议，综合运用民事、行政、刑事等实体法和程序法相关内容，阐明法治保障对提高人民生活品质的重要作用；选择恰当的时事议题，针对国际社会的重大议题，澄清误导信息、批判错误观点，客观评析国际组织在国际事务中的角色与功能，论述推动构建人类命运共同体理念的意义；开展社会调查和实践活动，通过辩论稿、调查报告、新媒体等方式广泛宣传我国政治制度，阐述公民依法依规有序参与各领域、各层级公共事务的具体途径及其重要意义；在公共实践中，能够运用对话协商的方式，依法表达自己的合理诉求，并提出解决问题的有效方案。\"}", CJ_standard: "3-3", CJ_standardRequirement: "能够结合多项复杂且有挑战性的材料，系统阐述中国特色社会主义政治制度的内涵与表现，并运用其核心观点与内容，分析复杂且具有挑战性的政治生活现象，通过回顾历史和国际比较，综合运用学科基本观点和方法，选择恰当论据，运用辩证唯物主义和历史唯物主义的基本 本观点、方法，论述坚定不移走中国特色社会主义政治发展道路必须坚持党的领导、人民当家作主、依法治国有机统一；结合中国式现代化的具体实践，论述依法治国是党领导人民治理国家的基本方式，针对经济、政治、文化、社会、生态文明等多领域复杂事例，运用相关法律知识进行辨析并提出合理建议，综合运用民事、行政、刑事等实体法和程序法相关内容，阐明法治保障对提高人民生活品质的重要作用；选择恰当的时事议题，针对国际社会的重大议题，澄清误导信息、批判错误观点，客观评析国际组织在国际事务中的角色与功能，论述推动构建人类命运共同体理念的意义；开展社会调查和实践活动，通过辩论稿、调查报告、新媒体等方式广泛宣传我国政治制度，阐述公民依法依规有序参与各领域、各层级公共事务的具体途径及其重要意义；在公共实践中，能够运用对话协商的方式，依法表达自己的合理诉求，并提出解决问题的有效方案。"};

MERGE (n:AcademicQuality {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:12"})
SET n += {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:12", title: "学业质量水平 3-4", description: "", subject: "SB0310", type: "AcademicQuality", applicableLevel: "OB06", contentJson: "{\"standard\": \"3-4\", \"standardRequirement\": \"能够结合多项复杂且有挑战性的材料，阐述马克思主义基本原理的主要内容，综合运用辩证唯物主义和历史唯物主义的基本观点、方法，系统分析自然界、人类社会和人类思维中的复杂现象，用科学的思维方法观察和分析经济、政治、文化、社会、生态文明等多领域复杂现象；能够阐述社会主义核心价值观的基本内容和重要意义，对比分析全球不同价值观和文化现象，在复杂且具有挑战性的案例中，能够辨析什么符合社会主义核心价值观、什么不符合社会主义核心价值观，什么是正确的文化现象、什么是错误的文化现象，批评错误的现象和观点，提出合理的行动建议，能够通过辩论稿、调查报告、新媒体等方式广泛宣传中华优秀传统文化、革命文化和社会主义先进文化，论述正确价值观对个人、社会和国家的重要意义，创造性地提出解决问题的思路与做法；主动策划并积极参加志愿服务、公益劳动等社会实践活动，自觉践行社会主义核心价值观，针对社会生活中各种不确定的具体问题，比较分析公共利益与个人利益发生矛盾的不同事例，综合运用矛盾分析法等权衡利弊，作出正确的价值判断和行为选择，并说明理由；结合个人活 动经历，列举不同情境下各种冷漠表现，批评漠视、损害公共利益的行为，表达公共参与的强烈意愿，主动提出科学可行的行动方案，彰显践行公共道德的勇气。\"}", CJ_standard: "3-4", CJ_standardRequirement: "能够结合多项复杂且有挑战性的材料，阐述马克思主义基本原理的主要内容，综合运用辩证唯物主义和历史唯物主义的基本观点、方法，系统分析自然界、人类社会和人类思维中的复杂现象，用科学的思维方法观察和分析经济、政治、文化、社会、生态文明等多领域复杂现象；能够阐述社会主义核心价值观的基本内容和重要意义，对比分析全球不同价值观和文化现象，在复杂且具有挑战性的案例中，能够辨析什么符合社会主义核心价值观、什么不符合社会主义核心价值观，什么是正确的文化现象、什么是错误的文化现象，批评错误的现象和观点，提出合理的行动建议，能够通过辩论稿、调查报告、新媒体等方式广泛宣传中华优秀传统文化、革命文化和社会主义先进文化，论述正确价值观对个人、社会和国家的重要意义，创造性地提出解决问题的思路与做法；主动策划并积极参加志愿服务、公益劳动等社会实践活动，自觉践行社会主义核心价值观，针对社会生活中各种不确定的具体问题，比较分析公共利益与个人利益发生矛盾的不同事例，综合运用矛盾分析法等权衡利弊，作出正确的价值判断和行为选择，并说明理由；结合个人活 动经历，列举不同情境下各种冷漠表现，批评漠视、损害公共利益的行为，表达公共参与的强烈意愿，主动提出科学可行的行动方案，彰显践行公共道德的勇气。"};

// =====================================================
// 导入关系
// =====================================================

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:60"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:60"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:1"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:2"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:2"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:1"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:2"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:3"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:3"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:4"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:4"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:4"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:5"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:5"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:7"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:5"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:6"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:9"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:9"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:6"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:6"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:6"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:6"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:7"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:6"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:11"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:11"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:7"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:18"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:18"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:7"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:7"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:1"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:8"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:2"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:8"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:9"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:19"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:19"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:9"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:9"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:20"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:20"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:9"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:9"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:11"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:11"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:9"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:10"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:16"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:16"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:10"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:10"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:12"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:12"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:10"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:10"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:14"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:14"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:10"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:11"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:13"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:13"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:11"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:11"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:11"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:11"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:11"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:12"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:12"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:12"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:12"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:12"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:12"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:13"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:20"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:20"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:13"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:13"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:22"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:22"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:13"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:14"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:1"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:14"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:14"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:2"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:14"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:21"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:21"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:15"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:30"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:30"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:15"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:19"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:19"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:15"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:16"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:23"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:23"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:16"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:16"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:24"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:24"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:16"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:17"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:17"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:17"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:17"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:17"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:17"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:18"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:18"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:18"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:18"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:18"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:18"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:19"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:19"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:19"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:19"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:19"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:19"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:20"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:42"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:42"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:20"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:20"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:41"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:41"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:20"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:20"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:39"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:39"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:20"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:29"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:29"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:21"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:29"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:29"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:22"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:23"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:31"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:23"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:24"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:1"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:24"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:24"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:2"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:24"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:19"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:19"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:25"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:20"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:20"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:25"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:21"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:21"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:25"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:26"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:59"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:59"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:26"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:27"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:6"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:6"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:27"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:28"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:28"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:28"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:39"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:39"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:29"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:42"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:42"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:29"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:41"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:41"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:29"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:30"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:42"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:42"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:30"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:41"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:41"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:31"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:42"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:42"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:31"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:6"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:6"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:31"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:51"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:51"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:32"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:50"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:50"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:32"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:33"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:51"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:51"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:33"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:33"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:50"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:50"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:33"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:34"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:51"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:51"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:34"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:34"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:50"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:50"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:34"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:35"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:51"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:51"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:35"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:35"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:50"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:50"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:35"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:36"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:51"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:51"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:36"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:36"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:50"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:50"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:36"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:36"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:36"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:37"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:51"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:51"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:37"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:37"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:50"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:50"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:37"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:37"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:37"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:38"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:51"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:51"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:38"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:38"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:50"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:50"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:38"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:38"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:54"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:54"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:38"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:39"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:51"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:51"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:39"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:39"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:50"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:50"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:39"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:40"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:51"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:51"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:40"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:40"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:50"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:50"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:40"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:41"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:51"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:51"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:41"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:41"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:50"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:50"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:41"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:41"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:53"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:53"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:41"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:42"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:53"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:53"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:42"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:42"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:54"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:54"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:42"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:42"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:51"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:51"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:42"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:43"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:60"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:60"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:43"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:43"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:59"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:59"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:43"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:43"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:56"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:56"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:43"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:44"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:1"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:44"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:44"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:2"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:44"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:45"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:19"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:19"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:45"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:46"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:59"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:59"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:46"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:47"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:60"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:60"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:47"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:48"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:48"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:48"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:48"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:48"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:48"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:49"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:39"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:39"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:49"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:50"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:59"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:59"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:50"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:51"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:59"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:59"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:51"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:52"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:53"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:53"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:52"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:53"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:59"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:59"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:53"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:54"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:59"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:59"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:54"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:55"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:73"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:73"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:55"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:55"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:81"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:81"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:55"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:55"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:79"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:79"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:55"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:56"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:73"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:73"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:56"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:56"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:72"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:72"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:56"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:56"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:81"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:81"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:56"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:57"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:81"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:81"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:57"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:57"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:79"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:79"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:57"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:57"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:73"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:73"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:57"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:58"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:58"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:58"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:75"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:75"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:58"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:58"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:58"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:59"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:59"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:59"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:76"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:76"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:59"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:59"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:59"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:60"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:60"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:60"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:60"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:60"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:60"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:61"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:79"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:79"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:61"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:61"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:80"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:80"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:61"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:61"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:81"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:81"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:61"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:62"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:80"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:80"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:62"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:62"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:79"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:79"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:62"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:62"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:81"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:81"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:62"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:63"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:79"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:79"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:63"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:63"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:81"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:81"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:63"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:63"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:80"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:80"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:63"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:64"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:83"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:83"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:64"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:64"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:84"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:84"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:64"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:64"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:85"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:85"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:64"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:65"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:73"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:73"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:65"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:65"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:79"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:79"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:65"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:65"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:81"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:81"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:65"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:66"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:60"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:60"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:66"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:67"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:1"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:67"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:67"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:2"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:67"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:68"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:19"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:19"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:68"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:68"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:20"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:20"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:68"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:68"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:21"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:21"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:68"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:69"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:13"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:13"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:69"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:70"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:70"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:70"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:70"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:70"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:70"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:71"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:71"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:71"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:71"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:71"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:71"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:72"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:39"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:39"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:72"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:72"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:42"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:42"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:72"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:72"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:41"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:41"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:72"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:73"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:42"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:42"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:73"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:74"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:68"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:68"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:74"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:75"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:53"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:53"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:75"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:99"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:53"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:53"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:99"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:99"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:54"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:54"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:99"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:76"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:64"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:64"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:76"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:77"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:60"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:60"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:77"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:78"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:1"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:78"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:78"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:2"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:78"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:79"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:19"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:19"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:79"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:79"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:20"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:20"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:79"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:79"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:21"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:21"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:79"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:80"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:44"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:44"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:80"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:81"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:81"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:81"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:81"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:81"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:81"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:82"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:82"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:82"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:82"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:82"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:82"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:83"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:39"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:39"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:83"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:83"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:42"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:42"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:83"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:83"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:41"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:41"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:83"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:84"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:42"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:42"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:84"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:85"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:68"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:68"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:85"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:86"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:53"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:53"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:86"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:87"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:53"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:53"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:87"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:87"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:54"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:54"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:87"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:87"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:55"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:55"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:87"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:88"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:60"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:60"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:88"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:89"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:1"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:89"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:89"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:2"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:89"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:90"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:19"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:19"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:90"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:90"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:20"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:20"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:90"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:90"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:21"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:21"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:90"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:91"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:44"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:44"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:91"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:92"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:92"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:92"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:92"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:92"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:92"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:93"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:42"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:42"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:93"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:94"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:42"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:42"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:94"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:95"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:53"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:53"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:95"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:96"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:53"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:53"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:96"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:96"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:54"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:54"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:96"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:96"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:55"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:55"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:96"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:97"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:68"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:68"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:97"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:98"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:42"})
MERGE (source)-[r:themeL2RequiresSection]->(target)
SET r.label = "二级主题所需知识（节） / requiresSectionKnowledge";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:42"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:98"})
MERGE (source)-[r:sectionSupportsThemeL2]->(target)
SET r.label = "节支撑二级主题 / supportsThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:1"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:1"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:2"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:1"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:2"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:2"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:5"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:3"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:6"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:6"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:3"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:7"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:4"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:4"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:9"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:9"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:4"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:10"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:10"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:7"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:11"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:11"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:7"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:12"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:12"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:8"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:13"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:13"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:8"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:14"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:14"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:8"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:9"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:15"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:15"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:9"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:9"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:16"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:16"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:9"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:9"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:17"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:17"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:9"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:9"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:18"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:18"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:9"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:10"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:19"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:19"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:10"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:10"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:20"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:20"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:10"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:10"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:21"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:21"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:10"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:10"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:22"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:22"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:10"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:11"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:23"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:23"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:11"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:11"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:24"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:24"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:11"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:11"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:25"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:25"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:11"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:11"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:26"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:26"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:11"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:12"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:27"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:27"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:12"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:12"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:28"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:28"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:12"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:12"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:29"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:29"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:12"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:12"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:30"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:30"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:12"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:13"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:31"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:13"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:13"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:32"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:13"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:13"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:33"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:33"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:13"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:13"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:34"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:34"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:13"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:14"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:35"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:35"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:14"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:14"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:36"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:36"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:14"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:14"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:37"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:37"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:14"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:14"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:38"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:38"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:14"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:15"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:39"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:39"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:15"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:15"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:40"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:40"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:15"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:15"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:41"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:41"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:15"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:15"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:42"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:42"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:15"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:16"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:43"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:43"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:16"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:16"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:44"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:44"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:16"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:16"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:45"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:45"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:16"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:17"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:46"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:46"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:17"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:17"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:47"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:47"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:17"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:17"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:48"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:48"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:17"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:17"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:49"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:49"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:17"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:18"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:50"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:50"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:18"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:18"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:51"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:51"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:18"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:18"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:52"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:52"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:18"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:19"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:53"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:53"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:19"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:19"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:54"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:54"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:19"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:19"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:55"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:55"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:19"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:20"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:56"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:56"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:20"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:20"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:57"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:57"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:20"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:20"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:58"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:58"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:20"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:20"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:59"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:59"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:20"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:20"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:60"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:60"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:20"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:21"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:61"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:61"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:21"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:21"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:62"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:62"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:21"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:21"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:63"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:63"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:21"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:22"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:64"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:64"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:22"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:22"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:65"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:65"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:22"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:22"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:66"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:66"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:22"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:23"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:67"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:67"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:23"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:23"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:68"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:68"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:23"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:23"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:69"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:69"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:23"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:24"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:70"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:70"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:24"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:24"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:71"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:71"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:24"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:24"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:72"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:72"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:24"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:24"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:73"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:73"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:24"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:25"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:74"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:74"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:25"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:25"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:75"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:75"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:25"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:25"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:76"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:76"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:25"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:25"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:77"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:77"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:25"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:25"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:78"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:78"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:25"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:26"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:79"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:79"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:26"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:26"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:80"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:80"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:26"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:26"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:81"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:81"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:26"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:26"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:82"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:82"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:26"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:27"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:83"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:83"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:27"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:27"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:84"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:84"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:27"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:27"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:85"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:85"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:27"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Chapter:27"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Section:86"})
MERGE (source)-[r:chapterContainsSection]->(target)
SET r.label = "章节包含节 / containsSection";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Section:86"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Chapter:27"})
MERGE (source)-[r:sectionBelongsToChapter]->(target)
SET r.label = "节归属章节 / belongsToChapter";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MERGE (source)-[r:courseModuleBelongsToCourseStructure]->(target)
SET r.label = "课程模块属于课程结构 / CourseModule belongsTo CourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:1"})
MERGE (source)-[r:courseStructureIncludesCourseModule]->(target)
SET r.label = "课程结构包含课程模块 / CourseStructure includes CourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MERGE (source)-[r:courseModuleBelongsToCourseStructure]->(target)
SET r.label = "课程模块属于课程结构 / CourseModule belongsTo CourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:2"})
MERGE (source)-[r:courseStructureIncludesCourseModule]->(target)
SET r.label = "课程结构包含课程模块 / CourseStructure includes CourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MERGE (source)-[r:courseModuleBelongsToCourseStructure]->(target)
SET r.label = "课程模块属于课程结构 / CourseModule belongsTo CourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:3"})
MERGE (source)-[r:courseStructureIncludesCourseModule]->(target)
SET r.label = "课程结构包含课程模块 / CourseStructure includes CourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MERGE (source)-[r:courseModuleBelongsToCourseStructure]->(target)
SET r.label = "课程模块属于课程结构 / CourseModule belongsTo CourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:4"})
MERGE (source)-[r:courseStructureIncludesCourseModule]->(target)
SET r.label = "课程结构包含课程模块 / CourseStructure includes CourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
MERGE (source)-[r:courseModuleBelongsToCourseStructure]->(target)
SET r.label = "课程模块属于课程结构 / CourseModule belongsTo CourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:5"})
MERGE (source)-[r:courseStructureIncludesCourseModule]->(target)
SET r.label = "课程结构包含课程模块 / CourseStructure includes CourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:6"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
MERGE (source)-[r:courseModuleBelongsToCourseStructure]->(target)
SET r.label = "课程模块属于课程结构 / CourseModule belongsTo CourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:6"})
MERGE (source)-[r:courseStructureIncludesCourseModule]->(target)
SET r.label = "课程结构包含课程模块 / CourseStructure includes CourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
MERGE (source)-[r:courseModuleBelongsToCourseStructure]->(target)
SET r.label = "课程模块属于课程结构 / CourseModule belongsTo CourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:7"})
MERGE (source)-[r:courseStructureIncludesCourseModule]->(target)
SET r.label = "课程结构包含课程模块 / CourseStructure includes CourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
MERGE (source)-[r:courseModuleBelongsToCourseStructure]->(target)
SET r.label = "课程模块属于课程结构 / CourseModule belongsTo CourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:8"})
MERGE (source)-[r:courseStructureIncludesCourseModule]->(target)
SET r.label = "课程结构包含课程模块 / CourseStructure includes CourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:9"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
MERGE (source)-[r:courseModuleBelongsToCourseStructure]->(target)
SET r.label = "课程模块属于课程结构 / CourseModule belongsTo CourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:9"})
MERGE (source)-[r:courseStructureIncludesCourseModule]->(target)
SET r.label = "课程结构包含课程模块 / CourseStructure includes CourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:10"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
MERGE (source)-[r:courseModuleBelongsToCourseStructure]->(target)
SET r.label = "课程模块属于课程结构 / CourseModule belongsTo CourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:10"})
MERGE (source)-[r:courseStructureIncludesCourseModule]->(target)
SET r.label = "课程结构包含课程模块 / CourseStructure includes CourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:1"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:1"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:1"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:2"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:2"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:3"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:2"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:4"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:3"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:5"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:6"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:3"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:6"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:3"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:7"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:4"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:8"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:9"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:4"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:9"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:10"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:4"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:10"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:11"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:5"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:11"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:12"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:5"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:12"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:13"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:5"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:13"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:14"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:5"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:14"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:15"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:6"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:6"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:15"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:16"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:6"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:6"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:16"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:17"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:6"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:6"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:17"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:18"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:6"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:6"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:18"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:19"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:7"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:19"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:20"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:7"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:20"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:21"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:7"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:21"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:22"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:7"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:22"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:23"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:8"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:23"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:24"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:8"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:24"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:25"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:8"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:25"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:26"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:8"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:26"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:27"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:9"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:9"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:27"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:28"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:9"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:9"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:28"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:29"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:9"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:9"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:29"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:30"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:9"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:9"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:30"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:10"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:10"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:10"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:10"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:10"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:10"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:10"})
MERGE (source)-[r:themeBelongsToCourseModule]->(target)
SET r.label = "主题归属课程模块 / belongsToCourseModule";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseModule:10"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MERGE (source)-[r:courseModuleIncludesTheme]->(target)
SET r.label = "课程模块包含主题 / includesTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:1"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:1"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:1"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:10"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:1"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:1"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:2"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:2"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:2"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:1"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:3"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:3"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:10"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:3"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:1"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:4"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:4"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:10"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:10"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:4"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:5"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:5"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:11"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:11"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:5"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:6"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:6"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:6"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:6"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:6"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:8"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:6"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:7"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:8"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:7"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:11"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:11"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:7"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:8"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:8"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:11"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:11"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:8"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:9"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:3"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:9"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:9"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:6"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:6"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:9"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:9"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:12"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:12"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:9"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:10"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:3"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:10"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:10"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:6"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:6"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:10"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:10"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:9"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:9"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:10"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:11"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:3"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:11"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:11"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:9"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:9"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:11"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:11"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:12"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:12"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:11"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:12"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:3"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:12"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:12"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:6"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:6"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:12"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:12"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:12"})
MERGE (source)-[r:academicQualityReflectsCoreLiteracy]->(target)
SET r.label = "学业质量体现核心素养 / reflectsCoreLiteracy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:12"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:12"})
MERGE (source)-[r:coreLiteracyEvidencedByAcademicQuality]->(target)
SET r.label = "核心素养在学业质量中表现 / evidencedInAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:1"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:2"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:3"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:4"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:5"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:6"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:6"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:7"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:8"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:9"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:9"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:10"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:10"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:11"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:11"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:12"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:12"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:13"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:13"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:14"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:14"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:15"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:16"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:16"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:17"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:17"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:18"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:18"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:19"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:19"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:20"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:20"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:21"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:22"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:23"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:23"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:24"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:24"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:25"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:26"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:26"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:27"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:27"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:28"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:29"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:30"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:30"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:31"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:32"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:33"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:33"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:34"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:34"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:35"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:35"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:36"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:36"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:37"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:37"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:38"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:38"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:39"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:39"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:40"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:40"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:41"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:41"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:42"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:42"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:43"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:43"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:44"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:44"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:45"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:45"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:46"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:46"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:47"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:47"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:48"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:48"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:49"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:49"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:50"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:50"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:51"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:51"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:52"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:52"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:53"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:53"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:54"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:54"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:55"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:55"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:56"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:56"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:57"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:57"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:58"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:58"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:59"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:59"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:60"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:60"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:61"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:61"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:62"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:62"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:63"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:63"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:64"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:64"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:65"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:65"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:66"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:66"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:67"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:67"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:68"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:68"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:69"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:69"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:70"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:70"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:71"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:71"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:72"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:72"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:73"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:73"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:74"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:74"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:75"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:75"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:99"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:99"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:76"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:76"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:77"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:77"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:78"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:78"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:79"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:79"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:80"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:80"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:81"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:81"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:82"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:82"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:83"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:83"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:84"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:84"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:85"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:85"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:86"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:86"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:87"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:87"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:88"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:88"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:89"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:89"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:90"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:90"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:91"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:91"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:92"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:92"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:93"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:93"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:94"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:33"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:94"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:95"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:95"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:96"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:96"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:97"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:97"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:98"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MERGE (source)-[r:themeL2BelongsToTheme]->(target)
SET r.label = "归属一级主题 / belongsToTheme";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:Theme:34"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:98"})
MERGE (source)-[r:themeIncludesThemeL2]->(target)
SET r.label = "包含二级主题 / includesThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:1"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:2"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:3"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:4"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:5"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:6"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:6"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:7"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:8"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:9"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:3"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:9"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:10"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:10"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:11"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:11"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:12"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:12"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:13"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:1"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:13"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:14"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:14"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:15"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:8"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:15"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:16"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:16"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:17"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:17"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:18"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:18"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:19"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:8"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:19"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:20"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:1"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:20"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:21"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:8"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:21"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:22"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:22"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:23"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:23"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:24"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:11"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:11"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:24"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:25"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:25"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:26"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:26"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:27"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:6"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:6"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:27"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:28"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:28"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:29"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:29"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:30"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:30"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:31"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:31"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:32"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:3"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:32"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:33"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:33"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:34"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:34"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:35"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:35"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:36"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:36"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:37"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:37"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:38"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:38"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:39"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:39"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:40"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:40"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:41"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:41"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:42"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:6"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:6"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:42"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:43"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:43"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:44"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:44"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:45"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:6"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:6"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:45"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:46"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:46"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:47"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:47"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:48"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:8"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:48"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:49"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:8"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:49"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:50"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:50"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:51"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:51"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:52"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:52"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:53"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:53"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:54"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:54"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:55"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:55"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:56"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:56"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:57"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:57"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:58"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:6"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:6"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:58"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:59"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:59"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:60"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:6"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:6"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:60"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:61"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:6"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:6"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:61"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:62"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:62"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:63"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:6"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:6"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:63"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:64"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:64"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:65"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:65"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:66"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:66"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:67"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:67"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:68"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:68"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:69"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:69"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:70"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:70"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:71"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:71"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:72"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:72"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:73"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:73"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:74"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:74"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:75"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:75"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:99"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:99"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:76"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:76"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:77"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:77"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:78"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:78"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:79"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:8"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:79"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:80"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:80"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:81"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:81"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:82"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:82"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:83"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:83"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:84"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:84"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:85"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:85"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:86"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:86"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:87"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:87"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:88"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:88"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:89"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:89"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:90"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:90"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:91"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:91"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:92"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:92"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:93"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:93"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:94"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:94"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:95"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:95"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:96"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:96"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:97"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:97"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:98"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MERGE (source)-[r:themeL2SupportsCoreLiteracy]->(target)
SET r.label = "二级主题支撑核心素养 / ThemeL2 supports Core Literacy";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CoreLiteracy:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:ThemeL2:98"})
MERGE (source)-[r:coreLiteracyGuidesThemeL2]->(target)
SET r.label = "核心素养指导二级主题 / Core Literacy guides ThemeL2";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:1"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:1"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:1"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:2"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:2"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:2"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:3"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:3"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:3"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:4"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:4"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:4"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:4"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:5"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:5"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:5"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:5"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:6"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:6"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:6"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:6"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:6"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:6"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:7"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:7"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:7"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:7"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:8"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:8"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:8"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:8"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:9"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:9"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:9"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:9"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:9"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:9"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:10"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:10"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:10"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:10"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:10"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:10"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:11"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:11"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:11"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:11"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:11"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:11"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:12"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:1"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:12"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:12"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:2"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:12"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:12"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
MERGE (source)-[r:academicQualityGuidesCourseStructure]->(target)
SET r.label = "学业质量指导课程结构 / guidesCourseStructure";

MATCH (source {identifier: "urn:jy:politics:SB0310:OB06:CourseStructure:3"})
MATCH (target {identifier: "urn:jy:politics:SB0310:OB06:AcademicQuality:12"})
MERGE (source)-[r:courseStructureAssessedByAcademicQuality]->(target)
SET r.label = "课程结构以学业质量为依据 / assessedByAcademicQuality";
