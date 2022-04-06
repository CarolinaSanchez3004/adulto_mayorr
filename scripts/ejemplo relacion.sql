CREATE TABLE adultoMayor(
    documento VARCHAR(15) PRIMARY KEY,
    nombre VARCHAR(50),
    telefono VARCHAR(15),
    edad int
);

CREATE TABLE enfermedades(
    id_enfermedades INT PRIMARY KEY,
    nombre VARCHAR (50),
    gravedad VARCHAR (20),
    documento VARCHAR(15),
    foreign key (documento) references adultoMayor(documento)
);