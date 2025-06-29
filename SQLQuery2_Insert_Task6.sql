INSERT INTO Staffs (StaffID, Staff_Name, Date_of_birth, Phone, Address, Position, Department)
VALUES 
('S001', 'Sora', '1998-08-14', '09345623812', 'Yangon', 'Technician', 'Laboratory'),
('S002', 'Jade', '2006-08-02', '09432168977', 'Yangon', 'Manager', 'Storage'),
('S003', 'Thawdar', '1999-07-10', '09765436752', 'Yangon', 'Accountant', 'Finance'),
('S004', 'Sandra', '1999-03-06', '09543266771', 'Yangon', 'HR Manager', 'Human Resources'),
('S005', 'Win', '1999-05-08', '0987654321', 'Yangon', 'Phlebotomist', 'Blood Collection'),
('S006', 'Arthur', '2005-02-04', '09867542325', 'Yangon', 'Receptionist', 'Blood Collection'),
('S007', 'Mattral', '2000-11-11', '09765643215', 'Yangon', 'Database Administrator', 'Information Technology'),
('S008', 'Maple', '1999-04-03', '09543289658', 'Yangon', 'Manager', 'Administration'),
('S009', 'Shin', '1999-09-12', '09786553279', 'Yangon', 'Medical Technologist', 'Laboratory'),
('S010', 'Hein', '2000-06-21', '09567329842', 'Yangon', 'Development Coordinator', 'Human Resources');

Select * from Staffs;

INSERT INTO Doctors (DoctorID, Doctor_Name, Address, Phone, Position, Experience)
VALUES 
('D001', 'Ceera', 'Yangon', '09453218974', 'Hematologist', '3 years'),
('D002', 'Jennie', 'Yangon', '09887324556', 'Hematologist', '2 years'),
('D003', 'Shin', 'Yangon', '09786231145', 'Blood Donor Physician', '2 years'),
('D004', 'Laura', 'Yangon', '09766542332', 'Blood Donor Physician', '1 year'),
('D005', 'Zyan', 'Mandalay', '09678843522', 'Blood Donor Physician', '1 year'),
('D006', 'Ye', 'Yangon', '09785646331', 'Pathologist', '5 years'),
('D007', 'Nyo', 'Yangon', '095646331', 'Medical Director', '5 years'),
('D008', 'Bruno', 'Yangon', '09776549342', 'Transfusion Specialist', '2 years'),
('D009', 'Mirabel', 'Yangon', '09345785644', 'Pathologist', '3 years'),
('D010', 'Khine', 'Yangon', '09563423799', 'Hematologist', '1 year');

Select * from Doctors;

INSERT INTO Donors (DonorID, Donor_Name, Phone, Address, Age, Gender, Weight, Height)
VALUES 
('DO-001', 'Sao', '09345211234', 'Yangon', '30', 'M', '70kg', '175cm'),
('DO-002', 'Sarah', '09345213456', 'Mandalay', '25', 'F', '65kg', '165cm'),
('DO-003', 'Thein', '09251231234', 'Naypyidaw', '40', 'M', '80kg', '180cm'),
('DO-004', 'Kalayar', '09512141234', 'Yangon', '22', 'F', '55kg', '160cm'),
('DO-005', 'Tim', '09421112345', 'Yangon', '35', 'M', '75kg', '178cm'),
('DO-006', 'Thida', '09456678899', 'Mandalay', '28', 'F', '60kg', '170cm'),
('DO-007', 'Khant', '09437812354', 'Yangon', '45', 'M', '85kg', '185cm'),
('DO-008', 'Mya', '09312445899', 'Mandalay', '33', 'F', '68kg', '165cm'),
('DO-009', 'Wunna', '09224478965', 'Yangon', '29', 'M', '72kg', '178cm'),
('DO-010', 'Seint', '09412899874', 'Yangon', '26', 'F', '58kg', '163cm');

Select * from Donors;

