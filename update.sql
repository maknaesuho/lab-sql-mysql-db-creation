USE lab_mysql;

DROP TABLE IF EXISTS emails;
CREATE TABLE emails (
    name VARCHAR(255) PRIMARY KEY,
    email VARCHAR(255)
);

INSERT INTO emails (name, email)
VALUES ('Pablo Picasso', 'ppicasso@gmail.com'),
	('Abraham Lincoln', 'lincoln@us.gov'),
    ('Napoléon Bonaparte', 'hello@napoleon.me');


SET SQL_SAFE_UPDATES = 0;

UPDATE customers
JOIN emails ON customers.name = emails.name
SET customers.email = emails.email;

SELECT * FROM customers;
