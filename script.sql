CREATE DATABASE bd_carrito;

USE bd_carrito;

CREATE TABLE Producto(
	id_prod INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(600) NOT NULL,
    precio DECIMAL(8,2) NOT NULL,
    imagen VARCHAR(200) NULL
);

CREATE TABLE Cliente(
	  id_cli INT PRIMARY KEY AUTO_INCREMENT,
    nombres VARCHAR(150) NOT NULL,
    apellidos VARCHAR(150) NOT NULL,
    telefono VARCHAR(15) NULL,
    correo VARCHAR(130) UNIQUE NOT NULL,
    password VARCHAR(300) NOT NULL
);

CREATE TABLE Pedido(
	id_ped INT PRIMARY KEY AUTO_INCREMENT,
    id_cli INT NOT NULL,
    fecha_ped DATETIME NOT NULL,
    total DECIMAL(8,2) NOT NULL,
    estado VARCHAR(60),
    FOREIGN KEY(id_cli) REFERENCES Cliente(id_cli)
);

CREATE TABLE Detalle_Pedido(
	id_detalle_ped INT PRIMARY KEY AUTO_INCREMENT,
    id_ped INT NOT NULL,
    id_prod INT NOT NULL,
    precio DECIMAL(8,2) NOT NULL,
    cantidad INT NOT NULL,
    FOREIGN KEY(id_ped) REFERENCES Pedido(id_ped),
    FOREIGN KEY(id_prod) REFERENCES Producto(id_prod)
);


INSERT INTO Producto(nombre,precio,imagen) VALUES('Samsung Galaxy A14 4Gb 128Gb Negro',850 ,'PROD000001.png');
INSERT INTO Producto(nombre,precio,imagen) VALUES('Samsung Galaxy A04E 32Gb 3Gb Nano Sim Negro',499 ,'PROD000002.png');
INSERT INTO Producto(nombre,precio,imagen) VALUES('Smartphone Xiaomi Poco M5S  6Gb 128Gb Gris',1099 ,'PROD000003.png');
INSERT INTO Producto(nombre,precio,imagen) VALUES('Samsung Galaxy S23 8Gb 256Gb Phantom Black',3650 ,'PROD000004.png');
INSERT INTO Producto(nombre,precio,imagen) VALUES('Smartphone Moto E22 4GB 128 GB Gris',599 ,'PROD000005.png');
INSERT INTO Producto(nombre,precio,imagen) VALUES('Samsung Galaxy A24 4Gb 128Gb Negro',749 ,'PROD000006.png');
INSERT INTO Producto(nombre,precio,imagen) VALUES('Smartphone Redmi Note 12 4GB 128GB Negro',949 ,'PROD000007.png');
INSERT INTO Producto(nombre,precio,imagen) VALUES('Samsung Galaxy A54 5G 8Gb 256Gb Grafito',1569 ,'PROD000008.png');
INSERT INTO Producto(nombre,precio,imagen) VALUES('Smartphone Moto G53 6GB 128GB Azul Denim',949 ,'PROD000009.png');
INSERT INTO Producto(nombre,precio,imagen) VALUES('Smartphone Redmi Note 12 Pro Plus 5G 8+256GB Azul Cielo',1799 ,'PROD000010.png');
INSERT INTO Producto(nombre,precio,imagen) VALUES('Samsung Galaxy A34 5G 6Gb 128Gb Grafito',1499 ,'PROD000011.png');
INSERT INTO Producto(nombre,precio,imagen) VALUES('Samsung Galaxy A04S 4 GB 64 GB Negro',699 ,'PROD000012.png');
INSERT INTO Producto(nombre,precio,imagen) VALUES('Smartphone Honor X8A 8Gb 128Gb Crt Lx3',1099 ,'PROD000013.png');
								
INSERT INTO Producto(nombre,precio,imagen) VALUES('Laptop Gamer ASUS TUF F15 Intel Core i5 8GB 512GB RTX2050 15.6',3099 ,'PROD000014.png');
INSERT INTO Producto(nombre,precio,imagen) VALUES('Impresora L4260 Duplex',1090 ,'PROD000015.png');
INSERT INTO Producto(nombre,precio,imagen) VALUES('Laptop Acer 14" Intel Core i5 1135G7 12GB 512GB',2499 ,'PROD000016.png');
INSERT INTO Producto(nombre,precio,imagen) VALUES('Laptop Gaming VICTUS Victus 16-d0538la Intel Core i5 8 GB 512 GB SSD GPU NVIDIA® GeForce® GTX 1650',3599 ,'PROD000017.png');
INSERT INTO Producto(nombre,precio,imagen) VALUES('Tablet Galaxy S6 Lite 128Gb 4Gb Gris',1119 ,'PROD000018.png');
INSERT INTO Producto(nombre,precio,imagen) VALUES('Tablet 10 4G LTE 4GB 32GB BK+ Flip Cover',449 ,'PROD000019.png');
INSERT INTO Producto(nombre,precio,imagen) VALUES('Laptop Gamer Legión 5I Intel Core 5 11400H 8Gb 512Gb Ssd RTX3060 6Gb 15.6" FHD',3899,'PROD000020.png');
INSERT INTO Producto(nombre,precio,imagen) VALUES('Tablet Galaxy S7 Fe 128GB 6GB Negro',2099 ,'PROD000021.png');
INSERT INTO Producto(nombre,precio,imagen) VALUES('Laptop HP Ci7 1255U 12G 512G + Cloud St+ Furys',3599,'PROD000022.png');
INSERT INTO Producto(nombre,precio,imagen) VALUES('Tablet 7 1GB 16GB Azul 3G',279 ,'PROD000023.png');

