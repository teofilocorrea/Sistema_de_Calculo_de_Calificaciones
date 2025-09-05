USE AcademicNotes
GO

ALTER TABLE student_management.Students
    ALTER COLUMN BirthDate ADD MASKED WITH (FUNCTION = 'default()');
GO