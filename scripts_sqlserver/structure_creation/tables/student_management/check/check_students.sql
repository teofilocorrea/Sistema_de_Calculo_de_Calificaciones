-- ✅ Nombres: solo letras latinas básicas, espacios, apóstrofo y guion
ALTER TABLE student_management.Students
ADD CONSTRAINT CK_Students_First_Name_LetrasLatinas
CHECK (
    First_Name NOT LIKE N'%[^A-Za-zÁÉÍÓÚáéíóúÑñ ''- ]%'
    AND LTRIM(RTRIM(First_Name)) <> N''
);
GO

-- ✅ Apellidos: mismo criterio que nombres
ALTER TABLE student_management.Students
ADD CONSTRAINT CK_Students_Last_Name_LetrasLatinas
CHECK (
    Last_Name NOT LIKE N'%[^A-Za-zÁÉÍÓÚáéíóúÑñ ''- ]%'
    AND LTRIM(RTRIM(Last_Name)) <> N''
);
GO

-- ✅ Email básico (permite NULL si el campo es opcional)
ALTER TABLE student_management.Students
ADD CONSTRAINT CK_Students_Email_EmailValido
CHECK (
    Email IS NULL
    OR (
        Email LIKE N'%@%.__%'         -- hay @ y punto con al menos 2 chars de TLD
        AND CHARINDEX(' ', Email) = 0 -- sin espacios
        AND LTRIM(RTRIM(Email)) <> N''
    )
);
GO

-- ✅ Edad entre 15 y 90 años (ajustado al comentario)
ALTER TABLE student_management.Students
ADD CONSTRAINT CK_Students_BirthDate_Edad_15_90
CHECK (
    BirthDate BETWEEN
        CAST(DATEADD(YEAR, -90, CAST(GETDATE() AS date)) AS date)
    AND CAST(DATEADD(YEAR, -15, CAST(GETDATE() AS date)) AS date)
);
GO

-- ✅ Created_At dentro de 2025 (mejor con límite abierto superior)
ALTER TABLE student_management.Students
ADD CONSTRAINT CK_Students_CreatedAt_Only_2025
CHECK (
    Created_At >= '2025-01-01T00:00:00'
    AND Created_At <  '2026-01-01T00:00:00'
);
GO