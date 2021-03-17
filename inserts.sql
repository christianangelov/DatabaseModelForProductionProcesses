/*Parameter_ */
 
INSERT INTO PARAMETER_ (Parameter_ID,NAME_WERT,untergrenze,obergrenze,EINHEIT) VALUES (1, 'Pressdruck' ,'0','700','BAR');
INSERT INTO PARAMETER_ (Parameter_ID,NAME_WERT,untergrenze,obergrenze,EINHEIT) VALUES (2, 'Temperatur' ,'0','2000','*C');
INSERT INTO PARAMETER_ (Parameter_ID,NAME_WERT,untergrenze,obergrenze,EINHEIT) VALUES (3, 'Zeit' ,'0','60','sec');
INSERT INTO PARAMETER_ (Parameter_ID,NAME_WERT,untergrenze,obergrenze,EINHEIT) VALUES (4, 'Druck' ,'0','900','BAR');
INSERT INTO PARAMETER_ (Parameter_ID,NAME_WERT,untergrenze,obergrenze) VALUES (5, 'Test1' ,'0','800');
INSERT INTO PARAMETER_ (Parameter_ID,NAME_WERT,untergrenze,obergrenze) VALUES (6, 'Test2' ,'0','900');
INSERT INTO PARAMETER_ (Parameter_ID,NAME_WERT,untergrenze,obergrenze) VALUES (7, 'Test3' ,'0','1000');
INSERT INTO PARAMETER_ (Parameter_ID,NAME_WERT,untergrenze,obergrenze) VALUES (8, 'Test4' ,'0','1100');
INSERT INTO PARAMETER_ (Parameter_ID,NAME_WERT,untergrenze,obergrenze) VALUES (9, 'Test5' ,'0','1100');

INSERT INTO PARAMETER_ (Parameter_ID,NAME_WERT) VALUES (10, 'FARBE');
INSERT INTO PARAMETER_ (Parameter_ID,NAME_WERT) VALUES (11, 'Material');


/*Produktion Autoblech*/
INSERT INTO EVZ_Parameter_ (ID,Parameter_ID,ZIEL,MIN,MAX) VALUES (1, 1 ,'110','100','130');
INSERT INTO EVZ_Parameter_ (ID,Parameter_ID,ZIEL,MIN,MAX) VALUES (2, 2 ,'500','300','1000');
INSERT INTO EVZ_Parameter_ (ID,Parameter_ID,ZIEL,MIN,MAX) VALUES (3, 3 ,'30','15','45');
INSERT INTO EVZ_Parameter_ (ID,Parameter_ID,ZIEL,MIN,MAX) VALUES (4, 4 ,'110','50','300');
INSERT INTO EVZ_Parameter_ (ID,Parameter_ID,ZIEL,MIN,MAX) VALUES (5, 5 ,'110','100','300');


/*Produktion Autoblech*/

INSERT INTO EZV_ (EZV_ID, EZV_PARAMETER_ID,NAME) values (100,1, 'MERZEDES_BLECH121');
INSERT INTO EZV_ (EZV_ID, EZV_PARAMETER_ID,NAME) values (101,2, 'MERZEDES_BLECH312');
INSERT INTO EZV_ (EZV_ID, EZV_PARAMETER_ID,NAME) values (102,3, 'MERZEDES_BLECH316');
INSERT INTO EZV_ (EZV_ID, EZV_PARAMETER_ID,NAME) values (103,4, 'MERZEDES_BLECH111');

INSERT INTO EZV_ (EZV_ID, EZV_PARAMETER_ID,NAME) values (200,1, 'AUDI_BLECH');
INSERT INTO EZV_ (EZV_ID, EZV_PARAMETER_ID,NAME) values (201,2, 'AUDI_BLECH');
INSERT INTO EZV_ (EZV_ID, EZV_PARAMETER_ID,NAME) values (202,3, 'AUDI_BLECH');
INSERT INTO EZV_ (EZV_ID, EZV_PARAMETER_ID,NAME) values (203,4, 'AUDI_BLECH');

INSERT INTO EZV_ (EZV_ID, EZV_PARAMETER_ID,NAME) values (300,1, 'SchiffBlech');


/*EZV GRUPPE*/

