DROP TABLE IF EXISTS customers CASCADE;
DROP TABLE IF EXISTS films CASCADE;
DROP TABLE IF EXISTS tickets CASCADE;


CREATE TABLE customers(
  id SERIAL4 primary key,
  name VARCHAR(255),
  funds INT
  );


CREATE TABLE films(
  id SERIAL4 primary key,
  title VARCHAR(255),
  price INT
  );

CREATE TABLE tickets(
  id serial4 primary key,
  customer_id INT4 references customers(id) ON DELETE CASCADE,
  film_id INT4 references films(id) ON DELETE CASCADE
  );
