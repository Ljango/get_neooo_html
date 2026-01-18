// =====================================================
// 高中生物课标图谱 - Neo4j导入脚本
// 生成时间: 2026-01-18T17:41:24.567143
// =====================================================

// 创建约束和索引
CREATE CONSTRAINT IF NOT EXISTS FOR (n:SubConception) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:CoreLiteracy) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:CourseTarget) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:CourseModule) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Module) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:AcademicQuality) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Conception) REQUIRE n.identifier IS UNIQUE;

// =====================================================
// 导入实体
// =====================================================

MERGE (n:Conception {identifier: "urn:jy:biology:SB0403:OB06:Conception:l1"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:Conception:l1", title: "细胞是生物体结构与生命活动的基本单位", description: "1.1 细胞由多种多样的分子组成，包括水、无机盐、糖类、脂质、蛋白质和核酸等，其中蛋白质和核酸是两类最重要的生物大分子\n\n1.1.1 说出细胞主要由C、H、O、N、P、S等元素构成，它们以碳链为骨架形成复杂的生物大分子\n\n1.1.2 指出水大约占细胞质量的  $2 / 3$  ，以自由水和结合水的形式存在，赋予了细胞许多特性，在生命活动中具有重要作用\n\n1.1.3 举例说出无机盐在细胞内含量虽少，但与生命活动密切相关\n\n1.1.4 概述糖类有多种类型，它们既是细胞的重要结构成分，又是生命活动的主要能源物质\n\n1.1.5 举例说出不同种类的脂质对维持细胞结构和功能有重要作用\n\n1.1.6 阐明蛋白质通常由 20 种氨基酸分子组成，它的功能取决于氨基酸序列及其形成的空间结构，细胞的功能主要由蛋白质完成\n\n1.1.7 概述核酸由核苷酸聚合而成，是储存与传递遗传信息的生物大分子\n\n1.2 细胞各部分结构既分工又合作，共同执行细胞的各项生命活动\n\n1.2.1 概述细胞都由质膜包裹，质膜将细胞与其生活环境分开，能控制物质进出，并参与细胞间的信息交流\n\n1.2.2 阐明细胞内具有多个相对独立的结构，担负着物质运输、合成与分解、能量转换和信息传递等生命活动\n\n1.2.3 阐明遗传信息主要储存在细胞核中\n\n1.2.4 举例说明细胞各部分结构之间相互联系、协调一致，共同执行细胞的各项生命活动\n\n1.3 各种细胞具有相似的基本结构，但在形态与功能上有所差异\n\n1.3.1 说明有些生物体只有一个细胞，而有的由很多细胞构成，这些细胞形态和功能多样，但都具有相似的基本结构\n\n1.3.2 描述原核细胞与真核细胞的最大区别是原核细胞没有由核膜包被的细胞核", subject: "SB0403", type: "Conception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l1\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l1"};

MERGE (n:Conception {identifier: "urn:jy:biology:SB0403:OB06:Conception:l2"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:Conception:l2", title: "细胞需要能量和营养物质维持生存，并通过分裂实现增殖", description: "2.1 物质通过被动运输、主动运输等方式进出细胞，以维持细胞的正常代谢活动\n\n2.1.1 阐明质膜具有选择透过性\n\n2.1.2 举例说明有些物质顺浓度梯度进出细胞，不需要额外提供能量；有些物质逆浓度梯度进出细胞，需要能量和载体蛋白\n\n2.1.3 举例说明大分子物质可以通过胞吞、胞吐进出细胞\n\n2.2 细胞的功能绝大多数基于化学反应, 这些反应发生在细胞的特定区域\n\n2.2.1 说明绝大多数酶是一类能催化生化反应的蛋白质, 酶活性受到环境因素 (如  $\\mathrm{pH}$  和温度等) 的影响\n\n2.2.2 解释ATP是驱动细胞生命活动的直接能源物质\n\n2.2.3 说明植物细胞的叶绿体从太阳光中捕获能量，这些能量在二氧化碳和水转变为糖与氧气的过程中，转换并储存为糖分子中的化学能\n\n2.2.4 说明生物通过细胞呼吸将储存在有机分子中的能量转化为生命活动可以利用的能量\n\n2.3 细胞会经历生长、增殖、分化、衰老和死亡等生命进程\n\n2.3.1 描述细胞通过不同的方式进行分裂, 其中有丝分裂保证了遗传信息在亲代和子代细胞中的一致性\n\n2.3.2 说明在个体发育过程中，细胞在形态、结构和功能方面发生特异性的分化，形成了复杂的多细胞生物体\n\n2.3.3 描述在正常情况下，细胞衰老和死亡是一种自然的生理过程", subject: "SB0403", type: "Conception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l1\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l1"};

MERGE (n:Conception {identifier: "urn:jy:biology:SB0403:OB06:Conception:l3"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:Conception:l3", title: "遗传信息控制生物性状，并代代相传", description: "3.1 亲代传递给子代的遗传信息主要编码在DNA分子上\n\n3.1.1 概述多数生物的基因是DNA分子的功能片段，有些病毒的基因在RNA分子上\n\n3.1.2 概述DNA分子是由四种脱氧核苷酸构成，通常由两条碱基互补配对的反向平行长链形成双螺旋结构，碱基的排列顺序编码了遗传信息\n\n3.1.3 概述DNA分子通过半保留方式进行复制\n\n3.1.4 概述DNA分子上的遗传信息通过RNA指导蛋白质的合成，细胞分化的本质是基因选择性表达的结果，生物的性状主要通过蛋白质表现\n\n3.1.5 概述某些基因中碱基序列不变但表型改变的表观遗传现象\n\n3.2 有性生殖中基因的分离和重组使双亲后代的基因组合有多种可能\n\n3.2.1 阐明减数分裂产生染色体数量减半的精细胞或卵细胞\n\n3.2.2 说明进行有性生殖的生物体，其遗传信息通过配子传递给子代\n\n3.2.3 阐明有性生殖中基因的分离和自由组合使得子代的基因型和表型有多种可能，并可由此预测子代的遗传性状\n\n3.2.4 概述性染色体上的基因传递和性别相关联\n\n3.3 由基因突变、染色体变异和基因重组引起的变异是可以遗传的\n\n3.3.1 概述碱基的替换、插入或缺失会引发基因中碱基序列的改变\n\n3.3.2 阐明基因中碱基序列的改变有可能导致它所编码的蛋白质及相应的细胞功能发生变化，甚至带来致命的后果\n\n3.3.3 描述细胞在某些化学物质、射线，以及病毒的作用下，基因突变概率可能提高，而某些基因突变能导致细胞分裂失控，甚至发生癌变\n\n3.3.4 阐明进行有性生殖的生物在减数分裂过程中, 染色体所发生的自由组合和交叉互换，会导致控制不同性状的基因重组，从而使子代出现变异\n\n3.3.5 举例说明染色体结构和数量的变异都可能导致生物性状的改变甚至死亡\n\n3.3.6 举例说明人类遗传病是可以检测和预防的", subject: "SB0403", type: "Conception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l2\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l2"};

MERGE (n:Conception {identifier: "urn:jy:biology:SB0403:OB06:Conception:l4"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:Conception:l4", title: "生物的多样性和适应性是进化的结果", description: "4.1 地球上的现存物种丰富多样，它们来自共同祖先\n\n4.1.1 尝试通过化石记录、比较解剖学和胚胎学等事实，说明当今生物具有共同的祖先\n\n4.1.2 尝试通过细胞生物学和分子生物学等知识，说明当今生物在新陈代谢、DNA的结构与功能等方面具有许多共同特征\n\n4.2 适应是自然选择的结果\n\n4.2.1 举例说明种群内的某些可遗传变异将赋予个体在特定环境中的生存和繁殖优势\n\n4.2.2 阐明具有优势性状的个体在种群中所占比例将会增加\n\n4.2.3 说明自然选择促进生物更好地适应特定的生存环境\n\n4.2.4 概述现代生物进化理论以自然选择学说为核心，为地球上的生命进化史提供了科学的解释\n\n4.2.5 举例说明变异、选择和隔离可导致新物种形成", subject: "SB0403", type: "Conception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l2\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l2"};

MERGE (n:Conception {identifier: "urn:jy:biology:SB0403:OB06:Conception:l5"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:Conception:l5", title: "生命个体的结构与功能相适应，各结构协调统一共同完成复杂的生命活动，并通过一定的调节机制保持稳态", description: "1.1 内环境为机体细胞提供适宜的生存环境，机体细胞通过内环境与外界环境进行物质交换\n\n1.1.1 说明血浆、组织液和淋巴等细胞外液共同构成高等动物细胞赖以生存的内环境\n\n1.1.2 阐明机体细胞生活在内环境中，通过内环境与外界环境进行物质交换，同时也参与内环境的形成和维持\n\n1.1.3 简述机体通过呼吸、消化、循环和泌尿等系统参与内、外环境间的物质交换\n\n1.2 内环境的变化会引发机体的自动调节，以维持内环境的稳态\n\n1.2.1 以血糖、体温、 $\\mathrm{pH}$ 和渗透压等为例，阐明机体通过调节作用保持内环境的相对稳定，以保证机体的正常生命活动\n\n1.2.2 举例说明机体不同器官、系统协调统一地共同完成各项生命活动，是维持内环境稳态的基础\n\n1.3 神经系统能够及时感知机体内、外环境的变化，并作出反应调控各器官、系统的活动，实现机体稳态\n\n1.3.1 概述神经调节的基本方式是反射（可分为条件反射和非条件反射），其结构基础是反射弧\n\n1.3.2 阐明神经细胞膜内外在静息状态具有电位差，受到外界刺激后形成动作电位，并沿神经纤维传导\n\n1.3.3 阐明神经冲动在突触处的传递通常通过化学传递方式完成\n\n1.3.4 分析位于脊髓的低级神经中枢和脑中相应的高级神经中枢相互联系、相互协调，共同调控器官和系统的活动，维持机体的稳态\n\n1.3.5 举例说明中枢神经系统通过自主神经来调节内脏的活动\n\n1.3.6 简述语言活动和条件反射是由大脑皮层控制的高级神经活动\n\n1.4 内分泌系统产生的多种类型的激素，通过体液传送而发挥调节作用，实现机体稳态\n\n1.4.1 说出人体内分泌系统主要由内分泌腺组成，包括垂体、甲状腺、肾上腺、胰岛和性腺等多种腺体，它们分泌的各类激素参与生命活动的调节\n\n1.4.2 举例说明激素通过分级调节、反馈调节等机制维持机体的稳态，如甲状腺激素分泌的调节和血糖平衡的调节等\n\n1.4.3 举例说出神经调节与体液调节相互协调共同维持机体的稳态，如体温调节和水盐平衡的调节等\n\n1.4.4 举例说明其他体液成分参与稳态的调节，如二氧化碳对呼吸运动的调节等\n\n1.5 免疫系统能够抵御病原体的侵袭，识别并清除机体内衰老、死亡或异常的细胞，实现机体稳态\n\n1.5.1 举例说明免疫细胞、免疫器官和免疫活性物质等是免疫调节的结构与物质基础\n\n1.5.2 概述人体的免疫包括与生俱来的非特异性免疫和后天获得的特异性免疫\n\n1.5.3 阐明特异性免疫是通过体液免疫和细胞免疫两种方式，针对特定病原体发生的免疫应答\n\n1.5.4 举例说明免疫功能异常可能引发疾病，如过敏、自身免疫病、艾滋病和先天性免疫缺陷病等\n\n1.6 植物生命活动受到多种因素的调节，其中最重要的是植物激素的调节\n\n1.6.1 概述科学家经过不断的探索，发现了植物生长素，并揭示了它在调节植物生长时表现出两重性，既能促进生长，也能抑制生长\n\n1.6.2 举例说明几种主要植物激素的作用，这些激素可通过协同、拮抗等方式共同实现对植物生命活动的调节\n\n1.6.3 举例说明生长素、细胞分裂素、赤霉素、脱落酸和乙烯等植物激素及其类似物在生产上得到了广泛应用\n\n1.6.4 概述其他因素参与植物生命活动的调节，如光、重力和温度等", subject: "SB0403", type: "Conception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l3\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l3"};

MERGE (n:Conception {identifier: "urn:jy:biology:SB0403:OB06:Conception:l6"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:Conception:l6", title: "生态系统中的各种成分相互影响，共同实现系统的物质循环、能量流动和信息传递，生态系统通过自我调节保持相对稳定的状态", description: "2.1 不同种群的生物在长期适应环境和彼此相互适应的过程中形成动态的生物群落\n\n2.1.1 列举种群具有种群密度、出生率和死亡率、迁入率和迁出率、年龄结构、性别比例等特征\n\n2.1.2 尝试建立数学模型解释种群的数量变动\n\n2.1.3 举例说明阳光、温度和水等非生物因素以及不同物种之间的相互作用都会影响生物的种群特征\n\n2.1.4 描述群落具有垂直结构和水平结构等特征，并可随时间而改变\n\n2.1.5 阐明一个群落替代另一个群落的演替过程，包括初生演替和次生演替两种类型\n\n2.1.6 分析不同群落中的生物具有与该群落环境相适应的形态结构、生理特征和分布特点\n\n2.2 生物群落与非生物的环境因素相互作用形成多样化的生态系统，完成物质循环、能量流动和信息传递\n\n2.2.1 阐明生态系统由生产者、消费者和分解者等生物因素以及阳光、空气、水等非生物因素组成，各组分紧密联系使生态系统成为具有一定结构和功能的统一体\n\n2.2.2 讨论某一生态系统中生产者和消费者通过食物链和食物网联系在一起形成复杂的营养结构\n\n2.2.3 分析生态系统中的物质在生物群落与无机环境之间不断循环、能量在生物群落中单向流动并逐级递减的规律\n\n2.2.4 举例说明利用物质循环和能量流动规律，人们能够更加科学、有效地利用生态系统中的资源\n\n2.2.5 解释生态金字塔表征了食物网各营养级之间在个体数量、生物量和能量方面的关系\n\n2.2.6 阐明某些有害物质会通过食物链不断地富集的现象\n\n2.2.7 举例说出生态系统中物理、化学和行为信息的传递对生命活动的正常进行、生物种群的繁衍和种间关系的调节起着重要作用\n\n2.2.8 分析特定生态系统的生物与非生物因素决定其营养结构\n\n2.3 生态系统通过自我调节作用抵御和消除一定限度的外来干扰，保持或恢复自身结构和功能的相对稳定\n\n2.3.1 解释生态系统具有保持或恢复自身结构和功能相对稳定，并维持动态平衡的能力\n\n2.3.2 举例说明生态系统的稳定性会受到自然或人为因素的影响，如气候变化、自然事件、人类活动或外来物种入侵等\n\n2.3.3 阐明生态系统在受到一定限度的外来干扰时，能够通过自我调节维持稳定\n\n2.4 人类活动对生态系统的动态平衡有着深远的影响，依据生态学原理保护环境是人类生存和可持续发展的必要条件\n\n2.4.1 探讨人口增长会对环境造成压力\n\n2.4.2 关注全球气候变化、水资源短缺、臭氧层破坏、酸雨、荒漠化和环境污染等全球性环境问题对生物圈的稳态造成威胁，同时也对人类的生存和可持续发展造成影响\n\n2.4.3 概述生物多样性对维持生态系统的稳定性以及人类生存和发展的重要意义，并尝试提出人与自然和谐共生的合理化建议\n\n2.4.4 举例说明根据生态学原理、采用系统工程的方法和技术，达到资源多层次和循环利用的目的，使特定区域中的人和自然环境均受益\n\n2.4.5 形成“环境保护需要从我做起”的意识", subject: "SB0403", type: "Conception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l4\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l4"};

MERGE (n:Conception {identifier: "urn:jy:biology:SB0403:OB06:Conception:l7"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:Conception:l7", title: "发酵工程利用微生物的特定功能规模化生产对人类有用的产品", description: "3.1 获得纯净的微生物培养物是发酵工程的基础\n\n3.1.1 阐明在发酵工程中灭菌是获得纯净的微生物培养物的前提\n\n3.1.2 阐明无菌技术是在操作过程中，保持无菌物品与无菌区域不被微生物污染的技术\n\n3.1.3 举例说明通过调整培养基的配方可有目的地培养某种微生物\n\n3.1.4 概述平板划线法和稀释涂布平板法是实验室中进行微生物分离和纯化的常用方法\n\n3.1.5 概述稀释涂布平板法和显微镜计数法是测定微生物数量的常用方法\n\n3.2 发酵工程为人类提供多样的生物产品\n\n3.2.1 举例说明日常生活中的某些食品是运用传统发酵技术生产的\n\n3.2.2 阐明发酵工程利用现代工程技术及微生物的特定功能，工业化生产人类所需产品\n\n3.2.3 举例说明发酵工程在医药、食品及其他工农业生产上有重要的应用价值", subject: "SB0403", type: "Conception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l5\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l5"};

MERGE (n:Conception {identifier: "urn:jy:biology:SB0403:OB06:Conception:l8"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:Conception:l8", title: "细胞工程通过细胞水平上的操作，获得有用的生物体或其产品", description: "4.1 植物细胞工程包括组织培养和体细胞杂交等技术\n\n4.1.1 阐明植物组织培养是在一定条件下，将离体植物器官、组织和细胞在适宜的培养条件下诱导形成愈伤组织，并重新分化，最终形成完整植株的过程\n\n4.1.2 概述植物体细胞杂交是将不同植物体细胞在一定条件下融合成杂合细胞，继而培育成新植物体的技术\n\n4.1.3 举例说明植物细胞工程利用快速繁殖、脱毒、次生代谢产物生产、育种等方式有效提高了生产效率\n\n4.2 动物细胞工程包括细胞培养、核移植、细胞融合和干细胞的应用等技术\n\n4.2.1 阐明动物细胞培养是从动物体获得相关组织，分散成单个细胞后，在适宜的培养条件下让细胞生长和增殖的过程。动物细胞培养是动物细胞工程的基础\n\n4.2.2 阐明动物细胞核移植一般是将体细胞核移入一个去核的卵母细胞中，并使重组细胞发育成新胚胎，继而发育成动物个体的过程\n\n4.2.3 阐明动物细胞融合是指通过物理、化学或生物学等手段，使两个或多个动物细胞结合形成一个细胞的过程\n\n4.2.4 概述细胞融合技术是单克隆抗体制备的重要技术\n\n4.2.5 简述干细胞在生物医学工程中有广泛的应用价值\n\n4.3 对动物早期胚胎或配子进行显微操作和处理以获得目标个体\n\n4.3.1 简述胚胎形成经过了受精及早期发育等过程\n\n4.3.2 简述胚胎工程包括体外受精、胚胎移植和胚胎分割等技术", subject: "SB0403", type: "Conception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l5\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l5"};

MERGE (n:Conception {identifier: "urn:jy:biology:SB0403:OB06:Conception:l9"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:Conception:l9", title: "基因工程赋予生物新的遗传特性", description: "5.1 基因工程是一种重组DNA技术\n\n5.1.1 概述基因工程是在遗传学、微生物学、生物化学和分子生物学等学科基础上发展而来的\n\n5.1.2 阐明DNA重组技术的实现需要利用限制性内切核酸酶、DNA连接酶和载体三种基本工具\n\n5.1.3 阐明基因工程的基本操作程序主要包括目的基因的获取、基因表达载体的构建、目的基因导入受体细胞和目的基因及其表达产物的检测鉴定等步骤\n\n5.1.4 举例说明基因工程在农牧、食品及医药等行业的广泛应用改善了人类的生活品质\n\n5.2 蛋白质工程是基因工程的延伸\n\n5.2.1 概述人们根据基因工程原理，进行蛋白质设计和改造，可以获得性状和功能更符合人类需求的蛋白质\n\n5.2.2 举例说明依据人类需要对原有蛋白质结构进行基因改造、生产目标蛋白的过程", subject: "SB0403", type: "Conception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l5\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l5"};

MERGE (n:Conception {identifier: "urn:jy:biology:SB0403:OB06:Conception:l10"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:Conception:l10", title: "生物技术在造福人类社会的同时也可能会带来安全与伦理问题", description: "6.1 转基因产品的安全性引发社会的广泛关注\n\n6.1.1 举例说出日常生活中的转基因产品\n\n6.1.2 探讨转基因技术在应用过程中带来的影响\n\n6.2 中国禁止生殖性克隆人\n\n6.2.1 举例说出生殖性克隆人面临的伦理问题\n\n6.2.2 分析说明我国为什么不赞成、不允许、不支持、不接受任何生殖性克隆人实验\n\n6.3 世界范围内应全面禁止生物武器\n\n6.3.1 举例说明历史上生物武器对人类造成了严重的威胁与伤害\n\n6.3.2 认同我国反对生物武器及其技术和设备的扩散", subject: "SB0403", type: "Conception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l5\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l5"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l1"})
SET n += {type: "CoreLiteracy", title: "生命观念", description: "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华，是能够理解或解释生物学相关事件和现象的意识和思想方法。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平一\", \"standardDescription\": \"在熟悉的、结构良好的生产生活或生物学研究等问题情境中，从生物学的结构与功能观、物质与能量观、进化与适应观、稳态与平衡观中的特定角度，在微观和宏观层面，描述其中所体现的生命系统的成分、结构及其功能，生命活动调节过程、稳态的维持、物质变化和能量转换，遗传与变异的物质基础和规律，以及生物的多样性和统一性。\"}", identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l1", CJ_standard: "水平一", CJ_standardDescription: "在熟悉的、结构良好的生产生活或生物学研究等问题情境中，从生物学的结构与功能观、物质与能量观、进化与适应观、稳态与平衡观中的特定角度，在微观和宏观层面，描述其中所体现的生命系统的成分、结构及其功能，生命活动调节过程、稳态的维持、物质变化和能量转换，遗传与变异的物质基础和规律，以及生物的多样性和统一性。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l2"})
SET n += {type: "CoreLiteracy", title: "生命观念", description: "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华，是能够理解或解释生物学相关事件和现象的意识和思想方法。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平二\", \"standardDescription\": \"在较为陌生的、结构良好的生产生活或生物学研究等问题情境中，从生物学的结构与功能观、物质与能量观、进化与适应观、稳态与平衡观中的不同角度，在微观和宏观层面，说明和解释其中所体现的生命系统的成分、结构及其功能，生命活动调节机制、稳态维持机制、物质变化和能量转换，遗传与变异的物质基础和规律，以及生物的多样性和统一性。\"}", identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l2", CJ_standard: "水平二", CJ_standardDescription: "在较为陌生的、结构良好的生产生活或生物学研究等问题情境中，从生物学的结构与功能观、物质与能量观、进化与适应观、稳态与平衡观中的不同角度，在微观和宏观层面，说明和解释其中所体现的生命系统的成分、结构及其功能，生命活动调节机制、稳态维持机制、物质变化和能量转换，遗传与变异的物质基础和规律，以及生物的多样性和统一性。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l3"})
SET n += {type: "CoreLiteracy", title: "生命观念", description: "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华，是能够理解或解释生物学相关事件和现象的意识和思想方法。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平三\", \"standardDescription\": \"在较为陌生的、结构不良的生产生活或生物学研究等问题情境中，综合运用生物学的结构与功能观、物质与能量观、进化与适应观、稳态与平衡观，在微观和宏观层面，阐释其中所体现的生命系统的成分、结构及其功能，生命活动调节机制、稳态维持机制、物质变化和能量转换，遗传与变异的物质基础和规律，以及生物的多样性和统一性。\"}", identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l3", CJ_standard: "水平三", CJ_standardDescription: "在较为陌生的、结构不良的生产生活或生物学研究等问题情境中，综合运用生物学的结构与功能观、物质与能量观、进化与适应观、稳态与平衡观，在微观和宏观层面，阐释其中所体现的生命系统的成分、结构及其功能，生命活动调节机制、稳态维持机制、物质变化和能量转换，遗传与变异的物质基础和规律，以及生物的多样性和统一性。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l4"})
SET n += {type: "CoreLiteracy", title: "科学思维", description: "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平一\", \"standardDescription\": \"在熟悉的、结构良好的生产生活或生物学研究等问题情境中，基于证据和逻辑，运用比较、分类、归纳、演绎、分析、综合、建模等方法分析生命现象中的生物学重要概念或原理，并使用文字或示意图等表征形式进行直观展示。\"}", identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l4", CJ_standard: "水平一", CJ_standardDescription: "在熟悉的、结构良好的生产生活或生物学研究等问题情境中，基于证据和逻辑，运用比较、分类、归纳、演绎、分析、综合、建模等方法分析生命现象中的生物学重要概念或原理，并使用文字或示意图等表征形式进行直观展示。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l5"})
SET n += {type: "CoreLiteracy", title: "科学思维", description: "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平二\", \"standardDescription\": \"在较为陌生的、结构良好的生产生活或生物学研究等问题情境中，基于证据和逻辑，综合运用比较、分类、归纳、演绎、分析、综合、建模等方法分析和解释其中的生物学规律或机制，并使用文字、图示或模型说明其内涵，并对生命现象的变化作出预测。\"}", identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l5", CJ_standard: "水平二", CJ_standardDescription: "在较为陌生的、结构良好的生产生活或生物学研究等问题情境中，基于证据和逻辑，综合运用比较、分类、归纳、演绎、分析、综合、建模等方法分析和解释其中的生物学规律或机制，并使用文字、图示或模型说明其内涵，并对生命现象的变化作出预测。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l6"})
SET n += {type: "CoreLiteracy", title: "科学思维", description: "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平三\", \"standardDescription\": \"在较为陌生的、结构不良的生产生活或生物学研究等问题情境中，基于证据和逻辑，综合运用比较、分类、归纳、演绎、分析、综合、建模等方法，以及批判性思维和创造性思维，揭示情境中所蕴含的生物学规律或机制，通过恰当的表征形式阐释其内涵，并综合运用多个相关的生物学重要概念或原理，对生命现象的变化作出预测。\"}", identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l6", CJ_standard: "水平三", CJ_standardDescription: "在较为陌生的、结构不良的生产生活或生物学研究等问题情境中，基于证据和逻辑，综合运用比较、分类、归纳、演绎、分析、综合、建模等方法，以及批判性思维和创造性思维，揭示情境中所蕴含的生物学规律或机制，通过恰当的表征形式阐释其内涵，并综合运用多个相关的生物学重要概念或原理，对生命现象的变化作出预测。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l7"})
SET n += {type: "CoreLiteracy", title: "科学探究", description: "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平一\", \"standardDescription\": \"在熟悉的、结构良好的生产生活或生物学研究等问题情境中，能够基于对生命现象的分析，提出可探究的问题；使用常用的实验器具，遵循正确的伦理道德，设计和实施简单的探究方案，如实记录和分析研究结果，依据结果得出结论；通过书面和口头报告进行交流；在活动中能与他人合作，体验和感悟科学探究对解决实际问题的意义和价值。\"}", identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l7", CJ_standard: "水平一", CJ_standardDescription: "在熟悉的、结构良好的生产生活或生物学研究等问题情境中，能够基于对生命现象的分析，提出可探究的问题；使用常用的实验器具，遵循正确的伦理道德，设计和实施简单的探究方案，如实记录和分析研究结果，依据结果得出结论；通过书面和口头报告进行交流；在活动中能与他人合作，体验和感悟科学探究对解决实际问题的意义和价值。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l8"})
SET n += {type: "CoreLiteracy", title: "科学探究", description: "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平二\", \"standardDescription\": \"在较为陌生的、结构良好的生产生活或生物学研究等问题情境中，能够基于对生命现象或现实需求的分析，提出可探究的生物学问题或工程任务；分析已知条件，运用生物学概念、原理和技术手段，选用恰当的器材，设计并实施探究实验方案或工程学实践方案，运用多种方法如实记录和分析研究结果，尝试解决问题或完成工程任务，并使用证据与他人进行交流；在活动中能与他人合作。\"}", identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l8", CJ_standard: "水平二", CJ_standardDescription: "在较为陌生的、结构良好的生产生活或生物学研究等问题情境中，能够基于对生命现象或现实需求的分析，提出可探究的生物学问题或工程任务；分析已知条件，运用生物学概念、原理和技术手段，选用恰当的器材，设计并实施探究实验方案或工程学实践方案，运用多种方法如实记录和分析研究结果，尝试解决问题或完成工程任务，并使用证据与他人进行交流；在活动中能与他人合作。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l9"})
SET n += {type: "CoreLiteracy", title: "科学探究", description: "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平三\", \"standardDescription\": \"在较为陌生的、结构不良的生产生活或生物学研究等问题情境中，基于对现象或现实需求的分析，提出清晰和可探究的生物学问题或工程任务；分析已知条件和制约因素，遵循正确的伦理道德，综合运用多学科知识、思想、方法和技术手段，选用恰当的器材，创造性地设计和实施可行的研究方案，如实记录和选用恰当的方法分析研究结果，解决问题或完成工程任务；使用证据与他人进行有效交流与反思；在活动中积极主动地与他人合作。\"}", identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l9", CJ_standard: "水平三", CJ_standardDescription: "在较为陌生的、结构不良的生产生活或生物学研究等问题情境中，基于对现象或现实需求的分析，提出清晰和可探究的生物学问题或工程任务；分析已知条件和制约因素，遵循正确的伦理道德，综合运用多学科知识、思想、方法和技术手段，选用恰当的器材，创造性地设计和实施可行的研究方案，如实记录和选用恰当的方法分析研究结果，解决问题或完成工程任务；使用证据与他人进行有效交流与反思；在活动中积极主动地与他人合作。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l10"})
SET n += {type: "CoreLiteracy", title: "社会责任", description: "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平一\", \"standardDescription\": \"在熟悉的、结构良好的生产生活或生物学研究等问题情境中，运用生命健康、人与自然和谐共生等基本观念，践行健康的生活方式，表现出保护环境的行为习惯，辨别迷信和伪科学；遵循正确的伦理道德，关注社会热点中与生物学有关的议题和生物学技术的应用。\"}", identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l10", CJ_standard: "水平一", CJ_standardDescription: "在熟悉的、结构良好的生产生活或生物学研究等问题情境中，运用生命健康、人与自然和谐共生等基本观念，践行健康的生活方式，表现出保护环境的行为习惯，辨别迷信和伪科学；遵循正确的伦理道德，关注社会热点中与生物学有关的议题和生物学技术的应用。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l11"})
SET n += {type: "CoreLiteracy", title: "社会责任", description: "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平二\", \"standardDescription\": \"在较为陌生的、结构良好的生产生活或生物学研究等问题情境中，能参与宣传健康生活、生物多样性和环境保护、生物技术安全和伦理等方面的相关知识和科学做法，参与社会性科学议题的讨论，从科学、技术与社会等方面阐明个人立场；认同人与自然和谐共生的观念，开展健康生活、生物多样性和环境保护等方面的实践活动。\"}", identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l11", CJ_standard: "水平二", CJ_standardDescription: "在较为陌生的、结构良好的生产生活或生物学研究等问题情境中，能参与宣传健康生活、生物多样性和环境保护、生物技术安全和伦理等方面的相关知识和科学做法，参与社会性科学议题的讨论，从科学、技术与社会等方面阐明个人立场；认同人与自然和谐共生的观念，开展健康生活、生物多样性和环境保护等方面的实践活动。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l12"})
SET n += {type: "CoreLiteracy", title: "社会责任", description: "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平三\", \"standardDescription\": \"在较为陌生的、结构不良的生产生活或生物学研究等问题情境中，遵循正确的伦理道德，客观分析与评价常见生物技术在生产生活中的应用所产生的效益和风险；运用批判性思维等参与社会性科学议题的讨论，阐述不同观点或行为的科学性与合理性，从科学、技术与社会等方面阐明个人立场，作出理性决策；秉持人与自然和谐共生的观念，积极主动地与他人合作，开展健康生活、生物多样性和环境保护等方面的实践活动。\"}", identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l12", CJ_standard: "水平三", CJ_standardDescription: "在较为陌生的、结构不良的生产生活或生物学研究等问题情境中，遵循正确的伦理道德，客观分析与评价常见生物技术在生产生活中的应用所产生的效益和风险；运用批判性思维等参与社会性科学议题的讨论，阐述不同观点或行为的科学性与合理性，从科学、技术与社会等方面阐明个人立场，作出理性决策；秉持人与自然和谐共生的观念，积极主动地与他人合作，开展健康生活、生物多样性和环境保护等方面的实践活动。"};

MERGE (n:CourseModule {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l1"})
SET n += {type: "CourseModule", title: "必修课程", description: "必修课程是现代生物学的核心内容，对于提高全体学生的生物学学科核心素养具有不可或缺的作用。必修课程是学习选择性必修和选修课程的基础。必修课程面向全体高中学生，选择了生物学最基本的重要概念。为了让学生更好地理解与掌握教学内容，教学中要高度重视学生的实践环节，力求为学生提供更多的动手实践机会。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{}", identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l1"};

MERGE (n:CourseModule {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l2"})
SET n += {type: "CourseModule", title: "选择性必修课程", description: "", subject: "SB0403", applicableLevel: "OB06", contentJson: "{}", identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l2"};

MERGE (n:CourseModule {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l3"})
SET n += {type: "CourseModule", title: "选修课程", description: "选修课程旨在帮助学生更好地生活、就业，以及满足一部分学生选择从事科学研究的需求。为便于学校设计有针对性的、适合当地教学条件的校本课程，提供课程的选题及设计实施建议如下。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{}", identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l3"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l1"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l1", title: "细胞由多种多样的分子组成，包括水、无机盐、糖类、脂质、蛋白质和核酸等，其中蛋白质和核酸是两类最重要的生物大分子", description: "1.1.1 说出细胞主要由C、H、O、N、P、S等元素构成，它们以碳链为骨架形成复杂的生物大分子\n\n1.1.2 指出水大约占细胞质量的  $2 / 3$  ，以自由水和结合水的形式存在，赋予了细胞许多特性，在生命活动中具有重要作用\n\n1.1.3 举例说出无机盐在细胞内含量虽少，但与生命活动密切相关\n\n1.1.4 概述糖类有多种类型，它们既是细胞的重要结构成分，又是生命活动的主要能源物质\n\n1.1.5 举例说出不同种类的脂质对维持细胞结构和功能有重要作用\n\n1.1.6 阐明蛋白质通常由 20 种氨基酸分子组成，它的功能取决于氨基酸序列及其形成的空间结构，细胞的功能主要由蛋白质完成\n\n1.1.7 概述核酸由核苷酸聚合而成，是储存与传递遗传信息的生物大分子", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l1\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l1\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l1", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l1"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l2"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l2", title: "细胞各部分结构既分工又合作，共同执行细胞的各项生命活动", description: "1.2.1 概述细胞都由质膜包裹，质膜将细胞与其生活环境分开，能控制物质进出，并参与细胞间的信息交流\n\n1.2.2 阐明细胞内具有多个相对独立的结构，担负着物质运输、合\n\n成与分解、能量转换和信息传递等生命活动\n\n1.2.3 阐明遗传信息主要储存在细胞核中\n\n1.2.4 举例说明细胞各部分结构之间相互联系、协调一致，共同执行细胞的各项生命活动", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l1\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l1\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l1", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l1"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l3"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l3", title: "各种细胞具有相似的基本结构，但在形态与功能上有所差异", description: "1.3.1 说明有些生物体只有一个细胞，而有的由很多细胞构成，这些细胞形态和功能多样，但都具有相似的基本结构\n\n1.3.2 描述原核细胞与真核细胞的最大区别是原核细胞没有由核膜包被的细胞核", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l1\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l1\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l1", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l1"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l4"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l4", title: "物质通过被动运输、主动运输等方式进出细胞，以维持细胞的正常代谢活动", description: "2.1.1 阐明质膜具有选择透过性\n\n2.1.2 举例说明有些物质顺浓度梯度进出细胞，不需要额外提供能量；有些物质逆浓度梯度进出细胞，需要能量和载体蛋白\n\n2.1.3 举例说明大分子物质可以通过胞吞、胞吐进出细胞", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l1\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l2\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l1", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l2"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l5"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l5", title: "细胞的功能绝大多数基于化学反应, 这些反应发生在细胞的特定区域", description: "2.2.1 说明绝大多数酶是一类能催化生化反应的蛋白质, 酶活性受到环境因素 (如  $\\mathrm{pH}$  和温度等) 的影响\n\n2.2.2 解释ATP是驱动细胞生命活动的直接能源物质\n\n2.2.3 说明植物细胞的叶绿体从太阳光中捕获能量，这些能量在二氧化碳和水转变为糖与氧气的过程中，转换并储存为糖分子中的化学能\n\n2.2.4 说明生物通过细胞呼吸将储存在有机分子中的能量转化为生命活动可以利用的能量", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l1\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l2\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l1", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l2"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l6"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l6", title: "细胞会经历生长、增殖、分化、衰老和死亡等生命进程", description: "2.3.1 描述细胞通过不同的方式进行分裂, 其中有丝分裂保证了遗\n\n传信息在亲代和子代细胞中的一致性\n\n2.3.2 说明在个体发育过程中，细胞在形态、结构和功能方面发生特异性的分化，形成了复杂的多细胞生物体\n\n2.3.3 描述在正常情况下，细胞衰老和死亡是一种自然的生理过程", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l1\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l2\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l1", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l2"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l7"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l7", title: "亲代传递给子代的遗传信息主要编码在DNA分子上", description: "3.1.1 概述多数生物的基因是DNA分子的功能片段，有些病毒的基因在RNA分子上\n\n3.1.2 概述DNA分子是由四种脱氧核苷酸构成，通常由两条碱基互补配对的反向平行长链形成双螺旋结构，碱基的排列顺序编码了遗传信息\n\n3.1.3 概述DNA分子通过半保留方式进行复制\n\n3.1.4 概述DNA分子上的遗传信息通过RNA指导蛋白质的合成，细胞分化的本质是基因选择性表达的结果，生物的性状主要通过蛋白质表现\n\n3.1.5 概述某些基因中碱基序列不变但表型改变的表观遗传现象", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l2\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l3\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l2", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l3"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l8"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l8", title: "有性生殖中基因的分离和重组使双亲后代的基因组合有多种可能", description: "3.2.1 阐明减数分裂产生染色体数量减半的精细胞或卵细胞\n\n3.2.2 说明进行有性生殖的生物体，其遗传信息通过配子传递给子代\n\n3.2.3 阐明有性生殖中基因的分离和自由组合使得子代的基因型和表型有多种可能，并可由此预测子代的遗传性状\n\n3.2.4 概述性染色体上的基因传递和性别相关联", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l2\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l3\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l2", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l3"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l9"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l9", title: "由基因突变、染色体变异和基因重组引起的变异是可以遗传的", description: "3.3.1 概述碱基的替换、插入或缺失会引发基因中碱基序列的改变\n\n3.3.2 阐明基因中碱基序列的改变有可能导致它所编码的蛋白质及相应的细胞功能发生变化，甚至带来致命的后果\n\n3.3.3 描述细胞在某些化学物质、射线，以及病毒的作用下，基因突变概率可能提高，而某些基因突变能导致细胞分裂失控，甚至发生癌变\n\n3.3.4 阐明进行有性生殖的生物在减数分裂过程中, 染色体所发生\n\n的自由组合和交叉互换，会导致控制不同性状的基因重组，从而使子代出现变异\n\n3.3.5 举例说明染色体结构和数量的变异都可能导致生物性状的改变甚至死亡\n\n3.3.6 举例说明人类遗传病是可以检测和预防的", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l2\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l3\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l2", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l3"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l10"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l10", title: "地球上的现存物种丰富多样，它们来自共同祖先", description: "4.1.1 尝试通过化石记录、比较解剖学和胚胎学等事实，说明当今生物具有共同的祖先\n\n4.1.2 尝试通过细胞生物学和分子生物学等知识，说明当今生物在新陈代谢、DNA的结构与功能等方面具有许多共同特征", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l2\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l4\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l2", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l4"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l11"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l11", title: "适应是自然选择的结果", description: "4.2.1 举例说明种群内的某些可遗传变异将赋予个体在特定环境中的生存和繁殖优势\n\n4.2.2 阐明具有优势性状的个体在种群中所占比例将会增加\n\n4.2.3 说明自然选择促进生物更好地适应特定的生存环境\n\n4.2.4 概述现代生物进化理论以自然选择学说为核心，为地球上的生命进化史提供了科学的解释\n\n4.2.5 举例说明变异、选择和隔离可导致新物种形成", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l2\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l4\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l2", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l4"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l12"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l12", title: "内环境为机体细胞提供适宜的生存环境，机体细胞通过内环境与外界环境进行物质交换", description: "1.1.1 说明血浆、组织液和淋巴等细胞外液共同构成高等动物细胞赖以生存的内环境\n\n1.1.2 阐明机体细胞生活在内环境中，通过内环境与外界环境进行物质交换，同时也参与内环境的形成和维持\n\n1.1.3 简述机体通过呼吸、消化、循环和泌尿等系统参与内、外环境间的物质交换", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l3\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l5\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l3", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l5"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l13"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l13", title: "内环境的变化会引发机体的自动调节，以维持内环境的稳态", description: "1.2.1 以血糖、体温、 $\\mathrm{pH}$ 和渗透压等为例，阐明机体通过调节作用保持内环境的相对稳定，以保证机体的正常生命活动\n\n1.2.2 举例说明机体不同器官、系统协调统一地共同完成各项生命活动，是维持内环境稳态的基础", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l3\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l5\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l3", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l5"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l14"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l14", title: "神经系统能够及时感知机体内、外环境的变化，并作出反应调控各器官、系统的活动，实现机体稳态", description: "1.3.1 概述神经调节的基本方式是反射（可分为条件反射和非条件反射），其结构基础是反射弧\n\n1.3.2 阐明神经细胞膜内外在静息状态具有电位差，受到外界刺激后形成动作电位，并沿神经纤维传导\n\n1.3.3 阐明神经冲动在突触处的传递通常通过化学传递方式完成\n\n1.3.4 分析位于脊髓的低级神经中枢和脑中相应的高级神经中枢相互联系、相互协调，共同调控器官和系统的活动，维持机体的稳态\n\n1.3.5 举例说明中枢神经系统通过自主神经来调节内脏的活动\n\n1.3.6 简述语言活动和条件反射是由大脑皮层控制的高级神经活动", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l3\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l5\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l3", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l5"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l15"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l15", title: "内分泌系统产生的多种类型的激素，通过体液传送而发挥调节作用，实现机体稳态", description: "1.4.1 说出人体内分泌系统主要由内分泌腺组成，包括垂体、甲状腺、肾上腺、胰岛和性腺等多种腺体，它们分泌的各类激素参与生命活动的调节\n\n1.4.2 举例说明激素通过分级调节、反馈调节等机制维持机体的稳态，如甲状腺激素分泌的调节和血糖平衡的调节等\n\n1.4.3 举例说出神经调节与体液调节相互协调共同维持机体的稳态，如体温调节和水盐平衡的调节等\n\n1.4.4 举例说明其他体液成分参与稳态的调节，如二氧化碳对呼吸运动的调节等", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l3\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l5\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l3", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l5"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l16"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l16", title: "免疫系统能够抵御病原体的侵袭，识别并清除机体内衰老、死亡或异常的细胞，实现机体稳态", description: "1.5.1 举例说明免疫细胞、免疫器官和免疫活性物质等是免疫调节的结构与物质基础\n\n1.5.2 概述人体的免疫包括与生俱来的非特异性免疫和后天获得的特异性免疫\n\n1.5.3 阐明特异性免疫是通过体液免疫和细胞免疫两种方式，针对特定病原体发生的免疫应答\n\n1.5.4 举例说明免疫功能异常可能引发疾病，如过敏、自身免疫病、艾滋病和先天性免疫缺陷病等", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l3\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l5\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l3", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l5"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l17"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l17", title: "植物生命活动受到多种因素的调节，其中最重要的是植物激素的调节", description: "1.6.1 概述科学家经过不断的探索，发现了植物生长素，并揭示了它在调节植物生长时表现出两重性，既能促进生长，也能抑制生长\n\n1.6.2 举例说明几种主要植物激素的作用，这些激素可通过协同、拮抗等方式共同实现对植物生命活动的调节\n\n1.6.3 举例说明生长素、细胞分裂素、赤霉素、脱落酸和乙烯等植物激素及其类似物在生产上得到了广泛应用\n\n1.6.4 概述其他因素参与植物生命活动的调节，如光、重力和温度等", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l3\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l5\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l3", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l5"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l18"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l18", title: "不同种群的生物在长期适应环境和彼此相互适应的过程中形成动态的生物群落", description: "2.1.1 列举种群具有种群密度、出生率和死亡率、迁入率和迁出率、年龄结构、性别比例等特征\n\n2.1.2 尝试建立数学模型解释种群的数量变动\n\n2.1.3 举例说明阳光、温度和水等非生物因素以及不同物种之间的相互作用都会影响生物的种群特征\n\n2.1.4 描述群落具有垂直结构和水平结构等特征，并可随时间而改变\n\n2.1.5 阐明一个群落替代另一个群落的演替过程，包括初生演替和次生演替两种类型\n\n2.1.6 分析不同群落中的生物具有与该群落环境相适应的形态结构、生理特征和分布特点", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l4\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l6\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l4", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l6"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l19"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l19", title: "生物群落与非生物的环境因素相互作用形成多样化的生态系统，完成物质循环、能量流动和信息传递", description: "2.2.1 阐明生态系统由生产者、消费者和分解者等生物因素以及阳光、空气、水等非生物因素组成，各组分紧密联系使生态系统成为具有一定结构和功能的统一体\n\n2.2.2 讨论某一生态系统中生产者和消费者通过食物链和食物网联系在一起形成复杂的营养结构\n\n2.2.3 分析生态系统中的物质在生物群落与无机环境之间不断循环、能量在生物群落中单向流动并逐级递减的规律\n\n2.2.4 举例说明利用物质循环和能量流动规律，人们能够更加科学、有效地利用生态系统中的资源\n\n2.2.5 解释生态金字塔表征了食物网各营养级之间在个体数量、生物量和能量方面的关系\n\n2.2.6 阐明某些有害物质会通过食物链不断地富集的现象\n\n2.2.7 举例说出生态系统中物理、化学和行为信息的传递对生命活动的正常进行、生物种群的繁衍和种间关系的调节起着重要作用\n\n2.2.8 分析特定生态系统的生物与非生物因素决定其营养结构", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l4\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l6\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l4", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l6"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l20"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l20", title: "生态系统通过自我调节作用抵御和消除一定限度的外来干扰，保持或恢复自身结构和功能的相对稳定", description: "2.3.1 解释生态系统具有保持或恢复自身结构和功能相对稳定，并维持动态平衡的能力\n\n2.3.2 举例说明生态系统的稳定性会受到自然或人为因素的影响，如气候变化、自然事件、人类活动或外来物种入侵等\n\n2.3.3 阐明生态系统在受到一定限度的外来干扰时，能够通过自我调节维持稳定", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l4\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l6\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l4", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l6"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l21"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l21", title: "人类活动对生态系统的动态平衡有着深远的影响，依据生态学原理\n\n保护环境是人类生存和可持续发展的必要条件", description: "2.4.1 探讨人口增长会对环境造成压力\n\n2.4.2 关注全球气候变化、水资源短缺、臭氧层破坏、酸雨、荒漠化和环境污染等全球性环境问题对生物圈的稳态造成威胁，同时也对人类的生存和可持续发展造成影响\n\n2.4.3 概述生物多样性对维持生态系统的稳定性以及人类生存和发展的重要意义，并尝试提出人与自然和谐共生的合理化建议\n\n2.4.4 举例说明根据生态学原理、采用系统工程的方法和技术，达到资源多层次和循环利用的目的，使特定区域中的人和自然环境均受益\n\n2.4.5 形成“环境保护需要从我做起”的意识", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l4\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l6\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l4", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l6"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l22"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l22", title: "获得纯净的微生物培养物是发酵工程的基础", description: "3.1.1 阐明在发酵工程中灭菌是获得纯净的微生物培养物的前提\n\n3.1.2 阐明无菌技术是在操作过程中，保持无菌物品与无菌区域不被微生物污染的技术\n\n3.1.3 举例说明通过调整培养基的配方可有目的地培养某种微生物\n\n3.1.4 概述平板划线法和稀释涂布平板法是实验室中进行微生物分离和纯化的常用方法\n\n3.1.5 概述稀释涂布平板法和显微镜计数法是测定微生物数量的常用方法", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l5\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l7\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l5", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l7"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l23"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l23", title: "发酵工程为人类提供多样的生物产品", description: "3.2.1 举例说明日常生活中的某些食品是运用传统发酵技术生产的\n\n3.2.2 阐明发酵工程利用现代工程技术及微生物的特定功能，工业化生产人类所需产品\n\n3.2.3 举例说明发酵工程在医药、食品及其他工农业生产上有重要的应用价值", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l5\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l7\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l5", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l7"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l24"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l24", title: "植物细胞工程包括组织培养和体细胞杂交等技术", description: "4.1.1 阐明植物组织培养是在一定条件下，将离体植物器官、组织和细胞在适宜的培养条件下诱导形成愈伤组织，并重新分化，最终形成完整植株的过程\n\n4.1.2 概述植物体细胞杂交是将不同植物体细胞在一定条件下融合成杂合细胞，继而培育成新植物体的技术\n\n4.1.3 举例说明植物细胞工程利用快速繁殖、脱毒、次生代谢产物生产、育种等方式有效提高了生产效率", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l5\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l8\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l5", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l8"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l25"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l25", title: "动物细胞工程包括细胞培养、核移植、细胞融合和干细胞的应用等技术", description: "4.2.1 阐明动物细胞培养是从动物体获得相关组织，分散成单个细胞后，在适宜的培养条件下让细胞生长和增殖的过程。动物细胞培养是动物细胞工程的基础\n\n4.2.2 阐明动物细胞核移植一般是将体细胞核移入一个去核的卵母细胞中，并使重组细胞发育成新胚胎，继而发育成动物个体的过程\n\n4.2.3 阐明动物细胞融合是指通过物理、化学或生物学等手段，使两个或多个动物细胞结合形成一个细胞的过程\n\n4.2.4 概述细胞融合技术是单克隆抗体制备的重要技术\n\n4.2.5 简述干细胞在生物医学工程中有广泛的应用价值", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l5\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l8\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l5", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l8"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l26"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l26", title: "对动物早期胚胎或配子进行显微操作和处理以获得目标个体", description: "4.3.1 简述胚胎形成经过了受精及早期发育等过程\n\n4.3.2 简述胚胎工程包括体外受精、胚胎移植和胚胎分割等技术", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l5\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l8\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l5", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l8"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l27"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l27", title: "基因工程是一种重组DNA技术", description: "5.1.1 概述基因工程是在遗传学、微生物学、生物化学和分子生物学等学科基础上发展而来的\n\n5.1.2 阐明DNA重组技术的实现需要利用限制性内切核酸酶、DNA连接酶和载体三种基本工具\n\n5.1.3 阐明基因工程的基本操作程序主要包括目的基因的获取、基因表达载体的构建、目的基因导入受体细胞和目的基因及其表达产物的检测鉴定等步骤\n\n5.1.4 举例说明基因工程在农牧、食品及医药等行业的广泛应用改善了人类的生活品质", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l5\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l9\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l5", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l9"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l28"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l28", title: "蛋白质工程是基因工程的延伸", description: "5.2.1 概述人们根据基因工程原理，进行蛋白质设计和改造，可以\n\n获得性状和功能更符合人类需求的蛋白质\n\n5.2.2 举例说明依据人类需要对原有蛋白质结构进行基因改造、生产目标蛋白的过程", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l5\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l9\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l5", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l9"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l29"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l29", title: "转基因产品的安全性引发社会的广泛关注", description: "6.1.1 举例说出日常生活中的转基因产品\n\n6.1.2 探讨转基因技术在应用过程中带来的影响", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l5\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l10\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l5", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l10"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l30"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l30", title: "中国禁止生殖性克隆人", description: "6.2.1 举例说出生殖性克隆人面临的伦理问题\n\n6.2.2 分析说明我国为什么不赞成、不允许、不支持、不接受任何生殖性克隆人实验", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l5\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l10\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l5", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l10"};

MERGE (n:SubConception {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l31"})
SET n += {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l31", title: "世界范围内应全面禁止生物武器", description: "6.3.1 举例说明历史上生物武器对人类造成了严重的威胁与伤害\n\n6.3.2 认同我国反对生物武器及其技术和设备的扩散", subject: "SB0403", type: "SubConception", applicableLevel: "OB06", contentJson: "{\"Module\": \"urn:jy:biology:SB0403:OB06:Module:l5\", \"Conception\": \"urn:jy:biology:SB0403:OB06:Conception:l10\"}", CJ_Module: "urn:jy:biology:SB0403:OB06:Module:l5", CJ_Conception: "urn:jy:biology:SB0403:OB06:Conception:l10"};

MERGE (n:CourseTarget {identifier: "urn:jy:biology:SB0403:OB06:CourseTarget:l1"})
SET n += {type: "CourseTarget", title: "目标要求", description: "学生通过本课程的学习，能认识到生物学在坚持人与自然和谐共生，促进科技发展、社会进步和提高人类生活质量等方面的重要贡献；树立生命观念，能够运用这些观念解释生命现象，探索生命规律；形成科学思维的习惯，能够运用已有的生物学知识、证据和逻辑对社会性科学议题进行思考或展开论证；掌握科学探究的思路和方法，形成合作精神，善于从实践的层面探讨或尝试解决现实生活问题；具有开展生物学实践活动的意愿和社会责任感，在面对现实世界的挑战时，能充分利用生物学知识主动宣传引导，愿意承担抵制毒品和不良生活习惯等社会责任，为继续学习和走向社会打下认识和实践的基础。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{}", identifier: "urn:jy:biology:SB0403:OB06:CourseTarget:l1"};

MERGE (n:Module {identifier: "urn:jy:biology:SB0403:OB06:Module:l1"})
SET n += {type: "Module", title: "模块1 分子与细胞", description: "本模块包括细胞的分子组成、细胞的结构、细胞的代谢、细胞的增殖以及细胞的分化、衰老和死亡等内容。细胞是生物体结构与生命活动的基本单位。细胞生物学是生命科学的重要基础学科，分子生物学的发展促使细胞生物学的研究进入了分子水平。本模块选取了细胞生物学方面最基本的知识，是学习其他模块的基础。它还反映了细胞生物学研究的新进展及相关的实际应用。通过本模块的学习，学生将在微观层面上，更深入地理解生命的本质。了解生命的物质性和生物界的统一性，细胞结构与功能的统一，细胞生命活动中物质、能量和信息变化的统一，生物体部分和整体的统一等，有助于科学自然观的形成。学习细胞的发现、细胞学说的建立和发展，有助于学生加深对科学研究过程和本质的理解。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:biology:SB0403:OB06:CourseModule:l1\", \"contentRequirement\": \"概念1 细胞是生物体结构与生命活动的基本单位\\n1.1 细胞由多种多样的分子组成，包括水、无机盐、糖类、脂质、蛋白质和核酸等，其中蛋白质和核酸是两类最重要的生物大分子\\n1.1.1 说出细胞主要由C、H、O、N、P、S等元素构成，它们以碳链为骨架形成复杂的生物大分子\\n1.1.2 指出水大约占细胞质量的 2/3，以自由水和结合水的形式存在，赋予了细胞许多特性，在生命活动中具有重要作用\\n1.1.3 举例说出无机盐在细胞内含量虽少，但与生命活动密切相关\\n1.1.4 概述糖类有多种类型，它们既是细胞的重要结构成分，又是生命活动的主要能源物质\\n1.1.5 举例说出不同种类的脂质对维持细胞结构和功能有重要作用\\n1.1.6 阐明蛋白质通常由20种氨基酸分子组成，它的功能取决于氨基酸序列及其形成的空间结构，细胞的功能主要由蛋白质完成\\n1.1.7 概述核酸由核苷酸聚合而成，是储存与传递遗传信息的生物大分子\\n1.2 细胞各部分结构既分工又合作，共同执行细胞的各项生命活动\\n1.2.1 概述细胞都由质膜包裹，质膜将细胞与其生活环境分开，能控制物质进出，并参与细胞间的信息交流\\n1.2.2 阐明细胞内具有多个相对独立的结构，担负着物质运输、合成与分解、能量转换和信息传递等生命活动\\n1.2.3 阐明遗传信息主要储存在细胞核中\\n1.2.4 举例说明细胞各部分结构之间相互联系、协调一致，共同执行细胞的各项生命活动\\n1.3 各种细胞具有相似的基本结构，但在形态与功能上有所差异\\n1.3.1 说明有些生物体只有一个细胞，而有的由很多细胞构成，这些细胞形态和功能多样，但都具有相似的基本结构\\n1.3.2 描述原核细胞与真核细胞的最大区别是原核细胞没有由核膜包被的细胞核\\n\\n概念2 细胞需要能量和营养物质维持生存，并通过分裂实现增殖\\n2.1 物质通过被动运输、主动运输等方式进出细胞，以维持细胞的正常代谢活动\\n2.1.1 阐明质膜具有选择透过性\\n2.1.2 举例说明有些物质顺浓度梯度进出细胞，不需要额外提供能量；有些物质逆浓度梯度进出细胞，需要能量和载体蛋白\\n2.1.3 举例说明大分子物质可以通过胞吞、胞吐进出细胞\\n2.2 细胞的功能绝大多数基于化学反应，这些反应发生在细胞的特定区域\\n2.2.1 说明绝大多数酶是一类能催化生化反应的蛋白质，酶活性受到环境因素（如pH和温度等）的影响\\n2.2.2 解释ATP是驱动细胞生命活动的直接能源物质\\n2.2.3 说明植物细胞的叶绿体从太阳光中捕获能量，这些能量在二氧化碳和水转变为糖与氧气的过程中，转换并储存为糖分子中的化学能\\n2.2.4 说明生物通过细胞呼吸将储存在有机分子中的能量转化为生命活动可以利用的能量\\n2.3 细胞会经历生长、增殖、分化、衰老和死亡等生命进程\\n2.3.1 描述细胞通过不同的方式进行分裂，其中有丝分裂保证了遗传信息在亲代和子代细胞中的一致性\\n2.3.2 说明在个体发育过程中，细胞在形态、结构和功能方面发生特异性的分化，形成了复杂的多细胞生物体\\n2.3.3 描述在正常情况下，细胞衰老和死亡是一种自然的生理过程\"}", identifier: "urn:jy:biology:SB0403:OB06:Module:l1", CJ_courseModule: "urn:jy:biology:SB0403:OB06:CourseModule:l1", CJ_contentRequirement: "概念1 细胞是生物体结构与生命活动的基本单位\n1.1 细胞由多种多样的分子组成，包括水、无机盐、糖类、脂质、蛋白质和核酸等，其中蛋白质和核酸是两类最重要的生物大分子\n1.1.1 说出细胞主要由C、H、O、N、P、S等元素构成，它们以碳链为骨架形成复杂的生物大分子\n1.1.2 指出水大约占细胞质量的 2/3，以自由水和结合水的形式存在，赋予了细胞许多特性，在生命活动中具有重要作用\n1.1.3 举例说出无机盐在细胞内含量虽少，但与生命活动密切相关\n1.1.4 概述糖类有多种类型，它们既是细胞的重要结构成分，又是生命活动的主要能源物质\n1.1.5 举例说出不同种类的脂质对维持细胞结构和功能有重要作用\n1.1.6 阐明蛋白质通常由20种氨基酸分子组成，它的功能取决于氨基酸序列及其形成的空间结构，细胞的功能主要由蛋白质完成\n1.1.7 概述核酸由核苷酸聚合而成，是储存与传递遗传信息的生物大分子\n1.2 细胞各部分结构既分工又合作，共同执行细胞的各项生命活动\n1.2.1 概述细胞都由质膜包裹，质膜将细胞与其生活环境分开，能控制物质进出，并参与细胞间的信息交流\n1.2.2 阐明细胞内具有多个相对独立的结构，担负着物质运输、合成与分解、能量转换和信息传递等生命活动\n1.2.3 阐明遗传信息主要储存在细胞核中\n1.2.4 举例说明细胞各部分结构之间相互联系、协调一致，共同执行细胞的各项生命活动\n1.3 各种细胞具有相似的基本结构，但在形态与功能上有所差异\n1.3.1 说明有些生物体只有一个细胞，而有的由很多细胞构成，这些细胞形态和功能多样，但都具有相似的基本结构\n1.3.2 描述原核细胞与真核细胞的最大区别是原核细胞没有由核膜包被的细胞核\n\n概念2 细胞需要能量和营养物质维持生存，并通过分裂实现增殖\n2.1 物质通过被动运输、主动运输等方式进出细胞，以维持细胞的正常代谢活动\n2.1.1 阐明质膜具有选择透过性\n2.1.2 举例说明有些物质顺浓度梯度进出细胞，不需要额外提供能量；有些物质逆浓度梯度进出细胞，需要能量和载体蛋白\n2.1.3 举例说明大分子物质可以通过胞吞、胞吐进出细胞\n2.2 细胞的功能绝大多数基于化学反应，这些反应发生在细胞的特定区域\n2.2.1 说明绝大多数酶是一类能催化生化反应的蛋白质，酶活性受到环境因素（如pH和温度等）的影响\n2.2.2 解释ATP是驱动细胞生命活动的直接能源物质\n2.2.3 说明植物细胞的叶绿体从太阳光中捕获能量，这些能量在二氧化碳和水转变为糖与氧气的过程中，转换并储存为糖分子中的化学能\n2.2.4 说明生物通过细胞呼吸将储存在有机分子中的能量转化为生命活动可以利用的能量\n2.3 细胞会经历生长、增殖、分化、衰老和死亡等生命进程\n2.3.1 描述细胞通过不同的方式进行分裂，其中有丝分裂保证了遗传信息在亲代和子代细胞中的一致性\n2.3.2 说明在个体发育过程中，细胞在形态、结构和功能方面发生特异性的分化，形成了复杂的多细胞生物体\n2.3.3 描述在正常情况下，细胞衰老和死亡是一种自然的生理过程"};

MERGE (n:Module {identifier: "urn:jy:biology:SB0403:OB06:Module:l2"})
SET n += {type: "Module", title: "模块2 遗传与进化", description: "本模块包括遗传的细胞基础、遗传的分子基础、遗传的基本规律、生物的变异和生物的进化等内容。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"contentRequirement\": \"概念3 遗传信息控制生物性状，并代代相传\\n3.1 亲代传递给子代的遗传信息主要编码在DNA分子上\\n3.1.1 概述多数生物的基因是DNA分子的功能片段，有些病毒的基因在RNA分子上\\n3.1.2 概述DNA分子是由四种脱氧核苷酸构成，通常由两条碱基互补配对的反向平行长链形成双螺旋结构，碱基的排列顺序编码了遗传信息\\n3.1.3 概述DNA分子通过半保留方式进行复制\\n3.1.4 概述DNA分子上的遗传信息通过RNA指导蛋白质的合成，细胞分化的本质是基因选择性表达的结果，生物的性状主要通过蛋白质表现\\n3.1.5 概述某些基因中碱基序列不变但表型改变的表观遗传现象\\n3.2 有性生殖中基因的分离和重组使双亲后代的基因组合有多种可能\\n3.3 由基因突变、染色体变异和基因重组引起的变异是可以遗传的\\n\\n概念4 生物的多样性和适应性是进化的结果\\n4.1 地球上的现存物种丰富多样，它们来自共同祖先\\n4.2 适应是自然选择的结果\"}", identifier: "urn:jy:biology:SB0403:OB06:Module:l2", CJ_contentRequirement: "概念3 遗传信息控制生物性状，并代代相传\n3.1 亲代传递给子代的遗传信息主要编码在DNA分子上\n3.1.1 概述多数生物的基因是DNA分子的功能片段，有些病毒的基因在RNA分子上\n3.1.2 概述DNA分子是由四种脱氧核苷酸构成，通常由两条碱基互补配对的反向平行长链形成双螺旋结构，碱基的排列顺序编码了遗传信息\n3.1.3 概述DNA分子通过半保留方式进行复制\n3.1.4 概述DNA分子上的遗传信息通过RNA指导蛋白质的合成，细胞分化的本质是基因选择性表达的结果，生物的性状主要通过蛋白质表现\n3.1.5 概述某些基因中碱基序列不变但表型改变的表观遗传现象\n3.2 有性生殖中基因的分离和重组使双亲后代的基因组合有多种可能\n3.3 由基因突变、染色体变异和基因重组引起的变异是可以遗传的\n\n概念4 生物的多样性和适应性是进化的结果\n4.1 地球上的现存物种丰富多样，它们来自共同祖先\n4.2 适应是自然选择的结果"};

MERGE (n:Module {identifier: "urn:jy:biology:SB0403:OB06:Module:l3"})
SET n += {type: "Module", title: "模块1 稳态与调节", description: "本模块包括人体的内环境与稳态、人和动物生命活动的调节，以及植物的激素调节等内容。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"contentRequirement\": \"概念1 生命个体的结构与功能相适应，各结构协调统一共同完成复杂的生命活动，并通过一定的调节机制保持稳态\\n1.1 内环境为机体细胞提供适宜的生存环境，机体细胞通过内环境与外界环境进行物质交换\\n...\\n1.6.4 概述其他因素参与植物生命活动的调节，如光、重力和温度等\"}", identifier: "urn:jy:biology:SB0403:OB06:Module:l3", CJ_contentRequirement: "概念1 生命个体的结构与功能相适应，各结构协调统一共同完成复杂的生命活动，并通过一定的调节机制保持稳态\n1.1 内环境为机体细胞提供适宜的生存环境，机体细胞通过内环境与外界环境进行物质交换\n...\n1.6.4 概述其他因素参与植物生命活动的调节，如光、重力和温度等"};

MERGE (n:Module {identifier: "urn:jy:biology:SB0403:OB06:Module:l4"})
SET n += {type: "Module", title: "模块2 生物与环境", description: "本模块包括种群和群落、生态系统、环境保护等内容。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"contentRequirement\": \"概念2 生态系统中的各种成分相互影响，共同实现系统的物质循环、能量流动和信息传递，生态系统通过自我调节保持相对稳定的状态\\n2.1 不同种群的生物在长期适应环境和彼此相互适应的过程中形成动态的生物群落\\n...\\n2.4.5 形成“环境保护需要从我做起”的意识\"}", identifier: "urn:jy:biology:SB0403:OB06:Module:l4", CJ_contentRequirement: "概念2 生态系统中的各种成分相互影响，共同实现系统的物质循环、能量流动和信息传递，生态系统通过自我调节保持相对稳定的状态\n2.1 不同种群的生物在长期适应环境和彼此相互适应的过程中形成动态的生物群落\n...\n2.4.5 形成“环境保护需要从我做起”的意识"};

MERGE (n:Module {identifier: "urn:jy:biology:SB0403:OB06:Module:l5"})
SET n += {type: "Module", title: "模块3 生物技术与工程", description: "本模块的内容包括发酵工程、细胞工程、基因工程和生物技术安全与伦理等。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"contentRequirement\": \"概念3 发酵工程利用微生物的特定功能规模化生产对人类有用的产品\\n...\\n\\n概念4 细胞工程通过细胞水平上的操作，获得有用的生物体或其产品\\n...\\n\\n概念5 基因工程赋予生物新的遗传特性\\n...\\n\\n概念6 生物技术在造福人类社会的同时也可能会带来安全与伦理问题\\n...\"}", identifier: "urn:jy:biology:SB0403:OB06:Module:l5", CJ_contentRequirement: "概念3 发酵工程利用微生物的特定功能规模化生产对人类有用的产品\n...\n\n概念4 细胞工程通过细胞水平上的操作，获得有用的生物体或其产品\n...\n\n概念5 基因工程赋予生物新的遗传特性\n...\n\n概念6 生物技术在造福人类社会的同时也可能会带来安全与伦理问题\n..."};

MERGE (n:Module {identifier: "urn:jy:biology:SB0403:OB06:Module:l6"})
SET n += {type: "Module", title: "“健康生活”模块开设建议", description: "（1学分）\n\n健康是人类全面发展的基础，关系千家万户的幸福。每个人都有维护自身和他人健康的责任，健康的生活方式能够维护和促进自身健康。健康生活是指有益于健康的习惯化的行为方式，具体表现为生活有规律，没有不良嗜好，讲究个人、环境和饮食卫生，讲科学，不迷信，平时注意保健，具备基本的医学常识，生病及时就医，积极参加有益于健康的文体活动和社会活动等。\n\n本模块应选取公民健康生活最基本的知识与技能，涵盖健康生活的基本知识和理念、健康生活方式和行为，以及健康生活的基本技能。具体包括传染病的预防、伤害预防与自救互救、心理健康和精神卫生、学校卫生、口腔卫生、健康生活方式等方面的内容。\n\n教师要充分认识和理解人民健康是民族昌盛和国家富强的重要标志，明确健康教育是培养合格公民的重要内容，是实施素质教育的基本组成部分。在组织和开展本模块的教学中，可以根据当地实际情况，通过不同的形式和手段组织好相关教学内容，紧密联系实际，创设问题情境，让学生将学习健康卫生知识同认识社会、解决与社会有关的健康问题结合起来，培养社会责任感。\n\n对本模块的学习，有助于学生获得健康生活的知识，形成正确的态度、认识和行为习惯，树立尊重生命、热爱生活的人生观，改善公民个体的健康状况，进而促进整个社会的健康发展。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:biology:SB0403:OB06:CourseModule:l3\", \"category\": \"现实生活应用\"}", identifier: "urn:jy:biology:SB0403:OB06:Module:l6", CJ_courseModule: "urn:jy:biology:SB0403:OB06:CourseModule:l3", CJ_category: "现实生活应用"};

MERGE (n:Module {identifier: "urn:jy:biology:SB0403:OB06:Module:l7"})
SET n += {type: "Module", title: "“急救措施”模块开设建议", description: "（1学分）\n\n随着经济的发展，社会的进步，人们的健康意识明显提高。各种急危重症、意外伤害时有发生，威胁着人们的健康和生命，意外伤害已成为危害人类健康的全球性公共卫生问题。急救知识的普及，可以使公众掌握正确的急救知识，一旦发生意外情况能积极有效地开展现场自救互救，从而为患者赢得宝贵的抢救时机，提高抢救成功率。\n\n本模块内容包括紧急情况下公民必备的最基本的医疗急救措施知识与技能，如常用急救药物的使用、“120”紧急呼叫、心肺复苏、外伤止血、游泳意外的自救、动物咬伤后的处理、煤气中毒后的自救与互救等方面的内容。\n\n教师应明确普及急救知识对学生的重要意义，应结合当地的具体情况，尽可能选择具有地方特点、适合学生的年龄特征、与学生日常生活关系比较密切的内容。这样，学生容易将所学的知识与发生的突发事件联系起来，对学习内容产生深刻印象。通过教学，应使学生了解急救基础知识，在遇到突发事件时能从容应对。\n\n对本模块的学习，可以使学生意识到急救措施在日常生活中的重要性，帮助学生初步掌握应对常见的突发伤害事件的急救处理方法。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:biology:SB0403:OB06:CourseModule:l3\", \"category\": \"现实生活应用\"}", identifier: "urn:jy:biology:SB0403:OB06:Module:l7", CJ_courseModule: "urn:jy:biology:SB0403:OB06:CourseModule:l3", CJ_category: "现实生活应用"};

MERGE (n:Module {identifier: "urn:jy:biology:SB0403:OB06:Module:l8"})
SET n += {type: "Module", title: "“传染病与防控”模块开设建议", description: "（1学分）\n\n传染病是指由各种病原体引起的，能在人与人、动物与动物或人与动物之间相互传播的疾病。传染病的流行极大地影响了人类文明的进程：一方面，传染病的大流行曾造成人类大规模的死亡，改变国家和民族的命运；另一方面，与传染病的斗争促进了人类防疫事业的发展。\n\n本模块包括传染源与感染、传播途径、传染病的防控三个部分。课程内容应以传染病的概念以及传染的机理为基础，进而让学生学习传染病防控的知识，了解传染病的特征及其传播流行的途径，全球以及我国防疫体系的组成，传染病流行期间的个人日常防护，以及传染病预防措施与检测、相关病原体的消毒灭菌工作等流程和基本技术，形成“防控\n\n并重”的观念。\n\n教师在教学活动中要通过案例，让学生掌握“病原体”“感染”“传染源”“传染”等重要概念的内涵和区别，重点介绍对人类影响巨大的传染病案例，如鼠疫、天花、艾滋病、严重急性呼吸综合征（SARS）和流行性感冒等的流行及防控；应充分利用传染病案例，组织学生的探究性学习，并开展模拟传染病防控的教学活动，使学生在掌握相关知识的同时，认同“地球村”及“人类命运共同体”的观念；要通过参观当地疾病预防控制单位，介绍我国自1949年以来流行病防控所取得的巨大成就等，增强学生的爱国信念，帮助学生了解我国的防疫体系，体会社会主义制度的优越性；鼓励学生通过互联网、书刊等渠道主动收集传染病及其防控的相关资料，并开展交流活动。\n\n对本模块的学习，可以使学生认识到传染病的预防对人类社会和经济发展的重要性，帮助学生初步掌握传染病防控的基本方法。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:biology:SB0403:OB06:CourseModule:l3\", \"category\": \"现实生活应用\"}", identifier: "urn:jy:biology:SB0403:OB06:Module:l8", CJ_courseModule: "urn:jy:biology:SB0403:OB06:CourseModule:l3", CJ_category: "现实生活应用"};

MERGE (n:Module {identifier: "urn:jy:biology:SB0403:OB06:Module:l9"})
SET n += {type: "Module", title: "“社会热点中的生物学问题”模块开设建议", description: "（1学分）\n\n20世纪下半叶以来，生物学科进入飞速发展的时代，取得无数新成果，其中有些成了社会大众关注的热点问题。与此同时，人类社会还面临一些传染病的严峻考验。\n\n本模块选取转基因植物、试管婴儿、克隆哺乳动物、艾滋病、禽流感、SARS以及埃博拉疫情等主题加以论述，旨在向广大学生传递正确的科学知识，有助于他们理性、客观地面对相关的社会性科学议题，为今后继续深造和走上社会奠定必要的基础。\n\n教师在教学中要注意引导学生掌握国家的政策、法规，从主流媒体获取正确的资料和信息，了解相关的原理和主要技术路线，结合已有知识和我国的国情，以唯物史观，分别从各专题的学科进展及争议焦点和有待改进之处展开讨论或辩论，丰富相关学识，加深对科学、技术、社会相互关系的认识。\n\n对本模块的学习，有利于学生正确、客观地认识生物技术所取得的\n\n成就，提高预防传染病的意识，实现健康生活的自的。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:biology:SB0403:OB06:CourseModule:l3\", \"category\": \"现实生活应用\"}", identifier: "urn:jy:biology:SB0403:OB06:Module:l9", CJ_courseModule: "urn:jy:biology:SB0403:OB06:CourseModule:l3", CJ_category: "现实生活应用"};

MERGE (n:Module {identifier: "urn:jy:biology:SB0403:OB06:Module:l10"})
SET n += {type: "Module", title: "“动物福利”模块开设建议", description: "（1学分）\n\n浩瀚宇宙之中，动物和人类共同分享着一个地球，文明、人道地对待动物本质上也与人类自身的利益息息相关。动物福利指动物处于基本需求得到满足，痛苦被降至最低的状态。随着社会上一些虐待和残害动物的事件被陆续曝光，动物福利也成为一个备受公众关注的话题。在生物学课程体系中进行动物福利教育，对于普及动物福利理念，培养学生尊重生命、关爱动物的价值观有重要意义，对于发展学生的生物学学科核心素养，落实立德树人目标有着积极的意义。动物福利是校本课程的一个适宜的选题。\n\n动物福利模块的主要目标在于促进学生形成尊重生命、关爱动物的态度和价值观，同时向学生传递与动物福利相关的基本知识与观点，并培养学生参与社会性科学议题讨论和实践的能力。课程内容可以包括动物与人类的关系、动物福利的概念、动物福利的评估、动物福利立法、动物福利与伦理道德，以及伴侣动物、野生动物、农场动物、实验动物和动物园动物的福利等。\n\n教学中，教师可以结合本地课程资源设计和开展学习活动，如野生动物救助站、流浪动物救助中心、家禽养殖场等；也可以从社会高度关注的问题深入主题，如实验动物福利标准问题，饲养、运输和疾病处理过程中动物福利的问题，滥食、虐食动物的现象，残害动物的暴力行为等。教师要帮助学生理解动物福利的内容，体会动物福利立法的必要性。同时，教师也要让学生认识到，动物福利的立法要与社会的经济水平和文明程度相适应。动物福利过高，会给生产者或动物的主人带来过重的负担，造成浪费，因此，讨论动物福利需要兼顾动物利益和人类利益的平衡。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:biology:SB0403:OB06:CourseModule:l3\", \"category\": \"现实生活应用\"}", identifier: "urn:jy:biology:SB0403:OB06:Module:l10", CJ_courseModule: "urn:jy:biology:SB0403:OB06:CourseModule:l3", CJ_category: "现实生活应用"};

MERGE (n:Module {identifier: "urn:jy:biology:SB0403:OB06:Module:l11"})
SET n += {type: "Module", title: "“外来生物入侵与防控”模块开设建议", description: "（1学分）\n\n一种生物如果由于人为或自然的原因由其原产地迁移到异地，并经自然选择后逐渐繁衍开来，打破当地的生态平衡，威胁当地生物多样性，造成严重生态恶果，即形成生物入侵。伴随着人类活动日益加剧，世界范围内的生物入侵现象愈演愈烈，已经对各国的经济、社会、民生以及环境造成了难以挽回的重大损失。\n\n本模块内容应包括世界及我国主要入侵物种的种类、入侵途径、生物入侵对生物圈和生态系统造成的危害，以及应对生物入侵可采取的各种措施。\n\n教师在实施教学时可引用具体案例引导学生理解生物入侵的概念。建议调查外来生物入侵本地的基本情况，对其危害程度作出初步评估，从而帮助学生提高对生物入侵危害性的认识，并提出一些阻止外来生物进一步危害本地生态系统的措施和建议。\n\n本模块的学习，有利于帮助学生认识生物入侵的概念、途径和危害性，树立生物与生物、生物与环境、人类与环境和谐发展的意识，增强生物安全意识，提高保护生物多样性和保护环境的自觉性。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:biology:SB0403:OB06:CourseModule:l3\", \"category\": \"现实生活应用\"}", identifier: "urn:jy:biology:SB0403:OB06:Module:l11", CJ_courseModule: "urn:jy:biology:SB0403:OB06:CourseModule:l3", CJ_category: "现实生活应用"};

MERGE (n:Module {identifier: "urn:jy:biology:SB0403:OB06:Module:l12"})
SET n += {type: "Module", title: "“地方特色动植物研究”模块开设建议", description: "（1学分）\n\n纵观人类历史发展可知，动植物资源是人类社会发展的重要物质资源，人类的物质生活和精神生活都离不开动植物资源。各地具有地方特色的野生动植物不仅具有重要的经济、科学、生态、文化及美学等方面的价值，也大大丰富了人类的文化生活。因此，开展对地方特色动植物的研究不仅是为了合理配置和利用野生动植物资源，更重要的是通过了解当地野生动植物资源的现状，培养人与自然和谐共生的意识，充分认识环境保护与可持续发展、改善人类的物质生活和文化生活的意义。\n\n由于不同地域所具有的地理环境、气候条件、经济水平等都各不相同，在教学中应注意收集具有地方特色的动植物资源内容，以当地具有地方特色的动植物为主要研究对象。课程内容可以包括当地动植物的分\n\n类、动植物的生长与繁殖、动植物与环境的关系、动植物资源的开发与利用等。\n\n本模块除了培养学生掌握扎实的动植物学科知识，更重要的是培养学生自主探究学习的意识和能力，掌握当地动植物资源研究的方法，认识其利用价值。教学形式应多样。例如，通过参观调查，引导学生关注家乡的动植物资源与环境变迁，激发热爱家乡、建设家乡的热情；通过实践探究，培养学生了解动植物资源开发的相关技能，掌握科学探究的基本过程和方法；通过家乡动植物资源的调查，培养学生搜集信息、处理信息的能力。在选择具体的内容时，侧重于选择学生常见的、具有地方特色的动植物资源内容，以便于他们将所学的知识与现实生活联系起来，对学习内容产生兴趣。\n\n对本模块的学习，可以使学生了解地方动植物资源的分布特点，以及它们的生态价值、经济价值和社会价值，学会把所学知识应用于生产实践，提高理论与实践结合的能力，培养关心家乡建设、服务家乡经济发展的情感。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:biology:SB0403:OB06:CourseModule:l3\", \"category\": \"现实生活应用\"}", identifier: "urn:jy:biology:SB0403:OB06:Module:l12", CJ_courseModule: "urn:jy:biology:SB0403:OB06:CourseModule:l3", CJ_category: "现实生活应用"};

MERGE (n:Module {identifier: "urn:jy:biology:SB0403:OB06:Module:l13"})
SET n += {type: "Module", title: "“生物制药”模块开设建议", description: "（1学分）\n\n生物制药是指运用微生物学、基因工程、发酵工程、细胞工程和化学等学科知识和技术，通过生物活体来生产药物的学科。药物学是指研究药物的来源、炮制、性状和作用，分析、鉴定、调配、生产和研发新药等的学科。\n\n生物制药的内容非常广泛，本模块侧重于常见药物制备、药物分析和药物作用三个部分。\n\n本模块应首先介绍药物对机体的作用和药物制备的技术，然后再介绍各类药物及其临床应用，并介绍药物发现历史及当前最活跃的药物研发概况。\n\n教师在教学活动中，除了讲解制药的基本技术，还要通过讲解案\n\n例，让学生体会本模块的目的是生产更有效、更高质量和更安全的药物；应教会学生使用最新版的《中华人民共和国药典》，使学生认识到药品标准是药品生产和质量管理的重要组成部分，是药品生产、供应、使用和监督管理部门共同遵循的法定依据，形成按药品标准制药的观念；应组织学生参观当地药厂、医院和药物研发单位，了解我国药物研发和使用的现状，创造条件开展药物研发和制备实习，使学生树立为人类健康事业而努力的信念；鼓励学生通过互联网、书刊等渠道主动收集新药研发的相关资料，并开展交流活动。\n\n通过本模块的学习，学生将掌握药物制备和应用的有关环节和基本技术，认识到现代生物技术对医药产业的重要性。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:biology:SB0403:OB06:CourseModule:l3\", \"category\": \"职业规划前瞻\"}", identifier: "urn:jy:biology:SB0403:OB06:Module:l13", CJ_courseModule: "urn:jy:biology:SB0403:OB06:CourseModule:l3", CJ_category: "职业规划前瞻"};

MERGE (n:Module {identifier: "urn:jy:biology:SB0403:OB06:Module:l14"})
SET n += {type: "Module", title: "“海洋生物学”模块开设建议", description: "（1学分）\n\n海洋占地球总面积的  $70.8\\%$  ，其中生活着丰富多彩的生物，是生物多样性的宝库，吸引着我们去探索和认识。海洋生物学就是研究生活在海洋中的生命有机体的科学。通过对海洋生物形态结构、重要类群、生理、生化、生态、系统发育和地理分布等知识的学习，可以较为系统全面地了解海洋生物，为保护以及合理开发利用海洋生物资源奠定基础。\n\n本模块包括海洋生物的重要类群及其生命特征、海洋生态系统的结构和功能、海洋生物资源的保护和利用3个部分。课程内容应以海洋生物为基础，体现海洋特色，突出海洋中的生命现象及其规律，以及海洋生物在整个地球生物圈中的作用等。\n\n教师在教学活动中要善于利用与陆地生态系统相比较的方式，突出海洋环境的特殊性以及与此环境相适应的海洋生物的习性；应充分利用水族馆、博物馆和水产品市场，组织好学生的探究性学习；要通过介绍我国领海与大陆架环境及其生物资源的相关知识，培养学生的海洋观念和海洋国土意识，增强环保理念和爱国信念；鼓励学生通过互联网、书刊等渠道主动收集海洋生物学知识，并开展交流活动，同时帮助学生了解世界及我国海洋水产业的发展现状和趋势。\n\n通过本模块的学习，学生将认识到海洋生物对人类社会和经济发展的重要性，逐渐形成海洋生态平衡观以及地球生态系统整体观。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:biology:SB0403:OB06:CourseModule:l3\", \"category\": \"职业规划前瞻\"}", identifier: "urn:jy:biology:SB0403:OB06:Module:l14", CJ_courseModule: "urn:jy:biology:SB0403:OB06:CourseModule:l3", CJ_category: "职业规划前瞻"};

MERGE (n:Module {identifier: "urn:jy:biology:SB0403:OB06:Module:l15"})
SET n += {type: "Module", title: "“食品安全与检疫”模块开设建议", description: "（1学分）\n\n食品安全指食品符合应有的营养要求，对人及其后代健康不造成任何急性、亚急性或者慢性危害，在食品加工、存储和销售等过程中确保食品卫生及食用安全，降低疾病隐患，防范食物中毒。随着人类文明的进步，人们越来越重视食品的安全性。食品安全关系国民的健康和民族的永续发展。\n\n本模块包括食品生产安全、食品经营安全和食品安全检疫三个部分。课程内容应围绕食品（食物）的生产、加工、存储、销售等环节，介绍食品安全的基础知识，进而阐明食品安全检疫的原理和基本操作技术。\n\n教师在教学活动中要围绕食品安全的含义和“食品数量安全”“食品质量安全”和“食品可持续安全”三个层次，介绍食品安全标准及相关检疫技术；应通过典型的食品安全案例，组织学生的探究性学习，并开展食品安全的实践教学活动，使学生在掌握相关知识的同时，形成“防控并重”的观念；要通过介绍国家关于食品的强制标准和要求，参观当地食品药品监督管理部门等，帮助学生了解我国的食品安全保障体系和政策；鼓励学生通过互联网、书刊等渠道主动收集食品安全及其检疫的相关资料，并开展交流活动。\n\n通过本模块的学习，学生将了解食品生产的途径，食品生产过程质量控制的重要性，全球以及我国食品检疫体系的组成，掌握食品安全预防措施、食品检疫工作等的流程和基本技术。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:biology:SB0403:OB06:CourseModule:l3\", \"category\": \"职业规划前瞻\"}", identifier: "urn:jy:biology:SB0403:OB06:Module:l15", CJ_courseModule: "urn:jy:biology:SB0403:OB06:CourseModule:l3", CJ_category: "职业规划前瞻"};

MERGE (n:Module {identifier: "urn:jy:biology:SB0403:OB06:Module:l16"})
SET n += {type: "Module", title: "“职业病与防控”模块开设建议", description: "（1学分）\n\n职业病是指企事业等单位的劳动者在职业活动中，因接触粉尘、放射性物质或其他有毒、有害因素而出现的疾病。最主要的职业病有肺尘\n\n埃沉着病、职业中毒、职业性皮肤病等。职业病不仅影响劳动者的身体健康，也影响家庭幸福。我国对职业病的防控非常重视。\n\n本模块包括职业病的形成和防控两个部分。课程内容应以职业病形成的病因为基础，进而讲述职业病防控的知识和国家有关的法律法规。\n\n教师在教学活动中要通过案例的讲解，重点介绍职业病的特点、预防对策和控制措施；应充分利用当地常见职业病案例，通过宣传《中华人民共和国职业病防治法》等，组织学生进行探究性活动，使学生在掌握相关知识的同时，形成“防控并重”的观念；要通过介绍我国自1949年以来职业病防控所取得的巨大成就，组织参观当地职业病防治单位等，使学生了解当地和我国职业病及其防控的现状，认识到职业病防控不仅关系广大劳动者身体健康和生命安全，也关系经济社会可持续发展和社会的和谐稳定；应充分发挥学生的学习主动性，鼓励学生通过互联网、书刊等渠道主动收集职业病及其防控的相关资料，并开展交流活动。\n\n通过本模块的学习，学生将了解职业病的构成要件、主要特点、主要类型和诊断标准等，掌握职业病预防和控制的基本知识。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:biology:SB0403:OB06:CourseModule:l3\", \"category\": \"职业规划前瞻\"}", identifier: "urn:jy:biology:SB0403:OB06:Module:l16", CJ_courseModule: "urn:jy:biology:SB0403:OB06:CourseModule:l3", CJ_category: "职业规划前瞻"};

MERGE (n:Module {identifier: "urn:jy:biology:SB0403:OB06:Module:l17"})
SET n += {type: "Module", title: "“园艺与景观生态学”模块开设建议", description: "（1学分）\n\n园艺学是研究园艺作物的种质资源、生长发育规律、繁殖、栽培、育种、储藏、加工、病虫害以及造园等的科学。造园学又叫园林规划设计学，是研究园林绿地的设计、规划、施工和养护管理的科学。园艺作物一般指以较小规模集约栽培的具有较高经济价值的作物，主要分为果树、蔬菜和观赏植物三大类。现代园艺已成为综合应用各种科学技术成果以促进生产的重要领域，对丰富人类营养和美化、改造人类生存环境具有重要意义。\n\n景观生态学是研究在一个相当大的区域内，由许多不同生态系统所组成的整体（即景观）的空间结构、相互作用、协调功能及动态变化的一门生态学新分支，重点在于研究景观的美化格局、优化结构、合理利\n\n用和保护。\n\n教师在教学中，应在讲解清楚园艺学、景观生态学基本概念的基础之上，重点介绍当地的园艺作物的代表种类、景观设计的基本原理，然后应用相关理论与技术，与学生一起设计具体的“园林景观”，如校园景观。在实践活动中强化相关理论知识，激发学生的学习热情，开发学生的创造能力。\n\n通过本模块的学习，学生能够理解园艺学、景观生态学的基本概念，了解园艺植物（如当地代表种类）的基本栽培管理技术、景观设计的基本原理，能够感受到美化环境在生活中的重要意义。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:biology:SB0403:OB06:CourseModule:l3\", \"category\": \"职业规划前瞻\"}", identifier: "urn:jy:biology:SB0403:OB06:Module:l17", CJ_courseModule: "urn:jy:biology:SB0403:OB06:CourseModule:l3", CJ_category: "职业规划前瞻"};

MERGE (n:Module {identifier: "urn:jy:biology:SB0403:OB06:Module:l18"})
SET n += {type: "Module", title: "“环境友好与经济作物”模块开设建议", description: "（1学分）\n\n经济作物与人类生存和生活密切相关，如棉花、油料作物、果蔬、茶叶等。人类为了获取高额经济回报往往肆意割除原有植被，不仅大规模集中种植某种（些）作物，而且在耕作过程中大量使用化肥和农药，在获得较高产量的同时也对生态环境造成日益严重的影响。\n\n1992年，在里约热内卢召开的联合国环境与发展大会通过的《21世纪议程》中提出了“环境友好”的理念。进入21世纪以来，我国政府也将建设资源节约型和环境友好型社会作为国民经济与社会发展的战略任务。\n\n环境友好是指人与自然和谐共生，人类的生产和消费活动与自然生态系统相协调，人类社会处于可持续发展状态。本模块内容应包括环境友好的实质和内涵，明确环境保护和经济作物都是人类赖以生存和发展的基石。要阐明环境保护是国际社会环境保护战略思想演变和可持续发展实践进展的必然结果。强调种植经济作物应该努力在获得较高经济效益和环境保护之间取得适当的平衡，力求在生产过程中将对环境的干扰和危害降到最低程度。\n\n教师在教学过程中，可通过组织学生观看相关视频或列举人类发展史上发生的企业排污或生产事故等“重经济，轻环保”的案例，引\n\n导学生认识生产与环保协调发展的重要性，指出“先污染，后治理”是文明社会不能容忍的行为，是危害人类健康和发展、祸害子孙的不负责任的行为；同时，探讨高效栽培经济作物与环境保护协同发展的各种可能措施。\n\n本模块的学习，有利于帮助学生认识生态环境保护和经济发展是人类社会发展的两个轮子，缺一不可。只有把发展生产对环境造成的压力或危害降低到最低程度，人类社会才可能持续不断发展。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:biology:SB0403:OB06:CourseModule:l3\", \"category\": \"职业规划前瞻\"}", identifier: "urn:jy:biology:SB0403:OB06:Module:l18", CJ_courseModule: "urn:jy:biology:SB0403:OB06:CourseModule:l3", CJ_category: "职业规划前瞻"};

MERGE (n:Module {identifier: "urn:jy:biology:SB0403:OB06:Module:l19"})
SET n += {type: "Module", title: "“生物资源开发与利用”模块开设建议", description: "（1学分）\n\n生物资源是自然资源的有机组成部分，是生物圈中一切动物、植物和微生物组成的生物群落的总和，是对人类具有实际或潜在应用价值的可再生资源，是人类生活和生产的物质基础。生物资源包括基因、物种以及生态系统三个层次。\n\n本模块涉及的生物资源可包括野生生物资源、农作物资源（如粮食作物、油料作物、水果蔬菜等）、畜牧水产资源（如畜类、禽类、水产品等）、微生物资源（如食用菌、酵母菌等）。教学内容可以根据当地生物资源特点，结合地方社会经济发展需求，聚焦于“地方特色生物资源”；在学生了解生物资源（代表物种）的基本生物学特征的基础上，教师应重点介绍对生物资源（代表物种）的合理开发利用，如对相关生物资源深加工的原理方法、生产工艺流程及研究动态等。\n\n通过本模块的学习，学生应该清楚认识到，我国虽然是生物资源最丰富的国家之一，但是生物资源承载力与人们需求间的矛盾也日趋尖锐，生态系统非常脆弱，生存环境压力巨大。因此，合理保护并科学利用生物资源，涵养生态系统并维持生物多样性和生态平衡，对于我们的生存和可持续发展具有重要意义。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:biology:SB0403:OB06:CourseModule:l3\", \"category\": \"职业规划前瞻\"}", identifier: "urn:jy:biology:SB0403:OB06:Module:l19", CJ_courseModule: "urn:jy:biology:SB0403:OB06:CourseModule:l3", CJ_category: "职业规划前瞻"};

MERGE (n:Module {identifier: "urn:jy:biology:SB0403:OB06:Module:l20"})
SET n += {type: "Module", title: "“本地受胁物种保护”模块开设建议", description: "（1学分）\n\n受胁物种是指受到人类活动或自然剧变（如灾害）的影响，其野生\n\n种群在不久的将来灭绝概率很高的物种。一个关键物种的灭绝可能破坏当地的食物链，造成生态系统的不稳定，并可能最终导致整个生态系统的崩解。\n\n国际自然保护联盟（IUCN）公布的世界受胁物种红皮书将受胁物种分为极危、濒危、易危三个等级，它们均属于优先关注和保护对象。“濒危物种”是公众视野中出现频率较高的术语，一般是指数量稀少，分布区很狭窄，在居民区附近难以见到的物种。\n\n教师在教学中应采用多种形式的活动，引导学生理解中国虽然是世界上动植物资源丰富的国家之一，但按人均资源情况，中国是资源贫乏国家。全球持续变暖会导致部分动植物物种因种种不适应而发生种群数量减少、迁移、生态退化，一些受胁物种难逃灭绝厄运，可能使地球上多达1/6的物种消失。同时，国家为了进一步加强野生动植物保护和受胁物种拯救繁育工作，已建立国家公园、自然保护区、植物园、动物驯养繁殖中心和珍稀植物迁地保护繁育基地以及种质资源库。另外，教师应该结合当地受胁生物资源的具体情况，分析这些物种对地方的环境、社会经济可持续发展的实际意义。\n\n通过本模块的学习，学生应该理解，保护受胁生物（特别是当地的）资源对生存环境、生活方式以及可持续发展的重要意义；保护生物资源特别是受胁生物资源，人人有责；从我做起，积极参与到对当地受胁生物资源的保护行动中去。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:biology:SB0403:OB06:CourseModule:l3\", \"category\": \"职业规划前瞻\"}", identifier: "urn:jy:biology:SB0403:OB06:Module:l20", CJ_courseModule: "urn:jy:biology:SB0403:OB06:CourseModule:l3", CJ_category: "职业规划前瞻"};

MERGE (n:Module {identifier: "urn:jy:biology:SB0403:OB06:Module:l21"})
SET n += {type: "Module", title: "“细胞与分子生物学”模块开设建议", description: "（1学分）\n\n自1953年沃森（J.D.Watson）和克里克（F.Crick）发现了DNA双螺旋结构以后，生命科学才真正进入了分子生物学阶段。目前，分子生物学理论是学好其他许多生命科学分支学科的基础，而分子生物学技术又成为我们研究生命、认识生命甚至改造生命的一个强有力的工具，具有广泛的应用前景和极高的应用价值。\n\n本模块的内容侧重细胞生命活动的分子机制，以“中心法则”为主线，包括DNA复制、DNA损伤及其修复、DNA突变、转录、逆转录、翻译和基因表达调控等。\n\n教师在教学中要注意紧扣“中心法则”和“碱基互补配对”原则，利用分子生物学中的“分子逻辑”，从结构决定功能的高度，结合模型和多媒体手段，深入浅出地介绍相关的分子生物学原理。提倡理论联系实际，尽可能组织一些探究实验和课外活动，如DNA指纹分析；要引导学生利用所学过的知识去关注和探讨与分子生物学有关的社会热点问题，如艾滋病病毒、埃博拉病毒和流感病毒等，以帮助学生丰富相关知识，加深对科学、技术和社会相互关系的认识。\n\n对本模块的学习，可激发学生对生命科学的热爱，理解三种生物大分子——DNA、RNA和蛋白质在细胞内的功能分工和相互关系，真正理解生命的本质；能更好地理解各种分子生物学技术，如PCR、通过基因的定点突变以改造或改良蛋白质，以及利用小卫星DNA进行DNA指纹分析等。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:biology:SB0403:OB06:CourseModule:l3\", \"category\": \"学业发展基础\"}", identifier: "urn:jy:biology:SB0403:OB06:Module:l21", CJ_courseModule: "urn:jy:biology:SB0403:OB06:CourseModule:l3", CJ_category: "学业发展基础"};

MERGE (n:Module {identifier: "urn:jy:biology:SB0403:OB06:Module:l22"})
SET n += {type: "Module", title: "“生物信息学与人类基因组”模块开设建议", description: "（1学分）\n\n生命科学的发展带来了各种生物数据的爆炸性增长，未来还将以越来越快的速度增长。然而，数据并不等于知识，其增长所带来的挑战包括海量数据的存储、管理、共享，特别是如何将这些数据变为生物学知识。\n\n生物信息学是以计算机为工具，用数理及信息科学的理论和方法研究生命现象，对生物信息进行存储、检索、分析和整合的一门学科。基因组信息学是生物信息学的重要内容，包括基因组（如人类基因组）信息的获取、处理、存储、分配和解读。基因组信息学的关键是“读懂”基因组的碱基顺序，包括全部基因在染色体上的确切位置以及各DNA片段的功能；同时测量这些基因的转录和翻译活动信息，以及进行蛋白质三维结构模拟和预测，然后依据特定蛋白质的功能进行药物\n\n设计等。\n\n对本模块内容的学习，可以让学生了解生物信息学和人类基因组的基本概况，让学生掌握基因组测序原理、DNA和蛋白质序列分析、蛋白质结构预测和系统发育树分析的基本原理和方法。教师在教学中要注意结合具体的案例进行分析，利用互联网上各种数据库的数据，来阐明和理解大量生物数据所包含的生物学意义，并应用于解决生命科学研究和生物技术相关产业中的各种问题，为学生进一步深造学习、获得职业技能等奠定基础。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:biology:SB0403:OB06:CourseModule:l3\", \"category\": \"学业发展基础\"}", identifier: "urn:jy:biology:SB0403:OB06:Module:l22", CJ_courseModule: "urn:jy:biology:SB0403:OB06:CourseModule:l3", CJ_category: "学业发展基础"};

MERGE (n:Module {identifier: "urn:jy:biology:SB0403:OB06:Module:l23"})
SET n += {type: "Module", title: "“神经系统与疾病”模块开设建议", description: "（1学分）\n\n神经系统协调人体内部各器官的功能以适应内、外环境的变化，起着“司令部”的作用。凡是能够损伤和破坏神经系统的各种因素都会引起神经系统疾病。近年来神经系统疾病患者逐年增加，尤其是精神方面的疾病及成瘾性疾病。对神经系统及其与疾病相关性的了解有助于从保护神经系统的角度，保持健康的生活习惯，远离毒品。\n\n本模块的内容侧重于神经系统疾病的发生和预防。发生于中枢神经系统和周围神经系统的，以感觉、运动、意识、自主神经功能障碍为主要表现的疾病，称为神经病；而中枢神经系统受致病因素影响发生以精神活动障碍为主要表现的疾病，称为精神病。上述疾病的病因有多种，如感染、外伤、中毒、免疫损伤、遗传缺陷及营养障碍等。中毒包括金属中毒和有机物中毒，如毒品。精神类疾病包括强迫症、抑郁症等，神经类疾病包括慢性神经炎、神经末梢炎、肌肉震颤、神经性头痛、帕金森病、癫痫等。此外，人体其他系统的失调也可能导致神经系统疾病，如胃溃疡等。由于神经细胞损伤后不易再生，许多神经系统疾病尚无有效疗法。\n\n教师在教学中要注意紧扣神经系统是人体内起主导作用的系统。一方面它控制与调节各器官、系统的活动，使人体成为一个统一的整体；另一方面神经系统的分析与综合，使机体对环境变化的刺激作出相应的\n\n反应，达到与环境的统一。神经系统的疾病对人体的危害很大，且不易治疗。在联系实际方面，教师应介绍滥用药物，包括毒品，可造成药物成瘾，成为慢性、复发性的强迫行为，成瘾后对神经系统造成损伤。引导学生认识到药物成瘾不仅是生物医学问题，更是广泛的社会问题。教育学生注意心理健康，树立正确的世界观、人生观和价值观，预防精神类疾病的发生。\n\n对本模块的学习，有助于学生了解神经系统疾病的成因和危害，从而保护神经系统不受损伤。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:biology:SB0403:OB06:CourseModule:l3\", \"category\": \"学业发展基础\"}", identifier: "urn:jy:biology:SB0403:OB06:Module:l23", CJ_courseModule: "urn:jy:biology:SB0403:OB06:CourseModule:l3", CJ_category: "学业发展基础"};

MERGE (n:Module {identifier: "urn:jy:biology:SB0403:OB06:Module:l24"})
SET n += {type: "Module", title: "“干细胞与应用”模块开设建议", description: "（1学分）\n\n干细胞是一类具有自我复制能力并能分化成其他类型功能细胞的多潜能细胞，因而具有巨大的基础研究价值和临床应用前景。干细胞研究也是目前全球范围内生物医学领域的热点和焦点。学习和了解干细胞相关知识是培养新世纪生物学科人才所必需的。\n\n本模块的内容包括干细胞的定义、基本特征、分类、生长和分化机制及应用。干细胞在特定的条件下，能分化成多种类型的细胞。根据干细胞所处的个体发育阶段可将其分为胚胎干细胞和成体干细胞；根据干细胞的发育潜能可将其分为三类：全能干细胞、多能干细胞和单能干细胞。干细胞的应用领域包括发育生物学研究的体外模型、指导药物的研制和应用、器官克隆、细胞治疗、组织再生和修复等。课程内容还应扩展讨论干细胞应用中可能存在的潜在危险，以及产生的伦理问题。\n\n教师在教学活动中要突出如下基本概念：胚胎干细胞在不同发育阶段中的潜能差异，干细胞分化的机制及条件等。目前人类胚胎干细胞已能成功地在体外培养，成体干细胞可以横向分化为其他类型的细胞和组织，甚至成体细胞也可以逆转化为诱导多能干细胞（iPS cell），这些成果为干细胞广泛的临床应用提供了基础。同时，教师也应强调干细胞研究的社会价值和意义。\n\n对本模块的学习，可以使学生了解和认识干细胞的基本概念，干细\n\n胞生长和分化的机制，干细胞目前的研究进展，干细胞的临床应用及相关疾病治疗。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:biology:SB0403:OB06:CourseModule:l3\", \"category\": \"学业发展基础\"}", identifier: "urn:jy:biology:SB0403:OB06:Module:l24", CJ_courseModule: "urn:jy:biology:SB0403:OB06:CourseModule:l3", CJ_category: "学业发展基础"};

MERGE (n:Module {identifier: "urn:jy:biology:SB0403:OB06:Module:l25"})
SET n += {type: "Module", title: "“植物组织培养”模块开设建议", description: "（1学分）\n\n植物组织培养由于不需要昂贵的仪器设备和药品，投资少，可以在短时期内不受自然条件限制培育出大量具有优良性状的幼苗，以及进行植物去病毒处理，因此在名贵花卉、果蔬和中药材植物等的迅速扩大繁殖等方面发挥了重要的作用。\n\n本模块应包括培养基配制、植物外植体的选择、外植体的消毒、外植体无菌切割、愈伤组织培养、愈伤组织增殖和诱导分化、炼苗等内容。\n\n教师在教学中可以播放植物组织培养的视频，组织学生逐段观看和讨论，强调无菌操作是组织培养贯穿始终的关键因素；根据当地的实际情况组织学生参观植物组织培养的现场，请技术人员讲解植物组织培养的要领；可组建自己的植物组织培养实验室；组织学生分组讨论，提出植物组织培养的实验方案，教师指导修订该方案，提供必需的实验器具和药品，让学生亲自动手领悟植物组织培养的全过程，体会科学研究的艰辛与成功的乐趣。\n\n对本模块的学习，有利于学生掌握无菌操作的要领，基本了解植物组织培养的过程，为他们日后从事相关或类似的研究和工作奠定良好的基础。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:biology:SB0403:OB06:CourseModule:l3\", \"category\": \"学业发展基础\"}", identifier: "urn:jy:biology:SB0403:OB06:Module:l25", CJ_courseModule: "urn:jy:biology:SB0403:OB06:CourseModule:l3", CJ_category: "学业发展基础"};

MERGE (n:Module {identifier: "urn:jy:biology:SB0403:OB06:Module:l26"})
SET n += {type: "Module", title: "“生态安全”模块开设建议", description: "（1学分）\n\n生态安全是人类在生产、生活和健康等方面不受生态破坏与环境污染等影响的保障程度，包括饮用水与食物安全、空气质量与绿色环境、水资源可持续利用、生态系统的稳定性等基本要素。随着城市化进程的加快和人口的增加，人类赖以生存和发展的环境不断发生变化，资源、环境、人口等社会经济问题也日益尖锐，环境问题已成为影响生态安\n\n全，影响可持续发展的重要因素之一。\n\n在过去几十年的发展过程中，人类无节制地开发生物资源、过度放牧等，使得生态系统严重退化、土地荒漠化、生物多样性减少，种种潜在的危机迫使人们不得不重视生态安全问题。学校的生态安全教育应在全面认识自然、社会和学生心理基础上，依据现实社会的需要去实施，教育学生从自身做起，为保护人类共同生存的家园，贡献自己的力量。生态安全教育的内容可以涵盖人类与环境、动植物与环境、资源和能源危机、人口危机和生态平衡等。\n\n学校的生态安全教育应从实际出发，遵循教育的基本规律，既要适合学生的年龄、生理、心理水平，同时也要考虑现实乃至未来社会的需要。生态安全教育应在充分了解学生现有水平及社会发展需要的基础上，因地制宜，因人因时而异，尽量做到从学生的生活经验出发，注重结合当地具体生态状况。教育的内容可包括饮用水与食物安全、空气质量与绿色环境、动植物与环境资源等基本要素。教学可采取游戏、观察、操作、感受、借助现代教育媒体等形式，通过各种丰富多彩的生态活动，提升学生对生态文明的理解，积极营造激发学生学习的和谐氛围。在联系沟通中训练学生学会用生物学的观点去观察和认识周围的生态状况，体会生态安全的重要意义，逐渐形成生态安全意识。\n\n本模块的教学，要求使学生理解人与自然是生命共同体，人与环境是相互制约、不可分割的整体；懂得环境为人类提供生命活动的物质基础，同时人类的生活和生产活动也以各种形式不断地对环境施加影响，环境破坏造成的后果往往需要很长的时间才能恢复，有些甚至是不可逆的；将生态安全教育与世界观、人生观、价值观教育联系起来，让学生意识到生态安全的重要性，树立“绿水青山就是金山银山”的观念和“生态安全从我做起”的意识，养成环境友好的道德行为习惯，珍视和热爱自然环境，建立有利于生态安全的生活方式。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:biology:SB0403:OB06:CourseModule:l3\", \"category\": \"学业发展基础\"}", identifier: "urn:jy:biology:SB0403:OB06:Module:l26", CJ_courseModule: "urn:jy:biology:SB0403:OB06:CourseModule:l3", CJ_category: "学业发展基础"};

MERGE (n:Module {identifier: "urn:jy:biology:SB0403:OB06:Module:l27"})
SET n += {type: "Module", title: "“校园动植物分类”模块开设建议", description: "（1学分）\n\n当前，校园生态规划建设已经成为人们讨论的热点话题。让生态理念进入校园，不仅有利于全民生态意识的提高，也丰富了学生的学习实践内容，有利于学生的全面发展。校园动植物环境是校园生态最基本的环境元素，是一个半人工生态系统（即由自然生态系统和人造生态系统共同组成）。让学生积极参与到校园生态建设和生态保护行动中去，对于培养学生观察、调查和分类的兴趣，热爱自然环境等都具有十分重要的意义。\n\n开设本模块应依托校园自然环境，着眼于学生的兴趣爱好，因地制宜开展丰富多彩的校园文化活动，让学生养成关注身边事物的习惯，激发学生在生活中学科学、用科学的兴趣。校园动植物分类内容可以包括调查校园动植物资源，动植物分类的过程与一般方法，学会使用动植物分类表，学习编制简单的检索表，介绍校园动植物有关的科、属、种的特征及识别方法，动植物标本采集及制作，建立校园动植物资源管理数据库以及了解动植物与环境的适应关系等。\n\n教学中教师应根据本地的地理特点，充分利用校园动植物资源，拉近学生与真实自然环境之间的距离。教学可以通过各种不同形式的活动展开。例如，以小组为单位制订寻找、观察校园动植物的计划；交流认识校园里的动植物的学习经验；以科技为主导，以校园为依托，开发利用校园动植物资源；广泛收集教学需要的文字、声音、图片、动画等素材，建立校园动植物资源库等，实现教学与校园动植物资源的有效整合。激发学生的学习兴趣，培养学生的自然观察能力，提升学生的综合素养。\n\n校园动植物分类课程以提高学生的实践能力和创新能力为核心，重视培养学生获取生物学事实的能力、科学思维能力、创新精神及自主学习能力。本课程不仅培养学生关注身边校园的动植物，更重要的是培养学生爱护校园环境，自觉维护校园绿色的行为习惯，培养学生的合作精神和社会责任感。", subject: "SB0403", applicableLevel: "OB06", contentJson: "{\"courseModule\": \"urn:jy:biology:SB0403:OB06:CourseModule:l3\", \"category\": \"学业发展基础\"}", identifier: "urn:jy:biology:SB0403:OB06:Module:l27", CJ_courseModule: "urn:jy:biology:SB0403:OB06:CourseModule:l3", CJ_category: "学业发展基础"};

MERGE (n:AcademicQuality {identifier: "urn:jy:biology:SB0403:OB06:AcademicQuality:l1"})
SET n += {type: "AcademicQuality", title: "学业质量", description: "学业质量是学生在完成生物学课程学习后学业成就的综合表现，体现课程目标的达成程度，反映核心素养发展状况。学业质量标准依据学科核心素养水平划分，结合结构化课程内容，描述学习结果的典型表现，整体标识和刻画学业质量的不同水平。", subject: "SB0403", applicableLevel: "OB0601", contentJson: "{\"standard\": \"水平一\", \"standardRequirement\": \"在熟悉的、结构良好的生产生活或生物学研究等问题情境中，学生应能够：运用特定的生命观念，从微观和宏观层面描述生命活动规律。运用结构与功能观或物质与能量观，从分子与细胞水平描述生物体结构与功能的适应关系，光合作用和呼吸作用等生命活动过程中的物质转变与能量转化，细胞生命历程中的结构变化与功能的关系；运用结构与功能观或进化与适应观，举例说明遗传与变异的物质基础和规律，以及生物的多样性和统一性。运用相关的生物学概念，解释生命现象，并使用文字或图示等形式进行直观展示。在现实生活中，践行健康的生活方式，表现出保护环境的行为习惯，辨别迷信和伪科学；关注社会热点中与生物学有关的议题和生物技术的应用。从特定的生命观念视角，基于证据和逻辑，运用比较、分类、归纳、演绎、分析、综合、建模等方法，通过对生命现象的分析，提出可探究的生物学问题，遵循正确的伦理道德，设计和实施简单的探究方案，依据结果得出结论，并进行交流，在活动中能与他人合作，体验和感悟科学探究对解决实际问题的意义和价值。\"}", identifier: "urn:jy:biology:SB0403:OB06:AcademicQuality:l1", CJ_standard: "水平一", CJ_standardRequirement: "在熟悉的、结构良好的生产生活或生物学研究等问题情境中，学生应能够：运用特定的生命观念，从微观和宏观层面描述生命活动规律。运用结构与功能观或物质与能量观，从分子与细胞水平描述生物体结构与功能的适应关系，光合作用和呼吸作用等生命活动过程中的物质转变与能量转化，细胞生命历程中的结构变化与功能的关系；运用结构与功能观或进化与适应观，举例说明遗传与变异的物质基础和规律，以及生物的多样性和统一性。运用相关的生物学概念，解释生命现象，并使用文字或图示等形式进行直观展示。在现实生活中，践行健康的生活方式，表现出保护环境的行为习惯，辨别迷信和伪科学；关注社会热点中与生物学有关的议题和生物技术的应用。从特定的生命观念视角，基于证据和逻辑，运用比较、分类、归纳、演绎、分析、综合、建模等方法，通过对生命现象的分析，提出可探究的生物学问题，遵循正确的伦理道德，设计和实施简单的探究方案，依据结果得出结论，并进行交流，在活动中能与他人合作，体验和感悟科学探究对解决实际问题的意义和价值。"};

MERGE (n:AcademicQuality {identifier: "urn:jy:biology:SB0403:OB06:AcademicQuality:l2"})
SET n += {type: "AcademicQuality", title: "学业质量", description: "学业质量是学生在完成生物学课程学习后学业成就的综合表现，体现课程目标的达成程度，反映核心素养发展状况。学业质量标准依据学科核心素养水平划分，结合结构化课程内容，描述学习结果的典型表现，整体标识和刻画学业质量的不同水平。", subject: "SB0403", applicableLevel: "OB0601", contentJson: "{\"standard\": \"水平二\", \"standardRequirement\": \"在较为陌生的、结构良好的生产生活或生物学研究等问题情境中，学生应能够：运用结构与功能观、物质与能量观、进化与适应观、稳态与平衡观等不同的生命观念，从微观和宏观层面解释生命活动规律。从分子与细胞水平说明生物体结构与功能的适应关系，细胞内各项生命活动过程中的物质变化与能量转化；说明遗传与变异的物质基础和规律，以及生物的多样性和统一性的原因；概述个体生命活动的调节机制与稳态的维持；解释生态系统的成分、结构与功能的关系，以及生态系统维持相对稳定的机制；举例说明生物技术与工程中运用的生物学原理。运用相关的生物学概念，解释生命现象，并使用文字、图示或模型等对生命现象的变化作出预测。主动向他人宣传有关健康生活、生物多样性和环境保护、生物技术安全与伦理等方面的知识和科学做法，参与社会性科学议题的讨论，从科学、技术与社会等方面阐明个人立场。从不同的生命观念视角，基于证据和逻辑，综合运用比较、分类、归纳、演绎、分析、综合、建模等方法，通过对生命现象或现实需求的分析，提出可探究的生物学问题或工程任务，分析已知条件，遵循正确的伦理道德，结合生物学概念、原理、方法和技术手段，设计并实施探究实验方案或工程学实践方案，采用多种方法如实记录和分析研究结果，尝试解决问题或完成工程任务，并使用证据与他人进行交流。认同人与自然和谐共生的理念，开展健康生活、生物多样性和环境保护等方面的实践活动。\"}", identifier: "urn:jy:biology:SB0403:OB06:AcademicQuality:l2", CJ_standard: "水平二", CJ_standardRequirement: "在较为陌生的、结构良好的生产生活或生物学研究等问题情境中，学生应能够：运用结构与功能观、物质与能量观、进化与适应观、稳态与平衡观等不同的生命观念，从微观和宏观层面解释生命活动规律。从分子与细胞水平说明生物体结构与功能的适应关系，细胞内各项生命活动过程中的物质变化与能量转化；说明遗传与变异的物质基础和规律，以及生物的多样性和统一性的原因；概述个体生命活动的调节机制与稳态的维持；解释生态系统的成分、结构与功能的关系，以及生态系统维持相对稳定的机制；举例说明生物技术与工程中运用的生物学原理。运用相关的生物学概念，解释生命现象，并使用文字、图示或模型等对生命现象的变化作出预测。主动向他人宣传有关健康生活、生物多样性和环境保护、生物技术安全与伦理等方面的知识和科学做法，参与社会性科学议题的讨论，从科学、技术与社会等方面阐明个人立场。从不同的生命观念视角，基于证据和逻辑，综合运用比较、分类、归纳、演绎、分析、综合、建模等方法，通过对生命现象或现实需求的分析，提出可探究的生物学问题或工程任务，分析已知条件，遵循正确的伦理道德，结合生物学概念、原理、方法和技术手段，设计并实施探究实验方案或工程学实践方案，采用多种方法如实记录和分析研究结果，尝试解决问题或完成工程任务，并使用证据与他人进行交流。认同人与自然和谐共生的理念，开展健康生活、生物多样性和环境保护等方面的实践活动。"};

MERGE (n:AcademicQuality {identifier: "urn:jy:biology:SB0403:OB06:AcademicQuality:l3"})
SET n += {type: "AcademicQuality", title: "学业质量", description: "学业质量是学生在完成生物学课程学习后学业成就的综合表现，体现课程目标的达成程度，反映核心素养发展状况。学业质量标准依据学科核心素养水平划分，结合结构化课程内容，描述学习结果的典型表现，整体标识和刻画学业质量的不同水平。", subject: "SB0403", applicableLevel: "OB0601", contentJson: "{\"standard\": \"水平三\", \"standardRequirement\": \"在较为陌生的、结构不良的生产生活或生物学研究等问题情境中，学生应能够：综合运用多个生命观念，从微观和宏观层面阐释生命活动规律。从分子与细胞水平阐述生物体结构与功能的适应关系，细胞内各项生命活动过程中的物质变化与能量转化；阐释遗传与变异的物质基础和规律，以及生物的多样性和统一性的原因；概述个体生命活动的调节机制与稳态的维持；解释生态系统的成分、结构与功能的关系，以及生态系统维持相对稳定的机制；阐述多种生物技术与工程中运用的生物学原理。运用相关的生物学概念，揭示生命现象中蕴含的规律，并用恰当的表征形式表达和阐明其内涵。客观分析与评价常见生物技术在生产生活中的应用所产生的效益和风险；运用批判性思维等参与社会性科学议题的讨论，阐述不同观点或行为的科学性与合理性，从科学、技术与社会等方面阐明个人立场，作出理性决策。从不同的生命观念视角，基于证据和逻辑，综合运用比较、分类、归纳、演绎、分析、综合、建模等方法，通过对生命现象或现实需求的分析，提出清晰和可探究的生物学问题或工程任务，分析已知条件和制约因素，遵循正确的伦理道德，综合运用多学科知识、思想、方法和技术手段，创造性地设计和实施可行的研究方案，解决问题或完成工程任务。秉持人与自然和谐共生的理念，积极主动地与他人合作，开展健康生活、生物多样性和环境保护等方面的实践活动。\"}", identifier: "urn:jy:biology:SB0403:OB06:AcademicQuality:l3", CJ_standard: "水平三", CJ_standardRequirement: "在较为陌生的、结构不良的生产生活或生物学研究等问题情境中，学生应能够：综合运用多个生命观念，从微观和宏观层面阐释生命活动规律。从分子与细胞水平阐述生物体结构与功能的适应关系，细胞内各项生命活动过程中的物质变化与能量转化；阐释遗传与变异的物质基础和规律，以及生物的多样性和统一性的原因；概述个体生命活动的调节机制与稳态的维持；解释生态系统的成分、结构与功能的关系，以及生态系统维持相对稳定的机制；阐述多种生物技术与工程中运用的生物学原理。运用相关的生物学概念，揭示生命现象中蕴含的规律，并用恰当的表征形式表达和阐明其内涵。客观分析与评价常见生物技术在生产生活中的应用所产生的效益和风险；运用批判性思维等参与社会性科学议题的讨论，阐述不同观点或行为的科学性与合理性，从科学、技术与社会等方面阐明个人立场，作出理性决策。从不同的生命观念视角，基于证据和逻辑，综合运用比较、分类、归纳、演绎、分析、综合、建模等方法，通过对生命现象或现实需求的分析，提出清晰和可探究的生物学问题或工程任务，分析已知条件和制约因素，遵循正确的伦理道德，综合运用多学科知识、思想、方法和技术手段，创造性地设计和实施可行的研究方案，解决问题或完成工程任务。秉持人与自然和谐共生的理念，积极主动地与他人合作，开展健康生活、生物多样性和环境保护等方面的实践活动。"};

// =====================================================
// 导入关系
// =====================================================

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Module:l1"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l1"})
MERGE (source)-[r:moduleContainsConception]->(target)
SET r.label = "模块1 分子与细胞包含概念1 细胞是生物体结构与生命活动的基本单位";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Module:l1"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l2"})
MERGE (source)-[r:moduleContainsConception]->(target)
SET r.label = "模块1 分子与细胞包含概念2 细胞需要能量和营养物质维持生存，并通过分裂实现增殖";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Module:l2"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l3"})
MERGE (source)-[r:moduleContainsConception]->(target)
SET r.label = "模块2 遗传与进化包含概念3 遗传信息控制生物性状，并代代相传";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Module:l2"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l4"})
MERGE (source)-[r:moduleContainsConception]->(target)
SET r.label = "模块2 遗传与进化包含概念4 生物的多样性和适应性是进化的结果";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Module:l5"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l9"})
MERGE (source)-[r:moduleContainsConception]->(target)
SET r.label = "模块3 生物技术与工程包含概念5 基因工程赋予生物新的遗传特性";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Module:l5"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l10"})
MERGE (source)-[r:moduleContainsConception]->(target)
SET r.label = "模块3 生物技术与工程包含概念6 生物技术在造福人类社会的同时也可能会带来安全与伦理问题";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Module:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l5"})
MERGE (source)-[r:moduleContainsConception]->(target)
SET r.label = "模块1 稳态与调节包含概念5 生命个体的结构与功能相适应，各结构协调统一共同完成复杂的生命活动，并通过一定的调节机制保持稳态";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Module:l4"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l6"})
MERGE (source)-[r:moduleContainsConception]->(target)
SET r.label = "模块2 生物与环境包含概念6 生态系统中的各种成分相互影响，共同实现系统的物质循环、能量流动和信息传递，生态系统通过自我调节保持相对稳定的状态";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Module:l5"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l7"})
MERGE (source)-[r:moduleContainsConception]->(target)
SET r.label = "模块3 生物技术与工程包含概念7 发酵工程利用微生物的特定功能规模化生产对人类有用的产品";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Module:l5"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l8"})
MERGE (source)-[r:moduleContainsConception]->(target)
SET r.label = "模块3 生物技术与工程包含概念8 细胞工程通过细胞水平上的操作，获得有用的生物体或其产品";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l1"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l1"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l1"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l2"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l1"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l3"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l1"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l4"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l1"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l5"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l1"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l6"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l1"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l7"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l1"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l8"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l1"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l9"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l1"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l10"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l2"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l1"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l2"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l2"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l2"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l3"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l2"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l4"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l2"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l5"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l2"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l6"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l2"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l7"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l2"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l8"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l2"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l9"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l2"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l10"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l1"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l2"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l3"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l4"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l5"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l6"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l7"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l8"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l9"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l10"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "生命观念是指对观察到的生命现象及其相互关系或特性进行解释后的抽象，是人们经过实证后的观点，是生物学概念、原理、规律的提炼和升华。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l4"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l1"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l4"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l2"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l4"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l3"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l4"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l4"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l4"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l5"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l4"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l6"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l4"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l7"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l4"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l8"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l4"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l9"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l4"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l10"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l5"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l1"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l5"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l2"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l5"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l3"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l5"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l4"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l5"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l5"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l5"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l6"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l5"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l7"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l5"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l8"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l5"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l9"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l5"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l10"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l6"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l1"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l6"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l2"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l6"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l3"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l6"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l4"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l6"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l5"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l6"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l6"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l6"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l7"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l6"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l8"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l6"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l9"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l6"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l10"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学思维是指尊重事实和证据，崇尚严谨和务实的求知态度，运用科学的思维方法认识事物、解决实际问题的思维习惯和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l7"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l1"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l7"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l2"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l7"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l3"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l7"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l4"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l7"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l5"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l7"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l6"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l7"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l7"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l7"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l8"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l7"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l9"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l7"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l10"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l8"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l1"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l8"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l2"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l8"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l3"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l8"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l4"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l8"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l5"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l8"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l6"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l8"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l7"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l8"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l8"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l8"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l9"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l8"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l10"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l9"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l1"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l9"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l2"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l9"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l3"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l9"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l4"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l9"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l5"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l9"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l6"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l9"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l7"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l9"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l8"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l9"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l9"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l9"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l10"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "科学探究是指能够发现现实世界中的生物学问题，针对特定的生物学现象，进行观察、提问、实验设计、方案实施以及对结果的交流与讨论的能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l10"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l1"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l10"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l2"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l10"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l3"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l10"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l4"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l10"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l5"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l10"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l6"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l10"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l7"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l10"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l8"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l10"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l9"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l10"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l10"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l11"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l1"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l11"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l2"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l11"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l3"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l11"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l4"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l11"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l5"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l11"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l6"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l11"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l7"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l11"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l8"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l11"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l9"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l11"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l10"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l12"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l1"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l12"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l2"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l12"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l3"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l12"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l4"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l12"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l5"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l12"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l6"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l12"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l7"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l12"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l8"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l12"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l9"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l12"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Conception:l10"})
MERGE (source)-[r:coreLiteracyRelatesToConception]->(target)
SET r.label = "社会责任是指基于生物学的认识，参与个人与社会事务的讨论，作出理性解释和判断，解决生产生活问题的担当和能力。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l1"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:AcademicQuality:l1"})
MERGE (source)-[r:moduleAchievesAcademicQuality]->(target)
SET r.label = "必修课程达到学业质量水平1";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l1"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:AcademicQuality:l2"})
MERGE (source)-[r:moduleAchievesAcademicQuality]->(target)
SET r.label = "必修课程达到学业质量水平2";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l1"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:AcademicQuality:l3"})
MERGE (source)-[r:moduleAchievesAcademicQuality]->(target)
SET r.label = "必修课程达到学业质量水平3";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l2"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:AcademicQuality:l1"})
MERGE (source)-[r:moduleAchievesAcademicQuality]->(target)
SET r.label = "选择性必修课程达到学业质量水平1";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l2"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:AcademicQuality:l2"})
MERGE (source)-[r:moduleAchievesAcademicQuality]->(target)
SET r.label = "选择性必修课程达到学业质量水平2";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l2"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:AcademicQuality:l3"})
MERGE (source)-[r:moduleAchievesAcademicQuality]->(target)
SET r.label = "选择性必修课程达到学业质量水平3";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:AcademicQuality:l1"})
MERGE (source)-[r:moduleAchievesAcademicQuality]->(target)
SET r.label = "选修课程达到学业质量水平1";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:AcademicQuality:l2"})
MERGE (source)-[r:moduleAchievesAcademicQuality]->(target)
SET r.label = "选修课程达到学业质量水平2";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:AcademicQuality:l3"})
MERGE (source)-[r:moduleAchievesAcademicQuality]->(target)
SET r.label = "选修课程达到学业质量水平3";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l1"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l1"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念1 细胞是生物体结构与生命活动的基本单位包含子概念1 细胞由多种多样的分子组成";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l1"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l2"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念1 细胞是生物体结构与生命活动的基本单位包含子概念2 细胞各部分结构既分工又合作，共同执行细胞的各项生命活动";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l1"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l3"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念1 细胞是生物体结构与生命活动的基本单位包含子概念3 各种细胞具有相似的基本结构，但在形态与功能上有所差异";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l2"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l4"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念2 细胞需要能量和营养物质维持生存，并通过分裂实现增殖包含子概念4 物质通过被动运输、主动运输等方式进出细胞，以维持细胞的正常代谢活动";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l2"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l5"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念2 细胞需要能量和营养物质维持生存，并通过分裂实现增殖包含子概念5 细胞的功能绝大多数基于化学反应, 这些反应发生在细胞的特定区域";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l2"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l6"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念2 细胞需要能量和营养物质维持生存，并通过分裂实现增殖包含子概念6 细胞会经历生长、增殖、分化、衰老和死亡等生命进程";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l7"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念3 遗传信息控制生物性状，并代代相传包含子概念7 亲代传递给子代的遗传信息主要编码在DNA分子上";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l8"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念3 遗传信息控制生物性状，并代代相传包含子概念8 有性生殖中基因的分离和重组使双亲后代的基因组合有多种可能";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l9"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念3 遗传信息控制生物性状，并代代相传包含子概念9 由基因突变、染色体变异和基因重组引起的变异是可以遗传的";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l4"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l10"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念4 生物的多样性和适应性是进化的结果包含子概念10 地球上的现存物种丰富多样，它们来自共同祖先";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l4"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l11"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念4 生物的多样性和适应性是进化的结果包含子概念11 适应是自然选择的结果";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l5"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l12"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念5 生命个体的结构与功能相适应，各结构协调统一共同完成复杂的生命活动，并通过一定的调节机制保持稳态包含子概念12 内环境为机体细胞提供适宜的生存环境，机体细胞通过内环境与外界环境进行物质交换";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l5"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l13"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念5 生命个体的结构与功能相适应，各结构协调统一共同完成复杂的生命活动，并通过一定的调节机制保持稳态包含子概念13 内环境的变化会引发机体的自动调节，以维持内环境的稳态";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l5"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l14"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念5 生命个体的结构与功能相适应，各结构协调统一共同完成复杂的生命活动，并通过一定的调节机制保持稳态包含子概念14 神经系统能够及时感知机体内、外环境的变化，并作出反应调控各器官、系统的活动，实现机体稳态";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l5"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l15"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念5 生命个体的结构与功能相适应，各结构协调统一共同完成复杂的生命活动，并通过一定的调节机制保持稳态包含子概念15 内分泌系统产生的多种类型的激素，通过体液传送而发挥调节作用，实现机体稳态";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l5"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l16"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念5 生命个体的结构与功能相适应，各结构协调统一共同完成复杂的生命活动，并通过一定的调节机制保持稳态包含子概念16 免疫系统能够抵御病原体的侵袭，识别并清除机体内衰老、死亡或异常的细胞，实现机体稳态";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l5"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l17"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念5 生命个体的结构与功能相适应，各结构协调统一共同完成复杂的生命活动，并通过一定的调节机制保持稳态包含子概念17 植物生命活动受到多种因素的调节，其中最重要的是植物激素的调节";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l6"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l18"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念6 生态系统中的各种成分相互影响，共同实现系统的物质循环、能量流动和信息传递，生态系统通过自我调节保持相对稳定的状态包含子概念18 不同种群的生物在长期适应环境和彼此相互适应的过程中形成动态的生物群落";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l6"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l19"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念6 生态系统中的各种成分相互影响，共同实现系统的物质循环、能量流动和信息传递，生态系统通过自我调节保持相对稳定的状态包含子概念19 生物群落与非生物的环境因素相互作用形成多样化的生态系统，完成物质循环、能量流动和信息传递";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l6"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l20"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念6 生态系统中的各种成分相互影响，共同实现系统的物质循环、能量流动和信息传递，生态系统通过自我调节保持相对稳定的状态包含子概念20 生态系统通过自我调节作用抵御和消除一定限度的外来干扰，保持或恢复自身结构和功能的相对稳定";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l6"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l21"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念6 生态系统中的各种成分相互影响，共同实现系统的物质循环、能量流动和信息传递，生态系统通过自我调节保持相对稳定的状态包含子概念21 人类活动对生态系统的动态平衡有着深远的影响，依据生态学原理保护环境是人类生存和可持续发展的必要条件";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l7"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l22"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念7 发酵工程利用微生物的特定功能规模化生产对人类有用的产品包含子概念22 获得纯净的微生物培养物是发酵工程的基础";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l7"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l23"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念7 发酵工程利用微生物的特定功能规模化生产对人类有用的产品包含子概念23 发酵工程为人类提供多样的生物产品";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l8"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l24"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念8 细胞工程通过细胞水平上的操作，获得有用的生物体或其产品包含子概念24 植物细胞工程包括组织培养和体细胞杂交等技术";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l8"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l25"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念8 细胞工程通过细胞水平上的操作，获得有用的生物体或其产品包含子概念25 动物细胞工程包括细胞培养、核移植、细胞融合和干细胞的应用等技术";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l8"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l26"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念8 细胞工程通过细胞水平上的操作，获得有用的生物体或其产品包含子概念26 对动物早期胚胎或配子进行显微操作和处理以获得目标个体";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l9"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l27"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念9 基因工程赋予生物新的遗传特性包含子概念27 基因工程是一种重组DNA技术";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l9"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l28"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念9 基因工程赋予生物新的遗传特性包含子概念28 蛋白质工程是基因工程的延伸";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l10"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l29"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念10 生物技术在造福人类社会的同时也可能会带来安全与伦理问题包含子概念29 转基因产品的安全性引发社会的广泛关注";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l10"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l30"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念10 生物技术在造福人类社会的同时也可能会带来安全与伦理问题包含子概念30 中国禁止生殖性克隆人";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:Conception:l10"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:SubConception:l31"})
MERGE (source)-[r:conceptionContainsSubConception]->(target)
SET r.label = "概念10 生物技术在造福人类社会的同时也可能会带来安全与伦理问题包含子概念31 世界范围内应全面禁止生物武器";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l1"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Module:l1"})
MERGE (source)-[r:courseModuleContainsModule]->(target)
SET r.label = "包含模块";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l1"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Module:l2"})
MERGE (source)-[r:courseModuleContainsModule]->(target)
SET r.label = "包含模块";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l2"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Module:l3"})
MERGE (source)-[r:courseModuleContainsModule]->(target)
SET r.label = "包含模块";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l2"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Module:l4"})
MERGE (source)-[r:courseModuleContainsModule]->(target)
SET r.label = "包含模块";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l2"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Module:l5"})
MERGE (source)-[r:courseModuleContainsModule]->(target)
SET r.label = "包含模块";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Module:l6"})
MERGE (source)-[r:courseModuleContainsModule]->(target)
SET r.label = "包含模块";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Module:l7"})
MERGE (source)-[r:courseModuleContainsModule]->(target)
SET r.label = "包含模块";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Module:l8"})
MERGE (source)-[r:courseModuleContainsModule]->(target)
SET r.label = "包含模块";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Module:l9"})
MERGE (source)-[r:courseModuleContainsModule]->(target)
SET r.label = "包含模块";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Module:l10"})
MERGE (source)-[r:courseModuleContainsModule]->(target)
SET r.label = "包含模块";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Module:l11"})
MERGE (source)-[r:courseModuleContainsModule]->(target)
SET r.label = "包含模块";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Module:l12"})
MERGE (source)-[r:courseModuleContainsModule]->(target)
SET r.label = "包含模块";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Module:l13"})
MERGE (source)-[r:courseModuleContainsModule]->(target)
SET r.label = "包含模块";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Module:l14"})
MERGE (source)-[r:courseModuleContainsModule]->(target)
SET r.label = "包含模块";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Module:l15"})
MERGE (source)-[r:courseModuleContainsModule]->(target)
SET r.label = "包含模块";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Module:l16"})
MERGE (source)-[r:courseModuleContainsModule]->(target)
SET r.label = "包含模块";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Module:l17"})
MERGE (source)-[r:courseModuleContainsModule]->(target)
SET r.label = "包含模块";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Module:l18"})
MERGE (source)-[r:courseModuleContainsModule]->(target)
SET r.label = "包含模块";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Module:l19"})
MERGE (source)-[r:courseModuleContainsModule]->(target)
SET r.label = "包含模块";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Module:l20"})
MERGE (source)-[r:courseModuleContainsModule]->(target)
SET r.label = "包含模块";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Module:l21"})
MERGE (source)-[r:courseModuleContainsModule]->(target)
SET r.label = "包含模块";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Module:l22"})
MERGE (source)-[r:courseModuleContainsModule]->(target)
SET r.label = "包含模块";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Module:l23"})
MERGE (source)-[r:courseModuleContainsModule]->(target)
SET r.label = "包含模块";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Module:l24"})
MERGE (source)-[r:courseModuleContainsModule]->(target)
SET r.label = "包含模块";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Module:l25"})
MERGE (source)-[r:courseModuleContainsModule]->(target)
SET r.label = "包含模块";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Module:l26"})
MERGE (source)-[r:courseModuleContainsModule]->(target)
SET r.label = "包含模块";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:Module:l27"})
MERGE (source)-[r:courseModuleContainsModule]->(target)
SET r.label = "包含模块";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l1"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:CourseTarget:l1"})
MERGE (source)-[r:courseModuleContainsTarget]->(target)
SET r.label = "必修课程包含目标要求：认识生物学在人与自然和谐共生，促进科技发展、社会进步等方面的重要贡献。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l2"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:CourseTarget:l1"})
MERGE (source)-[r:courseModuleContainsTarget]->(target)
SET r.label = "选择性必修课程包含目标要求：树立生命观念，运用这些观念解释生命现象，探索生命规律。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CourseModule:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:CourseTarget:l1"})
MERGE (source)-[r:courseModuleContainsTarget]->(target)
SET r.label = "选修课程包含目标要求：形成科学思维的习惯，运用生物学知识、证据和逻辑对社会性科学议题进行思考或展开论证。";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l1"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:AcademicQuality:l1"})
MERGE (source)-[r:coreLiteracyRelatesToAcademicQuality]->(target)
SET r.label = "核心素养 '生命观念' 与学业质量水平1相关";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l2"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:AcademicQuality:l2"})
MERGE (source)-[r:coreLiteracyRelatesToAcademicQuality]->(target)
SET r.label = "核心素养 '生命观念' 与学业质量水平2相关";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l3"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:AcademicQuality:l3"})
MERGE (source)-[r:coreLiteracyRelatesToAcademicQuality]->(target)
SET r.label = "核心素养 '生命观念' 与学业质量水平3相关";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l4"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:AcademicQuality:l1"})
MERGE (source)-[r:coreLiteracyRelatesToAcademicQuality]->(target)
SET r.label = "核心素养 '科学思维' 与学业质量水平1相关";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l5"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:AcademicQuality:l2"})
MERGE (source)-[r:coreLiteracyRelatesToAcademicQuality]->(target)
SET r.label = "核心素养 '科学思维' 与学业质量水平2相关";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l6"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:AcademicQuality:l3"})
MERGE (source)-[r:coreLiteracyRelatesToAcademicQuality]->(target)
SET r.label = "核心素养 '科学思维' 与学业质量水平3相关";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l7"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:AcademicQuality:l1"})
MERGE (source)-[r:coreLiteracyRelatesToAcademicQuality]->(target)
SET r.label = "核心素养 '科学探究' 与学业质量水平1相关";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l8"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:AcademicQuality:l2"})
MERGE (source)-[r:coreLiteracyRelatesToAcademicQuality]->(target)
SET r.label = "核心素养 '科学探究' 与学业质量水平2相关";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l9"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:AcademicQuality:l3"})
MERGE (source)-[r:coreLiteracyRelatesToAcademicQuality]->(target)
SET r.label = "核心素养 '科学探究' 与学业质量水平3相关";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l10"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:AcademicQuality:l1"})
MERGE (source)-[r:coreLiteracyRelatesToAcademicQuality]->(target)
SET r.label = "核心素养 '社会责任' 与学业质量水平1相关";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l11"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:AcademicQuality:l2"})
MERGE (source)-[r:coreLiteracyRelatesToAcademicQuality]->(target)
SET r.label = "核心素养 '社会责任' 与学业质量水平2相关";

MATCH (source {identifier: "urn:jy:biology:SB0403:OB06:CoreLiteracy:l12"})
MATCH (target {identifier: "urn:jy:biology:SB0403:OB06:AcademicQuality:l3"})
MERGE (source)-[r:coreLiteracyRelatesToAcademicQuality]->(target)
SET r.label = "核心素养 '社会责任' 与学业质量水平3相关";
