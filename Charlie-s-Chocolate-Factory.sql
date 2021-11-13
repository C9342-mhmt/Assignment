

CREATE DATABASE Manufacturer;

USE Manufacturer


CREATE TABLE product
(
prod_id INT PRIMARY KEY,
prod_name VARCHAR(200) NOT NULL,
quantity INT
)

---

CREATE TABLE compenent
(
comp_id INT PRIMARY KEY,
comp_name VARCHAR(200) NOT NULL,
[description] VARCHAR(200),
quantity_comp INT 
);


----


CREATE TABLE supplier
(
supp_id INT PRIMARY KEY,
supp_name VARCHAR(200) NOT NULL,
is_activ INT,

)


---

CREATE TABLE prod_comp
(
prod_id INT,
comp_id INT,
PRIMARY KEY (prod_id, comp_id),
FOREIGN KEY (prod_id) REFERENCES product (prod_id),
FOREIGN KEY (comp_id) REFERENCES compenent (comp_id)
)

---


CREATE TABLE comp_supp
(
comp_id INT,
supp_id INT,
order_date DATE NOT NULL,
quantity INT,
PRIMARY KEY (comp_id, supp_id),
FOREIGN KEY (supp_id) REFERENCES supplier (supp_id),
FOREIGN KEY (comp_id) REFERENCES compenent (comp_id)
)
