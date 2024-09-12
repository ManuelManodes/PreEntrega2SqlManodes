USE school_management;

DELIMITER //

CREATE PROCEDURE RegisterAttendance(
    IN studentId INT,
    IN courseId INT,
    IN attendanceDate DATE,
    IN attendanceStatus VARCHAR(10)
)
BEGIN
    -- Verificar si el estudiante ya tiene un registro de asistencia para esa fecha y curso
    IF EXISTS (SELECT * FROM attendance 
               WHERE student_id = studentId 
               AND course_id = courseId 
               AND date = attendanceDate) THEN
        -- Si ya existe, actualizar el registro
        UPDATE attendance
        SET status = attendanceStatus
        WHERE student_id = studentId 
        AND course_id = courseId 
        AND date = attendanceDate;
    ELSE
        -- Si no existe, crear un nuevo registro
        INSERT INTO attendance (student_id, course_id, date, status)
        VALUES (studentId, courseId, attendanceDate, attendanceStatus);
    END IF;
END //

DELIMITER ;