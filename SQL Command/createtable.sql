CREATE TABLE USER_TABLE (
    USER_ID VARCHAR(12) CONSTRAINT USER_USER_ID_PK PRIMARY KEY,
    USERNAME VARCHAR(30),
    PASSWORD VARCHAR(15),
    DOB DATE,
    DOR DATE,
    ROLE VARCHAR(10), 
    IMAGE BLOB, 
    CONT_EMAIL VARCHAR(30),
    CONT_PHONE VARCHAR(14), 
    ADD_COUNTRY VARCHAR(20), 
    ADD_STATE VARCHAR(20), 
    ADD_DISTRICT VARCHAR(20), 
    ADD_CITY VARCHAR(20), 
    ADD_AREA VARCHAR(20), 
    ADD_POSTAL_CODE VARCHAR(6)
);

CREATE TABLE SOCIAL_MEDIA (
    USER_ID VARCHAR(12), 
    PROFILE_LINK VARCHAR(150), 
    CONSTRAINT SOCIAL_MEDIA_USER_ID_FK FOREIGN KEY(USER_ID) REFERENCES USER_TABLE(USER_ID) ON DELETE CASCADE
);

CREATE TABLE OWNER (
    USER_ID VARCHAR(12), 
    OWNER_ID VARCHAR(12), 
    CONSTRAINT OWNER_USER_ID_FK FOREIGN KEY(USER_ID) REFERENCES USER_TABLE(USER_ID) ON DELETE CASCADE
);

CREATE TABLE CUSTOMER (
    USER_ID VARCHAR(12), 
    CUSTOMER_ID VARCHAR(12), 
    CONSTRAINT CUST_USER_ID_FK FOREIGN KEY(USER_ID) REFERENCES USER_TABLE(USER_ID) ON DELETE CASCADE
);

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

CREATE TABLE PROPERTY_IMAGE (
    PROPERTY_ID VARCHAR(12), 
    P_IMAGE BLOB, 
    CONSTRAINT IMAGE_PROPERTY_ID_FK FOREIGN KEY(PROPERTY_ID) REFERENCES PROPERTY(PROPERTY_ID) ON DELETE CASCADE
);

CREATE TABLE APPOINTMENT (
    MEETING_ID VARCHAR(12) CONSTRAINT MEET_MEET_ID_PK PRIMARY KEY, 
    TIME DATE, 
    LINK VARCHAR(150), 
    STATUS VARCHAR(10), 
    CUST_USER_ID VARCHAR(12), 
    OWNER_USER_ID VARCHAR(12), 
    PROPERTY_ID VARCHAR(12),
    CONSTRAINT MEET_PROPERTY_ID_FK FOREIGN KEY(PROPERTY_ID) REFERENCES PROPERTY(PROPERTY_ID) ON DELETE CASCADE,
    CONSTRAINT MEET_CUST_USER_ID_FK FOREIGN KEY(CUST_USER_ID) REFERENCES USER_TABLE(USER_ID) ON DELETE CASCADE, 
    CONSTRAINT MEET_OWNER_USER_ID_FK FOREIGN KEY(OWNER_USER_ID) REFERENCES USER_TABLE(USER_ID) ON DELETE CASCADE
);

CREATE TABLE OWNS (
    OWNER_USER_ID VARCHAR(12), 
    PROPERTY_ID VARCHAR(12), 
    CONSTRAINT OWNS_USER_ID_FK FOREIGN KEY(OWNER_USER_ID) REFERENCES USER_TABLE(USER_ID) ON DELETE CASCADE, 
    CONSTRAINT OWNS_PROPERTY_ID_FK FOREIGN KEY(PROPERTY_ID) REFERENCES PROPERTY(PROPERTY_ID) ON DELETE CASCADE
);

CREATE TABLE LOOKS_FOR (
    CUST_USER_ID VARCHAR(12), 
    PROPERTY_ID VARCHAR(12), 
    OBJECTIVE VARCHAR(15), 
    CONSTRAINT LOOKS_FOR_USER_ID_FK FOREIGN KEY(CUST_USER_ID) REFERENCES USER_TABLE(USER_ID) ON DELETE CASCADE, 
    CONSTRAINT LOOKS_FOR_PROPERTY_ID_FK FOREIGN KEY(PROPERTY_ID) REFERENCES PROPERTY(PROPERTY_ID) ON DELETE CASCADE
);

