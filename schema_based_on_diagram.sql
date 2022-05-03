CREATE TABLE patients (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  date_of_birth DATE
);

CREATE TABLE medical_histories (
  id INT PRIMARY KEY,
  admitted_at timestamp,
  patient_id INT,
  FOREIGN KEY (patient_id) REFERENCES patients(id),
  status VARCHAR(50)
);