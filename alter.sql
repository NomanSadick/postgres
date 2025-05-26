
SELECT * FROM person;

INSERT INTO person (user_name, age)
VALUES
  ('Alice', 28),
  ('Bob', 35),
  ('Charlie', 22),
  ('Diana', 30);

ALTER TABLE person
    ADD COLUMN email VARCHAR(25)  DEFAULT 'default@mail.com' NOT NULL;

INSERT INTO person VALUES(6, 'Eve', 26, 'test@gmail.com');

DELETE FROM person
WHERE id = 6;

ALTER TABLE person
    DROP COLUMN email;

ALTER TABLE person
    RENAME COLUMN age to user_age;

ALTER TABLE person
    ALTER COLUMN user_name TYPE VARCHAR(50);


ALTER TABLE person
    ALTER COLUMN user_age drop NOT null;

ALTER TABLE person
    ALTER COLUMN user_age set UNIQUE;

ALTER TABLE person
    ADD constraint unique_person2_user_age UNIQUE(user_age);

ALTER TABLE person
    DROP constraint unique_person2_user_age;

TRUNCATE TABLE person;

 DROP TABLE person2;
    