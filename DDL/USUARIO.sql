-- Table quickorder.USUARIO

CREATE TABLE "quickorder"."USUARIO"(
 "USUARIO_ID" Integer DEFAULT nextval('Seq_USUARIO_USUARIO_ID') NOT NULL,
 "EMAIL_USAURIO" Character varying(50) NOT NULL,
 "PASSWORD" Character varying(50) NOT NULL,
 "INACTIVO" Character(1) DEFAULT 'N' NOT NULL,
 "TERMINADO" Character(1) DEFAULT 'N' NOT NULL,
 "FECHA_ALTA" Timestamp,
 "FECHA_DESACTIVACION" Timestamp,
 "FECHA_TERMINACION" Timestamp,
 "EDAD" Integer NOT NULL,
 "SEXO" Character(1) NOT NULL,
 "CIUDAD_ID" Integer NOT NULL
)
TABLESPACE "ts_quickorder"
;
COMMENT ON COLUMN "quickorder"."USUARIO"."USUARIO_ID" IS 'Identificador usuario'
;

-- Create indexes for table quickorder.USUARIO

CREATE INDEX "IDX_USUARIO_CIUDAD" ON "quickorder"."USUARIO" ("CIUDAD_ID")
;

-- Add keys for table quickorder.USUARIO

ALTER TABLE "quickorder"."USUARIO" ADD CONSTRAINT "IDXPK_USUARIO" PRIMARY KEY ("USUARIO_ID")
;

ALTER TABLE "quickorder"."USUARIO" ADD CONSTRAINT "IDXU_EMAIL_USAURIO" UNIQUE ("EMAIL_USAURIO")
;