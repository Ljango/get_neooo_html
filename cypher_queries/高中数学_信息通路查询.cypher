// =====================================================================
// 高中数学图谱 - 章节信息通路查询
// =====================================================================
// 
// 【图谱结构说明】
// 
// 高中数学图谱包含两套并行的课程结构：
// 
// 1. 必修课程结构（教材章节）：
//    Chapter(章) -> Section(节) -> Subsection(小节) -> KeyPoint(内容要点)
//    -> Unit(单元,必修) -> Theme(主题) -> Domain(主线/领域)
//    -> CoreLiteracy(核心素养) -> AcademicQuality(学业质量)
// 
// 2. 选修课程结构（选修A/B/C类）：
//    CourseModule(课程模块) -> Topic(专题) -> Unit(单元,选修)
//    CourseModule -> AcademicQuality(学业质量)
//    CourseModule -> Theme(主题)
// 
// 【节点类型映射】
//   - Chapter: 章 (教材章节)
//   - Section: 节 (教材关联)
//   - Subsection: 小节 (教材关联)
//   - KeyPoint: 内容要点
//   - Unit: 单元 (必修课程和选修课程各有一套)
//   - Theme: 主题
//   - Domain: 主线/领域
//   - Topic: 专题 (选修课程特有)
//   - CourseModule: 课程模块 (选修课程特有)
//   - CoreLiteracy: 核心素养
//   - AcademicQuality: 学业质量（含学业要求、教学提示）
// 
// =====================================================================

// ---------------------------------------------------------------------
// 查询1: 获取每个Chapter的完整信息通路（扁平化展示）
// 包含两条主要路径：
//   路径A: Chapter -> Section -> Subsection -> KeyPoint -> Unit -> Theme -> Domain
//   路径B: Unit -> Topic -> CourseModule -> AcademicQuality
//   路径C: Unit -> CoreLiteracy -> AcademicQuality
// ---------------------------------------------------------------------
MATCH (chapter:Chapter:GaoZhongShuXue)
// 教材结构路径
OPTIONAL MATCH (chapter)-[:chapterHasSection]->(section:Section:GaoZhongShuXue)
OPTIONAL MATCH (section)-[:sectionHasSubsection]->(subsection:Subsection:GaoZhongShuXue)
OPTIONAL MATCH (subsection)-[:subsectionHasKeyPoint]->(keypoint:KeyPoint:GaoZhongShuXue)
OPTIONAL MATCH (keypoint)-[:keyPointBelongsToUnit]->(unit:Unit:GaoZhongShuXue)
// 主题-主线路径
OPTIONAL MATCH (unit)-[:unitBelongsToTheme]->(theme:Theme:GaoZhongShuXue)
OPTIONAL MATCH (theme)-[:themeBelongsToDomain]->(domain:Domain:GaoZhongShuXue)
// 专题-课程模块路径（双向关系）
OPTIONAL MATCH (unit)<-[:topicIncludesUnit]-(topic:Topic:GaoZhongShuXue)
OPTIONAL MATCH (topic)-[:topicBelongsToCourseModule]->(courseModule:CourseModule:GaoZhongShuXue)
// 核心素养-学业质量路径
OPTIONAL MATCH (unit)-[:unitCultivatesCoreLiteracy]->(coreLiteracy:CoreLiteracy:GaoZhongShuXue)
OPTIONAL MATCH (coreLiteracy)-[:coreLiteracyBelongsToAcademicQuality]->(academicQuality:AcademicQuality:GaoZhongShuXue)
// 课程模块-学业质量路径
OPTIONAL MATCH (courseModule)-[:courseModuleBelongsToAcademicQuality]->(aq2:AcademicQuality:GaoZhongShuXue)
RETURN 
    chapter.title AS 章,
    chapter.identifier AS 章ID,
    collect(DISTINCT section.title) AS 节列表,
    collect(DISTINCT subsection.title) AS 小节列表,
    collect(DISTINCT keypoint.title) AS 内容要点列表,
    collect(DISTINCT unit.title) AS 单元列表,
    collect(DISTINCT theme.title) AS 主题列表,
    collect(DISTINCT domain.title) AS 主线列表,
    collect(DISTINCT topic.title) AS 专题列表,
    collect(DISTINCT courseModule.title) AS 课程模块列表,
    collect(DISTINCT coreLiteracy.title) AS 核心素养列表,
    collect(DISTINCT academicQuality.title) + collect(DISTINCT aq2.title) AS 学业质量列表
