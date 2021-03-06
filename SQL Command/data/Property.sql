CREATE TABLE PROPERTY (
    PROPERTY_ID VARCHAR(12) CONSTRAINT PROPERTY_PROPERTY_ID_PK PRIMARY KEY, 
    P_TITLE VARCHAR(40),
    FLOORS NUMBER, 
    ROOMS_BEDROOMS NUMBER, 
    ROOMS_BATHROOMS NUMBER, 
    ROOMS_BALCONY VARCHAR(20), 
    ROOMS_KITCHEN VARCHAR(20), 
    ROOMS_DINING VARCHAR(20), 
    FACILITIES VARCHAR(150), 
    TYPE VARCHAR(20), 
    PROPERTY_AREA NUMBER, 
    AREA NUMBER,
    OCCUPANCY NUMBER, 
    FLOOR_PLAN BLOB, 
    PURPOSE VARCHAR(10), 
    PRICE NUMBER, 
    LOC_AREA VARCHAR(20), 
    LOC_CITY VARCHAR(20), 
    LOC_DISTRICT VARCHAR(20), 
    LOC_DIVISION VARCHAR(20), 
    STATUS VARCHAR(10),
    THUMBNAIL VARCHAR(300)
);




INSERT INTO PROPERTY (PROPERTY_ID,P_TITLE, FLOORS, ROOMS_BEDROOMS, ROOMS_BATHROOMS, ROOMS_BALCONY, ROOMS_KITCHEN, ROOMS_DINING, FACILITIES, TYPE, PROPERTY_AREA, OCCUPANCY, PURPOSE, PRICE, LOC_AREA, LOC_CITY, LOC_DISTRICT, LOC_DIVISION, STATUS,THUMBNAIL) 
VALUES ('P_00001','Apartment in Alabama', 1, 3, 2, 'Hung Balcony', 'Attached', 'One-Wall Layout', 'Security Cameras on Property, Fire Extinguisher, Private Entrance, Free Parking, Pets Allowed', 'Residential', 2200, 5, 'For Rent', 24000, 'Alabama', 'Montgomery', 'District 3', 'Division 1', 'Available','https://i.ibb.co/7X373HT/download-2.jpg'); 


INSERT INTO PROPERTY (PROPERTY_ID,P_TITLE, FLOORS, ROOMS_BEDROOMS, ROOMS_BATHROOMS, ROOMS_BALCONY, ROOMS_KITCHEN, ROOMS_DINING, FACILITIES, TYPE, PROPERTY_AREA, OCCUPANCY, PURPOSE, PRICE, LOC_AREA, LOC_CITY, LOC_DISTRICT, LOC_DIVISION, STATUS,THUMBNAIL) 
VALUES ('P_00002','Apartment in Banani', 3, 3, 1, 'Stacked Balcony', 'Attached', 'One-Wall Layout', 'Security Cameras on Property, Private Entrance, Free Parking, Backyard, Pets Allowed', 'Residential', 2700, 6, 'For Sale', 57000, 'Banani', 'Sacramento', 'District 1', 'Division 1', 'Available','https://i.ibb.co/7X373HT/download-2.jpg'); 

INSERT INTO PROPERTY (PROPERTY_ID,P_TITLE, FLOORS, ROOMS_BEDROOMS, ROOMS_BATHROOMS, ROOMS_BALCONY, ROOMS_KITCHEN, ROOMS_DINING, FACILITIES, TYPE, PROPERTY_AREA, OCCUPANCY, PURPOSE, PRICE, LOC_AREA, LOC_CITY, LOC_DISTRICT, LOC_DIVISION, STATUS,THUMBNAIL) 
VALUES ('P_00003','Apartment in Kochukhet', 16, 3, 2, 'False Balcony', 'Not Attached', 'L-Shaped Layout', 'Private Entrance, Free Parking, Backyard', 'Residential', 3200, 4, 'For Sale', 65000, 'Kochukhet', 'Sacramento', 'District 1', 'Division 1', 'Available','https://i.ibb.co/7X373HT/download-2.jpg'); 



