CREATE INDEX IndexCentrales
ON Centrales_Electricidad(Produccion_Hora, Propietario, Denom)

CREATE INDEX IndexTermica
ON Térmica(Tipo_Térmica)

CREATE INDEX Index_Alertas
ON Inventario_Alertas(Tipo, Fecha_A, Fecha_D)

CREATE INDEX Index_Responsable
ON Responsable(Nombre, Apellido1, Apellido2)

CREATE INDEX Index_Provincias
ON Provincias (Nombre)

CREATE INDEX Index_Registrar
ON Registrar (Num_Consum)

CREATE INDEX Index_Transporte
ON Emp_Transporte (Nombre, NIF)

CREATE INDEX Index_Aerogeneradores
ON Aerogeneradores (Vel_Rotacion_Max)

CREATE INDEX Index_Eolica
ON Eolica (Horas_Acum_Viento)

CREATE INDEX Index_Suministrador
ON Suministrador (Nombre, Pais)

CREATE INDEX Index_Solar
ON Solar (Tipo_Solar)

CREATE INDEX Index_Estacion
ON Estacion_Primaria(Cant_Transfor)

CREATE INDEX Index_Linea
ON Linea (Longitud)
