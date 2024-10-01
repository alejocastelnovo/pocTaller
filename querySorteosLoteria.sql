USE SorteosLoteria

CREATE TABLE Juego (
    IdJuego TINYINT NOT NULL PRIMARY KEY,
    Jue_Desc VARCHAR(15) NOT NULL,
    Jue_CmpOcr CHAR(3) NULL,
    Jue_HorLun CHAR(5) NULL,
    Jue_HorMar CHAR(5) NULL,
    Jue_HorMie CHAR(5) NULL,
    Jue_HorJue CHAR(5) NULL,
    Jue_HorVie CHAR(5) NULL,
    Jue_HorSab CHAR(5) NULL,
    Jue_HorDom CHAR(5) NULL,
    Jue_Habi CHAR(1) NULL,
    esPoceado BIT NULL
)

CREATE TABLE PgmSorteo (
    idPgmSorteo INT NOT NULL PRIMARY KEY,
    idEstadoPgmConcurso TINYINT NOT NULL,
    idJuego TINYINT NOT NULL,
    nroSorteo INT NOT NULL,
    fechahora DATETIME NOT NULL,
    fechaHoraPrescripcion DATETIME NOT NULL,
    fechaHoraProximo DATETIME NOT NULL,
)

CREATE TABLE Valor_Apuesta (
    IdValorApuesta TINYINT NOT NULL PRIMARY KEY,
    IdJuego TINYINT NOT NULL,
    IdModalidad TINYINT NOT NULL,
    Vap_ValApu NUMERIC(18, 2) NOT NULL,
)

CREATE TABLE Valor_Apuesta_Sorteo (
    IdPgmSorteo INT NOT NULL,
    IdValorApuesta TINYINT NOT NULL,
    Vap_ValApu NUMERIC(18, 2) NOT NULL,
    PRIMARY KEY (IdPgmSorteo, IdValorApuesta),
);

CREATE TABLE Cargo (
    idCargo INT NOT NULL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    orden_por_defecto INT NOT NULL,
    habilitado BIT NOT NULL
);

CREATE TABLE Usuarios (
    idUsuario INT NOT NULL PRIMARY KEY,
    Usuario VARCHAR(255) NOT NULL,
    pwd VARCHAR(255) NOT NULL,
    NombreUsuario VARCHAR(255) NOT NULL,
    UltimoAcceso DATETIME NULL
);

CREATE TABLE Autoridad (
    idAutoridad INT NOT NULL PRIMARY KEY,
    idJuego TINYINT NOT NULL,
    idCargo VARCHAR(64) NOT NULL,
    idUsuario INT NOT NULL,
    nombre VARCHAR(60) NOT NULL,
    orden TINYINT NOT NULL,
);

CREATE TABLE PgmSorteo_Loteria (
    idPgmSorteo INT NOT NULL,
    idLoteria CHAR(1) NOT NULL,
    nroSorteoLoteria INT NOT NULL,
    fechaHoraLoteria DATETIME NOT NULL,
    PRIMARY KEY (idPgmSorteo, idLoteria),
);

CREATE TABLE Loteria (
    idLoteria CHAR(1) NOT NULL PRIMARY KEY,
    IdLoteriaNum TINYINT NOT NULL,
    nombre VARCHAR(128) NOT NULL,
    prv_id CHAR(1) NOT NULL,
    orden_extracto_qnl TINYINT NOT NULL,
    habilitada BIT NOT NULL
);

CREATE TABLE Juego_Loteria (
    idJuego TINYINT NOT NULL,
    idDiaSemana TINYINT NOT NULL,
    idLoteria CHAR(1) NOT NULL,
    PRIMARY KEY (idJuego, idDiaSemana, idLoteria),
);

CREATE TABLE Modalidad (
    idJuego TINYINT NOT NULL,
    idModalidad TINYINT NOT NULL,
    de_modalidad VARCHAR(50) NOT NULL,
    orden TINYINT NULL,
    PRIMARY KEY (idJuego, idModalidad),
);


CREATE TABLE DiaSemana (
    idDiaSemana TINYINT NOT NULL PRIMARY KEY,
    nombre VARCHAR(64) NOT NULL,
    abrev CHAR(3) NOT NULL
);


CREATE TABLE MinimosAsegurados (
    idJuego TINYINT NOT NULL,
    idModalidad TINYINT NOT NULL,
    nroSorteoDesde INT NOT NULL,
    Importe NUMERIC(18, 2) NOT NULL,
    fechahoracarga DATETIME NOT NULL,
    idUsuario INT NOT NULL,
    PRIMARY KEY (idJuego, idModalidad, nroSorteoDesde),
);
