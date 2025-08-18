USE AcademicNotes
GO

CREATE TABLE enrollments_general.Enrollments
(
    -- 🔑 Clave primaria (PK) con autoincremento
    Enrollment_Id INT IDENTITY (1,1) PRIMARY KEY CLUSTERED, -- Clave primaria con autoincremento

    -- 📄 Otras columnas
    Enrolled_At DATE,
    Exam1 TINYINT,
    Exam2 TINYINT,
    Participation TINYINT,
    Attendance TINYINT,
    Final_Grade DECIMAL(4,2),

    -- 🔑 Clave foranea (FK) de la tabla Status
    Student_Id    INT           NOT NULL,
    Course_Id     INT           NOT NULL,
    Status_Id     INT           NOT NULL
);
GO