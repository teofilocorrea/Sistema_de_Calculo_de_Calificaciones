# 📦 Release Notes - AcademicNotes

## 📌 Versión 1.0.0
**Fecha de publicación:** 2025-09-07  
**Responsable:** Teófilo Correa  

---

## ✨ Nuevas Funcionalidades
- Implementación de la estructura lógica de la base de datos con separación en esquemas (`student_management`, `course_catalog`, `enrollments_general`).
- Creación de tablas principales:
  - `Dim_Students`
  - `Dim_Courses`
  - `Dim_Status`
  - `Fact_Enrollments`
- Incorporación de **columna computada `Final_Grade`** para automatizar el cálculo de calificaciones.
- Definición de **claves primarias y foráneas** con justificación de acciones (`ON DELETE` / `ON UPDATE`).
- Inclusión de **metadatos descriptivos** mediante `sp_addextendedproperty`.

---

## 🔧 Mejoras
- Redacción consistente en documentación (diagramas, relaciones, seguridad).
- Uso de **índices recomendados en FK** para optimizar consultas y `JOINs`.
- Establecimiento de convenciones de nombres para tablas, columnas y constraints.

---

## 🛡 Seguridad y Cumplimiento
- Clasificación de datos sensibles (alta, media, baja).
- Aplicación de **Dynamic Data Masking (DDM)** en columnas críticas (`Email`, `BirthDate`, `Final_Grade`).
- Estrategia documentada para trazabilidad y confidencialidad.

---

## 🐞 Correcciones
- Ajustes de ortografía y consistencia en nombres de columnas (`First_Name`, `Created_At`).
- Corrección de errores en descripciones de relaciones y cardinalidad.

---

## 📖 Documentación
- **Documento Lógico**: Estructura de esquemas, tablas y columna computada.  
- **Relaciones entre Tablas**: Cardinalidad, FK y justificación de negocio.  
- **Estrategia de Seguridad y Metadatos**: Clasificación de datos sensibles, DDM y reglas de auditoría.  

---

## 🚀 Próximos Pasos
- Incorporar pruebas con datos de ejemplo (dataset académico simulado).  
- Desarrollar queries analíticas para reportes de calificaciones.  
- Explorar particionamiento de tablas para escenarios de mayor escala.  
- Implementar monitoreo de seguridad y auditoría en SQL Server.  