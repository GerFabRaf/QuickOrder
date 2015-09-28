-- Table quickorder.ORDEN

CREATE TABLE "quickorder"."ORDEN"(
 "ORDEN_ID" Integer NOT NULL,
 "MESA_ID" Character(20) NOT NULL,
 "USUARIO_ID" Integer NOT NULL,
 "EMPLEADO_ID" Integer NOT NULL,
 "ESTATUS_ID" Integer NOT NULL,
 "FECHA" Timestamp NOT NULL,
 "ID_EXTERNA" Character varying(50),
 "ID_FACTURA" Character varying(50),
 "DIVIDIDA" Integer NOT NULL,
 "PROPINA" Integer NOT NULL,
 "HORA_CREACION" Timestamp NOT NULL,
 "HORA_CIERRE" Timestamp
)
TABLESPACE "ts_quickorder"
;

-- Create indexes for table quickorder.ORDEN

CREATE INDEX "IDX_ORDEN_ESTATUS" ON "quickorder"."ORDEN" ("ESTATUS_ID")
;

CREATE INDEX "IDX_ORDEN_USARIO" ON "quickorder"."ORDEN" ("USUARIO_ID")
;

CREATE INDEX "IDX_ORDEN_MESA" ON "quickorder"."ORDEN" ("MESA_ID")
;

CREATE INDEX "IDX_ORDEN_EMPLEADO" ON "quickorder"."ORDEN" ("EMPLEADO_ID")
;

-- Add keys for table quickorder.ORDEN

ALTER TABLE "quickorder"."ORDEN" ADD CONSTRAINT "IDXPK_ORDEN" PRIMARY KEY ("ORDEN_ID")
;