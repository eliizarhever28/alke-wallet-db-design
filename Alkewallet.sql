/*Creando la la base de datos AlkeWallet */
CREATE DATABASE AlkeWallet;
USE AlkeWallet

CREATE TABLE IF NOT EXISTS `Usuarios` ( 
`user_id` INTEGER NOT NULL AUTO_INCREMENT, 
`nombre` VARCHAR(50) NOT NULL, 
`correo_electronico` VARCHAR(100) NOT NULL UNIQUE, 
`contraseña` VARCHAR(255) NOT NULL, 
PRIMARY KEY(`user_id`) 
); 
CREATE TABLE IF NOT EXISTS `Moneda` ( 
`currency_id` INTEGER NOT NULL AUTO_INCREMENT, 
`currency_name` VARCHAR(20) NOT NULL, 
`currency_symbol` VARCHAR(10) NOT NULL, 
PRIMARY KEY(`currency_id`) 
); 
CREATE TABLE IF NOT EXISTS `Cuenta` ( 
`cuenta_id` INTEGER NOT NULL AUTO_INCREMENT, 
`user_id` INTEGER NOT NULL, 
`currency_id` INTEGER NOT NULL, 
`saldo` DECIMAL(10,2) NOT NULL CHECK(`saldo` >= 0), 
PRIMARY KEY(`cuenta_id`) 
); 
CREATE TABLE IF NOT EXISTS `Transaccion` ( 
`transaction_id` INTEGER NOT NULL AUTO_INCREMENT, 
`sender_cuenta_id` INTEGER NOT NULL, 
`receiver_cuenta_id` INTEGER NOT NULL, 
`importe` DECIMAL(10,2) NOT NULL, 
`transaction_date` 
CURRENT_TIMESTAMP, 
DATETIME 
PRIMARY KEY(`transaction_id`) 
); 
ALTER TABLE `Cuenta` 
NOT 
NULL 
ADD FOREIGN KEY(`user_id`) REFERENCES `Usuarios`(`user_id`) 
ON UPDATE CASCADE ON DELETE RESTRICT; 
ALTER TABLE `Cuenta` 
DEFAULT 
ADD FOREIGN KEY(`currency_id`) REFERENCES `Moneda`(`currency_id`) 
ON UPDATE CASCADE ON DELETE RESTRICT; 
ALTER TABLE `Transaccion` 
ADD FOREIGN KEY(`sender_cuenta_id`) REFERENCES `Cuenta`(`cuenta_id`) 
ON UPDATE CASCADE ON DELETE RESTRICT; 
ALTER TABLE `Transaccion` 
ADD FOREIGN KEY(`receiver_cuenta_id`) REFERENCES `Cuenta`(`cuenta_id`) 
ON UPDATE CASCADE ON DELETE RESTRICT;
