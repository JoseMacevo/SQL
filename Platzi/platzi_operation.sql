CREATE TABLE IF NOT EXISTS books(
	book_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	author_id INTEGER UNSIGNED,
	title VARCHAR(100) NOT NULL,
	year INTEGER UNSIGNED NOT NULL DEFAULT 1900,
	language VARCHAR(2) NOT NULL DEFAULT 'es' COMMENT 'ISO 639-1 Language',
	cover_url VARCHAR(500),
	price DOUBLE(6,2) NOT NULL DEFAULT 10.0,
	sellable TINYINT(1) DEFAULT 1,
	copies INTEGER NOT NULL DEFAULT 1,
	description TEXT
	);

CREATE TABLE IF NOT EXISTS authors (
	author_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL,
	nationality VARCHAR(3)
	);
	
CREATE TABLE IF NOT EXISTS clients(
	client_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL UNIQUE,
	birth_date DATETIME,
	gender ENUM("M", "F", "ND") NOT NULL,
	active TINYINT(1) NOT NULL DEFAULT 1, 
	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
	);

CREATE TABLE IF NOT EXISTS operations(
	operation_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	book_id INTEGER UNSIGNED NOT NULL,
	author_id INTEGER UNSIGNED NOT NULL,
	type ENUM ("S", "L", "R"),
	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	finished TINYINT(1) NOT NULL DEFAULT 1
	);
	
INSERT INTO authors(name, nationality) VALUES ("Juan Rulfo", "MEX");
INSERT INTO authors(name, nationality) VALUES ("Gabriel García Márquez", "COL");
INSERT INTO authors(name, nationality) VALUES ("Julio Cortázar", "ARG"),
("Isabel Allende", "CHI"),
("Octavio Paz", "MEX"),
("Rubén Darío", "NIC"),
("Juan Carlos Onetti", "URU")

INSERT INTO clients (client_id, name, email, birth_date, gender, active) VALUES
(1, "María Dolores", "M_DoloresM@random.names", "1971-06-06","F",1), 
(2, "Adrián Fernández","A_Fernández@random.names", "1970-04-09","M",1), 
(3, "María Luisa Marín", "M_LuisaMar@random.names", "1957-07-30","F",1), 
(4, "Pedro Fernández", "Fernandez_p@random.names", "1992-01-31","M",1); 













