ORDER BY chapter.title;

// ---------------------------------------------------------------------
// 查询2: 获取单个Chapter的详细信息通路（带路径）
// 使用时将 "第一章 集合与常用逻辑用语" 替换为实际章节名称
// ---------------------------------------------------------------------
MATCH (chapter:Chapter:GaoZhongShuXue {title: "第一章 集合与常用逻辑用语"})
MATCH path = (chapter)-[*1..6]-(related:GaoZhongShuXue)
WHERE NOT related:Chapter
RETURN path
LIMIT 100;

// ---------------------------------------------------------------------
// 查询3: 获取Chapter到各类型节点的完整路径统计
// ---------------------------------------------------------------------
MATCH (chapter:Chapter:GaoZhongShuXue)
OPTIONAL MATCH p1 = (chapter)-[:chapterHasSection]->(section:Section)
OPTIONAL MATCH p2 = (section)-[:sectionHasSubsection]->(subsection:Subsection)
OPTIONAL MATCH p3 = (subsection)-[:subsectionHasKeyPoint]->(keypoint:KeyPoint)
OPTIONAL MATCH p4 = (keypoint)-[:keyPointBelongsToUnit]->(unit:Unit)
WITH chapter, 
     count(DISTINCT section) AS 节数量,
     count(DISTINCT subsection) AS 小节数量,
     count(DISTINCT keypoint) AS 内容要点数量,
     count(DISTINCT unit) AS 单元数量
RETURN 
    chapter.title AS 章,
    节数量, 小节数量, 内容要点数量, 单元数量
ORDER BY chapter.title;

// ---------------------------------------------------------------------
// 查询4: 从Chapter获取完整的知识体系路径
// Chapter -> Section -> Subsection -> KeyPoint -> Unit -> Theme -> Domain
// ---------------------------------------------------------------------
MATCH (chapter:Chapter:GaoZhongShuXue)
MATCH (chapter)-[:chapterHasSection]->(section:Section:GaoZhongShuXue)
MATCH (section)-[:sectionHasSubsection]->(subsection:Subsection:GaoZhongShuXue)
MATCH (subsection)-[:subsectionHasKeyPoint]->(keypoint:KeyPoint:GaoZhongShuXue)
MATCH (keypoint)-[:keyPointBelongsToUnit]->(unit:Unit:GaoZhongShuXue)
OPTIONAL MATCH (unit)-[:unitBelongsToTheme]->(theme:Theme:GaoZhongShuXue)
OPTIONAL MATCH (theme)-[:themeBelongsToDomain]->(domain:Domain:GaoZhongShuXue)
RETURN DISTINCT
    chapter.title AS 章,
    section.title AS 节,
    subsection.title AS 小节,
    keypoint.title AS 内容要点,
    unit.title AS 单元,
    theme.title AS 主题,
    domain.title AS 主线
ORDER BY chapter.title, section.title, subsection.title;

// ---------------------------------------------------------------------
// 查询5: 获取Chapter关联的课程模块和学业质量信息
// Chapter -> Section -> Subsection -> KeyPoint -> Unit -> Topic -> CourseModule -> AcademicQuality
// ---------------------------------------------------------------------
MATCH (chapter:Chapter:GaoZhongShuXue)
MATCH (chapter)-[:chapterHasSection]->(section:Section:GaoZhongShuXue)
MATCH (section)-[:sectionHasSubsection]->(subsection:Subsection:GaoZhongShuXue)
MATCH (subsection)-[:subsectionHasKeyPoint]->(keypoint:KeyPoint:GaoZhongShuXue)
MATCH (keypoint)-[:keyPointBelongsToUnit]->(unit:Unit:GaoZhongShuXue)
OPTIONAL MATCH (unit)-[:unitBelongsToTopic]->(topic:Topic:GaoZhongShuXue)
OPTIONAL MATCH (topic)-[:topicBelongsToCourseModule]->(courseModule:CourseModule:GaoZhongShuXue)
OPTIONAL MATCH (courseModule)-[:courseModuleHasAcademicQuality]->(academicQuality:AcademicQuality:GaoZhongShuXue)
RETURN DISTINCT
    chapter.title AS 章,
    unit.title AS 单元,
    topic.title AS 专题,
    courseModule.title AS 课程模块,
    academicQuality.title AS 学业质量
