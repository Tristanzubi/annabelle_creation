CREATE SCHEMA IF NOT EXISTS annabelle DEFAULT CHARACTER SET utf8;
USE annabelle;

CREATE TABLE IF NOT EXISTS maker (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(155) NOT NULL,
  description TEXT(500) NOT NULL,
  image VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB;

INSERT INTO maker (name, description, image)
VALUES ('Nom du créateur', 'Description du créateur', 'image.jpg');

CREATE TABLE IF NOT EXISTS article (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(150) NOT NULL,
  description VARCHAR(150) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  image VARCHAR(45) NOT NULL,
  maker_id INT NOT NULL,
  PRIMARY KEY (id),
  INDEX fk_article_maker_idx (maker_id ASC),
  CONSTRAINT fk_article_maker
    FOREIGN KEY (maker_id)
    REFERENCES maker (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE=InnoDB;

INSERT INTO article (title, description, price, image, maker_id)
VALUES ('Sac en cuir', 'Sac fait main en cuir véritable', '120', 'sac.jpg', 1);


