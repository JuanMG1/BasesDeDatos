CREATE ROLE Programador;
GRANT resource TO Programador; --EL programador tiene privilegios para realizar cualquier accion correspondiente a la BD

CREATE ROLE Propietario;
GRANT connect TO Propietario; --El propietario tiene acceso a todos los datos pero no puede ni crear nuevos datos ni cambiarlos

CREATE ROLE Gestor_Centrales;
CREATE VIEW todoCentrales
SELECT * 
FROM centrales_electricidad c, productores_basicos p, responsable r, eolica o, termica t, Hidroelectrica h, solar s, nuclear n;

GRANT SELECT todoCentral TO Gestor_Centrales;

CREATE ROLE Gestor_Suministros;
CREATE VIEW todoSuministrros
SELECT * 
FROM Provee, Suministrador, Nuclear, Productores_Basicos, Entregar2, Estacion_Primaria, Redes_Distribucion, Linea, Subestacion,Distribuir, ZONAS_DE_SERVICIO  ;

GRANT SELECT todoSuministros TO Gestor_Suministros;

CREATE ROLE Gestor_Distribucion;
CREATE VIEW todoDistribucion
SELECT *
FROM Distribuir, Entregar1, Emp_Transporte, AsociarTransporte, Entregar2;

GRANT SELECT todoDistribucion TO Gestor_Suministros;