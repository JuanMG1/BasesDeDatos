CREATE TABLE Productores Básicos
(
  NIF_PB VARCHAR(9) NOT NULL,
  Cod_AA VARCHAR(5) NOT NULL,
  Denom VARCHAR(10) NOT NULL,
  Calle VARCHAR(50) NOT NULL,
  Número INT NOT NULL,
  Cod_Postal INT NOT NULL,
  Correo VARCHAR(50) NOT NULL,
  Fecha_Inicial DATE NOT NULL,
  Fecha_Final DATE NOT NULL,
  PRIMARY KEY (NIF_PB)
);

 CREATE TABLE Responsable
(
  Nombre VARCHAR(25) NOT NULL,
  Apellido2 VARCHAR(25) NOT NULL,
  Apellido1 VARCHAR(25) NOT NULL,
  NIF_R VARCHAR(9) NOT NULL,
  Denom_Cargo VARCHAR(25) NOT NULL,
  Fecha_Nomb DATE NOT NULL,
  Antiguedad FLOAT NOT NULL,
  Calle VARCHAR(25) NOT NULL,
  Número INT NOT NULL,
  Cod_Postal INT NOT NULL,
  Correo Urgencias VARCHAR(50) NOT NULL,
  Correo Institucional VARCHAR(50) NOT NULL,
  PRIMARY KEY (NIF_R)
);

CREATE TABLE Suministrador
(
  Nombre VARCHAR(25) NOT NULL,
  Pais VARCHAR(25) NOT NULL,
  Cod_Suministrador VARCHAR(9) NOT NULL,
  PRIMARY KEY (Cod_Suministrador)
);

CREATE TABLE Emp_Transporte
(
  Nombre VARCHAR(25) NOT NULL,
  NIF VARCHAR(9) NOT NULL,
  Cod_Autorización VARCHAR(9) NOT NULL,
  Fecha_Validez_Inicio DATE NOT NULL,
  Fecha_Validez_Final DATE NOT NULL,
  Correo_Emergencias VARCHAR(50) NOT NULL,
  PRIMARY KEY (Cod_Autorización)
);

CREATE TABLE Estacion_primaria
(
  Nombre VARCHAR(5) NOT NULL,
  Cant__transfor INT NOT NULL,
  PRIMARY KEY (Nombre)
);

CREATE TABLE Provincias
(
  Cod_Provincia VARCHAR(9) NOT NULL,
  Nombre VARCHAR(25) NOT NULL,
  PRIMARY KEY (Cod_Provincia)
);

CREATE TABLE Consumidores
(
  ID_Consumidor VARCHAR(9) NOT NULL,
  Tipo_Consumidor VARCHAR(25) NOT NULL,
  Consumo_medio_hora FLOAT NOT NULL,
  PRIMARY KEY (ID_Consumidor)
);

CREATE TABLE Compañias_Electricidad
(
  NIF_PB VARCHAR(9) NOT NULL,
  PRIMARY KEY (NIF_PB),
  FOREIGN KEY (NIF_PB) REFERENCES Productores_Básicos(NIF_PB)
);

CREATE TABLE Transformadores
(
  Cod_Transformador VARCHAR(5) NOT NULL,
  Tipo_Transf VARCHAR(4) NOT NULL,
  Nombre VARCHAR(5) NOT NULL,
  PRIMARY KEY (Cod_Transformador),
FOREIGN KEY (Nombre) REFERENCES Estacion_primaria(Nombre)
);

CREATE TABLE Entregar2
(
  Cantidad_Energia_Hora FLOAT NOT NULL,
  NIF_PB VARCHAR(9) NOT NULL,
  Nombre VARCHAR(5) NOT NULL,
  PRIMARY KEY (NIF_PB, Nombre),
  FOREIGN KEY (NIF_PB) REFERENCES Productores_Básicos(NIF_PB),
  FOREIGN KEY (Nombre) REFERENCES Estacion_primaria(Nombre)
);

CREATE TABLE Centrales_Electricidad
(
  Propietario VARCHAR(10) NOT NULL,
  Denom VARCHAR(3) NOT NULL,
  Calle VARCHAR(5) NOT NULL,
  Número INT NOT NULL,
  Cod_Postal INT NOT NULL,
  Localidad VARCHAR(50) NOT NULL,
  Latitud FLOAT NOT NULL,
  Longitud FLOAT NOT NULL,
   Correo VARCHAR(50) NOT NULL,
  WhatsApp_Urgencias VARCHAR(12) NOT NULL,
  Twitter VARCHAR(50) NOT NULL,
  Cod_CentralE VARCHAR(5) NOT NULL,
  Produccion_Hora FLOAT NOT NULL,
  NIF_PB VARCHAR(9) NOT NULL,
  NIF_R VARCHAR(9) NOT NULL,
  PRIMARY KEY (Cod_CentralE),
  FOREIGN KEY (NIF_PB) REFERENCES Productores_Básicos(NIF_PB),
  FOREIGN KEY (NIF_R) REFERENCES Responsable(NIF_R)
);

