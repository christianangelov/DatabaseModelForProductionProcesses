TRUNCATE TABLE PRESSWERK;
TRUNCATE TABLE LACKIERWERK;
TRUNCATE TABLE Giesserei;
TRUNCATE TABLE CHARGE;
TRUNCATE TABLE PRESSWERKCHARGE;
TRUNCATE TABLE LACKIERWERKCHARGE;
TRUNCATE TABLE GiessereiCHARGE;
TRUNCATE TABLE Parameter_;
TRUNCATE TABLE Text_Parameter_;
TRUNCATE TABLE EVZ_Parameter_;
TRUNCATE TABLE EZV_;
TRUNCATE TABLE EZV_Gruppe;

SET SERVEROUTPUT ON;

DECLARE     
    v_Anzahl number(6); 
    v_index number(2);
    v_children number;
    v_children_index number;
    v_productId number:=0; -- presswerkid, lakierwerk id ,gieﬂerrei id 
    v_product_name varchar2(64);
    v_product_time_Temporary date:=to_date('01/01/2021 10:00:00', 'DD/MM/YYYY HH:MI:SS');
    v_timeForProduct date:=to_date('01/01/2021 10:00:00', 'DD/MM/YYYY HH:MI:SS');
    v_time_tmp1 date;  
    v_time_tmp2 date;  
    v_time_tmp3 date;  
    v_time_tmp4 date;  
    v_time_tmp5 date; 
    v_time_tmp6 date;  
    v_time_tmp7 date; 
    v_time_tmp8 date;
    
BEGIN 
    FOR v_index IN 1 .. 100+1  LOOP --amount of charges
    
        SELECT dbms_random.value(100,10000) num into v_Anzahl FROM dual; --make a random weight
        Insert into CHARGE Values(v_index,v_index,'Presswerk',v_Anzahl);
        
        --add one day to the date time
        
                            --Skiped amount of days
       select v_timeForProduct + 1 into v_timeForProduct from dual;
    
        v_product_time_Temporary:=v_timeForProduct;
    
        --Fill timetable for charge                            --Skiped amount of days
        v_time_tmp1:=v_timeForProduct; 
        select v_timeForProduct + 1/8*1*1/24/60 into v_timeForProduct from dual;
        
        v_time_tmp2:=v_timeForProduct; 
        select v_timeForProduct + 1/8*1*1/24/60 into v_timeForProduct from dual;
        
        Insert into PRESSWERKCHARGE 
        VALUES(v_index,v_index,v_time_tmp1,v_time_tmp2);
        
    END LOOP; 
END; 
/
-- Insert parameter 
Declare 
    v_index number(10);
    v_min number(6); 
    v_max number(6); 
    unit varchar2(100) := 'Bar';  
    name_ varchar2(100) :='Pressdruck';
begin 
    FOR v_index IN 1 .. 100+1  LOOP
        SELECT dbms_random.value(7000,10000) num into v_max FROM dual; 
        SELECT dbms_random.value(1,6999) num into v_min FROM dual; 

        INSERT INTO PARAMETER_ (Parameter_ID,NAME_WERT,untergrenze,obergrenze,EINHEIT) VALUES (v_index, name_ ,v_min,v_min,unit);
    
    END LOOP; 

end;
/
Declare 
    v_index number(10); 
begin 
    FOR v_index IN 1 .. 100+1  LOOP

        INSERT INTO EVZ_Parameter_ (ID,Parameter_ID,ZIEL,MIN,MAX) VALUES (v_index, v_index ,'110','100','130');
        
    end Loop ; 
    
end; 
/

Declare 
    v_index number(10); 
begin 
    FOR v_index IN 100 .. 200+1  LOOP

        INSERT INTO Text_Parameter_ (ID, PARAMETER_ID,TEXT) values (v_index,v_index, 'BLAU');
    end Loop ; 
end; 





