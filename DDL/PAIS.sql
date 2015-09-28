-- Table quickorder.PAIS

CREATE TABLE "quickorder"."PAIS"(
 "PAIS_ID" Integer DEFAULT nextval('Seq_PAIS_PAIS_ID') NOT NULL,
 "MONEDA_ID" Integer NOT NULL,
 "PAIS_NOMBRE" Character varying(50) NOT NULL,
 "CODIGO_ISO" Character varying(10) NOT NULL
)
TABLESPACE "ts_quickorder"
;

COMMENT ON TABLE "quickorder"."PAIS" IS 'Catálogo de países'
;

-- Create indexes for table quickorder.PAIS

CREATE INDEX "IDX_PAIS_NOMBRE" ON "quickorder"."PAIS" ("PAIS_NOMBRE")
;

CREATE INDEX "IDX_PAIS_MONEDA" ON "quickorder"."PAIS" ("MONEDA_ID")
;

-- Add keys for table quickorder.PAIS

ALTER TABLE "quickorder"."PAIS" ADD CONSTRAINT "IDXPK_PAIS" PRIMARY KEY ("PAIS_ID")
;

ALTER TABLE "quickorder"."PAIS" ADD CONSTRAINT "IDXU_CODIGO_ISO" UNIQUE ("CODIGO_ISO")
;

-- Create triggers for table quickorder.PAIS

CREATE TRIGGER "T_AUDIT_PAIS_INS"
  AFTER
  ON "quickorder"."PAIS" FOR EACH STATEMENT()
;

CREATE TRIGGER "T_AUDIT_PAIS_UPD"
  AFTER
  ON "quickorder"."PAIS" FOR EACH STATEMENT()
;

CREATE TRIGGER "T_AUDIT_PAIS_DEL"
  AFTER
  ON "quickorder"."PAIS" FOR EACH STATEMENT()
;