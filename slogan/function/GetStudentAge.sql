USE school_management;

CREATE FUNCTION GetStudentAge(student_dob DATE) RETURNS INT
BEGIN
DECLARE student_age INT;
SET student_age = TIMESTAMPDIFF(YEAR, student_dob, CURDATE());
RETURN student_age;
END;
