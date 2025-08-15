# 🔒 Estrategia de Seguridad y Metadatos

Este documento describe las medidas de seguridad implementadas sobre los datos y la documentación asociada, con el objetivo de garantizar **trazabilidad**, **confidencialidad** y **facilidad de mantenimiento**.

---

## 🛡 Estrategia de Seguridad

### 1. Clasificación de Datos Sensibles

#### `student_management.Dim_Students`
| Esquema            | Tabla         | Columna     | Sensibilidad | Justificación                                      |
|--------------------|---------------|-------------|--------------|----------------------------------------------------|
| student_management | Dim_Students  | Email       | Alta         | Contiene los correos electrónicos personales de los estudiantes. |
| student_management | Dim_Students  | BirthDate   | Media        | Contiene la fecha de nacimiento del estudiante.    |
| student_management | Dim_Students  | First_Name  | Baja         | Contiene el primer nombre del estudiante.          |
| student_management | Dim_Students  | Last_Name   | Baja         | Contiene el apellido del estudiante.               |

#### `course_catalog.Dim_Courses`
| Esquema         | Tabla        | Columna | Sensibilidad | Justificación                        |
|-----------------|--------------|---------|--------------|----------------------------------------|
| course_catalog  | Dim_Courses  | Code    | Baja         | Contiene el código del curso.          |

#### `enrollments_general.Fact_Enrollments`
| Esquema             | Tabla            | Columna     | Sensibilidad | Justificación                            |
|---------------------|------------------|-------------|--------------|-------------------------------------------|
| enrollments_general | Fact_Enrollments | Final_Grade | Media        | Contiene la calificación final del curso. |

> **Niveles sugeridos**:  
> - **Alta**: Datos personales, financieros, médicos o credenciales.  
> - **Media**: Información interna que no es pública, pero no es crítica.  
> - **Baja**: Datos públicos o no sensibles.

---

### 2. Dynamic Data Masking (DDM)

#### `Dim_Students`
| Tabla        | Columna   | Tipo de Enmascaramiento | Ejemplo de Salida |
|--------------|-----------|-------------------------|-------------------|
| Dim_Students | Email     | `email()`               | T***@***o.com     |
| Dim_Students | BirthDate | `partial()`             | XXXX-XX-XX        |

#### `Fact_Enrollments`
| Tabla            | Columna     | Tipo de Enmascaramiento | Ejemplo de Salida |
|------------------|-------------|-------------------------|-------------------|
| Fact_Enrollments | Final_Grade | `default()`             | 0                 |

**Ejemplo SQL:**
```sql
ALTER TABLE [schema].[table]
ALTER COLUMN [Sensitive_Column] ADD MASKED 
WITH (FUNCTION = 'partial(1,"XXXXXXX",0)');