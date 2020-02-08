
CREATE DATABASE Tes;
USE Tes;


CREATE TABLE `Devices` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255),
	PRIMARY KEY (`id`)
);

CREATE TABLE `Sensors` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`device_id` INT,
	`name` VARCHAR(255),
	`type_measure` VARCHAR(255),
	PRIMARY KEY (`id`)
);

CREATE TABLE `Controllers` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255),
	PRIMARY KEY (`id`)
);

CREATE TABLE `Actuators` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`device_id` INT NOT NULL,
	`name` VARCHAR(255),
	PRIMARY KEY (`id`)
);

CREATE TABLE `controllerhasSensor` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`controller_id` INT NOT NULL,
	`sensor_id` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `controllerhasActuator` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`controller_id` INT NOT NULL,
	`actuator_id` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Alerts` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`condition` VARCHAR(255) NOT NULL,
	`advertence` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `controllerhasAlerts` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`controller_id` INT NOT NULL,
	`alert_id` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Measures` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`sensor_id` INT NOT NULL,
	`value` FLOAT NOT NULL,
	`time` TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Sensors` ADD CONSTRAINT `Sensors_fk0` FOREIGN KEY (`device_id`) REFERENCES `Devices`(`id`);

ALTER TABLE `Actuators` ADD CONSTRAINT `Actuators_fk0` FOREIGN KEY (`device_id`) REFERENCES `Devices`(`id`);

ALTER TABLE `controllerhasSensor` ADD CONSTRAINT `controllerhasSensor_fk0` FOREIGN KEY (`controller_id`) REFERENCES `Controllers`(`id`);

ALTER TABLE `controllerhasSensor` ADD CONSTRAINT `controllerhasSensor_fk1` FOREIGN KEY (`sensor_id`) REFERENCES `Sensors`(`id`);

ALTER TABLE `controllerhasActuator` ADD CONSTRAINT `controllerhasActuator_fk0` FOREIGN KEY (`controller_id`) REFERENCES `Controllers`(`id`);

ALTER TABLE `controllerhasActuator` ADD CONSTRAINT `controllerhasActuator_fk1` FOREIGN KEY (`actuator_id`) REFERENCES `Actuators`(`id`);

ALTER TABLE `controllerhasAlerts` ADD CONSTRAINT `controllerhasAlerts_fk0` FOREIGN KEY (`controller_id`) REFERENCES `Controllers`(`id`);

ALTER TABLE `controllerhasAlerts` ADD CONSTRAINT `controllerhasAlerts_fk1` FOREIGN KEY (`alert_id`) REFERENCES `Alerts`(`id`);

ALTER TABLE `Measures` ADD CONSTRAINT `Measures_fk0` FOREIGN KEY (`sensor_id`) REFERENCES `Sensors`(`id`);



INSERT INTO Devices (`name`) VALUES ('Device1');
INSERT INTO Sensors (`device_id`, `name`, `type_measure`) VALUES ('1', 'culu', 'pitos');
INSERT INTO Sensors (`device_id`, `name`, `type_measure`) VALUES ('1', 'caca', 'limones');
INSERT INTO Actuators (`device_id`, `name`) VALUES ('1', 'pene');
INSERT INTO Actuators (`device_id`, `name`) VALUES ('1', 'pena');

INSERT INTO Alerts (`name`, `condition`, `advertence`) VALUES('Hola', 'Helo', 'hi');

INSERT INTO Controllers (`name`) VALUES ('terminator');
INSERT INTO controllerhasSensor (`controller_id`, `sensor_id`) VALUES ('1', (SELECT id from Sensors where name ='caca'));
INSERT INTO controllerhasAlerts (`controller_id`, `alert_id`) VALUES ('1', (SELECT id from Alerts where name ='Hola'));
INSERT INTO controllerhasActuator (`controller_id`, `actuator_id`) VALUES ('1', (SELECT id from Actuators where name ='pene'));
INSERT INTO controllerhasActuator (`controller_id`, `actuator_id`) VALUES ('1', (SELECT id from Actuators where name ='pena'));