Insert into EZV_GRUPPE(EZV_Gruppe, EZV_id,ParameterID, Name) values(1,100,1,'Autoblech'); 
Insert into EZV_GRUPPE(EZV_Gruppe, EZV_id,ParameterID, Name) values(1,101,2,'Autoblech'); 
Insert into EZV_GRUPPE(EZV_Gruppe, EZV_id,ParameterID, Name) values(1,102,3,'Autoblech'); 
Insert into EZV_GRUPPE(EZV_Gruppe, EZV_id,ParameterID, Name) values(1,103,4,'Autoblech'); 

Insert into EZV_GRUPPE(EZV_Gruppe, EZV_id,ParameterID, Name) values(1,200,1,'Autoblech'); 
Insert into EZV_GRUPPE(EZV_Gruppe, EZV_id,ParameterID, Name) values(1,201,2,'Autoblech'); 
Insert into EZV_GRUPPE(EZV_Gruppe, EZV_id,ParameterID, Name) values(1,202,3,'Autoblech'); 
Insert into EZV_GRUPPE(EZV_Gruppe, EZV_id,ParameterID, Name) values(1,203,4,'Autoblech'); 

Insert into EZV_GRUPPE(EZV_Gruppe, EZV_id,ParameterID, Name) values(2,300,4,'Nicht-AutoBlech'); 
/*Produktion Autoblech*/

INSERT INTO Text_Parameter_ (ID, PARAMETER_ID,TEXT) values (1,10, 'BLAU');
INSERT INTO Text_Parameter_ (ID, PARAMETER_ID,TEXT) values (2,10, 'GRUEN');
INSERT INTO Text_Parameter_ (ID, PARAMETER_ID,TEXT) values (3,10, 'DUNKELBLAU');
INSERT INTO Text_Parameter_ (ID, PARAMETER_ID,TEXT) values (4,10, 'SCHWARZ');
INSERT INTO Text_Parameter_ (ID, PARAMETER_ID,TEXT) values (5,10, 'LILA');
INSERT INTO Text_Parameter_ (ID, PARAMETER_ID,TEXT) values (6,10, 'GELB');

INSERT INTO Text_Parameter_ (ID, PARAMETER_ID,TEXT) values (7,11, 'ALU');
INSERT INTO Text_Parameter_ (ID, PARAMETER_ID,TEXT) values (8,11, 'STAHL');
INSERT INTO Text_Parameter_ (ID, PARAMETER_ID,TEXT) values (9,11, 'EISEN');
INSERT INTO Text_Parameter_ (ID, PARAMETER_ID,TEXT) values (10,11, 'KUNSTSTOFF');

/*PRESSWERK*/

Insert into PRESSWERK (PRESSWERK_ID,Lebensdauer,Lebensalter,Anzahl_Gepr_Teile) values (1,'20 Tage', '365 Tage', 2000); 
Insert into PRESSWERK (PRESSWERK_ID,Lebensdauer,Lebensalter,Anzahl_Gepr_Teile) values (2,'25 Tage', '700 Tage', 4000); 
Insert into PRESSWERK (PRESSWERK_ID,Lebensdauer,Lebensalter,Anzahl_Gepr_Teile) values (3,'30 Tage', '200 Tage', 5000); 
Insert into PRESSWERK (PRESSWERK_ID,Lebensdauer,Lebensalter,Anzahl_Gepr_Teile) values (4,'35 Tage', '500 Tage', 6000); 
Insert into PRESSWERK (PRESSWERK_ID,Lebensdauer,Lebensalter,Anzahl_Gepr_Teile) values (5,'40 Tage', '400 Tage', 7000); 

/*LACKIERWERK*/
Insert into LACKIERWERK (LACKIERWERK_ID,Lebensdauer,Lebensalter,Anzahl_Lack_Teile) values (6,'20 Tage', '365 Tage', 2000); 
Insert into LACKIERWERK (LACKIERWERK_ID,Lebensdauer,Lebensalter,Anzahl_Lack_Teile) values (7,'25 Tage', '700 Tage', 4000); 
Insert into LACKIERWERK (LACKIERWERK_ID,Lebensdauer,Lebensalter,Anzahl_Lack_Teile) values (8,'30 Tage', '200 Tage', 5000); 
Insert into LACKIERWERK (LACKIERWERK_ID,Lebensdauer,Lebensalter,Anzahl_Lack_Teile) values (9,'35 Tage', '500 Tage', 6000); 
Insert into LACKIERWERK (LACKIERWERK_ID,Lebensdauer,Lebensalter,Anzahl_Lack_Teile) values (10,'40 Tage', '400 Tage', 7000); 

