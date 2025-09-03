USE AcademicNotes
GO

CREATE TABLE student_management.Students
(
    -- 🔑 Clave primaria (PK) con autoincremento
    Student_Id INT IDENTITY (1,1) CONSTRAINT PK_Students PRIMARY KEY CLUSTERED, -- Clave primaria con autoincremento

    -- 📄 Otras columnas
    First_Name      NVARCHAR(50) NOT NULL,  -- Primer Nombre
    Last_Name       NVARCHAR(50) NOT NULL,  -- Apellido
    Email           NVARCHAR(100),          -- Correo electrónico
    BirthDate       DATE NOT NULL,          -- Fecha de nacimiento
    Is_Active       BIT NOT NULL,           -- Estado activo/inactivo
    Created_At      DATETIME2 NOT NULL      -- Fecha de creación del registro
);
GO