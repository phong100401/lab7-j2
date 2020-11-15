Use ebookstore;

CREATE TABLE Users(
    ID int auto_increment,
    Username varchar(50) not null ,
    Password varchar(50) not null ,
    role int check (role regexp '[0-3]{1}'),
    constraint chk_password check (Password regexp '^(?=.*[!@#$%^&*-])(?=.*[0-9])(?=.*[A-Z]).{8,20}'),
    constraint fk_id foreign key (id) references customers(CustomerID)
);

INSERT INTO Users values (null,'ilovekimchi','123@123Aa',1),
                         (null,'ilovekimpap','12@3456aA',1),
                         (null,'ilovebama','2021@56Ea',1);

select * from Users;