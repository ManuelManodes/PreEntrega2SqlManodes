USE school_management;

CREATE VIEW StudentCourses AS
SELECT student.first_name, student.last_name, course.course_name, enrollment.grade
FROM student
JOIN enrollment ON student.student_id = enrollment.student_id
JOIN course ON enrollment.course_id = course.course_id;
