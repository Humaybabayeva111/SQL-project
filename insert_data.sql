
insert into customer_table values (1,'Aysel','Babazade','0705457883',NULL,'0556784342','babazadeaysel@gmail.com','Sumqayit');
insert into customer_table values (2,'Aysen','Agayeva','0775458881','0512345577',NULL,'agayevaaysen@gmail.com','Baki');
insert into customer_table values (3,'Nurlan','Babayev',NULL,'0556983231','0778923450','babayevnurlan@gmail.com','Gence');
insert into customer_table values (4,'Isgenderli','Nurtac','0702314140',NULL,'0512347788','isgenderlinurtac@gmail.com','Xirdalan');


insert into Valuta values(840,'USD');
insert into Valuta values(944,'AZN');
insert into Valuta values(978,'EUR');
insert into Valuta values(643,'RUB');
insert into Valuta values(826,'GBP');


INSERT INTO DB_History VALUES (6, 1, '11202019449331918206', 8000, 8200, SYSDATE, 840, 5.5);
INSERT INTO DB_History VALUES (7, 2, '33898018401849507204', 3000, 3100, SYSDATE, 978, 4.7);
INSERT INTO DB_History VALUES (8, 1, '33881019443152656216', 6000, 5900, SYSDATE, 944, 3.9);
INSERT INTO DB_History VALUES (9, 1, '33895419449440382304', 15000, 14800, SYSDATE, 826, 6.1);
INSERT INTO DB_History VALUES (10, 2, '43898019781817125204', 4000, 4200, SYSDATE, 643, 4.3);
INSERT INTO DB_History VALUES (11, 2, '33882029789456145204', 9000, 9200, SYSDATE, 840, 5.7);
INSERT INTO DB_History VALUES (12, 1, '33882018409408928204', 7500, 7400, SYSDATE, 978, 3.8);
INSERT INTO DB_History VALUES (13, 1, '33882019789146888212', 12000, 12100, SYSDATE, 944, 6.4);
INSERT INTO DB_History VALUES (14, 2, '33882018409809889204', 5000, 4800, SYSDATE, 826, 4.0);
INSERT INTO DB_History VALUES (15, 1, '33882018409376302204', 11000, 11300, SYSDATE, 643, 5.9);
INSERT INTO DB_History VALUES (16, 2, '33882218409472019304', 6700, 6900, SYSDATE, 840, 3.5);
INSERT INTO DB_History VALUES (17, 1, '33898018401109145120', 4500, 4600, SYSDATE, 978, 4.8);
INSERT INTO DB_History VALUES (18, 2, '33898028409238892204', 3000, 3100, SYSDATE, 944, 5.2);
INSERT INTO DB_History VALUES (19, 1, '33882018401832633204', 7200, 7100, SYSDATE, 826, 6.0);


---rate 5 den boyuk olan ve hesab nomresi 338 ile baslayan butun hesab nomrelerinin balanse beginini  0 etmek

Update DB_History d
set d.balance_begin=0
where d.rate>5 and d.Ac_no like '338%'

