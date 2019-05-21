sql库

 create procedure all_系		
 as 		
 select 系.系名称,系.系编号		
 from 系		
 exec all_系
 
 /*sql13.3.2*/		
 create procedure all_系		
 as 		
 select 系.系名称,系.系编号		
 from 系	
 	
 exec all_系
 /**/
 create procedure 某班学生
 (
 @class nchar(20)
 )
 as
 select 学生.姓名
 from 学生
 where 学生.班级编号=@class
 
 exec 某班学生 1
 
 create procedure 某班学生某课的成绩
 (
 @class nvarchar(20),
 @course nvarchar(20)
 )
 as
 select 学生.姓名,学生_课程.成绩
 from 学生 join 学生_课程 on 学生.学号=学生_课程.学号
 join 课程 on 课程.课程编号=学生_课程.课程编号
 where 学生.班级编号=@class and 课程.课程名称=@course
 
 exec 某班学生某课的成绩 1 ,java专精
 
 create procedure 某教师第三学期的课
 (
 @teacher nvarchar(20)
 )
 as
 select 课程.课程名称
 from 教师任课 join 课程 on 教师任课.课程号=课程.课程编号
 where 课程.开课学期='第3学期'and 教师任课.教师编号=@teacher
 
 exec 某教师第三学期的课 1

create procedure 添加学生课程表记录
(
@pk_id int,
@class_id int,
@s_id int,
@score int=0
)
as
insert into 学生_课程 values(@pk_id,@class_id,@s_id,@score)

 exec 添加学生课程表记录 100,8,10010,100
 
 
 /*5月21*/
 create procedure GetStudentScore3
(
@StudentID int=NULL
)
as
IF  @StudentID IS NULL
BEGIN
DECLARE @ERRORS varchar(200);
set @ERRORS='this is error';
RETURN 99;
end
ELSE
BEGIN
RETURN
SELECT 学生_课程.成绩,课程.课程名称
from 学生_课程 join 课程 on 学生_课程.课程编号=课程.课程编号
where 学生_课程.学号=@StudentID;
end

 EXECUTE GetStudentScore3;
EXECUTE GetStudentScore 1008;
DECLARE @show INT;
EXECUTE @show=GetStudentScore3;
select @show

/*RETURN 只能返回整数或整数表达式*/

create procedure GetList
(
@成绩 int output,
@课程名称 varchar(20),
@CompareScore int output,
@MaxScore int output
)
as
select 学生.姓名,学生_课程.成绩
from 学生 
join 学生_课程 on 学生.学号=学生_课程.学号
join 课程 on 课程.课程编号=学生_课程.课程编号
where 学生_课程.成绩>@成绩 and 课程.课程名称=@课程名称
set @CompareScore=@成绩
set @MaxScore=(select MAX(学生_课程.成绩) from 学生 join 学生_课程 on 学生.学号=学生_课程.学号
join 课程 on 课程.课程编号=学生_课程.课程编号
where 学生_课程.成绩>@成绩 and 课程.课程名称=@课程名称)

declare @Compare int
declare @Max  int
execute GetList 60, java专精,@Compare output,@Max  output
select @Compare,@Max
 
 
 
 
 
