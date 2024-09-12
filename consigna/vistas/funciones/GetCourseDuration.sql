CREATE FUNCTION GetCourseDuration(course_start DATE, course_end DATE) RETURNS INT
BEGIN
DECLARE course_duration INT;
SET course_duration = DATEDIFF(course_end, course_start);
RETURN course_duration;
END;