CREATE TABLE Hidroelectrica
(
  Volumen_Máximo FLOAT NOT NULL,
  Numero_Turbinas INT NOT NULL,
  Volumen_Hora FLOAT NOT NULL,
  Cod_CentralE VARCHAR(5) NOT NULL,
  PRIMARY KEY (Cod_CentralE),
  FOREIGN KEY (Cod_CentralE) REFERENCES Centrales_Electricidad(Cod_CentralE)
);

CREATE TABLE Solar
(
  Superficie_Total FLOAT NOT NULL,
  Media_Anual_Horas_Rad FLOAT NOT NULL,
  Tipo_Solar VARCHAR(15) NOT NULL,
  Cod_CentralE VARCHAR(5) NOT NULL,
  PRIMARY KEY (Cod_CentralE),
  FOREIGN KEY (Cod_CentralE) REFERENCES Centrales_Electricidad(Cod_CentralE)
);

CREATE TABLE Nuclear
(
  Num_Reactores INT NOT NULL,
  Volumen_Hora_Residuos FLOAT NOT NULL,
  Volumen_Hora_Mineral FLOAT NOT NULL,
  Cod_CentralE VARCHAR(5) NOT NULL,
  PRIMARY KEY (Cod_CentralE),
  FOREIGN KEY (Cod_CentralE) REFERENCES Centrales_Electricidad(Cod_CentralE)
);

CREATE TABLE Térmica
(
  m3_Gas_Natural FLOAT NOT NULL,
  Volumen_Hora_C02 FLOAT NOT NULL,
  Tiempo_Hora_Producción FLOAT NOT NULL,
  Tipo_Térmica VARCHAR(20) NOT NULL,
  Cod_CentralE VARCHAR(5) NOT NULL,
  PRIMARY KEY (Cod_CentralE),
  FOREIGN KEY (Cod_CentralE) REFERENCES Centrales_Electricidad(Cod_CentralE)
);

CREATE TABLE Eolica
(
  Prod_Media_por_hora FLOAT NOT NULL,
  Horas_Acum_Viento FLOAT NOT NULL,
  Cod_CentralE VARCHAR(5) NOT NULL,
  PRIMARY KEY (Cod_CentralE),
  FOREIGN KEY (Cod_CentralE) REFERENCES Centrales_Electricidad(Cod_CentralE)
);

CREATE TABLE Aerogeneradores
(
  Latitud FLOAT NOT NULL,
  Longitud FLOAT NOT NULL,
  Vel_Rotación_Max FLOAT NOT NULL,
  Cod_CentralE VARCHAR(5) NOT NULL,
  FOREIGN KEY (Cod_CentralE) REFERENCES Eolica(Cod_CentralE)
);

CREATE TABLE Zonas_de_Servicio
(
  ID_Zona_Servicio VARCHAR(9) NOT NULL,
  Cod_Provincia VARCHAR(9) NOT NULL,
  PRIMARY KEY (ID_Zona_Servicio),
  FOREIGN KEY (Cod_Provincia) REFERENCES Provincias(Cod_Provincia)
);

CREATE TABLE Inventario_Alertas
(
  Cod_Alerta VARCHAR(9) NOT NULL,
  Tipo CHAR(1) NOT NULL,
  Latitud_I INT NOT NULL,
  Longitud_i INT NOT NULL,
  Fecha_A DATE NOT NULL,
  Fecha_D DATE NOT NULL,
  Intervencion VARCHAR(9) NOT NULL,
  Cod_CentralE VARCHAR(5) NOT NULL,
  PRIMARY KEY (Cod_Alerta),
  FOREIGN KEY (Cod_CentralE) REFERENCES Centrales_Electricidad(Cod_CentralE)
);

CREATE TABLE Provee
(
  Cod_CentralE VARCHAR(5) NOT NULL,
  Cod_Suministrador VARCHAR(9) NOT NULL,
  PRIMARY KEY (Cod_CentralE, Cod_Suministrador),
  FOREIGN KEY (Cod_CentralE) REFERENCES Nuclear(Cod_CentralE),
  FOREIGN KEY (Cod_Suministrador) REFERENCES Suministrador(Cod_Suministrador)
);

CREATE TABLE Entregar1
(
  Cod_Autorización VARCHAR(9) NOT NULL,
  Cod_CentralE VARCHAR(5) NOT NULL,
  PRIMARY KEY (Cod_Autorización, Cod_CentralE),
  FOREIGN KEY (Cod_Autorización) REFERENCES Emp_Transporte(Cod_Autorización),
  FOREIGN KEY (Cod_CentralE) REFERENCES Nuclear(Cod_CentralE)
);

CREATE TABLE Registrar
(
  Num_Consum INT NOT NULL,
  ID_Consumidor VARCHAR(9) NOT NULL,
  ID_Zona_Servicio VARCHAR(9) NOT NULL,
  PRIMARY KEY (ID_Consumidor, ID_Zona_Servicio),
  FOREIGN KEY (ID_Consumidor) REFERENCES Consumidores(ID_Consumidor),
  FOREIGN KEY (ID_Zona_Servicio) REFERENCES Zonas_de_Servicio(ID_Zona_Servicio)
);

