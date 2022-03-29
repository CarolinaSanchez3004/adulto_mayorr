CREATE TABLE ficha_progama (
    id_ficha_progama INT PRIMARY KEY,
    nombre_programa VARCHAR(50), 
    vigencia DATE,
    fecha_digilenciamiento DATE
);

CREATE TABLE ficha_datos_adulto_mayor (
    numero_identificacion VARCHAR(15) PRIMARY KEY,
    tipo_identificacion VARCHAR(5),
    fecha_expedicion DATE,
    dpto_municipio_expedicion VARCHAR(100),
    nombres VARCHAR(60),
    primer_apellido VARCHAR(40),
    segundo_apellido VARCHAR(40),
    edad INT,
    id_ficha_progama INT,
    foreign key (id_ficha_progama) references ficha_progama(id_ficha_progama)
);

CREATE TABLE ficha_datos_ubicacion_contacto_adulto_mayor (
    id_ficha_datos_ubicacion_contacto_adulto_mayor INT PRIMARY KEY,
    direccion_residencial VARCHAR(60),
    departamento VARCHAR(40),
    municipio VARCHAR(40),
    barrio_vereda VARCHAR(50),
    telefono VARCHAR(15),
    celular VARCHAR(15),
    nombre_familiar_acudiente VARCHAR (60),
    numero_identificacion VARCHAR(15),
    foreign key (numero_identificacion) references ficha_datos_adulto_mayor(numero_identificacion)
);

CREATE TABLE ficha_datos_familiar_acudiente_adulto_mayor (
    id_ficha_datos_familiar_acudiente_adulto_mayor INT PRIMARY KEY,
    nombres_apellidos VARCHAR(80),
    parentesco VARCHAR(20),
    direccion_domicilio VARCHAR(60),
    telefono VARCHAR(15),
    barrio_vereda VARCHAR(50),
    celular VARCHAR(15),
    observaciones TEXT,
    numero_identificacion VARCHAR(15),
    foreign key (numero_identificacion) references ficha_datos_adulto_mayor(numero_identificacion)
);

CREATE TABLE ficha_informacion_salud_adulto_mayor (
    id_ficha_informacion_salud_adulto_mayor INT PRIMARY KEY,
    regimen_afiliacion VARCHAR(20),
    eps VARCHAR(40),
    afiliado BIT,
    diagnostico_medico VARCHAR(60),
    entidad_certifica VARCHAR(40),
    observaciones_medicas TEXT,
    numero_identificacion VARCHAR(15),
    foreign key (numero_identificacion) references ficha_datos_adulto_mayor(numero_identificacion)
);

CREATE TABLE ficha_compromiso_condiciones_especificas_adulto_mayor (
    id_ficha_compromiso_condiciones_especificas_adulto_mayor INT PRIMARY KEY,
    compromisos_condiciones TEXT,
    nombre_adulto_mayor_acudiente VARCHAR(80),
    numero_identificacion VARCHAR(15),
    foreign key (numero_identificacion) references ficha_datos_adulto_mayor(numero_identificacion)
);

CREATE TABLE ficha_funcionario (
    id_ficha_funcionario INT PRIMARY KEY,
    nombre VARCHAR(80),
    cargo VARCHAR(30),
    registro_profesional VARCHAR(20),
    numero_identificacion VARCHAR(15),
    id_ficha_progama INT,
    foreign key (id_ficha_progama) references ficha_progama(id_ficha_progama)
);




CREATE TABLE historia_progama (
    id_historia_progama INT PRIMARY KEY,
    fecha_apertura DATE
);

CREATE TABLE historia_datos_adulto_mayor (
    id_historia_datos_adulto_mayor INT PRIMARY KEY,
    nombres_apellidos VARCHAR(120),
    fecha_nacimiento DATE,
    direccion_residencial VARCHAR(60),
    telefono VARCHAR(15),
    numero_identificacion VARCHAR(15),
    edad INT,
    sexo VARCHAR (20),
    estado_civil VARCHAR(15),
    grado_escolaridad VARCHAR(20),
    grupo_sisben VARCHAR(5),
    eps VARCHAR(40),
    regimen_actual VARCHAR(15),
    fecha_ingreso DATE,
    motivo_ingreso VARCHAR(30),
    consume_alcohol BIT,
    hace_cuanto_consume_alcohol VARCHAR(20),
    fumador BIT,
    hace_cuanto_fuma BIT,
    consume_drogas BIT,
    hace_cuanto_consume_drogas VARCHAR(20),
    tipo_droga VARCHAR(20),
    nombre_acudiente VARCHAR(120),
    parentesco_acudiente VARCHAR(20),
    direccion_acudiente VARCHAR(60),
    telefono_acudiente VARCHAR(15)
);