ORDER BY chapter.title, unit.title;

// ---------------------------------------------------------------------
// 查询6: 获取Chapter关联的核心素养信息
// Chapter -> Section -> Subsection -> KeyPoint -> Unit -> CoreLiteracy -> AcademicQuality
// ---------------------------------------------------------------------
MATCH (chapter:Chapter:GaoZhongShuXue)
MATCH (chapter)-[:chapterHasSection]->(section:Section:GaoZhongShuXue)
MATCH (section)-[:sectionHasSubsection]->(subsection:Subsection:GaoZhongShuXue)
MATCH (subsection)-[:subsectionHasKeyPoint]->(keypoint:KeyPoint:GaoZhongShuXue)
MATCH (keypoint)-[:keyPointBelongsToUnit]->(unit:Unit:GaoZhongShuXue)
MATCH (unit)-[:unitCultivatesCoreLiteracy]->(coreLiteracy:CoreLiteracy:GaoZhongShuXue)
OPTIONAL MATCH (coreLiteracy)-[:coreLiteracyBelongsToAcademicQuality]->(academicQuality:AcademicQuality:GaoZhongShuXue)
WITH chapter, unit, collect(DISTINCT coreLiteracy.title) AS 核心素养列表, 
     collect(DISTINCT academicQuality.title) AS 学业质量列表
RETURN DISTINCT
    chapter.title AS 章,
    unit.title AS 单元,
    核心素养列表,
    学业质量列表
ORDER BY chapter.title, unit.title;

// ---------------------------------------------------------------------
// 查询7: 综合查询 - 获取每个Chapter的完整信息通路（JSON格式）
// 返回结构化的JSON数据，便于程序处理
// ---------------------------------------------------------------------
MATCH (chapter:Chapter:GaoZhongShuXue)
OPTIONAL MATCH (chapter)-[:chapterHasSection]->(section:Section:GaoZhongShuXue)
OPTIONAL MATCH (section)-[:sectionHasSubsection]->(subsection:Subsection:GaoZhongShuXue)
OPTIONAL MATCH (subsection)-[:subsectionHasKeyPoint]->(keypoint:KeyPoint:GaoZhongShuXue)
OPTIONAL MATCH (keypoint)-[:keyPointBelongsToUnit]->(unit:Unit:GaoZhongShuXue)
OPTIONAL MATCH (unit)-[:unitBelongsToTheme]->(theme:Theme:GaoZhongShuXue)
OPTIONAL MATCH (theme)-[:themeBelongsToDomain]->(domain:Domain:GaoZhongShuXue)
OPTIONAL MATCH (unit)-[:unitBelongsToTopic]->(topic:Topic:GaoZhongShuXue)
OPTIONAL MATCH (topic)-[:topicBelongsToCourseModule]->(courseModule:CourseModule:GaoZhongShuXue)
OPTIONAL MATCH (unit)-[:unitCultivatesCoreLiteracy]->(coreLiteracy:CoreLiteracy:GaoZhongShuXue)
OPTIONAL MATCH (coreLiteracy)-[:coreLiteracyBelongsToAcademicQuality]->(academicQuality:AcademicQuality:GaoZhongShuXue)
WITH chapter,
     collect(DISTINCT {title: section.title, id: section.identifier}) AS sections,
     collect(DISTINCT {title: subsection.title, id: subsection.identifier}) AS subsections,
     collect(DISTINCT {title: keypoint.title, id: keypoint.identifier}) AS keypoints,
     collect(DISTINCT {title: unit.title, id: unit.identifier}) AS units,
     collect(DISTINCT {title: theme.title, id: theme.identifier}) AS themes,
     collect(DISTINCT {title: domain.title, id: domain.identifier}) AS domains,
     collect(DISTINCT {title: topic.title, id: topic.identifier}) AS topics,
     collect(DISTINCT {title: courseModule.title, id: courseModule.identifier}) AS courseModules,
     collect(DISTINCT {title: coreLiteracy.title, id: coreLiteracy.identifier}) AS coreLiteracies,
     collect(DISTINCT {title: academicQuality.title, id: academicQuality.identifier}) AS academicQualities
