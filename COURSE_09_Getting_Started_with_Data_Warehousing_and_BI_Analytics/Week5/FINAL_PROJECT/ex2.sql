--Exercise 2 - Create schema for Data Warehouse on DB2

--Task 5 - Create the dimension table MyDimDate

CREATE TABLE public."MyDimDate"
(
    dateid int NOT NULL,
    day int NOT NULL,
    weekday int NOT NULL,
    weekdayname varchar(10) NOT NULL,
    year int NOT NULL,
    month int NOT NULL,
    monthname varchar(10) NOT NULL,
    quarter int NOT NULL,
    quartername varchar(2) NOT NULL,
    PRIMARY KEY (dateid)
);

--Task 6 - Create the dimension table MyDimWaste

CREATE TABLE public."MyDimWaste"
(
    wastetypeid int NOT NULL,
    wastetype varchar(20) NOT NULL,
    PRIMARY KEY (wastetypeid)
);

--Task 7 - Create the dimension table MyDimZone

CREATE TABLE public."MyDimZone"
(
    zoneid int NOT NULL,
    zonename varchar(10) NOT NULL,
    city varchar(30) NOT NULL,
    PRIMARY KEY (zoneid)
);

--Task 8 - Create the fact table MyFactTrips

CREATE TABLE public."MyFactTrips"
(
    tripid int NOT NULL,
    dateid int NOT NULL,
    wastetypeid int NOT NULL,
    zoneid int NOT NULL,
    wastetons int NOT NULL,
    PRIMARY KEY (tripid)
);

--EXTRA STEP

ALTER TABLE public."MyFactTrips"
    ADD FOREIGN KEY (wastetypeid)
    REFERENCES public."MyDimWaste" (wastetypeid)
    NOT VALID;

ALTER TABLE public."MyFactTrips"
    ADD FOREIGN KEY (zoneid)
    REFERENCES public."MyDimZone" (zoneid)
    NOT VALID;
