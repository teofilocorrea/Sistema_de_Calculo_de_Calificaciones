# 🔧 Estructura Física (Campo + Restricciones)

Documento simplificado que muestra las columnas por tabla junto a su tipo de dato y dos espacios para definir restricciones CHECK personalizadas.

---

## 🗂️ Esquema: `student_management`

### Tabla: `Dim_Students`

| Campo       | Tipo de dato   | Restricción 1                            | Restricción 2 |
|-------------|----------------|------------------------------------------|----------------|
| Student_Id  | INT            |                                          |                |
| First_Name  | NVARCHAR(50)   | Solo letras latinas                      |                |
| Last_Name   | NVARCHAR(60)   | Solo letras latinas                      |                |
| Email       | NVARCHAR(100)  | Solo correo electronico                  |                |
| BirthDate   | DATE           | Validar edad entre 15 a 100              |                |
| Is_Active   | BIT            |                                          |                |
| Created_At  | DATETIME2      | Fecha de rango controlado version tiempo |                |

---

## 🗂️ Esquema: `course_catalog`

### Tabla: `Dim_Courses`

| Campo     | Tipo de dato    | Restricción 1       | Restricción 2    |
|-----------|------------------|---------------------|------------------|
| Course_Id | INT              |                     |                  |
| Title     | NVARCHAR(100)    | Solo letras latinas |                  |
| Code      | NVARCHAR(20)     | Codigo unico        | Logitud minima 5 |
| Credits   | TINYINT          | Calificación 1 a 20 |                  |
| Is_Active | BIT              |                     |                  |

---

## 🗂️ Esquema: `enrollments_general`

### Tabla: `Fact_Enrollments`

| Campo         | Tipo de dato    | Restricción 1             | Restricción 2 |
|---------------|------------------|---------------------------|----------------|
| Enrollment_Id | INT              |                           |                |
| Student_Id    | INT              |                           |                |
| Course_Id     | INT              |                           |                |
| Status_Id     | INT              |                           |                |
| Enrolled_At   | DATE             | Fecha de rango controlado |                |
| Exam1         | TINYINT          | Calificación 0 a 100      |                |
| Exam2         | TINYINT          | Calificación 0 a 100      |                |
| Participation | TINYINT          | Participacion 0 a 100     |                |
| Attendance    | TINYINT          | Calificación 0 a 100      |                |
| Final_Grade   | DECIMAL(4,2)     |                           |                |

---

### Tabla: `Dim_Status`

| Campo     | Tipo de dato   | Restricción 1      | Restricción 2 |
|-----------|----------------|--------------------|----------------|
| Status_Id | INT            |                    |                |
| Name      | NVARCHAR(20)   | Valores permitidos |                |