RETURN {
    chapter: {title: chapter.title, id: chapter.identifier},
    教材关联: {
        节: [s IN sections WHERE s.title IS NOT NULL | s],
        小节: [s IN subsections WHERE s.title IS NOT NULL | s]
    },
    内容要点: [k IN keypoints WHERE k.title IS NOT NULL | k],
    单元: [u IN units WHERE u.title IS NOT NULL | u],
    主题: [t IN themes WHERE t.title IS NOT NULL | t],
    主线: [d IN domains WHERE d.title IS NOT NULL | d],
    专题: [t IN topics WHERE t.title IS NOT NULL | t],
    课程模块: [c IN courseModules WHERE c.title IS NOT NULL | c],
    核心素养: [c IN coreLiteracies WHERE c.title IS NOT NULL | c],
    学业质量: [a IN academicQualities WHERE a.title IS NOT NULL | a]
} AS 章节信息通路
ORDER BY chapter.title;

// ---------------------------------------------------------------------
// 查询8: 获取学业质量详细信息（含学业要求和教学提示）
// AcademicQuality节点通常包含contentJson字段，其中有标准和要求
// ---------------------------------------------------------------------
MATCH (aq:AcademicQuality:GaoZhongShuXue)
RETURN 
    aq.title AS 学业质量等级,
    aq.identifier AS ID,
    aq.description AS 描述,
    aq.contentJson AS 详细内容
ORDER BY aq.title;

// ---------------------------------------------------------------------
// 查询9: 获取Chapter到学业质量的完整路径（多条路径汇总）
// ---------------------------------------------------------------------
MATCH (chapter:Chapter:GaoZhongShuXue)
// 路径1: Chapter -> Section -> Subsection -> KeyPoint -> Unit -> CoreLiteracy -> AcademicQuality
OPTIONAL MATCH path1 = (chapter)-[:chapterHasSection]->(:Section)-[:sectionHasSubsection]->
                       (:Subsection)-[:subsectionHasKeyPoint]->(:KeyPoint)-[:keyPointBelongsToUnit]->
                       (:Unit)-[:unitCultivatesCoreLiteracy]->(:CoreLiteracy)-[:coreLiteracyBelongsToAcademicQuality]->(aq1:AcademicQuality)
// 路径2: Chapter -> Section -> Subsection -> KeyPoint -> Unit -> Topic -> CourseModule -> AcademicQuality
OPTIONAL MATCH path2 = (chapter)-[:chapterHasSection]->(:Section)-[:sectionHasSubsection]->
                       (:Subsection)-[:subsectionHasKeyPoint]->(:KeyPoint)-[:keyPointBelongsToUnit]->
                       (:Unit)-[:unitBelongsToTopic]->(:Topic)-[:topicBelongsToCourseModule]->
                       (:CourseModule)-[:courseModuleHasAcademicQuality]->(aq2:AcademicQuality)
WITH chapter, 
     collect(DISTINCT aq1.title) AS 通过核心素养关联的学业质量,
     collect(DISTINCT aq2.title) AS 通过课程模块关联的学业质量
RETURN 
    chapter.title AS 章,
    通过核心素养关联的学业质量,
    通过课程模块关联的学业质量
ORDER BY chapter.title;

// ---------------------------------------------------------------------
// 查询10: 导出完整的章节知识图谱数据（用于可视化）
// ---------------------------------------------------------------------
MATCH (chapter:Chapter:GaoZhongShuXue)
MATCH p = (chapter)-[*1..5]-(related:GaoZhongShuXue)
WHERE NOT related:Chapter
WITH chapter, 
     collect(DISTINCT related) AS relatedNodes,
     collect(DISTINCT p) AS paths
RETURN 
    chapter.title AS 章,
    size(relatedNodes) AS 关联节点数,
    [n IN relatedNodes | {type: labels(n)[0], title: n.title}] AS 关联节点详情
ORDER BY chapter.title;

// =====================================================================
// 选修课程结构查询
// =====================================================================

// ---------------------------------------------------------------------
// 查询11: 获取选修课程的完整结构
// CourseModule(课程模块) -> Topic(专题) -> Unit(单元)
// ---------------------------------------------------------------------
MATCH (cm:CourseModule:GaoZhongShuXue)
OPTIONAL MATCH (cm)-[:courseModuleContainsTopic]->(topic:Topic:GaoZhongShuXue)
OPTIONAL MATCH (topic)-[:topicIncludesUnit]->(unit:Unit:GaoZhongShuXue)
OPTIONAL MATCH (cm)-[:courseModuleHasTheme]->(theme:Theme:GaoZhongShuXue)
OPTIONAL MATCH (cm)-[:courseModuleBelongsToAcademicQuality]->(aq:AcademicQuality:GaoZhongShuXue)
RETURN 
    cm.title AS 课程模块,
    cm.identifier AS 模块ID,
    collect(DISTINCT topic.title) AS 专题列表,
    collect(DISTINCT unit.title) AS 单元列表,
    collect(DISTINCT theme.title) AS 主题列表,
    collect(DISTINCT aq.title) AS 学业质量列表