INSERT INTO Hospitals (HospitalID, Hospital_Name, Phone, Address, Location, Email, Requested_Frequency)
VALUES 
('H-001', 'General Hospital', '09456437812', 'Yangon', 'Lanmadaw', 'info@genhosp.com', 'Monthly'),
('H-002', 'Polar Hospital', '09542127813', 'Mandalay', '28*29 st', 'contact@polarhosp.com', 'Weekly'),
('H-003', 'Central Clinic', '09287654123', 'Naypyidaw', 'Central Road', 'central@clinic.com', 'Bi-Weekly'),
('H-004', 'NiNi Hospital', '09232148976', 'Yangon', '14th st', 'contact@ninihosp.com', 'Monthly'),
('H-005', 'Aung Hospital', '09321897564', 'Mandalay', '76*77 st', 'west@view.com', 'Quarterly'),
('H-006', 'Royal Hospital', '09456123789', 'Naypyidaw', 'North Street', 'info@royal.com', 'Monthly'),
('H-007', 'Sunrise Clinic', '09321087453', 'Yangon', 'South Dagon', 'sunrise@clinic.com', 'Weekly'),
('H-008', 'CityCare', '09543128756', 'Mandalay', '67*68 st', 'citycare@clinic.com', 'Monthly'),
('H-009', 'Grand Hospital', '09276548931', 'Yangon', 'Bahan', 'grand@hosp.com', 'Monthly'),
('H-010', 'RoseHill Hospital', '09431248756', 'Naypyidaw', 'East Road', 'rosehill@hosp.com', 'Weekly');


Select * from Hospitals;

INSERT INTO Patients (PatientID, Patient_Name, Phone, Address, Age, Weight, Height)
VALUES 
('P-001', 'Arthur', '09543211234', 'Yangon', '45', '85kg', '180cm'),
('P-002', 'Jade', '09564231234', 'Mandalay', '38', '60kg', '165cm'),
('P-003', 'Mya', '09541234123', 'Yangon', '50', '90kg', '175cm'),
('P-004', 'Nwe', '09212345123', 'Naypyidaw', '28', '55kg', '158cm'),
('P-005', 'Zarchi', '09432112456', 'Mandalay', '42', '70kg', '170cm'),
('P-006', 'Amara', '09325461234', 'Yangon', '30', '62kg', '160cm'),
('P-007', 'Htet', '09421347812', 'Mandalay', '29', '58kg', '165cm'),
('P-008', 'Nyan', '09345213674', 'Yangon', '35', '75kg', '180cm'),
('P-009', 'Alice', '09431246789', 'Naypyidaw', '27', '57kg', '162cm'),
('P-010', 'Mira', '09231247854', 'Yangon', '40', '82kg', '178cm');

Select * from Patients;

Insert into Blood_Storage(StorageUnitID, Component, StorageTemperature, ShelfLife)
VALUES 
('SU001', 'Whole Blood', '+2°C', '35 days'),
('SU002', 'Power Red Cell', '+2 °C', '35 days'),
('SU003', 'Platelet', '+20 °C', '5 days'),
('SU004', 'Plasma', '-18 °C', '1 year');

Select * from Blood_Storage;

INSERT INTO Disposal (DisposalUnitID, DisposedDate, Method, Reason, StorageUnitID)
VALUES 
('DU001', '2024-09-13', 'Incineration', 'Expired', 'SU001'),
('DU002', '2024-09-14', 'Chemical', 'Contaminated', 'SU002'),
('DU003', '2024-08-18', 'Autoclaving', 'Expired', 'SU003'),
('DU004', '2024-08-14', 'Chemical', 'Contaminated', 'SU001'),
('DU005', '2024-09-15', 'Autoclaving', 'Expired', 'SU002'),
('DU006', '2024-08-18', 'Autoclaving', 'Expired', 'SU003'),
('DU007', '2024-08-18', 'Chemical', 'Contaminated', 'SU001'),
('DU008', '2024-09-15', 'Autoclaving', 'Expired', 'SU002');

Select * from Disposal;

