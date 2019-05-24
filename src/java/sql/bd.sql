bd oracle12cv2.sql
J

C
J
R
Tipo
SQL

CREATE TABLE "boleta" (
"id_boleta" NUMBER(11,0) NOT NULL,
"id_cliente" NUMBER(11,0) NOT NULL,
"id_servicio" NUMBER(11,0) NOT NULL,
"hora_boleta" NVARCHAR2(5) NOT NULL,
"fecha_boleta" NVARCHAR2(10) NOT NULL,
PRIMARY KEY ("id_boleta") 
)
NOCOMPRESS 
NOPARALLEL ;
CREATE INDEX "id_cliente_COPY_1" ON "boleta" ("id_cliente");
CREATE INDEX "id_servicio_COPY_1" ON "boleta" ("id_servicio");

CREATE TABLE "cargo" (
"id_cargo" NUMBER(11,0) NOT NULL,
"desc_cargo" NVARCHAR2(50) NOT NULL, 
PRIMARY KEY ("id_cargo") 
)
NOCOMPRESS 
NOPARALLEL ;
CREATE TABLE  "cliente" (
"id_cliente" NUMBER(11,0) NOT NULL,
"rut" NVARCHAR2(12) NOT NULL,
"nombres" NVARCHAR2(100) NOT NULL,
"apellidos" NVARCHAR2(100) NOT NULL,
"fecha_nacimiento" NVARCHAR2(10) NOT NULL,
"sexo" NCHAR(1) NOT NULL,
"nacionalidad" NVARCHAR2(50) NOT NULL,
"celular" NVARCHAR2(9) NOT NULL,
"correo_electronico" NVARCHAR2(50) NOT NULL,
"direccion" NVARCHAR2(50) NOT NULL,
"estado" NVARCHAR2(50) NOT NULL,
PRIMARY KEY ("id_cliente") 
)
NOCOMPRESS 
NOPARALLEL ;
CREATE TABLE "empleado" (
"id_empleado" NUMBER(11,0) NOT NULL,
"rut" NVARCHAR2(12) NOT NULL,
"nombres" NVARCHAR2(100) NOT NULL,
"apellidos" NVARCHAR2(100) NOT NULL,
"fecha_nacimiento" NVARCHAR2(10) NOT NULL,
"sexo" NCHAR(1) NOT NULL,
"id_cargo" NUMBER(11,0) NOT NULL,
"fecha_contrato" NVARCHAR2(10) NOT NULL,
"correo_electronico" NVARCHAR2(50) NOT NULL,
"celular" NVARCHAR2(9) NOT NULL,
"estado" NVARCHAR2(50) NOT NULL,
PRIMARY KEY ("id_empleado") 
)
NOCOMPRESS 
NOPARALLEL ;
CREATE INDEX "id_cargo" ON "empleado" ("id_cargo");

CREATE TABLE "especialidad" (
"id_especialidad" NUMBER(11,0) NOT NULL,
"desc_especialidad" NVARCHAR2(50) NOT NULL,
PRIMARY KEY ("id_especialidad") 
)
NOCOMPRESS 
NOPARALLEL ;
CREATE TABLE "estado" (
"id_estado" NUMBER(11,0) NOT NULL,
"desc_estado" NVARCHAR2(50) NOT NULL,
PRIMARY KEY ("id_estado") 
)
NOCOMPRESS 
NOPARALLEL ;
CREATE TABLE "pedido" (
"id_pedido" NUMBER(11,0) NOT NULL,
"id_empleado" NUMBER(11,0) NOT NULL,
"id_estado" NUMBER(11,0) NOT NULL,
"id_producto" NUMBER(11,0) NOT NULL,
"id_proveedor" NUMBER(11,0) NOT NULL,
"fecha_pedido" NVARCHAR2(10) NOT NULL,
PRIMARY KEY ("id_pedido") 
)
NOCOMPRESS 
NOPARALLEL ;
CREATE INDEX "id_empleado_COPY_1" ON "pedido" ("id_empleado");
CREATE INDEX "id_estado" ON "pedido" ("id_estado");
CREATE INDEX "id_producto_COPY_1" ON "pedido" ("id_producto");
CREATE INDEX "id_proveedor" ON "pedido" ("id_proveedor");

CREATE TABLE "producto" (
"id_producto" NUMBER(11,0) NOT NULL,
"desc_producto" NVARCHAR2(50) NOT NULL,
"categoria" NVARCHAR2(50) NOT NULL,
"precio_compra" NUMBER(11,0) NOT NULL,
"precio_venta" NUMBER(11,0) NOT NULL,
"stock" NUMBER(11,0) NOT NULL,
"stock_critico" NUMBER(11,0) NOT NULL,
"fecha_vencimiento" NVARCHAR2(10) NOT NULL,
"estado" NVARCHAR2(50) NOT NULL,
PRIMARY KEY ("id_producto") 
)
NOCOMPRESS 
NOPARALLEL ;
CREATE TABLE "proveedor" (
"id_proveedor" NUMBER(11,0) NOT NULL,
"nombre" NVARCHAR2(50) NOT NULL,
"apellido" NVARCHAR2(50) NOT NULL,
"empresa" NVARCHAR2(50) NOT NULL,
"rubro" NVARCHAR2(50) NOT NULL,
PRIMARY KEY ("id_proveedor") 
)
NOCOMPRESS 
NOPARALLEL ;
CREATE TABLE "recepcion" (
"id_recepcion" NUMBER(11,0) NOT NULL,
"id_pedido" NUMBER(11,0) NOT NULL,
"id_empleado" NUMBER(11,0) NOT NULL,
"hora_recepcion" NVARCHAR2(5) NOT NULL,
"fecha_recepcion" NVARCHAR2(10) NOT NULL,
PRIMARY KEY ("id_recepcion") 
)
NOCOMPRESS 
NOPARALLEL ;
CREATE INDEX "id_pedido" ON "recepcion" ("id_pedido");
CREATE INDEX "id_empleado" ON "recepcion" ("id_empleado");

