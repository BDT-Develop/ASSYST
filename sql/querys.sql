#Tablas Vacias
SELECT * FROM alesandb.paises;
SELECT * FROM alesandb.estados;
SELECT * FROM alesandb.ciudades;
SELECT * FROM alesandb.metodospago;
SELECT * FROM alesandb.bancos;
SELECT * FROM alesandb.empresa;
SELECT * FROM alesandb.sucursales;
SELECT * FROM alesandb.empleados;
SELECT * FROM alesandb.clientes;
SELECT * FROM alesandb.provedores;
SELECT * FROM alesandb.transacciones;
SELECT * FROM alesandb.cuentas;

#Datos base 
INSERT INTO `alesandb`.`paises` (`idPais`, `nombrePais`, `abrevPais`) VALUES ('1', 'México', 'MEX');
INSERT INTO `alesandb`.`paises` (`idPais`, `nombrePais`, `abrevPais`) VALUES ('2', 'Estados Unidos', 'USA');

INSERT INTO `alesandb`.`estados` (`idEstado`, `idPais`, `nombreEstado`, `abrevEstado`) VALUES ('1', '1', 'Tamaulipas', 'Tamps');
INSERT INTO `alesandb`.`estados` (`idEstado`, `idPais`, `nombreEstado`, `abrevEstado`) VALUES ('2', '2', 'Texas', 'TX');

INSERT INTO `alesandb`.`ciudades` (`idCiudad`, `idEstado`, `nombreCiudad`, `abrevCiudad`) VALUES ('1', '1', 'Nuevo Laredo', 'Nvo Ldo');
INSERT INTO `alesandb`.`ciudades` (`idCiudad`, `idEstado`, `nombreCiudad`, `abrevCiudad`) VALUES ('2', '2', 'Laredo', 'Ldo');

INSERT INTO `alesandb`.`metodospago` (`idMP`, `descripcion`) VALUES ('1', 'Efectivo');
INSERT INTO `alesandb`.`metodospago` (`idMP`, `descripcion`) VALUES ('2', 'Banco');
INSERT INTO `alesandb`.`metodospago` (`idMP`, `descripcion`) VALUES ('3', 'Cheque');

INSERT INTO `alesandb`.`bancos` (`idBanco`, `nombre`, `estado`) VALUES ('1', 'BANAMEX', 'A');
INSERT INTO `alesandb`.`bancos` (`idBanco`, `nombre`, `estado`) VALUES ('2', 'HSBC', 'A');
INSERT INTO `alesandb`.`bancos` (`idBanco`, `nombre`, `estado`) VALUES ('3', 'BANORTE', 'A');
INSERT INTO `alesandb`.`bancos` (`idBanco`, `nombre`, `estado`) VALUES ('4', 'BBVA', 'A');

INSERT INTO `alesandb`.`empresa` (`idempresa`, `nombre`, `rfc`, `telefono`, `calle`, `numExt`, `idCiudad`) VALUES ('1', 'A. A. Alejandro Sanchez e Hijos', 'ASDFQWERZXCV', '8677451278', 'Maclovio Herrera', '2015', '1');

INSERT INTO `alesandb`.`sucursales` (`idsucursal`, `calle`, `numExt`, `telefono`, `estado`, `idempresa`, `idCiudad`) VALUES ('1', 'Maclovio Herrera', '2015', '8674578124', 'A', '1', '1');

#Store Procedures de la base de datos
CALL `alesandb`.`SP_CrearUsuario`('Alejandro', 'Sanchez', 'Martinez', 'alejandro@alesan.mx', 'alesan', 'Sistemas',1);

CALL `alesandb`.`SP_LogInUsuario`('alejandro@alesan.mx', 'ALESAN');

CALL `alesandb`.`SP_CrearClienteProvedor`('PROVEDOR', 'ASDFGHJKLOIU', 'ANARTEC CO.', 'ALDAMA', '2020','8677845129', 'PROVEDOR1@GMAIL.COM','ALEJANDRO', 'RAMIREZ', 'ELIZONDO', 1);

CALL `alesandb`.`SP_CrearCuenta`('QWERTYUIOPAS');

CALL `alesandb`.`SP_Transaccion`('QWERTYUIOPAS', 'Folio1', 1, 1, null, 400.00, 'ABONO');
CALL `alesandb`.`SP_Transaccion`('POIUYTREWEQ', 'Folio5', 1, 1, null, 200.00, 'CARGO');

