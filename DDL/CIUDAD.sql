-- Table quickorder.CIUDAD

CREATE TABLE "quickorder"."CIUDAD"(
 "CIUDAD_ID" Integer DEFAULT nextval('Seq_CIUDAD_CIUDAD_ID') NOT NULL,
 "ESTADO_ID" Integer NOT NULL,
 "NOMBRE_CIUDAD" Character varying(50) NOT NULL,
 "ABREVIACION" Character varying(5) NOT NULL
)
TABLESPACE "ts_quickorder"
;
COMMENT ON COLUMN "quickorder"."CIUDAD"."CIUDAD_ID" IS 'Identificador de ciudad'
;

-- Create indexes for table quickorder.CIUDAD

CREATE INDEX "IDX_NOMBRE_CIUDAD" ON "quickorder"."CIUDAD" ("NOMBRE_CIUDAD")
;

CREATE INDEX "IX_R_ESTADO_CIUDAD" ON "quickorder"."CIUDAD" ("ESTADO_ID")
;

-- Add keys for table quickorder.CIUDAD

ALTER TABLE "quickorder"."CIUDAD" ADD CONSTRAINT "IDXPK_CIUDAD" PRIMARY KEY ("CIUDAD_ID")
;

-- Create triggers for table quickorder.CIUDAD

CREATE TRIGGER "T_AUDIT_CIUDAD_INS"
  AFTER
  ON "quickorder"."CIUDAD" FOR EACH STATEMENT()
;

CREATE TRIGGER "T_AUDIT_CIUDAD_UPD"
  AFTER
  ON "quickorder"."CIUDAD" FOR EACH STATEMENT()
;

CREATE TRIGGER "T_AUDIT_CIUDAD_DEL"
  AFTER
  ON "quickorder"."CIUDAD" FOR EACH STATEMENT()
;