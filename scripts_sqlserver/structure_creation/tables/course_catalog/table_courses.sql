USE AcademicNotes
GO

CREATE TABLE course_catalog.Courses
(
    -- 🔑 Clave primaria (PK) con autoincremento
    Course_Id INT IDENTITY (1,1) CONSTRAINT PK_Course_Id PRIMARY KEY CLUSTERED,

    -- 📄 Otras columnas
    Title       NVARCHAR(100) NOT NULL,     -- Nombre del curso
    Code        CHAR(5) NOT NULL,           -- Código del curso
    Credits     TINYINT NOT NULL,           -- Créditos académicos
    Is_Active   BIT NOT NULL                -- Estado activo/inactivo
                CONSTRAINT DF_Courses_IsActive DEFAULT (1)
);
GO