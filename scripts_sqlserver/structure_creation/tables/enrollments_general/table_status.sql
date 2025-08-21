USE AcademicNotes
GO

CREATE TABLE enrollments_general.Status
(
    -- 🔑 Clave primaria (PK) con autoincremento
    Status_Id INT IDENTITY (1,1) PRIMARY KEY, -- Clave primaria con autoincremento

    -- 📄 Otras columnas
    Name NVARCHAR(20) NOT NULL -- Nombre del estado (activo, retirado, etc)
);
GO