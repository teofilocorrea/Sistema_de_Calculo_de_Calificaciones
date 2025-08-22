-- 🔁 FK DEFAULT: NO ACTION (comportamiento por defecto)
ALTER TABLE enrollments_general.Enrollments
    ADD CONSTRAINT FK_Enrollments_Status_Id
        FOREIGN KEY (Status_Id)
            REFERENCES enrollments_general.Status (Status_Id)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION;