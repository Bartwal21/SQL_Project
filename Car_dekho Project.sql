
select * from `car dekho`;

-- The manager asked the employees how many card would be available in 2023---
select count(*) from `car dekho`
WHERE year =2023;

--- The manager asked the employees how many card would be available in 2020,2021,2022 ----
select year, count(*) as number_of_cars from `car dekho`
WHERE year  IN(2022,2021,2020)  
Group by year;

--- client asked me to print the total number of cars by year. I don't see all the details --
select year, Count(*) As Total_cars from `car dekho`
Group by year; 

---- client asked to agent  how many diesel cars were there in 2020? ---
select year, count(*) from `car dekho`
where year = 2020 AND fuel='Diesel';

-- Manager told the employee to give all the prints for  all fuel types coming in  all the years --
select year, count(*) as petrol_cars from `car dekho`
where fuel = 'petrol'
Group by year;

select year, count(*) as Diesel_cars from `car dekho`
where fuel = 'Diesel'
Group by year;

select year, count(*) as CNG_cars from `car dekho`
where fuel = 'CNG'
Group by year;

---  WHich year had more than 100 cars? --
select year, count(*) from `car dekho`
GROUP by year
having count(*)> 100;

--- Provide the complete list of all the cars sold between 2015 and 2023---
select Count(*) AS number_of_cars_sold from `car dekho`
Where year BETWEEN 2015 AND 2023;