/*Giesserei*/
Insert into Giesserei (Giesserei_ID,Lebensdauer,Lebensalter,Anzahl_Geg_Teile) values (11,'20 Tage', '365 Tage', 2000); 
Insert into Giesserei (Giesserei_ID,Lebensdauer,Lebensalter,Anzahl_Geg_Teile) values (12,'25 Tage', '700 Tage', 4000); 
Insert into Giesserei (Giesserei_ID,Lebensdauer,Lebensalter,Anzahl_Geg_Teile) values (13,'30 Tage', '200 Tage', 5000); 
Insert into Giesserei (Giesserei_ID,Lebensdauer,Lebensalter,Anzahl_Geg_Teile) values (14,'35 Tage', '500 Tage', 6000); 
Insert into Giesserei (Giesserei_ID,Lebensdauer,Lebensalter,Anzahl_Geg_Teile) values (15,'40 Tage', '400 Tage', 7000); 

/*PRESSWERKCHARGE*/
Insert into PRESSWERKCHARGE (PRESSWERK_ID,CHARGE_ID,anfangszeit,endzeit) values (1,1,DATE '2019-12-17',DATE '2020-12-17');
Insert into PRESSWERKCHARGE (PRESSWERK_ID,CHARGE_ID,anfangszeit,endzeit) values (2,1,DATE '2015-12-17',DATE '2020-12-17');
Insert into PRESSWERKCHARGE (PRESSWERK_ID,CHARGE_ID,anfangszeit,endzeit) values (3,1,DATE '2017-12-17',DATE '2020-12-17');
Insert into PRESSWERKCHARGE (PRESSWERK_ID,CHARGE_ID,anfangszeit,endzeit) values (4,1,DATE '2018-12-17',DATE '2020-12-17');
Insert into PRESSWERKCHARGE (PRESSWERK_ID,CHARGE_ID,anfangszeit,endzeit) values (5,1,DATE '2014-12-17',DATE '2020-12-17');
/*LACKIERWERKCHARGE*/

Insert into LACKIERWERKCHARGE (LACKIERWERK_ID,CHARGE_ID,anfangszeit,endzeit) values (6,2,DATE '2019-12-17',DATE '2020-12-17');
Insert into LACKIERWERKCHARGE (LACKIERWERK_ID,CHARGE_ID,anfangszeit,endzeit) values (7,2,DATE '2015-12-17',DATE '2020-12-17');
Insert into LACKIERWERKCHARGE (LACKIERWERK_ID,CHARGE_ID,anfangszeit,endzeit) values (8,2,DATE '2017-12-17',DATE '2020-12-17');
Insert into LACKIERWERKCHARGE (LACKIERWERK_ID,CHARGE_ID,anfangszeit,endzeit) values (9,2,DATE '2018-12-17',DATE '2020-12-17');
Insert into LACKIERWERKCHARGE (LACKIERWERK_ID,CHARGE_ID,anfangszeit,endzeit) values (10,2,DATE '2014-12-17',DATE '2020-12-17');
/*GiessereiCHARGE*/

Insert into GiessereiCHARGE (Giesserei_ID,CHARGE_ID,anfangszeit,endzeit) values (11,3,DATE '2019-12-17',DATE '2020-12-17');
Insert into GiessereiCHARGE (Giesserei_ID,CHARGE_ID,anfangszeit,endzeit) values (12,3,DATE '2015-12-17',DATE '2020-12-17');
Insert into GiessereiCHARGE (Giesserei_ID,CHARGE_ID,anfangszeit,endzeit) values (13,3,DATE '2017-12-17',DATE '2020-12-17');
Insert into GiessereiCHARGE (Giesserei_ID,CHARGE_ID,anfangszeit,endzeit) values (14,3,DATE '2018-12-17',DATE '2020-12-17');
Insert into GiessereiCHARGE (Giesserei_ID,CHARGE_ID,anfangszeit,endzeit) values (15,3,DATE '2014-12-17',DATE '2020-12-17');
/*CHARGE*/

Insert into CHARGE (EZV_id,CHARGE_ID,NAME,Anzahl) values (100,1,'PRESSWERK',500); 
Insert into CHARGE (EZV_id,CHARGE_ID,NAME,Anzahl) values (100,2,'LACKIERWERK',500); 
Insert into CHARGE (EZV_id,CHARGE_ID,NAME,Anzahl) values (100,3,'GIESSWERK',500); 

