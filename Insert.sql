INSERT INTO PRODUCTORES_BÁSICOS 
VALUES ('54538751r' , '98765' , 'S.L' , 'Rioja H' , 6 , 28234 , 'l.siso-gmail.com'  ,  to_date('22-APR-2003','DD-MM-YYYY'), to_date('22-JUL-2023','DD-MM-YYYY'))

INSERT INTO PRODUCTORES_BÁSICOS 
VALUES ('54441367e' , '12345' , 'S.A' , 'Florentino G' , 5 , 28224 , 'j.m.gimenez-gmail.com'  ,  to_date('07-APR-2003','DD-MM-YYYY'), to_date('07-APR-2020','DD-MM-YYYY'))

INSERT INTO PRODUCTORES_BÁSICOS 
VALUES ('53813438q' , '45621' , 'S.A' , 'Villebon' , 23 , 28238 , 'j.santonja-gmail.com'  ,  to_date('13-JUN-2001','DD-MM-YYYY'), to_date('13-FEB-2018','DD-MM-YYYY'))

INSERT INTO RESPONSABLE
VALUES ('Elena' , 'Martinez' , 'Fernandez' , '53748275d', 'CEO', to_date('08-AUG-2008','dd-mm-yyyy'), 14, 'Girasol' , 45, 53882, 'elenUrge-LMD.es', 'elenInstit-LMD.es')

INSERT INTO RESPONSABLE
VALUES ('Marta' , 'Simon' , 'Rodriguez' , '65484643f', 'Presidente', to_date('09-JAN-2000','dd-mm-yyyy'), 22, 'Verde' , 9, 73829, 'martaUrge-VTR.es', 'martaInstit-VTR.es')

INSERT INTO RESPONSABLE
VALUES ('Leonardo' , 'Mili' , 'Ticius' , '02570584n', 'CEO', to_date('22-JUN-2003','dd-mm-yyyy'), 19, 'Marco' , 34, 28345, 'miliUrge-PLM.es', 'miliInstit-PLM.es')

INSERT INTO RESPONSABLE
VALUES ('Oreliano' , 'Vive' , 'Rocho' , '61820295l', 'Presidente', to_date('17-Nov-2021','dd-mm-yyyy'), 1, 'Sagasta' , 8, 16001, 'OrelianoUrge-FRS.es', 'OrelianoInstit-FRS.es')

INSERT INTO RESPONSABLE
VALUES ('Horacio' , 'Mate' , 'Sonic' , '62839861p', 'Presidente', to_date('06-JAN-2015','dd-mm-yyyy'), 7, 'Canovas' , 7, 22640, 'HoracioUrge-SHA.es', 'HoracioInstit-SHA.es')

INSERT INTO SUMINISTRADOR
VALUES ('Uran' , 'Australia' , '12345')

INSERT INTO emp_transporte
VALUES ('Transporg' , '73628394f' , '73927', to_date('07-APR-17','dd-mm-yyyy'), to_date('31-DEC-24','dd-mm-yyyy'), 'Transporg-gmail.com')

INSERT INTO estacion_primaria
VALUES ('Socco' , 739 )

INSERT INTO estacion_primaria
VALUES ('Enery' , 534 )

INSERT INTO provincias
VALUES ('78432' , 'Cuenca' )

INSERT INTO consumidores
VALUES ('c6789' ,'Empresa', 563.8 )

INSERT INTO consumidores
VALUES ('c7236' ,'Particular', 23876.41 )

INSERT INTO centrales_electricidad
VALUES ('lombard' ,'LMD', 'pirineos',25,  27338, 'Madrid', 40.4165, -3.70256, 'lombard-LMD.es', 62838462, 'officialLombard', '34529', 72.38, '54441367e', '53748275d' )

INSERT INTO centrales_electricidad
VALUES ('Vitrina' ,'VTR', 'Cuenco',9,  43289, 'Palencia', 42.00955, -4.52406, 'vitrina-VTR.es', 654031255, 'officialVitrina', '75318', 87.03, '54538751r', '65484643f' ),

INSERT INTO centrales_electricidad
VALUES ('Pluma' ,'PLM', 'Dublin',17,  30012, 'Murcia', 37.98704, -1.13004, 'pluma-PLM.es', 643871200, 'officialPluma', '12309', 55.93, '53813438q', '02570584n' ),

INSERT INTO centrales_electricidad
VALUES ('Shang' ,'SHA', 'Iager',63,  08008, 'Barcelona', 41.38879, 2.15899, 'shang-SHA.es', 659283940, 'officialShang', '91287', 82.57, '54538751r', '62839861p' ),

INSERT INTO centrales_electricidad
VALUES ('Frisco' ,'FRS', 'Esquilache',3,  03590, 'Alicante', 38.59885, -0.05139, 'frisco-FRS.es', 636293876, 'officialFrisco', '62893', 67.45, '54441367e', '61820295l')

NSERT INTO COMPAÑIAS_ELECTRICIDAD
VALUES ('54441367e')

INSERT INTO TELÉFONO
VALUES ('+34', 6, 18918793)

INSERT INTO TELÉFONO
VALUES ('+34', 6, 54031344)

INSERT INTO TELÉFONO
VALUES ('+34', 6, 63226022)

INSERT INTO transformadores
VALUES ('82762', 'Alto' , 'Enery')

INSERT INTO asociartransporte
VALUES ('+34' , 6, 63226022, '73927')

INSERT INTO asociarproductor
VALUES ('+34' , 6, 54031344, '54441367e')

INSERT INTO asociarresponsable
VALUES ('+34' , 6, 18918793, 'Urgencias','53748275d')

INSERT INTO entregar2
VALUES (7.978 , '54441367e','Enery')

INSERT INTO hidroelectrica
VALUES (895651.97 , 1250, 8123.47, '75318')

INSERT INTO solar
VALUES (46850, 4380, 'termodinámica', '34529')

INSERT INTO nuclear
VALUES (4, 23502, 8453.71, '34529')

INSERT INTO Térmica
VALUES (125000, 200000, 8150, 'Combinado', '62893')

INSERT INTO eolica
VALUES (72591.89, 81.14,  '12309')

INSERT INTO aerogeneradores
VALUES (37.98704, -1.13004,  450, '12309')

INSERT INTO zonas_de_servicio
VALUES ('99998', '78432')

INSERT INTO REDES_DISTRIBUCIÓN
VALUES ('34216', 'Enery', null)

INSERT INTO REDES_DISTRIBUCIÓN
VALUES ('70231', 'Socco', 34216)
'
INSERT INTO linea 
VALUES ('82363', 2343,'70231')

INSERT INTO ser_propietario 
VALUES ('54441367e','70231')

INSERT INTO SUBESTACIÓN 
VALUES ('357753','82363')

INSERT INTO registrar 
VALUES ('7264','c7236','99998')

INSERT INTO distribuir 
VALUES ('357753','99998')

INSERT INTO provee 
VALUES ('34529','12345')

INSERT INTO entregar1 
VALUES ('73927','34529')

INSERT INTO asociarcentrales 
VALUES ( '+34',6,54671299, '91287')

INSERT INTO telefono
VALUES ( '+34',6,54671299)