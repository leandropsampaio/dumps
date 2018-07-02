CREATE TABLE `mensagens` (
  `idPos` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   id int not null,
  `id_2` INT NOT NULL ,
  `msg` VARCHAR( 255 ) NOT NULL
);

INSERT INTO `mensagens` VALUES("",1, 2, 'Camiseta Social');
INSERT INTO `mensagens` VALUES("",2, 1,'SHORT');
INSERT INTO `mensagens` VALUES("",1, 2,'CAMISA');

alter table gafanhotos
drop column idMensagem;

alter table mensagens
add foreign key (id_2)
references gafanhotos(id);

SELECT `mensagens`.* FROM `mensagens`
  INNER JOIN `gafanhotos` ON `mensagens`.`id` = `gafanhotos`.`id`
  where mensagens.id='1'
  ORDER BY `mensagens`.`msg` ASC;
  
Create table usuarios (
ID Int UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
login Varchar(30),
senha Varchar(40),
Primary Key (ID)) ENGINE = MyISAM;

SELECT * FROM usuarios;