create table if not exists `customer`(
`CUS_ID` INT NOT NULL PRIMARY KEY,
`CUS_NAME` varchar(50) NOT NULL,
`CUS_PHONE` varchar(10)NOT NULL,
`CUS_CITY` varchar(30) NOT NULL,
`CUS_GENDER` CHAR);