CREATE TABLE REVIEWS (
    COMMENT_ID VARCHAR(12) CONSTRAINT REVIEW_REVIEW_ID_PK PRIMARY KEY, 
    COMMENT_DESC VARCHAR(200), 
    RATING NUMBER, 
    USER_ID VARCHAR(12), 
    PROPERTY_ID VARCHAR(12), 
    CONSTRAINT REVIEWS_USER_ID_FK FOREIGN KEY(USER_ID) REFERENCES USER_TABLE(USER_ID) ON DELETE CASCADE, 
    CONSTRAINT REVIEWS_PROPERTY_ID_FK FOREIGN KEY(PROPERTY_ID) REFERENCES PROPERTY(PROPERTY_ID) ON DELETE CASCADE
);

CREATE TABLE SUBSCRIBER (
    SUBS_ID VARCHAR(12) CONSTRAINT SUBSCRIBER_SUBS_ID_PK PRIMARY KEY, 
    NAME VARCHAR(20), 
    EMAIL VARCHAR(20)
);

CREATE TABLE FORUM (
    FORUM_ID VARCHAR(12) CONSTRAINT FORUM_FORUM_ID_PK PRIMARY KEY, 
    NAME VARCHAR(20), 
    WRITER_ID VARCHAR(12), 
    WRITER_EMAIL VARCHAR(20), 
    QUESTION VARCHAR(150), 
    ANSWER VARCHAR(150), 
    SUBS_ID VARCHAR(12), 
    USER_ID VARCHAR(12), 
    CONSTRAINT FORUM_SUBS_ID_FK FOREIGN KEY(SUBS_ID) REFERENCES SUBSCRIBER(SUBS_ID) ON DELETE CASCADE, 
    CONSTRAINT FORUM_USER_ID_FK FOREIGN KEY(USER_ID) REFERENCES USER_TABLE(USER_ID) ON DELETE CASCADE
);

CREATE TABLE CONTRACT (
    CONTRACT_ID VARCHAR(12) CONSTRAINT CONTRACT_CONTRACT_ID_PK PRIMARY KEY, 
    PRICE NUMBER, 
    START_OF DATE, 
    END_OF DATE, 
    DURATION DATE, 
    COMMISSION_FEE NUMBER, 
    COMMISSION_STATUS VARCHAR(10), 
    DATE_OF_SIGNING DATE, 
    CONTRACT_STATUS VARCHAR(10), 
    PROPERTY_ID VARCHAR(12), 
    MEETING_ID VARCHAR(12), 
    CONSTRAINT CONTRACT_PROPERTY_ID_FK FOREIGN KEY(PROPERTY_ID) REFERENCES PROPERTY(PROPERTY_ID) ON DELETE CASCADE, 
    CONSTRAINT CONTRACT_MEETING_ID_FK FOREIGN KEY(MEETING_ID) REFERENCES APPOINTMENT(MEETING_ID) ON DELETE CASCADE
);

CREATE TABLE FOR_SALE (
    CONTRACT_ID VARCHAR(12), 
    ADVANCE NUMBER, 
    FREQUENCY NUMBER, 
    UNIT NUMBER,
    CONSTRAINT FOR_SALE_CONTRACT_FK FOREIGN KEY(CONTRACT_ID) REFERENCES CONTRACT(CONTRACT_ID) ON DELETE CASCADE
);

CREATE TABLE FOR_RENT (
    CONTRACT_ID VARCHAR(12), 
    LEASE NUMBER, 
    RENT NUMBER, 
    CONSTRAINT FOR_RENT_CONTRACT_FK FOREIGN KEY(CONTRACT_ID) REFERENCES CONTRACT(CONTRACT_ID) ON DELETE CASCADE
);

CREATE TABLE TRANSACTIONS (
    TRANSACTION_ID VARCHAR(12) CONSTRAINT TRANSAC_TRANSAC_ID_PK PRIMARY KEY, 
    DATE_OF DATE, 
    INVOICE BLOB, 
    AMOUNT NUMBER, 
    CONTRACT_ID VARCHAR(12), 
    CUST_USER_ID VARCHAR(12), 
    OWNER_USER_ID VARCHAR(12), 
    CONSTRAINT TR_CONTRACT_ID_FK FOREIGN KEY(CONTRACT_ID) REFERENCES CONTRACT(CONTRACT_ID) ON DELETE CASCADE, 
    CONSTRAINT TR_CUST_ID_FK FOREIGN KEY(CUST_USER_ID) REFERENCES USER_TABLE(USER_ID) ON DELETE CASCADE, 
    CONSTRAINT TR_OWNER_ID_FK FOREIGN KEY(OWNER_USER_ID) REFERENCES USER_TABLE(USER_ID) ON DELETE CASCADE
);