CREATE TABLE valoracion_fisica_ojos (
cataratas VARCHAR (5),
pterigios VARCHAR (5),
lentes VARCHAR (5),
parpados VARCHAR (5),
);
CREATE TABLE valoracion_fisica_boca (
dentadura VARCHAR (5),
protesis VARCHAR (5),
protesis_total VARCHAR (5),
protesis_parcial VARCHAR (5),
dientes_naturales VARCHAR (5),
);

CREATE TABLE valoracion_fisica_oidos (
leve VARCHAR (5),
moderada VARCHAR (5),
total VARCHAR (5),
);
CREATE TABLE valoracion_fisica_piel (
alergias VARCHAR (5),
tipo_alergias VARCHAR (5),
resequedad VARCHAR (5),
lesiones VARCHAR (5),
);

CREATE TABLE valoracion_fisica_unas (
alteraciones_unas VARCHAR (5),
hongos VARCHAR (5),
cambio_color VARCHAR (5),
);
CREATE TABLE sistema_musculo_esqueletico (
disminucion_muscular VARCHAR(20),
paralisis_algun_lado_del_cuerpo BIT,
);
CREATE TABLE area_personal (
    apariencia_fisica,
    presentacion_personal VARCHAR(20),
    actitud_entrevista VARCHAR(20),
);
CREATE TABLE area_cognitiva (
memoria_presente BIT,
memoria_pasada BIT,
atencion BIT,
lectoescritura BIT,
lenguaje_hablado BIT,
curso_pensamiento BIT,
razonamiento BIT,
);
CREATE TABLE area_emocional (
manifiesta_no_institucion BIT,
ideas_suicidas BIT,
manifiesta_agresividad BIT,
observa_tranquilo BIT,
proyecto_vida BIT,
espera_muerte BIT,
);
CREATE TABLE sistema_relaciones (
    hace_amigos BIT,
    pertenece_grupos BIT,
    maneja_relaciones BIT,
    manifiesta_preocupaciones BIT,
    facilidad_comunicarse BIT,
);
CREATE TABLE intereses (
    religiosos BIT,
	 cultural BIT,
	 intelectual_cientifico BIT,
	 manuales BIT,
	 actitudes BIT,
	 dibujo BIT,
	 pintar  BIT,
	 danzar BIT,
	 bailar BIT,
	 teatro BIT,
	 poesia BIT,
	 canto BIT,
	 escritura BIT,
	 deportivas BIT,
	 liderazgo BIT,
	 humanisticas BIT,
);
    intervención_gerontologica VARCHAR(100),
);

CREATE TABLE historia_funcionario (
    nombre_funcionario VARCHAR(80),
    numero_identificacion_funcionario VARCHAR(15),
    cargo VARCHAR(30),
    registro_profesional VARCHAR(20),
    aprobada_por VARCHAR(20)
);

CREATE TABLE escala_lawton_brody(
    id_escala_lawton_brody INT PRIMARY KEY,
    nombre_usuario VARCHAR (120),
    zona VARCHAR(10),
    distrito VARCHAR(15),
    modalidad_atencion VARCHAR(15),
    lugar_atencion VARCHAR(30),
    edad_anual INT,
    edad_meses INT,
    fecha_aplicacion DATE,
    aplicado_por VARCHAR(60),
);

