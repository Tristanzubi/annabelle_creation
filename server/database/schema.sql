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
  image VARCHAR(255),
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
('Pochette zippée', 'Petite pochette doublée en coton, idéale pour les cosmétiques ou bijoux.', '18', 'https://images.unsplash.com/photo-1589005037490-201e8eb91cdd?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cG9jaGV0dGUlMjB6aXAlQzMlQTl8ZW58MHx8MHx8fDA%3D', 1),
('Trousse à maquillage', 'Trousse matelassée en tissu imprimé, avec fermeture éclair.', '25', 'https://images.unsplash.com/photo-1585687635785-994bda55c78e?q=80&w=852&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
('Tablier de cuisine', 'Tablier ajustable en toile de coton avec poches avant.', '30', 'https://images.unsplash.com/photo-1729774057603-f7f5703718bc?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dGFibGllciUyMGRlJTIwY3Vpc2luZXxlbnwwfHwwfHx8MA%3D%3D', 1),
('Sac banane en tissu', 'Sac banane pratique et tendance, avec sangle réglable.', '40', 'https://images.unsplash.com/photo-1671272980551-500bc76d336c?q=80&w=802&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
('Chouchou en tissu liberty', 'Accessoire pour cheveux cousu main avec élastique doux.', '5', 'https://plus.unsplash.com/premium_photo-1743609712480-4000e94693e6?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y2hvdWNob3UlMjB0aXNzdXxlbnwwfHwwfHx8MA%3D%3D', 1),
('Housse de coussin', 'Housse 40x40 cm avec fermeture invisible, en tissu d’ameublement.', '15', 'https://plus.unsplash.com/premium_photo-1739612419490-d2427330bc93?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8aG91c3NlJTIwZGUlMjBjb3Vzc2lufGVufDB8fDB8fHww', 1),
('Panier en tissu', 'Panier réversible pour salle de bain ou bureau, en coton épais.', '20', 'https://plus.unsplash.com/premium_photo-1723563576333-b7f9d98e86fa?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8cGFuaWVyJTIwZW4lMjB0aXNzdXxlbnwwfHwwfHx8MA%3D%3D', 1),
('Planche à découper artisanale', 'Planche en bois massif huilé, idéale pour la cuisine ou le service.', '35', 'https://plus.unsplash.com/premium_photo-1671538298886-18ed2482533e?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 2),
('Boîte à bijoux en bois', 'Boîte en bois sculpté à la main, avec compartiments et couvercle aimanté.', '45', 'https://images.unsplash.com/photo-1607437817193-3b3b029b5b75?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8Ym9pdGUlMjBhJTIwYmlqb3UlMjBib2lzfGVufDB8fDB8fHww', 2),
('Lampe en bois flotté', 'Lampe de chevet conçue à partir de bois flotté et abat-jour en lin.', '70', 'https://plus.unsplash.com/premium_photo-1682402665354-47f253ce0060?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Njl8fGxhbXBlJTIwZW4lMjBib2lzfGVufDB8fDB8fHww', 2),
('Vide-poche sculpté', 'Vide-poche creusé dans une pièce de bois d’olivier, finition naturelle.', '28', 'https://images.unsplash.com/photo-1623796214194-50af50dde866?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8dmlkZSUyMHBvY2hlJTIwc2N1bHB0JUMzJUE5fGVufDB8fDB8fHww', 2),
('Horloge murale bois brut', 'Horloge minimaliste fabriquée à partir de bois recyclé et mécanisme silencieux.', '60', 'https://images.unsplash.com/photo-1631015108795-1ede1af1f63f?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aG9ybG9nZSUyMGJvaXN8ZW58MHx8MHx8fDA%3D', 2),
('Stylo artisanal tourné', 'Stylo à bille en bois tourné, mécanisme twist, finition vernie.', '25', 'https://plus.unsplash.com/premium_photo-1679507015962-4e9f28fc7b0c?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8c3R5bG8lMjBib2lzfGVufDB8fDB8fHww', 2),
('Plateau apéro en bois', 'Plateau rectangulaire à bords relevés, bois de chêne ciré.', '32', 'https://plus.unsplash.com/premium_photo-1675264751306-d100a1b3934c?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cGxhdGVhdSUyMGFwZXJvJTIwYm9pc3xlbnwwfHwwfHx8MA%3D%3D', 2)


