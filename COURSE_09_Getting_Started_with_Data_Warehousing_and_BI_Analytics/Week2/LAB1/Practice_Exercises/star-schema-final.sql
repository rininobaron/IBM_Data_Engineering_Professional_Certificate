BEGIN;


CREATE TABLE public."FactSales"
(
    rowid integer NOT NULL,
    dateid integer NOT NULL,
    storeid integer NOT NULL,
    totalsales integer NOT NULL,
    PRIMARY KEY (rowid)
);

CREATE TABLE public."DimDate"
(
    dateid integer NOT NULL,
    year integer NOT NULL,
    month integer NOT NULL,
    monthname "char" NOT NULL,
    day integer NOT NULL,
    weekday integer NOT NULL,
    weekdayname "char" NOT NULL,
    quarter integer NOT NULL,
    quartername "char" NOT NULL,
    PRIMARY KEY (dateid)
);

CREATE TABLE public."DimStore"
(
    storeid integer NOT NULL,
    country "char" NOT NULL,
    city "char" NOT NULL,
    PRIMARY KEY (storeid)
);

ALTER TABLE public."FactSales"
    ADD FOREIGN KEY (storeid)
    REFERENCES public."DimStore" (storeid)
    NOT VALID;


ALTER TABLE public."FactSales"
    ADD FOREIGN KEY (dateid)
    REFERENCES public."DimDate" (dateid)
    NOT VALID;

END;