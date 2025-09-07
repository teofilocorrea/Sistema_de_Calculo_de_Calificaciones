USE AcademicNotes
GO

ALTER TABLE course_catalog.Courses
    ADD CONSTRAINT Ck_Title_Not_Latin
    CHECK (
    Title NOT LIKE N'%[^A-Za-zÁÉÍÓÚáéíóúÑñ ''- ]%'
    AND LTRIM(RTRIM(Title)) <> N''
    );
GO

ALTER TABLE course_catalog.Courses
    ADD CONSTRAINT Ck_Code_Unique
    CHECK (
    CHARINDEX(' ', Code) = 0
    AND Code IS NOT NULL
    AND LTRIM(RTRIM(Code)) <> N''
    );
GO

ALTER TABLE course_catalog.Courses
    ADD CONSTRAINT Ck_Credits_1_10
    CHECK (
    Credits IS NULL OR (Credits BETWEEN 0 AND 10)
    );
GO