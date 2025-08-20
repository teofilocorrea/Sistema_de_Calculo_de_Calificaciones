-- ========================================
-- 01_db_description.sql
-- Documenta la base de datos principal
-- mediante MS_Description para uso técnico y portafolio
-- Autor: Teófilo Correa Rojas
-- Fecha: Agosto 20 de 2025
-- ========================================

USE AcademicNotes;
GO

-- 🧾 Descripción: Comentario profesional a una tabla
EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Tabla que almacena las inscripciones de los estudiantes',
     @level0type = 'SCHEMA', @level0name = 'enrollments_general',
     @level1type = 'TABLE', @level1name = 'Enrollments';
GO

-- Comentarios a columnas
EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Identificador único de los estudiantes',
     @level0type = 'SCHEMA', @level0name = 'enrollments_general',
     @level1type = 'TABLE', @level1name = 'Enrollments',
     @level2type = 'COLUMN', @level2name = 'Enrollment_Id';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Clave foránea al estudiante',
     @level0type = 'SCHEMA', @level0name = 'enrollments_general',
     @level1type = 'TABLE', @level1name = 'Enrollments',
     @level2type = 'COLUMN', @level2name = 'Student_Id';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Clave foránea al curso',
     @level0type = 'SCHEMA', @level0name = 'enrollments_general',
     @level1type = 'TABLE', @level1name = 'Enrollments',
     @level2type = 'COLUMN', @level2name = 'Course_Id';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Clave foránea al estado',
     @level0type = 'SCHEMA', @level0name = 'enrollments_general',
     @level1type = 'TABLE', @level1name = 'Enrollments',
     @level2type = 'COLUMN', @level2name = 'Status_Id';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Fecha de inscripción',
     @level0type = 'SCHEMA', @level0name = 'enrollments_general',
     @level1type = 'TABLE', @level1name = 'Enrollments',
     @level2type = 'COLUMN', @level2name = 'Enrolled_At';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Calificación examen 1 (0–100)',
     @level0type = 'SCHEMA', @level0name = 'enrollments_general',
     @level1type = 'TABLE', @level1name = 'Enrollments',
     @level2type = 'COLUMN', @level2name = 'Exam1';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Calificación examen 2 (0–100)',
     @level0type = 'SCHEMA', @level0name = 'enrollments_general',
     @level1type = 'TABLE', @level1name = 'Enrollments',
     @level2type = 'COLUMN', @level2name = 'Exam2';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Participación (0–100)',
     @level0type = 'SCHEMA', @level0name = 'enrollments_general',
     @level1type = 'TABLE', @level1name = 'Enrollments',
     @level2type = 'COLUMN', @level2name = 'Participation';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Asistencia (0–100)',
     @level0type = 'SCHEMA', @level0name = 'enrollments_general',
     @level1type = 'TABLE', @level1name = 'Enrollments',
     @level2type = 'COLUMN', @level2name = 'Attendance';
GO