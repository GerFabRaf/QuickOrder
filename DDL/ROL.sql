-- Table quickorder.ROL

CREATE TABLE "quickorder"."ROL"(
 "ROL_ID" Integer DEFAULT nextval('Seq_ROL_ROL_ID') NOT NULL,
 "ROL_DESCRIPCION" Character varying(50) NOT NULL
)
TABLESPACE "ts_quickorder"
;

-- Add keys for table quickorder.ROL

ALTER TABLE "quickorder"."ROL" ADD CONSTRAINT "IDXPK_ROL" PRIMARY KEY ("ROL_ID")
;

-- Create triggers for table quickorder.ROL

CREATE TRIGGER "T_AUDIT_ROL_INS"
  AFTER
  ON "quickorder"."ROL" FOR EACH STATEMENT()
;

CREATE TRIGGER "T_AUDIT_ROL_UPD"
  AFTER
  ON "quickorder"."ROL" FOR EACH STATEMENT()
;

CREATE TRIGGER "T_AUDIT_ROL_DEL"
  AFTER
  ON "quickorder"."ROL" FOR EACH STATEMENT()
;