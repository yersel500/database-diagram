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

CREATE TABLE treatments (
  id INT PRIMARY KEY,
  type VARCHAR,
  name VARCHAR(50)
);

CREATE TABLE history_treatments (
  id INT PRIMARY KEY,
  med_id INT,
  treatments_id INT,
  FOREIGN KEY(med_id) REFERENCES medical_histories(id),
  FOREIGN KEY(treatments) REFERENCES treatments(id)
);

CREATE TABLE invoices (
  id INT PRIMARY KEY,
  total_amount DECIMAL,
  generated_at timestamp,
  payed_at timestamp,
  medical_history_id INT,
  FOREIGN KEY(medical_history_id) REFERENCES medical_histories(id)
);

CREATE TABLE invoice_item (
  id INT,
  unit_price DECIMAL,
  quantity INT,
  total_price DECIMAL,
  invoice_id INT,
  FOREIGN KEY(invoice_id) REFERENCES invoices(id),
  treatment_id INT,
  FOREIGN KEY(treatment_id) REFERENCES treatments(id)
)
