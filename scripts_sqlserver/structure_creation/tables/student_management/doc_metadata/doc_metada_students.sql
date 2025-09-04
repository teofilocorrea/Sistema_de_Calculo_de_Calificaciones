-- 📦 Documentación de tabla: Students
-- Autor: Teófilo Correa
-- Fecha: 2025-09-04

USE AcademicNotes;
GO

-- 🧾 Descripción: Comentario profesional a una tabla
EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Tabla que almacena los estudiantes.',
     @level0type = 'SCHEMA', @level0name = 'student_management',
     @level1type = 'TABLE', @level1name = 'Students';
GO

-- Comentarios a columnas
EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Identificador único del estudiante.',
     @level0type = 'SCHEMA', @level0name = 'student_management',
     @level1type = 'TABLE', @level1name = 'Students',
     @level2type = 'COLUMN', @level2name = 'Student_Id';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Primer nombre.',
     @level0type = 'SCHEMA', @level0name = 'student_management',
     @level1type = 'TABLE', @level1name = 'Students',
     @level2type = 'COLUMN', @level2name = 'First_Name';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Apellido.',
     @level0type = 'SCHEMA', @level0name = 'student_management',
     @level1type = 'TABLE', @level1name = 'Students',
     @level2type = 'COLUMN', @level2name = 'Last_Name';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Correo electrónico.',
     @level0type = 'SCHEMA', @level0name = 'student_management',
     @level1type = 'TABLE', @level1name = 'Students',
     @level2type = 'COLUMN', @level2name = 'Email';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Fecha de nacimiento.',
     @level0type = 'SCHEMA', @level0name = 'student_management',
     @level1type = 'TABLE', @level1name = 'Students',
     @level2type = 'COLUMN', @level2name = 'BirthDate';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Estado activo/inactivo.',
     @level0type = 'SCHEMA', @level0name = 'student_management',
     @level1type = 'TABLE', @level1name = 'Students',
     @level2type = 'COLUMN', @level2name = 'Is_Active';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Fecha de creación del registro.',
     @level0type = 'SCHEMA', @level0name = 'student_management',
     @level1type = 'TABLE', @level1name = 'Students',
     @level2type = 'COLUMN', @level2name = 'Created_At';
GO