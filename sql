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
