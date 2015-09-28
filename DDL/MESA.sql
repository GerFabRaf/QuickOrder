-- Table quickorder.MESA

CREATE TABLE "quickorder"."MESA"(
 "MESA_ID" Character(20) NOT NULL,
 "NEGOCIO_ID" Integer NOT NULL,
 "FUMAR" Character(1) DEFAULT 'N' NOT NULL,
 "CAPACIDAD_ESTIMADA" Integer NOT NULL,
 "VIRTUAL" Character(1) NOT NULL
)
TABLESPACE "ts_quickorder"
;

-- Create indexes for table quickorder.MESA

CREATE INDEX "IDX_NEGOCIO_MESA" ON "quickorder"."MESA" ("NEGOCIO_ID")
;

-- Add keys for table quickorder.MESA

ALTER TABLE "quickorder"."MESA" ADD CONSTRAINT "IDXPK_MESA" PRIMARY KEY ("MESA_ID")
;

-- Create triggers for table quickorder.MESA

CREATE TRIGGER "T_AUDIT_MESA_INS"
  AFTER
  ON "quickorder"."MESA" FOR EACH STATEMENT()
;

CREATE TRIGGER "T_AUDIT_MESA_UPD"
  AFTER
  ON "quickorder"."MESA" FOR EACH STATEMENT()
;

CREATE TRIGGER "T_AUDIT_MESA_DEL"
  AFTER
  ON "quickorder"."MESA" FOR EACH STATEMENT()
;