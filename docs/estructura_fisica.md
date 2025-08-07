# 🔧 Estructura Física

Este documento representa la **estructura física base** del sistema de cálculo de calificaciones. Aquí se definen las columnas por tabla, su tipo de dato y los atributos adicionales a considerar para su implementación en SQL Server.

📌 Las restricciones CHECK, claves foráneas, máscaras y metadata detallada se documentan en secciones dedicadas.

---

## 🗂️ Esquema: `student_management`

### Tabla: `Dim_Students`

| Clave | Campo       | Tipo de dato   | NULL / NOT NULL | UNIQUE | Descripción                            |
|-------|-------------|----------------|------------------|--------|----------------------------------------|
| PK    | Student_Id  | INT            | NOT NULL         |        | Identificador único del estudiante     |
|       | First_Name  | NVARCHAR(50)   | NOT NULL         |        | Primer nombre                          |
|       | Last_Name   | NVARCHAR(60)   | NOT NULL         |        | Apellido                               |
|       | Email       | NVARCHAR(100)  | NOT NULL         | ✅     | Correo institucional o personal        |
|       | BirthDate   | DATE           | NOT NULL         |        | Fecha de nacimiento                    |
|       | Is_Active   | BIT            | NOT NULL         |        | Estado del estudiante (activo/inactivo)|
|       | Created_At  | DATETIME2      | NOT NULL         |        | Fecha de registro                      |

---

## 🗂️ Esquema: `course_catalog`

### Tabla: `Dim_Courses`

| Clave | Campo     | Tipo de dato    | NULL / NOT NULL | UNIQUE | Descripción                          |
|-------|-----------|------------------|------------------|--------|--------------------------------------|
| PK    | Course_Id | INT              | NOT NULL         |        | Identificador del curso              |
|       | Title     | NVARCHAR(100)    | NOT NULL         |        | Nombre del curso                     |
|       | Code      | NVARCHAR(20)     | NOT NULL         | ✅     | Código académico del curso           |
|       | Credits   | TINYINT          | NOT NULL         |        | Créditos asignados al curso          |
|       | Is_Active | BIT              | NOT NULL         |        | Indica si el curso está activo       |

---

## 🗂️ Esquema: `enrollments_general`

### Tabla: `Fact_Enrollments`

| Clave | Campo        | Tipo de dato    | NULL / NOT NULL | UNIQUE | Descripción                                 |
|-------|--------------|------------------|------------------|--------|---------------------------------------------|
| PK    | Enrollment_Id| INT              | NOT NULL         |        | Identificador de la inscripción             |
| FK    | Student_Id   | INT              | NOT NULL         |        | Relación al estudiante                      |
| FK    | Course_Id    | INT              | NOT NULL         |        | Relación al curso                           |
| FK    | Status_Id    | INT              | NOT NULL         |        | Relación al estado                          |
|       | Enrolled_At  | DATE             | NOT NULL         |        | Fecha de inscripción                        |
|       | Exam1        | TINYINT          | NOT NULL         |        | Nota del primer examen                      |
|       | Exam2        | TINYINT          | NOT NULL         |        | Nota del segundo examen                     |
|       | Participation| TINYINT          | NOT NULL         |        | Participación en clase                      |
|       | Attendance   | TINYINT          | NOT NULL         |        | Asistencia general                          |
|       | Final_Grade  | DECIMAL(4,2)     | Computada        |        | Nota final computada                        |

---

### Tabla: `Dim_Status`

| Clave | Campo     | Tipo de dato   | NULL / NOT NULL | UNIQUE | Descripción                      |
|-------|-----------|----------------|------------------|--------|----------------------------------|
| PK    | Status_Id | INT            | NOT NULL         |        | Identificador del estado         |
|       | Name      | NVARCHAR(20)   | NOT NULL         | ✅     | Estado del curso (activo, etc.)  |