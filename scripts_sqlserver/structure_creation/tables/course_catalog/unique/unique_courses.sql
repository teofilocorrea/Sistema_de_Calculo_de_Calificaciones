USE AcademicNotes
GO

ALTER TABLE course_catalog.Courses
    ADD CONSTRAINT Unique_title_Courses UNIQUE (Title);
GO