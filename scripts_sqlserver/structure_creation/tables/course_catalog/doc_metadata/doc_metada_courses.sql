USE AcademicNotes
GO

-- 📦 Documentación de tabla: Courses
-- Autor: Teófilo Correa
-- Fecha: 2025-09-07

-- 🧾 Descripción: Comentario profesional a una tabla
EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Tabla que almacena los cursos',
     @level0type = 'SCHEMA', @level0name = 'course_catalog',
     @level1type = 'TABLE', @level1name = 'Courses';
GO

-- Comentarios a columnas
EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Identificador único del curso',
     @level0type = 'SCHEMA', @level0name = 'course_catalog',
     @level1type = 'TABLE', @level1name = 'Courses',
     @level2type = 'COLUMN', @level2name = 'Course_Id';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Nombre del curso',
     @level0type = 'SCHEMA', @level0name = 'course_catalog',
     @level1type = 'TABLE', @level1name = 'Courses',
     @level2type = 'COLUMN', @level2name = 'Title';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Código del curso',
     @level0type = 'SCHEMA', @level0name = 'course_catalog',
     @level1type = 'TABLE', @level1name = 'Courses',
     @level2type = 'COLUMN', @level2name = 'Code';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Créditos académicos',
     @level0type = 'SCHEMA', @level0name = 'course_catalog',
     @level1type = 'TABLE', @level1name = 'Courses',
     @level2type = 'COLUMN', @level2name = 'Credits';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Estado activo/inactivo',
     @level0type = 'SCHEMA', @level0name = 'course_catalog',
     @level1type = 'TABLE', @level1name = 'Courses',
     @level2type = 'COLUMN', @level2name = 'Is_Active';
GO