CREATE TABLE pregunta_uno_lawton (
capacidad_telefono BIT,
marcar_numeros BIT,
contestar_telefono BIT,
total_uno VARCHAR(10),
);
CREATE TABLE pregunta_dos_lawton (
realiza_compras_necesarias BIT,
compras_independiente BIT,
acompanado_compra BIT,
incapaz_comprar BIT,
total_dos VARCHAR(10),
);
CREATE TABLE pregunta_tres_lawton (
organiza_comida BIT,
adecuadamente_comida BIT,
sirve_comida BIT,
necesita_comida BIT,
total_tres VARCHAR(10),
);
CREATE TABLE pregunta_cuatro_lawton (
mantiene_casa_solo BIT,
realiza_tareas_ligeras BIT,
nivel_bajo_limpieza BIT,
ayuda_labores BIT,
no_labora_casa BIT,
total_cuatro VARCHAR(10),
);
CREATE TABLE pregunta_cinco_lawton (
lava_ropa BIT,
lava_pequenas_prendas BIT,
lava_otro BIT,
total_cinco VARCHAR(10),
);
CREATE TABLE pregunta_seis_lawton (
viaja_solo BIT,
coge_taxi BIT,
transporte_publico BIT,
utiliza_automovil BIT,
no_viaja BIT,
total_seis  VARCHAR(10),
);
CREATE TABLE pregunta_siete_lawton (
medicacion_solo BIT,
medicacion_previa BIT,
no_administra_medicacion  BIT,
total_siete VARCHAR(10),
);
CREATE TABLE pregunta_ocho_lawton (
economicos_solo BIT,
compras_ayuda BIT,
economicos_ayuda BIT,
total_ocho VARCHAR(10),
);
CREATE TABLE total_lawton_brody (
total_todo VARCHAR(20),
);

CREATE TABLE datos_funcionario (
    nombre_funcionario VARCHAR(80),
    numero_identificacion_funcionario VARCHAR(15),
    cargo VARCHAR(30),
    registro_profesional VARCHAR(20),
);

CREATE TABLE escala_mental (
    id_escala_mental INT PRIMARY KEY,
    nombre_usuario VARCHAR (120),
    zona VARCHAR(10),
    distrito VARCHAR(15),
    modalidad_atencion VARCHAR(15),
    lugar_atencion VARCHAR(30),
    edad_anual INT,
    edad_meses INT,
    fecha_aplicacion DATE,
    aplicado_por VARCHAR(60),
);

CREATE TABLE pregunta_uno (
dia_estamos BIT,
mes_estamos BIT,
ano_estamos BIT,
dia_semana BIT,
hora_estamos BIT,
puntuacion_uno VARCHAR(10),
);
CREATE TABLE pregunta_dos(
dia_estamos_dos BIT,
mes_estamos_dos BIT,
ano_estamos_dos BIT,
dia_semana_dos BIT,
hora_estamos_dos BIT,
puntuacion_dos VARCHAR(10),
);
CREATE TABLE pregunta_tres(
lugar_estamos BIT,
departamento_estamos BIT,
barrio_actual BIT,
ciudad_estamos BIT,
pais_estamos BIT,
puntuacion_tres VARCHAR(10),
);
CREATE TABLE pregunta_cuatro (
repeticion_ensayo BIT,
papel BIT,
bicicleta BIT,
cuchara BIT,
puntuacion_cuatro VARCHAR(10),
);
CREATE TABLE pregunta_cinco(
uno BIT,
dos BIT,
tres BIT,
cuatro BIT,
cinco BIT,
puntuacion_cinco VARCHAR(10),
);
CREATE TABLE pregunta_seis(
papel_uno BIT,
bicicleta_dos BIT,
cuchara_tres BIT,
puntuacion_seis VARCHAR(10),
);
CREATE TABLE pregunta_siete(
mostrarle_lapiz BIT,
mostrarle_reloj BIT,
puntuacion_siete VARCHAR(10),
);
CREATE TABLE pregunta_ocho(
consigna BIT,
puntuacion_ocho VARCHAR(10),
);
CREATE TABLE pregunta_nueve(
comprension_ejecucion BIT,
doblar_mitad BIT,
dejelo_suelo BIT,
puntuacion_nueve VARCHAR(10),
);
CREATE TABLE pregunta_diez(
pidale_leer BIT,
puntuacion_diez VARCHAR(10),
);
CREATE TABLE pregunta_once(
escriba_frase BIT,
puntuacion_once VARCHAR(10),
);
CREATE TABLE pregunta_doce(
copie_dibujo BIT,
puntuacion_doce VARCHAR(10),
);
CREATE TABLE total_preguntas(
puntuacion_total VARCHAR(10),
);

