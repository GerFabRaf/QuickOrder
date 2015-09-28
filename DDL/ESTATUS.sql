-- Table quickorder.ESTATUS

CREATE TABLE "quickorder"."ESTATUS"(
 "ESTATUS_ID" Integer DEFAULT nextval('Seq_ESTATUS_ESTATUS_ID') NOT NULL,
 "ESTATUS_DESC" Character varying(20) NOT NULL,
 "TIPO_ESTATUS" Character varying(20)
)
TABLESPACE "ts_quickorder"
;

-- Add keys for table quickorder.ESTATUS

ALTER TABLE "quickorder"."ESTATUS" ADD CONSTRAINT "IDXPK_ESTATUS" PRIMARY KEY ("ESTATUS_ID")
;

-- Create triggers for table quickorder.ESTATUS

CREATE TRIGGER "T_AUDIT_ESTATUS_INS"
  AFTER
  ON "quickorder"."ESTATUS" FOR EACH STATEMENT()
;

CREATE TRIGGER "T_AUDIT_ESTATUS_UPD"
  AFTER
  ON "quickorder"."ESTATUS" FOR EACH STATEMENT()
;

CREATE TRIGGER "T_AUDIT_ESTATUS_DEL"
  AFTER
  ON "quickorder"."ESTATUS" FOR EACH STATEMENT()
;