use test;

create table login(
    username varchar(45),
    password varchar(45)
);

insert into login values ('nirmalk','password');

select * from login;

create table source (
    source_id varchar(50),
    name varchar(50)
);

alter table source add constraint source_pk primary key (source_id);

create table river (
    river_id varchar(50),
    no_of_dams numeric(3,0),
    river_length numeric(6,2),
    primary key (river_id)
);

create table dam(
    dam_id varchar(50),
    water_level numeric(5,2),
    max_capacity numeric(5,2),
    primary key (dam_id)
);

create table property(
    source_id varchar(50),
    inspection_date date,
    ph_level numeric(2,1),
    ppm numeric(3,0),
    contamination_level numeric(1,0),
    primary key (source_id,inspection_date)
);

create table area(
    location_id varchar(50),
    dam_id varchar(50),
    scarcity_level numeric(1,0),
    time_of_supply numeric(4,0),
    no_of_connections numeric(5,0),
    primary key (location_id)
);

create table waste_water_management(
    plant_name varchar(50),
    plant_location_id varchar(50),
    volume_of_water_per_month numeric(8,0),
    primary key (plant_name)
    );

create table purification (
    plant_name varchar(50),
    purification_method varchar(50),
    primary key (plant_name)
)