CREATE TABLE datos_funcionario (
    nombre_funcionario VARCHAR(80),
    numero_identificacion_funcionario VARCHAR(15),
    cargo VARCHAR(30),
    registro_profesional VARCHAR(20),
);

CREATE TABLE escala_mental (
    id_escala_mental INT PRIMARY KEY,
    nombre_usuario VARCHAR (120),
    zona VARCHAR(10),
    distrito VARCHAR(15),
    modalidad_atencion VARCHAR(15),
    lugar_atencion VARCHAR(30),
    edad_anual INT,
    edad_meses INT,
    fecha_aplicacion DATE,
    aplicado_por VARCHAR(60),
);

CREATE TABLE preguntas_escala_depresion (
satisfecho_vida VARCHAR(10),
intereses_actividades VARCHAR(10),
vida_vacia VARCHAR(10),
aburrido_frecuentemente VARCHAR(10),
animo_todo_tiempo VARCHAR(10),
preocupado_malo VARCHAR(10),
feliz_tiempo VARCHAR(10),
frecuencia_desamparado VARCHAR(10),
cosas_nuevas VARCHAR(10),
problemas_memoria VARCHAR(10),
maravilloso_vivo VARCHAR(10),
inutil_desprecio VARCHAR(10),
lleno_energia VARCHAR(10),
situacion_actual VARCHAR(10),
percepcion VARCHAR(10),
total_todo VARCHAR(20),

);

CREATE TABLE datos_funcionario (
    nombre_funcionario VARCHAR(80),
    numero_identificacion_funcionario VARCHAR(15),
    cargo VARCHAR(30),
    registro_profesional VARCHAR(20),
);


CREATE TABLE instrumento_progama (
    id_instrumento_progama INT PRIMARY KEY,
    fecha_digilenciamiento DATE,
    numero_identificacion VARCHAR(15)
);

CREATE TABLE instrumento_datos_adulto_mayor (
    id_instrumento_datos_usuario INT PRIMARY KEY,
    nombres_apellidos VARCHAR(120),
    sexo VARCHAR (20),
    direccion_residencial VARCHAR(60),
    barrio VARCHAR(50),
    telefono VARCHAR(15),
    numero_identificacion VARCHAR(15),
    fecha_nacimiento_dia DATE,
    fecha_nacimiento_mes DATE,
    fecha_nacimiento_ano DATE,
    procedencia VARCHAR(10),
    lugar VARCHAR(15),
    departamento VARCHAR(20),
    estado_civil VARCHAR(15),
    educacion VARCHAR(25),
    profesion VARCHAR(20),
    otros_oficios VARCHAR(20),
    se_encuentra_afiliado_eps VARCHAR(5),
    sisben VARCHAR(5),
    cual_sisben VARCHAR(10),
    eps VARCHAR(5),
    cual_eps VARCHAR(40),
    otro_servicio VARCHAR(10),
);

CREATE TABLE instrumento_datos_ambiente_servicios_vivienda (
    id_instrumento_datos_ambiente_servicios_vivienda INT PRIMARY KEY,
    tenencia VARCHAR(10),
    otra_tenencia VARCHAR(20),
    tipo_vivienda VARCHAR(15),
    otro_tipo VARCHAR(15),
    numero_identificacion VARCHAR(15),
    ruido VARCHAR (10),
    ilum inacion VARCHAR (10),
    ventilacion VARCHAR (10),
    humedad VARCHAR (10),
    accesibilidad_escaleras VARCHAR (10),
    pisos VARCHAR (10),
    vias_acceso VARCHAR (10),
    transporte VARCHAR (10),
    material_vivienda VARCHAR (40)
);

