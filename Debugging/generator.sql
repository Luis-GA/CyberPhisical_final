
CREATE DATABASE Emergency;
USE Emergency;


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



INSERT INTO Devices (`name`) VALUES ('Drone Device');
INSERT INTO Sensors (`device_id`, `name`, `type_measure`) VALUES ('1', 'Smoke_drone', 'percentage');
INSERT INTO Sensors (`device_id`, `name`, `type_measure`) VALUES ('1', 'Camera', 'jpg');
INSERT INTO Actuators (`device_id`, `name`) VALUES ('1', 'Siren');
INSERT INTO Devices (`name`) VALUES ('Emergency Office');
INSERT INTO Sensors (`device_id`, `name`, `type_measure`) VALUES ('2', 'termometer_office', 'centrigrades');
INSERT INTO Sensors (`device_id`, `name`, `type_measure`) VALUES ('2', 'humidity_office', 'percentage');
INSERT INTO Actuators (`device_id`, `name`) VALUES ('2', '');
INSERT INTO Devices (`name`) VALUES ('eCall');
INSERT INTO Sensors (`device_id`, `name`, `type_measure`) VALUES ('3', 'Collision_detect', 'percentage');
INSERT INTO Sensors (`device_id`, `name`, `type_measure`) VALUES ('3', 'Smoke_eCall', 'percentage');
INSERT INTO Actuators (`device_id`, `name`) VALUES ('3', 'Send Alert');

INSERT INTO Alerts (`name`, `condition`, `advertence`) VALUES('Acclimate the room', 'temp >30 or temp < 15', 'Set the air');
INSERT INTO Alerts (`name`, `condition`, `advertence`) VALUES('Accitent Detect', 'smoke>30', 'Send There is a car accident');

INSERT INTO Controllers (`name`) VALUES ('Dron Controller');
INSERT INTO controllerhasSensor (`controller_id`, `sensor_id`) VALUES ('1', (SELECT id from Sensors where name ='Camera'));
INSERT INTO controllerhasSensor (`controller_id`, `sensor_id`) VALUES ('1', (SELECT id from Sensors where name ='Smoke_drone'));
INSERT INTO controllerhasActuator (`controller_id`, `actuator_id`) VALUES ('1', (SELECT id from Actuators where name ='Siren'));
INSERT INTO controllerhasAlerts (`controller_id`, `alert_id`) VALUES ('1', (SELECT id from Alerts where name ='Accitent Detect'));
INSERT INTO Controllers (`name`) VALUES ('office_controller');
INSERT INTO controllerhasActuator (`controller_id`, `actuator_id`) VALUES ('2', (SELECT id from Actuators where name =''));
INSERT INTO controllerhasSensor (`controller_id`, `sensor_id`) VALUES ('2', (SELECT id from Sensors where name ='humidity_office'));
INSERT INTO controllerhasSensor (`controller_id`, `sensor_id`) VALUES ('2', (SELECT id from Sensors where name ='termometer_office'));
INSERT INTO controllerhasAlerts (`controller_id`, `alert_id`) VALUES ('2', (SELECT id from Alerts where name ='Acclimate the room'));
INSERT INTO Controllers (`name`) VALUES ('eCallController');
INSERT INTO controllerhasSensor (`controller_id`, `sensor_id`) VALUES ('3', (SELECT id from Sensors where name ='Collision_detect'));
INSERT INTO controllerhasSensor (`controller_id`, `sensor_id`) VALUES ('3', (SELECT id from Sensors where name ='Smoke_eCall'));
INSERT INTO controllerhasActuator (`controller_id`, `actuator_id`) VALUES ('3', (SELECT id from Actuators where name ='Send Alert'));
INSERT INTO controllerhasAlerts (`controller_id`, `alert_id`) VALUES ('3', (SELECT id from Alerts where name ='Accitent Detect'));
INSERT INTO Controllers (`name`) VALUES ('Emergency_system');
INSERT INTO controllerhasSensor (`controller_id`, `sensor_id`) VALUES ('4', (SELECT id from Sensors where name ='Camera'));
INSERT INTO controllerhasSensor (`controller_id`, `sensor_id`) VALUES ('4', (SELECT id from Sensors where name ='Smoke_drone'));
INSERT INTO controllerhasSensor (`controller_id`, `sensor_id`) VALUES ('4', (SELECT id from Sensors where name ='Collision_detect'));
INSERT INTO controllerhasSensor (`controller_id`, `sensor_id`) VALUES ('4', (SELECT id from Sensors where name ='Smoke_eCall'));


