USE AcademicNotes
GO

-- Justificacion: Contiene los correos electrónicos personales de los estudiantes.
ADD SENSITIVITY CLASSIFICATION TO student_management.Students.Email
    WITH (
    LABEL = 'Confidential - Contact',
    INFORMATION_TYPE = 'Email Address',
    RANK = HIGH
    );
GO

-- Justificacion: Contiene la fecha de nacimiento del estudiante.
ADD SENSITIVITY CLASSIFICATION TO student_management.Students.BirthDate
    WITH (
    LABEL = 'Confidential - Personal',
    INFORMATION_TYPE = 'Date of Birth',
    RANK = MEDIUM
    );
GO

-- Justificacion: Contiene el primer nombre del estudiante.
ADD SENSITIVITY CLASSIFICATION TO student_management.Students.First_Name
    WITH (
    LABEL = 'Confidential - Personal',
    INFORMATION_TYPE = 'First Name',
    RANK = LOW
    );
GO

-- Justificacion: Contiene el apellido del estudiante.
ADD SENSITIVITY CLASSIFICATION TO student_management.Students.Last_Name
    WITH (
    LABEL = 'Confidential - Personal',
    INFORMATION_TYPE = 'Last Name',
    RANK = LOW
    );
GO