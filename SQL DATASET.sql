Create database Heartdisease ;
Use Heartdisease;

--Calling the whole table
Select * from dbo.heartdisease

--Counting # of people having heart disease(1) or not(0) on the basis of age
Select count(age) as #ofSeniorCitizens from dbo.heartdisease where age >= 65 and target = 0;
Select count(age) as #ofSeniorCitizens from dbo.heartdisease where age >= 65 and target = 1;
Select count(age) as #ofAdults from dbo.heartdisease where age < 65 and target = 0 ;
Select count(age) as #ofAdults from dbo.heartdisease where age < 65 and target = 1 ;

--Counting # of people having heart disease or not on the basis of sex
Select count(sex) #ofMales from dbo.heartdisease where sex = 1  and target = 0;
Select count(sex) #ofMales from dbo.heartdisease where sex = 1  and target = 1;
Select count(sex) #ofFemales from dbo.heartdisease where sex = 0  and target = 0;
Select count(sex) #ofFemales from dbo.heartdisease where sex = 0  and target = 1;

alter table dbo.heartdisease
add gender char;

UPDATE dbo.heartdisease
SET gender = 'M' 
where sex = 1

UPDATE dbo.heartdisease
SET gender = 'F' 
where sex = 0

ALTER TABLE dbo.heartdisease
add slope varchar(25)

UPDATE dbo.heartdisease
SET slope = 'unsloping' 
where the_slope_of_the_peak_exercise_ST_segment = 0

UPDATE dbo.heartdisease
SET slope = 'flat' 
where the_slope_of_the_peak_exercise_ST_segment = 1

UPDATE dbo.heartdisease
SET slope = 'downsloping' 
where the_slope_of_the_peak_exercise_ST_segment = 2
