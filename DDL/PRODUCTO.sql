-- Table quickorder.PRODUCTO

CREATE TABLE "quickorder"."PRODUCTO"(
 "PRODUCTO_ID" Integer DEFAULT nextval('Seq_PRODUCTO_PRODUCTO_ID') NOT NULL,
 "MENU_ID" Integer NOT NULL,
 "NOMBRE" Character varying(30) NOT NULL,
 "DESCRIPCION" Character varying(20) NOT NULL,
 "FOTO" Bytea NOT NULL,
 "PRECIO" Integer NOT NULL,
 "DISPONIBLE" Character(1) NOT NULL
)
TABLESPACE "ts_quickorder"
;

-- Create indexes for table quickorder.PRODUCTO

CREATE INDEX "IDX_MENU_PRODUCTO" ON "quickorder"."PRODUCTO" ("MENU_ID")
;

-- Add keys for table quickorder.PRODUCTO

ALTER TABLE "quickorder"."PRODUCTO" ADD CONSTRAINT "IDXPK_PRODUCTO" PRIMARY KEY ("PRODUCTO_ID")
;

-- Create triggers for table quickorder.PRODUCTO

CREATE TRIGGER "T_AUDIT_PRODUCTO_INS"
  AFTER
  ON "quickorder"."PRODUCTO" FOR EACH STATEMENT()
;

CREATE TRIGGER "T_AUDIT_PRODUCTO_UPD"
  AFTER
  ON "quickorder"."PRODUCTO" FOR EACH STATEMENT()
;

CREATE TRIGGER "T_AUDIT_PRODUCTO_DEL"
  AFTER
  ON "quickorder"."PRODUCTO" FOR EACH STATEMENT()
;