CREATE TABLE instrumento_estado_salud_patologias (
    id_instrumento_estado_salud_patologias INT PRIMARY KEY,
    hipertension VARCHAR(5),
    diabetes VARCHAR(5),
    enfermedades_cardiacas VARCHAR(5),
    osteoporosis VARCHAR(5),
    asma VARCHAR(5),
    artritis VARCHAR(5),
    cancer VARCHAR(5),
    demencia VARCHAR(5),
    otras VARCHAR(20),
    numero_identificacion VARCHAR(15),
    dolor_articulaciones VARCHAR(15),
    mareos_vahidos VARCHAR(15),
    tos_catarro_gripe VARCHAR(15),
    tobillos_inflamados VARCHAR(15),
    cansancio VARCHAR(15),
    dificultad_para_dormir VARCHAR(15),
    flojedad_piernas VARCHAR(15),
    dificultad_respirar VARCHAR(15),
    palpitaciones VARCHAR(15),
    dolor_pecho VARCHAR(15),
    manos_pies_frios VARCHAR(15),
    adormilado VARCHAR(15),
    boca_seca VARCHAR(15),
    hormigueo_manos_pies VARCHAR(15)
);

CREATE TABLE instrumento_consumo_medicamentos (
    id_instrumento_consumo_medicamentos INT PRIMARY KEY,
    consume_medicamentos VARCHAR(5),
    cuantos_medicamentos VARCHAR(10),
    cuales_medicamentos VARCHAR(60),
    recibe_tratamiento VARCHAR(5),
    cual_tratamiento VARCHAR(20),
    frecuencia_visita_medico VARCHAR(20),
    otros_datos VARCHAR(20),
    medicamentos_no_prescritos VARCHAR(5),
    cuales_no_prescritos VARCHAR(60),
    numero_identificacion VARCHAR(15),
);

CREATE TABLE instrumento_habitos_adulto_mayor (
    id_instrumento_habitos_adulto_mayor INT PRIMARY KEY,
    cambio_habitos_alimenticios VARCHAR(5),
    come_menos_dos_veces VARCHAR(5),
    tiene_problemas_dentales VARCHAR(5),
    come_pocas_frutas VARCHAR(5),
    come_solo VARCHAR(5),
    realiza_ejercicio VARCHAR(5),
    frecuencia_realiza_ejercicio VARCHAR(5),
    fuma VARCHAR(5),
    cuantos_cigarrillos VARCHAR(5),
    consume_licor VARCHAR(5),
    frecuencia_consume_licor VARCHAR(5),
    cantidad_consume_licor VARCHAR(5),
    numero_identificacion VARCHAR(15),
);

CREATE TABLE instrumento_funcionalidad_adulto_mayor (
    id_ficha_datos_familiar_acudiente_adulto_mayor INT PRIMARY KEY,
    cuidar_aspecto_fisico VARCHAR(10),
    realizar_tareas_caseras VARCHAR(10),
    caminar VARCHAR(10),
    realizar_tareas_fuera VARCHAR(10),
    puede_valerse VARCHAR(10),
    numero_identificacion VARCHAR(15),
);

CREATE TABLE instrumento_longevidad_adulto_mayor (
    id_ficha_datos_familiar_acudiente_adulto_mayor INT PRIMARY KEY,
    parientes_longevos VARCHAR(5),
    edad_madre_padre INT,
    edad_abuelo_abuela INT,
    edad_tio_tia INT,
    numero_identificacion VARCHAR(15),
);

CREATE TABLE ficha_psicologia_adulto_mayor (
    id_ficha_datos_familiar_acudiente_adulto_mayor INT PRIMARY KEY,
    siente_deprimido VARCHAR(15),
    siente_desesperado VARCHAR(15),
    olvida_dia_que_se encuentra VARCHAR(15),
    olvida_oficios VARCHAR(15),
    olvida_objetos_personales VARCHAR(15),
    se_pierde_en_algun_lugar VARCHAR(15),
    falta_interes VARCHAR(15),
    preocupa_higiene_personal VARCHAR(15),
    satisfecho_como_ocupa_eltiempo VARCHAR (15),
    esta_satisfecho_con_la_vida VARCHAR(10),
    observaciones TEXT,
    numero_identificacion VARCHAR(15),
);

