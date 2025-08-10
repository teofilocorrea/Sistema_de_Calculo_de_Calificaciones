# 🔐 Estrategia de Seguridad y Clasificación de Datos

Este documento define la **clasificación de datos**, el uso de **Dynamic Data Masking (DDM)**, y lineamientos de acceso para el sistema de cálculo de calificaciones.

---

## 🎯 Objetivos
- Proteger datos personales y académicos.
- Estandarizar **clasificación de sensibilidad** (Labels / Information Types / Rank).
- Documentar campos con **DDM**.
- Guiar controles de acceso y auditoría básica.

---

## 🗂 Alcance
- Base de datos: `AcademicNotes`
- Esquemas: `student_management`, `course_catalog`, `enrollments_general`

---

## 🧭 Clasificación de Datos (Data Classification)

> Usa **Labels**, **Information Types** y **Rank** (LOW/MEDIUM/HIGH).  
> Completa filas según corresponda.

### `student_management.Dim_Students`

| Campo       | Information Type     | Label                      | Rank   | Notas |
|-------------|----------------------|----------------------------|--------|------|
| Email       | Email Address        | Confidential - Contact     | HIGH   |      |
| BirthDate   | Date of Birth        | Confidential - Personal    | MEDIUM |      |
| First_Name  | Name                 | Internal - Identity        | LOW    |      |
| Last_Name   | Name                 | Internal - Identity        | LOW    |      |

### `course_catalog.Dim_Courses`

| Campo  | Information Type | Label                 | Rank | Notas |
|--------|------------------|-----------------------|------|------|
| Code   | Identifier       | Internal - Catalog    | LOW  |      |

### `enrollments_general.Fact_Enrollments`

| Campo         | Information Type | Label                      | Rank   | Notas |
|---------------|------------------|----------------------------|--------|------|
| Final_Grade   | Academic Grade   | Confidential - Academic    | MEDIUM |      |

---

## 🛡️ Dynamic Data Masking (DDM)

> Registra **solo los campos a enmascarar** y la función de máscara elegida.  
> (Tú decides si aplicar `email()`, `partial()`, `default()`, `random()`).

### `student_management.Dim_Students`

| Campo     | Tipo de dato   | Función DDM          | Ejemplo visible         | Notas |
|-----------|----------------|----------------------|-------------------------|------|
| Email     | NVARCHAR(100)  | `email()`            | `j*******@dominio.com`  |      |
| BirthDate | DATE           | `partial(0,"****",0)`| `****-**-**`            | Alternativa: sin DDM si no aplica |

### `enrollments_general.Fact_Enrollments`

| Campo       | Tipo de dato  | Función DDM           | Ejemplo visible | Notas |
|-------------|---------------|-----------------------|-----------------|------|
| Final_Grade | DECIMAL(4,2)  | `default()`           | `0`             | Solo para perfiles no autorizados |

---

## 🔑 Control de Acceso (resumen)

| Rol          | Esquema(s)                          | Permisos básicos          |
|--------------|-------------------------------------|---------------------------|
| app_reader   | todos (solo vistas necesarias)      | `SELECT` sobre vistas     |
| app_writer   | `enrollments_general`               | `SELECT/INSERT/UPDATE`    |
| dba_admin    | todos                                | admin                     |

> Considera exponer tablas sensibles solo vía **views** con DDM aplicado.