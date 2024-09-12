CREATE VIEW TeacherSchedule AS
SELECT
teacher.first_name AS teacher_first_name,
teacher.last_name AS teacher_last_name,
course.course_name,
classroom.classroom_name,
schedule.day_of_week,
schedule.start_time,
schedule.end_time
FROM
teacher
JOIN
schedule ON teacher.teacher_id = schedule.teacher_id
JOIN
course ON schedule.course_id = course.course_id
JOIN
classroom ON schedule.classroom_id = classroom.classroom_id;
