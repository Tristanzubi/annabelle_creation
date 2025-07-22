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
VALUES 
('Janique', 'Couturière spécialisée dans les retouches et créations textiles.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHkaYesrpF8TIzADRzu3nbjvMOki7kbEEWrw&s'),
('Théo', 'Menuisier passionné créant du mobilier sur mesure en bois massif local.', 'https://img.freepik.com/photos-gratuite/artisan-coup-moyen-faisant-coupe-bois_23-2150104751.jpg?semt=ais_hybrid&w=740');


CREATE TABLE IF NOT EXISTS article (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(150) NOT NULL,
  description VARCHAR(150) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  image VARCHAR(255) NOT NULL,
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
VALUES 
('Sac en cuir', 'Sac fait main en cuir véritable', '120', 'https://images.unsplash.com/photo-1722322498026-ad9456b937d3?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
('Pochette zippée', 'Petite pochette doublée en coton, idéale pour les cosmétiques ou bijoux.', '18', 'https://images.unsplash.com/photo-1586864387781-9b4dddadfc33?auto=format&fit=crop&w=800&q=80', 1),
('Trousse à maquillage', 'Trousse matelassée en tissu imprimé, avec fermeture éclair.', '25', 'https://images.unsplash.com/photo-1615800000311-e6c6f8ba0a3a?auto=format&fit=crop&w=800&q=80', 1),
('Tablier de cuisine', 'Tablier ajustable en toile de coton avec poches avant.', '30', 'https://images.unsplash.com/photo-1556909218-31e11c8eaa25?auto=format&fit=crop&w=800&q=80', 1),
('Sac banane en tissu', 'Sac banane pratique et tendance, avec sangle réglable.', '40', 'https://images.unsplash.com/photo-1659449385610-9b312b8e6492?auto=format&fit=crop&w=800&q=80', 1),
('Chouchou en tissu liberty', 'Accessoire pour cheveux cousu main avec élastique doux.', '5', 'https://images.unsplash.com/photo-1625947328254-14462d99c3ee?auto=format&fit=crop&w=800&q=80', 1),
('Housse de coussin', 'Housse 40x40 cm avec fermeture invisible, en tissu d’ameublement.', '15', 'https://images.unsplash.com/photo-1586201375754-102a2926e6de?auto=format&fit=crop&w=800&q=80', 1),
('Panier en tissu', 'Panier réversible pour salle de bain ou bureau, en coton épais.', '20', 'https://images.unsplash.com/photo-1611070035341-1a4e5cb147f5?auto=format&fit=crop&w=800&q=80', 1),
('Planche à découper artisanale', 'Planche en bois massif huilé, idéale pour la cuisine ou le service.', '35', 'https://images.unsplash.com/photo-1590080878060-840f9d1fd4c2?auto=format&fit=crop&w=800&q=80', 2),
('Boîte à bijoux en bois', 'Boîte en bois sculpté à la main, avec compartiments et couvercle aimanté.', '45', 'https://images.unsplash.com/photo-1604607273953-c0a5b34e37c4?auto=format&fit=crop&w=800&q=80', 2),
('Lampe en bois flotté', 'Lampe de chevet conçue à partir de bois flotté et abat-jour en lin.', '70', 'https://images.unsplash.com/photo-1600585154340-be6161a56a0c?auto=format&fit=crop&w=800&q=80', 2),
('Vide-poche sculpté', 'Vide-poche creusé dans une pièce de bois d’olivier, finition naturelle.', '28', 'https://images.unsplash.com/photo-1633972586992-593edf77f524?auto=format&fit=crop&w=800&q=80', 2),
('Horloge murale bois brut', 'Horloge minimaliste fabriquée à partir de bois recyclé et mécanisme silencieux.', '60', 'https://images.unsplash.com/photo-1623847566582-bcd3247c8092?auto=format&fit=crop&w=800&q=80', 2),
('Stylo artisanal tourné', 'Stylo à bille en bois tourné, mécanisme twist, finition vernie.', '25', 'https://images.unsplash.com/photo-1548777123-bb5c3a5b6fa2?auto=format&fit=crop&w=800&q=80', 2),
('Plateau apéro en bois', 'Plateau rectangulaire à bords relevés, bois de chêne ciré.', '32', 'https://images.unsplash.com/photo-1602081113342-d1088d0d2a8b?auto=format&fit=crop&w=800&q=80', 2)


