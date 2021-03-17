--Product
Create table PRESSWERK(
    PRESSWERK_ID number not null,
    Lebensdauer varchar2(100),
    Lebensalter varchar2(100),
    Anzahl_Gepr_Teile number, 
    CONSTRAINT PK_PRESSWERK PRIMARY KEY(PRESSWERK_ID)
);

create table LACKIERWERK(
    LACKIERWERK_ID number not null,
    Lebensdauer varchar2(100),
    Lebensalter varchar2(100),
    Anzahl_Lack_Teile number, 
    CONSTRAINT PK_LACKIERWERKE PRIMARY KEY(LACKIERWERK_ID)
);

create table Giesserei(
    Giesserei_ID number not null,
    Lebensdauer varchar2(100),
    Lebensalter varchar2(100),
    Anzahl_Geg_Teile number, 
    CONSTRAINT PK_Giesserei PRIMARY KEY(Giesserei_ID)
);
--chage
create table CHARGE(
    EZV_id number not null,
    CHARGE_ID number not null,
    NAME varchar2(100),
    Anzahl number,
    
    CONSTRAINT PK_CHARGE PRIMARY KEY(CHARGE_ID),
    CONSTRAINT FK_CHARGE_EZV_ Foreign KEY(EZV_id) references EZV_(EZV_id)
);
-- ProductChage
create table PRESSWERKCHARGE(
    PRESSWERK_ID number not null,
    CHARGE_ID number not null,
    anfangszeit DATE,
    endzeit DATE,
    
    CONSTRAINT FK_PRESSWERKCHARGE_PRESSWERK_ Foreign KEY(PRESSWERK_ID) references PRESSWERK(PRESSWERK_ID),
    CONSTRAINT FK_CHARGE_PRESSWERKCHARGE Foreign KEY(CHARGE_ID) references CHARGE(CHARGE_ID)

);

create table LACKIERWERKCHARGE(
    LACKIERWERK_ID number not null,
    CHARGE_ID number not null,
    anfangszeit DATE,
    endzeit DATE,
    
    CONSTRAINT FK_LACKIERWERKCHARGE_LWERK_ Foreign KEY(LACKIERWERK_ID) references LACKIERWERK(LACKIERWERK_ID),
    CONSTRAINT FK_CHARGE_LACKIERWERKCHARGE Foreign KEY(CHARGE_ID) references CHARGE(CHARGE_ID)

);
create table GiessereiCHARGE(
    Giesserei_ID number not null,
    CHARGE_ID number not null,
    anfangszeit DATE,
    endzeit DATE,
    
    CONSTRAINT FK_GiessereiCHARGE_Gie Foreign KEY(Giesserei_ID) references Giesserei(Giesserei_ID),
    CONSTRAINT FK_CHARGE_GIESSEREICHARGE Foreign KEY(CHARGE_ID) references CHARGE(CHARGE_ID)

);


--rest
Create Table Parameter_(
    Parameter_id Number not null,
    name_wert varchar2 (100),
    default_wert varchar2 (100),
    obergrenze varchar2 (100),
    untergrenze varchar2 (100),
    messzeitpunkt varchar2 (100),
    einheit varchar2 (100),
    quelle varchar2 (100),
    eingabe_art varchar2 (100),
    textNumber varchar2 (100),
    aktiv varchar2 (100),
    berreich varchar2 (100),
    unterberreich varchar2 (100),
    prozess_p varchar2 (100),
    qualität_ varchar2 (100),

    CONSTRAINT PK_Parameter PRIMARY KEY(Parameter_id)
);
Create Table Text_Parameter_(

    id number not null,
    paramter_id Number not null,
    text varchar2(100),
    
    CONSTRAINT PK_Txt_Parameter PRIMARY KEY(id),
    CONSTRAINT FK_Parameter Foreign KEY(paramter_id) references Parameter_(Parameter_id)
);
Create Table EVZ_Parameter_(
    id number not null,
    parameter_id number not null,
    ziel varchar2(100),
    min varchar2(100),
    max varchar2(100),
    
    CONSTRAINT PK_EVZ_Parameter PRIMARY KEY(id),
    CONSTRAINT FK_EVZ_Parameter Foreign KEY(parameter_id) references Parameter_(Parameter_id)
);

create table EZV_(
    EZV_id number not null,
    EZV_parameter_id number not null,
    NAME varchar2(100),
    
    CONSTRAINT PK_EVZ PRIMARY KEY(EZV_id),
    CONSTRAINT FK_EVZ Foreign KEY(ezv_parameter_id) references EVZ_Parameter_(id)
);

create table EZV_Gruppe(
    EZV_id number not null,
    EZV_Gruppe number not null,
    ParameterID number not null,
    Name varchar2 (100),
    CONSTRAINT PK_Gruppe PRIMARY KEY(EZV_id),
    CONSTRAINT FK_EVZ_Gruppe Foreign KEY(EZV_id) references EZV_(EZV_id),
    CONSTRAINT FK_EZV_Parameter Foreign KEY(ParameterID) references EVZ_Parameter_(id)

);