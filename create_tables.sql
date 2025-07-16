create table customer_table(
             customer_id number primary key,
             cust_name varchar2(25),
             Surname varchar2(25),
             Phone1 varchar2(30),
             Phone2 varchar2(30),
             Phone3 varchar2(30),
             Email varchar2(40),
             Adress varchar2(40)
             );

Create table Valuta(
             Valuta_id number primary key,
             Valuta_name varchar2(30)
             );

Create table DB_History(
             His_id number primary key,
             Cust_no number,
             Ac_no varchar2(21),
             Balance_begin number,
             Balance_end number,
             date_to date,
             Val_id number,
             Rate number,
             Foreign key (Cust_no) references customer_table (customer_id),
             Foreign key (Val_id) references Valuta (valuta_id)
             );
