/* All tables are made in MySQL */
/* Used the data model from "http://www.databaseanswers.org/data_models/customers_and_products/index.htm" */
/* for this database */

CREATE DATABASE spheredb;

CREATE TABLE Ref_Product_Types(
  product_type_code VARCHAR(4) NOT NULL PRIMARY KEY,
  product_type_description TEXT NOT NULL
);

CREATE TABLE Ref_Payment_Methods(
  payment_method_code VARCHAR(4) NOT NULL PRIMARY KEY,
  payment_method_description TEXT NOT NULL
);

CREATE TABLE Ref_Address_Types(
  address_type_code VARCHAR(4) NOT NULL PRIMARY KEY,
  address_type_description VARCHAR(4)
);

CREATE TABLE Ref_Order_Status_Codes(
  order_status_code VARCHAR(4) NOT NULL PRIMARY KEY,
  order_status_description TEXT
);

CREATE TABLE Addresses(
  address_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  line_1_number_building TEXT NOT NULL,
  line_2_number_street TEXT NOT NULL,
  line_3_area_locality TEXT NOT NULL,
  city TEXT NOT NULL,
  zip_postcode INT,
  state_province_country TEXT,
  country TEXT NOT NULL,
  other_address_details TEXT
);

CREATE TABLE Products(
  product_id INT AUTO_INCREMENT NOT NULL,
  product_type_code VARCHAR(4) NOT NULL,
  product_name VARCHAR(255) NOT NULL,
  product_price DECIMAL(4,2) NOT NULL,
  other_product_details TEXT,
  FOREIGN KEY(product_type_code) 
    REFERENCES Ref_Product_Types(product_type_code)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);


  
