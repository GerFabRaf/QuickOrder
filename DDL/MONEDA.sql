-- Table quickorder.MONEDA

CREATE TABLE "quickorder"."MONEDA"(
 "MONEDA_ID" Integer DEFAULT nextval('Seq_MONEDA_MONEDA_ID') NOT NULL,
 "MONEDA_CODIGO" Character varying(5) NOT NULL,
 "MONEDA_DESCRIPCION" Character varying(50) NOT NULL
)
TABLESPACE "ts_quickorder"
;

COMMENT ON TABLE "quickorder"."MONEDA" IS 'Catálogo de monedas'
;

-- Add keys for table quickorder.MONEDA

ALTER TABLE "quickorder"."MONEDA" ADD CONSTRAINT "IDXPK_MONEDA" PRIMARY KEY ("MONEDA_ID")
;

ALTER TABLE "quickorder"."MONEDA" ADD CONSTRAINT "IDXU_MONEDA_CODIGO" UNIQUE ("MONEDA_CODIGO")
;

-- Create triggers for table quickorder.MONEDA

CREATE TRIGGER "T_AUDIT_MONEDA_INS"
  AFTER
  ON "quickorder"."MONEDA" FOR EACH STATEMENT()
;

CREATE TRIGGER "T_AUDIT_MONEDA_UPD"
  AFTER
  ON "quickorder"."MONEDA" FOR EACH STATEMENT()
;

CREATE TRIGGER "T_AUDIT_MONEDA_DEL"
  AFTER
  ON "quickorder"."MONEDA" FOR EACH STATEMENT()
;