DROP DATABASE IF EXISTS 19WH1A1269;
CREATE SCHEMA 19WH1A1269;
USE 19WH1A1269;
CREATE TABLE passenger(
p_ID INT NOT NULL AUTO_INCREMENT,
Name VARCHAR(20),
City VARCHAR(15),
bus_id INT,
amount INT,
PRIMARY KEY(p_ID)
);
CREATE TRIGGER calculate
before INSERT 
ON passenger
FOR EACH ROW
SET new.amount = 1000;
create table Final_amount(per int );
CREATE TRIGGER total_amount
after insert 
ON passenger
FOR EACH ROW
insert into Final_amount values(new.amount);

INSERT INTO passenger Values(1, "Honey", "vijayawada", "10", "1000");
INSERT INTO passenger Values(2, "Luckie", "hyderabad", "23", "100");
select * from passenger;
