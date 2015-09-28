-- Table quickorder.EMPLEADO

CREATE TABLE "quickorder"."EMPLEADO"(
 "EMPLEADO_ID" Integer DEFAULT nextval('Seq_EMPLEADO_EMPLEADO_ID') NOT NULL,
 "NEGOCIO_ID" Integer NOT NULL,
 "ROL_ID" Integer NOT NULL,
 "PASSWORD" Character varying(50),
 "NOMBRE" Character varying(50) NOT NULL,
 "APELLIDO" Character varying(50) NOT NULL,
 "EMAIL" Character varying(50) NOT NULL,
 "FOTO" Bytea NOT NULL,
 "DIRECCION" Character varying(100) NOT NULL,
 "TELEFONO" Character varying(20) NOT NULL,
 "ACTIVO" Character(1) NOT NULL,
 "TERMINADO" Character(1) NOT NULL,
 "FECHA_ALTA" Date NOT NULL,
 "FEACH_DESACTIVACION" Date,
 "FECHA_TERMINACION" Date
)
TABLESPACE "ts_quickorder"
;
COMMENT ON COLUMN "quickorder"."EMPLEADO"."EMPLEADO_ID" IS 'Identificador de usuario'
;

-- Create indexes for table quickorder.EMPLEADO

CREATE INDEX "IDX_EMPLEADO_ROL" ON "quickorder"."EMPLEADO" ("ROL_ID")
;

CREATE INDEX "IDX_NEGOCIO_EMPLEADO" ON "quickorder"."EMPLEADO" ("NEGOCIO_ID")
;

-- Add keys for table quickorder.EMPLEADO

ALTER TABLE "quickorder"."EMPLEADO" ADD CONSTRAINT "IDXPK_EMPLEADO" PRIMARY KEY ("EMPLEADO_ID")
;

-- Create triggers for table quickorder.EMPLEADO

CREATE TRIGGER "T_AUDIT_EMPLEADO_INS"
  AFTER
  ON "quickorder"."EMPLEADO" FOR EACH STATEMENT()
;

CREATE TRIGGER "T_AUDIT_EMPLEADO_UPD"
  AFTER
  ON "quickorder"."EMPLEADO" FOR EACH STATEMENT()
;

CREATE TRIGGER "T_AUDIT_EMPLEADO_DEL"
  AFTER
  ON "quickorder"."EMPLEADO" FOR EACH STATEMENT()
;