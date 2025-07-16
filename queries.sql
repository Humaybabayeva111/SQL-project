
select*from customer_table;
select*from Valuta;
select *from DB_History

---ac_no,valuta_name ekrana cixartmaq

select d.Ac_no, v.Valuta_name
from DB_History d
join Valuta v on d.Val_id = v.Valuta_id;
---ilk 5 hesab nomresi 33882,33898 ,11202 beraber olmaqla ,musteri adini ekrana cixartmaq

select c.cust_name
from customer_table c
join DB_History d on c.customer_id=d.cust_no
where substr(Ac_no,1,5) in ('33882','33898','11202')

---hesab nomresinin daxilinde olan valuta kodlarinin qarsisinda valuta adlarini ekranan cixartmaq

select d.Ac_no,d.val_id,v.valuta_name
from DB_History d
join Valuta v on v.valuta_id=d.val_id

---Her Musterinin adina gore Balans begin ve balanse end summalari cixartmaq
select c.cust_name,
       Sum(d.balance_begin),
       Sum(d.balance_end)
from DB_History d
join customer_table c on c.customer_id=d.cust_no
group by c.cust_name

---33le baslayan butun hesab nomrelerinin aid oldugu musterilerin adinin sonuna onun adinin uzunlugunu birlesdiirmek

select c.cust_name||length(c.cust_name)
from DB_History d
join Customer_table c on c.customer_id=d.cust_no
where Ac_no like '33%'

---Ac_no hesab nomrelerinde 8,9,10 cu simvollari ekrana cixartmaq
select substr(d.ac_no,8,3)
from DB_History d

---Musteri adlarinda ilk 3 herfi ekranan cixartmaq
select c.cust_name,substr(c.cust_name,1,3)
from Customer_table c

---Ac_no sutunundan son 10 reqemi ekrana  cixartmaq

select substr(d.Ac_no,-10)

from DB_History d

---Musteri adinda yerlesen ilk a simvolunun indexini ekranan cixartmaq

select c.cust_name,instr(c.cust_name,'a')
from Customer_table c;

---rate 5 den boyuk olan ve hesab nomresi 338 ile baslayan butun hesab nomrelerinin balanse beginini  0 etmek

Update DB_History d
set d.balance_begin=0
where d.rate>5 and d.Ac_no like '338%'


---her musterinin nece hesabi oldugunu tapmaq

select c.cust_name,count(*)
from DB_History d
join customer_table c on c.customer_id=d.cust_no
group by c.cust_name

---Bankda yalniz bir musteri hesabi olan musterinin adini ekrana cixartmaq

select c.cust_name
from DB_History d
join customer_table c on c.customer_id=d.cust_no
group by c.cust_name
having count(*)=1

---Hesab nomresinin 5 ci simvolu 3 den boyuk musterilerin  adini soyadini ve movcud olan hec olmazsa bir elaqe nomresini Phone aliasi vererek ekrana cixartmaq

select c.cust_name,c.surname,c.phone1
from customer_table c
join DB_History d on d.cust_no=c.customer_id
where substr(d.Ac_no,5,1)>3

---Musteri tablesindeki butun melumatlari ekrana  cixartmaq ele etmek lazim ki null olan deyerler sifir ile evez olunsun
select c.customer_id,
       c.cust_name,
       c.surname,
       nvl(phone1,'0'),
       nvl(phone2,'0'),
       nvl(phone3,'0')
from customer_table c
