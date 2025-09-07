USE AcademicNotes
GO

ADD SENSITIVITY CLASSIFICATION TO course_catalog.Courses.Code
    WITH (
    LABEL = 'Confidential - Academic',
    INFORMATION_TYPE = 'Code',
    RANK = LOW
    );