CREATE TABLE instrumento_aspecto_social_adulto_mayor (
    id_instrumento_aspecto_social_adulto_mayor INT PRIMARY KEY,
    personas_viven INT,
    con_quien_vive VARCHAR(60),
    tuvo_hijos VARCHAR(5),
    cuantos_hijos INT,
    rol_nucleo_familiar VARCHAR(40),
    actividades_que_participa VARCHAR(15),
    otras_actividades VARCHAR(40),
    participa_en_decisiones VARCHAR(5),
    como_participa VARCHAR(10),
    mencione_participacion VARCHAR(20),
    que_aportes_recibe VARCHAR(30),
    otros_aportes VARCHAR(30),
    esta_satisfecho VARCHAR(5),
    por_que_satisfecho VARCHAR(40),
    comunicacion_con_quien_vive VARCHAR(15),
    por_que_comunica VARCHAR(40),
    como_califica_relaciones VARCHAR(15),
    por_que_relaciona VARCHAR(40),
    hijos_que_no_viven_con_usted VARCHAR (30),
    nietos_que_no_viven_con_usted VARCHAR (30),
    familiares_no_viven_con_usted VARCHAR (30),
    vecinos VARCHAR (30),
    amigos_no_vecinos VARCHAR (30),
    conyuge VARCHAR (20),
    hijos VARCHAR (20),
    nietos VARCHAR (20),
    otros_familiares VARCHAR (20),
    vecinos VARCHAR (20),
    amigos_no_vecinos VARCHAR (20),
    participa_en_grupos VARCHAR(5),
    cuales_grupos VARCHAR(40),
    con_que_frecuencia VARCHAR(15),
    nunca_explique_razones TEXT,
    numero_identificacion VARCHAR(15),
);

CREATE TABLE instrumento_actividad_ocio_adulto_mayor (
    id_ficha_datos_familiar_acudiente_adulto_mayor INT PRIMARY KEY,
    ntrabajado_durante_su_vida VARCHAR(100),
    labora_actualmente VARCHAR(5),
    cual_actividad VARCHAR(50),
    leer VARCHAR(20),
    visitar_amigos VARCHAR(20),
    ver_television VARCHAR(20),
    escuchar_radio VARCHAR(20),
    caminar VARCHAR(20),
    juegos_actividades VARCHAR(20),
    cuidar_ninos VARCHAR(20),
    hacer_manualidades VARCHAR(20),
    hacer_mandados VARCHAR(20),
    ir_compras VARCHAR(20),
    viajar VARCHAR(20),
    observaciones_generales TEXT,
    impresion_diagnostica TEXT,
    concepto_gerontologico TEXT,
    plan TEXT,
    numero_identificacion VARCHAR(15),
);

CREATE TABLE datos_funcionario (
    nombre_funcionario VARCHAR(80),
    numero_identificacion_funcionario VARCHAR(15),
    cargo VARCHAR(30),
    registro_profesional VARCHAR(20),
);

CREATE TABLE visitas_programa (
    id_visitas_progama INT PRIMARY KEY,
    fecha_visita DATE,
    solicitante VARCHAR(60),
    datos_visita VARCHAR(60),
    numero_identificacion VARCHAR(15),
);

CREATE TABLE instrumento_informe_valoracion_adulto_mayor (
    id_ficha_progama INT PRIMARY KEY,
    nombre_completo VARCHAR(120),
    edad INT,
    nombres_atiende_visita VARCHAR(20),
    tipo_numero_documento VARCHAR(20),
    fecha_nacimiento DATE,
    edad INT,
    direccion_residencial VARCHAR(60),
    telefono VARCHAR(15),
    objetivo TEXT,
    desarrollo TEXT,
    tipo_vivienda VARCHAR(15),
    tenencia_vivienda VARCHAR(5),
    estrato INT,
    ubicacion VARCHAR(10),
    tiempo_permanencia_vivienda VARCHAR(20),
    numero_habitaciones INT,
    numero_residentes INT,
    otros_espacios VARCHAR(20),
    descripcion_vivienda TEXT,
    apropiacion_recursos TEXT,
    observaciones_adicionales TEXT,
    concepto TEXT,
    nombre_encuestado VARCHAR(20),
    numero_identificacion VARCHAR(15),
    residencia_encuestado VARCHAR(30),
    edad_encuestado INT,
    telefono_encuestado VARCHAR(15),
    fecha_inicio_proceso DATE,
    profesional_encargado VARCHAR(60),
    observaciones TEXT,
    numero_identificacion VARCHAR(15),
);

CREATE TABLE ficha_funcionario (
    nombre_funcionario VARCHAR(80),
    cargo VARCHAR(30),
    registro_profesional VARCHAR(20),
    numero_identificacion VARCHAR(15),
);