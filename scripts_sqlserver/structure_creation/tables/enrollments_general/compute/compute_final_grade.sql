-- 📐 Calcula la nota final = (40% Exam1 + 40% Exam2 + 10% Participation + 10% Attendance), redondeada a 2 decimales

USE AcademicNotes;
GO

IF COL_LENGTH('enrollments_general.Enrollments', 'Final_Grade') IS NULL
BEGIN
    ALTER TABLE enrollments_general.Enrollments
    ADD Final_Grade AS (
        CAST(
            ROUND(
                (COALESCE(Exam1, 0)         * 0.40) +
                (COALESCE(Exam2, 0)         * 0.40) +
                (COALESCE(Participation, 0) * 0.10) +
                (COALESCE(Attendance, 0)    * 0.10),
                2
            ) AS DECIMAL(5,2)
        )
    ) PERSISTED;

    EXEC sys.sp_addextendedproperty
         @name = N'MS_Description',
         @value = N'Columna computada que calcula la calificación final (40% Exam1, 40% Exam2, 10% Participation, 10% Attendance), redondeada a 2 decimales.',
         @level0type = N'SCHEMA', @level0name = N'enrollments_general',
         @level1type = N'TABLE',  @level1name = N'Enrollments',
         @level2type = N'COLUMN', @level2name = N'Final_Grade';
END
GO