INSERT INTO PROPERTY (PROPERTY_ID,P_TITLE, FLOORS, ROOMS_BEDROOMS, ROOMS_BATHROOMS, ROOMS_BALCONY, ROOMS_KITCHEN, ROOMS_DINING, FACILITIES, TYPE, PROPERTY_AREA, OCCUPANCY, PURPOSE, PRICE, LOC_AREA, LOC_CITY, LOC_DISTRICT, LOC_DIVISION, STATUS,THUMBNAIL) 
VALUES ('P_00004','Apartment in DOHS', 20, 5, 2, 'Cantilevered Balcony', 'L-Shaped Layout', 'Any Type', 'Private Entrance, Free Parking', 'Residential', 6400, 8, 'For Rent', 15000, 'Berkeley DOHS', 'Perryridge', 'District 2', 'Division 7', 'Rented','https://i.ibb.co/7X373HT/download-2.jpg'); 

INSERT INTO PROPERTY (PROPERTY_ID,P_TITLE, FLOORS, ROOMS_BATHROOMS, ROOMS_BALCONY, ROOMS_KITCHEN, ROOMS_DINING, FACILITIES, TYPE, PROPERTY_AREA, OCCUPANCY, PURPOSE, PRICE, LOC_AREA, LOC_CITY, LOC_DISTRICT, LOC_DIVISION, STATUS,THUMBNAIL) 
VALUES ('P_00005','Apartment in Grandarea', 0, 20, 'Cantilevered Balcony', 'Peninsula Layout', 'Any Type', 'Free Parking', 'Commercial', 45000, 30, 'For Sale', 2000000, 'Grandarea', 'Perryridge', 'District 2', 'Division 7', 'Sold','https://i.ibb.co/7X373HT/download-2.jpg'); 

INSERT INTO PROPERTY (PROPERTY_ID,P_TITLE, FLOORS, ROOMS_BATHROOMS, ROOMS_BALCONY, ROOMS_KITCHEN, ROOMS_DINING, FACILITIES, TYPE, PROPERTY_AREA, OCCUPANCY, PURPOSE, PRICE, LOC_AREA, LOC_CITY, LOC_DISTRICT, LOC_DIVISION, STATUS,THUMBNAIL) 
VALUES ('P_00006','Apartment in Bigoo', 0, 20, 'Cantilevered Balcony', 'Peninsula Layout', 'Any Type', 'Free Parking', 'Commercial', 45000, 30, 'For Sale', 600000, 'Biggo', 'Perryridge', 'District 2', 'Division 7', 'Sold','https://i.ibb.co/7X373HT/download-2.jpg'); 

INSERT INTO PROPERTY (PROPERTY_ID,P_TITLE, FLOORS, ROOMS_BATHROOMS, ROOMS_BALCONY, ROOMS_KITCHEN, ROOMS_DINING, FACILITIES, TYPE, PROPERTY_AREA, OCCUPANCY, PURPOSE, PRICE, LOC_AREA, LOC_CITY, LOC_DISTRICT, LOC_DIVISION, STATUS,THUMBNAIL) 
VALUES ('P_00007','Apartment in Tejgaon', 0, 20, 'Cantilevered Balcony', 'Peninsula Layout', 'Any Type', 'Free Parking', 'Commercial', 45000, 30, 'For Sale', 9500000, 'Tejgaon', 'Perryridge', 'District 2', 'Division 7', 'Sold','https://i.ibb.co/7X373HT/download-2.jpg'); 

INSERT INTO PROPERTY (PROPERTY_ID,P_TITLE, FLOORS, ROOMS_BATHROOMS, ROOMS_BALCONY, ROOMS_KITCHEN, ROOMS_DINING, FACILITIES, TYPE, PROPERTY_AREA, OCCUPANCY, PURPOSE, PRICE, LOC_AREA, LOC_CITY, LOC_DISTRICT, LOC_DIVISION, STATUS,THUMBNAIL) 
VALUES ('P_00008','Apartment in KSAAAM', 0, 20, 'Cantilevered Balcony', 'Peninsula Layout', 'Any Type', 'Free Parking', 'Commercial', 45000, 30, 'For Sale', 960000, 'KSAAAM', 'Perryridge', 'District 2', 'Division 7', 'Sold','https://i.ibb.co/7X373HT/download-2.jpg'); 

