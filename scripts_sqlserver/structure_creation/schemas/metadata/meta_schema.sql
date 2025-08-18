-- ========================================
-- Descripción: Documenta los esquemas principales del sistema AcademicSystem
--              mediante propiedades extendidas (MS_Description) para propósitos técnicos y de portafolio.
-- Esquemas incluidos: student_management, course_catalog y enrollments_general.
-- Autor: Teófilo Correa Rojas
-- Fecha: 30 de julio de 2025
-- ========================================

USE AcademicNotes
GO

-- 🧾 Descripción: Comentario profesional a un esquema en SQL Server
EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Esquema para la gestión de estudiantes y su información académica.',
     @level0type = 'SCHEMA', @level0name = 'student_management';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Esquema que organiza la información de cursos, materias y programas académicos.',
     @level0type = 'SCHEMA', @level0name = 'course_catalog';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Esquema para el registro general de inscripciones y matrículas académicas.',
     @level0type = 'SCHEMA', @level0name = 'enrollments_general';
GO