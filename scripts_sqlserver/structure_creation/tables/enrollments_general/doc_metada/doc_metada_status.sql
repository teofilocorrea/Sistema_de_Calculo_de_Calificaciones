USE AcademicNotes;
GO

-- 🧾 Descripción: Comentario profesional a la tabla
EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Tabla que almacena los estatus de las inscripciones de los estudiantes',
     @level0type = 'SCHEMA', @level0name = 'enrollments_general',
     @level1type = 'TABLE', @level1name = 'Status';
GO

-- Comentarios a columnas
EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Identificador único del estatus de la inscripción',
     @level0type = 'SCHEMA', @level0name = 'enrollments_general',
     @level1type = 'TABLE', @level1name = 'Status',
     @level2type = 'COLUMN', @level2name = 'Status_Id';
GO

EXEC sys.sp_addextendedproperty
     @name = N'MS_Description',
     @value = N'Nombre del estatus (Inscrito, Retirado, Aprobado, Reprobado)',
     @level0type = N'SCHEMA', @level0name = 'enrollments_general',
     @level1type = N'TABLE', @level1name = 'Status',
     @level2type = N'COLUMN', @level2name = 'Name';
GO