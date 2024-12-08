CREATE TABLE b_awz_currency (
ID int GENERATED BY DEFAULT AS IDENTITY NOT NULL,
CODE varchar(3) NOT NULL,
PROVIDER varchar(25) NOT NULL,
AMOUNT decimal NOT NULL,
AMOUNT_CNT int NOT NULL DEFAULT 0,
CURS_DATE timestamp,
PRIMARY KEY (`ID`)
);
CREATE UNIQUE INDEX b_awz_currency_provired_code_curs_date ON b_awz_currency (provider, code, curs_date);