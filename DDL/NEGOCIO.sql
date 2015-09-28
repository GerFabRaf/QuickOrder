-- Table quickorder.NEGOCIO

CREATE TABLE "quickorder"."NEGOCIO"(
 "NEGOCIO_ID" Integer DEFAULT nextval('Seq_NEGOCIO_NEGOCIO_ID') NOT NULL,
 "NOMBRE_NEGOCIO" Character varying(100) NOT NULL,
 "LOGO" Bytea,
 "TELEFONO" Character varying(20) NOT NULL,
 "TELEFONO2" Character varying(20),
 "DIRECCION" Character varying(100) NOT NULL,
 "EMAIL" Character varying(50) NOT NULL,
 "WEB" Character varying(100),
 "FACEBOOK" Character varying(100),
 "INACTIVO" Character(1) DEFAULT 'N' NOT NULL,
 "TERMINADO" Character(1) DEFAULT 'N' NOT NULL,
 "FECHA_ALTA" Timestamp NOT NULL,
 "FECHA_DESACTIVACION" Timestamp,
 "FECHA_TERMINACION" Timestamp,
 "COMENTARIO_TERMINACION" Character varying(20),
 "CIUDAD_ID" Integer NOT NULL,
 "NOMBRE_CONTACTO" Character varying(100) NOT NULL,
 "DIRECCION_CONTACTO" Character varying(100) NOT NULL,
 "TELEFONO_CONTACTO" Character varying(20) NOT NULL,
 "CELULAR_CONTACTO" Character varying(20),
 "EMAIL_CONTACTO" Character varying(50) NOT NULL,
 "CIUDAD_ID_CONTACTO" Integer NOT NULL
)
TABLESPACE "ts_quickorder"
;

COMMENT ON TABLE "quickorder"."NEGOCIO" IS 'Catálogo de negocios'
;
COMMENT ON COLUMN "quickorder"."NEGOCIO"."NEGOCIO_ID" IS 'Llave primaria de negocio'
;
COMMENT ON COLUMN "quickorder"."NEGOCIO"."WEB" IS 'Página web de un negócio'
;
COMMENT ON COLUMN "quickorder"."NEGOCIO"."FACEBOOK" IS 'Dirección de Facebook'
;
COMMENT ON COLUMN "quickorder"."NEGOCIO"."INACTIVO" IS 'Negocio inactivo en QuickOrder'
;
COMMENT ON COLUMN "quickorder"."NEGOCIO"."TERMINADO" IS 'Negocio dado de baja de Quick Order'
;
COMMENT ON COLUMN "quickorder"."NEGOCIO"."FECHA_DESACTIVACION" IS 'Fecha en que un negocio fue marcado como inactivo'
;
COMMENT ON COLUMN "quickorder"."NEGOCIO"."FECHA_TERMINACION" IS 'Fecha en que un negocio fue dado de baja'
;

-- Create indexes for table quickorder.NEGOCIO

CREATE INDEX "IDX_NEGOCIO_CIUDAD" ON "quickorder"."NEGOCIO" ("CIUDAD_ID")
;

CREATE INDEX "IDX_NEGOCIO_NOMBRE" ON "quickorder"."NEGOCIO" ("NOMBRE_NEGOCIO")
;

CREATE INDEX "IDX_NEGOCIO_EMAIL" ON "quickorder"."NEGOCIO" ("EMAIL")
;

CREATE INDEX "IDX_NEGOCIO_CONTACTO" ON "quickorder"."NEGOCIO" ("NOMBRE_CONTACTO")
;

CREATE INDEX "IDX_NEGOCIO_CONTACTO_EMAIL" ON "quickorder"."NEGOCIO" ("EMAIL_CONTACTO")
;

CREATE INDEX "IDX_NEGOCIO_CIUDAD_CONTACTO" ON "quickorder"."NEGOCIO" ("CIUDAD_ID_CONTACTO")
;

-- Add keys for table quickorder.NEGOCIO

ALTER TABLE "quickorder"."NEGOCIO" ADD CONSTRAINT "IDXPK_NEGOCIO" PRIMARY KEY ("NEGOCIO_ID")
;

-- Create triggers for table quickorder.NEGOCIO

CREATE TRIGGER "T_AUDIT_NEGOCIO_INS"
  AFTER
  ON "quickorder"."NEGOCIO" FOR EACH STATEMENT()
;

CREATE TRIGGER "T_AUDIT_NEGOCIO_UPD"
  AFTER
  ON "quickorder"."NEGOCIO" FOR EACH STATEMENT()
;

CREATE TRIGGER "T_AUDIT_NEGOCIO_DEL"
  AFTER
  ON "quickorder"."NEGOCIO" FOR EACH STATEMENT()
;