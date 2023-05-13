--create database civilprob;
use civilprob;
create table siteuser
(
aadharid varchar(30) primary key,
username varchar(50),
city varchar(50),
address varchar(50),
emailadd varchar(50),
contactno varchar(35),
password varchar(35),
status varchar(20)
);


create table admin
(
adminname varchar(50) primary key,
password varchar(35)
);

create table contact
(
id int(5) primary key auto_increment,
firstname varchar(50),
lastname varchar(50),
contactno varchar(50),
emailid varchar(50),
subject varchar(30)
);


create table problem
(
pid int(5) primary key auto_increment,
ptitle varchar(50),
pdesc varchar(200),
pdate varchar(50),
username varchar(50),
pplace varchar(35),
votes varchar(35),
status varchar(35),
estcompdate varchar(20),
actcompdate varchar(30),
startdate varchar(30)
);


create table feedback
(
fid int(5) primary key auto_increment,
msg varchar(200),
username varchar(50),
fdate varchar(35),
pid varchar(35)
);

create table vote
(
vid int(5) primary key auto_increment,
pid varchar(50),
userid varchar(50)
);







