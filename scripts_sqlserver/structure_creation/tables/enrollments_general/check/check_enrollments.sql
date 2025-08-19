USE AcademicNotes
GO

-- ✅ Fecha de inscripción
ALTER TABLE enrollments_general.Enrollments
    ADD CONSTRAINT CK_Enrollments_Date_ControlledRange
        CHECK (Enrolled_At BETWEEN '2025-08-01' AND '2025-12-31');
GO

-- ✅ Calificación examen 1 (0–100)
ALTER TABLE enrollments_general.Enrollments
    ADD CONSTRAINT CK_Enrollments_Exam1_Porcentaje_Valido
        CHECK (Exam1 BETWEEN 0 AND 100);
GO

-- ✅ Calificación examen 2 (0–100)
ALTER TABLE enrollments_general.Enrollments
    ADD CONSTRAINT CK_Enrollments_Exam2_Porcentaje_Valido
        CHECK (Exam2 BETWEEN 0 AND 100);
GO

-- ✅ Participación (0–100)
ALTER TABLE enrollments_general.Enrollments
    ADD CONSTRAINT CK_Enrollments_Participation_Porcentaje_Valido
        CHECK (Participation BETWEEN 0 AND 100);
GO

-- ✅ Asistencia (0–100)
ALTER TABLE enrollments_general.Enrollments
    ADD CONSTRAINT CK_Enrollments_Porcentaje_Valido
        CHECK (Attendance BETWEEN 0 AND 100);
GO

-- ✅ Nota final calculada a partir de Exam1, Exam2, Participation y Attendance. PERSISTED para optimizar consultas.
ALTER TABLE enrollments_general.Enrollments
    ADD CONSTRAINT CK_Enrollments_Final_Grade_Grado_Maximo
        CHECK (Final_Grade BETWEEN 0 AND 4.00);
GO