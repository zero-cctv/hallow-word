# hallow-word
word-all(什么都有的杂物库)
 /*9.5.5.1*/
  select 学生.学号,学生.姓名,学生_课程.成绩 from 学生
  join 学生_课程 on 学生.学号=学生_课程.学号
  join 课程 on 学生_课程.课程编号=课程.课程编号 
  where 课程.课程名称='C#程序设计'
  
  select 课程.课程名称,学生_课程.成绩 from 学生
  join 学生_课程 on 学生.学号=学生_课程.学号
  join 课程 on 学生_课程.课程编号=课程.课程编号 
  where 学生.学号=10001
  
  select avg(学生_课程.成绩) as 平均分,MAX(学生_课程.成绩) as 最高分,MIN(学生_课程.成绩) as 最低分
  from 学生_课程 join 课程 on 学生_课程.课程编号=课程.课程编号 
  where 课程名称='C#程序设计'
