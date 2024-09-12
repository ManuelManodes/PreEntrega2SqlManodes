USE school_management;

DELIMITER //

CREATE PROCEDURE RegisterEnrollment(
    IN studentId INT,        -- ID del estudiante que se inscribe
    IN courseId INT,         -- ID del curso al que se inscribe el estudiante
    IN enrollmentDate DATE   -- Fecha en que se realiza la inscripción
)
BEGIN
    -- Verificar si el estudiante ya está inscrito en el curso
    IF EXISTS (SELECT * FROM enrollments
               WHERE student_id = studentId
               AND course_id = courseId) THEN
        -- Si ya está inscrito, no se realiza la inscripción
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El estudiante ya está inscrito en este curso';
    ELSE
        -- Si no está inscrito, se realiza la inscripción
        INSERT INTO enrollments (student_id, course_id, enrollment_date)
        VALUES (studentId, courseId, enrollmentDate);
    END IF;
END //

DELIMITER ;
