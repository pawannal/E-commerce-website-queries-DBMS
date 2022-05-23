create table if not exists `product`(
`PRO_ID` INT NOT NULL PRIMARY KEY,
`PRO_NAME` varchar(20) NOT NULL DEFAULT "Dummy Product",
`PRO_DESC` varchar(60),
`CAT_ID` INT NOT NULL,
FOREIGN KEY (`CAT_ID`) REFERENCES CATEGORY (`CAT_ID`)
);

