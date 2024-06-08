-- Create dealership table
CREATE TABLE dealerships (
    dealership_id INT AUTO_INCREMENT,
    name VARCHAR(50),
    address VARCHAR(50),
    phone VARCHAR(12),
    PRIMARY KEY (dealership_id)
);

-- Create vehicles table
CREATE TABLE vehicles (
    VIN VARCHAR(17),  -- Assuming a standard VIN length of 17 characters
    Make VARCHAR(30),
    Model VARCHAR(30),
    CarYear INT,
    SOLD TINYINT(1),
    PRIMARY KEY (VIN)
);

-- Create inventory table with composite primary key and foreign keys
CREATE TABLE inventory (
    dealership_id INT,
    VIN VARCHAR(17),
    PRIMARY KEY (dealership_id, VIN),
    FOREIGN KEY (dealership_id) REFERENCES dealerships (dealership_id),
    FOREIGN KEY (VIN) REFERENCES vehicles (VIN)
);

-- Create sales_contracts table with foreign keys
CREATE TABLE sales_contracts (
    ContractID INT AUTO_INCREMENT,
    dealership_id INT,
    VIN VARCHAR(17),
    Make VARCHAR(30),
    Model VARCHAR(30),
    PRIMARY KEY (ContractID),
    FOREIGN KEY (dealership_id) REFERENCES dealerships (dealership_id),
    FOREIGN KEY (VIN) REFERENCES vehicles (VIN)
);

-- Create lease_contracts table with foreign keys
CREATE TABLE lease_contracts (
    ContractID INT AUTO_INCREMENT,
    dealership_id INT,
    VIN VARCHAR(17),
    Make VARCHAR(30),
    Model VARCHAR(30),
    PRIMARY KEY (ContractID),
    FOREIGN KEY (dealership_id) REFERENCES dealerships (dealership_id),
    FOREIGN KEY (VIN) REFERENCES vehicles (VIN)
);









