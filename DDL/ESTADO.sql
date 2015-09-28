-- Table quickorder.ESTADO

CREATE TABLE "quickorder"."ESTADO"(
 "ESTADO_ID" Integer DEFAULT nextval('Seq_ESTADO_ESTADO_ID') NOT NULL,
 "PAIS_ID" Integer NOT NULL,
 "ESTADO_NOMBRE" Character varying(50) NOT NULL,
 "ABREVIACION" Character varying(20) NOT NULL
)
TABLESPACE "ts_quickorder"
;
COMMENT ON COLUMN "quickorder"."ESTADO"."ESTADO_ID" IS 'Identificador de estado de la república'
;

-- Create indexes for table quickorder.ESTADO

CREATE INDEX "IDX_ESTADO_NOMBRE" ON "quickorder"."ESTADO" ("ESTADO_NOMBRE")
;

CREATE UNIQUE INDEX "IDX_ESTADO_ABREVIACION" ON "quickorder"."ESTADO" ("PAIS_ID","ABREVIACION")
;

CREATE INDEX "IDX_ESTADO_PAIS" ON "quickorder"."ESTADO" ("PAIS_ID")
;

-- Add keys for table quickorder.ESTADO

ALTER TABLE "quickorder"."ESTADO" ADD CONSTRAINT "IDXPK_ESTADO" PRIMARY KEY ("ESTADO_ID")
;

-- Create triggers for table quickorder.ESTADO

CREATE TRIGGER "T_AUDIT_ESTADO_IND"
  AFTER
  ON "quickorder"."ESTADO" FOR EACH STATEMENT()
;

CREATE TRIGGER "T_AUDIT_ESTADO_UPD"
  AFTER
  ON "quickorder"."ESTADO" FOR EACH STATEMENT()
;

CREATE TRIGGER "T_AUDIT_ESTADO_DEL"
  AFTER
  ON "quickorder"."ESTADO" FOR EACH STATEMENT()
;