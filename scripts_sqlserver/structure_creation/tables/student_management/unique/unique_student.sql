/* ============================================
   🛡 Unique Index sobre columna normalizada (flexible)
   Descripción: aplica unicidad sobre  y permite múltiples NULL.
============================================ */
USE AcademicNotes
GO

IF NOT EXISTS (SELECT 1
               FROM sys.indexes
               WHERE name = N'INDEX_Student_Email'
                 AND object_id = OBJECT_ID(N'student_management.Students'))
    BEGIN
        CREATE UNIQUE INDEX INDEX_Student_Email
            ON student_management.Students(Email)
            WHERE Email IS NOT NULL;
    END
GO