# 🔗 Relaciones entre Tablas

Este documento describe las relaciones entre las entidades del sistema, clasificándolas en **internas** (dentro del mismo proceso lógico) y **externas** (conexiones a entidades auxiliares). Cada relación incluye su acción `ON DELETE` recomendada y una justificación técnica.

---

## 🧩 Relaciones Internas

### 🔄 `Fact_Enrollments` → `Dim_Status`

| Relación                        | Acción FK            | Justificación                                                                 |
|--------------------------------|----------------------|-------------------------------------------------------------------------------|
| `fk_Enrollments_Status_Id_Status` | `ON DELETE NO ACTION` | El catálogo de estados es fijo. No debe permitir cascadas al eliminar valores.|

---

## 🌐 Relaciones Externas

### 🧮 `Fact_Enrollments` → `Dim_Courses`

| Relación                        | Acción FK            | Justificación                                                                 |
|--------------------------------|----------------------|-------------------------------------------------------------------------------|
| `fk_Enrollments_Course_Id_Courses` | `ON DELETE NO ACTION` | Se requiere conservar el historial de inscripción aunque un curso se elimine.|

### 👤 `Fact_Enrollments` → `Dim_Students`

| Relación                        | Acción FK            | Justificación                                                                 |
|--------------------------------|----------------------|-------------------------------------------------------------------------------|
| `fk_Enrollments_Student_Id_Students` | `ON DELETE NO ACTION` | Proteger el historial académico. Eliminar un estudiante no debe afectar las inscripciones existentes.|

---

📌 Todas las claves foráneas siguen un formato estándar:  
`fk_<TablaHija>_<CampoFK>_<TablaPadre>`  
Esto facilita trazabilidad, lectura rápida y mantenimiento del modelo.