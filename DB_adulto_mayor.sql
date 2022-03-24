CREATE TABLE ficha_progama (
    id_ficha_progama INT PRIMARY KEY,
    nombre_programa VARCHAR(50),
    vigencia DATE,
    fecha_digilenciamiento DATE,
    numero_identificación VARCHAR(15)
);

CREATE TABLE ficha_datos_adulto_mayor (
    id_ficha_datos_usuario INT PRIMARY KEY,
    tipo_identificacion VARCHAR(5),
    numero_identificacion VARCHAR(15),
    fecha_expedicion DATE,
    dpto_municipio_expedicion VARCHAR(100),
    nombres VARCHAR(60),
    primer_apellido VARCHAR(40),
    segundo_apellido VARCHAR(40),
    edad INT,
);

CREATE TABLE ficha_datos_ubicacion_contacto_adulto_mayor (
    id_ficha_datos_ubicacion_contacto_adulto_mayor INT PRIMARY KEY,
    direccion_residencial VARCHAR(60),
    departamento VARCHAR(40),
    municipio VARCHAR(40),
    barrio_vereda VARCHAR(50),
    telefono VARCHAR(15),
    celular VARCHAR(15),
    numero_identificacion VARCHAR(15),
);

CREATE TABLE ficha_datos_familiar_acudiente_adulto_mayor (
    id_ficha_datos_familiar_acudiente_adulto_mayor INT PRIMARY KEY,
    nombres_apellidos VARCHAR(80),
    parentesco VARCHAR(20),
    dirección VARCHAR(60),
    telefono VARCHAR(15),
    barrio_vereda VARCHAR(50),
    celular VARCHAR(15),
    observaciones TEXT,
    numero_identificacion VARCHAR(15),
);

CREATE TABLE ficha_informacion_salud_adulto_mayor (
    id_ficha_informacion_salud_adulto_mayor INT PRIMARY KEY,
    regimen_afiliacion VARCHAR(20),
    eps VARCHAR(40),
    --si o no
    afiliado VARCHAR(5),
    diagnostico_medico VARCHAR(60),
    entidad_certifica VARCHAR(40),
    observaciones_medicas TEXT,
    numero_identificacion VARCHAR(15),
);

CREATE TABLE ficha_compromiso_condiciones_especificas_adulto_mayor (
    id_compromiso_condiciones_especificas_adulto_mayor INT PRIMARY KEY,
    compromisos_condiciones TEXT,
    nombre_adulto_mayor_acudiente VARCHAR(80),
    numero_identificacion VARCHAR(15),
);

CREATE TABLE ficha_funcionario (
    nombre_funcionario VARCHAR(80),
    numero_identificacion_funcionario VARCHAR(15),
    cargo VARCHAR(30),
    registro_profesional VARCHAR(20),
    numero_identificacion VARCHAR(15),
);