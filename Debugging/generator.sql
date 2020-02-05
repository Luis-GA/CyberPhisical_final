
CREATE TABLE `Devices` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255),
	PRIMARY KEY (`id`)
);

CREATE TABLE `Sensors` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`device_id` INT,
	`name` VARCHAR(255),
	PRIMARY KEY (`id`)
);

CREATE TABLE `Controllers` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255),
	`created_at` DATETIME NOT NULL,
	`updated_at` DATETIME NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Actuators` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`device_id` INT NOT NULL,
	`name` INT NOT NULL,
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
	`name` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`condition` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`advertence` VARCHAR(255) NOT NULL AUTO_INCREMENT,
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

