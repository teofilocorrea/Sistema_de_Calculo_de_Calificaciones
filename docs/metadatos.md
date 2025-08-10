# 📝 Documentación de Comentarios (Extended Properties)

Este documento define las propiedades extendidas (`MS_Description`) para las **bases de datos**, **esquemas**, **tablas** y **columnas** del **Sistema de Cálculo de Calificaciones**.

---

## 🗄️ Base de datos

| Objeto | Descripción |
|--------|-------------|
| AcademicSystem | Base de datos que almacena toda la información del Sistema de Cálculo de Calificaciones. |

---

## 📂 Esquemas

| Esquema | Descripción |
|---------|-------------|
| student_management | Esquema que gestiona toda la información de los estudiantes. |
| course_catalog | Esquema que almacena el catálogo de cursos disponibles en el sistema. |
| enrollments_general | Esquema que centraliza las inscripciones y su relación con estudiantes, cursos y estados. |

---

## 🗂️ Tablas y Columnas

### 📄 Tabla: `student_management.Dim_Students`
| Campo       | Descripción |
|-------------|-------------|
| Student_Id  | Identificador único del estudiante en `student_management.Dim_Students` de la base `AcademicSystem`. |
| First_Name  | Primer nombre del estudiante en `student_management.Dim_Students` de la base `AcademicSystem`. |
| Last_Name   | Apellido del estudiante en `student_management.Dim_Students` de la base `AcademicSystem`. |
| Email       | Correo institucional o personal del estudiante en `student_management.Dim_Students` de la base `AcademicSystem`. |
| BirthDate   | Fecha de nacimiento del estudiante en `student_management.Dim_Students` de la base `AcademicSystem`. |
| Is_Active   | Estado activo o inactivo del estudiante en `student_management.Dim_Students` de la base `AcademicSystem`. |
| Created_At  | Fecha de registro del estudiante en `student_management.Dim_Students` de la base `AcademicSystem`. |

---

### 📄 Tabla: `course_catalog.Dim_Courses`
| Campo     | Descripción |
|-----------|-------------|
| Course_Id | Identificador único del curso en `course_catalog.Dim_Courses` de la base `AcademicSystem`. |
| Title     | Nombre del curso en `course_catalog.Dim_Courses` de la base `AcademicSystem`. |
| Code      | Código académico único del curso en `course_catalog.Dim_Courses` de la base `AcademicSystem`. |
| Credits   | Créditos asignados al curso en `course_catalog.Dim_Courses` de la base `AcademicSystem`. |
| Is_Active | Estado activo o inactivo del curso en `course_catalog.Dim_Courses` de la base `AcademicSystem`. |

---

### 📄 Tabla: `enrollments_general.Fact_Enrollments`
| Campo         | Descripción |
|---------------|-------------|
| Enrollment_Id | Identificador único de la inscripción en `enrollments_general.Fact_Enrollments` de la base `AcademicSystem`. |
| Student_Id    | Relación con el estudiante en `enrollments_general.Fact_Enrollments` de la base `AcademicSystem`. |
| Course_Id     | Relación con el curso en `enrollments_general.Fact_Enrollments` de la base `AcademicSystem`. |
| Status_Id     | Relación con el estado en `enrollments_general.Fact_Enrollments` de la base `AcademicSystem`. |
| Enrolled_At   | Fecha de inscripción en `enrollments_general.Fact_Enrollments` de la base `AcademicSystem`. |
| Exam1         | Nota del primer examen en `enrollments_general.Fact_Enrollments` de la base `AcademicSystem`. |
| Exam2         | Nota del segundo examen en `enrollments_general.Fact_Enrollments` de la base `AcademicSystem`. |
| Participation | Puntuación de participación en `enrollments_general.Fact_Enrollments` de la base `AcademicSystem`. |
| Attendance    | Puntuación de asistencia en `enrollments_general.Fact_Enrollments` de la base `AcademicSystem`. |
| Final_Grade   | Nota final calculada en `enrollments_general.Fact_Enrollments` de la base `AcademicSystem`. |

---

### 📄 Tabla: `enrollments_general.Dim_Status`
| Campo     | Descripción |
|-----------|-------------|
| Status_Id | Identificador único del estado en `enrollments_general.Dim_Status` de la base `AcademicSystem`. |
| Name      | Nombre del estado en `enrollments_general.Dim_Status` de la base `AcademicSystem`. |