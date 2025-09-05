USE AcademicNotes
GO

ALTER TABLE enrollments_general.Enrollments
    ALTER COLUMN Final_Grade ADD MASKED WITH (FUNCTION = 'default()');
GO