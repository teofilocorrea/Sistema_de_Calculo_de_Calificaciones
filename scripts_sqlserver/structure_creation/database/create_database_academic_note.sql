-- ========================================
-- 01_create_database.sql
-- Crea la base de datos principal
-- Autor: Teófilo Correa Rojas
-- Fecha: Julio 30 2025
-- ========================================

CREATE DATABASE AcademicaNotes
    ON PRIMARY (
    NAME = AcademicaNotes_Data,
    FILENAME = '/var/opt/mssql/data/name_databse_Data.mdf',
    SIZE = 10 MB,
    MAXSIZE = 100 MB,
    FILEGROWTH = 5 MB
    )
    LOG ON (
    NAME = AcademicaNotes_Log,
    FILENAME = '/var/opt/mssql/data/name_databse_Log.ldf',
    SIZE = 5 MB,
    MAXSIZE = 50 MB,
    FILEGROWTH = 5 MB
    );
GO