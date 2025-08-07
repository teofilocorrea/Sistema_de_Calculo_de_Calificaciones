# 📐 Diagrama Lógico — AcademicNotes

![Diagrama Logico](img/diagrama_logico_sistema_calculo_calificaciones.png)

Este documento representa la estructura lógica del sistema, enfocada en la automatización del cálculo de calificaciones. A diferencia de un modelo académico completo, aquí se priorizan los componentes necesarios para aplicar y demostrar el uso de **columnas computadas** en SQL Server.

---

## 🧩 Entidades y tipos de datos base

## 📂 Esquema: `student_management`

### 🧑‍🎓 Dim_Students

| Campo        | Tipo de Dato  | Descripción                            |
|--------------|----------------|----------------------------------------|
| Student_Id   | INT            | Identificador único del estudiante     |
| First_Name   | NVARCHAR(50)   | Primer nombre                          |
| Last_Name    | NVARCHAR(60)   | Apellido                               |
| Email        | NVARCHAR(100)  | Correo electrónico                     |
| BirthDate    | DATE           | Fecha de nacimiento                    |
| Is_Active    | BIT            | Estado activo/inactivo                 |
| Created_At   | DATETIME2      | Fecha de creación del registro         |

---

## 📂 Esquema: `course_catalog`

### 📚 Dim_Courses

| Campo      | Tipo de Dato    | Descripción                             |
|------------|------------------|-----------------------------------------|
| Course_Id  | INT              | Identificador único del curso           |
| Title      | NVARCHAR(100)    | Nombre del curso                        |
| Code       | NVARCHAR(20)     | Código del curso                        |
| Credits    | TINYINT          | Créditos académicos                     |
| Is_Active  | BIT              | Estado activo/inactivo del curso        |

---


## 📂 Esquema: `enrollments_general`

### 🧾 Fact_Enrollments (Tabla Core)

| Campo         | Tipo de Dato     | Descripción                              |
|---------------|------------------|------------------------------------------|
| Enrollment_Id | INT              | Identificador de inscripción             |
| Student_Id    | INT              | FK al estudiante                         |
| Course_Id     | INT              | FK al curso                              |
| Status_Id     | INT              | FK Estado de la inscripción              |
| Enrolled_At   | DATE             | Fecha de inscripción                     |
| Exam1         | TINYINT          | Calificación examen 1 (0–100)            |
| Exam2         | TINYINT          | Calificación examen 2 (0–100)            |
| Participation | TINYINT          | Participación (0–100)                    |
| Attendance    | TINYINT          | Asistencia (0–100)                       |
| Final_Grade   | DECIMAL(4,2)     | ⭐ Columna computada: nota final ponderada |

## 📂 Esquema: `enrollments_general`

###  Dim_Status

| Columna     | Tipo de dato | Descripción                            |
|-------------|--------------|----------------------------------------|
| Status_Id   | INT (PK)     | Identificador del estado               |
| Name        | NVARCHAR(20) | Nombre del estado (activo, retirado…) |

> 🧮 La columna `Final_Grade` será calculada automáticamente con base en los otros valores y puede ser `PERSISTED` para indexación y eficiencia.

---

## 🔗 Relaciones principales

- Un `Student` puede tener muchas `Enrollments`.
- Un `Course` puede estar asociado a muchas `Enrollments`.