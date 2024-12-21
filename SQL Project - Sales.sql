Create database Sales;
Show Create database sales;
Use Sales;

Create table if not exists Customer_Basic_Details (
User_id Int primary key, 
Acount_Number bigint(30), 
Customer_name varchar(30), 
Customer_mobile_number bigint(30), 
City varchar(20)
);


Create table if not exists Customer_Account_Details (
Acount_Number bigint(30) Primary Key,
Purchased_Date Varchar(20),
Tarrif_Plan Varchar(20),
Telephone_Number Varchar(20)
);


Create table if not exists Customer_Payment_Details (
Telephone_Number bigint(30) Primary Key,
Next_Bill_Genertion_Date Varchar(20),
Plan_Amount Int,
GST_Amount Int,
Total_Payable_Amount Int
);

Insert into Customer_Basic_Details (User_id,Acount_number,Customer_Name,Customer_Mobile_Number,City) Values
(1001, 20000890891,'Xavier',9600611334,'Periyakulam'),
(1002,7040055885,'Hajee',9677231229,'Chennai'),
(1003,7040720626,'Pottumuthu',8790737633,'Chennai'),
(1004,20000897259,'Kamalahasan S N',9965057337,'Trichy'),
(1005,20000908531,'Nizamudeen S',9688105452,'Dindigul'),
(1006,20000908266,'Mohamed Asik M',9843838837,'Periyakulam'),
(1007,20000903718,'Manimaran R',9943733768,'Virudhunagar'),
(1008,7029874307,'Chandrakala',9566202246,'Chennai'),
(1009,20000904497,'Krishna k C',9786943764,'Kallakurichi'),
(1010,7042575630,'Preethi Rita S',9080903199,'Chennai');


Insert into Customer_Account_Details (Acount_Number,Purchased_Date,Tarrif_Plan,Telephone_Number) Values
(20000890891,'2021-12-28',589,4546645055),
(7040055885,'2023-01-02',499,4442106920),
(7040720626,'2022-02-20',499,4442155863),
(20000897259,'2021-06-06',999,4314521437),
(20000908531,'2024-01-10',899,4514069940),
(20000908266,'2020-07-07',1499,4546655928),
(20000903718,'2022-08-08',589,4562463882),
(7029874307,'2021-09-09',999,4443552246),
(20000904497,'2023-10-10',589,4151469970),
(7042575630,'2020-11-11',499,4449529724);

Insert into Customer_Payment_Details(Telephone_Number,Next_Bill_Genertion_Date,Plan_Amount,GST_Amount,Total_Payable_Amount) Values
(4546645055,'2022-01-27',589,106,695),
(4442106920,'2023-02-01',499,90,589),
(4442155863,'2022-03-22',499,90,589),
(4314521437,'2021-07-06',999,180,1179),
(4514069940,'2024-02-09',899,162,1061),
(4546655928,'2020-08-06',1499,270,1769),
(4562463882,'2022-09-07',589,106,695),
(4443552246,'2021-10-09',999,180,1179),
(4151469970,'2023-11-09',589,106,695),
(4449529724,'2020-12-11',499,90,589);

Select * From Customer_Basic_Details;
Select * From Customer_Account_Details;
Select * From Customer_Payment_Details;


-----------------------------------------------------------------------------------------------
/Using Select Function/

Select customer_Basic_Details.User_ID,customer_Basic_Details.Acount_Number,Customer_Basic_Details.Customer_name,
Customer_Basic_Details.Customer_mobile_number,Customer_Basic_Details.city,Customer_Account_Details.Purchased_Date,
Customer_Account_Details.Tarrif_Plan,Customer_Account_Details.Telephone_Number,Customer_Payment_Details.Next_Bill_Genertion_Date,
Customer_Payment_Details.Total_Payable_Amount

From Customer_Basic_Details

Inner Join Customer_Account_Details
ON customer_Basic_Details.Acount_Number=Customer_Account_Details.Acount_Number

Inner Join Customer_Payment_Details
ON Customer_Account_Details.Telephone_Number=Customer_Payment_Details.Telephone_Number;

-----------------------------------------------------------------------------------------------

/Using Where Fuction/
Select customer_Basic_Details.User_ID,customer_Basic_Details.Acount_Number,Customer_Basic_Details.Customer_name,
Customer_Basic_Details.Customer_mobile_number,Customer_Basic_Details.city,Customer_Account_Details.Purchased_Date,
Customer_Account_Details.Tarrif_Plan,Customer_Account_Details.Telephone_Number,Customer_Payment_Details.Next_Bill_Genertion_Date,
Customer_Payment_Details.Total_Payable_Amount

From Customer_Basic_Details

Inner Join Customer_Account_Details
ON customer_Basic_Details.Acount_Number=Customer_Account_Details.Acount_Number

Inner Join Customer_Payment_Details
ON Customer_Account_Details.Telephone_Number=Customer_Payment_Details.Telephone_Number

Where Customer_Basic_Details.User_ID="1005";

-----------------------------------------------------------------------------------------------

/Using Update Funtion/

Update Customer_Basic_Details
SET City="Bangalore" where User_id=1006;


-----------------------------------------------------------------------------------------------

/Using Delete Function/

Delete from Customer_Account_Details
Where Telephone_Number=4449529724;

--------------------------------------------------------------------------
/Using View Function/

Create View Sales_View as select User_ID, Customer_name,City from Customer_Basic_Details;

Select * from Sales_View;

-----------------------------------------------------------------------------




