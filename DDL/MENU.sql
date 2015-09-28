-- Table quickorder.MENU

CREATE TABLE "quickorder"."MENU"(
 "MENU_ID" Integer DEFAULT nextval('Seq_MENU_MENU_ID') NOT NULL,
 "NEGOCIO_ID" Integer NOT NULL,
 "MENU_DESCRIPCION" Character varying(30) NOT NULL,
 "INACTIVO" Character(1),
 "FECHA_ALTA" Timestamp,
 "FECHA_DESACTIVACION" Timestamp
)
TABLESPACE "ts_quickorder"
;

-- Create indexes for table quickorder.MENU

CREATE INDEX "IDX_NEGOCIO_MENU" ON "quickorder"."MENU" ("NEGOCIO_ID")
;

-- Add keys for table quickorder.MENU

ALTER TABLE "quickorder"."MENU" ADD CONSTRAINT "IDXPK_MENU" PRIMARY KEY ("MENU_ID")
;

-- Create triggers for table quickorder.MENU

CREATE TRIGGER "T_AUDIT_MENU_INS"
  AFTER
  ON "quickorder"."MENU" FOR EACH STATEMENT()
;

CREATE TRIGGER "T_AUDIT_MENU_UPD"
  AFTER
  ON "quickorder"."MENU" FOR EACH STATEMENT()
;

CREATE TRIGGER "T_AUDIT_MENU_DEL"
  AFTER
  ON "quickorder"."MENU" FOR EACH STATEMENT()
;