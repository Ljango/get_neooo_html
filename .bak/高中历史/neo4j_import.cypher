// =====================================================
// 高中历史课标图谱 - Neo4j导入脚本
// 生成时间: 2026-01-20T11:44:38.965189
// =====================================================

// 创建约束和索引
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Course) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:topic) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:module) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:teachingactivitie) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:CoreLiteracy) REQUIRE n.identifier IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:AcademicQuality) REQUIRE n.identifier IS UNIQUE;

// =====================================================
// 导入实体
// =====================================================

MERGE (n:CoreLiteracy {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:1:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:1:OB06", title: "唯物史观", description: "唯物史观是揭示人类社会历史客观基础及发展规律的科学的历史观和方法论。\n\n人类对历史的认识是由表及里、逐渐深化的，要透过历史的纷杂表象认识历史的本质，必须以科学的历史观和方法论为指导。唯物史观使历史学成为一门科学，只有运用唯物史观的立场、观点和方法，才能对历史有全面、客观的认识。", type: "CoreLiteracy", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平1\", \"standardRequirement\": \"能够初步运用唯物史观的基本观点和方法，理解唯物史观是科学的历史观。\"}", CJ_standard: "水平1", CJ_standardRequirement: "能够初步运用唯物史观的基本观点和方法，理解唯物史观是科学的历史观。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:2:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:2:OB06", title: "唯物史观", description: "唯物史观是揭示人类社会历史客观基础及发展规律的科学的历史观和方法论。\n\n人类对历史的认识是由表及里、逐渐深化的，要透过历史的纷杂表象认识历史的本质，必须以科学的历史观和方法论为指导。唯物史观使历史学成为一门科学，只有运用唯物史观的立场、观点和方法，才能对历史有全面、客观的认识。", type: "CoreLiteracy", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平2\", \"standardRequirement\": \"能够初步运用唯物史观的基本观点和方法，理解唯物史观是科学的历史观。\"}", CJ_standard: "水平2", CJ_standardRequirement: "能够初步运用唯物史观的基本观点和方法，理解唯物史观是科学的历史观。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:3:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:3:OB06", title: "唯物史观", description: "唯物史观是揭示人类社会历史客观基础及发展规律的科学的历史观和方法论。\n\n人类对历史的认识是由表及里、逐渐深化的，要透过历史的纷杂表象认识历史的本质，必须以科学的历史观和方法论为指导。唯物史观使历史学成为一门科学，只有运用唯物史观的立场、观点和方法，才能对历史有全面、客观的认识。", type: "CoreLiteracy", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平3\", \"standardRequirement\": \"能够将唯物史观运用于历史学习、探究中，并将其作为认识和解决现实问题的指导思想。\"}", CJ_standard: "水平3", CJ_standardRequirement: "能够将唯物史观运用于历史学习、探究中，并将其作为认识和解决现实问题的指导思想。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:4:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:4:OB06", title: "唯物史观", description: "唯物史观是揭示人类社会历史客观基础及发展规律的科学的历史观和方法论。\n\n人类对历史的认识是由表及里、逐渐深化的，要透过历史的纷杂表象认识历史的本质，必须以科学的历史观和方法论为指导。唯物史观使历史学成为一门科学，只有运用唯物史观的立场、观点和方法，才能对历史有全面、客观的认识。", type: "CoreLiteracy", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平4\", \"standardRequirement\": \"能够将唯物史观运用于历史学习、探究中，并将其作为认识和解决现实问题的指导思想。\"}", CJ_standard: "水平4", CJ_standardRequirement: "能够将唯物史观运用于历史学习、探究中，并将其作为认识和解决现实问题的指导思想。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:5:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:5:OB06", title: "时空观念", description: "时空观念是在特定的时间联系和空间联系中对事物进行观察、分析的意识和思维方式。\n\n任何历史事物都是在特定的、具体的时间和空间条件下发生的，只有在特定的时空框架中，才可能对史事有准确的理解。", type: "CoreLiteracy", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平1\", \"standardRequirement\": \"能够辨识历史叙述中不同的时间与空间表达方式；能够理解它们的意义。\"}", CJ_standard: "水平1", CJ_standardRequirement: "能够辨识历史叙述中不同的时间与空间表达方式；能够理解它们的意义。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:6:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:6:OB06", title: "时空观念", description: "时空观念是在特定的时间联系和空间联系中对事物进行观察、分析的意识和思维方式。\n\n任何历史事物都是在特定的、具体的时间和空间条件下发生的，只有在特定的时空框架中，才可能对史事有准确的理解。", type: "CoreLiteracy", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平2\", \"standardRequirement\": \"能够将给定的史事定位在特定的时间和空间框架下；能够借助历史年表、历史地图等对相关史事加以描述；能够认识事物发生的来龙去脉，理解空间和环境因素对认识历史与现实的重要性。\"}", CJ_standard: "水平2", CJ_standardRequirement: "能够将给定的史事定位在特定的时间和空间框架下；能够借助历史年表、历史地图等对相关史事加以描述；能够认识事物发生的来龙去脉，理解空间和环境因素对认识历史与现实的重要性。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:7:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:7:OB06", title: "时空观念", description: "时空观念是在特定的时间联系和空间联系中对事物进行观察、分析的意识和思维方式。\n\n任何历史事物都是在特定的、具体的时间和空间条件下发生的，只有在特定的时空框架中，才可能对史事有准确的理解。", type: "CoreLiteracy", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平3\", \"standardRequirement\": \"能够把握多则史事的时间、空间联系，并用特定的时间和空间术语对较长时段的史事加以概括和说明。\"}", CJ_standard: "水平3", CJ_standardRequirement: "能够把握多则史事的时间、空间联系，并用特定的时间和空间术语对较长时段的史事加以概括和说明。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:8:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:8:OB06", title: "时空观念", description: "时空观念是在特定的时间联系和空间联系中对事物进行观察、分析的意识和思维方式。\n\n任何历史事物都是在特定的、具体的时间和空间条件下发生的，只有在特定的时空框架中，才可能对史事有准确的理解。", type: "CoreLiteracy", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平4\", \"standardRequirement\": \"在对历史和现实问题进行独立探究的过程中，能将其置于具体的时空框架下；能够选择恰当的时空尺度对其进行分析、综合、比较。\"}", CJ_standard: "水平4", CJ_standardRequirement: "在对历史和现实问题进行独立探究的过程中，能将其置于具体的时空框架下；能够选择恰当的时空尺度对其进行分析、综合、比较。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:9:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:9:OB06", title: "史料实证", description: "史料实证是指对获取的史料进行辨析，并运用史料努力重现历史真实的态度与方法。\n\n历史过程是不可逆的，认识历史只能通过现存的史料。要形成对历史的正确、客观的认识，必须重视史料的搜集、整理和辨析，去伪存真。", type: "CoreLiteracy", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平1\", \"standardRequirement\": \"能够知道史料与历史叙述的区别，知道史料的重要性；了解史料的基本类型及分类方法。\"}", CJ_standard: "水平1", CJ_standardRequirement: "能够知道史料与历史叙述的区别，知道史料的重要性；了解史料的基本类型及分类方法。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:10:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:10:OB06", title: "史料实证", description: "史料实证是指对获取的史料进行辨析，并运用史料努力重现历史真实的态度与方法。\n\n历史过程是不可逆的，认识历史只能通过现存的史料。要形成对历史的正确、客观的认识，必须重视史料的搜集、整理和辨析，去伪存真。", type: "CoreLiteracy", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平2\", \"standardRequirement\": \"能够从史料中提取有关的历史信息；能够认识不同类型的史料所具有的不同价值；在对史事与现实问题进行论述的过程中，能够尝试运用史料作为证据。\"}", CJ_standard: "水平2", CJ_standardRequirement: "能够从史料中提取有关的历史信息；能够认识不同类型的史料所具有的不同价值；在对史事与现实问题进行论述的过程中，能够尝试运用史料作为证据。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:11:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:11:OB06", title: "史料实证", description: "史料实证是指对获取的史料进行辨析，并运用史料努力重现历史真实的态度与方法。\n\n历史过程是不可逆的，认识历史只能通过现存的史料。要形成对历史的正确、客观的认识，必须重视史料的搜集、整理和辨析，去伪存真。", type: "CoreLiteracy", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平3\", \"standardRequirement\": \"在探究特定历史问题时，能够尝试从多种渠道获取与该问题相关的史料，能够选择相关史料探究历史问题。\"}", CJ_standard: "水平3", CJ_standardRequirement: "在探究特定历史问题时，能够尝试从多种渠道获取与该问题相关的史料，能够选择相关史料探究历史问题。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:12:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:12:OB06", title: "史料实证", description: "史料实证是指对获取的史料进行辨析，并运用史料努力重现历史真实的态度与方法。\n\n历史过程是不可逆的，认识历史只能通过现存的史料。要形成对历史的正确、客观的认识，必须重视史料的搜集、整理和辨析，去伪存真。", type: "CoreLiteracy", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平4\", \"standardRequirement\": \"能够比较、分析不同来源、不同观点的史料；能够在辨别史料作者意图的基础上利用史料；在对历史和现实问题进行独立探究的过程中，能够恰当地运用史料加以论述。\"}", CJ_standard: "水平4", CJ_standardRequirement: "能够比较、分析不同来源、不同观点的史料；能够在辨别史料作者意图的基础上利用史料；在对历史和现实问题进行独立探究的过程中，能够恰当地运用史料加以论述。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:13:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:13:OB06", title: "历史解释", description: "历史解释是指以史料为依据，客观地认识和评判历史的态度和方法。\n\n所有历史叙述在本质上都是对历史的解释，即便是对基本事实的陈述也包含了陈述者的主观认识。人们通过多种不同的方式描述和解释过去，通过对史料的搜集、整理和辨析，辩证、客观地理解历史事物，不仅要将其描述出来，还要揭示其表象背后的因果关系等。通过对历史的解释，不断接近历史真实。", type: "CoreLiteracy", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平1\", \"standardRequirement\": \"能够辨别教材和教学中的历史解释；能够准确、有条理地叙述重要史事；能够概述历史发展基本进程。\"}", CJ_standard: "水平1", CJ_standardRequirement: "能够辨别教材和教学中的历史解释；能够准确、有条理地叙述重要史事；能够概述历史发展基本进程。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:14:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:14:OB06", title: "历史解释", description: "历史解释是指以史料为依据，客观地认识和评判历史的态度和方法。\n\n所有历史叙述在本质上都是对历史的解释，即便是对基本事实的陈述也包含了陈述者的主观认识。人们通过多种不同的方式描述和解释过去，通过对史料的搜集、整理和辨析，辩证、客观地理解历史事物，不仅要将其描述出来，还要揭示其表象背后的因果关系等。通过对历史的解释，不断接近历史真实。", type: "CoreLiteracy", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平2\", \"standardRequirement\": \"能够选择、组织和运用相关材料并使用相关历史术语，对个别或系列史事进行分析并提出自己的解释；能够在历史叙述中将史实描述与历史解释结合起来；能够尝试从历史的角度解释现实问题。\"}", CJ_standard: "水平2", CJ_standardRequirement: "能够选择、组织和运用相关材料并使用相关历史术语，对个别或系列史事进行分析并提出自己的解释；能够在历史叙述中将史实描述与历史解释结合起来；能够尝试从历史的角度解释现实问题。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:15:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:15:OB06", title: "历史解释", description: "历史解释是指以史料为依据，客观地认识和评判历史的态度和方法。\n\n所有历史叙述在本质上都是对历史的解释，即便是对基本事实的陈述也包含了陈述者的主观认识。人们通过多种不同的方式描述和解释过去，通过对史料的搜集、整理和辨析，辩证、客观地理解历史事物，不仅要将其描述出来，还要揭示其表象背后的因果关系等。通过对历史的解释，不断接近历史真实。", type: "CoreLiteracy", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平3\", \"standardRequirement\": \"能够分辨不同的历史解释；尝试从来源、性质和目的等多方面，说明导致这些不同解释的原因并加以评析；能够运用相关材料对系列史事作出解释。\"}", CJ_standard: "水平3", CJ_standardRequirement: "能够分辨不同的历史解释；尝试从来源、性质和目的等多方面，说明导致这些不同解释的原因并加以评析；能够运用相关材料对系列史事作出解释。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:16:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:16:OB06", title: "历史解释", description: "历史解释是指以史料为依据，客观地认识和评判历史的态度和方法。\n\n所有历史叙述在本质上都是对历史的解释，即便是对基本事实的陈述也包含了陈述者的主观认识。人们通过多种不同的方式描述和解释过去，通过对史料的搜集、整理和辨析，辩证、客观地理解历史事物，不仅要将其描述出来，还要揭示其表象背后的因果关系等。通过对历史的解释，不断接近历史真实。", type: "CoreLiteracy", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平4\", \"standardRequirement\": \"在独立探究历史问题时，能够将历史知识与其他相关学科的知识加以联系；能够在尽可能占有史料的基础上，尝试验证以往的说法或提出新的解释。\"}", CJ_standard: "水平4", CJ_standardRequirement: "在独立探究历史问题时，能够将历史知识与其他相关学科的知识加以联系；能够在尽可能占有史料的基础上，尝试验证以往的说法或提出新的解释。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:17:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:17:OB06", title: "家国情怀", description: "家国情怀是学习和探究历史应具有的人文追求，体现了对国家富强、民族复兴、人民幸福的情感，以及对国家的高度认同感、归属感、责任感和使命感。\n\n学习和探究历史应具有价值关怀，要充满人文情怀并关注现实问题，以服务强国建设、民族复兴和人类社会进步为使命。", type: "CoreLiteracy", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平1\", \"standardRequirement\": \"能够具有对家乡、民族、国家的认同感，知道中华民族多元一体的发展进程，理解并认同社会主义先进文化、革命文化和中华优秀传统文化，理解并认同社会主义核心价值观，具有对祖国和人民的深情大爱；铸牢中华民族共同体意识；能够把握中国和世界历史发展的进程和关联，理解和尊重世界各国、各地区、各民族的文化传统，形成构建人类命运共同体意识。\"}", CJ_standard: "水平1", CJ_standardRequirement: "能够具有对家乡、民族、国家的认同感，知道中华民族多元一体的发展进程，理解并认同社会主义先进文化、革命文化和中华优秀传统文化，理解并认同社会主义核心价值观，具有对祖国和人民的深情大爱；铸牢中华民族共同体意识；能够把握中国和世界历史发展的进程和关联，理解和尊重世界各国、各地区、各民族的文化传统，形成构建人类命运共同体意识。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:18:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:18:OB06", title: "家国情怀", description: "家国情怀是学习和探究历史应具有的人文追求，体现了对国家富强、民族复兴、人民幸福的情感，以及对国家的高度认同感、归属感、责任感和使命感。\n\n学习和探究历史应具有价值关怀，要充满人文情怀并关注现实问题，以服务强国建设、民族复兴和人类社会进步为使命。", type: "CoreLiteracy", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平2\", \"standardRequirement\": \"能够具有对家乡、民族、国家的认同感，知道中华民族多元一体的发展进程，理解并认同社会主义先进文化、革命文化和中华优秀传统文化，理解并认同社会主义核心价值观，具有对祖国和人民的深情大爱；铸牢中华民族共同体意识；能够把握中国和世界历史发展的进程和关联，理解和尊重世界各国、各地区、各民族的文化传统，形成构建人类命运共同体意识。\"}", CJ_standard: "水平2", CJ_standardRequirement: "能够具有对家乡、民族、国家的认同感，知道中华民族多元一体的发展进程，理解并认同社会主义先进文化、革命文化和中华优秀传统文化，理解并认同社会主义核心价值观，具有对祖国和人民的深情大爱；铸牢中华民族共同体意识；能够把握中国和世界历史发展的进程和关联，理解和尊重世界各国、各地区、各民族的文化传统，形成构建人类命运共同体意识。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:19:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:19:OB06", title: "家国情怀", description: "家国情怀是学习和探究历史应具有的人文追求，体现了对国家富强、民族复兴、人民幸福的情感，以及对国家的高度认同感、归属感、责任感和使命感。\n\n学习和探究历史应具有价值关怀，要充满人文情怀并关注现实问题，以服务强国建设、民族复兴和人类社会进步为使命。", type: "CoreLiteracy", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平3\", \"standardRequirement\": \"了解中华文明的历史价值和现实意义，了解社会主义核心价值观的历史依据，能够主动寻找、发现历史上认同家乡、民族、国家的事例，形成正确的历史观、国家观、民族观和文化观；能够在历史学习与探究中主动表现出对历史的反思，从历史中汲取经验教训，更全面、客观地认识历史和现实社会问题；确立积极进取的人生态度，形成正确的世界观、人生观和价值观；能够将历史学习所得与家乡、民族和国家的发展繁荣结合起来，把握习近平新时代中国特色社会主义思想的核心要义，坚定中国特色社会主义道路自信、理论自信、制度自信、文化自信，铸牢中华民族共同体意识并形成构建人类命运共同体意识，立志为新时代中国特色社会主义建设、中华民族伟大复兴作出自己的贡献。\"}", CJ_standard: "水平3", CJ_standardRequirement: "了解中华文明的历史价值和现实意义，了解社会主义核心价值观的历史依据，能够主动寻找、发现历史上认同家乡、民族、国家的事例，形成正确的历史观、国家观、民族观和文化观；能够在历史学习与探究中主动表现出对历史的反思，从历史中汲取经验教训，更全面、客观地认识历史和现实社会问题；确立积极进取的人生态度，形成正确的世界观、人生观和价值观；能够将历史学习所得与家乡、民族和国家的发展繁荣结合起来，把握习近平新时代中国特色社会主义思想的核心要义，坚定中国特色社会主义道路自信、理论自信、制度自信、文化自信，铸牢中华民族共同体意识并形成构建人类命运共同体意识，立志为新时代中国特色社会主义建设、中华民族伟大复兴作出自己的贡献。"};

MERGE (n:CoreLiteracy {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:20:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:20:OB06", title: "家国情怀", description: "家国情怀是学习和探究历史应具有的人文追求，体现了对国家富强、民族复兴、人民幸福的情感，以及对国家的高度认同感、归属感、责任感和使命感。\n\n学习和探究历史应具有价值关怀，要充满人文情怀并关注现实问题，以服务强国建设、民族复兴和人类社会进步为使命。", type: "CoreLiteracy", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"standard\": \"水平4\", \"standardRequirement\": \"了解中华文明的历史价值和现实意义，了解社会主义核心价值观的历史依据，能够主动寻找、发现历史上认同家乡、民族、国家的事例，形成正确的历史观、国家观、民族观和文化观；能够在历史学习与探究中主动表现出对历史的反思，从历史中汲取经验教训，更全面、客观地认识历史和现实社会问题；确立积极进取的人生态度，形成正确的世界观、人生观和价值观；能够将历史学习所得与家乡、民族和国家的发展繁荣结合起来，把握习近平新时代中国特色社会主义思想的核心要义，坚定中国特色社会主义道路自信、理论自信、制度自信、文化自信，铸牢中华民族共同体意识并形成构建人类命运共同体意识，立志为新时代中国特色社会主义建设、中华民族伟大复兴作出自己的贡献。\"}", CJ_standard: "水平4", CJ_standardRequirement: "了解中华文明的历史价值和现实意义，了解社会主义核心价值观的历史依据，能够主动寻找、发现历史上认同家乡、民族、国家的事例，形成正确的历史观、国家观、民族观和文化观；能够在历史学习与探究中主动表现出对历史的反思，从历史中汲取经验教训，更全面、客观地认识历史和现实社会问题；确立积极进取的人生态度，形成正确的世界观、人生观和价值观；能够将历史学习所得与家乡、民族和国家的发展繁荣结合起来，把握习近平新时代中国特色社会主义思想的核心要义，坚定中国特色社会主义道路自信、理论自信、制度自信、文化自信，铸牢中华民族共同体意识并形成构建人类命运共同体意识，立志为新时代中国特色社会主义建设、中华民族伟大复兴作出自己的贡献。"};

MERGE (n:teachingactivitie {identifier: "urn:jy:history:SB0307:OB06:teachingactivitie:1:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:teachingactivitie:1:OB06", title: "世界视野下的中国航海活动与海上贸易（专题1.6）", description: "本活动的设计旨在通过了解16世纪中国与世界的海上贸易活动，拓宽学生的世界视野，加强时空观念，深化对历史的理解，体现新视野带来的对史料的新发现和对传统历史问题的新解释。", type: "teachingactivitie", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"activityobjective\": \"1. 深入认识16世纪中国航海活动的主要内容及世界背景。\\n2. 利用现代信息技术手段，搜集并综合利用各类文献、水下考古等历史资料，了解这一时期中国和欧洲国家航海活动的性质和作用。\\n3. 重新认识这一时期发生的历史事件，深刻理解中外海上贸易给当时中国社会带来的巨大变化，以及对世界的影响。\", \"activityprocess\": \"1. 从明朝小说（如《喻世明言》《警世通言》《醒世恒言》）中寻找白银在中国普遍流通的内容，再现使用白银进行买卖的情境；通过中外文献、考古资料等，了解白银大量来自美洲并被用以购买中国的瓷器、丝绸、茶叶等商品的史实，以及白银普遍流通给中国带来的变化。\\n2. 运用中外历史地图，知道欧洲商船从美洲到达东南亚和中国，以及中国商船到达东南亚和日本的航行路线；结合其他文献和考古资料，知道中国商船的规模及主要货物。\\n3. 对教师提供的相关史料进行分析，在此基础上，可以选择教师讲授、学生主题报告会、图片展览等不同形式，对这一时期的倭寇问题、东南沿海地区的社会变化或张居正改革等问题进行探究。\", \"module\": \"中外历史纲要\"}", CJ_activityobjective: "1. 深入认识16世纪中国航海活动的主要内容及世界背景。\n2. 利用现代信息技术手段，搜集并综合利用各类文献、水下考古等历史资料，了解这一时期中国和欧洲国家航海活动的性质和作用。\n3. 重新认识这一时期发生的历史事件，深刻理解中外海上贸易给当时中国社会带来的巨大变化，以及对世界的影响。", CJ_activityprocess: "1. 从明朝小说（如《喻世明言》《警世通言》《醒世恒言》）中寻找白银在中国普遍流通的内容，再现使用白银进行买卖的情境；通过中外文献、考古资料等，了解白银大量来自美洲并被用以购买中国的瓷器、丝绸、茶叶等商品的史实，以及白银普遍流通给中国带来的变化。\n2. 运用中外历史地图，知道欧洲商船从美洲到达东南亚和中国，以及中国商船到达东南亚和日本的航行路线；结合其他文献和考古资料，知道中国商船的规模及主要货物。\n3. 对教师提供的相关史料进行分析，在此基础上，可以选择教师讲授、学生主题报告会、图片展览等不同形式，对这一时期的倭寇问题、东南沿海地区的社会变化或张居正改革等问题进行探究。", CJ_module: "中外历史纲要"};

MERGE (n:teachingactivitie {identifier: "urn:jy:history:SB0307:OB06:teachingactivitie:2:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:teachingactivitie:2:OB06", title: "“老兵”的故事（专题1.10、1.11、1.12）", description: "本活动是使学生通过对历史的经历者进行个案研究，将历史的宏大叙事与个人亲身经历联系起来，理解在历史大背景下普通人物的所思所想和所作所为，并从普通士兵的身上感悟革命先辈的精神。本活动也可将新中国成立后的“老兵”作为研究对象，了解他们在保卫祖国和建设祖国活动中的经历及贡献。通过这一活动，使学生进一步感悟“不忘初心、牢记使命”的重要意义。在活动过程中，通过搜集、整理与研究对象相关的材料，并在理解的基础上运用材料对具体人物的事迹进行描述，提高运用材料进行历史论证的能力。", type: "teachingactivitie", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"activityobjective\": \"1. 寻找有保家卫国经历的“老兵”，了解他们的事迹，并尝试从历史亲历者的角度看历史。\\n2. 通过查找材料、走访“老兵”或其后人等方式，对历史有具体、深入的理解，提高搜集和运用历史材料解释及书写历史的能力。\\n3. 学习革命先辈为国家独立、为中华民族复兴而奋斗的精神。\", \"activityprocess\": \"1. 以个人活动为主，通过文献查找、书籍阅读、人物探访等方式，了解和研究一名“老兵”的事迹。\\n2. 整理所研究对象的相关材料，写一篇《“老兵”的故事》，叙述其事迹，说说自己的感受和认识。\\n3. 将学生所写的文章出一期墙报或汇编成册，有条件的地方可利用校园网站进行交流。\", \"module\": \"中外历史纲要\"}", CJ_activityobjective: "1. 寻找有保家卫国经历的“老兵”，了解他们的事迹，并尝试从历史亲历者的角度看历史。\n2. 通过查找材料、走访“老兵”或其后人等方式，对历史有具体、深入的理解，提高搜集和运用历史材料解释及书写历史的能力。\n3. 学习革命先辈为国家独立、为中华民族复兴而奋斗的精神。", CJ_activityprocess: "1. 以个人活动为主，通过文献查找、书籍阅读、人物探访等方式，了解和研究一名“老兵”的事迹。\n2. 整理所研究对象的相关材料，写一篇《“老兵”的故事》，叙述其事迹，说说自己的感受和认识。\n3. 将学生所写的文章出一期墙报或汇编成册，有条件的地方可利用校园网站进行交流。", CJ_module: "中外历史纲要"};

MERGE (n:teachingactivitie {identifier: "urn:jy:history:SB0307:OB06:teachingactivitie:3:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:teachingactivitie:3:OB06", title: "20世纪80年代以来社区居民生活变迁（专题1.14、1.15）", description: "本活动使学生在历史课堂学习的基础上，走进社区，走进家庭，对身边的历史变化进行多方面了解，切身感受改革开放使人民生活水平不断提高，增强以中国式现代化全面推进中华民族伟大复兴的信念。在活动过程中，尝试运用社会调查的方式，在搜集社会信息、与他人交流等活动中，提高社会实践的能力。", type: "teachingactivitie", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"activityobjective\": \"1. 通过考察，接触社会实际，了解改革开放尤其是中国特色社会主义进入新时代以来人民生活发生巨大变化、改革发展成果更多惠及全体人民的史实，坚定把我国建设成为富强民主文明和谐美丽的社会主义现代化强国的信念。\\n2. 尝试运用社会调查的方法，对历史与现实的社会问题进行研究，通过调查问卷的拟订、实际调查活动的操作、调查数据的整理与分析、调查报告的撰写等，提高运用这一方法的技能。\\n3. 通过社会调查，增加接触社会机会，提高与他人沟通的能力；通过小组活动，提高合作与交流的能力。\", \"activityprocess\": \"1. 教师介绍活动主题及其内容范围、社会调查的方式方法、活动成果及其评价要求等，对学生开展社会调查进行方法上的指导。\\n2. 学生可自愿组成调查小组，围绕家庭收入、衣食住行、医疗卫生、文化教育、通信手段等多方面的调查主题，确定具体目标，制订调查计划，选定调查对象，编写调查问卷或访谈提纲。\\n3. 利用课余时间，开展社会调查活动，并围绕选定的调查主题搜集相关资料。\\n4. 对社会调查的数据、访谈记录以及相关资料进行考辨、整理和分析；在小组共同讨论的基础上，形成本组关于居民生活变迁的调查报告，并制作调查研究结果汇报的演示文稿。\\n5. 组织调研情况汇报交流活动，各组汇报调研情况，展示调研成果，师生共同对各组的调查研究活动进行评价。\", \"module\": \"中外历史纲要\"}", CJ_activityobjective: "1. 通过考察，接触社会实际，了解改革开放尤其是中国特色社会主义进入新时代以来人民生活发生巨大变化、改革发展成果更多惠及全体人民的史实，坚定把我国建设成为富强民主文明和谐美丽的社会主义现代化强国的信念。\n2. 尝试运用社会调查的方法，对历史与现实的社会问题进行研究，通过调查问卷的拟订、实际调查活动的操作、调查数据的整理与分析、调查报告的撰写等，提高运用这一方法的技能。\n3. 通过社会调查，增加接触社会机会，提高与他人沟通的能力；通过小组活动，提高合作与交流的能力。", CJ_activityprocess: "1. 教师介绍活动主题及其内容范围、社会调查的方式方法、活动成果及其评价要求等，对学生开展社会调查进行方法上的指导。\n2. 学生可自愿组成调查小组，围绕家庭收入、衣食住行、医疗卫生、文化教育、通信手段等多方面的调查主题，确定具体目标，制订调查计划，选定调查对象，编写调查问卷或访谈提纲。\n3. 利用课余时间，开展社会调查活动，并围绕选定的调查主题搜集相关资料。\n4. 对社会调查的数据、访谈记录以及相关资料进行考辨、整理和分析；在小组共同讨论的基础上，形成本组关于居民生活变迁的调查报告，并制作调查研究结果汇报的演示文稿。\n5. 组织调研情况汇报交流活动，各组汇报调研情况，展示调研成果，师生共同对各组的调查研究活动进行评价。", CJ_module: "中外历史纲要"};

MERGE (n:teachingactivitie {identifier: "urn:jy:history:SB0307:OB06:teachingactivitie:4:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:teachingactivitie:4:OB06", title: "探寻资本主义制度确立的思想文化渊源（专题1.19）", description: "本活动的内容所涉史事多、时间跨度大、空间范围广。活动设计意在引导学生通过史料研读、合作交流，突破难点，发展学生的历史学科核心素养。活动设计侧重于培养学生提取史料关键信息、建构时空关联、探寻因果关系等方面的能力，提高学生运用唯物史观的基本观点和方法解释历史的能力。", type: "teachingactivitie", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"activityobjective\": \"1. 能够按照时间顺序和空间要素，建构文艺复兴、宗教改革、启蒙运动之间的相互关联。\\n2. 依据史料认识西方人文主义是欧洲资本主义制度确立的思想渊源。\\n3. 理解西方人文主义的发展与资本主义制度确立之间的因果关系，对此作出历史唯物主义的解释。学会把握社会发展的历史脉络。\", \"activityprocess\": \"1. 学生分组研读有关文艺复兴、宗教改革、启蒙运动的资料，围绕“新兴资产阶级的诉求”筛选出史料信息。\\n2. 通过编制图表、撰写小论文、制作演示文稿等活动，呈现文艺复兴、宗教改革、启蒙运动与资本主义制度确立的联系。\\n3. 各组展示活动成果，师生共同完成对学习情况的评价。\", \"module\": \"中外历史纲要\"}", CJ_activityobjective: "1. 能够按照时间顺序和空间要素，建构文艺复兴、宗教改革、启蒙运动之间的相互关联。\n2. 依据史料认识西方人文主义是欧洲资本主义制度确立的思想渊源。\n3. 理解西方人文主义的发展与资本主义制度确立之间的因果关系，对此作出历史唯物主义的解释。学会把握社会发展的历史脉络。", CJ_activityprocess: "1. 学生分组研读有关文艺复兴、宗教改革、启蒙运动的资料，围绕“新兴资产阶级的诉求”筛选出史料信息。\n2. 通过编制图表、撰写小论文、制作演示文稿等活动，呈现文艺复兴、宗教改革、启蒙运动与资本主义制度确立的联系。\n3. 各组展示活动成果，师生共同完成对学习情况的评价。", CJ_module: "中外历史纲要"};

MERGE (n:teachingactivitie {identifier: "urn:jy:history:SB0307:OB06:teachingactivitie:5:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:teachingactivitie:5:OB06", title: "探讨中国古代历史上中央与地方的关系（专题1.1）", description: "本活动以小组合作的方式进行专题探究，对中国古代历史上中央与地方关系的演变进行梳理，从而加深对这一问题的认识，总结历史的经验和教训。通过这一活动，学生可以进一步认识中央与地方的关系是国家政治制度和行政管理中的一个重要问题，与历代的政治、经济、文化等方面的演变有着密切关联。学生在活动过程中，通过分工与合作，以及对研究成果的不断完善，提高理解历史、解释历史及合作、交流的能力。", type: "teachingactivitie", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"activityobjective\": \"1. 通过探究中国古代历史上中央与地方关系的发展演变，分析并理解这一关系的特征。\\n2. 运用所学的历史知识，以典型的史事作为例证，说明中央王朝对地方治理的历史经验和教训，学会从历史中汲取智慧。\\n3. 通过了解历史上中央对地方的行政管理，加深对中国国情的认识。\", \"activityprocess\": \"1. 学生分为若干小组，确定各组的研究主题（如按历史时期分组，分别探讨各时期中央与地方之间各方面的情况；或按地方行政层级、财政税收、军队编制与部署等专题分组），分别梳理中国古代历史上中央与地方的关系。\\n2. 各组制订具体研究计划，明确分工；分别搜集和研读有关材料，如阅读与研究主题有关的论著，利用现有的学术研究成果等。\\n3. 各组对所搜集的材料进行整理，通过组内的讨论交流，在形成共识的基础上，撰写本组的研究报告。\\n4. 组织全班的报告会，各组代表介绍本组的研究成果，并解答其他组同学的质疑。\\n5. 各组在报告会的基础上，对本组的研究报告作进一步的修改和补充，使之更为完善。\\n6. 将各组的研究报告汇总，编成文集，作为本模块学习的阶段性成果。\", \"module\": \"国家制度与社会治理\"}", CJ_activityobjective: "1. 通过探究中国古代历史上中央与地方关系的发展演变，分析并理解这一关系的特征。\n2. 运用所学的历史知识，以典型的史事作为例证，说明中央王朝对地方治理的历史经验和教训，学会从历史中汲取智慧。\n3. 通过了解历史上中央对地方的行政管理，加深对中国国情的认识。", CJ_activityprocess: "1. 学生分为若干小组，确定各组的研究主题（如按历史时期分组，分别探讨各时期中央与地方之间各方面的情况；或按地方行政层级、财政税收、军队编制与部署等专题分组），分别梳理中国古代历史上中央与地方的关系。\n2. 各组制订具体研究计划，明确分工；分别搜集和研读有关材料，如阅读与研究主题有关的论著，利用现有的学术研究成果等。\n3. 各组对所搜集的材料进行整理，通过组内的讨论交流，在形成共识的基础上，撰写本组的研究报告。\n4. 组织全班的报告会，各组代表介绍本组的研究成果，并解答其他组同学的质疑。\n5. 各组在报告会的基础上，对本组的研究报告作进一步的修改和补充，使之更为完善。\n6. 将各组的研究报告汇总，编成文集，作为本模块学习的阶段性成果。", CJ_module: "国家制度与社会治理"};

MERGE (n:teachingactivitie {identifier: "urn:jy:history:SB0307:OB06:teachingactivitie:6:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:teachingactivitie:6:OB06", title: "考察中国历史上的外来农作物（专题2.1）", description: "本活动的设计旨在通过对某一外来农作物传入中国情况的探讨，培养学生自主选择研究对象并进行史料实证的能力。传入中国的外来农作物很多，学生选择何种农作物作为研究对象，既要根据自己的兴趣，更要根据所掌握的史料情况而定。对于一些外来农作物传入的时间及对传入地的影响，学界有不同的认识。学生应对自己所搜集的资料进行辨析，并能运用史料作为证据来论证自己的观点。", type: "teachingactivitie", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"activityobjective\": \"1. 考察中国外来农作物的来源，了解它们是在何时、通过何种渠道传入中国的，以及这些物种引入中国后的情况。\\n2. 以考察的外来农作物为例，认识外来物种的传入对中国的影响\\n(如粮食生产、饮食习惯、生态环境等), 进而探讨物种交流对人类社会生活的影响。\", \"activityprocess\": \"1. 教师可先概括介绍人类历史上物种交流不断扩大的情况。\\n2. 学生根据自己的兴趣，选择某种外来农作物（如胡萝卜、马铃薯、甘薯、玉米、西红柿、西瓜、南瓜、辣椒等）作为研究对象，进行材料搜集和整理，考察其来源及引入中国的情况。\\n3. 在文献研究的基础上，梳理外来农作物传入中国后对粮食生产、民众生活、生态环境等方面的影响，并在此基础上探讨物种交流与社会生活的关系。\\n4. 运用现代信息技术，在班上展示自己的研究成果，进行交流；将学生的成果汇集整理，出一期专题板报。\", \"module\": \"经济与社会生活\"}", CJ_activityobjective: "1. 考察中国外来农作物的来源，了解它们是在何时、通过何种渠道传入中国的，以及这些物种引入中国后的情况。\n2. 以考察的外来农作物为例，认识外来物种的传入对中国的影响\n(如粮食生产、饮食习惯、生态环境等), 进而探讨物种交流对人类社会生活的影响。", CJ_activityprocess: "1. 教师可先概括介绍人类历史上物种交流不断扩大的情况。\n2. 学生根据自己的兴趣，选择某种外来农作物（如胡萝卜、马铃薯、甘薯、玉米、西红柿、西瓜、南瓜、辣椒等）作为研究对象，进行材料搜集和整理，考察其来源及引入中国的情况。\n3. 在文献研究的基础上，梳理外来农作物传入中国后对粮食生产、民众生活、生态环境等方面的影响，并在此基础上探讨物种交流与社会生活的关系。\n4. 运用现代信息技术，在班上展示自己的研究成果，进行交流；将学生的成果汇集整理，出一期专题板报。", CJ_module: "经济与社会生活"};

MERGE (n:teachingactivitie {identifier: "urn:jy:history:SB0307:OB06:teachingactivitie:7:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:teachingactivitie:7:OB06", title: "严复、商务印书馆与中国近代文化的变革（专题3.6）", description: "本活动的设计旨在通过一个人物和一个机构，进一步体会“开眼看世界”对于中国近代社会变革和转型的重要性。学生主题报告的问题要以人的经历为中心，即那个时候的中国优秀知识分子是怎么想、怎么做的。本活动把学习海军的留学生严复和张元济创办的商务印书馆联系起来，旨在认识个人和机构在中国近代社会变革过程中的不同作用，重点在于加深对历史人物的动机、行为及有关机构所起历史作用的理解。", type: "teachingactivitie", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"activityobjective\": \"通过了解严复和商务印书馆对西学的译介，认识近代以来留学生以及出版机构在传播西方近代文化、启迪民智上的重要作用。\", \"activityprocess\": \"1. 学生分组搜集资料，了解严复的生平与思想，特别是他对西方社会科学思想的译介；了解商务印书馆的创设，该馆对包括严复译著在内的多种翻译作品的出版，以及这些作品出版后在社会上引起的巨大反响。\\n2. 在分组讨论的基础上，各组推选代表，围绕下列问题进行报告：严复为什么从一个学习海军的留学生变为一个积极译介近代西方学术的思想家？《天演论》等译著中的社会进化论思想对中国人的精神世界产生了哪些影响？商务印书馆这类出版机构在传播近代文化、启迪民智方面扮演了怎样的角色？\\n3. 在教师的引导下，学生将上述报告进行整合，深入认识甲午中日战争后知识界的思想变化，以墙报、网络等形式进行展示。教师可通过学生的参与程度、表现和对问题的理解进行综合评价。\", \"module\": \"文化交流与传播\"}", CJ_activityobjective: "通过了解严复和商务印书馆对西学的译介，认识近代以来留学生以及出版机构在传播西方近代文化、启迪民智上的重要作用。", CJ_activityprocess: "1. 学生分组搜集资料，了解严复的生平与思想，特别是他对西方社会科学思想的译介；了解商务印书馆的创设，该馆对包括严复译著在内的多种翻译作品的出版，以及这些作品出版后在社会上引起的巨大反响。\n2. 在分组讨论的基础上，各组推选代表，围绕下列问题进行报告：严复为什么从一个学习海军的留学生变为一个积极译介近代西方学术的思想家？《天演论》等译著中的社会进化论思想对中国人的精神世界产生了哪些影响？商务印书馆这类出版机构在传播近代文化、启迪民智方面扮演了怎样的角色？\n3. 在教师的引导下，学生将上述报告进行整合，深入认识甲午中日战争后知识界的思想变化，以墙报、网络等形式进行展示。教师可通过学生的参与程度、表现和对问题的理解进行综合评价。", CJ_module: "文化交流与传播"};

MERGE (n:teachingactivitie {identifier: "urn:jy:history:SB0307:OB06:teachingactivitie:8:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:teachingactivitie:8:OB06", title: "编制历史人物年表（专题1.4）", description: "本活动是让学生通过对某个历史人物的研究，在全面了解该人物事迹的基础上，按照时间顺序编制历史人物年表，梳理并展现历史人物的主要事迹。在活动过程中，学生不仅需要搜集、阅读相关材料，而且需要动脑、动笔，完成历史人物年表的制作，并对自己的制作给予说明。这一有深度学习特色的活动，可以提高学生的时空观念和史料实证的素养；同时，对历史人物进行全面、客观的评价，能够提高学生在唯物史观、历史解释及家国情怀等方面的素养。", type: "teachingactivitie", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"activityobjective\": \"1. 学会编制历史人物年表。\\n2. 运用年表说明历史人物与其所处时代的关系。\\n3. 运用唯物史观的基本观点和方法，对历史人物进行全面评价，加深对历史人物作用的认识，既积极评价个人在社会历史发展进程中的重要性，也认识到历史人物无法完全超越历史的局限性。\", \"activityprocess\": \"1. 学生根据个人兴趣，选定一位历史人物作为研究对象。\\n2. 搜集所选历史人物的相关材料，在阅读的基础上对所选历史人物的生平事迹进行梳理，尝试对相关史事进行考证。\\n3. 编制历史人物年表。在编制时，既要注意从个人成长经历的角度进行梳理，凸显该历史人物的主要事迹，也要注意其所处时代发生的\\n大事，按时序排列。\\n4. 在班上展示自己制作的历史人物年表，并通过对年表的解说，向同学介绍所选历史人物的生平事迹及其所处时代，对该人物进行评价。\\n5. 将编制的历史人物年表分类编辑，汇集成册。\", \"module\": \"史学入门\"}", CJ_activityobjective: "1. 学会编制历史人物年表。\n2. 运用年表说明历史人物与其所处时代的关系。\n3. 运用唯物史观的基本观点和方法，对历史人物进行全面评价，加深对历史人物作用的认识，既积极评价个人在社会历史发展进程中的重要性，也认识到历史人物无法完全超越历史的局限性。", CJ_activityprocess: "1. 学生根据个人兴趣，选定一位历史人物作为研究对象。\n2. 搜集所选历史人物的相关材料，在阅读的基础上对所选历史人物的生平事迹进行梳理，尝试对相关史事进行考证。\n3. 编制历史人物年表。在编制时，既要注意从个人成长经历的角度进行梳理，凸显该历史人物的主要事迹，也要注意其所处时代发生的\n大事，按时序排列。\n4. 在班上展示自己制作的历史人物年表，并通过对年表的解说，向同学介绍所选历史人物的生平事迹及其所处时代，对该人物进行评价。\n5. 将编制的历史人物年表分类编辑，汇集成册。", CJ_module: "史学入门"};

MERGE (n:teachingactivitie {identifier: "urn:jy:history:SB0307:OB06:teachingactivitie:9:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:teachingactivitie:9:OB06", title: "《资治通鉴》为何以“三家分晋”为其开篇（专题2.2）", description: "本活动是按照典型的阅读和理解史料的程序设计的，即先读懂史\n料，然后了解史料作者，进而对史料所描述的内容进行分析，最后准确理解史料的意义。这既体现了对史料实证素养的培育，也包含了对理解和解释历史能力的训练。教师引导学生将司马光所处的时代与“三家分晋”的时代相联系，反映了建立不同时代之间历史关联的能力，以及对历史学家的政治立场进行探索的能力。", type: "teachingactivitie", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"activityobjective\": \"1. 知道史书记载带有史书撰写者的主观倾向。\\n2. 了解史书作者及其所处时代，全面认识史书的史料价值。\", \"activityprocess\": \"1. 教师给出《资治通鉴》卷一中的相关记述（“威烈王二十三年 初命晋大夫魏斯、赵籍、韩虔为诸侯”，及“臣光曰”后面的段落），引导学生正确理解其字面含义。\\n2. 了解有关“三家分晋”的史实及历史意义，提出问题：《资治通鉴》为何以“三家分晋”为其开篇？\\n3. 通过理解“臣光曰”那段材料，知道司马光对“三家分晋”的态度以及他对该事件发生原因的看法。\\n4. 回顾以前所学宋初加强中央集权的举措，了解司马光强调名分、强调尊君抑臣、强调坚持传统秩序重要性的政治立场，进而理解《资治通鉴》以“三家分晋”为其开篇的真正含义。\\n5. 以课堂讨论或课后作业的形式，了解史书作者的意图，全面、准确理解史书、史料的价值，认识《资治通鉴》的重要性。\", \"module\": \"史料研读\"}", CJ_activityobjective: "1. 知道史书记载带有史书撰写者的主观倾向。\n2. 了解史书作者及其所处时代，全面认识史书的史料价值。", CJ_activityprocess: "1. 教师给出《资治通鉴》卷一中的相关记述（“威烈王二十三年 初命晋大夫魏斯、赵籍、韩虔为诸侯”，及“臣光曰”后面的段落），引导学生正确理解其字面含义。\n2. 了解有关“三家分晋”的史实及历史意义，提出问题：《资治通鉴》为何以“三家分晋”为其开篇？\n3. 通过理解“臣光曰”那段材料，知道司马光对“三家分晋”的态度以及他对该事件发生原因的看法。\n4. 回顾以前所学宋初加强中央集权的举措，了解司马光强调名分、强调尊君抑臣、强调坚持传统秩序重要性的政治立场，进而理解《资治通鉴》以“三家分晋”为其开篇的真正含义。\n5. 以课堂讨论或课后作业的形式，了解史书作者的意图，全面、准确理解史书、史料的价值，认识《资治通鉴》的重要性。", CJ_module: "史料研读"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:1:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:1:OB06", title: "1.1 中华文明起源与国家的产生", description: "通过了解石器时代中国境内有代表性的文化遗存，认识它们与中华文明起源以及私有制、阶级和早期国家产生的关系；通过甲骨文、青铜铭文及其他文献记载，了解夏商西周奴隶制王朝的特征。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"中外历史纲要\"}", CJ_module: "中外历史纲要"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:2:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:2:OB06", title: "1.2 春秋战国时期的政治、经济及思想变动", description: "通过了解春秋战国时期的政治变动和经济发展，理解战国时期变法运动的必然性；了解老子、孔子学说；通过孟子、荀子、庄子等了解“百家争鸣”的局面及其意义。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"中外历史纲要\"}", CJ_module: "中外历史纲要"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:3:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:3:OB06", title: "1.3 秦汉大一统封建国家的建立与巩固", description: "通过了解秦朝的统一业绩和汉朝削藩、开疆拓土、尊崇儒术等举措，认识统一多民族封建国家的建立及巩固在中国历史上的意义；通过了解秦汉时期的社会矛盾和农民起义，认识秦朝崩溃和两汉衰亡的原因。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"中外历史纲要\"}", CJ_module: "中外历史纲要"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:4:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:4:OB06", title: "1.4 三国两晋南北朝的民族交融与隋唐大一统的发展", description: "通过了解三国两晋南北朝政权更迭的历史脉络，以及隋唐时期封建社会的高度繁荣，认识三国两晋南北朝至隋唐时期的制度变化与创新、民族交融、区域开发和思想文化领域的新成就。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"中外历史纲要\"}", CJ_module: "中外历史纲要"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:5:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:5:OB06", title: "1.5 辽宋夏金多民族政权并立与元朝的统一", description: "通过了解两宋的政治和军事，认识这一时期在政治、经济、文化与社会等方面的新变化；通过了解辽夏金元诸政权的建立、发展和相关制度建设，认识少数民族政权在统一多民族封建国家发展中的重要作用。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"中外历史纲要\"}", CJ_module: "中外历史纲要"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:6:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:6:OB06", title: "1.6 明至清中叶中国版图的奠定、封建专制的发展与社会变动", description: "通过了解明清时期统一全国和经略边疆的相关举措，知道南海诸岛、台湾及其包括钓鱼岛在内的附属岛屿是中国版图的一部分，认识这一时期统一多民族国家版图奠定的重要意义；了解明清时期社会经济、思想文化的重要变化；通过了解明清时期封建专制的发展、世界的变化对中国的影响，认识中国社会面临的危机。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"中外历史纲要\"}", CJ_module: "中外历史纲要"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:7:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:7:OB06", title: "1.7 晚清时期的内忧外患与救亡图存", description: "认识列强侵华对中国社会的影响，概述晚清时期中国人民反抗外来侵略的斗争事迹，理解其性质和意义；认识社会各阶级为挽救危局所作的努力及存在的局限性。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"中外历史纲要\"}", CJ_module: "中外历史纲要"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:8:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:8:OB06", title: "1.8 辛亥革命与中华民国的建立", description: "了解孙中山三民主义的基本内容，认识辛亥革命与中华民国建立的意义及局限性；了解北洋军阀的统治及特点；概述新文化运动的主要内容，探讨其对近代中国思想解放的影响。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"中外历史纲要\"}", CJ_module: "中外历史纲要"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:9:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:9:OB06", title: "1.9 中国共产党成立与新民主主义革命兴起", description: "认识五四爱国运动的历史意义，认识马克思主义在中国的传播与中国共产党成立对中国革命和世界发展趋势的深远影响，理解伟大建党精神；认识国共合作开展国民革命的历史作用；了解南京国民政府的成立及其性质；认识中国共产党开辟革命新道路的意义；认识红军长征胜利的意义，感悟伟大长征精神，认识遵义会议的历史地位和意义。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"中外历史纲要\"}", CJ_module: "中外历史纲要"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:10:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:10:OB06", title: "1.10 中华民族的抗日战争", description: "了解日本军国主义的侵华罪行；通过了解正面战场和敌后战场的抗战，感悟中国人民伟大的抗战精神，认识中国共产党是全民族抗战的中流砥柱；认识中国战场是世界反法西斯战争的东方主战场，理解十四年抗战胜利在中华民族伟大复兴进程中的历史意义。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"中外历史纲要\"}", CJ_module: "中外历史纲要"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:11:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:11:OB06", title: "1.11 人民解放战争", description: "通过了解全面内战的爆发及人民解放战争的进程，分析国民党反动统治覆灭的原因，探讨中国共产党领导人民取得新民主主义革命胜利的原因和意义。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"中外历史纲要\"}", CJ_module: "中外历史纲要"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:12:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:12:OB06", title: "1.12 中华人民共和国的成立及向社会主义过渡", description: "认识中华人民共和国成立对中国和世界历史发展的伟大意义；概述新中国巩固人民政权的主要举措；认识新中国为民主政治建设和向社会主义过渡所作出的努力，认识社会主义制度建立的意义。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"中外历史纲要\"}", CJ_module: "中外历史纲要"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:13:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:13:OB06", title: "1.13 社会主义建设道路的探索", description: "了解20世纪50—70年代中国探索社会主义建设道路的曲折发展和伟大成就，认识“文化大革命”的错误及教训；理解政治、经济、科技、国防、外交等领域所取得的成就在新中国历史上所具有的开创性、奠基性意义；了解和感悟这一时期中国人民自力更生、发奋图强的精神风貌。\n了解毛泽东对中国革命和社会主义建设的贡献，认识毛泽东思想对近现代中国的深远影响。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"中外历史纲要\"}", CJ_module: "中外历史纲要"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:14:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:14:OB06", title: "1.14 改革开放与中国特色社会主义的开创与发展", description: "认识真理标准问题大讨论和中共十一届三中全会的历史意义；认识实现从高度集中的计划经济体制到充满活力的社会主义市场经济体制、从封闭半封闭到全方位开放的历史性转变的意义；认识“一国两制”对实现祖国完全统一的重大意义；了解改革开放后取得的成就；认识邓小平理论、“三个代表”重要思想、科学发展观对社会主义现代化建设的重要指导意义。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"中外历史纲要\"}", CJ_module: "中外历史纲要"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:15:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:15:OB06", title: "1.15 中国特色社会主义进入新时代", description: "知道中共十八大后中国特色社会主义进入新时代；认识习近平新时代中国特色社会主义思想是马克思主义中国化时代化新的飞跃；通过了解新时代中国在经济建设、政治建设、文化建设、社会建设、生态文明建设等领域取得的成就，以及综合国力和国际影响力不断提高的史事，特别是取得脱贫攻坚的伟大胜利、全面建成小康社会的史事，认识新时代中国特色社会主义建设对中国社会发展的意义及对世界的贡献，认识中国共产党的百年奋斗重大成就和历史经验；认识进一步全面深化改革，推进中国式现代化，创造人类文明新形态，全面推进强国建设、民族复兴伟业的重要意义。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"中外历史纲要\"}", CJ_module: "中外历史纲要"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:16:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:16:OB06", title: "1.16 古代文明的产生与发展", description: "知道早期人类文明的产生；了解各文明古国发展的不同特点，并分析、认识这些特点形成的不同时空条件；认识古代各大帝国的区域性影响和不同文明之间的早期联系。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"中外历史纲要\"}", CJ_module: "中外历史纲要"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:17:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:17:OB06", title: "1.17 中古世界的多元面貌", description: "通过了解中古时期欧亚地区的不同国家、民族、宗教和社会变化，以及世界其他地区的社会状况，认识这一时期世界各区域文明的多元面貌。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"中外历史纲要\"}", CJ_module: "中外历史纲要"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:18:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:18:OB06", title: "1.18 全球联系的建立", description: "通过了解新航路开辟所引发的全球性流动、人类认识世界的视野和能力的改变，以及对世界各区域文明的不同影响，理解新航路开辟是人类历史从分散走向整体过程中的重要节点。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"中外历史纲要\"}", CJ_module: "中外历史纲要"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:19:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:19:OB06", title: "1.19 西方人文主义的发展与资本主义制度的确立", description: "通过了解文艺复兴、宗教改革、启蒙运动与资产阶级革命的历史渊源，认识资产阶级革命的发生和资本主义制度的确立，是近代西方政治思想理念的初步实现。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"中外历史纲要\"}", CJ_module: "中外历史纲要"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:20:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:20:OB06", title: "1.20 改变世界面貌的工业革命", description: "通过了解工业革命的发生和发展，以及工业革命带来的社会生产力的极大发展和所引起的生产关系的深刻变化，理解工业革命对资本主义世界体系的形成及对人类社会生活的深远影响。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"中外历史纲要\"}", CJ_module: "中外历史纲要"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:21:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:21:OB06", title: "1.21 马克思主义的诞生", description: "通过了解马克思主义产生的时代背景以及马克思、恩格斯的理论探索与革命实践，了解《共产党宣言》的主要内容，理解马克思主义产生的世界意义。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"中外历史纲要\"}", CJ_module: "中外历史纲要"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:22:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:22:OB06", title: "1.22 世界殖民体系的形成与亚非拉民族独立运动", description: "通过了解西方列强对亚非拉的殖民扩张、世界殖民体系的建立以及亚非拉人民的抗争，理解世界殖民体系的建立及殖民地半殖民地民族独立运动对世界历史发展的影响。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"中外历史纲要\"}", CJ_module: "中外历史纲要"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:23:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:23:OB06", title: "1.23 世界大战、十月革命与国际秩序的演变", description: "通过了解两次世界大战，理解20世纪上半期国际秩序的变动；了解列宁领导的十月革命爆发的原因、过程，理解十月革命的世界历史意义；理解两次世界大战之间亚非拉民族民主运动对国际秩序的影响。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"中外历史纲要\"}", CJ_module: "中外历史纲要"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:24:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:24:OB06", title: "1.24 冷战与20世纪下半期世界的新变化", description: "通过了解第二次世界大战后资本主义、社会主义与第三世界国家的变化，认识其发展中的成就与问题；通过了解冷战时期的典型事件，认识冷战的基本特征，理解冷战的发生、发展与世界格局变化之间的相互影响。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"中外历史纲要\"}", CJ_module: "中外历史纲要"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:25:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:25:OB06", title: "1.25 当代世界的发展特点和主要趋势", description: "通过了解冷战结束后世界多极化、经济全球化、社会信息化、文化多样化的发展特点，以及出现的全球性问题，认识人类社会面临的机遇与挑战，理解和平、发展、合作、共赢的历史潮流不可阻挡；理解中国坚持维护世界和平、促进共同发展所作的努力，形成构建人类命运共同体意识。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"中外历史纲要\"}", CJ_module: "中外历史纲要"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:26:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:26:OB06", title: "1.1 政治体制", description: "了解中国古代政治体制在秦朝建立前后的巨大变化；通过宰相制度和地方行政层级管理的变化，认识自秦起中央集权政治体制的演变线索；了解古代至近代西方政治体制各主要类型的产生和演变过程，以及共和制在中国建立的曲折过程，理解中国政治道路发展的独特性。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"国家制度与社会治理\"}", CJ_module: "国家制度与社会治理"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:27:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:27:OB06", title: "1.2 官员的选拔与管理", description: "了解中国古代官员选拔方式的更迭过程和不同阶段的特征，知道中央集权政治体制下古代中国的官员考核和监察制度；了解中国科举制与西方近代文官制度渊源关系，知道西方近代文官制度的特点，以及对近现代中国公务员制度的影响。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"国家制度与社会治理\"}", CJ_module: "国家制度与社会治理"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:28:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:28:OB06", title: "1.3 法律与教化", description: "知道中国先秦时期成文法的产生过程，以及这一时期思想家对于德治、法治关系的讨论；知道自西汉起历代王朝法律、礼教并用的统治手段；了解近代西方法律制度的渊源和基本特征，知道宗教伦理在西方社会发展进程中的作用；了解当代中国的法制建设和精神文明建设成就。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"国家制度与社会治理\"}", CJ_module: "国家制度与社会治理"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:29:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:29:OB06", title: "1.4 民族关系与国家关系", description: "了解中国古代的民族政策和边疆管理制度，认识中国作为统一多民族国家的发展历程，以及中国古代处理对外关系的体制；了解近代西方民族国家的形成情况，以及国际法的发展；了解当代中国民族区域自治制度的历史意义，了解独立自主的和平外交政策的主要成就。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"国家制度与社会治理\"}", CJ_module: "国家制度与社会治理"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:30:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:30:OB06", title: "1.5 货币与税收", description: "了解中外历史上货币发行和使用情况，以及现代世界货币体系的形成；了解中国古代赋税制度的演变；了解关税、个人所得税制度的产生及其在中国的实行。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"国家制度与社会治理\"}", CJ_module: "国家制度与社会治理"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:31:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:31:OB06", title: "1.6 基层治理与社会保障", description: "了解中国古代以赋役征发为首要目的的户籍制度，以及有代表性的基层管理组织；知道中国古代王朝在社会救济和优抚方面采取的重要措施；知道西方主要国家基层治理的特点及由来；了解现代社会保障制度的产生及实行情况。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"国家制度与社会治理\"}", CJ_module: "国家制度与社会治理"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:32:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:32:OB06", title: "2.1 食物生产与社会生活", description: "知道人类由食物采集者向食物生产者演进的过程及意义；知道古代不同地区的食物生产及其对社会生活的影响；了解新航路开辟后食物物种交流及其历史影响；了解现代农业、渔业发展过程中，人类在食物生产、储备等方面的进步，认识消除饥饿和保障食品安全在人类历史上的重大意义。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"经济与社会生活\"}", CJ_module: "经济与社会生活"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:33:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:33:OB06", title: "2.2 生产工具与劳作方式", description: "了解劳动在社会生产中的作用，以及历史上劳动工具和主要劳作方式的变化；认识大机器生产、工厂制度、现代科学技术等对人类劳作方式及生活方式的影响；理解劳动人民对历史的推动作用，以及生产方式的变革对人类社会发展所具有的革命性意义。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"经济与社会生活\"}", CJ_module: "经济与社会生活"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:34:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:34:OB06", title: "2.3 商业贸易与日常生活", description: "了解商业贸易的起源和古代的商贸活动与贸易通道；知道货币、信贷、商业契约等在日常生活中的作用；认识世界市场的形成对商业贸易的意义；认识20世纪以来贸易、金融的变化对人类生活的影响。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"经济与社会生活\"}", CJ_module: "经济与社会生活"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:35:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:35:OB06", title: "2.4 村落、城镇与居住环境", description: "了解人类居住条件的变迁及各地民居的差异及其特征；了解古代的村落、集镇和城市形成的原因及影响；了解近代以来城市化进程中人们居住条件和生活环境的改善及问题。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"经济与社会生活\"}", CJ_module: "经济与社会生活"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:36:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:36:OB06", title: "2.5 交通与社会变迁", description: "了解古代的水陆交通建设及主要交通工具；认识新航路开辟和工业革命对促进交通进步的作用；认识20世纪交通运输的新变化对民众生活及社会变迁的意义。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"经济与社会生活\"}", CJ_module: "经济与社会生活"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:37:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:37:OB06", title: "2.6 医疗与公共卫生", description: "知道古代历史上疫病的流行与影响；了解中医药的主要成就和西医在中国的传播、发展过程；了解现代医疗卫生体系的建立、发展及其对社会生活的影响。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"经济与社会生活\"}", CJ_module: "经济与社会生活"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:38:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:38:OB06", title: "3.1 源远流长的中华文化", description: "了解中华优秀传统文化的内涵；从人类文明发展和世界文化交流的角度，认识中华优秀传统文化的特点和价值，认识中华文化的世界意义。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"文化交流与传播\"}", CJ_module: "文化交流与传播"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:39:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:39:OB06", title: "3.2 多样发展的世界文化", description: "通过了解世界各主要区域的文化，理解世界文化的多样性；认识世界各国、各地区、各民族对人类文化发展所作出的贡献。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"文化交流与传播\"}", CJ_module: "文化交流与传播"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:40:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:40:OB06", title: "3.3 人口迁徙与文化认同", description: "通过了解历史上跨洲、跨国家、跨地区不同规模的人口迁徙，以及移民所面临的机遇与挑战，认识在迁徙与融入当地社会过程中出现的文化认同。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"文化交流与传播\"}", CJ_module: "文化交流与传播"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:41:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:41:OB06", title: "3.4 商路、贸易与文化交流", description: "了解不同时代、不同类型商路的开辟；通过了解商品所体现的特色文化，理解贸易活动在文化交流中所扮演的重要角色。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"文化交流与传播\"}", CJ_module: "文化交流与传播"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:42:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:42:OB06", title: "3.5 战争与文化碰撞", description: "通过了解历史上的著名战争，理解战争对人类文化的破坏，以及造成的文化断裂；认识战争在客观上又为不同文化的碰撞提供了契机。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"文化交流与传播\"}", CJ_module: "文化交流与传播"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:43:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:43:OB06", title: "3.6 文化的传承与保护", description: "了解历史上学校教育、留学、书刊出版、翻译事业以及图书馆、博物馆在文化传承与传播中的作用；通过万里长城、故宫、京剧等，认识文化遗产保护对传承民族文化、维护文化多样性和创造性的重要意义。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"文化交流与传播\"}", CJ_module: "文化交流与传播"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:44:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:44:OB06", title: "3.7 信息革命与人类文化共享", description: "了解现代信息技术对文化传播方式、内容、规模、效果等方面的巨大影响，认识现代信息技术对人类文化共享起到了前所未有的作用，对人类文化的发展提出了新课题。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"文化交流与传播\"}", CJ_module: "文化交流与传播"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:45:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:45:OB06", title: "1.1 历史与历史学", description: "理解“历史”这一概念的内涵，认识到客观存在的历史与被记述的历史之间的联系与区别；理解历史学是研究人类历史发展进程及其规律的学科，是在一定历史观指导下对历史的叙述和阐释；认识历史学是人类文化的重要组成部分；理解历史学所具有的科学属性、社会功能及育人功能。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"史学入门\"}", CJ_module: "史学入门"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:46:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:46:OB06", title: "1.2 唯物史观与历史研究", description: "了解历史观对于史学研究和史学发展的重要性；了解唯物史观的基本观点及认识历史的基本原则；理解唯物史观是科学的历史观，对历史研究具有重要意义；尝试运用唯物史观的基本观点和方法对历史问题进行分析和解释。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"史学入门\"}", CJ_module: "史学入门"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:47:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:47:OB06", title: "1.3 史学的优秀传统", description: "知道中外史学发展的大致经过，了解史籍编纂的主要体例及其编纂特点；知道历史上著名史学家的治史情怀和治学态度，及其对史德、史才、史学、史识的推崇；知道近代以来新史学的出现及其发展；了解马克思主义史学在中国的传播与发展。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"史学入门\"}", CJ_module: "史学入门"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:48:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:48:OB06", title: "1.4 读史常识举要", description: "知道有关历法的知识，了解主要的历史纪年方法；知道中国人和外国人的姓与名的称谓方式，了解中国古代在称谓方面的一些用法；了解历史地图的种类、特点及作用，以及古今地名的变化情况，能够尝试制作有关的历史地图和历史年表。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"史学入门\"}", CJ_module: "史学入门"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:49:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:49:OB06", title: "1.5 历史探究的主要方法", description: "知道史料在历史研究中的重要作用，认识对史料的来源、性质及其价值进行鉴别和考证的重要性；了解鉴别史料的主要方法，认识研究历史要以有价值的、可信的史料作为历史论述的证据；了解探究历史的主要方法，并尝试运用这些方法对历史问题进行探讨。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"史学入门\"}", CJ_module: "史学入门"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:50:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:50:OB06", title: "1.6 历史的解释与评判", description: "知道历史著述中历史叙述与历史解释的联系与区别，认识对历史的理解是进行历史解释的关键；通过不同史学家对同一史事的论述，了解史学家对历史的论述会有不同的解释与评判，并分析造成不同解释与评判的主要因素。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"史学入门\"}", CJ_module: "史学入门"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:51:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:51:OB06", title: "1.7 综合探究：历史问题的研究与论文习作", description: "选定一个与历史有关的问题，自行拟订研究的计划和方法，在进行文献检索和综述的基础上，搜集、整理、辨析相关的历史材料，运用已学的历史知识和掌握的技能，对这一历史问题进行自主探究，并根据自己的研究成果写一篇历史小论文；所写的论文有一定的逻辑层次，体现论据与论点的内在联系，论文中的引文与注释符合规范。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"史学入门\"}", CJ_module: "史学入门"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:52:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:52:OB06", title: "2.1 史料及搜集、运用史料的原则与方法", description: "知道什么是史料、史料的类别与史料的特点；了解搜集和运用史料的基本原则与方法；知道综合运用史料研究历史的方法与价值。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"史料研读\"}", CJ_module: "史料研读"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:53:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:53:OB06", title: "2.2 文献史料研读", description: "依据主要的文献史料类别，选择有代表性的史料进行研读；认识文献史料的价值，知道它是史料中最重要的部分；了解搜集和运用文献史料研究历史的方法。所涉及的主要文献史料包括：史书；档案与文书；文集、笔记、书信与日记；地方史志；报刊；碑铭与简牍；族谱、契约、账簿等。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"史料研读\"}", CJ_module: "史料研读"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:54:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:54:OB06", title: "2.3 实物史料研读", description: "知道历史上遗留下来的许多实物是重要的史料，选择有代表性的实物史料进行研读；知道对实物史料的运用不仅需要历史学的方法，也需要借助考古学、科技史等不同学科的方法。所涉及的主要实物史料包括：器物；建筑物；遗址、遗迹。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"史料研读\"}", CJ_module: "史料研读"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:55:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:55:OB06", title: "2.4 口述史料研读", description: "知道当事人或亲历者的口述回忆是重要的史料，知道神话、传说、史诗等也是口述史料的组成部分；选择有代表性的口述史料进行研读；认识口述史料的价值与局限性；学会使用现代科技手段记录和整理口述史料。所涉及的主要口述史料包括：回忆录与其他口述史记录；神话、传说、史诗。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"史料研读\"}", CJ_module: "史料研读"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:56:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:56:OB06", title: "2.5 图像史料研读", description: "知道绘画、雕刻、照片、地图等图像是重要的史料，选择有代表性的图像史料进行研读；认识图像史料的价值，知道对图像史料的运用不仅需要历史学的方法，也需要借助艺术史等不同学科的方法。所涉及的主要图像史料包括绘画、雕刻、照片、地图。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"史料研读\"}", CJ_module: "史料研读"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:57:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:57:OB06", title: "2.6 现代音像史料研读", description: "知道现代科学技术带来了录音、录像等记录手段，了解录音、录像、纪实性影视作品等在记录100多年来历史方面的独特价值；尝试利用录音、录像等手段记录当今社会的不同方面，掌握整理、利用这类史料的基本方法。所涉及的主要音像史料包括能反映不同历史内容的录音、录像及纪实性影视作品。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"史料研读\"}", CJ_module: "史料研读"};

MERGE (n:topic {identifier: "urn:jy:history:SB0307:OB06:topic:58:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:topic:58:OB06", title: "2.7 数字资源的利用", description: "在有条件的学校，学会通过互联网利用数字资源，以更为方便地获取所需史料；知道数字资源的价值与特点；尝试围绕特定历史研究主题，通过数字资源寻找相关史料；主要数字资源包括电子书、电子期刊、多媒体资料等；初步了解数字资源与大型数据库的利用给历史研究带来的变化。", type: "topic", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"module\": \"史料研读\"}", CJ_module: "史料研读"};

MERGE (n:Course {identifier: "urn:jy:history:SB0307:OB06:Course:1:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:Course:1:OB06", title: "必修课程", description: "历史必修课程是全体高中学生必须修习的课程，设“中外历史纲要”模块；课程内容分为中国史、世界史两部分，每个部分在历史时序框架下由若干学习专题构成。通过中外历史上重要的事件、人物和现象，展现人类社会从古至今、从分散到整体、从低级到高级的发展历程，使学生进一步了解和认识人类历史演变的基本脉络，以及丰富多样的历史文化遗产。", subject: "SB0307", type: "Course", applicableLevel: "OB06", contentJson: "{}"};

MERGE (n:Course {identifier: "urn:jy:history:SB0307:OB06:Course:2:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:Course:2:OB06", title: "选择性必修课程", description: "历史选择性必修课程是学生根据个人兴趣、升学需求而选择修习的课程，设“国家制度与社会治理”“经济与社会生活”和“文化交流与传播”三个模块；各模块由若干学习专题构成，在各专题下的具体内容依照时序进行表述。呈现中外历史多方面的重要内容，引领学生从政治、经济与社会生活、文化等不同视角深入认识历史。", subject: "SB0307", type: "Course", applicableLevel: "OB06", contentJson: "{}"};

MERGE (n:Course {identifier: "urn:jy:history:SB0307:OB06:Course:3:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:Course:3:OB06", title: "选修课程", description: "历史选修课程是学生自主选择修习的课程，是在必修与选择性必修课程基础上设置的拓展、提高类课程。课程标准提供的“史学入门”和“史料研读”两个模块可作为选修课程的参考，学校可选用、改编或新编。这两个模块由若干学习专题构成，通过了解史学的基本理论、知识与技能，以及通过实际的探究活动，提升学生深入学习历史的能力。学校也可自主开发其他校本课程。", subject: "SB0307", type: "Course", applicableLevel: "OB06", contentJson: "{}"};

MERGE (n:module {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06", title: "中外历史纲要", description: "本课程以通史的叙事框架，展示中国历史和世界历史发展的基本过程。本课程共有25个专题，是高中历史学习的基本内容。\n\n马克思主义根据人类社会生产力与生产关系基本矛盾的不同性质，把人类历史发展分为原始社会、奴隶社会、封建社会、资本主义社会、社会主义和共产主义社会几种社会形态。它们构成了一个从低级到高级发展的序列。不是所有民族、国家的历史都完整地经历了这几个阶段，但是这个发展总趋势具有普遍性、规律性的意义。\n\n本课程以马克思主义为指导，通过对中外重大历史事件、历史人物和历史现象的叙述，展现人类发展进程中丰富的历史文化遗产，以及人类社会从古至今、从分散到整体、社会形态从低级到高级的发展历程。通过学习，学生应了解和掌握唯物史观的基本观点和方法，体会唯物史观的科学性，理解不同时空条件下历史的延续、变迁与发展，学习史料实证的基本方法，能够在此基础上对历史作出正确的解释；必须坚持正\n\n确的中华民族历史观，深化对中华民族多元一体发展进程的认识，铸牢中华民族共同体意识；认同社会主义核心价值观，认同社会主义先进文化、革命文化、中华优秀传统文化，了解世界历史发展的多样性，理解和尊重世界各国各地区的文化传统，拓宽国际视野，形成构建人类命运共同体意识。", type: "module", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"teachingTip\": \"1. 在本模块的教学过程中，教师要注重梳理中外历史发展的基本线索和主要阶段，引导学生运用唯物史观的基本立场、观点、方法；在历史时空框架下把握重要的历史事件、历史人物和历史现象，以及人类文明的重要成果，理解历史进程中的变化与延续、继承与发展、原因与结果，建构历史发展的各种联系，认识历史发展的总体趋势。\\n\\n2. 教师在进行本模块的教学设计时，要仔细分析每个学习专题的重点内容、核心概念和关键问题，选择和确定教学重点和难点，采取多种手段突出重点、突破难点，使学生通过对重点内容、核心概念、关键问题的理解，带动对整个学习专题的探讨和认识。\\n\\n3. 在教学过程中，教师要注意通过历史情境的设计，让学生了解\\n\\n当时人们所处的时代环境和所面临的社会问题。在此基础上，引领学生在对历史问题的探究过程中，认识史事的性质、特点、作用及影响等。\\n\\n4. 建议对课程内容进行整合，引导学生深度学习，促进学生带着问题意识和证据意识在新情境下对历史进行探索，拓展其历史认识的广度和深度。\", \"achievementRequirement\": \"学习本模块后，学生能够了解中国和世界上重要的历史事件、历史人物、历史现象等发生或存在的时间和地点、原因和结果（唯物史观、时空观念、历史解释）；能够知道历史遗迹、考古发现、从古代到现代的各种文献是了解历史发展的重要证据，并能够使用上述证据来佐证自己对历史问题的阐释（唯物史观、史料实证、历史解释）；能够初步对中国历史和世界历史的发展建立多方面联系，以此解释历史，并能够对同类的历史事物进行比较、概括和综合（唯物史观、历史解释）；能够掌握随着生产方式的变革所引起的世界历史从古至今、从分散到整体、从低级到高级的发展总趋势（唯物史观）；能够初步具备用历史眼光分析现实问题的能力（历史解释）；感悟人类文明的多元性、共容性和发展不平衡性，增强民族自信心，铸牢中华民族共同体意识；能够以开放的心态，认识到世界各地区、各民族共同推动了人类文明的进步，初步具有国际视野，形成构建人类命运共同体意识（唯物史观、时空观念、家国情怀）。\", \"course\": \"必修课程\"}", CJ_teachingTip: "1. 在本模块的教学过程中，教师要注重梳理中外历史发展的基本线索和主要阶段，引导学生运用唯物史观的基本立场、观点、方法；在历史时空框架下把握重要的历史事件、历史人物和历史现象，以及人类文明的重要成果，理解历史进程中的变化与延续、继承与发展、原因与结果，建构历史发展的各种联系，认识历史发展的总体趋势。\n\n2. 教师在进行本模块的教学设计时，要仔细分析每个学习专题的重点内容、核心概念和关键问题，选择和确定教学重点和难点，采取多种手段突出重点、突破难点，使学生通过对重点内容、核心概念、关键问题的理解，带动对整个学习专题的探讨和认识。\n\n3. 在教学过程中，教师要注意通过历史情境的设计，让学生了解\n\n当时人们所处的时代环境和所面临的社会问题。在此基础上，引领学生在对历史问题的探究过程中，认识史事的性质、特点、作用及影响等。\n\n4. 建议对课程内容进行整合，引导学生深度学习，促进学生带着问题意识和证据意识在新情境下对历史进行探索，拓展其历史认识的广度和深度。", CJ_achievementRequirement: "学习本模块后，学生能够了解中国和世界上重要的历史事件、历史人物、历史现象等发生或存在的时间和地点、原因和结果（唯物史观、时空观念、历史解释）；能够知道历史遗迹、考古发现、从古代到现代的各种文献是了解历史发展的重要证据，并能够使用上述证据来佐证自己对历史问题的阐释（唯物史观、史料实证、历史解释）；能够初步对中国历史和世界历史的发展建立多方面联系，以此解释历史，并能够对同类的历史事物进行比较、概括和综合（唯物史观、历史解释）；能够掌握随着生产方式的变革所引起的世界历史从古至今、从分散到整体、从低级到高级的发展总趋势（唯物史观）；能够初步具备用历史眼光分析现实问题的能力（历史解释）；感悟人类文明的多元性、共容性和发展不平衡性，增强民族自信心，铸牢中华民族共同体意识；能够以开放的心态，认识到世界各地区、各民族共同推动了人类文明的进步，初步具有国际视野，形成构建人类命运共同体意识（唯物史观、时空观念、家国情怀）。", CJ_course: "必修课程"};

MERGE (n:module {identifier: "urn:jy:history:SB0307:OB06:module:2:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:module:2:OB06", title: "国家制度与社会治理", description: "本课程通过国家制度和社会治理的相关内容，揭示人类政治生活的发展。本课程由6个专题组成，是在必修课程基础上的递进与拓展。\n\n人类社会进入文明时代的一个重要标志是国家的产生，国家统治依 赖一系列制度建设，包括建立组织和制定规则。以权力分配、机构设置 和运行为主的政治体制，规定了国家制度的基本框架。人事管理、法 律、外交、财政都是国家制度不可或缺的重要组成部分，社会治理是国家关注的重点。自古及今，东西方各国的制度建设和社会治理经历了漫长而曲折的发展历程，中国也发生过多次变法与改革，积累了丰富的经 验和深刻的教训，不能脱离特定社会政治条件和历史文化传统来抽象评 判。学习这些内容，加深学生运用唯物史观的阶级分析方法，对上层建 筑各领域的实质进行深入分析，认识国家治理体系和治理能力现代化的重要性。", type: "module", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"teachingTip\": \"1. 教师要注意引导学生运用历史唯物主义观点，分析历史上不同国家制度和社会治理的特点、作用及变化，探索其演进的历史脉络，理解人类政治生活发展的总体趋势。\\n\\n2. 本模块课程是从政治史角度对人类历史发展情况的考察，涉及国家制度和社会治理诸多方面。教师要注意讲清楚历史概念，帮助学生形成正确的历史理解，尤其是要对一些重要的政治术语进行历史化的解读，避免以今论古。\\n\\n3. 本模块以国家制度和社会治理为线索，选择人类历史上重要的制度建设成就作为认识的对象。教师要引导学生了解这些制度成就形成的历史背景，认识它们的特点，探索其演进的历史脉络。同时，通过具体史实，引导学生将制度与社会发展联系起来，了解制度在历史发展中的作用及局限性，避免以制度史代替政治史。\\n\\n4. 本模块的教学，应注重通过对中外历史上不同国家制度及治理措施的剖析，增强学生对当今中国制\\n\\n度建设及国家治理能力提升重要性的认识。\", \"achievementRequirement\": \"通过本模块的学习，学生能够基本认识中国古代国家制度和社会治理措施的主要发展线索，同时能够简单了解欧美国家在制度建设和社会治理方面的成就、局限及其历史渊源，并且初步掌握当代中国国家制度和社会治理措施的由来和概况（唯物史观、时空观念、史料实证）；通过学习，能够认识到制度会随着社会变迁而变化，任何一种制度都不是十全十美的；不同国家和地区的制度，应当在坚持自身优秀传统的基础上，从社会实际状况出发，互相取长补短，臻于完善（唯物史观、历史解释、家国情怀）。\", \"course\": \"选择性必修课程\"}", CJ_teachingTip: "1. 教师要注意引导学生运用历史唯物主义观点，分析历史上不同国家制度和社会治理的特点、作用及变化，探索其演进的历史脉络，理解人类政治生活发展的总体趋势。\n\n2. 本模块课程是从政治史角度对人类历史发展情况的考察，涉及国家制度和社会治理诸多方面。教师要注意讲清楚历史概念，帮助学生形成正确的历史理解，尤其是要对一些重要的政治术语进行历史化的解读，避免以今论古。\n\n3. 本模块以国家制度和社会治理为线索，选择人类历史上重要的制度建设成就作为认识的对象。教师要引导学生了解这些制度成就形成的历史背景，认识它们的特点，探索其演进的历史脉络。同时，通过具体史实，引导学生将制度与社会发展联系起来，了解制度在历史发展中的作用及局限性，避免以制度史代替政治史。\n\n4. 本模块的教学，应注重通过对中外历史上不同国家制度及治理措施的剖析，增强学生对当今中国制\n\n度建设及国家治理能力提升重要性的认识。", CJ_achievementRequirement: "通过本模块的学习，学生能够基本认识中国古代国家制度和社会治理措施的主要发展线索，同时能够简单了解欧美国家在制度建设和社会治理方面的成就、局限及其历史渊源，并且初步掌握当代中国国家制度和社会治理措施的由来和概况（唯物史观、时空观念、史料实证）；通过学习，能够认识到制度会随着社会变迁而变化，任何一种制度都不是十全十美的；不同国家和地区的制度，应当在坚持自身优秀传统的基础上，从社会实际状况出发，互相取长补短，臻于完善（唯物史观、历史解释、家国情怀）。", CJ_course: "选择性必修课程"};

MERGE (n:module {identifier: "urn:jy:history:SB0307:OB06:module:3:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:module:3:OB06", title: "经济与社会生活", description: "本课程从经济与社会生活的角度，揭示人类社会的发展，有助于学生充分认识生产方式的变革对人类社会发展所具有的革命性意义。本课程由6个专题组成，是在必修课程基础上的递进与拓展。\n\n在人类社会发展进程中，劳作与经济活动是人们赖以生存和发展的基础。了解自古以来中外不同人群的生产活动、经济活动和日常生活方式的变迁，将有利于学生认识经济与社会、经济与生活的互动关系，深化对人类社会发展历程的认识。", type: "module", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"teachingTip\": \"1. 教师在进行教学设计时，要明确本模块教学是从历史发展的多个角度对人类经济发展与社会生活进行考察，以一个特殊的领域作为考\\n\\n察的视角，引领学生深入了解经济与社会生活不断发展变化的历史轨迹。\\n\\n2. 教师在进行本模块教学时，要注意引导学生认识经济与社会生活是一个逐步发展、不断进步的过程。这一发展过程具有多样性和复杂性，充满着延续与变迁、偶然与必然、局部与整体的互动，让学生尝试从宏观和微观的不同角度认识历史问题。\\n\\n3. 本模块的教学内容，与地理条件、人们的社会活动与实际生活等有着密切联系，与学生的现实感受及生活经验紧密相连，具有鲜明的时代感与现实性。因此，在本模块的教学过程中，教师应该鼓励学生充分利用已有的知识与生活经验，开展自主探究与合作学习，形成对历史的理解与解释。\\n\\n4. 本模块的教学内容，突出体现了人类历史的多元特点与全球化趋势。一方面，各地区物质文明的发展并不是同步的和统一的，在不同国家和地区，由于地理条件、历史因素、社会环境等方面的差异，经济活动和社会生活各具特色；另一方面，经济全球化趋势的发展，也对世界各地的社会生活产生巨大影响。\", \"achievementRequirement\": \"通过本模块的学习，学生能够了解与人类生活息息相关的食物生产、劳作方式、居住环境、交通运输等的变迁历程，以及人类为改善生活而进行的经济活动、科技发明、医疗防疫等方面的努力（唯物史观、时空观念、史料实证）；能够进一步理解经济活动与社会、科技与生活等之间的关系，深化人与自然、人与社会等和谐发展的认识，牢固树立社会主义生态文明观，自觉养成热爱自然、热爱劳动、热爱生活、热爱祖国和珍爱生命的优良品质，为促进人与自然和谐共生、建设美丽中国\\n\\n而努力（唯物史观、历史解释、家国情怀）。\", \"course\": \"选择性必修课程\"}", CJ_teachingTip: "1. 教师在进行教学设计时，要明确本模块教学是从历史发展的多个角度对人类经济发展与社会生活进行考察，以一个特殊的领域作为考\n\n察的视角，引领学生深入了解经济与社会生活不断发展变化的历史轨迹。\n\n2. 教师在进行本模块教学时，要注意引导学生认识经济与社会生活是一个逐步发展、不断进步的过程。这一发展过程具有多样性和复杂性，充满着延续与变迁、偶然与必然、局部与整体的互动，让学生尝试从宏观和微观的不同角度认识历史问题。\n\n3. 本模块的教学内容，与地理条件、人们的社会活动与实际生活等有着密切联系，与学生的现实感受及生活经验紧密相连，具有鲜明的时代感与现实性。因此，在本模块的教学过程中，教师应该鼓励学生充分利用已有的知识与生活经验，开展自主探究与合作学习，形成对历史的理解与解释。\n\n4. 本模块的教学内容，突出体现了人类历史的多元特点与全球化趋势。一方面，各地区物质文明的发展并不是同步的和统一的，在不同国家和地区，由于地理条件、历史因素、社会环境等方面的差异，经济活动和社会生活各具特色；另一方面，经济全球化趋势的发展，也对世界各地的社会生活产生巨大影响。", CJ_achievementRequirement: "通过本模块的学习，学生能够了解与人类生活息息相关的食物生产、劳作方式、居住环境、交通运输等的变迁历程，以及人类为改善生活而进行的经济活动、科技发明、医疗防疫等方面的努力（唯物史观、时空观念、史料实证）；能够进一步理解经济活动与社会、科技与生活等之间的关系，深化人与自然、人与社会等和谐发展的认识，牢固树立社会主义生态文明观，自觉养成热爱自然、热爱劳动、热爱生活、热爱祖国和珍爱生命的优良品质，为促进人与自然和谐共生、建设美丽中国\n\n而努力（唯物史观、历史解释、家国情怀）。", CJ_course: "选择性必修课程"};

MERGE (n:module {identifier: "urn:jy:history:SB0307:OB06:module:4:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:module:4:OB06", title: "文化交流与传播", description: "本课程从人类历史上文化交流与传播的不同方式切入，展现不同文明、不同人群之间的联系与互动，理解文化交流与传播在文明进步中的重要作用。本课程由7个专题组成，是在必修课程基础上的递进与拓展。\n\n自从人类产生，便有了文化。不同地域上生存的人类相互有了接触，便有了文化的交流与传播。人们通过欣赏、学习、吸纳不同的文化，使自己的文化更加丰富和成熟。本课程着重通过文化交流与传播的主要方式、途径和载体，展现中外历史上重要文化产品和文化成就交流传播的过程，以及对不同文化发展变化所产生的重要影响。通过本课程的学习，有助于学生尊重世界文明多样性，以文明交流超越文明隔阂、文明互鉴超越文明冲突、文明共存超越文明优越。", type: "module", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"teachingTip\": \"1. 教师在进行本模块教学时，要引导学生认识人类正是通过多种渠道、从多个方面，使不同文化在交流中相互吸纳，使优秀的人类文明成果在传播中得以发展和扩大影响。\\n\\n2. 在本模块的教学中，教师要注意引导学生从世界文化交流与发展的角度，认识中华优秀传统文化的价值及历史特点，理解中华文明连续性、创新性、统一性、包容性、和平性等突出特性，使学生树立文化自信。\\n\\n3. 在教学过程中，教师要注意引导学生在具体的历史情境下探讨文化交流与传播的方式，在问题的引领下促进学生对优秀文化的特色及影响等进行分析。\\n\\n4. 教师要充分调动学生的学习积极性，促使学生主动学习和积极探究，通过多样的教学活动，激发学生结合已学的历史知识，在新情境下运用多种类型的材料，对历史上的文化交流与传承进行探究，形成对人类文化发展的正确认识。\", \"achievementRequirement\": \"通过本模块的学习，学生能够了解人类文化交流与传播的基本方\\n\\n式、途径、方法和手段（唯物史观、时空观念、史料实证）。通过学习，扩大国际视野，增强国际意识，拥有博大胸怀，树立爱国主义和关怀人类共同命运的观念；能够认识到世界各国、各地区、各民族都为创造人类文化作出了贡献，不同文化之间要相互尊重、平等相待，加强交流互鉴，促进共同发展（唯物史观、历史解释、家国情怀）。\", \"course\": \"选择性必修课程\"}", CJ_teachingTip: "1. 教师在进行本模块教学时，要引导学生认识人类正是通过多种渠道、从多个方面，使不同文化在交流中相互吸纳，使优秀的人类文明成果在传播中得以发展和扩大影响。\n\n2. 在本模块的教学中，教师要注意引导学生从世界文化交流与发展的角度，认识中华优秀传统文化的价值及历史特点，理解中华文明连续性、创新性、统一性、包容性、和平性等突出特性，使学生树立文化自信。\n\n3. 在教学过程中，教师要注意引导学生在具体的历史情境下探讨文化交流与传播的方式，在问题的引领下促进学生对优秀文化的特色及影响等进行分析。\n\n4. 教师要充分调动学生的学习积极性，促使学生主动学习和积极探究，通过多样的教学活动，激发学生结合已学的历史知识，在新情境下运用多种类型的材料，对历史上的文化交流与传承进行探究，形成对人类文化发展的正确认识。", CJ_achievementRequirement: "通过本模块的学习，学生能够了解人类文化交流与传播的基本方\n\n式、途径、方法和手段（唯物史观、时空观念、史料实证）。通过学习，扩大国际视野，增强国际意识，拥有博大胸怀，树立爱国主义和关怀人类共同命运的观念；能够认识到世界各国、各地区、各民族都为创造人类文化作出了贡献，不同文化之间要相互尊重、平等相待，加强交流互鉴，促进共同发展（唯物史观、历史解释、家国情怀）。", CJ_course: "选择性必修课程"};

MERGE (n:module {identifier: "urn:jy:history:SB0307:OB06:module:5:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:module:5:OB06", title: "史学入门", description: "本课程是对历史学基本知识的介绍。本课程由7个专题组成，是在必修课程和选择性必修课程基础上的进一步延伸。\n\n历史学研究的是人类社会发展的历程及其规律。探寻历史的真相，对历史进行实事求是的阐释，是历史学的科学价值所在。进行历史探究，不仅要对历史有着浓厚的兴趣和探索的精神，而且要具有关注人类历史命运的人文情怀，对历史持有严谨的科学态度和真诚的敬畏之心，还要具备必要的史学方面的常识。", type: "module", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"teachingTip\": \"1. 本模块的教学内容，教师要注意以学生所学习的历史基础知识为依托，引导学生对一些具体而典型的材料（如史料、史家论述等）进行分析与理解，使学生在问题情境中了解有关的史学知识，掌握并运用学习历史和认识历史的技能及方法。\\n\\n2. 教师在教学过程中，要以促进学生历史学科核心素养的发展为重心，开展以学生为主体的探究活动，引导学生通过阅读、理解、分析、评判等活动，在对问题的研究及解决过程中提高历史学科核心素养。\\n\\n3. 教师应鼓励学生充分发挥自己的主观能动性，促进学生进行拓展性的深入阅读，开展对问题的积极思考和广泛探讨，勇于表达自己的见解，积极进行观点交流。\", \"achievementRequirement\": \"通过本模块的学习，学生能够认识历史学的学科性质和功能，了解一些学习历史的基本常识；知道史料在历史探究中的重要性，了解史学家是如何运用史料进行历史论证的（唯物史观、时空观念、史料实证）；能够初步学会综合运用探究历史的基本原则与方法，在理解史事的基础上，全面、客观地评述历史问题，做到史论结合，清晰地表达自己的观点（唯物史观、史料实证、历史解释、家国情怀）；能够了解唯物史观的基本观点、方法以及史学优秀传统；理解史学探究的目的是求真求实，提高学习历史的兴趣，发展历史思维能力，增强学好历史的信心（唯物史观、家国情怀）。\", \"course\": \"选修课程\"}", CJ_teachingTip: "1. 本模块的教学内容，教师要注意以学生所学习的历史基础知识为依托，引导学生对一些具体而典型的材料（如史料、史家论述等）进行分析与理解，使学生在问题情境中了解有关的史学知识，掌握并运用学习历史和认识历史的技能及方法。\n\n2. 教师在教学过程中，要以促进学生历史学科核心素养的发展为重心，开展以学生为主体的探究活动，引导学生通过阅读、理解、分析、评判等活动，在对问题的研究及解决过程中提高历史学科核心素养。\n\n3. 教师应鼓励学生充分发挥自己的主观能动性，促进学生进行拓展性的深入阅读，开展对问题的积极思考和广泛探讨，勇于表达自己的见解，积极进行观点交流。", CJ_achievementRequirement: "通过本模块的学习，学生能够认识历史学的学科性质和功能，了解一些学习历史的基本常识；知道史料在历史探究中的重要性，了解史学家是如何运用史料进行历史论证的（唯物史观、时空观念、史料实证）；能够初步学会综合运用探究历史的基本原则与方法，在理解史事的基础上，全面、客观地评述历史问题，做到史论结合，清晰地表达自己的观点（唯物史观、史料实证、历史解释、家国情怀）；能够了解唯物史观的基本观点、方法以及史学优秀传统；理解史学探究的目的是求真求实，提高学习历史的兴趣，发展历史思维能力，增强学好历史的信心（唯物史观、家国情怀）。", CJ_course: "选修课程"};

MERGE (n:module {identifier: "urn:jy:history:SB0307:OB06:module:6:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:module:6:OB06", title: "史料研读", description: "本课程是对史料进行介绍并加以分析、解读的训练。本课程由7个专题组成，是在必修课程和选择性必修课程基础上的进一步延伸。\n\n史料是人们了解过去、认识历史的重要依据和基础。由于时代和认识上的局限，并非所有史料都能进入人们的视野。迄今为止，人们所能认识并可以搜集、运用的史料大体有文献、实物、口述、图像等类别。搜集和整理不同类别史料的方法有所不同，但有共同的原则。运用史料就是理解历史，需要秉持大胆怀疑、多源互证等原则。对不同类型的史料，需要了解其产生的具体情境，需要掌握读懂它的技能，才能对其反映的历史信息形成准确的认识。", type: "module", subject: "SB0307", applicableLevel: "OB06", contentJson: "{\"teachingTip\": \"1. 本模块的教学内容是史料实证教学的专门化和系统化。教师要注意引导学生了解各类史料的特点及搜集、整理、研究史料的一般原则与方法，让学生通过查阅、研读史料，发展史料实证素养。\\n\\n2. 本模块教学中，教师可结合某一具体历史研究主题或一些典型的史事，进行史料研读训练，引导学生在研读史料的过程中辨析史料的真伪与价值，多源互证，从史料中提取信息并运用相关信息，对历史进行探究、解释和论证。\\n\\n3. 本模块的教学，应注重引导学生利用现代信息技术进行史料搜集与整理，引导学生了解数字史料及数据库使用的相关知识，让学生通过数字资源搜集和整理史料，进行历史探究。\", \"achievementRequirement\": \"通过本模块的学习，学生能够了解史料的类别、特点及价值，懂得史料搜集、鉴别、整理和运用的基本原则与方法，能够运用史料作为证据，对史事进行合理解释与论证（唯物史观、时空观念、史料实证、历史解释）。\", \"course\": \"选修课程\"}", CJ_teachingTip: "1. 本模块的教学内容是史料实证教学的专门化和系统化。教师要注意引导学生了解各类史料的特点及搜集、整理、研究史料的一般原则与方法，让学生通过查阅、研读史料，发展史料实证素养。\n\n2. 本模块教学中，教师可结合某一具体历史研究主题或一些典型的史事，进行史料研读训练，引导学生在研读史料的过程中辨析史料的真伪与价值，多源互证，从史料中提取信息并运用相关信息，对历史进行探究、解释和论证。\n\n3. 本模块的教学，应注重引导学生利用现代信息技术进行史料搜集与整理，引导学生了解数字史料及数据库使用的相关知识，让学生通过数字资源搜集和整理史料，进行历史探究。", CJ_achievementRequirement: "通过本模块的学习，学生能够了解史料的类别、特点及价值，懂得史料搜集、鉴别、整理和运用的基本原则与方法，能够运用史料作为证据，对史事进行合理解释与论证（唯物史观、时空观念、史料实证、历史解释）。", CJ_course: "选修课程"};

MERGE (n:AcademicQuality {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:1:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:1:OB06", title: "水平1", description: "对于给定的具体史事及相关史料，能够判断其发生的时间、空间；能够说明给定史料的类型和价值，并提炼出与之关联的事件、人物、现象等历史要素；能够运用所给史料说明历史问题，做到观点和材料的统一；能够说明重要史事和历史现象，运用历史术语叙述历史演进的基本过程及人类创造的文明成果。\n    在运用史料叙述特定史事和历史问题时，能够运用唯物史观的基本观点和方法，体现出对唯物史观主要内容的基本了解，对唯物史观科学性的正确认知。\n    能够举出历史上认同家乡、民族、国家的事例,简要说明中华民族多元一体的发展进程及意义;能够举出世界历史发展的多样性事例,体现出对各国、各地区、各民族文化传统的了解。", type: "AcademicQuality", subject: "SB0307", applicableLevel: "OB06"};

MERGE (n:AcademicQuality {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:2:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:2:OB06", title: "水平2", description: "对于给定的多则史料所反映的史事,能够综合判断其发生的时间、空间及特征;能够辨别史料类型并说明各自价值,明了史料间的相互关联,提炼出与之关联的事件、人物、现象等历史要素及关键信息;能够运用历史资料制作历史图表;能够运用史料描述、解释与之相关的历史现象及规律等,说明史事间的联系,体现出从历史角度关照现实问题的意识。在运用史料说明历史问题时,能够运用唯物史观的基本观点和方法,体现出对唯物史观主要内容及唯物史观是科学历史观的初步理解。能够把握具体史事所蕴含的社会主义先进文化、革命文化和中华优秀传统文化等要素,表达出对中华民族共同体的认同;能够运用世界历史发展的事例,说明各国、各地区、各民族文化传统的多样性,体现出对不同国家、地区、民族文化传统的尊重。", type: "AcademicQuality", subject: "SB0307", applicableLevel: "OB06"};

MERGE (n:AcademicQuality {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:3:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:3:OB06", title: "水平3", description: "对于多则、多类型的史料所反映的复杂史事,能够综合判断其发生的时间、空间特征及变化,建立较长时段、多个史事间的时空联系,提炼出关键、有效的历史信息;能够对史料进行整理并规范使用;能够综合运用多则史料作为证据,对较长历史时段、较大空间范围、较为复杂的历史现象进行概括,尝试从来源、性质、目的等多维度加以评析。在整理、运用史料分析、解决历史问题时,能够运用唯物史观的基本观点和方法说明、论述历史的发展变化和社会形态演变的基本规律。在阐释历史问题时,能够把握社会主义先进文化、革命文化和中华优秀传统文化的历史价值和现实意义;了解中华文明的五个突出特性和价值,体现出对中华民族共同体的认同;能够全面、客观地分析历史和现实社会问题,反映出对各国、各地区、各民族文化传统的了解和尊重,具有构建人类命运共同体意识。", type: "AcademicQuality", subject: "SB0307", applicableLevel: "OB06"};

MERGE (n:AcademicQuality {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:4:OB06"})
SET n += {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:4:OB06", title: "水平4", description: "对于不同来源、不同观点的史料能够进行比较、分析与互证，在辨析史料作者意图的基础上判定史料内容的真实性及史料价值；能够有意识地运用时空框架、选择恰当时空尺度，对历史和现实问题进行独立的分析、比较、综合、探究；能够运用多种资源和方法搜集史料并恰当取舍，综合运用多学科知识解决历史问题。\n    在整理运用史料分析、解决历史问题时，能够运用唯物史观的基本观点和方法说明、分析历史的发展变化和社会形态演变的基本规律，实事求是地论述与探究历史与现实问题。\n    在分析史料、阐释历史问题时，能够把握社会主义先进文化、革命文化和中华优秀传统文化的内涵，说明社会主义核心价值观的历史依据；在历史学习与探究活动中，能够全面、客观地认识历史和现实社会问题，铸牢中华民族共同体意识，体现出对中国特色社会主义的道路自信、理论自信、制度自信、文化自信，反映出对各国、各地区、各民族文化传统的了解和尊重，树立构建人类命运共同体意识。", type: "AcademicQuality", subject: "SB0307", applicableLevel: "OB06"};

// =====================================================
// 导入关系
// =====================================================

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:2:OB06"})
MERGE (source)-[r:cultivates]->(target)
SET r.label = "培养核心素养(水平2)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:6:OB06"})
MERGE (source)-[r:cultivates]->(target)
SET r.label = "培养核心素养(水平2)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:10:OB06"})
MERGE (source)-[r:cultivates]->(target)
SET r.label = "培养核心素养(水平2)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:14:OB06"})
MERGE (source)-[r:cultivates]->(target)
SET r.label = "培养核心素养(水平2)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:18:OB06"})
MERGE (source)-[r:cultivates]->(target)
SET r.label = "培养核心素养(水平2)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:2:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:4:OB06"})
MERGE (source)-[r:cultivates]->(target)
SET r.label = "培养核心素养(水平4)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:2:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:8:OB06"})
MERGE (source)-[r:cultivates]->(target)
SET r.label = "培养核心素养(水平4)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:2:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:12:OB06"})
MERGE (source)-[r:cultivates]->(target)
SET r.label = "培养核心素养(水平4)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:2:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:16:OB06"})
MERGE (source)-[r:cultivates]->(target)
SET r.label = "培养核心素养(水平4)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:2:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:20:OB06"})
MERGE (source)-[r:cultivates]->(target)
SET r.label = "培养核心素养(水平4)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:3:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:4:OB06"})
MERGE (source)-[r:cultivates]->(target)
SET r.label = "培养核心素养(水平4)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:3:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:8:OB06"})
MERGE (source)-[r:cultivates]->(target)
SET r.label = "培养核心素养(水平4)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:3:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:12:OB06"})
MERGE (source)-[r:cultivates]->(target)
SET r.label = "培养核心素养(水平4)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:3:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:16:OB06"})
MERGE (source)-[r:cultivates]->(target)
SET r.label = "培养核心素养(水平4)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:3:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:20:OB06"})
MERGE (source)-[r:cultivates]->(target)
SET r.label = "培养核心素养(水平4)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:4:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:4:OB06"})
MERGE (source)-[r:cultivates]->(target)
SET r.label = "培养核心素养(水平4)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:4:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:8:OB06"})
MERGE (source)-[r:cultivates]->(target)
SET r.label = "培养核心素养(水平4)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:4:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:12:OB06"})
MERGE (source)-[r:cultivates]->(target)
SET r.label = "培养核心素养(水平4)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:4:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:16:OB06"})
MERGE (source)-[r:cultivates]->(target)
SET r.label = "培养核心素养(水平4)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:4:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:20:OB06"})
MERGE (source)-[r:cultivates]->(target)
SET r.label = "培养核心素养(水平4)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:5:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:4:OB06"})
MERGE (source)-[r:cultivates]->(target)
SET r.label = "培养核心素养(水平4)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:5:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:8:OB06"})
MERGE (source)-[r:cultivates]->(target)
SET r.label = "培养核心素养(水平4)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:5:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:12:OB06"})
MERGE (source)-[r:cultivates]->(target)
SET r.label = "培养核心素养(水平4)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:5:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:16:OB06"})
MERGE (source)-[r:cultivates]->(target)
SET r.label = "培养核心素养(水平4)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:5:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:20:OB06"})
MERGE (source)-[r:cultivates]->(target)
SET r.label = "培养核心素养(水平4)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:6:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:4:OB06"})
MERGE (source)-[r:cultivates]->(target)
SET r.label = "培养核心素养(水平4)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:6:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:8:OB06"})
MERGE (source)-[r:cultivates]->(target)
SET r.label = "培养核心素养(水平4)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:6:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:12:OB06"})
MERGE (source)-[r:cultivates]->(target)
SET r.label = "培养核心素养(水平4)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:6:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:16:OB06"})
MERGE (source)-[r:cultivates]->(target)
SET r.label = "培养核心素养(水平4)";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:Course:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MERGE (source)-[r:containsModule]->(target)
SET r.label = "必修课程包含模块";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:Course:2:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:module:2:OB06"})
MERGE (source)-[r:containsModule]->(target)
SET r.label = "选择性必修课程包含模块";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:Course:2:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:module:3:OB06"})
MERGE (source)-[r:containsModule]->(target)
SET r.label = "选择性必修课程包含模块";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:Course:2:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:module:4:OB06"})
MERGE (source)-[r:containsModule]->(target)
SET r.label = "选择性必修课程包含模块";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:Course:3:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:module:5:OB06"})
MERGE (source)-[r:containsModule]->(target)
SET r.label = "选修课程包含参考模块";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:Course:3:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:module:6:OB06"})
MERGE (source)-[r:containsModule]->(target)
SET r.label = "选修课程包含参考模块";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:Course:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:2:OB06"})
MERGE (source)-[r:correspondsToQualityLevel]->(target)
SET r.label = "必修课程对应学业质量水平2";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:Course:2:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:4:OB06"})
MERGE (source)-[r:correspondsToQualityLevel]->(target)
SET r.label = "选择性必修课程对应学业质量水平4";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:2:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:Course:1:OB06"})
MERGE (source)-[r:isBasisForCourseAssessment]->(target)
SET r.label = "学业质量水平2是必修课程考核依据";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:4:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:Course:2:OB06"})
MERGE (source)-[r:isBasisForCourseAssessment]->(target)
SET r.label = "学业质量水平4是选择性必修课程考核依据";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:1:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:2:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:3:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:4:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:5:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:6:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:7:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:8:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:9:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:10:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:11:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:12:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:13:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:14:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:15:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:16:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:17:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:18:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:19:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:20:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:21:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:22:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:23:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:24:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:25:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:2:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:26:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:2:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:27:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:2:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:28:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:2:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:29:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:2:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:30:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:2:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:31:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:3:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:32:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:3:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:33:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:3:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:34:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:3:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:35:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:3:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:36:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:3:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:37:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:4:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:38:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:4:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:39:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:4:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:40:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:4:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:41:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:4:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:42:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:4:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:43:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:4:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:44:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:5:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:45:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:5:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:46:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:5:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:47:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:5:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:48:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:5:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:49:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:5:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:50:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:5:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:51:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:6:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:52:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:6:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:53:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:6:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:54:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:6:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:55:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:6:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:56:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:6:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:57:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:6:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:topic:58:OB06"})
MERGE (source)-[r:containsTopic]->(target)
SET r.label = "模块包含专题";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:teachingactivitie:1:OB06"})
MERGE (source)-[r:containsActivity]->(target)
SET r.label = "包含教学活动示例";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:teachingactivitie:2:OB06"})
MERGE (source)-[r:containsActivity]->(target)
SET r.label = "包含教学活动示例";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:teachingactivitie:3:OB06"})
MERGE (source)-[r:containsActivity]->(target)
SET r.label = "包含教学活动示例";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:teachingactivitie:4:OB06"})
MERGE (source)-[r:containsActivity]->(target)
SET r.label = "包含教学活动示例";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:2:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:teachingactivitie:5:OB06"})
MERGE (source)-[r:containsActivity]->(target)
SET r.label = "包含教学活动示例";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:3:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:teachingactivitie:6:OB06"})
MERGE (source)-[r:containsActivity]->(target)
SET r.label = "包含教学活动示例";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:4:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:teachingactivitie:7:OB06"})
MERGE (source)-[r:containsActivity]->(target)
SET r.label = "包含教学活动示例";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:5:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:teachingactivitie:8:OB06"})
MERGE (source)-[r:containsActivity]->(target)
SET r.label = "包含教学活动示例";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:module:6:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:teachingactivitie:9:OB06"})
MERGE (source)-[r:containsActivity]->(target)
SET r.label = "包含教学活动示例";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:1:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:1:OB06"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / coreLiteracyAlignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:5:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:1:OB06"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / coreLiteracyAlignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:9:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:1:OB06"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / coreLiteracyAlignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:13:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:1:OB06"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / coreLiteracyAlignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:17:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:1:OB06"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / coreLiteracyAlignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:2:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:2:OB06"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / coreLiteracyAlignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:6:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:2:OB06"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / coreLiteracyAlignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:10:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:2:OB06"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / coreLiteracyAlignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:14:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:2:OB06"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / coreLiteracyAlignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:18:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:2:OB06"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / coreLiteracyAlignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:3:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:3:OB06"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / coreLiteracyAlignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:7:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:3:OB06"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / coreLiteracyAlignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:11:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:3:OB06"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / coreLiteracyAlignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:15:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:3:OB06"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / coreLiteracyAlignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:19:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:3:OB06"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / coreLiteracyAlignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:4:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:4:OB06"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / coreLiteracyAlignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:8:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:4:OB06"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / coreLiteracyAlignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:12:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:4:OB06"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / coreLiteracyAlignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:16:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:4:OB06"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / coreLiteracyAlignsWithAcademicQuality";

MATCH (source {identifier: "urn:jy:history:SB0307:OB06:CoreLiteracy:20:OB06"})
MATCH (target {identifier: "urn:jy:history:SB0307:OB06:AcademicQuality:4:OB06"})
MERGE (source)-[r:coreLiteracyAlignsWithAcademicQuality]->(target)
SET r.label = "核心素养对齐学业质量 / coreLiteracyAlignsWithAcademicQuality";