CREATE TABLE Redes_Distribución
(
  Numero_Red VARCHAR(5) NOT NULL,
  Nombre VARCHAR(5) NOT NULL,
  Inter._energia_sobrante_Numero_Red VARCHAR(5),
  PRIMARY KEY (Numero_Red),
  FOREIGN KEY (Nombre) REFERENCES Estacion_primaria(Nombre),
  FOREIGN KEY (Inter._energia_sobrante_Numero_Red) REFERENCES Redes_Distribución(Numero_Red)
);

CREATE TABLE Linea
(
  Numero_Secuencial VARCHAR(5) NOT NULL,
  Longitud FLOAT NOT NULL,
  Numero_Red VARCHAR(5) NOT NULL,
  PRIMARY KEY (Numero_Secuencial),
  FOREIGN KEY (Numero_Red) REFERENCES Redes_Distribución(Numero_Red)
);

CREATE TABLE Subestación
(
  ID_Subestación VARCHAR(9) NOT NULL,
  Numero_Secuencial VARCHAR(5) NOT NULL,
  PRIMARY KEY (ID_Subestación),
  FOREIGN KEY (Numero_Secuencial) REFERENCES Linea(Numero_Secuencial)
);

CREATE TABLE Ser_Propietario
(
  NIF_PB VARCHAR(9) NOT NULL,
  Numero_Red VARCHAR(5) NOT NULL,
  PRIMARY KEY (NIF_PB, Numero_Red),
  FOREIGN KEY (NIF_PB) REFERENCES Compañias_Electricidad(NIF_PB),
  FOREIGN KEY (Numero_Red) REFERENCES Redes_Distribución(Numero_Red)
);

CREATE TABLE Distribuir
(
  ID_Subestación VARCHAR(9) NOT NULL,
  ID_Zona_Servicio VARCHAR(9) NOT NULL,
  PRIMARY KEY (ID_Subestación, ID_Zona_Servicio),
  FOREIGN KEY (ID_Subestación) REFERENCES Subestación(ID_Subestación),
  FOREIGN KEY (ID_Zona_Servicio) REFERENCES Zonas_de_Servicio(ID_Zona_Servicio)
);


CREATE TABLE Teléfono
(
  Código_País VARCHAR(3) NOT NULL,
  Prefijo INT NOT NULL,
  Número INT NOT NULL,
  PRIMARY KEY (Código_País, Prefijo, Número)
);

CREATE TABLE AsociarTransporte
(
  Código_País VARCHAR(3) NOT NULL,
  Prefijo INT NOT NULL,
  Número INT NOT NULL,
  Cod_Autorización VARCHAR(9) NOT NULL,
  PRIMARY KEY (Código_País, Prefijo, Número, Cod_Autorización),
  FOREIGN KEY (Código_País, Prefijo, Número) REFERENCES Teléfono(Código_País, Prefijo, Número),
  FOREIGN KEY (Cod_Autorización) REFERENCES Emp_Transporte(Cod_Autorización)
);

CREATE TABLE AsociarProductor
(
  Código_País VARCHAR(3) NOT NULL,
  Prefijo INT NOT NULL,
  Número INT NOT NULL,
  NIF_PB VARCHAR(9) NOT NULL,
  PRIMARY KEY (Código_País, Prefijo, Número, NIF_PB),
  FOREIGN KEY (Código_País, Prefijo, Número) REFERENCES Teléfono(Código_País, Prefijo, Número),
  FOREIGN KEY (NIF_PB) REFERENCES Productores_Básicos(NIF_PB)
);

CREATE TABLE AsociarResponsable
(
  Código_País VARCHAR(3) NOT NULL,
  Prefijo INT NOT NULL,
  Número INT NOT NULL,
  Tipo_TLFNO VARCHAR(15) NOT NULL,
  NIF_R VARCHAR(9) NOT NULL,
  PRIMARY KEY (Código_País, Prefijo, Número, NIF_R),
  FOREIGN KEY (Código_País, Prefijo, Número) REFERENCES Teléfono(Código_País, Prefijo, Número),
  FOREIGN KEY (NIF_R) REFERENCES Responsable(NIF_R)
);

CREATE TABLE AsociarCentrales
(
  Código_País VARCHAR(3) NOT NULL,
  Prefijo INT NOT NULL,
  Número INT NOT NULL,
  Cod_CentralE VARCHAR(5) NOT NULL,
  PRIMARY KEY (Código_País, Prefijo, Número, Cod_CentralE),
  FOREIGN KEY (Código_País, Prefijo, Número) REFERENCES Teléfono(Código_País, Prefijo, Número),
  FOREIGN KEY (Cod_CentralE) REFERENCES Centrales_Electricidad(Cod_CentralE)
);