ORDER BY cm.title;

// ---------------------------------------------------------------------
// 查询12: 获取所有专题及其关联信息
// ---------------------------------------------------------------------
MATCH (topic:Topic:GaoZhongShuXue)
OPTIONAL MATCH (topic)-[:topicBelongsToCourseModule]->(cm:CourseModule:GaoZhongShuXue)
OPTIONAL MATCH (topic)-[:topicIncludesUnit]->(unit:Unit:GaoZhongShuXue)
RETURN 
    topic.title AS 专题,
    topic.identifier AS 专题ID,
    cm.title AS 所属课程模块,
    collect(DISTINCT unit.title) AS 包含单元列表
ORDER BY cm.title, topic.title;

// ---------------------------------------------------------------------
// 查询13: 汇总查询 - 必修课程与选修课程对比
// ---------------------------------------------------------------------
// 必修课程Unit统计
MATCH (kp:KeyPoint:GaoZhongShuXue)-[:keyPointBelongsToUnit]->(u:Unit:GaoZhongShuXue)
WITH collect(DISTINCT u.title) AS 必修课程单元
// 选修课程Unit统计
MATCH (t:Topic:GaoZhongShuXue)-[:topicIncludesUnit]->(u2:Unit:GaoZhongShuXue)
WITH 必修课程单元, collect(DISTINCT u2.title) AS 选修课程单元
RETURN 
    size(必修课程单元) AS 必修课程单元数,
    size(选修课程单元) AS 选修课程单元数,
    必修课程单元,
    选修课程单元;

// ---------------------------------------------------------------------
// 查询14: 核心素养与学业质量的完整路径
// 展示核心素养如何关联到学业质量
// ---------------------------------------------------------------------
MATCH (cl:CoreLiteracy:GaoZhongShuXue)
OPTIONAL MATCH (cl)-[:coreLiteracyBelongsToAcademicQuality]->(aq:AcademicQuality:GaoZhongShuXue)
OPTIONAL MATCH (unit:Unit:GaoZhongShuXue)-[:unitCultivatesCoreLiteracy]->(cl)
WITH cl, collect(DISTINCT aq.title) AS 学业质量, collect(DISTINCT unit.title) AS 关联单元
RETURN 
    cl.title AS 核心素养,
    cl.identifier AS ID,
    学业质量,
    关联单元,
    size(关联单元) AS 关联单元数
ORDER BY cl.title;

// ---------------------------------------------------------------------
// 查询15: 完整的知识体系导航图 - 从课程模块到教材章节
// 展示课程标准内容如何落实到具体教材
// ---------------------------------------------------------------------
MATCH (cm:CourseModule:GaoZhongShuXue)
OPTIONAL MATCH (cm)-[:courseModuleHasTheme]->(theme:Theme:GaoZhongShuXue)
OPTIONAL MATCH (theme)<-[:unitBelongsToTheme]-(unit:Unit:GaoZhongShuXue)
OPTIONAL MATCH (unit)<-[:keyPointBelongsToUnit]-(kp:KeyPoint:GaoZhongShuXue)
OPTIONAL MATCH (kp)<-[:subsectionHasKeyPoint]-(ss:Subsection:GaoZhongShuXue)
OPTIONAL MATCH (ss)<-[:sectionHasSubsection]-(sec:Section:GaoZhongShuXue)
OPTIONAL MATCH (sec)<-[:chapterHasSection]-(ch:Chapter:GaoZhongShuXue)
WITH cm, theme, 
     collect(DISTINCT unit.title) AS units,
     collect(DISTINCT kp.title) AS keypoints,
     collect(DISTINCT ch.title) AS chapters
WHERE size(chapters) > 0
RETURN 
    cm.title AS 课程模块,
    theme.title AS 主题,
    units AS 单元列表,
    keypoints AS 内容要点列表,
    chapters AS 关联章节
ORDER BY cm.title, theme.title;