INSERT INTO BloodTests (DoctorID, DonorID, Hemoglobin, Diseases)
VALUES 
('D001', 'DO-001', '13.5g/dL', 'None'),
('D002', 'DO-002', '12.8g/dL', 'None'),
('D003', 'DO-003', '14.2g/dL', 'Hepatitis B'),
('D004', 'DO-004', '12.0g/dL', 'None'),
('D005', 'DO-005', '13.1g/dL', 'None'),
('D006', 'DO-006', '14.0g/dL', 'Malaria'),
('D007', 'DO-007', '13.4g/dL', 'None'),
('D008', 'DO-008', '14.5g/dL', 'Hepatitis C'),
('D009', 'DO-009', '13.2g/dL', 'None'),
('D010', 'DO-010', '12.9g/dL', 'None');

Select * from BloodTests;

INSERT INTO Requested_Patients (HospitalID, PatientID, Reason)
VALUES
('H-002', 'P-002', 'Scheduled surgery'),
('H-003', 'P-003', 'Cancer treatment'),
('H-004', 'P-004', 'Trauma recovery'),
('H-005', 'P-005', 'Blood disease'),
('H-007', 'P-007', 'Organ transplant'),
('H-007', 'P-008', 'Chronic anemia'),
('H-009', 'P-009', 'Accident emergency');

Select * from Requested_Patients;

INSERT INTO BloodBag (BagNo, DonationDate, BloodGroup, RhFactor, Volume, ExpiryDate, StorageUnitID)
VALUES
('B001', '2024-08-08', 'O', 'Positive', '450ml', '2024-09-12', 'SU001'),
('B002', '2024-08-08', 'O', 'Negative', '450ml', '2024-09-12', 'SU001'),
('B003', '2024-08-09', 'AB', 'Positive', '625ml', '2025-08-09', 'SU004'),
('B004', '2024-08-10', 'A', 'Negative', '400ml', '2024-09-14', 'SU002'),
('B005', '2024-08-11', 'A', 'Positive', '300ml', '2024-08-15', 'SU003'),
('B006', '2024-08-11', 'B', 'Negative', '400ml', '2024-09-15', 'SU002'),
('B007', '2024-08-12', 'B', 'Positive', '300ml', '2024-08-16', 'SU003'),
('B008', '2024-08-13', 'AB', 'Negative', '625ml', '2025-08-09', 'SU004'),
('B009', '2024-08-13', 'A', 'Positive', '450ml', '2024-08-17', 'SU001'),
('B010', '2024-08-14', 'B', 'Positive', '450ml', '2024-09-18', 'SU001');


Select * from BloodBag;

INSERT INTO Donation (DonorID, BagNo, StaffID, DonationType, Duration, WaitingTime)
VALUES
('DO-001', 'B001', 'S005', 'Whole Blood', '1 hour', '3 months'),
('DO-002', 'B002', 'S005', 'Whole Blood', '1 hour', '3 months'),
('DO-003', 'B003', 'S006', 'Plasma', '1.25 hours', '2 weeks'),
('DO-004', 'B004', 'S005', 'Power Red Cell', '1.5 hours', '3 months'),
('DO-005', 'B005', 'S006', 'Platelets', '3 hours', '1 week'),
('DO-006', 'B006', 'S005', 'Power Red Cell', '1.5 hours', '3 months'),
('DO-007', 'B007', 'S006', 'Platelets', '3 hours', '1 week'),
('DO-008', 'B008', 'S005', 'Plasma', '1.25 hours', '2 weeks'),
('DO-009', 'B009', 'S005', 'Whole Blood', '1 hour', '3 months'),
('DO-010', 'B010', 'S006', 'Whole Blood', '1 hour', '3 months');

Select * from Donation;

INSERT INTO RequestedBlood (HospitalID, StorageUnitID, Quantity, Requested_Date)
VALUES
('H-002', 'SU002', '8', '2024-08-16'),
('H-003', 'SU003', '5', '2024-08-17'),
('H-004', 'SU004', '12', '2024-08-18'),
('H-005', 'SU001', '15', '2024-08-19'),
('H-007', 'SU003', '7', '2024-08-21'),
('H-007', 'SU004', '13', '2024-08-22'),
('H-009', 'SU001', '9', '2024-08-23');

Select * from RequestedBlood;