CREATE TABLE sc_colecciones(
	id INT(11) NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(70) NOT NULL,
	url VARCHAR(70) NOT NULL,
	descrip VARCHAR(70) NOT NULL,
	tipo INT(1) NOT NULL DEFAULT 1,
	superior INT(11) NOT NULL DEFAULT 0,
	estado INT(1) NOT NULL DEFAULT 1,
	fecha DATETIME NOT NULL,
	total_e INT(7) NOT NULL DEFAULT 0,
	PRIMARY KEY(id)
)DEFAULT CHARSET = UTF8;
CREATE TABLE sc_comentarios(
	id INT(7) NOT NULL AUTO_INCREMENT,
	destino INT(7) NOT NULL,
	usuario INT(7) NOT NULL DEFAULT 0,
	autor VARCHAR(30) NOT NULL,
	email VARCHAR(50) NOT NULL,
	sitio VARCHAR(60) NOT NULL,
	contenido TEXT NOT NULL,
	fecha DATETIME NOT NULL,
	ip VARCHAR(15) NOT NULL,
	agent VARCHAR(60) NOT NULL,
	tipo INT(1) NOT NULL,
	superior INT(7) NOT NULL,
	estado INT(1) NOT NULL,
	denuncias INT(3) NOT NULL DEFAULT 0,
	PRIMARY KEY(id)
)DEFAULT CHARSET = UTF8;
CREATE TABLE sc_entradas(
	id INT(7) NOT NULL AUTO_INCREMENT,
	titulo VARCHAR(70) NOT NULL,
	url VARCHAR(150) NOT NULL,
	fecha DATE NOT NULL,
	fecha_u DATETIME NOT NULL,
	descrip VARCHAR(250) NOT NULL,
	descargas TEXT NOT NULL,
	contenido TEXT NOT NULL,
	coleccion INT(11) NOT NULL DEFAULT 0,
	superior INT(11) NOT NULL DEFAULT 0,
	tags VARCHAR(250) NOT NULL,
	portada VARCHAR(250) NOT NULL,
	usuario INT(11) NOT NULL DEFAULT 1,
	estado INT(1) NOT NULL DEFAULT 0,
	tipo INT(2) NOT NULL DEFAULT 1,
	plantilla VARCHAR(30) NOT NULL,
	total_coment INT(7) NOT NULL DEFAULT 0,
	puntosv INT(1) NOT NULL DEFAULT 0,
	puntos INT(10) NOT NULL DEFAULT 0,
	likes INT(10) NOT NULL DEFAULT 0,
	hits INT(10) NOT NULL DEFAULT 0,
	denuncias INT(3) NOT NULL DEFAULT 0,
	PRIMARY KEY(id),
	FULLTEXT(titulo,descrip)
)ENGINE = MYISAM DEFAULT CHARSET = UTF8;
CREATE TABLE sc_intentosf(
	id INT(11) NOT NULL AUTO_INCREMENT,
	tiempo VARCHAR(10) NOT NULL,
	usuario INT(11) NOT NULL,
	PRIMARY KEY(id)
)DEFAULT CHARSET = UTF8;
CREATE TABLE sc_perfil(
	id INT(11) NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(30) NOT NULL,
	sexo INT(1) NOT NULL DEFAULT 0,
	nacimiento DATE NOT NULL,
	firma VARCHAR(200) NOT NULL,
	descrip VARCHAR(250) NOT NULL,
	sitio VARCHAR(60) NOT NULl,
	s_facebook VARCHAR(60) NOT NULL,
	s_twitter VARCHAR(60) NOT NULL,
	s_google VARCHAR(60) NOT NULL,
	s_linkedin VARCHAR(60) NOT NULL,
	puntos INT(11) NOT NULL,
	experiencia INT(11) NOT NULL,
	seguidores INT(11) NOT NULL,
	siguiendo INT(11) NOT NULL,
	likes INT(11) NOT NULL,
	PRIMARY KEY(id)
)DEFAULT CHARSET = UTF8;
CREATE TABLE sc_sitio(
	id INT(11) NOT NULL AUTO_INCREMENT,
	titulo VARCHAR(30) NOT NULL,
	lema VARCHAR(30) NOT NULL,
	descrip VARCHAR(150) NOT NULL,
	url VARCHAR(70) NOT NULL,
	email VARCHAR(60) NOT NULL DEFAULT 'no_responder@localhost',
	cms_info VARCHAR(70) NOT NULL,
	cms_v VARCHAR(30) NOT NULL,
	cms_a DATE NOT NULL,
	total_u INT(11) NOT NULL DEFAULT 1,
	total_p INT(7) NOT NULL DEFAULT 0,
	total_a INT(7) NOT NULL DEFAULT 0,
	total_c INT(7) NOT NULL DEFAULT 0,
	total_t INT(7) NOT NULL DEFAULT 0,
	total_cat INT(7) NOT NULL DEFAULT 0,
	tema_nombre VARCHAR(30) NOT NULL DEFAULT 'default',
	tema_url VARCHAR(40) NOT NULL DEFAULT 'tema',
	tema_ext VARCHAR(5) NOT NULL DEFAULT 'tpl',
	conf_enlaces VARCHAR(50) NOT NULL DEFAULT '{col}/{nombre}',
	conf_enlaces_anidar INT(1) NOT NULL DEFAULT 1,
	conf_epp INT(4) NOT NULL DEFAULT 10,
	conf_coment INT(1) NOT NULL DEFAULT 1,
	conf_intentos INT(2) NOT NULL DEFAULT 10,
	conf_registro INT(1) NOT NULL DEFAULT 1,
	conf_validaemail INT(1) NOT NULL DEFAULT 0,
	conf_pp_max INT(4) NOT NULL DEFAULT 10,
	conf_pp_entrada INT(4) NOT NULL DEFAULT 10,
	conf_pp_coment INT(4) NOT NULL DEFAULT 1,
	conf_pp_registro INT(4) NOT NULL DEFAULT 50,
	conf_pp_referido INT(4) NOT NULL DEFAULT 20,
	conf_code_f TEXT NOT NULL,
	conf_code_t TEXT NOT NULL,
	conf_link_f varchar(100) NOT NULL,
	conf_link_t varchar(100) NOT NULL,
	conf_fbappid varchar(100) NOT NULL,
	field_add1 TEXT NOT NULL,
	field_add2 TEXT NOT NULL,
	field_add3 TEXT NOT NULL,
	PRIMARY KEY(id)
)DEFAULT CHARSET = UTF8;
CREATE TABLE sc_usuario(
	id INT(11) NOT NULL AUTO_INCREMENT,
	nickname VARCHAR(16) NOT NULL,
	facebookid TEXT NOT NULL,
	email VARCHAR(50) NOT NULL,
	clave CHAR(128) NOT NULL,
	salt CHAR(128) NOT NULL,
	ip VARCHAR(15) NOT NULL,
	fregistro DATE NOT NULL,
	estado INT(1) NOT NULL DEFAULT 0,
	grupo INT(2) NOT NULL DEFAULT 0,
	huella CHAR(64) NOT NULL,
	total_e INT(7) NOT NULL DEFAULT 0,
	denuncias INT(3) NOT NULL DEFAULT 0,
	PRIMARY KEY(id)
)DEFAULT CHARSET = UTF8;
CREATE TABLE sc_sesiones(
	id INT(11) NOT NULL AUTO_INCREMENT,
	usuario INT(11) NOT NULL,
	tiempo INT(11) NOT NULL,
	ip VARCHAR(15) NOT NULL,
	agent VARCHAR(60) NOT NULL,
	huella CHAR(64) NOT NULL,
	PRIMARY KEY(id)
)DEFAULT CHARSET=UTF8;
CREATE TABLE sc_publicaciones(
	id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	destino INT(10) NOT NULL,
	autor INT(10) NOT NULL DEFAULT 0,
	contenido TEXT NOT NULL,
	fecha DATETIME NOT NULL,
	tipo INT(1) NOT NULL,
	superior INT(10) NOT NULL,
	estado INT(1) NOT NULL,
	contador INT(10) NOT NULL
)DEFAULT CHARSET = UTF8;
CREATE TABLE sc_follow(
	id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	autor INT(11) NOT NULL,
	destino INT(11) NOT NULL
)DEFAULT CHARSET = UTF8;
CREATE TABLE sc_likes(
	id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	autor INT(11) NOT NULL,
	destino INT(11) NOT NULL,
	tipo INT(1) NOT NULL
)DEFAULT CHARSET = UTF8;
CREATE TABLE sc_denuncias(
	id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	autor INT(11) NOT NULL,
	destino INT(11) NOT NULL,
	tipo INT(2) NOT NULL,
	estado INT(1) NOT NULL DEFAULT 1
)DEFAULT CHARSET = UTF8;
CREATE TABLE sc_puntos(
	id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	autor INT(11) NOT NULL,
	destino INT(11) NOT NULL,
	tipo INT(1) NOT NULL,
	razon INT(11) NOT NULL
)DEFAULT CHARSET = UTF8;
CREATE TABLE sc_productos(
	id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	tipo INT(1) NOT NULL,
	precio INT(10) NOT NULL,
	cover VARCHAR(250) NOT NULL,
	estado INT(1) NOT NULL DEFAULT 1
)DEFAULT CHARSET = UTF8;
CREATE TABLE sc_compras(
	id_compras INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	producto INT(10) NOT NULL,
	autor INT(10) NOT NULL,
	estado INT(1) NOT NULL DEFAULT 1
)DEFAULT CHARSET=UTF8;
CREATE TABLE sc_fotos(
	id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	url VARCHAR(100) NOT NULL,
	autor INT(10) NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	estado INT(1) NOT NULL DEFAULT 1
)DEFAULT CHARSET=UTF8;
CREATE TABLE sc_logros(
	id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	descrip VARCHAR(100) NOT NULL,
	cover VARCHAR(100) NOT NULL,
	tipo INT(2) NOT NULL DEFAULT 1,
	modo INT(1) NOT NULL DEFAULT 1,
	acumulable INT(2) NOT NULL DEFAULT 0,
	accion INT(2) NOT NULL DEFAULT 0,
	estado INT(1) NOT NULL DEFAULT 1
)DEFAULT CHARSET=UTF8;
CREATE TABLE sc_logros_registro(
	id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	logro_id INT(10) NOT NULL,
	destino INT(10) NOT NULL,
	fecha DATE NOT NULL,
	estado INT(1) NOT NULL DEFAULT 1
)DEFAULT CHARSET=UTF8;
CREATE TABLE sc_listascrap(
	id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	url VARCHAR(250) NOT NULL,
	estado INT(1) NOT NULL DEFAULT 1,
	updated DATETIME NOT NULL
)DEFAULT CHARSET = UTF8;
CREATE TABLE sc_pedidos(
	id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(150) NOT NULL,
	estado INT(1) NOT NULL DEFAULT 0
)DEFAULT CHARSET = UTF8;
CREATE TABLE sc_referidos(
	id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	referido INT(10) NOT NULL DEFAULT 0,
	usuario INT(10) NOT NULL DEFAULT 0,
	fecha DATE NOT NULL,
	puntos INT(10) NOT NULL DEFAULT 0
)DEFAULT CHARSET=UTF8;
CREATE TABLE sc_adds(
	id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	codigo TEXT NOT NULL,
	estado INT(1) NOT NULL DEFAULT 1,
	tipo INT(1) NOT NULL DEFAULT 1,
	updated DATETIME NOT NULL
)DEFAULT CHARSET = UTF8;
/* ---------- Datos por defecto ---------- */
INSERT INTO sc_sitio(titulo, lema, descrip, url, cms_info, cms_v, cms_a, conf_enlaces) VALUES(
	'Socialcom', 'CMS', 'Sistema de Gestión de contenidos', 'http://localhost/socialcom',
	'Socialcom CMS', 'Alfa 1.0', '2017-01-01', '{col}/{nombre}'
);
--Creamos usuario admin por defecto con clave admin
INSERT INTO sc_usuario(nickname, email, clave, salt, estado, grupo) VALUES(
	'admin',
	'admin@prueba.algo',	'cdca1e0fbaaaab057082ac7852d14793b92b784324ac6bdfd837715b59c6051daf536dc27e6e8e44dc9c8c88167e29e85d3693cfa28fc2349530978f5267619e',	'e6965e16e21ba77531437a1bc9bfa7fdcbebb5fd0c51254997e06ad4cf1340d5a3a0d2541a19f27241dcd81d14878552627417dbcf22c3b4bcedf29392f891ec',
	1, 1
);
INSERT INTO sc_perfil(nombre) VALUES('Administrador');
