BEGIN;


CREATE SCHEMA IF NOT EXISTS real_estate;


CREATE TABLE real_estate."Investor" (
    "InvestorID" serial PRIMARY KEY,
    "FirstName" VARCHAR(255) NOT NULL,
    "LastName" VARCHAR(255) NOT NULL,
    "Phone" VARCHAR(15),
    "Email" VARCHAR(255),
    "Company" VARCHAR(255)
);


CREATE TABLE real_estate."Buildings" (
    "BuildingID" serial PRIMARY KEY,
    "Address" VARCHAR(255) NOT NULL,
    "Value" DECIMAL(10, 2) NOT NULL,
    "InvestorID" INTEGER NOT NULL,
    "SqFootage" INTEGER,
    "BuildingType" VARCHAR(50),
    FOREIGN KEY ("InvestorID") REFERENCES real_estate."Investor"("InvestorID")
);


ALTER TABLE real_estate."Investor" OWNER TO postgres;
ALTER TABLE real_estate."Buildings" OWNER TO postgres;


INSERT INTO real_estate."Investor" ("FirstName", "LastName", "Phone", "Email", "Company") VALUES
('Tony', 'Stark', '123-456-7890', 'tony@starkindustries.com', 'Stark Industries'),
('Bruce ', 'Wayne', '987-654-3210', 'bruce.wayne@wayneenterprises.com', 'Wayne Enterprises'),
('Lex', 'Luthor', '555-666-7777', 'info@lexcorp.com', 'LexCorp'),
('Victor', 'Von Doom', '111-222-3333', 'Vic@latveriaindustries', 'Latveria Idustries'),
('Felicia', 'Hardy', '222-333-4444', 'fhardy@hardy.com', 'Hardy Industries'),
('Charles', 'Xavier', '888-999-0000', 'charles.Francisx@example.com', 'Professor X Holdings'),
('Oswald', 'Cobblepot', '777-888-9999', 'oswaldpenguin@cobblepotshipping.com', 'Cobblepot Shipping'),
('Norman', 'Osborn', '666-777-8888', 'norm@oscorp.com', 'Oscorp'),
('Quentin', 'Beck', '444-555-6666', 'mysterio@becktech.com', 'BeckTech'),
('Oliver', 'Queen', '333-444-5555', 'oliver.queen@queenconsolidated.com', 'Queen Consolidated');



INSERT INTO real_estate."Buildings" ("Address", "Value", "InvestorID", "SqFootage", "BuildingType") VALUES
('1234 Market St', 1200000.00, 1, 4500, 'Retail'),
('5678 Broadway Ave', 1500000.00, 1, 6000, 'Office'),
('91011 Maple Lane', 850000.00, 2, 3000, 'Multi-family'),
('2345 Vine St', 750000.00, 3, 3200, 'Mixed-Use'),
('3456 Elm St', 980000.00, 4, 3500, 'Retail'),
('4567 Oak St', 1250000.00, 3, 4000, 'Office'),
('5678 Pine St', 650000.00, 6, 2800, 'Multi-family'),
('6789 Orchard Ave', 950000.00, 7, 3300, 'Mixed-Use'),
('7890 Cedar Blvd', 1100000.00, 8, 3800, 'Retail'),
('8901 Spruce St', 1000000.00, 2, 3600, 'Office');

COMMIT;
