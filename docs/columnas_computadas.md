# 🧮 Columnas Computadas

Este documento describe las **columnas computadas** del sistema de cálculo de calificaciones.  
En SQL Server, una columna computada es aquella cuyo valor se genera automáticamente a partir de una expresión o combinación de otras columnas.

📌 En este proyecto, las columnas computadas son utilizadas para **automatizar el cálculo de la nota final** de cada estudiante, evitando cálculos manuales en las consultas y garantizando consistencia en los resultados.

---

## 🗂️ Esquema: `enrollments_general`

### Tabla: `Fact_Enrollments`

| Campo       | Tipo de dato   | Estado    | Descripción                                                                 |
|-------------|---------------|-----------|-----------------------------------------------------------------------------|
| Final_Grade | DECIMAL(4,2)  | Computada | Nota final calculada a partir de `Exam1`, `Exam2`, `Participation` y `Attendance`. PERSISTED para optimizar consultas. |

---

## ⚙️ Lógica de cálculo

```sql
ALTER TABLE enrollments_general.Fact_Enrollments
ADD Final_Grade AS 
    ((Exam1 * 0.40) + (Exam2 * 0.40) + (Participation * 0.10) + (Attendance * 0.10))
    PERSISTED;