USE AcademicNotes
GO

-- ✅ Validación por lista de valores permitidos
ALTER TABLE enrollments_general.Status
    ADD CONSTRAINT CK_Status_Name_Validation
        CHECK (Name IN ('Inscrito', 'Retirado', 'Aprobado', 'Reprobado'));
GO