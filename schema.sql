CREATE TABLE covid_data (
	id VARCHAR(100) NOT NULL,
	sex INT NOT NULL,
	patient_type INT NOT NULL,
	entry_date DATE,
	date_symptoms DATE,
	date_died DATE,
	intubed INT,
	pneumonia INT,
	age INT,
	pregnancy INT,
	diabetes INT,
	copd INT,
	asthma INT,
	inmsupr INT,
	hypertension INT,
	other_disease INT,
	cardiovascular INT,
	obesity INT,
	renal_chronic INT,
	tobacco INT,
	contact_other_covid INT,
	covid_res INT,
	icu INT
);

CREATE TABLE covid_cleaned (
	id INT PRIMARY KEY NOT NULL,
	sex INT NOT NULL,
	patient_type INT NOT NULL,
	entry_date DATE,
	date_symptoms DATE,
	date_died DATE,
	intubed INT,
	pneumonia INT,
	age INT,
	pregnancy INT,
	diabetes INT,
	copd INT,
	asthma INT,
	inmsupr INT,
	hypertension INT,
	other_disease INT,
	cardiovascular INT,
	obesity INT,
	renal_chronic INT,
	tobacco INT,
	contact_other_covid INT,
	covid_res INT,
	icu INT
);

CREATE TABLE entrydate_symptoms (
	id INT PRIMARY KEY NOT NULL,
	entry_date_minus_date_symptoms INT
);

SELECT * FROM covid_cleaned
INNER JOIN entrydate_symptoms
ON covid_cleaned.id = entrydate_symptoms.id;