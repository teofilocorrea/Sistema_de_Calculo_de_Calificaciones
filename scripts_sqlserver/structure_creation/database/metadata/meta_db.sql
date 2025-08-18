-- ========================================
-- 01_db_description.sql
-- Documenta la base de datos principal (Base de datos para gestión y documentación de metadatos académicos: estudiantes, cursos y calificaciones.)
-- mediante MS_Description para uso técnico y portafolio
-- Autor: Teófilo Correa Rojas
-- Fecha: Agosto 18 de 2025
-- ========================================
USE AcademicNotes
GO

-- 🧾 Documentación de la base de datos
EXEC sys.sp_addextendedproperty
     @name = N'MS_Description',
     @value = N'Base de datos para gestión y documentación de metadatos académicos: estudiantes, cursos y calificaciones.';
GO