CREATE TABLE "reservahora" (
"id_reserva_hora" NUMBER(11,0) NOT NULL,
"id_servicio" NUMBER(11,0) NOT NULL,
"id_cliente" NUMBER(11,0) NOT NULL,
"hora_reserva" NVARCHAR2(5) NOT NULL,
"fecha_reserva" NVARCHAR2(10) NOT NULL,
PRIMARY KEY ("id_reserva_hora") 
)
NOCOMPRESS 
NOPARALLEL ;
CREATE INDEX "id_servicio" ON "reservahora" ("id_servicio");
CREATE INDEX "id_cliente_COPY_2" ON "reservahora" ("id_cliente");

CREATE TABLE "servicio" (
"id_servicio" NUMBER(11,0) NOT NULL,
"id_especialidad" NUMBER(11,0) NOT NULL,
"id_producto" NUMBER(11,0) NOT NULL,
"hora_servicio" NVARCHAR2(5) NOT NULL,
"fecha_servicio" NVARCHAR2(10) NOT NULL,
PRIMARY KEY ("id_servicio") 
)
NOCOMPRESS 
NOPARALLEL ;
CREATE INDEX "id_especialidad" ON "servicio" ("id_especialidad");
CREATE INDEX "id_producto" ON "servicio" ("id_producto");

CREATE TABLE "situacioneconomica" (
"id_cliente" NUMBER(11,0) NOT NULL,
"promedio_ingresos" NUMBER NOT NULL,
"afiliacion_afp" NVARCHAR2(50) NOT NULL,
"aseguradora" NVARCHAR2(50) NOT NULL,
"nombre_isapre" NVARCHAR2(50) DEFAULT NULL NULL,
"tramo_fonasa" NCHAR(1) DEFAULT NULL NULL
)
NOCOMPRESS 
NOPARALLEL ;
CREATE INDEX "id_cliente" ON "situacioneconomica" ("id_cliente");

CREATE TABLE "usuario" (
"id_usuario" NUMBER(11,0) NOT NULL,
"username" NVARCHAR2(50) NOT NULL,
"password" NVARCHAR2(50) NOT NULL,
"rol" NUMBER(11,0) NOT NULL,
PRIMARY KEY ("id_usuario") 
)
NOCOMPRESS 
NOPARALLEL ;

ALTER TABLE "boleta" ADD CONSTRAINT "boleta_ibfk_1" FOREIGN KEY ("id_cliente") REFERENCES "cliente" ("id_cliente");
ALTER TABLE "boleta" ADD CONSTRAINT "boleta_ibfk_2" FOREIGN KEY ("id_servicio") REFERENCES "servicio" ("id_servicio");
ALTER TABLE "empleado" ADD CONSTRAINT "empleado_ibfk_1" FOREIGN KEY ("id_cargo") REFERENCES "cargo" ("id_cargo");
ALTER TABLE "pedido" ADD CONSTRAINT "pedido_ibfk_1" FOREIGN KEY ("id_empleado") REFERENCES "empleado" ("id_empleado");
ALTER TABLE "pedido" ADD CONSTRAINT "pedido_ibfk_2" FOREIGN KEY ("id_estado") REFERENCES "estado" ("id_estado");
ALTER TABLE "pedido" ADD CONSTRAINT "pedido_ibfk_3" FOREIGN KEY ("id_producto") REFERENCES "producto" ("id_producto");
ALTER TABLE "pedido" ADD CONSTRAINT "pedido_ibfk_4" FOREIGN KEY ("id_proveedor") REFERENCES "proveedor" ("id_proveedor");
ALTER TABLE "recepcion" ADD CONSTRAINT "recepcion_ibfk_1" FOREIGN KEY ("id_pedido") REFERENCES "pedido" ("id_pedido");
ALTER TABLE "recepcion" ADD CONSTRAINT "recepcion_ibfk_2" FOREIGN KEY ("id_empleado") REFERENCES "empleado" ("id_empleado");
ALTER TABLE "reservahora" ADD CONSTRAINT "reservahora_ibfk_1" FOREIGN KEY ("id_servicio") REFERENCES "servicio" ("id_servicio");
ALTER TABLE "reservahora" ADD CONSTRAINT "reservahora_ibfk_2" FOREIGN KEY ("id_cliente") REFERENCES "cliente" ("id_cliente");
ALTER TABLE "servicio" ADD CONSTRAINT "servicio_ibfk_1" FOREIGN KEY ("id_especialidad") REFERENCES "especialidad" ("id_especialidad");
ALTER TABLE "servicio" ADD CONSTRAINT "servicio_ibfk_2" FOREIGN KEY ("id_producto") REFERENCES "producto" ("id_producto");
ALTER TABLE "situacioneconomica" ADD CONSTRAINT "situacioneconomica_ibfk_1" FOREIGN KEY ("id_cliente") REFERENCES "cliente" ("id_cliente");

INSERT INTO CLIENTE VALUES (1,'18528468-9','Camilo Alfredo','Soto Reyes','01/05/1993','m','Chilena','987654321','email@123.com','calle falsa 123',1);
