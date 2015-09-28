-- Table quickorder.EVALUACION

CREATE TABLE "quickorder"."EVALUACION"(
 "ORDEN_ID" Integer NOT NULL,
 "CALIDAD" Integer NOT NULL,
 "SABOR" Integer NOT NULL,
 "ATENCION" Integer NOT NULL,
 "COMENTARIOS_NEGOCIO" Character varying(200),
 "COMENTARIOS_MESERO" Character varying(200)
)
TABLESPACE "ts_quickorder"
;

-- Add keys for table quickorder.EVALUACION

ALTER TABLE "quickorder"."EVALUACION" ADD CONSTRAINT "IDXPK_EVALUACION" PRIMARY KEY ("ORDEN_ID")
;