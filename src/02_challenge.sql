CREATE TABLE plans (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    price FLOAT(5, 2) NOT NULL
);
CREATE TABLE users (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    birthday DATE NOT NULL,
    active BOOLEAN NOT NULL DEFAULT 1,
    plan_id INTEGER NOT NULL,
    FOREIGN KEY (plan_id) REFERENCES plans (id)
);

INSERT INTO plans (name, price)
VALUES ('Anual', 39.9),
('Mensal', 5.9),
('Trimestral', 19.9);

INSERT INTO users (full_name, email, birthday, active, plan_id)
VALUES ('Pedro', 'pedro@trybefy.com', '1990-01-01',	1,	1),
('Camila', 'camila@trybefy.com', '1988-12-01', 1, 1),
('Guilherme', 'guilherme@trybefy.com', '1988-12-01',	1,	2),
('Andressa', 'andressa@trybefy.com', '1984-07-20', 0,	3),
('Luís', 'luis@trybefy.com',	'2000-01-01',	1,	2),
('Cássia', 'cassia@trybefy.com',	'1995-12-01',	1,	1),
('Simone',	'simone@trybefy.com',	'1988-12-01',	1,	1),
('Rogério',	'rogerio@trybefy.com',	'1979-12-01',	1,	3),
('Júlio', 'julio@trybefy.com',	'1994-06-20',	0,	2),
('Melissa',	'melissa@trybefy.com',	'1997-04-11',	1,	2);