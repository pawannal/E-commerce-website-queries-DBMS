SET SQL_SAFE_UPDATES = 0;
create table if not exists `supplier`(
`SUPP_ID` int primary key auto_increment,
`SUPP_NAME` varchar(50) NOT NULL,
`SUPP_CITY` varchar(50),
`SUPP_PHONE` varchar(50) NOT NULL
);
