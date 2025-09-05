USE AcademicNotes
GO

ADD SENSITIVITY CLASSIFICATION TO enrollments_general.Enrollments.Final_Grade
    WITH (
    LABEL = 'Confidential - Academic',
    INFORMATION_TYPE = 'Academic Grade',
    RANK = MEDIUM
    );