-- Table quickorder.TABLA

CREATE TABLE "quickorder"."TABLA"(
 "TABLA_ID" Integer DEFAULT nextval('Seq_TABLA_TABLA_ID') NOT NULL,
 "NOMBRE_TABLA" Character varying(40) NOT NULL,
 "DESCRIPCION_TABLA" Character varying(100)
)
TABLESPACE "ts_quickorder"
;

-- Add keys for table quickorder.TABLA

ALTER TABLE "quickorder"."TABLA" ADD CONSTRAINT "IDXPK_TABLAS" PRIMARY KEY ("TABLA_ID")
;

ALTER TABLE "quickorder"."TABLA" ADD CONSTRAINT "IDXU_NOMBRE_TABLA" UNIQUE ("NOMBRE_TABLA")
;