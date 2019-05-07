create view SScoreAVG 
AS 
SELECT  学生.学号,AVG(成绩) as 平均成绩
from 学生 inner join 学生_课程 on 学生.学号=学生_课程.学号 
group by 学生.学号

create view CScoreAVG
AS
SELECT 学生_课程.课程编号 ,avg(学生_课程.成绩) as 平均成绩
from 学生_课程
group by 课程编号 
/*+专业_课程表，+课程.课程学分列*/
create view V_软件设计课程计划_1
(课程名,课程类型,开课学期,学分)
as
select 课程.课程名称,课程.课程类别,专业_课程.开课学期,课程.课程学分
from 专业_课程 join 课程 on 课程.课程编号=专业_课程.课程编号
where 专业_课程.专业编号 in(select 专业编号 from 专业 where 专业名称='软件设计')

create view 高数的学生
(学号,姓名)
as
select 学生.学号,学生.姓名
from 学生 join 学生_课程 on 学生.学号=学生_课程.学号
join 课程 on 课程.课程编号=学生_课程.课程编号
where 课程.课程名称='高等数学'

create view 差分生


