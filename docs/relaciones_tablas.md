# 🔗 Relaciones entre Tablas

Este documento describe las relaciones entre las tablas del sistema, indicando:
- Cardinalidad.
- Campos vinculados (FK → PK).
- Acciones de integridad referencial (`ON DELETE`, `ON UPDATE`).
- Justificación de negocio.

---

## 📊 Resumen de Relaciones

| # | Tabla Hija (col)                                       | Tabla Padre (col)                          | Cardinalidad | Descripción de Negocio                                                   |
|---|--------------------------------------------------------|---------------------------------------------|--------------|---------------------------------------------------------------------------|
| 1 | enrollments_general.Fact_Enrollments.Dim_Student_Id    | student_management.Dim_Students.Student_Id  | 1:N          | Un estudiante puede inscribirse en varios cursos.                         |
| 2 | enrollments_general.Fact_Enrollments.Dim_Course_Id     | course_catalog.Dim_Courses.Course_Id        | 1:N          | Un curso puede contener muchos estudiantes.                               |
| 3 | enrollments_general.Fact_Enrollments.Sub_Dim_Status_Id | enrollments_general.Dim_Status.Status_Id    | N:1          | Una inscripción puede tener diferentes estados según la relación con el curso. |

---

## ⚖ Acciones FK y Justificación

| FK Name                              | Tabla Hija       | Tabla Padre    | ON DELETE  | ON UPDATE  | Justificación                                                                                                 |
|--------------------------------------|------------------|----------------|------------|------------|-----------------------------------------------------------------------------------------------------------------|
| `fk_Enrollments_Student_Id_Students` | Fact_Enrollments | Dim_Students   | NO ACTION  | NO ACTION  | Proteger el historial académico. Eliminar un estudiante no debe afectar las inscripciones existentes.          |
| `fk_Enrollments_Course_Id_Courses`   | Fact_Enrollments | Dim_Courses    | NO ACTION  | NO ACTION  | Conservar el historial de inscripciones aunque un curso sea eliminado.                                         |
| `fk_Enrollments_Status_Id_Status`    | Fact_Enrollments | Dim_Sub_Status | NO ACTION  | NO ACTION  | El catálogo de estados es fijo. No debe permitir eliminaciones en cascada para preservar la integridad de datos.|

---

## 🗒 Notas
- Usar **NO ACTION** cuando se deba preservar historial y auditoría.  
- Usar **CASCADE** solo cuando los registros hijos no tengan sentido sin el padre.  
- Usar **SET NULL** cuando el registro hijo pueda existir sin la relación directa, pero sin borrar la fila.  
- Todas las FKs deben tener **índices no clustered** para optimizar búsquedas y operaciones `JOIN`.  