-- ================= --
-- NUMERIC FUNCTIONS
-- ================= --

create database numericFunctionsDB;
use numericFunctionsDB;
select database();

create table numbers(
id int auto_increment primary key,
num_value decimal(10,5)
);

insert into numbers(num_value)
values
(25.6789),
(-17.5432),
(100.999),
(-0.4567),
(9.5),
(1234.56789),
(0);

-- Basic display of all values
select * from numbers;

-- Absolute value function
select abs(num_value) from numbers;
SELECT num_value, ABS(num_value) AS absolute_value FROM numbers;

-- Rounding functions
select ceil(num_value),floor(num_value) from numbers;
SELECT num_value, CEIL(num_value) AS rounded_up, FLOOR(num_value) AS rounded_down FROM numbers;

select round(num_value,2) from numbers;
select truncate(num_value,2) from numbers;
SELECT num_value, ROUND(num_value, 2) AS rounded_2_decimals FROM numbers;
SELECT num_value, TRUNCATE(num_value, 2) AS truncated_2_decimals FROM numbers;

-- Mathematical operations
SELECT num_value, POWER(num_value, 2) AS squared FROM numbers;
SELECT num_value, MOD(num_value, 3) AS remainder FROM numbers;
SELECT num_value, SQRT(ABS(num_value)) AS sqrt_value FROM numbers;

-- Exponential functions with handling for out-of-range values
SELECT num_value,CASE WHEN num_value > 709 THEN 'Value too large for EXP()' ELSE EXP(num_value) 
END AS exp_value FROM numbers;

-- Logarithmic functions
select log(2,abs(num_value) + 1) ,log10(abs(num_value)+1),log2(num_value) from numbers;
SELECT num_value, LOG(2, ABS(num_value) + 1) AS log_base2, LOG10(ABS(num_value) + 1) AS log_base10 FROM numbers;

-- Trigonometric functions
SELECT num_value, SIN(num_value) AS sin_value, COS(num_value) AS cos_value, TAN(num_value) AS tan_value FROM numbers;
select sin(num_value),cos(num_value),tan(num_value) from numbers;

-- Pi constant and angle conversions
SELECT PI() AS pi_value;
SELECT num_value, RADIANS(num_value) AS radians_value, DEGREES(num_value) AS degrees_value FROM numbers;
select radians(num_value),degrees(num_value) from numbers;

-- Bitwise operations
SELECT BIT_AND(num_value) FROM numbers;
SELECT BIT_OR(num_value) FROM numbers;
SELECT BIT_XOR(num_value) FROM numbers;
select bit_count(num_value) from numbers;
select bit_length(num_value) from numbers;

select * from numbers;