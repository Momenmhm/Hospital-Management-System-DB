

USE Hospital_Management_SystemDB;
GO

INSERT INTO Departments (DepartmentName, LocationFloor, PhoneExtension, AnnualBudget)
VALUES 
(N'Cardiology', N'Building A - 1st Floor', '101', 750000.00),
(N'Pediatrics', N'Building B - 2nd Floor', '202', 500000.00),
(N'Emergency & Trauma', N'Building A - Ground Floor', '100', 1200000.00),
(N'Neurology', N'Building A - 3rd Floor', '103', 900000.00),
(N'Orthopedics', N'Building B - 1st Floor', '201', 650000.00),
(N'General Surgery', N'Building C - 2nd Floor', '302', 1100000.00),
(N'Internal Medicine', N'Building A - 2nd Floor', '102', 450000.00),
(N'Intensive Care Unit (ICU)', N'Building C - 1st Floor', '301', 1500000.00),
(N'Obstetrics & Gynecology', N'Building B - 3rd Floor', '203', 550000.00),
(N'Dermatology', N'Building C - Ground Floor', '300', 300000.00);


INSERT INTO Medicines (MedicationName, Description, CompanyName)
VALUES 
(N'Amoxicillin 500mg', N'Antibiotic', N'Pfizer'),
(N'Metformin 850mg', N'Diabetes management', N'Merck'),
(N'Atorvastatin 20mg', N'Cholesterol lowering', N'Pfizer'),
(N'Ibuprofen 400mg', N'Painkiller and Anti-inflammatory', N'Gsk'),
(N'Paracetamol 500mg', N'Pain and Fever relief', N'Sanofi'),
(N'Omeprazole 20mg', N'Stomach acid reducer', N'AstraZeneca'),
(N'Lisinopril 10mg', N'Blood pressure medication', N'Novartis'),
(N'Aspirin 81mg', N'Blood thinner', N'Bayer'),
(N'Albuterol 90mcg', N'Asthma inhaler', N'Gsk'),
(N'Metoprolol 50mg', N'Heart medication', N'Novartis'),
(N'Gabapentin 300mg', N'Nerve pain relief', N'Pfizer'),
(N'Azithromycin 250mg', N'Antibiotic', N'Sandoz'),
(N'Augmentin 1g', N'Broad-spectrum Antibiotic', N'Gsk'),
(N'Ciprofloxacin 500mg', N'Antibiotic', N'Bayer'),
(N'Losartan 50mg', N'Blood pressure medication', N'Merck');



INSERT INTO Allergies (AllergyName)
VALUES 
(N'Penicillin'),     
(N'Sulfa Drugs'),    
(N'NSAIDs'),         
(N'Peanuts'),        
(N'Latex'),          
(N'Lactose'),        
(N'Seafood'),        
(N'Egg Protein'),    
(N'Contrast Dye'),   
(N'Aspirin');        



INSERT INTO RoomTypes (RoomType, CostPerNight, Capacity)
VALUES 
(N'General Ward', 150.00, 6),      
(N'Semi-Private Room', 300.00, 2), 
(N'Private Room', 500.00, 1),      
(N'ICU Room', 1500.00, 1),         
(N'ER Observation', 200.00, 4),    
(N'VIP Suite', 1200.00, 1),        
(N'Isolation Room', 600.00, 1);    


INSERT INTO Doctors (Specialization, FirstName, LastName, LicenseNum, HireDate, DateOfBirth, MSalary, Gender, Email, HomeAddress, DepartmentID)
VALUES 
-- 1. Cardiology (DepartmentID = 1)
(N'Cardiology', N'Fahad', N'Al-Otaibi', 'LIC-1001', '2015-06-12', '1978-04-23', 25000.00, N'M', N'f.otaibi@hms.com', N'Al-Malaz, Riyadh', 1),
(N'Cardiology', N'Sarah', N'Al-Fahad', 'LIC-1002', '2018-09-01', '1985-11-14', 22000.00, N'F', N's.fahad@hms.com', N'Olaya, King Fahd Rd, Riyadh', 1),
(N'Cardiovascular Surgery', N'Khalid', N'Mansour', 'LIC-1003', '2010-03-15', '1972-01-05', 35000.00, N'M', NULL, N'Al-Ghadir, Riyadh', 1),
(N'Cardiology', N'Sultan', N'Al-Shammari', 'LIC-1004', '2021-02-28', '1990-08-19', 18000.00, N'M', N's.shammari@hms.com', NULL, 1),
(N'Cardiology', N'Mona', N'Al-Zahrani', 'LIC-1005', '2019-11-11', '1987-05-30', 21000.00, N'F', N'm.zahrani@hms.com', N'Al-Yasmin, Riyadh', 1),
(N'Cardiology', N'Tariq', N'Al-Ahmad', 'LIC-1006', '2023-01-15', '1992-03-10', 16000.00, N'M', NULL, NULL, 1),

-- 2. Pediatrics (DepartmentID = 2)
(N'Pediatrics', N'Abdulrahman', N'Al-Dosari', 'LIC-2001', '2013-05-20', '1980-12-02', 20000.00, N'M', N'a.dosari@hms.com', N'Al-Rawdah, Riyadh', 2),
(N'Pediatrics', N'Reem', N'Al-Qahtani', 'LIC-2002', '2017-07-14', '1986-07-25', 21500.00, N'F', N'r.qahtani@hms.com', N'Al-Nuzha, Riyadh', 2),
(N'Pediatric Neonatology', N'Faisal', N'Al-Harbi', 'LIC-2003', '2011-10-05', '1975-09-15', 28000.00, N'M', NULL, N'Al-Mursalat, Riyadh', 2),
(N'Pediatrics', N'Noura', N'Al-Subaie', 'LIC-2004', '2020-08-22', '1989-02-14', 19000.00, N'F', N'n.subaie@hms.com', NULL, 2),
(N'Pediatrics', N'Waleed', N'Al-Mutairi', 'LIC-2005', '2016-01-10', '1983-06-18', 21000.00, N'M', N'w.mutairi@hms.com', N'Al-Hamra, Riyadh', 2),
(N'Pediatric Surgery', N'Hessa', N'Al-Saud', 'LIC-2006', '2014-04-12', '1979-10-01', 31000.00, N'F', N'h.saud@hms.com', N'Al-Khuzama, Riyadh', 2),

-- 3. Emergency & Trauma (DepartmentID = 3)
(N'Emergency Medicine', N'Mohammed', N'Al-Anazi', 'LIC-3001', '2012-08-14', '1981-11-22', 24000.00, N'M', N'm.anazi@hms.com', N'Al-Suwaidi, Riyadh', 3),
(N'Emergency Medicine', N'Bandar', N'Al-Saeed', 'LIC-3002', '2016-12-01', '1986-03-05', 22000.00, N'M', NULL, N'Al-Shifa, Riyadh', 3),
(N'Trauma Surgery', N'Yousef', N'Al-Maliki', 'LIC-3003', '2009-05-19', '1970-07-12', 33000.00, N'M', N'y.maliki@hms.com', NULL, 3),
(N'Emergency Medicine', N'Alia', N'Al-Omari', 'LIC-3004', '2019-03-10', '1988-05-14', 21000.00, N'F', N'a.omari@hms.com', N'Al-Batha, Riyadh', 3),
(N'Emergency Medicine', N'Saud', N'Al-Rasheed', 'LIC-3005', '2022-07-24', '1993-01-30', 17000.00, N'M', NULL, N'Al-Aziziyah, Riyadh', 3),
(N'Trauma Surgery', N'Majed', N'Al-Blouwi', 'LIC-3006', '2015-10-15', '1982-09-08', 30000.00, N'M', N'm.blouwi@hms.com', N'Al-Wurood, Riyadh', 3),

-- 4. Neurology (DepartmentID = 4)
(N'Neurology', N'Abdullah', N'Al-Shehri', 'LIC-4001', '2010-11-20', '1974-06-17', 29000.00, N'M', N'a.shehri@hms.com', N'Al-Ghadir, Riyadh', 4),
(N'Neurosurgery', N'Rayan', N'Al-Kadi', 'LIC-4002', '2014-02-18', '1979-03-24', 38000.00, N'M', NULL, N'Al-Murooj, Riyadh', 4),
(N'Neurology', N'Laila', N'Al-Salloum', 'LIC-4003', '2018-05-12', '1985-09-09', 24000.00, N'F', N'l.salloum@hms.com', NULL, 4),
(N'Neurology', N'Turki', N'Al-Sudairy', 'LIC-4004', '2020-09-01', '1991-12-11', 19500.00, N'M', N't.sudairy@hms.com', N'Al-Nakheel, Riyadh', 4),
(N'Neurology', N'Arwa', N'Al-Mousa', 'LIC-4005', '2017-06-30', '1984-04-14', 23000.00, N'F', NULL, N'Al-Rayan, Riyadh', 4),

-- 5. Orthopedics (DepartmentID = 5)
(N'Orthopedic Surgery', N'Meshari', N'Al-Harthi', 'LIC-5001', '2011-04-05', '1976-08-27', 28000.00, N'M', N'm.harthi@hms.com', N'Al-Manar, Riyadh', 5),
(N'Orthopedic Surgery', N'Saad', N'Al-Ghamdi', 'LIC-5002', '2015-09-22', '1982-01-15', 26000.00, N'M', NULL, NULL, 5),
(N'Sports Medicine', N'Naif', N'Al-Bakr', 'LIC-5003', '2019-01-10', '1988-10-05', 23000.00, N'M', N'n.bakr@hms.com', N'Al-Agiri, Riyadh', 5),
(N'Orthopedic Surgery', N'Khaled', N'Al-Ajmi', 'LIC-5004', '2013-03-14', '1978-11-19', 27500.00, N'M', N'k.ajmi@hms.com', N'Al-Falah, Riyadh', 5),
(N'Orthopedic Surgery', N'Hind', N'Al-Juraid', 'LIC-5005', '2022-05-18', '1992-07-22', 17500.00, N'F', NULL, N'Al-Sahafa, Riyadh', 5),

-- 6. General Surgery (DepartmentID = 6)
(N'General Surgery', N'Ibrahim', N'Al-Khaldi', 'LIC-6001', '2008-01-15', '1969-05-14', 32000.00, N'M', N'i.khaldi@hms.com', N'Al-Nafal, Riyadh', 6),
(N'General Surgery', N'Sami', N'Al-Obeid', 'LIC-6002', '2014-10-30', '1980-03-22', 27000.00, N'M', NULL, N'Al-Wadi', 6),
(N'Laparoscopic Surgery', N'Amal', N'Al-Rashed', 'LIC-6003', '2016-06-14', '1983-09-09', 29000.00, N'F', N'a.rashed@hms.com', NULL, 6),
(N'General Surgery', N'Nasser', N'Al-Marri', 'LIC-6004', '2021-04-01', '1990-11-04', 18500.00, N'M', N'n.marri@hms.com', N'Al-Qairawan, Riyadh', 6),
(N'Surgical Oncology', N'Yasser', N'Al-Jbair', 'LIC-6005', '2011-12-12', '1975-02-27', 36000.00, N'M', NULL, N'Al-Hada, Riyadh', 6),
(N'General Surgery', N'Hana', N'Al-Shareef', 'LIC-6006', '2018-02-20', '1986-06-13', 24000.00, N'F', N'h.shareef@hms.com', N'Al-Narjis, Riyadh', 6),

-- 7. Internal Medicine (DepartmentID = 7)
(N'Internal Medicine', N'Saleh', N'Al-Amri', 'LIC-7001', '2014-07-19', '1981-04-04', 21000.00, N'M', N's.amri@hms.com', N'Al-Cordoba, Riyadh', 7),
(N'Endocrinology', N'Fatimah', N'Al-Hassan', 'LIC-7002', '2016-03-10', '1984-08-16', 23000.00, N'F', NULL, N'Al-Mughrizat, Riyadh', 7),
(N'Gastroenterology', N'Adnan', N'Al-Turki', 'LIC-7003', '2010-09-05', '1973-12-25', 27000.00, N'M', N'a.turki@hms.com', NULL, 7),
(N'Nephrology', N'Khlood', N'Al-Saeed', 'LIC-7004', '2019-10-15', '1988-02-01', 22000.00, N'F', N'k.saeed@hms.com', N'Al-Izdihar, Riyadh', 7),
(N'Internal Medicine', N'Hassan', N'Al-Belawi', 'LIC-7005', '2023-03-01', '1994-05-19', 15500.00, N'M', NULL, N'Al-Mansouriyah, Riyadh', 7),

-- 8. Intensive Care Unit (ICU) (DepartmentID = 8)
(N'Critical Care Medicine', N'Ziyad', N'Al-Zamil', 'LIC-8001', '2013-11-11', '1979-01-30', 31000.00, N'M', N'z.zamil@hms.com', N'Al-Maather, Riyadh', 8),
(N'Critical Care Medicine', N'Rania', N'Al-Bishi', 'LIC-8002', '2017-05-01', '1985-07-07', 28000.00, N'F', NULL, NULL, 8),
(N'Anesthesiology', N'Hussain', N'Al-Yami', 'LIC-8003', '2010-02-14', '1972-10-14', 33000.00, N'M', N'h.yami@hms.com', N'Al-Sulaimaniyah, Riyadh', 8),
(N'Critical Care Medicine', N'Bader', N'Al-Saif', 'LIC-8004', '2020-01-20', '1989-09-25', 25000.00, N'M', N'b.saif@hms.com', N'Al-Murabaa, Riyadh', 8),
(N'Anesthesiology', N'Sara', N'Al-Nasser', 'LIC-8005', '2022-11-01', '1991-03-03', 21000.00, N'F', NULL, N'Al-Takhassusi, Riyadh', 8),

-- 9. Obstetrics & Gynecology (DepartmentID = 9)
(N'Obstetrics & Gynecology', N'Maha', N'Al-Jameel', 'LIC-9001', '2009-06-01', '1973-03-18', 29000.00, N'F', N'm.jameel@hms.com', N'Al-Olaya, Riyadh', 9),
(N'Obstetrics & Gynecology', N'Nadia', N'Al-Sultan', 'LIC-9002', '2015-02-12', '1982-11-11', 26000.00, N'F', NULL, N'Al-Muhammadiyah, Riyadh', 9),
(N'Gynecologic Oncology', N'Hanadi', N'Al-Thani', 'LIC-9003', '2012-08-20', '1977-05-05', 34000.00, N'F', N'h.thani@hms.com', NULL, 9),
(N'Obstetrics & Gynecology', N'Abeer', N'Al-Faisal', 'LIC-9004', '2018-10-01', '1986-12-14', 24000.00, N'F', N'a.faisal@hms.com', N'Al-Aqiq, Riyadh', 9),
(N'Obstetrics & Gynecology', N'Rehab', N'Al-Malki', 'LIC-9005', '2021-07-15', '1991-04-20', 19000.00, N'F', NULL, N'Al-Hizam, Riyadh', 9),

-- 10. Dermatology (DepartmentID = 10)
(N'Dermatology', N'Khalid', N'Al-Zaid', 'LIC-1011', '2014-04-01', '1980-02-12', 23000.00, N'M', N'k.zaid@hms.com', N'Al-Ghadir, Riyadh', 10),
(N'Dermatology', N'Amani', N'Al-Mutlaq', 'LIC-1012', '2017-09-18', '1986-10-29', 21000.00, N'F', NULL, NULL, 10),
(N'Dermatology', N'Yazeed', N'Al-Sari', 'LIC-1013', '2020-05-10', '1990-06-06', 18000.00, N'M', N'y.sari@hms.com', N'Al-Malqa, Riyadh', 10),
(N'Dermatology', N'Nouf', N'Al-Mansour', 'LIC-1014', '2016-01-15', '1983-08-24', 22500.00, N'F', N'n.mansour@hms.com', N'Al-Sahafa, Riyadh', 10),
(N'Cosmetic Dermatology', N'Fahad', N'Al-Fahad', 'LIC-1015', '2019-11-01', '1987-03-17', 26000.00, N'M', NULL, N'Al-Hada, Riyadh', 10),
(N'Dermatology', N'Reema', N'Al-Abdullah', 'LIC-1016', '2023-06-01', '1995-01-12', 15000.00, N'F', N'r.abdullah@hms.com', N'Al-Narjis, Riyadh', 10);




USE Hospital_Management_SystemDB;
GO

INSERT INTO MedicineDetails (BatchNumber, Quantity, UnitPrice, ExpiryDate, MedicineID)
VALUES 
('BAT-26-A101', 150, 15.50, '2027-04-12', 3),
('BAT-26-B202', 80, 45.00, '2026-11-30', 7),
('BAT-26-C303', 300, 12.00, '2028-08-15', 1),
('BAT-26-D404', 50, 85.30, '2027-01-22', 12),
('BAT-26-E505', 210, 8.00, '2029-03-10', 5),
('BAT-26-F606', 120, 22.40, '2026-12-05', 9),
(NULL, 400, 30.00, '2028-05-19', 2),
('BAT-26-H808', 95, 60.00, '2027-10-14', 14), 
('BAT-26-I909', 160, 18.25, '2028-02-28', 6),
('BAT-26-J110', 250, 4.50, '2029-07-07', 8),
('BAT-26-K211', 35, 120.00, '2027-06-18', 11),
(NULL, 180, 28.00, '2028-01-11', 13), 
('BAT-26-M413', 500, 9.10, '2026-10-25', 4),
('BAT-26-N514', 140, 35.00, '2027-09-01', 15),
('BAT-26-O615', 85, 16.00, '2028-11-14', 10),

('BAT-27-A116', 220, 14.80, '2028-06-20', 3),
('BAT-27-B117', 60, 46.50, '2027-03-15', 7),
('BAT-27-C118', 150, 12.00, '2029-01-10', 1),
('BAT-27-D119', 90, 82.00, '2028-04-05', 12),
('BAT-27-E120', 450, 7.50, '2029-12-25', 5),
('BAT-27-F121', 130, 24.00, '2027-08-18', 9),
('BAT-27-G122', 110, 31.50, '2028-09-12', 2),
('BAT-27-H123', 70, 58.00, '2027-05-24', 14),
(NULL, 310, 19.00, '2029-02-14', 6), 
('BAT-27-J125', 200, 5.00, '2028-10-01', 8),
('BAT-27-K126', 45, 115.00, '2027-11-20', 11),
('BAT-27-L127', 95, 29.00, '2028-07-16', 13),
('BAT-27-M128', 280, 9.50, '2029-04-30', 4),
('BAT-27-N129', 125, 34.00, '2027-12-12', 15),
('BAT-27-O130', 105, 15.00, '2028-03-19', 10),

('BAT-27-X001', 340, 13.00, '2029-05-15', 1),
('BAT-27-X002', 190, 32.00, '2028-10-10', 2),
('BAT-27-X003', 250, 15.50, '2027-11-12', 3),
('BAT-27-X004', 420, 9.10, '2028-06-01', 4),
(NULL, 380, 8.00, '2029-08-24', 5), 
('BAT-27-X006', 115, 18.25, '2027-02-14', 6),
('BAT-27-X007', 75, 45.00, '2028-01-20', 7),
('BAT-27-X008', 500, 4.50, '2029-03-15', 8),
('BAT-27-X009', 145, 22.40, '2027-07-19', 9),
('BAT-27-X010', 90, 16.00, '2028-12-02', 10),
('BAT-27-X011', 65, 120.00, '2029-04-11', 11),
('BAT-27-X012', 80, 85.30, '2027-09-25', 12),
('BAT-27-X013', 210, 28.00, '2028-05-05', 13),
('BAT-27-X014', 110, 60.00, '2026-11-18', 14),
('BAT-27-X015', 165, 35.00, '2029-01-30', 15),

('BAT-28-S01', 230, 12.50, '2029-02-11', 1),
('BAT-28-S02', 140, 33.00, '2028-07-22', 2),
('BAT-28-S03', 180, 15.00, '2027-09-14', 3),
('BAT-28-S04', 310, 9.20, '2029-06-18', 4),
('BAT-28-S05', 290, 8.20, '2028-12-05', 5),
('BAT-28-S06', 100, 19.10, '2027-05-20', 6),
('BAT-28-S07', 55, 45.50, '2029-01-15', 7),
(NULL, 400, 4.80, '2028-04-02', 8), 
('BAT-28-S09', 160, 23.00, '2027-10-10', 9),
('BAT-28-S10', 120, 15.80, '2029-03-22', 10),
('BAT-28-S11', 40, 118.00, '2028-08-14', 11),
('BAT-28-S12', 70, 84.00, '2027-11-01', 12),
('BAT-28-S13', 195, 27.50, '2029-07-19', 13),
('BAT-28-S14', 85, 59.00, '2028-02-27', 14),
('BAT-28-S15', 150, 34.50, '2027-12-25', 15),

('BAT-28-M01', 200, 12.00, '2028-09-09', 1),
('BAT-28-M02', 150, 31.00, '2029-05-14', 2),
('BAT-28-M03', 170, 15.50, '2027-03-30', 3),
('BAT-28-M04', 350, 9.00, '2028-11-11', 4),
('BAT-28-M05', 260, 8.00, '2029-02-18', 5),
('BAT-28-M06', 105, 18.50, '2027-08-22', 6),
(NULL, 65, 46.00, '2028-10-05', 7),
('BAT-28-M08', 420, 4.50, '2029-06-12', 8),
('BAT-28-M09', 135, 22.00, '2027-04-01', 9),
('BAT-28-M10', 110, 16.20, '2028-07-14', 10),
('BAT-28-M11', 50, 122.00, '2029-01-20', 11),
('BAT-28-M12', 75, 86.00, '2027-12-15', 12),
('BAT-28-M13', 180, 28.20, '2028-03-10', 13),
('BAT-28-M14', 90, 61.00, '2029-04-24', 14),
('BAT-28-M15', 130, 35.00, '2027-10-05', 15),

('BAT-29-R01', 180, 12.20, '2029-03-14', 1),
('BAT-29-R02', 120, 30.50, '2028-11-22', 2),
('BAT-29-R03', 190, 15.30, '2027-06-18', 3),
('BAT-29-R04', 300, 9.10, '2029-09-05', 4),
('BAT-29-R05', 240, 7.90, '2028-05-19', 5),
('BAT-29-R06', 95, 18.00, '2027-12-12', 6),
('BAT-29-R07', 70, 44.80, '2029-02-28', 7),
('BAT-29-R08', 480, 4.60, '2028-07-07', 8),
('BAT-29-R09', 125, 22.50, '2027-10-15', 9),
(NULL, 115, 16.00, '2029-04-20', 10), 
('BAT-29-R11', 45, 119.00, '2028-03-18', 11),
('BAT-29-R12', 85, 85.00, '2027-08-24', 12),
('BAT-29-R13', 170, 28.50, '2029-01-11', 13),
('BAT-29-R14', 95, 60.50, '2028-06-06', 14),
('BAT-29-R15', 140, 34.00, '2027-11-01', 15),

('BAT-29-Z01', 210, 12.10, '2029-08-15', 1),
('BAT-29-Z02', 130, 31.20, '2028-04-12', 2),
('BAT-29-Z03', 160, 15.60, '2027-10-29', 3),
('BAT-29-Z04', 320, 9.30, '2029-01-30', 4),
('BAT-29-Z05', 270, 8.10, '2028-09-15', 5),
('BAT-29-Z06', 110, 18.40, '2027-05-10', 6),
('BAT-29-Z07', 60, 45.20, '2029-07-14', 7),
('BAT-29-Z08', 440, 4.40, '2028-12-25', 8),
('BAT-29-Z09', 140, 22.10, '2027-03-24', 9),
('BAT-29-Z10', 100, 15.90, '2028-06-13', 10),
('BAT-29-Z11', 55, 121.00, '2029-11-01', 11),
(NULL, 65, 84.50, '2027-02-12', 12),
('BAT-29-Z13', 160, 27.90, '2028-10-15', 13),
('BAT-29-Z14', 100, 59.50, '2029-05-19', 14),
('BAT-29-Z15', 120, 35.20, '2027-08-16', 15),

('BAT-30-F01', 250, 12.30, '2029-10-10', 1),
('BAT-30-F02', 145, 30.80, '2028-12-14', 2),
('BAT-30-F03', 175, 15.40, '2027-11-22', 3),
('BAT-30-F04', 330, 9.05, '2029-04-01', 4),
('BAT-30-F05', 255, 8.05, '2028-07-19', 5),
('BAT-30-F06', 105, 18.15, '2027-09-09', 6),
('BAT-30-F07', 80, 45.90, '2029-03-01', 7),
('BAT-30-F08', 415, 4.55, '2028-10-15', 8),
('BAT-30-F09', 150, 22.60, '2027-06-30', 9),
('BAT-30-F10', 125, 16.10, '2029-01-12', 10),
('BAT-30-F11', 42, 117.50, '2028-05-18', 11),
('BAT-30-F12', 88, 85.10, '2027-04-05', 12),
('BAT-30-F13', 185, 28.40, '2029-11-11', 13),
(NULL, 92, 60.20, '2028-08-27', 14), 
('BAT-30-F15', 135, 34.90, '2027-03-17', 15),
('BAT-30-End', 100, 12.00, '2029-12-31', 1); 



USE Hospital_Management_SystemDB;
GO

INSERT INTO Patients (FirstName, LastName, DateOfBirth, Gender, Email, HomeAddress, BloodType)
VALUES 
(N'Ahmed', N'Al-Mansour', '2018-05-12', N'M', NULL, NULL, N'O+'),
(N'Sara', N'Al-Harbi', '2015-11-22', N'F', NULL, NULL, N'A+'),
(N'Ali', N'Al-Otaibi', '2020-01-05', N'M', NULL, NULL, NULL),
(N'Noura', N'Al-Qahtani', '2016-07-19', N'F', NULL, N'Al-Malaz, Riyadh', N'B+'),
(N'Fahad', N'Al-Subaie', '2019-03-14', N'M', NULL, NULL, N'AB+'),
(N'Reem', N'Al-Mutairi', '2021-08-30', N'F', NULL, NULL, NULL),
(N'Khaled', N'Al-Zahrani', '2017-10-11', N'M', NULL, NULL, N'O-'),

(N'Youssef', N'Al-Saeed', '1995-04-23', N'M', N'y.saeed@mail.com', NULL, N'A+'),
(N'Maha', N'Al-Fahad', '1992-12-12', N'F', NULL, N'Olaya, Riyadh', N'O+'),
(N'Saud', N'Al-Shammari', '2001-09-05', N'M', N's.shammari@mail.com', NULL, NULL),
(N'Amal', N'Al-Rashed', '1988-02-14', N'F', NULL, NULL, N'B-'),
(N'Bandar', N'Al-Anazi', '1998-06-20', N'M', N'b.anazi@mail.com', NULL, N'O+'),
(N'Hessa', N'Al-Saud', '1990-11-01', N'F', NULL, NULL, N'AB-'),
(N'Ibrahim', N'Al-Khaldi', '2003-07-15', N'M', NULL, N'Al-Ghadir, Riyadh', NULL),
(N'Laila', N'Al-Mousa', '1994-03-30', N'F', N'l.mousa@mail.com', NULL, N'A-'),
(N'Rayan', N'Al-Kadi', '1987-10-25', N'M', NULL, NULL, N'O+'),
(N'Fatimah', N'Al-Hassan', '1999-05-14', N'F', N'f.hassan@mail.com', NULL, N'B+'),
(N'Abdullah', N'Al-Shehri', '1991-08-08', N'M', NULL, NULL, NULL),
(N'Arwa', N'Al-Omari', '1996-01-20', N'F', NULL, N'Al-Yasmin, Riyadh', N'A+'),
(N'Sultan', N'Al-Ajmi', '2005-12-02', N'M', N's.ajmi@mail.com', NULL, N'O+'),

(N'Mohammed', N'Al-Ghamdi', '1965-03-17', N'M', NULL, NULL, N'A+'),
(N'Aisha', N'Al-Dosari', '1958-09-29', N'F', NULL, NULL, N'O+'),
(N'Saleh', N'Al-Amri', '1970-06-11', N'M', NULL, N'Al-Rawdah, Riyadh', NULL),
(N'Mona', N'Al-Zamil', '1962-11-25', N'F', NULL, NULL, N'B+'),
(N'Abdulrahman', N'Al-Blouwi', '1950-01-14', N'M', NULL, NULL, N'AB+'),
(N'Hana', N'Al-Shareef', '1968-07-04', N'F', NULL, NULL, N'O-'),
(N'Saad', N'Al-Mutlaq', '1955-05-19', N'M', NULL, N'Al-Sahafa, Riyadh', N'A+'),
(N'Nadia', N'Al-Sultan', '1973-10-02', N'F', NULL, NULL, NULL),

(N'Tariq', N'Al-Ahmad', '1989-04-12', N'M', NULL, NULL, N'O+'),
(N'Hind', N'Al-Juraid', '2012-06-18', N'F', NULL, NULL, N'A+'),
(N'Meshari', N'Al-Harthi', '1982-01-30', N'M', NULL, NULL, N'B+'),
(N'Reema', N'Al-Abdullah', '2000-09-15', N'F', NULL, N'Al-Narjis, Riyadh', NULL),
(N'Adnan', N'Al-Turki', '1964-11-11', N'M', NULL, NULL, N'O+'),
(N'Hanadi', N'Al-Thani', '1978-05-05', N'F', NULL, NULL, N'AB+'),
(N'Majed', N'Al-Rasheed', '1993-08-24', N'M', NULL, NULL, N'A-'),
(N'Amani', N'Al-Mutlaq', '1985-03-17', N'F', NULL, N'Al-Nakheel, Riyadh', NULL),
(N'Yazeed', N'Al-Sari', '2010-07-22', N'M', NULL, NULL, N'O+'),
(N'Abeer', N'Al-Faisal', '1997-12-14', N'F', NULL, NULL, N'B+'),
(N'Ziyad', N'Al-Zaid', '1974-02-12', N'M', NULL, NULL, NULL),
(N'Nouf', N'Al-Mansour', '1981-10-29', N'F', NULL, N'Al-Malqa, Riyadh', N'A+');



insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Mari', 'Aberdein', null, 'F', null, 'AB+', 'Al-Khuzama Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jody', 'Wyrall', null, 'F', null, 'O+', 'Al-Mughrizat Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Thorstein', 'Ferronier', null, 'F', null, 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Erik', 'Corah', null, 'M', null, 'A-', 'Al-Ghadir Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Hernando', 'Choat', null, 'M', '2007-04-05', null, 'Al-Izdihar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Artie', 'Merton', 'amerton5@eventbrite.com', 'M', null, null, 'Al-Sulaimaniyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Coop', 'Sheer', 'csheer6@phoca.cz', 'F', '1976-07-23', null, 'Al-Sahafa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kattie', 'Fifield', null, 'F', null, 'A-', 'Al-Maather Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jerald', 'Eastman', 'jeastman8@flavors.me', 'M', null, 'B+', 'Al-Wurood Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Nelie', 'Ventum', null, 'M', null, 'A-', 'Al-Sulaimaniyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Chrystel', 'Presser', 'cpressera@cpanel.net', 'F', null, 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Nadya', 'Fraczkiewicz', null, 'M', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jilli', 'Josland', null, 'F', '2020-05-20', 'O+', 'Al-Mughrizat Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kahaleel', 'Gavini', null, 'F', '2016-04-10', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Mina', 'Abbado', 'mabbadoe@technorati.com', 'M', '2010-03-14', 'A+', 'Al-Mansouriyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Andria', 'Quilty', null, 'F', null, 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Guenna', 'de Mendoza', 'gdemendozag@ucoz.com', 'M', null, 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Constance', 'Youel', null, 'M', '1991-09-23', 'A+', 'Al-Malqa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Neall', 'Iddy', null, 'M', '2016-03-23', 'A+', 'Al-Malqa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Court', 'Laytham', 'claythamj@friendfeed.com', 'F', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jephthah', 'Kneebone', 'jkneebonek@macromedia.com', 'M', null, 'AB+', 'Al-Aziziyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Allyson', 'Radish', null, 'M', '2008-06-10', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Timothy', 'Cackett', 'tcackettm@yellowpages.com', 'M', '1982-08-13', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Zoe', 'Swanborrow', null, 'F', '1986-03-21', 'O+', 'Al-Yasmin Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Collin', 'Weddup', null, 'F', null, 'O+', 'Al-Takhassusi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Art', 'Hall-Gough', null, 'M', '1996-03-19', null, 'Al-Yasmin Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Michel', 'Jonk', null, 'M', '2002-11-09', null, 'Al-Mansouriyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Zola', 'Cunniffe', null, 'M', null, 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ninnette', 'Mutlow', null, 'F', '1982-06-25', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Rebekkah', 'Turmell', null, 'M', '1979-01-29', 'B-', 'Al-Yasmin Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Osborn', 'Pendered', 'openderedu@youtube.com', 'F', '2004-02-07', null, 'Al-Sulaimaniyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Therese', 'Labrom', 'tlabromv@amazon.com', 'M', null, null, 'Al-Rawdah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Beverlee', 'Rogerot', null, 'F', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Shoshana', 'Tanswill', null, 'F', '1995-05-28', 'B-', 'Al-Qairawan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Corrina', 'Hassell', 'chasselly@engadget.com', 'M', '2000-06-06', 'B-', 'Al-Hada Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Dalt', 'Bagshawe', null, 'F', null, 'B+', 'Al-Aziziyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Weider', 'Alexander', null, 'M', '1975-05-10', 'A+', 'Al-Qairawan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sheppard', 'Burdikin', 'sburdikin11@bluehost.com', 'M', '1985-09-18', null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Amandie', 'Boustred', null, 'M', '1980-04-19', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Leonidas', 'Mazey', 'lmazey13@de.vu', 'M', '1972-11-06', 'O-', 'Al-Sahafa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Alexei', 'Losel', null, 'F', '1981-12-01', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Guenna', 'Clemence', 'gclemence15@reddit.com', 'F', null, 'O-', 'Al-Muroof Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Harri', 'Corre', null, 'F', null, 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Chrissy', 'Olufsen', 'colufsen17@sina.com.cn', 'M', '1989-02-12', null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ranee', 'McMeekin', null, 'M', '2013-10-28', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Stefania', 'Attaway', null, 'F', null, 'A+', 'Al-Wadi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Dorine', 'Jahan', null, 'F', null, 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Annadiane', 'Smurthwaite', null, 'M', '2016-08-30', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Dillon', 'Golightly', null, 'M', '1973-11-30', 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Melba', 'Shrimpton', null, 'F', '1986-01-27', 'B+', 'Al-Izdihar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Irena', 'Waddilow', null, 'F', '2004-11-21', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Fee', 'Medlen', 'fmedlen1f@mayoclinic.com', 'M', '1999-06-24', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Orelle', 'Heady', null, 'M', '2017-05-12', null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Karita', 'Reffe', null, 'M', '2002-07-21', 'B-', 'Al-Manar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Deena', 'Hinrich', null, 'F', '1991-02-23', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kizzie', 'Jefferies', null, 'F', '1985-06-03', 'A+', 'Al-Yasmin Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Chris', 'Di Biagio', null, 'M', '2012-08-02', 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Belva', 'Francais', null, 'F', '1980-03-30', 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Luella', 'Cosyns', null, 'M', null, 'AB-', 'Al-Hada Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Rubia', 'O''Giany', null, 'F', '2008-12-01', 'A-', 'Al-Mughrizat Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Halli', 'Larret', null, 'F', '1979-05-31', null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Port', 'Redford', null, 'M', '2001-01-03', 'AB-', 'Al-Mansouriyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Dorena', 'Altofts', null, 'M', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Corie', 'Ghion', 'cghion1r@wired.com', 'F', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Cornie', 'Higgoe', null, 'F', '2017-12-07', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Britney', 'Cornils', null, 'F', '1986-03-11', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Charisse', 'Sinclair', null, 'M', null, 'A-', 'Al-Aziziyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lydie', 'Eversley', 'leversley1v@bravesites.com', 'F', '2017-11-20', null, 'Al-Takhassusi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Isobel', 'Silwood', null, 'M', '2014-09-17', 'O+', 'Al-Mansouriyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Marinna', 'Wanjek', 'mwanjek1x@narod.ru', 'M', '1999-04-22', 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Pier', 'Tunnah', null, 'F', null, 'O+', 'Al-Muhammadiyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Elie', 'Jaye', null, 'M', '2006-03-23', 'AB+', 'Al-Wurood Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Maybelle', 'Soper', null, 'F', null, 'B+', 'Al-Aqiq Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Vasily', 'Hardiker', 'vhardiker21@jimdo.com', 'M', '2020-05-24', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Wash', 'Napolitano', null, 'F', null, 'O-', 'Al-Aqiq Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ailee', 'Coolbear', null, 'F', null, 'O-', 'Al-Muhammadiyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Rutherford', 'Segoe', null, 'M', null, 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lisha', 'Brissard', null, 'F', '1986-08-04', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Harlen', 'Dog', 'hdog26@phpbb.com', 'F', '1981-12-14', 'B+', 'Al-Shifa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Gerry', 'Ronnay', 'gronnay27@latimes.com', 'F', '1987-11-13', 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Bibbye', 'Curston', null, 'M', '1993-04-27', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Guilbert', 'Klimes', 'gklimes29@photobucket.com', 'M', '1976-05-30', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Rabbi', 'Benedite', null, 'M', '1982-11-06', 'A-', 'Al-Cordoba Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Meta', 'Crockley', null, 'M', '2015-09-19', 'AB-', 'Al-Nuzha Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Fonzie', 'MacCafferky', null, 'F', '1972-12-11', 'AB+', 'Al-Wadi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Brady', 'Lanfranchi', null, 'F', '2004-06-29', null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Stinky', 'Borth', null, 'M', null, null, 'Al-Muroof Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Bert', 'Hacker', 'bhacker2f@list-manage.com', 'M', '2011-09-03', 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Marcelline', 'Becks', null, 'M', '1988-05-13', 'B-', 'Al-Takhassusi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Pauletta', 'Pedwell', null, 'M', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Oona', 'Waldren', 'owaldren2i@noaa.gov', 'M', '1985-09-05', null, 'Al-Cordoba Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Dulcia', 'Divell', null, 'F', '1974-09-30', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Carrissa', 'McGeown', null, 'F', null, 'A+', 'Al-Khuzama Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Tobin', 'Kuschke', null, 'F', null, 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Tarrance', 'Longland', null, 'M', '1993-06-25', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Peggy', 'Twitchings', null, 'F', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Caprice', 'Froude', null, 'F', '1970-06-13', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kym', 'Bravery', null, 'M', null, 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Meade', 'Ivashov', null, 'F', '1972-01-13', 'A+', 'Al-Muroof Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Elenore', 'Cajkler', 'ecajkler2r@nymag.com', 'M', '1974-04-26', 'A-', 'Al-Khuzama Riyadh');




insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Denice', 'Pylkynyton', 'dpylkynyton0@newyorker.com', 'M', null, 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Travers', 'Perl', 'tperl1@1688.com', 'M', '1972-01-07', 'AB+', 'Olaya Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Amata', 'McEvon', null, 'M', '1980-09-06', 'AB+', 'Al-Malqa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Early', 'Maris', null, 'M', '1973-11-21', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Erminia', 'Bardell', 'ebardell4@umich.edu', 'M', null, null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Fae', 'Seabridge', 'fseabridge5@com.com', 'F', '2008-10-10', 'B-', 'Al-Wurood Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ediva', 'Sowrah', null, 'F', null, 'B+', 'Al-Falah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Cecil', 'Grimsdale', null, 'F', '1970-11-14', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jazmin', 'Ziem', 'jziem8@oakley.com', 'M', null, 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Minnaminnie', 'Baldacco', null, 'F', null, 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Novelia', 'Syseland', null, 'F', '2013-07-30', 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Carlo', 'Beloe', null, 'F', null, null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Parry', 'Bartholomieu', 'pbartholomieuc@usatoday.com', 'F', '2012-03-17', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kennith', 'Weth', null, 'M', null, 'AB+', 'Al-Rayan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Dyane', 'MacCurlye', null, 'M', '1983-05-28', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Grant', 'Kemson', null, 'F', '1996-03-26', 'O-', 'Al-Wadi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Antin', 'Tattersall', null, 'M', '1995-11-01', 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Maggi', 'Konzelmann', null, 'M', '1984-03-15', null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Bridie', 'Philip', null, 'F', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Glenn', 'Lowndsborough', 'glowndsboroughj@gravatar.com', 'M', null, 'A-', 'Al-Rayan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Granville', 'Powell', null, 'M', '2013-03-05', 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Cassie', 'Kochel', 'ckochell@smugmug.com', 'F', '2008-07-22', 'AB+', 'Al-Aqiq Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Niki', 'Beisley', null, 'F', '2018-06-18', 'B+', 'Al-Sulaimaniyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Shandra', 'Allday', null, 'F', '1977-01-03', 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Tiena', 'Ricca', null, 'F', '1977-04-09', 'AB-', 'Al-Takhassusi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Leodora', 'Deane', null, 'F', '2019-10-30', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kennith', 'Pawlyn', null, 'M', '2018-03-30', 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Hedvig', 'Corringham', null, 'M', '2002-04-23', 'B-', 'Al-Muroof Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Abrahan', 'Raulston', null, 'M', '1979-11-16', 'AB+', 'Al-Hada Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Hermon', 'Toulson', null, 'M', null, 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lyssa', 'Donneely', null, 'F', null, 'AB+', 'Al-Rayan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sindee', 'Redihough', null, 'F', null, 'A-', 'Al-Maather Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Remus', 'Summerside', null, 'M', null, 'AB+', 'Al-Izdihar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Clark', 'Schankel', null, 'F', '2004-02-07', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Aile', 'Costan', null, 'F', '1980-12-12', 'AB-', 'Al-Aziziyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Zorina', 'Laydel', 'zlaydelz@elegantthemes.com', 'F', null, 'AB+', 'Al-Mughrizat Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Milty', 'Auld', null, 'M', '1994-01-12', 'O-', 'Al-Izdihar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Rosella', 'Hennington', 'rhennington11@ihg.com', 'F', null, 'AB-', 'Al-Rayan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Iggy', 'Bullion', null, 'M', null, 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lynett', 'Ghione', null, 'F', null, 'A+', 'Al-Hamra Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Mohammed', 'Calam', null, 'M', '2019-07-02', null, 'Al-Khuzama Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Maud', 'Emm', null, 'M', '2004-03-22', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Tiena', 'Camel', 'tcamel16@ucoz.ru', 'M', '2002-11-06', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Edeline', 'Canceller', null, 'F', '1985-02-26', 'A+', 'Al-Muroof Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Craggie', 'McNirlin', 'cmcnirlin18@t.co', 'M', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sarajane', 'Sinyard', 'ssinyard19@studiopress.com', 'F', null, 'O-', 'Al-Maather Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sara-ann', 'Luetkemeyer', null, 'F', '1984-07-07', null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Abby', 'Chellenham', 'achellenham1b@aol.com', 'F', null, 'A+', 'Al-Narjis Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Brendan', 'Benech', null, 'M', null, 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Marieann', 'Ocheltree', null, 'F', '1983-05-24', null, 'Al-Izdihar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Mason', 'Amies', null, 'F', null, 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Drona', 'Sculpher', null, 'F', null, 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Standford', 'Spikeings', 'sspikeings1g@purevolume.com', 'M', '1984-08-16', 'B-', 'Al-Khuzama Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lea', 'Cheers', null, 'M', '1990-02-15', 'O+', 'Al-Izdihar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Domingo', 'Carlisso', null, 'F', null, 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Christy', 'Imason', null, 'M', '1981-02-14', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kristel', 'Ferras', 'kferras1k@hugedomains.com', 'F', null, 'O+', 'Al-Aqiq Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Selena', 'Betke', 'sbetke1l@google.es', 'M', null, 'O-', 'Al-Suwaidi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Hanna', 'Eastcourt', null, 'M', null, null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Thorsten', 'Grafhom', null, 'M', null, 'A-', 'Al-Qairawan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jenilee', 'Bartolacci', null, 'M', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Tudor', 'Barten', null, 'M', '1997-09-08', 'B+', 'Al-Nafal Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kenny', 'Daice', 'kdaice1q@prnewswire.com', 'F', '2008-02-16', 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lizzy', 'Pappi', 'lpappi1r@scientificamerican.com', 'M', '1996-08-15', 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Aloysia', 'Resun', 'aresun1s@qq.com', 'M', null, 'B-', 'Al-Muhammadiyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Felipa', 'Ludovici', 'fludovici1t@webs.com', 'M', '1974-05-07', null, 'Al-Malqa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Milty', 'Lutsch', null, 'F', '1995-04-26', 'O-', 'Olaya Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Granny', 'Krysztofiak', 'gkrysztofiak1v@kickstarter.com', 'F', '2017-01-15', null, 'Al-Mansouriyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Eldredge', 'Bussens', null, 'M', null, 'AB-', 'Al-Wurood Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Scott', 'Kristof', null, 'F', '1972-02-03', 'AB+', 'Al-Mursalat Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Juanita', 'Olivetti', null, 'F', '1999-04-08', 'B+', 'Al-Qairawan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Marie', 'Leaman', 'mleaman1z@furl.net', 'M', null, 'O+', 'Al-Wadi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Roderich', 'Ricioppo', null, 'F', '2011-06-14', 'A+', 'Al-Khuzama Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Dasi', 'Paolacci', 'dpaolacci21@taobao.com', 'M', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Collete', 'St. Quentin', 'cstquentin22@washingtonpost.com', 'F', null, 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Rozanne', 'Goaks', null, 'M', '1976-01-30', 'B-', 'Al-Ghadir Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Dacey', 'Fausset', null, 'M', '2004-11-22', 'A-', 'Al-Muroof Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Anjela', 'Capini', null, 'F', null, 'A-', 'Al-Falah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Milly', 'Tayt', 'mtayt26@1und1.de', 'M', '1997-06-11', null, 'Al-Yasmin Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lila', 'Jacobovitz', null, 'F', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Faber', 'Nelthorpe', null, 'F', null, 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Wendel', 'Biaggioli', null, 'F', null, 'B+', 'Al-Khuzama Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sabine', 'Bloxam', null, 'M', '1993-09-06', 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Margot', 'Peregrine', null, 'M', null, 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ferdinand', 'Le Page', 'flepage2c@disqus.com', 'F', '2013-01-10', 'B-', 'Al-Aqiq Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jana', 'Huddle', 'jhuddle2d@aboutads.info', 'M', '1978-10-02', 'A+', 'Al-Manar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Mitchel', 'Piner', null, 'M', null, 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Dannie', 'Sapauton', null, 'M', '1987-03-13', 'A-', 'Al-Wadi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Harcourt', 'Cowans', null, 'M', '2001-09-04', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Brietta', 'Clee', null, 'F', '2004-04-19', null, 'Al-Falah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Stillman', 'Iveans', 'siveans2i@wunderground.com', 'M', '2007-05-09', 'AB+', 'Al-Mughrizat Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Dorena', 'Pendall', 'dpendall2j@cnbc.com', 'F', null, 'AB-', 'Al-Suwaidi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jodie', 'Sidebottom', 'jsidebottom2k@cpanel.net', 'F', '1974-05-16', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Trude', 'Zorzutti', null, 'F', '1986-09-12', 'O-', 'Al-Nafal Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Russ', 'Mooney', 'rmooney2m@1688.com', 'F', '2014-10-16', 'O+', 'Al-Cordoba Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Killian', 'Pagett', null, 'M', '2014-11-02', 'B-', 'Al-Nuzha Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Celinka', 'Leavy', null, 'M', null, 'B+', 'Al-Suwaidi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ambrosio', 'Flattman', null, 'M', null, 'O-', 'Al-Manar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Del', 'Dubois', null, 'F', null, 'O-', 'Al-Muhammadiyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Markus', 'Worsall', null, 'F', '2012-02-12', 'B+', 'Al-Yasmin Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Benedict', 'Brunotti', null, 'M', '1997-03-22', null, 'Al-Shifa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Obadiah', 'Odams', null, 'M', '2003-03-09', 'B-', 'Al-Yasmin Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Maximilian', 'Leary', 'mleary2u@xinhuanet.com', 'M', '2019-07-28', 'A+', 'Al-Yasmin Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Shay', 'Issitt', null, 'M', '1986-05-22', 'AB+', 'Al-Qairawan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Birgitta', 'Chaffyn', null, 'M', '1997-01-07', null, 'Al-Suwaidi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Garek', 'Van der Kruis', null, 'F', '1977-04-07', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ingaberg', 'Earry', null, 'M', '1987-09-10', 'AB+', 'Al-Mansouriyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Norrie', 'Fenby', null, 'F', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Nikaniki', 'Bernadon', null, 'F', '2016-05-24', 'O+', 'Al-Malqa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Bailey', 'Peacham', null, 'M', null, 'B-', 'Al-Wadi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Elnore', 'Huckstepp', 'ehuckstepp32@ucoz.com', 'F', '2001-05-31', 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ronica', 'Gilson', null, 'M', '1983-07-29', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Stafani', 'Yarker', null, 'M', '1986-06-27', 'A+', 'Al-Suwaidi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Dominique', 'Pesticcio', 'dpesticcio35@addthis.com', 'F', null, 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Nye', 'Breckin', 'nbreckin36@ibm.com', 'M', '1979-10-05', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Nichols', 'Fero', null, 'F', '2018-02-11', null, 'Al-Manar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Tedmund', 'Mechic', null, 'M', null, 'B+', 'Al-Nuzha Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Randa', 'Carbine', null, 'M', '2002-07-30', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Mindy', 'Rennebach', null, 'M', '1997-05-25', 'AB-', 'Al-Aziziyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Clayson', 'Tunn', null, 'M', '1982-09-21', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Tammy', 'Cornelius', null, 'M', null, 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Thaxter', 'Lethlay', 'tlethlay3d@parallels.com', 'M', '1994-08-13', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Maryann', 'Jerger', null, 'F', null, 'B+', 'Al-Aqiq Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lesya', 'Beagley', null, 'M', '2004-12-02', 'AB+', 'Al-Khuzama Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Linzy', 'Sworder', 'lsworder3g@dailymail.co.uk', 'M', '2019-10-30', 'A+', 'Al-Narjis Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Odetta', 'Brunotti', 'obrunotti3h@feedburner.com', 'M', '1996-12-20', 'AB+', 'Al-Takhassusi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Urson', 'Craine', null, 'F', null, 'O-', 'Al-Yasmin Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Parke', 'Merill', null, 'M', '1975-03-06', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Alla', 'Beek', null, 'M', null, 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Dominica', 'Fosdyke', null, 'F', null, 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Blayne', 'Pech', null, 'M', '1975-01-11', 'B-', 'Al-Mursalat Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Toinette', 'Wainer', null, 'F', '2003-01-01', 'AB-', 'Al-Rawdah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Cobb', 'Bardwall', null, 'F', null, 'B+', 'Al-Muroof Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Drona', 'Pollard', 'dpollard3p@discovery.com', 'F', null, 'O+', 'Al-Manar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Yancy', 'Rockall', 'yrockall3q@google.co.uk', 'M', '1983-06-20', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Rahal', 'Conti', null, 'M', '2015-02-11', null, 'Al-Rayan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Darda', 'Nason', 'dnason3s@npr.org', 'M', null, 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Isobel', 'Bucktharp', null, 'M', '1988-03-27', 'O-', 'Al-Muroof Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Russell', 'Lawey', 'rlawey3u@nih.gov', 'M', null, 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Naomi', 'Van Bruggen', null, 'M', '1987-01-24', 'A+', 'Al-Aqiq Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Shanta', 'Gerbl', null, 'M', null, 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Trista', 'Lile', 'tlile3x@guardian.co.uk', 'F', '1988-04-22', 'B-', 'Al-Nuzha Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Joyce', 'Bruneau', 'jbruneau3y@globo.com', 'M', '2016-12-21', null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jacques', 'Pride', 'jpride3z@amazon.co.jp', 'F', null, 'B-', 'Al-Manar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Marquita', 'Slatter', 'mslatter40@cpanel.net', 'M', null, 'O-', 'Al-Shifa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Emelda', 'Pirouet', null, 'M', '1979-07-26', 'B-', 'Al-Shifa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Arliene', 'Guiducci', null, 'M', '1984-01-30', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Gaston', 'Duthy', 'gduthy43@ted.com', 'M', null, 'B+', 'Al-Aziziyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Amanda', 'Kanzler', null, 'M', '1984-05-24', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Deana', 'Amsberger', null, 'M', '1977-06-22', 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Brandy', 'Konrad', null, 'F', '1980-06-09', null, 'Al-Rayan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Eleanore', 'Puzey', 'epuzey47@goodreads.com', 'M', null, 'AB+', 'Al-Wurood Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Roberto', 'Benner', 'rbenner48@yahoo.co.jp', 'F', '1978-06-10', 'AB-', 'Al-Mansouriyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jae', 'Sevitt', null, 'F', '1986-10-20', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Clayton', 'Watmough', null, 'M', '1974-10-23', 'A-', 'Al-Narjis Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jeniffer', 'Denness', null, 'F', null, null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Daisey', 'Moakes', null, 'M', '2016-03-17', 'B-', 'Al-Falah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Raviv', 'Madgewick', 'rmadgewick4d@psu.edu', 'M', '2018-06-08', 'A+', 'Al-Falah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Josias', 'Welton', 'jwelton4e@51.la', 'M', '1990-05-21', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Aime', 'Shoemark', null, 'F', null, 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Diane-marie', 'Bontine', null, 'F', '2019-10-05', 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Svend', 'Burwood', null, 'F', '2002-10-17', 'A+', 'Al-Aqiq Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Hodge', 'Moret', null, 'M', null, 'O+', 'Al-Maather Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Winthrop', 'Ickovits', null, 'M', null, 'B-', 'Al-Shifa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Bernete', 'Corris', 'bcorris4k@toplist.cz', 'M', '1976-03-28', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Coraline', 'Presser', 'cpresser4l@businessweek.com', 'F', '1982-05-09', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Borden', 'Witson', null, 'M', '2011-06-26', null, 'Al-Sahafa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Rhody', 'Donnachie', null, 'F', null, 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Otes', 'Thorby', null, 'M', null, null, 'Al-Manar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kristine', 'Malling', 'kmalling4p@imdb.com', 'F', '2000-02-07', 'B-', 'Al-Takhassusi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Fulton', 'Nunn', 'fnunn4q@mysql.com', 'M', '1981-10-27', 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Claretta', 'Pien', null, 'F', '2004-03-20', 'B+', 'Olaya Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Shurlocke', 'Boch', 'sboch4s@yelp.com', 'M', null, 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Foster', 'Devitt', null, 'F', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Leah', 'Robinson', null, 'M', '1988-10-17', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Gustav', 'Kalkhoven', 'gkalkhoven4v@fc2.com', 'F', '1997-05-15', 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Glennis', 'Laurenson', null, 'M', '1981-08-08', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Obadiah', 'Huggan', 'ohuggan4x@printfriendly.com', 'F', null, 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Doreen', 'Coslett', 'dcoslett4y@imdb.com', 'F', '1984-09-09', 'A-', 'Al-Takhassusi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Domini', 'Houseley', null, 'F', '1993-11-02', 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Crissie', 'Nusche', null, 'M', null, 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Evita', 'Budge', null, 'M', null, 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Garrik', 'Fitzmaurice', null, 'M', null, 'A+', 'Al-Suwaidi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Aland', 'Huish', null, 'F', null, 'AB-', 'Al-Nafal Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Reinaldo', 'Thowes', null, 'M', null, null, 'Al-Rawdah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Chelsy', 'O'' Meara', null, 'F', '1991-11-30', 'B+', 'Al-Takhassusi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ches', 'Thompson', null, 'F', '2014-08-12', 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Janeczka', 'Sandes', null, 'M', null, 'B+', 'Al-Rayan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lannie', 'Meldrum', null, 'M', '1975-02-12', null, 'Al-Wurood Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Simonne', 'Di Antonio', null, 'M', null, 'AB+', 'Al-Ghadir Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Chloette', 'Killcross', null, 'M', null, 'A+', 'Al-Mansouriyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Noami', 'O''Spillane', null, 'F', '1983-02-12', null, 'Al-Hamra Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Natale', 'Kane', null, 'F', '1987-10-06', null, 'Al-Sulaimaniyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Darill', 'McCaughen', 'dmccaughen5d@digg.com', 'M', '2014-10-15', 'AB+', 'Al-Mansouriyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Josey', 'Bennoe', 'jbennoe5e@quantcast.com', 'M', '1970-09-27', 'AB+', 'Al-Mansouriyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Laural', 'Ranshaw', null, 'M', '2014-01-10', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Bald', 'Douglas', null, 'F', '2006-04-09', 'O+', 'Al-Sulaimaniyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Horatia', 'Jirka', null, 'M', '2000-06-30', 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Humfrey', 'Ordemann', null, 'M', '1992-02-16', 'B+', 'Al-Sulaimaniyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Woody', 'Shillitoe', null, 'M', '1972-08-31', 'O-', 'Al-Wurood Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Nollie', 'Dignan', null, 'F', '1986-01-31', 'AB-', 'Al-Wadi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Leora', 'O''Cullinane', null, 'M', '1978-04-15', 'A+', 'Al-Cordoba Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Hogan', 'McGeever', null, 'F', '1971-08-13', 'AB+', 'Al-Mansouriyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Damien', 'Klaffs', null, 'M', null, 'O+', 'Al-Suwaidi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Conni', 'Schachter', 'cschachter5o@vkontakte.ru', 'M', '2013-06-21', 'B+', 'Al-Izdihar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Annis', 'Laughrey', 'alaughrey5p@toplist.cz', 'F', null, 'B-', 'Al-Hada Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Benita', 'Van den Velde', 'bvandenvelde5q@redcross.org', 'M', '1978-12-25', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Woodrow', 'Bruyns', 'wbruyns5r@tamu.edu', 'F', '2017-11-23', 'B+', 'Al-Nafal Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Odell', 'Joseland', null, 'F', '2000-09-02', 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Karina', 'Derrick', null, 'M', '1973-04-17', 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Hildagarde', 'Tuffin', null, 'F', null, null, 'Olaya Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Heall', 'Garnsworth', null, 'M', null, null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kamila', 'Budnik', 'kbudnik5w@google.it', 'F', null, 'B+', 'Al-Muroof Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Elaine', 'Hempshall', null, 'F', '2000-01-21', null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Fanchette', 'Treske', null, 'F', '1994-09-02', 'A-', 'Al-Rawdah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Innis', 'Albasiny', 'ialbasiny5z@paypal.com', 'F', '2000-12-01', 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kimmie', 'Gillis', null, 'F', null, 'A+', 'Al-Mughrizat Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ailee', 'Tommasetti', null, 'F', null, 'AB-', 'Al-Khuzama Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kariotta', 'Lambersen', null, 'F', '1980-11-22', 'AB+', 'Al-Cordoba Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Marie-ann', 'Darbishire', null, 'F', '2007-11-19', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Fowler', 'Koeppke', 'fkoeppke64@usa.gov', 'F', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Nanny', 'Kenworthy', null, 'M', null, 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Royal', 'Leaf', null, 'F', '2001-03-27', 'B-', 'Al-Muroof Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Gwen', 'Pohls', 'gpohls67@barnesandnoble.com', 'M', '2011-05-02', 'B+', 'Al-Ghadir Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Bryana', 'Fall', null, 'F', '1997-10-23', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Nan', 'Bapty', null, 'M', null, 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Alverta', 'Feldmark', null, 'M', '2012-04-24', 'A-', 'Al-Aziziyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Theodor', 'Naisby', null, 'M', null, 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ammamaria', 'Hatrey', null, 'M', '2014-02-20', 'A+', 'Al-Cordoba Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Stanislaus', 'Cafferky', 'scafferky6d@list-manage.com', 'M', null, 'B+', 'Al-Rayan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Edmund', 'Fidock', null, 'M', '2016-03-18', 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Cordie', 'Fackrell', 'cfackrell6f@blogger.com', 'M', '2012-03-11', null, 'Al-Ghadir Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Garrett', 'Furmston', null, 'F', null, 'O+', 'Al-Aziziyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Erena', 'Parramore', null, 'F', '1998-10-12', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Barbra', 'Cyphus', null, 'M', null, 'B+', 'Al-Qairawan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Casar', 'Lockner', null, 'F', '1971-01-01', 'A-', 'Al-Sulaimaniyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Theda', 'Strivens', 'tstrivens6k@about.com', 'M', '1981-01-25', null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Joshua', 'Cohen', 'jcohen6l@weebly.com', 'M', null, 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lawrence', 'Pauls', null, 'M', '1992-04-09', 'B-', 'Al-Takhassusi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Walden', 'Cansfield', null, 'M', '1995-10-12', 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Devora', 'Ivett', null, 'M', '2009-08-02', 'A-', 'Al-Cordoba Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kathy', 'Merrin', null, 'F', '1990-05-05', 'B+', 'Al-Wadi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Germain', 'Wrassell', null, 'M', null, null, 'Al-Narjis Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lettie', 'Beams', null, 'M', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jermaine', 'Baitman', null, 'M', '1973-01-11', 'AB-', 'Al-Mughrizat Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Bettine', 'Slight', null, 'M', '1997-08-19', 'B+', 'Al-Muroof Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Gloriana', 'Rathke', null, 'M', '1990-08-12', 'B+', 'Al-Suwaidi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Margalit', 'Fryatt', null, 'M', null, 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Patty', 'Pantry', null, 'M', '1992-04-20', 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Chick', 'Gremane', 'cgremane6x@harvard.edu', 'F', '2002-03-06', 'O+', 'Al-Sahafa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Tessie', 'Straine', null, 'F', null, 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Harriette', 'Mityushin', null, 'F', null, 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Abey', 'Fouldes', null, 'M', null, 'AB+', 'Al-Rayan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Raychel', 'Sworn', null, 'F', '1989-10-07', 'B-', 'Al-Wurood Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Vonny', 'Salsbury', 'vsalsbury72@barnesandnoble.com', 'F', null, 'A+', 'Al-Suwaidi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Penny', 'Evans', null, 'M', '1998-05-25', 'B+', 'Al-Falah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Gael', 'Wheatley', null, 'F', '1999-05-23', 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Colan', 'Brewitt', 'cbrewitt75@google.it', 'F', null, 'B+', 'Al-Cordoba Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Arline', 'Baruch', null, 'F', null, 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Konstance', 'Greatland', null, 'M', '2009-04-21', 'B-', 'Al-Takhassusi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Evin', 'Jeaycock', null, 'F', null, 'O-', 'Al-Hada Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jordon', 'Swanborough', null, 'F', null, 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Nealon', 'Arnely', null, 'F', '2010-07-13', null, 'Olaya Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Eliot', 'Horney', null, 'F', '2018-07-26', 'O+', 'Al-Nuzha Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ingamar', 'Gillinghams', null, 'F', '1998-08-29', 'AB-', 'Al-Aqiq Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Margaretta', 'Francesc', 'mfrancesc7d@apache.org', 'M', '2004-07-23', 'B-', 'Al-Manar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Franklin', 'Collingridge', 'fcollingridge7e@drupal.org', 'M', '2003-09-24', 'AB-', 'Al-Sulaimaniyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Terrell', 'Rowes', null, 'M', '1972-09-08', 'A-', 'Al-Wadi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Scarlet', 'Elrick', 'selrick7g@amazonaws.com', 'M', '2013-02-14', 'O-', 'Al-Aqiq Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Bea', 'Woehler', 'bwoehler7h@businessinsider.com', 'M', '1995-12-16', 'B-', 'Al-Izdihar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Alexina', 'Chadbourne', null, 'M', '2006-07-28', 'AB-', 'Al-Hamra Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Gwennie', 'Stuckford', null, 'F', null, 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Rossy', 'Trousdell', null, 'M', '1990-01-12', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Evan', 'Wikey', null, 'M', null, null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Maddie', 'Gaveltone', null, 'M', null, 'B+', 'Al-Wurood Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ruthe', 'Yourell', null, 'M', '1997-03-29', 'A-', 'Al-Aqiq Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ursa', 'Clowton', null, 'F', null, 'B+', 'Al-Rayan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Penelopa', 'Hedde', null, 'F', '2010-08-15', 'A-', 'Al-Narjis Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Hugo', 'Adamo', null, 'M', null, 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Brandon', 'Lockier', null, 'M', null, 'AB-', 'Al-Hada Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lawry', 'Nodes', null, 'F', '1983-06-08', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Latashia', 'Whitehorn', null, 'F', null, 'B+', 'Al-Falah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Allyson', 'Sherred', null, 'F', null, 'A-', 'Al-Hamra Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Shurlocke', 'Kell', null, 'M', null, 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Spense', 'Dowsey', 'sdowsey7w@cpanel.net', 'F', '1975-10-14', 'B-', 'Al-Sahafa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Antin', 'Ranby', 'aranby7x@mashable.com', 'M', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Keane', 'Haddick', null, 'M', '1996-05-06', 'AB-', 'Al-Cordoba Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Joshia', 'Staning', 'jstaning7z@toplist.cz', 'M', '2001-02-08', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Matty', 'Chelley', null, 'M', '1976-12-06', 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Flem', 'Pettigrew', 'fpettigrew81@dot.gov', 'M', null, 'AB+', 'Al-Aqiq Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Allistir', 'Franiak', null, 'M', '1983-01-04', 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sissy', 'Priest', null, 'F', '1987-09-22', 'A-', 'Al-Shifa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Billye', 'Dwelly', 'bdwelly84@utexas.edu', 'M', '1990-02-11', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Charlotta', 'Vial', null, 'M', '2011-11-02', 'O-', 'Al-Sulaimaniyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Finlay', 'Walrond', null, 'M', '1977-05-08', null, 'Al-Rayan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Katerina', 'Youthed', null, 'F', '2005-10-22', 'A+', 'Al-Hamra Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Townie', 'Gerrans', null, 'F', '1979-11-22', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jeniffer', 'Eastham', null, 'F', '1990-08-20', 'A-', 'Al-Cordoba Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Alastair', 'Castledine', null, 'F', '2001-11-16', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Flss', 'Stienham', null, 'F', null, 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Beale', 'Lamming', null, 'F', null, 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lina', 'Jesson', null, 'M', '1976-06-04', 'A-', 'Al-Aziziyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Hilton', 'Richold', null, 'F', null, 'A-', 'Al-Muroof Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Derrek', 'Rheam', null, 'M', null, null, 'Al-Nafal Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Heidie', 'Tunn', 'htunn8g@amazon.co.uk', 'M', '1983-12-31', 'AB-', 'Al-Muroof Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sindee', 'Androsik', null, 'F', '1999-10-16', 'AB+', 'Al-Narjis Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kiel', 'Fishly', null, 'F', null, 'O+', 'Al-Mughrizat Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Hilliard', 'Wasson', null, 'M', '2011-04-27', 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Rickert', 'McCurdy', null, 'F', '1998-12-04', 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Selestina', 'Kibblewhite', null, 'F', null, 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Don', 'Dewhurst', null, 'F', '2014-01-26', 'O-', 'Olaya Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Helaine', 'Raddon', null, 'M', null, 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Chilton', 'Trigg', 'ctrigg8o@tripod.com', 'M', '2011-01-17', 'AB+', 'Al-Shifa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Pebrook', 'Greystock', null, 'M', '1990-05-01', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jeremiah', 'Paoli', 'jpaoli8q@engadget.com', 'F', null, null, 'Al-Nuzha Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Bettina', 'Tante', null, 'F', null, 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Renie', 'Kapelhoff', null, 'M', '1986-08-09', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Merci', 'Selman', null, 'F', '1973-09-04', 'B-', 'Al-Izdihar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Derrik', 'Patry', null, 'M', '1983-02-22', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Nellie', 'Tilburn', null, 'F', '2016-02-13', null, 'Al-Sulaimaniyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Adelaide', 'Cantle', 'acantle8w@networkadvertising.org', 'M', null, 'B-', 'Al-Izdihar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Tyne', 'O''Sheeryne', null, 'F', null, 'A-', 'Al-Yasmin Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Barb', 'Cail', null, 'M', null, 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Andeee', 'Dodsworth', null, 'M', '1996-11-08', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Laird', 'Blacksland', null, 'M', '2008-01-22', 'AB-', 'Al-Takhassusi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Hildagard', 'Seabrook', null, 'M', '2000-01-20', null, 'Al-Narjis Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Cary', 'Tivenan', 'ctivenan92@clickbank.net', 'M', '1981-03-29', 'B+', 'Olaya Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Verina', 'Benoist', null, 'F', '2010-04-13', 'AB+', 'Al-Aziziyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Noam', 'Kneel', null, 'F', null, 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kendal', 'Marchington', null, 'F', '1998-11-08', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Henri', 'Walcot', null, 'F', '2004-01-09', 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Heidie', 'Rand', null, 'M', null, 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Almeda', 'Wetherald', null, 'F', null, null, 'Al-Takhassusi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Karine', 'Curtain', 'kcurtain99@dion.ne.jp', 'M', '1981-09-18', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Dimitri', 'McWhannel', null, 'M', '2003-04-25', null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jermain', 'Corney', 'jcorney9b@shop-pro.jp', 'M', null, null, 'Al-Qairawan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sauveur', 'Dorgan', null, 'F', null, 'AB+', 'Al-Muroof Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Yehudi', 'Reucastle', null, 'F', '1989-12-15', 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Zachery', 'Wanley', null, 'M', '1999-07-22', 'A+', 'Al-Takhassusi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Thea', 'Weald', 'tweald9f@gizmodo.com', 'M', null, 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Mei', 'Rodder', 'mrodder9g@rakuten.co.jp', 'M', '1986-02-03', 'A+', 'Al-Muroof Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Mellisent', 'Brimilcombe', null, 'M', '2010-03-17', 'A+', 'Al-Shifa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Adolf', 'Fysh', null, 'M', '1975-10-12', null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jarrad', 'Camplejohn', null, 'M', '1989-05-07', null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Berny', 'Willoughey', null, 'M', '1981-10-26', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Gilberta', 'Kleinbaum', null, 'F', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Marcile', 'Blackbrough', null, 'M', null, 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Michaella', 'Edinborough', null, 'M', '1973-12-02', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Monah', 'Moran', 'mmoran9o@edublogs.org', 'M', '1991-09-10', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Rosa', 'Peasby', null, 'F', '1999-12-05', 'AB+', 'Al-Hamra Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Gerrard', 'Edwinson', null, 'M', '2011-05-03', 'A-', 'Al-Muroof Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Joni', 'Isaacson', null, 'M', null, 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Brocky', 'Gamil', null, 'M', '1991-09-13', 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Marybeth', 'Sein', null, 'M', null, null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Javier', 'Sleit', 'jsleit9u@51.la', 'F', null, 'O+', 'Al-Wurood Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Yule', 'Bleyman', null, 'F', '2016-07-27', 'AB-', 'Al-Mansouriyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Peria', 'Beavis', 'pbeavis9w@mapquest.com', 'F', '2006-05-27', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ros', 'Keattch', 'rkeattch9x@techcrunch.com', 'F', '2013-11-13', 'AB-', 'Al-Nafal Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Wilmar', 'Dominec', null, 'F', null, 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Witty', 'Chittie', null, 'M', '1995-01-26', 'O+', 'Al-Maather Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Nanci', 'De Souza', null, 'M', '1970-06-17', 'AB-', 'Al-Ghadir Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Reynolds', 'Girogetti', 'rgirogettia1@alibaba.com', 'M', '1979-06-22', 'AB+', 'Al-Falah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Fabian', 'Barnardo', null, 'F', '2011-03-10', 'AB-', 'Al-Muroof Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Joella', 'Clackers', null, 'M', null, 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jeffie', 'Cowp', null, 'M', '1989-11-29', 'B+', 'Al-Sulaimaniyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lyle', 'Roundtree', null, 'M', '2019-08-16', 'AB+', 'Al-Falah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ernst', 'Botright', null, 'M', null, 'B-', 'Al-Rawdah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lesley', 'Curme', 'lcurmea7@disqus.com', 'M', null, 'A+', 'Al-Mughrizat Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Faber', 'Michie', null, 'F', '1987-09-29', 'A-', 'Al-Nafal Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Trstram', 'Leishman', null, 'F', '2005-05-20', 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('William', 'Dedmam', null, 'F', '2010-07-27', null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Reinaldos', 'Swiggs', null, 'M', '2008-08-29', 'AB+', 'Al-Mansouriyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Gannie', 'Baylie', null, 'M', '1996-02-10', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jerrold', 'Crocroft', null, 'F', '2000-11-28', 'B-', 'Al-Muhammadiyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Allx', 'Manske', null, 'M', null, 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Simmonds', 'MacMillan', null, 'M', '1970-11-30', null, 'Al-Sahafa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sheena', 'Braine', null, 'F', '2015-11-08', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Bram', 'LaBastida', 'blabastidaah@networkadvertising.org', 'M', null, null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ruben', 'Lawee', null, 'M', '1988-04-23', 'AB+', 'Al-Suwaidi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Meggi', 'Itzakson', 'mitzaksonaj@xing.com', 'M', '1988-06-15', 'A+', 'Al-Malqa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Salem', 'Acland', null, 'F', '1972-09-03', 'B+', 'Al-Falah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Coop', 'de Almeida', null, 'F', null, 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Vivia', 'Pikesley', null, 'M', null, 'AB-', 'Al-Qairawan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Elwyn', 'Siemons', 'esiemonsan@hc360.com', 'M', '1995-12-03', 'B+', 'Al-Hamra Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Brigham', 'Gentle', null, 'M', '1978-09-08', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Zonda', 'Santhouse', null, 'F', '1981-11-08', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Adda', 'Carnie', null, 'M', '2017-07-30', 'B-', 'Al-Yasmin Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Joanne', 'Eeles', null, 'F', null, 'B+', 'Al-Maather Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Dane', 'Clyburn', null, 'F', '2008-04-14', 'O+', 'Al-Suwaidi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Meaghan', 'Blanden', null, 'F', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Elbertina', 'McAllister', 'emcallisterau@cpanel.net', 'F', null, 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Guthry', 'Barks', null, 'M', '1970-08-25', null, 'Al-Ghadir Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Waldo', 'Rimmer', 'wrimmeraw@ezinearticles.com', 'M', '2011-07-21', 'O+', 'Al-Ghadir Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Mirabelle', 'Beresford', null, 'M', '1991-04-30', 'O+', 'Al-Muhammadiyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Eda', 'Granger', null, 'F', null, 'B-', 'Al-Manar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Morse', 'Siddon', null, 'F', null, null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Betsey', 'Lyddy', null, 'F', '2013-11-22', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Helen-elizabeth', 'Nehl', null, 'M', '1980-02-25', 'B-', 'Al-Maather Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Genni', 'Falks', null, 'M', null, 'AB+', 'Al-Sahafa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Cathy', 'Alfonsetti', 'calfonsettib3@nifty.com', 'M', '2017-04-04', 'O+', 'Al-Rayan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Averyl', 'McGuff', null, 'M', '1992-04-01', 'O-', 'Al-Izdihar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Carmine', 'Schinetti', null, 'M', '1994-11-14', 'A+', 'Al-Takhassusi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Bee', 'Whayman', null, 'F', null, 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Wilma', 'Jacqueminot', null, 'F', '1998-10-15', 'B+', 'Al-Izdihar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sharity', 'Pawelec', null, 'F', '2000-05-15', 'O+', 'Al-Mughrizat Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sylvester', 'Cisland', null, 'F', null, 'AB-', 'Al-Izdihar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Myrtle', 'Griffen', 'mgriffenba@seesaa.net', 'M', '1999-09-21', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Bonita', 'Hindmoor', null, 'M', '2016-02-09', 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Duffie', 'Coleson', 'dcolesonbc@e-recht24.de', 'M', '1984-09-12', null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kathryne', 'Daw', null, 'F', '1979-07-29', 'O+', 'Al-Aqiq Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Raquela', 'Foyster', 'rfoysterbe@bing.com', 'F', '2005-11-04', 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lisha', 'Kieff', null, 'M', null, 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Odell', 'Vigours', null, 'M', '1990-01-31', 'AB+', 'Al-Maather Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Rollin', 'Blasli', null, 'F', null, 'B-', 'Al-Shifa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Alane', 'Kleinsmuntz', 'akleinsmuntzbi@diigo.com', 'M', '1989-02-25', 'B+', 'Al-Sahafa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Margarita', 'Helm', null, 'M', null, 'AB-', 'Al-Rawdah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Nettle', 'Pasmore', null, 'F', '2005-07-16', 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Valentine', 'Tumpane', null, 'F', '2001-10-20', 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Shae', 'Corris', 'scorrisbm@live.com', 'M', null, 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Skelly', 'Rosita', null, 'F', '1975-01-09', 'B-', 'Al-Malqa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Raeann', 'Celez', 'rcelezbo@booking.com', 'M', '1980-12-31', 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Harley', 'Drabble', null, 'M', '1993-05-31', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ed', 'Steinson', 'esteinsonbq@jugem.jp', 'M', '2007-10-28', 'A-', 'Al-Malqa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sharlene', 'Drust', null, 'F', null, 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Corissa', 'Molan', null, 'F', null, 'A-', 'Olaya Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Herc', 'Abel', null, 'M', null, null, 'Al-Izdihar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Aura', 'Duigenan', null, 'M', '1988-04-11', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ashlie', 'Hawkswood', null, 'F', null, 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Martie', 'Wickrath', null, 'M', '2004-01-11', 'AB+', 'Al-Malqa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Juliette', 'Dungey', null, 'F', '2004-11-29', 'A-', 'Al-Izdihar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Addie', 'Croome', null, 'M', '2004-06-25', 'B+', 'Al-Aziziyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Vonny', 'McJury', null, 'M', null, 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kingsly', 'Klimuk', null, 'M', '1993-11-25', 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sofia', 'McCarney', null, 'M', null, 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lamond', 'Lomath', 'llomathc2@home.pl', 'M', null, 'O-', 'Al-Hamra Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lorrie', 'Layborn', null, 'M', '1986-08-26', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kellen', 'Baswall', 'kbaswallc4@rakuten.co.jp', 'M', null, 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Aida', 'Smurfitt', 'asmurfittc5@twitpic.com', 'F', '1996-04-01', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Penn', 'O''Sherrin', 'posherrinc6@go.com', 'M', null, 'B+', 'Al-Suwaidi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ken', 'Pleuman', null, 'M', '2002-12-15', 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Fitzgerald', 'Jagg', 'fjaggc8@amazon.co.jp', 'F', null, 'O+', 'Al-Muhammadiyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lawrence', 'Stratton', null, 'F', null, 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Glynn', 'Trickett', 'gtrickettca@flickr.com', 'F', null, 'B+', 'Al-Wadi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Cati', 'Frizell', null, 'F', null, 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Salomo', 'Twoohy', 'stwoohycc@multiply.com', 'F', '2008-11-05', 'AB+', 'Al-Cordoba Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sibelle', 'Carwithan', null, 'F', '2014-07-25', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Diana', 'Eccles', null, 'F', null, 'AB+', 'Al-Wadi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sonja', 'Mincini', 'smincinicf@imgur.com', 'M', '1994-09-11', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Far', 'Minchell', 'fminchellcg@github.com', 'F', null, null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Dacia', 'Andreas', 'dandreasch@mashable.com', 'F', '1998-02-01', 'O-', 'Al-Rayan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Gabriellia', 'Wrathmall', 'gwrathmallci@gmpg.org', 'F', null, 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Shae', 'Bernholt', null, 'M', null, 'A-', 'Al-Cordoba Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Pavel', 'Casterton', null, 'F', '1989-12-27', 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Eran', 'Cozzi', null, 'M', '2019-11-06', 'A-', 'Al-Wurood Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Noelle', 'Dupoy', 'ndupoycm@arizona.edu', 'F', null, null, 'Al-Nuzha Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Herrick', 'Pahlsson', null, 'M', '1984-02-10', 'B-', 'Al-Takhassusi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Cirillo', 'Paquet', 'cpaquetco@kickstarter.com', 'M', '1988-07-01', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Doe', 'Bigby', null, 'F', '1989-07-05', 'A+', 'Al-Nuzha Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Leigh', 'McIvor', null, 'F', '2010-09-13', 'A+', 'Al-Ghadir Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Susanna', 'Poser', null, 'F', null, 'B+', 'Al-Mughrizat Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Marc', 'Etteridge', null, 'F', '1989-05-25', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Bearnard', 'Paxeford', null, 'F', '1977-09-20', 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jessie', 'Infantino', null, 'M', '2004-04-17', 'A-', 'Al-Mughrizat Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Marie-ann', 'Jaynes', null, 'F', '1972-12-16', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Marie-ann', 'Morant', 'mmorantcw@prweb.com', 'F', null, null, 'Al-Malqa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Dexter', 'Bartoshevich', null, 'F', '2014-02-20', 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Othelia', 'Hubert', null, 'M', '1994-02-03', 'B+', 'Al-Maather Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Cassandry', 'Gilmartin', null, 'F', null, 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jasmina', 'Parmenter', null, 'F', '2009-05-17', 'B-', 'Al-Nafal Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Farlie', 'Cafferky', null, 'M', '2006-01-19', 'AB+', 'Olaya Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Annadiana', 'Wittke', null, 'F', '1991-03-01', 'O+', 'Al-Takhassusi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Nesta', 'Mutch', null, 'F', null, 'A+', 'Al-Hamra Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Gisella', 'Leele', 'gleeled4@springer.com', 'F', null, 'O+', 'Al-Takhassusi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Maritsa', 'Airds', null, 'F', '1982-11-24', 'O+', 'Al-Sahafa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Monroe', 'Margram', 'mmargramd6@clickbank.net', 'M', '1991-05-10', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Susanetta', 'Flacknell', null, 'M', null, 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Bev', 'Giampietro', null, 'M', '1974-03-29', 'B-', 'Al-Cordoba Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Marja', 'Rowlett', 'mrowlettd9@mysql.com', 'M', null, 'B+', 'Al-Suwaidi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Alano', 'Dodimead', null, 'M', '1993-07-07', 'B-', 'Al-Maather Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sherlocke', 'Darree', null, 'F', null, 'A+', 'Al-Mansouriyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Miner', 'Leader', null, 'M', '2018-06-16', 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Abigale', 'Guilloton', null, 'F', null, null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Vally', 'Corke', null, 'M', '1971-10-31', null, 'Al-Qairawan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Merell', 'Chat', 'mchatdf@twitter.com', 'F', null, 'O-', 'Al-Nafal Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Livvy', 'Umney', null, 'F', null, null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Constantino', 'Taylorson', null, 'M', '1976-12-17', null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Darby', 'Wyant', 'dwyantdi@51.la', 'M', null, 'O-', 'Al-Nafal Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Harrie', 'Baddeley', null, 'M', '1995-08-06', 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ronna', 'Swannie', null, 'M', '2006-12-25', 'O+', 'Al-Sulaimaniyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lynelle', 'Cruces', null, 'F', null, 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Michal', 'Picken', null, 'F', '1975-06-17', 'O+', 'Al-Muroof Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Benedikta', 'Tuftin', 'btuftindn@blogger.com', 'M', null, 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Grace', 'Youd', 'gyouddo@salon.com', 'M', '2014-09-20', 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Orly', 'Mose', null, 'F', '1972-02-28', null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Katina', 'Spyer', null, 'M', '2006-06-26', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Mia', 'Raper', null, 'F', '1997-11-29', 'AB-', 'Al-Falah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Merissa', 'Lakeland', 'mlakelandds@accuweather.com', 'M', '1995-06-28', 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Brockie', 'Woolacott', null, 'F', null, 'AB+', 'Al-Rawdah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Gisella', 'Roan', 'groandu@oracle.com', 'M', '1986-11-25', 'AB+', 'Al-Wurood Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lilla', 'Knottley', null, 'M', null, 'O+', 'Al-Aziziyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Vivie', 'Filby', null, 'F', null, 'B+', 'Al-Izdihar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ernestine', 'Denty', null, 'F', null, 'AB+', 'Al-Yasmin Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Zacharias', 'Vanyutin', null, 'M', '1988-10-24', 'A+', 'Al-Izdihar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Cassandra', 'Fransman', null, 'F', '1992-02-13', 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Clim', 'Gwilliams', null, 'M', null, 'A-', 'Al-Ghadir Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Brandyn', 'Edland', null, 'M', '1993-06-27', 'B+', 'Al-Mansouriyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Nanete', 'Vanyashkin', null, 'M', null, 'O+', 'Al-Nafal Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Wash', 'Maffulli', null, 'M', '1971-01-16', 'A-', 'Al-Hada Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Cassandry', 'Raynor', 'craynore4@diigo.com', 'F', '2000-02-23', 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Reade', 'Izakof', null, 'M', null, 'A-', 'Al-Falah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sherline', 'Quodling', 'squodlinge6@oaic.gov.au', 'F', null, 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Amie', 'Hadfield', 'ahadfielde7@newsvine.com', 'M', '2008-11-11', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Zack', 'Witheford', null, 'F', '1999-07-15', 'AB+', 'Al-Takhassusi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ellissa', 'Harber', null, 'M', null, 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Constantine', 'Pickworth', 'cpickworthea@comcast.net', 'F', null, 'O+', 'Al-Malqa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Monika', 'Solesbury', 'msolesburyeb@arizona.edu', 'M', null, 'AB-', 'Al-Nuzha Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Garald', 'Seymark', null, 'F', '1972-04-01', 'O+', 'Al-Wurood Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Leonidas', 'Salvador', null, 'F', '1987-04-21', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Frasco', 'Devey', null, 'F', '1974-06-29', 'A-', 'Olaya Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Godiva', 'Gerholz', null, 'F', '1972-02-21', 'B-', 'Olaya Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ernaline', 'Beavon', null, 'M', '1973-11-18', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Halsy', 'Burcombe', null, 'M', '1984-01-01', 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Carver', 'Kowalik', null, 'M', null, 'B-', 'Al-Falah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Yorgo', 'Woolward', null, 'M', '2015-02-19', null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Georas', 'Paolozzi', null, 'M', '2014-09-03', null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lorna', 'Grigoriev', 'lgrigorievel@shutterfly.com', 'F', '2015-06-07', 'B+', 'Al-Shifa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Florina', 'Brambill', null, 'F', '2018-03-01', null, 'Al-Izdihar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jacquelyn', 'Goodfield', null, 'M', null, 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Herbert', 'Cappineer', null, 'M', '1987-03-23', 'AB+', 'Al-Qairawan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ilsa', 'Olesen', null, 'F', null, 'A+', 'Olaya Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Heidie', 'Arlett', null, 'M', '1978-03-02', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Robbie', 'Clementucci', null, 'M', '1975-11-25', null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Melosa', 'Grishakin', null, 'M', null, 'O-', 'Al-Narjis Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Leopold', 'Adair', null, 'M', null, 'B-', 'Al-Wadi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Mel', 'Dossett', null, 'F', null, 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jerrome', 'Odd', null, 'F', '1992-07-06', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Gussie', 'Dalrymple', 'gdalrympleew@paypal.com', 'F', '1990-07-25', 'A-', 'Al-Mansouriyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ondrea', 'Upham', 'ouphamex@domainmarket.com', 'F', '1971-02-22', 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Tansy', 'Kerby', null, 'F', '1982-03-14', null, 'Al-Wadi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Doro', 'Hourstan', 'dhourstanez@guardian.co.uk', 'M', '1988-02-06', 'A+', 'Al-Rawdah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Darcy', 'Beddows', 'dbeddowsf0@opera.com', 'F', null, 'A+', 'Al-Suwaidi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Herculie', 'D''Agostini', null, 'F', null, 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Collie', 'Blofeld', 'cblofeldf2@com.com', 'M', null, 'A+', 'Al-Sulaimaniyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sergio', 'Butland', 'sbutlandf3@xrea.com', 'M', '1971-09-30', 'A-', 'Al-Narjis Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Marci', 'Windram', null, 'M', '1997-03-24', 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Cody', 'Mulvihill', null, 'M', '1989-12-21', 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Janeta', 'Jancik', null, 'F', null, 'O-', 'Al-Shifa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sylvester', 'Gorstidge', null, 'M', '2020-02-14', 'A+', 'Al-Aziziyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sigvard', 'Forshaw', null, 'M', null, 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Elsi', 'Mulcock', null, 'F', '1981-03-12', 'AB-', 'Al-Izdihar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Cammy', 'Pedersen', null, 'M', null, 'A+', 'Al-Muroof Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Roslyn', 'Lovejoy', 'rlovejoyfb@google.fr', 'M', '1987-03-14', 'O-', 'Al-Yasmin Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Fredrika', 'Watman', 'fwatmanfc@acquirethisname.com', 'M', null, 'O-', 'Al-Muroof Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kordula', 'Barter', null, 'M', null, null, 'Al-Maather Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Dore', 'Ringwood', null, 'F', '2000-05-02', 'B-', 'Al-Malqa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Nonie', 'Trayford', null, 'M', null, 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Wilmar', 'Rudgerd', null, 'M', null, 'O-', 'Al-Aziziyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Rad', 'Gilmartin', 'rgilmartinfh@smugmug.com', 'F', null, null, 'Al-Nafal Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Roxi', 'Wynrahame', null, 'M', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Launce', 'Castello', null, 'F', '2007-01-02', 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sibley', 'De la Zenne', null, 'M', '2014-10-05', 'A-', 'Al-Aqiq Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Niki', 'Sommer', null, 'F', '1973-01-06', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ferdinanda', 'Swatland', null, 'F', '1998-02-26', 'B+', 'Al-Cordoba Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Naoma', 'Lowery', 'nloweryfn@loc.gov', 'F', '1986-02-27', null, 'Al-Muroof Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Tyrus', 'Durgan', null, 'M', null, null, 'Al-Shifa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Cole', 'Spacy', null, 'F', null, null, 'Al-Muhammadiyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Nico', 'Lodewick', null, 'M', null, 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Petronia', 'Kelley', 'pkelleyfr@forbes.com', 'F', '2015-06-09', null, 'Al-Maather Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Adriena', 'Hazleton', null, 'M', '2005-07-13', 'B-', 'Al-Qairawan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Artemas', 'Pentycost', null, 'M', '1988-01-18', null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Natividad', 'Dawidowitsch', 'ndawidowitschfu@g.co', 'F', '2006-01-19', 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Torrey', 'Fettes', null, 'F', null, 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Chandra', 'Banasik', 'cbanasikfw@mashable.com', 'M', '2010-07-26', 'AB-', 'Olaya Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Brittan', 'Hollyar', 'bhollyarfx@mail.ru', 'F', null, 'O+', 'Al-Maather Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('May', 'Ferrarotti', null, 'M', '1997-02-11', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Olivie', 'McVee', null, 'F', '1994-09-23', 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Boote', 'Hindsberg', 'bhindsbergg0@soundcloud.com', 'M', '1988-09-09', null, 'Al-Aziziyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Gilles', 'Cisco', null, 'M', null, 'AB+', 'Al-Wurood Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Genny', 'McInally', null, 'M', '2019-05-28', 'B-', 'Al-Wadi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Westbrooke', 'Benallack', null, 'F', '1998-01-11', 'O+', 'Al-Cordoba Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Demott', 'MacKim', null, 'M', null, 'A+', 'Al-Wadi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Nicolea', 'Morkham', null, 'F', null, 'B-', 'Al-Mansouriyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kamillah', 'Tiddy', 'ktiddyg6@gov.uk', 'M', '2005-04-10', 'O-', 'Al-Takhassusi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Aldridge', 'Matys', null, 'F', null, 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lenna', 'Itzchaki', null, 'M', null, 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Blakeley', 'Titta', null, 'F', null, 'B-', 'Al-Yasmin Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Panchito', 'Leeder', 'pleederga@ustream.tv', 'M', '2003-06-17', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Oralle', 'O''Brogan', 'oobrogangb@mail.ru', 'F', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Syd', 'Robken', 'srobkengc@wufoo.com', 'F', '1977-04-27', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sherman', 'Edgecumbe', null, 'F', null, 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Rosco', 'Giggie', null, 'M', '2015-08-14', 'O+', 'Al-Nuzha Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Irv', 'Ismay', 'iismaygf@stanford.edu', 'F', null, 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Terra', 'Lethlay', null, 'F', null, 'AB+', 'Al-Mansouriyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ira', 'Lumb', null, 'M', null, 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Elsi', 'Channing', 'echanninggi@nbcnews.com', 'M', null, 'O-', 'Al-Takhassusi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jolee', 'Di Gregorio', null, 'M', '1992-10-14', 'A+', 'Olaya Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Nikolaos', 'Caddie', null, 'F', '1990-05-17', 'A-', 'Olaya Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jeremie', 'McAster', null, 'M', null, 'AB-', 'Al-Rayan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jeremie', 'Gorler', 'jgorlergm@pbs.org', 'F', '2009-01-28', 'O+', 'Al-Cordoba Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Merrielle', 'Colum', 'mcolumgn@purevolume.com', 'M', '2003-06-10', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Dulcinea', 'Ellick', null, 'F', null, 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Valentine', 'Daveridge', 'vdaveridgegp@cdbaby.com', 'M', '2008-06-15', 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ferguson', 'MacSkeaghan', null, 'F', null, 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Basil', 'Charrett', null, 'M', '2016-08-16', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Bud', 'Thunders', null, 'F', '1986-01-06', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Meredeth', 'Mossop', null, 'F', null, null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Elston', 'Philpot', null, 'M', null, 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kim', 'Dearn', null, 'M', '2006-10-13', 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kimberlee', 'Beaby', null, 'F', '2016-01-25', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Wittie', 'Bottleson', null, 'F', '1978-11-29', 'A+', 'Al-Maather Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Callie', 'Spilsburie', null, 'F', '1994-10-04', 'AB+', 'Al-Narjis Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Tina', 'Ferneley', null, 'M', '1996-07-19', 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Avery', 'Gallehawk', 'agallehawkh0@4shared.com', 'F', '1992-01-29', 'O+', 'Al-Ghadir Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Tabby', 'Gourlay', null, 'F', null, 'O-', 'Al-Rayan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Boy', 'Goodridge', null, 'M', '1980-12-27', 'AB+', 'Al-Wadi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Beverlee', 'Brydon', null, 'M', null, 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Charyl', 'Beadman', null, 'M', '2019-09-08', 'AB+', 'Al-Falah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Stanly', 'Labon', 'slabonh5@ftc.gov', 'M', '1972-10-22', 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Del', 'Iban', null, 'M', null, 'A-', 'Al-Aziziyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Laurianne', 'Greenland', 'lgreenlandh7@wsj.com', 'M', null, 'B+', 'Al-Falah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Finley', 'Mumford', 'fmumfordh8@angelfire.com', 'M', null, 'AB+', 'Al-Sulaimaniyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Otes', 'Botterell', null, 'F', '2016-02-08', null, 'Al-Cordoba Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Cristionna', 'Dubois', null, 'F', '2007-08-20', 'AB-', 'Al-Qairawan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Perl', 'Haggith', null, 'M', '1982-02-05', 'O+', 'Al-Rayan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Elsbeth', 'Banting', 'ebantinghc@nih.gov', 'F', '1972-10-16', 'B+', 'Al-Narjis Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Karlotte', 'Slott', null, 'F', null, null, 'Al-Mansouriyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Cosmo', 'Permain', 'cpermainhe@so-net.ne.jp', 'F', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kienan', 'Bowller', 'kbowllerhf@rambler.ru', 'F', '1972-06-14', 'O+', 'Al-Qairawan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Bent', 'Graddon', null, 'F', null, 'AB-', 'Al-Qairawan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Johnath', 'Falk', null, 'M', null, 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Addie', 'Crummay', null, 'M', '1989-02-23', 'A+', 'Al-Mansouriyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Harcourt', 'Snugg', null, 'M', null, 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Grete', 'Shadfourth', null, 'M', null, 'A+', 'Al-Rawdah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Gordon', 'Bevir', null, 'F', null, 'A-', 'Al-Shifa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sinclair', 'Picardo', null, 'M', '1979-01-03', 'O-', 'Al-Izdihar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sara-ann', 'March', 'smarchhn@zimbio.com', 'F', null, 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Leia', 'Kelshaw', 'lkelshawho@adobe.com', 'M', null, 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Darcy', 'Deabill', 'ddeabillhp@unc.edu', 'M', null, 'O-', 'Al-Malqa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ranique', 'Podd', null, 'F', '2011-08-12', 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Vivianna', 'Delmage', null, 'F', '2005-04-07', 'O-', 'Al-Khuzama Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ilaire', 'Dearle-Palser', null, 'M', '2006-08-19', 'A+', 'Al-Maather Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Dan', 'Romanini', null, 'F', '1996-01-04', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Constantia', 'Shawe', 'cshawehu@mayoclinic.com', 'F', null, 'B+', 'Al-Nuzha Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Thornton', 'Crayden', null, 'M', '1991-11-25', null, 'Al-Maather Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Davina', 'Deuss', null, 'M', '2010-05-08', 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Pacorro', 'La Rosa', null, 'M', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Iorgo', 'Parades', null, 'F', '2012-07-20', 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Baxter', 'Lowcock', null, 'F', '1985-08-16', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Homere', 'Galpin', 'hgalpini0@free.fr', 'F', '1975-01-24', 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Helen-elizabeth', 'Siene', 'hsienei1@mlb.com', 'F', null, 'O+', 'Al-Hamra Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Liza', 'Beaford', null, 'M', null, 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Patrice', 'De Ruel', null, 'M', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Leanora', 'Marguerite', null, 'F', '2000-04-23', 'AB-', 'Al-Qairawan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Isadore', 'Swanton', 'iswantoni5@loc.gov', 'M', null, 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Leena', 'Stonbridge', null, 'F', null, 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Essy', 'Alleyne', null, 'F', '2012-04-18', null, 'Al-Muroof Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Markus', 'Edel', null, 'M', '2006-12-14', 'AB+', 'Al-Khuzama Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jeana', 'Grigoroni', null, 'F', null, 'A-', 'Al-Ghadir Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Cayla', 'Brandsma', null, 'F', '2011-04-30', 'B+', 'Al-Sulaimaniyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Othello', 'Bultitude', null, 'M', '1983-10-07', 'O+', 'Al-Rayan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Page', 'Pickance', 'ppickanceic@fotki.com', 'M', null, 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Brandise', 'Rotchell', null, 'F', null, 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kimbra', 'Bertrand', 'kbertrandie@i2i.jp', 'M', null, 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kittie', 'Cubbon', null, 'M', '1971-04-08', null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lalo', 'Pau', 'lpauig@infoseek.co.jp', 'M', null, 'O+', 'Al-Malqa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Maybelle', 'Leyban', null, 'M', '2018-09-20', 'B-', 'Al-Nafal Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Fianna', 'MacRury', null, 'M', '1976-12-19', 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Adolpho', 'McGinlay', null, 'F', '1992-06-22', 'O-', 'Al-Nuzha Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Armando', 'Malthouse', null, 'F', null, 'AB-', 'Al-Wadi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Tiffie', 'Landis', null, 'M', null, 'A+', 'Al-Maather Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Joelynn', 'Poynton', null, 'F', '2005-07-31', 'AB+', 'Al-Sahafa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Anne-corinne', 'Eggleson', null, 'M', '2015-11-07', 'AB-', 'Al-Mursalat Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kristel', 'Dear', null, 'M', '1998-09-16', 'B+', 'Al-Falah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kalvin', 'Stanmer', null, 'M', '2011-01-04', 'A-', 'Al-Rawdah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Halsey', 'Shailer', null, 'F', '2016-12-09', 'B+', 'Al-Manar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Julie', 'Appleby', 'japplebyir@google.de', 'M', '2009-07-11', 'O+', 'Al-Sulaimaniyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Angelika', 'Berston', null, 'M', '1974-04-09', 'AB-', 'Al-Suwaidi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Matilde', 'Blanch', 'mblanchit@bbb.org', 'F', null, 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Zsa zsa', 'Ranscome', null, 'M', '1970-11-13', 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Odell', 'Houliston', 'ohoulistoniv@eventbrite.com', 'M', '1984-10-31', 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Tabitha', 'Babonau', null, 'F', null, 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jasmin', 'Rawcliffe', null, 'F', '1996-07-31', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Tildy', 'Insworth', null, 'M', null, 'O-', 'Al-Hada Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Leanna', 'Claydon', null, 'M', '1986-10-21', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Odille', 'Zanazzi', null, 'F', '1988-09-16', 'AB-', 'Al-Cordoba Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Gretel', 'Fenney', null, 'M', '1972-12-04', 'A-', 'Al-Takhassusi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ethe', 'Tschersich', null, 'M', null, 'O-', 'Al-Suwaidi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Keven', 'Arch', null, 'F', null, 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Bobby', 'Laroux', 'blarouxj4@apache.org', 'F', '1971-11-03', 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Aileen', 'Hurt', 'ahurtj5@comcast.net', 'F', null, 'B-', 'Al-Muhammadiyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Zulema', 'Conradsen', null, 'F', '2006-08-17', 'AB-', 'Al-Mughrizat Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Bambie', 'Collick', null, 'F', '1999-07-13', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kasper', 'Goldstein', null, 'F', '1983-04-30', 'AB+', 'Al-Hada Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Stephenie', 'Mizzen', null, 'F', '1987-03-20', 'B+', 'Al-Ghadir Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Marcille', 'Wallett', 'mwallettja@vistaprint.com', 'F', null, 'O+', 'Al-Izdihar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Edlin', 'Doberer', null, 'F', null, null, 'Al-Manar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kelley', 'Boame', null, 'F', '2009-07-09', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Karrah', 'McMahon', null, 'F', null, 'B-', 'Al-Ghadir Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Denys', 'Cohani', null, 'F', '2007-04-15', 'B-', 'Al-Nuzha Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Margarete', 'Thacker', null, 'F', null, 'A+', 'Al-Izdihar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jeremiah', 'Dunne', null, 'F', '1974-04-28', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Misha', 'Riddall', null, 'F', null, 'AB-', 'Al-Khuzama Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Adora', 'Nannini', null, 'F', '2003-04-21', 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Chrysler', 'Stanlick', null, 'F', null, 'AB-', 'Al-Muhammadiyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Josepha', 'Fennessy', null, 'F', '2019-04-13', 'AB+', 'Al-Aziziyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Orel', 'Peat', null, 'F', null, 'AB-', 'Al-Hamra Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Marcia', 'Bright', 'mbrightjm@blogtalkradio.com', 'M', null, 'A+', 'Al-Aqiq Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Silvanus', 'Cappleman', 'scapplemanjn@ft.com', 'M', '1994-07-01', 'A+', 'Al-Qairawan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ollie', 'Cohrs', null, 'F', '2002-12-05', 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jerrilyn', 'Whitford', 'jwhitfordjp@mayoclinic.com', 'F', '2009-05-25', 'A-', 'Al-Yasmin Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Foss', 'Gilhespy', 'fgilhespyjq@bbb.org', 'M', '2009-07-10', 'A-', 'Al-Ghadir Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Matilda', 'Coytes', null, 'M', '2011-05-17', null, 'Al-Mursalat Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kerwin', 'Lehrmann', 'klehrmannjs@sfgate.com', 'M', null, 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Baxie', 'Sorbie', null, 'M', '1972-09-03', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Elianora', 'Iacovolo', null, 'F', '1984-07-17', 'A-', 'Al-Sahafa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Audy', 'Joderli', null, 'M', null, 'O-', 'Al-Malqa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Aluino', 'Trinder', 'atrinderjw@icio.us', 'F', '2007-06-16', 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kathryne', 'Worlock', null, 'F', '2000-05-09', 'AB+', 'Al-Hamra Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Gregoor', 'Zealander', null, 'F', '1982-03-03', 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Rose', 'Bedome', null, 'M', null, 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Karry', 'Hunton', null, 'M', null, 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Fransisco', 'Caplen', null, 'M', null, 'O-', 'Al-Hada Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Oliver', 'Meth', null, 'M', '2015-07-23', 'O+', 'Al-Maather Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Agnese', 'Flavelle', null, 'F', '2018-01-02', 'B-', 'Al-Wurood Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Todd', 'Laxton', 'tlaxtonk4@fastcompany.com', 'M', '1982-01-20', 'AB+', 'Al-Mansouriyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Carly', 'Lailey', null, 'M', null, 'B-', 'Olaya Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Elmira', 'Loges', null, 'M', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Hyman', 'Alennikov', null, 'F', '1996-02-23', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Robinson', 'Paule', null, 'M', '1997-07-09', 'AB-', 'Olaya Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ebonee', 'Estabrook', 'eestabrookk9@marketwatch.com', 'M', '1976-04-03', 'B+', 'Al-Hamra Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jeniece', 'Yorston', 'jyorstonka@ehow.com', 'F', '2007-04-10', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Maritsa', 'Jeppensen', null, 'F', '1988-08-06', 'A-', 'Al-Qairawan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Nikki', 'Huntingdon', null, 'M', '1972-05-02', 'B+', 'Al-Takhassusi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Car', 'Keyworth', null, 'F', '2003-05-18', null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Gale', 'Scough', null, 'M', '1984-01-21', 'A+', 'Al-Qairawan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Carlee', 'Bubbings', 'cbubbingskf@lulu.com', 'M', '2004-11-16', 'O+', 'Al-Maather Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Halley', 'Phipps', null, 'F', '1996-10-18', 'B+', 'Al-Rayan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Gar', 'Estoile', 'gestoilekh@google.nl', 'M', '1986-09-05', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Maximo', 'Tavinor', 'mtavinorki@japanpost.jp', 'M', null, 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Wendel', 'Blucher', null, 'F', '1986-04-16', null, 'Al-Yasmin Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Giorgio', 'Overland', null, 'F', '2013-03-02', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Loy', 'Johnes', null, 'M', null, 'AB+', 'Al-Hamra Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Aretha', 'Isbell', null, 'F', '2007-09-20', 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Datha', 'Earpe', 'dearpekn@mac.com', 'F', null, 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Magda', 'Storah', 'mstorahko@weebly.com', 'M', null, 'B-', 'Al-Rawdah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Abelard', 'Gregor', null, 'M', null, 'B+', 'Al-Mansouriyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Julianna', 'Limb', null, 'F', '1973-09-19', 'B-', 'Al-Mughrizat Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Danni', 'Sonner', 'dsonnerkr@reuters.com', 'M', '2005-05-22', 'O+', 'Al-Khuzama Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Tore', 'Gritsaev', null, 'F', null, 'O+', 'Al-Sahafa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Martita', 'Cajkler', null, 'M', null, 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Umberto', 'Hennington', 'uhenningtonku@nyu.edu', 'M', '1973-10-10', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Wynn', 'Pethick', null, 'M', '2001-03-28', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Starlin', 'Robinett', null, 'F', '1982-08-27', 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Nevile', 'Duffie', 'nduffiekx@tamu.edu', 'M', null, 'B+', 'Al-Rawdah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Cristina', 'Rosenau', 'crosenauky@biblegateway.com', 'M', '1977-07-04', null, 'Al-Wadi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lu', 'Gerin', null, 'M', null, 'O+', 'Al-Narjis Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jenda', 'Mayward', 'jmaywardl0@storify.com', 'F', null, 'AB-', 'Al-Cordoba Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Gretna', 'Clucas', null, 'F', '2002-01-12', 'B+', 'Al-Sulaimaniyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Allene', 'Mathiassen', null, 'M', '2014-05-25', 'A+', 'Al-Maather Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Vivia', 'Pearcy', null, 'F', '1987-05-31', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Saudra', 'Attenburrow', null, 'M', '1975-12-01', 'O-', 'Al-Mughrizat Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Siobhan', 'Sherrington', null, 'F', '1973-05-08', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Waneta', 'Monan', null, 'M', '1983-06-17', 'B+', 'Al-Sulaimaniyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Loy', 'O''Cridigan', null, 'F', '2007-01-27', 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Margi', 'Mathews', 'mmathewsl8@behance.net', 'F', '2018-02-12', 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kinny', 'Bamber', null, 'M', null, 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Andrea', 'Wardale', null, 'M', null, 'A-', 'Al-Shifa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Cristionna', 'Mundford', null, 'F', '2005-01-26', 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Phillipp', 'Pink', 'ppinklc@soup.io', 'M', '1978-11-04', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jannel', 'Phebee', null, 'M', null, 'O-', 'Al-Aziziyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Loutitia', 'Huntar', null, 'F', '1973-10-08', 'B-', 'Al-Mughrizat Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Leta', 'Fortune', null, 'F', '1976-10-12', 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Berna', 'Stilling', null, 'M', '1995-04-01', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Adolphe', 'Kubalek', null, 'M', '2016-04-16', null, 'Al-Wadi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Marcelline', 'Hewlings', 'mhewlingsli@free.fr', 'M', '1981-12-05', null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Evangeline', 'MacTague', 'emactaguelj@fda.gov', 'F', '2005-12-08', 'AB-', 'Al-Muhammadiyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kurtis', 'Brister', null, 'F', '1990-11-24', 'O-', 'Al-Mughrizat Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Goldia', 'Gocke', null, 'M', null, 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Blake', 'Pays', null, 'M', '1982-07-01', 'A-', 'Al-Sahafa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Billie', 'O''Kielt', 'bokieltln@un.org', 'M', null, 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Benedetta', 'Boldison', null, 'F', null, 'B+', 'Al-Suwaidi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Travus', 'Shilvock', null, 'M', null, 'B+', 'Al-Mughrizat Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lulita', 'Rollin', null, 'M', '2011-04-01', null, 'Al-Hamra Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sheila', 'Munson', null, 'F', null, 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Anthiathia', 'Gemmell', null, 'F', '1981-05-11', 'A+', 'Al-Nuzha Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Aida', 'De Ortega', 'adeortegalt@last.fm', 'M', '2015-08-11', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Geoffrey', 'MacDermid', null, 'M', '1978-04-03', 'A+', 'Al-Sahafa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Renato', 'Cocking', 'rcockinglv@utexas.edu', 'F', '1995-12-04', 'O+', 'Al-Manar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Nester', 'Mishaw', 'nmishawlw@google.fr', 'M', '2000-02-25', 'AB-', 'Al-Aqiq Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Farah', 'Manuely', null, 'M', null, 'A-', 'Al-Yasmin Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Mariejeanne', 'Aldersea', null, 'F', null, 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Nana', 'Bolam', null, 'F', null, 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Phyllis', 'Casarili', null, 'F', '1972-03-14', 'O+', 'Al-Cordoba Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jaquith', 'Thrasher', null, 'F', '2008-02-01', 'AB-', 'Al-Wadi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Haskel', 'Reaper', null, 'M', '2003-07-28', 'AB+', 'Al-Hamra Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Beltran', 'Gipp', null, 'F', '1974-09-07', 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Silva', 'Morbey', 'smorbeym4@fotki.com', 'F', null, null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sigismondo', 'Offell', 'soffellm5@discuz.net', 'F', null, 'AB+', 'Al-Shifa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Clo', 'Jerzycowski', null, 'F', '2020-03-20', 'B-', 'Al-Muroof Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Darb', 'Heatherington', null, 'F', null, 'B+', 'Al-Nafal Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sam', 'Jacobi', null, 'F', null, 'A-', 'Al-Muhammadiyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Modesta', 'Harrell', null, 'M', '1984-05-06', 'O-', 'Al-Rawdah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Celestine', 'Haye', null, 'F', '2003-04-12', 'B-', 'Al-Suwaidi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Saunder', 'Monro', 'smonromb@answers.com', 'M', '1984-01-06', 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Les', 'Hadleigh', 'lhadleighmc@livejournal.com', 'M', '2014-11-08', 'B-', 'Al-Mansouriyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jayme', 'Olivella', 'jolivellamd@bigcartel.com', 'F', null, 'O+', 'Al-Mursalat Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Dulcy', 'Rumford', null, 'M', '2000-08-03', 'A-', 'Al-Wurood Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Perice', 'Collinwood', 'pcollinwoodmf@wiley.com', 'M', '2011-03-30', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Therese', 'Myner', null, 'M', null, 'B+', 'Al-Aqiq Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Harold', 'McIvor', 'hmcivormh@sphinn.com', 'F', '2005-02-06', null, 'Al-Wadi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Meryl', 'Perrygo', null, 'M', '2017-07-22', 'AB-', 'Al-Ghadir Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Mischa', 'Rizzello', null, 'M', '2003-08-07', 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Urbano', 'Gallichiccio', null, 'F', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Stirling', 'Andric', null, 'F', '2009-06-07', 'O+', 'Al-Suwaidi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jammie', 'Mitchard', null, 'M', '1976-09-26', 'AB-', 'Al-Khuzama Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Cale', 'Itzchaki', 'citzchakimn@meetup.com', 'M', '1971-10-14', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ximenez', 'Eldridge', 'xeldridgemo@ucoz.ru', 'F', '2006-08-24', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Fee', 'Slatcher', null, 'F', '1976-08-02', 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Maribeth', 'Spieght', null, 'M', null, 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kipp', 'Gaitskill', null, 'F', '2020-04-03', 'B-', 'Al-Khuzama Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sadie', 'Kirtlan', null, 'F', null, null, 'Al-Narjis Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Meridith', 'Scotland', 'mscotlandmt@noaa.gov', 'M', '1997-07-25', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Freddie', 'Kelberer', 'fkelberermu@msn.com', 'F', '2000-02-06', 'A-', 'Al-Izdihar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Neill', 'Gisborne', null, 'M', null, 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sal', 'Wadforth', null, 'M', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Melessa', 'Mackness', null, 'M', '1974-02-05', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Garv', 'Geldeard', null, 'M', '1974-11-27', 'A+', 'Al-Khuzama Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Johnny', 'Sheldon', null, 'F', '2013-06-01', 'O+', 'Al-Qairawan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Tandi', 'Ivankov', null, 'M', null, 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Persis', 'Spackman', null, 'F', '2016-02-12', 'O+', 'Al-Suwaidi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Gail', 'Raoux', null, 'M', '2009-03-23', 'AB+', 'Al-Maather Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Bowie', 'Renehan', 'brenehann3@ft.com', 'M', '2017-08-31', 'AB-', 'Al-Izdihar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Valdemar', 'Perett', null, 'M', '2008-10-22', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Helyn', 'Annetts', null, 'M', '1996-03-31', 'AB+', 'Al-Khuzama Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Corena', 'Wagge', null, 'M', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Adolf', 'Rainy', 'arainyn7@squarespace.com', 'M', '2001-09-13', 'A-', 'Al-Hada Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Licha', 'Searchfield', null, 'F', '1994-12-13', 'A-', 'Al-Mansouriyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Yvon', 'Alexsandrev', null, 'F', '2000-06-13', 'A-', 'Al-Nuzha Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Gabie', 'Gallaway', null, 'M', null, 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Inigo', 'Deer', null, 'F', '2019-03-21', 'B+', 'Al-Wurood Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Paten', 'Ferbrache', null, 'F', null, 'B+', 'Al-Nuzha Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Colin', 'Shelsher', 'cshelshernd@wp.com', 'M', '1989-06-13', 'A-', 'Al-Mursalat Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Christian', 'Maddams', 'cmaddamsne@mtv.com', 'F', null, 'O-', 'Al-Khuzama Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Nils', 'Hutley', null, 'F', null, null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Esme', 'Flisher', null, 'M', null, 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Silvano', 'Kubek', 'skubeknh@npr.org', 'M', '2017-12-20', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Camille', 'O''Dogherty', null, 'F', '2000-04-03', 'AB-', 'Al-Takhassusi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Pepi', 'Witling', null, 'F', null, 'B+', 'Al-Cordoba Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Purcell', 'Buglass', null, 'F', '1982-09-18', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Janice', 'Hamsley', 'jhamsleynl@nymag.com', 'M', '2006-06-23', 'B-', 'Olaya Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Yehudit', 'Youde', null, 'F', null, 'AB-', 'Al-Rayan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Nerita', 'Garretson', null, 'M', null, 'O-', 'Al-Manar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sheri', 'Corneck', null, 'F', null, null, 'Al-Ghadir Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Theressa', 'McNiven', null, 'F', '1999-10-19', 'B+', 'Al-Ghadir Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Pia', 'Nottingham', 'pnottinghamnq@jalbum.net', 'F', null, 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jarvis', 'Lintill', null, 'F', '2018-01-25', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sheridan', 'Shales', 'sshalesns@jigsy.com', 'F', '1997-05-05', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Bryna', 'Tomkins', 'btomkinsnt@slideshare.net', 'F', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kennedy', 'Ainge', null, 'M', null, 'AB-', 'Al-Falah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Xever', 'Piff', null, 'M', null, 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Deina', 'Ashford', null, 'F', '1986-08-09', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Roxine', 'Thomson', null, 'M', '1981-08-15', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sal', 'Greenshields', null, 'M', null, 'A-', 'Olaya Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jedidiah', 'Chevolleau', null, 'F', '2011-11-14', 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Bail', 'Hows', 'bhowso0@springer.com', 'F', '2014-06-08', 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Roda', 'Linton', null, 'F', null, 'AB-', 'Al-Muroof Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jacintha', 'Stiell', null, 'F', null, 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Linoel', 'Bleby', 'lblebyo3@eepurl.com', 'M', null, null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Benedicta', 'Reagan', null, 'M', null, 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Cristin', 'Wilding', null, 'F', '2002-09-01', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sheilakathryn', 'Wixon', null, 'M', '2005-04-24', 'A+', 'Al-Qairawan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Pebrook', 'MacKay', null, 'F', '2007-07-30', 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Brent', 'Steinhammer', 'bsteinhammero8@senate.gov', 'M', '2002-01-17', 'A+', 'Olaya Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Moyna', 'Tolomelli', null, 'M', null, 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Elle', 'Soans', 'esoansoa@deviantart.com', 'M', null, 'B-', 'Al-Rawdah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Wanids', 'Sowthcote', 'wsowthcoteob@desdev.cn', 'M', null, 'O-', 'Al-Nafal Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Gram', 'Neem', null, 'M', '1983-01-02', 'O+', 'Al-Sahafa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ealasaid', 'Braithwaite', null, 'M', '2018-07-07', 'O+', 'Al-Nuzha Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Golda', 'Philipeau', null, 'M', '1983-01-28', null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Tatiania', 'Preble', 'tprebleof@wikimedia.org', 'M', '2009-12-12', 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Clementina', 'Sebrook', null, 'F', null, null, 'Al-Maather Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Mace', 'Keatley', null, 'M', '1994-06-14', 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Nadia', 'Ughetti', null, 'M', null, 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Florie', 'Yele', null, 'M', '2008-08-30', null, 'Al-Sahafa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Fairlie', 'Ropert', null, 'F', '2009-03-12', 'B+', 'Al-Ghadir Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Rosamund', 'MacRannell', 'rmacrannellol@berkeley.edu', 'F', '1999-08-26', 'B+', 'Al-Aqiq Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Bryna', 'Goodinson', null, 'M', '1991-09-10', null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Kinna', 'Pople', null, 'F', '2000-05-20', 'B+', 'Al-Sahafa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Bernelle', 'Friel', null, 'M', '2013-03-26', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Enos', 'Ort', null, 'F', '2015-07-24', 'B-', 'Al-Hada Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Janeczka', 'Pittoli', 'jpittolioq@opensource.org', 'F', '1988-05-09', 'AB-', 'Al-Hada Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Danila', 'Barense', 'dbarenseor@ycombinator.com', 'M', null, 'AB+', 'Al-Rawdah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Georgianna', 'Oloman', null, 'M', null, 'AB+', 'Al-Aqiq Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Tiertza', 'Fogg', null, 'F', null, 'B+', 'Al-Nuzha Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Erik', 'Opie', 'eopieou@sbwire.com', 'M', '2016-09-19', 'O+', 'Al-Malqa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Verney', 'Bevans', null, 'F', '2003-05-03', null, 'Al-Suwaidi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Hoebart', 'Bagott', null, 'M', null, 'O-', 'Al-Muhammadiyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Tyler', 'Melia', 'tmeliaox@admin.ch', 'M', '1978-08-10', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Christoforo', 'Bartles', null, 'F', null, 'AB-', 'Al-Sulaimaniyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Malva', 'Byk', null, 'F', '1975-05-27', 'AB-', 'Al-Qairawan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Valaree', 'Merman', 'vmermanp0@nbcnews.com', 'M', '1982-12-19', 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Tobye', 'Elwyn', null, 'F', null, 'A+', 'Al-Qairawan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Georgi', 'Leggen', null, 'F', '1990-12-04', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Oliviero', 'O''Donohue', 'oodonohuep3@ox.ac.uk', 'F', null, 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Winnie', 'Pittendreigh', null, 'F', '2012-12-08', 'B+', 'Al-Aqiq Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Elmo', 'Martynov', null, 'M', '1973-09-15', 'AB+', 'Olaya Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Haroun', 'Horick', null, 'M', '1974-07-24', null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Parrnell', 'Jerrard', null, 'F', '1987-06-07', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Andrea', 'Rosengarten', null, 'F', '1995-03-09', 'AB+', 'Al-Yasmin Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Olivette', 'Fulep', 'ofulepp9@usda.gov', 'M', '2000-09-22', 'A-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Alvira', 'Degoy', null, 'M', '1992-03-12', 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Florida', 'Shankster', null, 'F', null, null, 'Al-Takhassusi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Nikolai', 'Notman', null, 'F', '1988-10-07', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Nicolea', 'Bond', null, 'M', '2010-11-20', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lauren', 'Duberry', 'lduberrype@ustream.tv', 'M', '1971-01-31', 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Felike', 'Blasgen', 'fblasgenpf@ftc.gov', 'F', null, 'AB-', 'Al-Aqiq Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sara', 'Birdwhistle', null, 'M', '2012-10-05', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Rae', 'Enevoldsen', 'renevoldsenph@com.com', 'F', '1976-11-16', 'A-', 'Al-Khuzama Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Latrena', 'Callington', null, 'F', '2004-02-27', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Carlin', 'Lorie', null, 'F', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Gisele', 'Neate', null, 'F', '2004-01-08', null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Chuck', 'St. Aubyn', null, 'M', '1985-04-30', 'O-', 'Al-Takhassusi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ingram', 'Bowcock', null, 'M', null, 'O+', 'Al-Suwaidi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Opaline', 'Aust', null, 'F', '2015-07-11', 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Laraine', 'Bailess', 'lbailesspo@dagondesign.com', 'M', null, null, 'Al-Mursalat Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Chet', 'Lestor', null, 'F', null, 'A-', 'Al-Wadi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sharleen', 'Albarez', null, 'M', '2015-10-18', 'O-', 'Al-Mursalat Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Marcela', 'Witheford', null, 'M', null, 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Parrnell', 'Tavinor', null, 'F', '1986-05-13', 'B-', 'Al-Manar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Thurstan', 'Disdel', 'tdisdelpt@joomla.org', 'M', null, 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Adria', 'Brookwood', null, 'F', null, null, null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Rebekkah', 'Habbergham', 'rhabberghampv@ask.com', 'F', '2016-12-25', 'B+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sandye', 'Lockney', null, 'M', '2006-01-14', 'B+', 'Al-Izdihar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Norine', 'Josselsohn', null, 'F', null, 'A+', 'Al-Aziziyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Adamo', 'Hathway', 'ahathwaypy@pcworld.com', 'F', null, 'O+', 'Al-Aqiq Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Martyn', 'Josifovitz', 'mjosifovitzpz@sohu.com', 'F', '1979-04-14', 'A-', 'Al-Rawdah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Randell', 'Rollings', 'rrollingsq0@oracle.com', 'M', '2001-07-10', 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lyssa', 'Szymonwicz', null, 'F', '1995-10-06', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Maxy', 'Stammler', null, 'M', '1986-02-25', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Albert', 'Windows', null, 'M', '1983-04-23', 'AB+', 'Al-Manar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Chaddie', 'Reveley', null, 'M', null, 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Rhianna', 'Langeley', null, 'F', '2001-08-31', 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sheila', 'Matuszak', 'smatuszakq6@mapy.cz', 'M', '2003-07-17', 'AB-', 'Al-Rayan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Siffre', 'Strong', null, 'F', null, 'A-', 'Al-Manar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Sharleen', 'Goaks', null, 'M', '2004-10-07', 'AB+', 'Al-Rawdah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lee', 'Fairbank', null, 'M', '1989-12-25', 'AB+', 'Al-Suwaidi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Say', 'Rapps', null, 'M', '1994-04-09', 'O+', 'Al-Manar Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lars', 'Coward', null, 'M', null, 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Fredek', 'Scawn', null, 'F', null, 'O+', 'Al-Sahafa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Erastus', 'Lartice', null, 'F', null, 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Drugi', 'Sansom', null, 'F', '2015-02-10', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Colleen', 'McLaughlin', null, 'M', '2018-05-24', 'O+', 'Al-Shifa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Bird', 'Shorten', null, 'M', null, 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lenna', 'Mordin', null, 'M', '1989-05-20', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Orton', 'McIlvaney', null, 'M', null, 'AB+', 'Al-Cordoba Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Millicent', 'Bleasby', null, 'F', '1983-10-29', null, 'Al-Rayan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Gert', 'Huddles', 'ghuddlesqk@dyndns.org', 'F', null, 'A-', 'Al-Takhassusi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Bruno', 'Sleeny', null, 'M', '2009-04-17', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Fifi', 'Stickels', null, 'F', '1990-06-14', 'AB+', 'Al-Rayan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Bryon', 'Wedon', 'bwedonqn@csmonitor.com', 'M', null, 'B-', 'Al-Wadi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Lian', 'Pietrasik', null, 'F', null, 'O+', 'Al-Maather Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Rudiger', 'Giorgi', 'rgiorgiqp@merriam-webster.com', 'M', '1989-02-03', null, 'Olaya Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Daveen', 'Gurling', 'dgurlingqq@surveymonkey.com', 'M', '1979-01-13', 'AB+', 'Al-Sahafa Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Jaquelin', 'O''Clery', 'jocleryqr@shop-pro.jp', 'M', null, 'B-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Bradford', 'Strass', null, 'M', null, 'B-', 'Al-Aqiq Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Clementine', 'Gounard', null, 'M', null, 'B+', 'Al-Khuzama Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Candis', 'Symms', null, 'F', null, 'AB+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Egor', 'Cutten', null, 'M', '1991-04-25', 'O-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Laurent', 'Clinkard', 'lclinkardqw@odnoklassniki.ru', 'M', null, 'O+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Quinton', 'Scourfield', 'qscourfieldqx@parallels.com', 'M', null, 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Bobina', 'Franseco', 'bfransecoqy@msu.edu', 'M', null, 'O-', 'Al-Rayan Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Fax', 'Cainey', 'fcaineyqz@ning.com', 'M', '2008-03-17', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Roth', 'Megarrell', null, 'M', null, 'A+', 'Al-Narjis Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Dynah', 'Tolan', null, 'F', null, 'B+', 'Al-Takhassusi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Miner', 'McShane', null, 'M', '2003-11-14', 'AB-', 'Al-Mansouriyah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Smith', 'Benoi', null, 'F', '1983-05-09', 'A+', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Ernesto', 'Aloigi', null, 'M', null, 'A-', 'Al-Falah Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Olin', 'Tryme', null, 'F', null, 'AB+', 'Al-Suwaidi Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Margette', 'Djorvic', null, 'M', '1979-12-31', 'B-', 'Al-Khuzama Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Estella', 'Haggarty', null, 'F', '1992-01-10', 'B+', 'Al-Khuzama Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Maxim', 'Bilbrey', 'mbilbreyr8@cargocollective.com', 'F', '1984-06-17', 'AB-', null);
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Abigael', 'Mawtus', null, 'M', '2010-01-26', 'A+', 'Al-Wurood Riyadh');
insert into Patients (firstname, lastname, email, gender, DateOfBirth, BloodType, homeaddress) values ('Carey', 'Cheatle', null, 'F', '2017-10-21', 'AB+', null);



USE Hospital_Management_SystemDB;
GO

INSERT INTO Nurses (FirstName, LastName, Shift, HireDate, MSalary, Gender, Email, HomeAddress, Phone, DepartmentID)
VALUES 
(N'Ahmed', N'Al-Ali', 'Morning', '2018-03-15', 8500.00, N'M', N'a.ali@hms.com', N'Al-Malaz, Riyadh', '0501234567', 1),
(N'Fatima', N'Al-Otaibi', 'Evening', '2019-07-22', 9000.00, N'F', NULL, N'Olaya, Riyadh', '0502345678', 1),
(N'Khalid', N'Al-Zahrani', 'Night', '2021-01-10', 9500.00, N'M', N'k.zahrani@hms.com', NULL, '0503456789', 1),
(N'Sarah', N'Al-Dosari', 'Morning', '2017-11-05', 8800.00, N'F', N's.dosari@hms.com', N'Al-Rawdah, Riyadh', '0504567890', 2),
(N'Mona', N'Al-Harbi', 'Evening', '2020-05-19', 8300.00, N'F', NULL, NULL, '0505678901', 2),
(N'Fahad', N'Al-Qahtani', 'Night', '2016-08-14', 10000.00, N'M', N'f.qahtani@hms.com', N'Al-Shifa, Riyadh', '0506789012', 3),
(N'Reem', N'Al-Subaie', 'Morning', '2022-02-01', 7800.00, N'F', NULL, N'Al-Suwaidi, Riyadh', '0507890123', 3),
(N'Ali', N'Al-Mutairi', 'Evening', '2019-12-25', 9200.00, N'M', N'a.mutairi@hms.com', NULL, '0508901234', 3),
(N'Noura', N'Al-Anazi', 'Night', '2021-06-30', 9600.00, N'F', NULL, N'Al-Aziziyah, Riyadh', '0509012345', 3),

(N'Sultan', N'Al-Shehri', 'Morning', '2015-04-12', 11000.00, N'M', N's.shehri@hms.com', N'Al-Ghadir, Riyadh', '0531234567', 4),
(N'Amal', N'Al-Mousa', 'Evening', '2018-09-01', 8700.00, N'F', NULL, N'Al-Murooj, Riyadh', '0532345678', 4),
(N'Bandar', N'Al-Rashed', 'Night', '2020-10-15', 9400.00, N'M', N'b.rashed@hms.com', NULL, '0533456789', 5),
(N'Hessa', N'Al-Kadi', 'Morning', '2017-03-22', 8900.00, N'F', N'h.kadi@hms.com', N'Al-Yasmin, Riyadh', '0534567890', 5),
(N'Ibrahim', N'Al-Ghamdi', 'Evening', '2019-01-11', 8500.00, N'M', NULL, NULL, '0535678901', 6),
(N'Laila', N'Al-Hassan', 'Night', '2022-07-14', 8000.00, N'F', N'l.hassan@hms.com', N'Al-Narjis, Riyadh', '0536789012', 6),
(N'Saud', N'Al-Saeed', 'Morning', '2016-11-20', 10200.00, N'M', NULL, N'Al-Falah, Riyadh', '0537890123', 6),

(N'Youssef', N'Al-Marri', 'Evening', '2021-03-10', 8400.00, N'M', N'y.marri@hms.com', NULL, '0538901234', 7),
(N'Arwa', N'Al-Amri', 'Night', '2018-06-18', 9100.00, N'F', NULL, N'Al-Cordoba, Riyadh', '0539012345', 7),
(N'Ziyad', N'Al-Zamil', 'Morning', '2014-12-05', 12000.00, N'M', N'z.zamil@hms.com', N'Al-Maather, Riyadh', '0551234567', 8),
(N'Rania', N'Al-Bishi', 'Evening', '2019-02-28', 9300.00, N'F', NULL, N'Al-Sahafa, Riyadh', '0552345678', 8),
(N'Bader', N'Al-Saif', 'Night', '2020-08-24', 9700.00, N'M', N'b.saif@hms.com', NULL, '0553456789', 8),
(N'Abeer', N'Al-Faisal', 'Morning', '2016-05-14', 9900.00, N'F', NULL, N'Al-Aqiq, Riyadh', '0554567890', 9),
(N'Hanadi', N'Al-Thani', 'Evening', '2018-10-01', 8800.00, N'F', N'h.thani@hms.com', NULL, '0555678901', 9),
(N'Yazeed', N'Al-Zaid', 'Night', '2021-11-11', 8200.00, N'M', NULL, N'Al-Malqa, Riyadh', '0556789012', 10),
(N'Nouf', N'Al-Mansour', 'Morning', '2017-04-19', 9100.00, N'F', N'n.mansour@hms.com', N'Al-Hada, Riyadh', '0557890123', 10),

(N'Majed', N'Al-Harthi', 'Evening', '2020-01-15', 8600.00, N'M', NULL, NULL, '0558901234', 3),
(N'Amani', N'Al-Mutlaq', 'Night', '2019-05-20', 9500.00, N'F', N'a.mutlaq@hms.com', N'Al-Nakheel, Riyadh', '0559012345', 3),
(N'Reema', N'Al-Abdullah', 'Morning', '2022-09-05', 7900.00, N'F', NULL, NULL, '0541234567', 8),
(N'Adnan', N'Al-Turki', 'Evening', '2015-07-12', 10800.00, N'M', N'a.turki@hms.com', N'Al-Rawdah, Riyadh', '0542345678', 8),
(N'Fatimah', N'Al-Saeed', 'Night', '2018-12-02', 9300.00, N'F', NULL, N'Al-Izdihar, Riyadh', '0543456789', 1),
(N'Meshari', N'Al-Ajmi', 'Morning', '2021-04-01', 8400.00, N'M', N'm.ajmi@hms.com', NULL, '0544567890', 2),
(N'Hind', N'Al-Juraid', 'Evening', '2016-02-14', 9800.00, N'F', NULL, N'Al-Sahafa, Riyadh', '0545678901', 5),
(N'Nasser', N'Al-Blouwi', 'Night', '2020-03-17', 9100.00, N'M', N'n.blouwi@hms.com', NULL, '0546789012', 6),
(N'Hana', N'Al-Shareef', 'Morning', '2017-09-29', 9200.00, N'F', NULL, N'Al-Narjis, Riyadh', '0547890123', 7),
(N'Saleh', N'Al-Sudairy', 'Evening', '2019-10-15', 8700.00, N'M', N's.sudairy@hms.com', NULL, '0548901234', 4),

(N'Khlood', N'Al-Asmari', 'Night', '2022-03-14', 8100.00, N'F', NULL, N'Al-Wadi, Riyadh', '0549012345', 1),
(N'Hassan', N'Al-Ahmdari', 'Morning', '2021-06-11', 8350.00, N'M', NULL, NULL, '0561234567', 2),
(N'Waleed', N'Al-Ahmad', 'Evening', '2018-11-25', 9000.00, N'M', N'w.ahmad@hms.com', N'Al-Malaz, Riyadh', '0562345678', 3),
(N'Tariq', N'Al-Fahad', 'Night', '2015-10-05', 10500.00, N'M', NULL, N'Olaya, Riyadh', '0563456789', 3),
(N'Nadia', N'Al-Jameel', 'Morning', '2019-04-22', 8800.00, N'F', N'n.jameel@hms.com', NULL, '0564567890', 8),
(N'Saad', N'Al-Sultan', 'Evening', '2020-07-19', 8600.00, N'M', NULL, N'Al-Mursalat, Riyadh', '0565678901', 8),
(N'Sara', N'Al-Nasser', 'Night', '2017-01-30', 9600.00, N'F', N's.nasser@hms.com', N'Al-Takhassusi, Riyadh', '0566789012', 9),
(N'Faisal', N'Al-Bakr', 'Morning', '2016-12-12', 10100.00, N'M', NULL, NULL, '0567890123', 10),
(N'Rehab', N'Al-Malki', 'Evening', '2022-05-18', 7950.00, N'F', N'r.malki@hms.com', N'Al-Hizam, Riyadh', '0568901234', 10),
(N'Bandar', N'Al-Obeid', 'Night', '2014-08-20', 11200.00, N'M', NULL, N'Al-Wadi', '0569012345', 5),

(N'Khalid', N'Al-Sari', 'Morning', '2021-02-18', 8500.00, N'M', N'k.sari@hms.com', NULL, '0571234567', 1),
(N'Aisha', N'Al-Mansour', 'Evening', '2019-06-14', 9100.00, N'F', NULL, N'Al-Malqa, Riyadh', '0572345678', 2),
(N'Abdullah', N'Al-Zaid', 'Night', '2020-11-04', 8900.00, N'M', N'a.zaid@hms.com', NULL, '0573456789', 3),
(N'Maha', N'Al-Mutlaq', 'Morning', '2017-08-24', 9400.00, N'F', NULL, N'Al-Sahafa, Riyadh', '0574567890', 4),
(N'Sami', N'Al-Omari', 'Evening', '2015-03-17', 10600.00, N'M', N's.omari@hms.com', N'Al-Batha, Riyadh', '0575678901', 5),
(N'Amal', N'Al-Faisal', 'Night', '2022-01-12', 8000.00, N'F', NULL, NULL, '0576789012', 6),
(N'Meshari', N'Al-Zamil', 'Morning', '2018-05-05', 9200.00, N'M', N'm.zamil@hms.com', N'Al-Maather, Riyadh', '0577890123', 7),
(N'Rayan', N'Al-Bishi', 'Evening', '2019-10-29', 8800.00, N'M', NULL, N'Al-Sahafa, Riyadh', '0578901234', 8),
(N'Jana', N'Al-Saif', 'Night', '2020-12-25', 9300.00, N'F', N'j.saif@hms.com', NULL, '0579012345', 8),
(N'Thamer', N'Al-Subaie', 'Morning', '2016-04-01', 10000.00, N'M', NULL, N'Al-Suwaidi, Riyadh', '0581234567', 9),

(N'Lujain', N'Al-Mutairi', 'Evening', '2021-07-14', 8400.00, N'F', N'l.mutairi@hms.com', NULL, '0582345678', 10),
(N'Nasser', N'Al-Anazi', 'Night', '2018-02-12', 9500.00, N'M', NULL, N'Al-Shifa, Riyadh', '0583456789', 3),
(N'Rawan', N'Al-Qahtani', 'Morning', '2020-09-15', 8700.00, N'F', N'r.qahtani@hms.com', N'Al-Nuzha, Riyadh', '0584567890', 3),
(N'Turki', N'Al-Zahrani', 'Evening', '2014-06-06', 11500.00, N'M', NULL, NULL, '0585678901', 1),
(N'Asma', N'Al-Dosari', 'Night', '2019-03-19', 9100.00, N'F', N'a.dosari@hms.com', N'Al-Rawdah, Riyadh', '0586789012', 2),
(N'Waleed', N'Al-Harbi', 'Morning', '2021-12-12', 8300.00, N'M', NULL, N'Al-Mursalat, Riyadh', '0587890123', 4),
(N'Ghadah', N'Al-Subaie', 'Evening', '2017-10-10', 9200.00, N'F', N'g.subaie@hms.com', NULL, '0588901234', 5),
(N'Saud', N'Al-Mutairi', 'Night', '2020-01-30', 9000.00, N'M', NULL, N'Al-Hamra, Riyadh', '0589012345', 6),
(N'Shatha', N'Al-Saud', 'Morning', '2015-05-15', 10400.00, N'F', N's.saud@hms.com', N'Al-Khuzama, Riyadh', '0591234567', 7),
(N'Yousef', N'Al-Anazi', 'Evening', '2019-08-24', 8900.00, N'M', NULL, N'Al-Suwaidi, Riyadh', '0592345678', 8),

(N'Laila', N'Al-Saeed', 'Night', '2021-05-10', 8600.00, N'F', N'l.saeed@hms.com', NULL, '0593456789', 8),
(N'Abdulrahman', N'Al-Maliki', 'Morning', '2016-11-18', 9900.00, N'M', NULL, N'Al-Shifa, Riyadh', '0594567890', 3),
(N'Noura', N'Al-Omari', 'Evening', '2018-04-05', 9300.00, N'F', N'n.omari@hms.com', N'Al-Batha, Riyadh', '0595678901', 3),
(N'Saad', N'Al-Rasheed', 'Night', '2022-02-14', 8100.00, N'M', NULL, NULL, '0596789012', 1),
(N'Amal', N'Al-Blouwi', 'Morning', '2020-06-13', 8850.00, N'F', N'a.blouwi@hms.com', N'Al-Wurood, Riyadh', '0597890123', 2),
(N'Fahad', N'Al-Murooj', 'Evening', '2017-12-25', 9400.00, N'M', NULL, N'Al-Murooj, Riyadh', '0598901234', 4),
(N'Sara', N'Al-Rayan', 'Night', '2019-01-20', 9250.00, N'F', N's.rayan@hms.com', NULL, '0599012345', 5),
(N'Bader', N'Al-Manar', 'Morning', '2021-09-15', 8500.00, N'M', NULL, N'Al-Manar, Riyadh', '0521234567', 6),
(N'Reem', N'Al-Falah', 'Evening', '2016-03-24', 10100.00, N'F', N'r.falah@hms.com', NULL, '0522345678', 7);


USE Hospital_Management_SystemDB;
GO

INSERT INTO Rooms (RoomNumber, RoomLocation, RoomTypeID)
VALUES 
('101', 'Floor 1 - Wing A', 1),
('102', 'Floor 1 - Wing A', 1),
('103', 'Floor 1 - Wing A', 5), 
('104', 'Floor 1 - Wing B', 1),
('105', 'Floor 1 - Wing B', 2),
('106', 'Floor 1 - Wing B', 2),
('107', 'Floor 1 - Wing C', 1),
('108', 'Floor 1 - Wing C', 1),
('109', 'Floor 1 - Wing C', 5),
('110', 'Floor 1 - Wing C', 2),

('201', 'Floor 2 - Wing A', 1),
('202', 'Floor 2 - Wing A', 2),
('203', 'Floor 2 - Wing A', 2),
('204', 'Floor 2 - Wing A', 3), 
('205', 'Floor 2 - Wing B', 1),
('206', 'Floor 2 - Wing B', 1),
('207', 'Floor 2 - Wing B', 2),
('208', 'Floor 2 - Wing B', 3),
('209', 'Floor 2 - Wing C', 1),
('210', 'Floor 2 - Wing C', 2),
('211', 'Floor 2 - Wing C', 2),
('212', 'Floor 2 - Wing C', 1),
('213', 'Floor 2 - Wing C', 3),
('214', 'Floor 2 - Wing C', 2),
('215', 'Floor 2 - Wing C', 1),

('301', 'Floor 3 - Wing A', 4),
('302', 'Floor 3 - Wing A', 4),
('303', 'Floor 3 - Wing A', 4),
('304', 'Floor 3 - Wing A', 4),
('305', 'Floor 3 - Wing B', 5), 
('306', 'Floor 3 - Wing B', 5),
('307', 'Floor 3 - Wing B', 5),
('308', 'Floor 3 - Wing B', 4),
('309', 'Floor 3 - Wing B', 1),
('310', 'Floor 3 - Wing B', 3),
('311', 'Floor 3 - Wing C', 4),
('312', 'Floor 3 - Wing C', 4),
('313', 'Floor 3 - Wing C', 5),
('314', 'Floor 3 - Wing C', 2),
('315', 'Floor 3 - Wing C', 1),


('111', 'Floor 1 - Wing D', 1),
('112', 'Floor 1 - Wing D', 2),
('216', 'Floor 2 - Wing D', 2),
('217', 'Floor 2 - Wing D', 3),
('316', 'Floor 3 - Wing D', 4),
('317', 'Floor 3 - Wing D', 4),
('318', 'Floor 3 - Wing D', 5); 


USE Hospital_Management_SystemDB;
GO

INSERT INTO  Patients_Allergies (DiagnosisDate, SeverityLevel, Note, PatientID, AllergyID)
VALUES 
('2004-05-12', N'Moderate', NULL, 12, 3),
('2011-11-20', N'Mild', NULL, 54, 7),
('2008-03-15', N'Severe', N'Penicillin allergy', 88, 1),
('2001-08-22', N'Mild', NULL, 104, 5),
('2014-01-05', N'Moderate', NULL, 213, 10),
('2007-06-19', N'Severe', NULL, 345, 2),
('2010-10-11', N'Mild', NULL, 412, 8),
('2003-04-25', N'Moderate', NULL, 92, 4),
('2012-09-02', N'Mild', NULL, 175, 6),
('2005-02-14', N'Severe', NULL, 288, 9),
('2009-07-07', N'Mild', NULL, 501, 1),
('2015-12-25', N'Moderate', NULL, 632, 3),
('2000-03-18', N'Severe', N'Asthma trigger', 711, 5),
('2006-05-30', N'Mild', NULL, 842, 2),
('2013-08-14', N'Moderate', NULL, 19, 8),
('2002-11-01', N'Mild', NULL, 134, 10),
('2008-04-17', N'Severe', NULL, 255, 7),
('2011-02-28', N'Moderate', NULL, 399, 4),
('2004-10-05', N'Mild', NULL, 467, 6),
('2014-06-12', N'Severe', NULL, 580, 2),
('2007-01-20', N'Moderate', NULL, 699, 9),
('2010-09-15', N'Mild', NULL, 754, 1),
('2003-12-12', N'Severe', N'Severe food allergy', 810, 3),
('2015-05-19', N'Mild', NULL, 45, 5),
('2001-07-22', N'Moderate', NULL, 112, 8),
('2009-03-01', N'Mild', NULL, 230, 10),
('2012-10-10', N'Severe', NULL, 321, 4),
('2006-02-14', N'Moderate', NULL, 489, 7),
('2000-08-24', N'Mild', NULL, 512, 6),
('2013-11-11', N'Severe', NULL, 604, 2),
('2005-06-30', N'Moderate', NULL, 733, 9),
('2014-04-01', N'Mild', NULL, 890, 1),
('2008-12-15', N'Severe', NULL, 27, 3),
('2010-03-22', N'Moderate', NULL, 165, 8),
('2002-05-18', N'Mild', NULL, 201, 5),
('2011-07-19', N'Severe', N'Skin rash', 378, 10),
('2004-09-09', N'Moderate', NULL, 432, 4),
('2015-01-30', N'Mild', NULL, 566, 7),
('2007-11-12', N'Severe', NULL, 671, 6),
('2003-02-27', N'Moderate', NULL, 792, 2),
('2012-06-14', N'Mild', NULL, 850, 9),
('2009-10-05', N'Severe', NULL, 63, 1),
('2006-08-20', N'Moderate', NULL, 142, 3),
('2001-04-12', N'Mild', NULL, 277, 8),
('2013-05-10', N'Severe', NULL, 310, 5),
('2010-12-02', N'Moderate', NULL, 450, 10),
('2005-09-25', N'Mild', NULL, 529, 4),
('2014-07-14', N'Severe', N'Lactose intolerant', 618, 7),
('2008-01-11', N'Moderate', NULL, 705, 6),
('2011-05-05', N'Mild', NULL, 888, 2),
('2002-03-17', N'Severe', NULL, 74, 9),
('2015-10-29', N'Moderate', NULL, 189, 1),
('2004-12-25', N'Mild', NULL, 222, 3),
('2007-08-16', N'Severe', NULL, 360, 8),
('2000-06-13', N'Moderate', NULL, 494, 5),
('2012-02-12', N'Mild', NULL, 507, 10),
('2009-04-24', N'Severe', NULL, 654, 4),
('2006-11-18', N'Moderate', NULL, 781, 7),
('2013-01-20', N'Mild', NULL, 825, 6),
('2003-07-07', N'Severe', NULL, 83, 2),
('2010-01-15', N'Moderate', NULL, 151, 9),
('2014-11-01', N'Mild', NULL, 294, 1),
('2005-05-15', N'Severe', N'Dust allergy', 333, 3),
('2008-09-12', N'Moderate', NULL, 408, 8),
('2011-06-18', N'Mild', NULL, 555, 5),
('2001-10-10', N'Severe', NULL, 641, 10),
('2015-03-14', N'Moderate', NULL, 729, 4),
('2007-03-19', N'Mild', NULL, 802, 7),
('2012-12-14', N'Severe', NULL, 39, 6),
('2009-01-11', N'Moderate', NULL, 118, 2),
('2002-08-27', N'Mild', NULL, 269, 9),
('2013-06-06', N'Severe', NULL, 385, 1),
('2004-02-12', N'Moderate', NULL, 441, 3),
('2010-07-22', N'Mild', NULL, 573, 8),
('2014-09-05', N'Severe', NULL, 684, 5),
('2006-04-01', N'Moderate', NULL, 762, 10),
('2000-11-22', N'Mild', NULL, 873, 4),
('2011-03-30', N'Severe', N'Nut allergy', 95, 7),
('2008-07-14', N'Moderate', NULL, 127, 6),
('2005-10-15', N'Mild', NULL, 248, 2),
('2015-08-24', N'Severe', NULL, 319, 9),
('2003-06-11', N'Moderate', NULL, 419, 1),
('2012-01-15', N'Mild', NULL, 531, 3),
('2007-05-24', N'Severe', NULL, 662, 8);



USE Hospital_Management_SystemDB;
GO

INSERT INTO HealthInsurances (InsuranceNumber, InsuranceCompany, CoveringPercentage, ExpiryDate, PatientID)
VALUES 
('INS-90011', N'Bupa Saudi Arabia', 0.85, '2028-04-12', 1),
('INS-90012', N'Tawuniya', 1.00, '2027-11-30', 2),
('INS-90013', N'Medgulf', 0.75, '2029-08-15', 4),
('INS-90014', N'Rajhi Takaful', 0.90, '2027-01-22', 5),
('INS-90015', N'Malaz Insurance', 0.80, '2028-03-10', 8),
('INS-90016', N'Bupa Saudi Arabia', 1.00, '2026-12-05', 9),
('INS-90017', N'Tawuniya', 0.70, '2029-05-19', 10),
('INS-90018', N'AXA Cooperative', 0.85, '2027-10-14', 12),
('INS-90019', N'Medgulf', 0.90, '2028-02-28', 14),
('INS-90020', N'Rajhi Takaful', 0.50, '2029-07-07', 15),
('INS-90021', N'Bupa Saudi Arabia', 0.95, '2027-06-18', 19),
('INS-90022', N'Tawuniya', 0.85, '2028-01-11', 27),
('INS-90023', N'GIG Gulf', 0.80, '2027-10-25', 35),
('INS-90024', N'Malaz Insurance', 0.75, '2028-09-01', 39),
('INS-90025', N'Medgulf', 1.00, '2029-11-14', 45),
('INS-90026', N'Bupa Saudi Arabia', 0.90, '2028-06-20', 54),
('INS-90027', N'Tawuniya', 0.85, '2027-03-15', 63),
('INS-90028', N'Rajhi Takaful', 0.70, '2029-01-10', 74),
('INS-90029', N'AXA Cooperative', 0.80, '2028-04-05', 85),
('INS-90030', N'Malaz Insurance', 0.95, '2029-12-25', 88),
('INS-90031', N'Medgulf', 0.85, '2027-08-18', 92),
('INS-90032', N'Bupa Saudi Arabia', 1.00, '2028-09-12', 95),
('INS-90033', N'Tawuniya', 0.75, '2027-05-24', 104),
('INS-90034', N'GIG Gulf', 0.90, '2029-02-14', 112),
('INS-90035', N'Rajhi Takaful', 0.80, '2028-10-01', 115),
('INS-90036', N'Malaz Insurance', 0.85, '2027-11-20', 118),
('INS-90037', N'Medgulf', 0.90, '2028-07-16', 120),
('INS-90038', N'Bupa Saudi Arabia', 0.65, '2029-04-30', 125),
('INS-90039', N'Tawuniya', 1.00, '2027-12-12', 127),
('INS-90040', N'AXA Cooperative', 0.80, '2028-03-19', 130),
('INS-90041', N'Rajhi Takaful', 0.85, '2029-05-15', 134),
('INS-90042', N'Malaz Insurance', 0.75, '2028-10-10', 140),
('INS-90043', N'Medgulf', 0.90, '2027-11-12', 142),
('INS-90044', N'Bupa Saudi Arabia', 0.95, '2028-06-01', 145),
('INS-90045', N'Tawuniya', 0.80, '2029-08-24', 150),
('INS-90046', N'GIG Gulf', 1.00, '2027-02-14', 151),
('INS-90047', N'Rajhi Takaful', 0.85, '2028-01-20', 160),
('INS-90048', N'Malaz Insurance', 0.70, '2029-03-15', 165),
('INS-90049', N'Medgulf', 0.90, '2027-07-19', 170),
('INS-90050', N'Bupa Saudi Arabia', 0.85, '2028-12-02', 175),
('INS-90051', N'Tawuniya', 0.75, '2029-04-11', 180),
('INS-90052', N'AXA Cooperative', 1.00, '2027-09-25', 185),
('INS-90053', N'Rajhi Takaful', 0.80, '2028-05-05', 189),
('INS-90054', N'Malaz Insurance', 0.90, '2026-11-18', 190),
('INS-90055', N'Medgulf', 0.85, '2029-01-30', 195),
('INS-90056', N'Bupa Saudi Arabia', 0.95, '2029-02-11', 200),
('INS-90057', N'Tawuniya', 0.70, '2028-07-22', 201),
('INS-90058', N'GIG Gulf', 0.80, '2027-09-14', 210),
('INS-90059', N'Rajhi Takaful', 1.00, '2029-06-18', 213),
('INS-90060', N'Malaz Insurance', 0.85, '2028-12-05', 220),
('INS-90061', N'Medgulf', 0.75, '2027-05-20', 222),
('INS-90062', N'Bupa Saudi Arabia', 0.90, '2029-01-15', 230),
('INS-90063', N'Tawuniya', 0.80, '2028-04-02', 240),
('INS-90064', N'AXA Cooperative', 0.85, '2027-10-10', 248),
('INS-90065', N'Rajhi Takaful', 1.00, '2029-03-22', 250),
('INS-90066', N'Malaz Insurance', 0.90, '2028-08-14', 255),
('INS-90067', N'Medgulf', 0.75, '2027-11-01', 260),
('INS-90068', N'Bupa Saudi Arabia', 0.85, '2029-07-19', 269),
('INS-90069', N'Tawuniya', 0.80, '2028-02-27', 270),
('INS-90070', N'GIG Gulf', 0.95, '2027-12-25', 277),
('INS-90071', N'Rajhi Takaful', 0.85, '2028-09-09', 280),
('INS-90072', N'Malaz Insurance', 1.00, '2029-05-14', 288),
('INS-90073', N'Medgulf', 0.70, '2027-03-30', 290),
('INS-90074', N'Bupa Saudi Arabia', 0.90, '2028-11-11', 294),
('INS-90075', N'Tawuniya', 0.85, '2029-02-18', 300),
('INS-90076', N'AXA Cooperative', 0.80, '2027-08-22', 305),
('INS-90077', N'Rajhi Takaful', 0.95, '2028-10-05', 310),
('INS-90078', N'Malaz Insurance', 0.85, '2029-06-12', 315),
('INS-90079', N'Medgulf', 1.00, '2027-04-01', 317),
('INS-90080', N'Bupa Saudi Arabia', 0.75, '2028-07-14', 3),
('INS-90081', N'Tawuniya', 0.90, '2029-01-20', 6),
('INS-90082', N'GIG Gulf', 0.85, '2027-12-15', 7),
('INS-90083', N'Rajhi Takaful', 0.80, '2028-03-10', 11),
('INS-90084', N'Malaz Insurance', 1.00, '2029-04-24', 13),
('INS-90085', N'Medgulf', 0.85, '2027-10-05', 16),
('INS-90086', N'Bupa Saudi Arabia', 0.70, '2029-03-14', 17),
('INS-90087', N'Tawuniya', 0.90, '2028-11-22', 20),
('INS-90088', N'AXA Cooperative', 0.80, '2027-06-18', 21),
('INS-90089', N'Rajhi Takaful', 0.95, '2029-09-05', 25);

USE Hospital_Management_SystemDB;
GO

INSERT INTO HealthInsurances (InsuranceNumber, InsuranceCompany, CoveringPercentage, ExpiryDate, PatientID)
VALUES 
('INS-90101', N'Bupa Saudi Arabia', 0.85, '2028-06-12', 26),
('INS-90102', N'Tawuniya', 0.90, '2027-09-30', 28),
('INS-90103', N'Medgulf', 0.70, '2029-04-15', 29),
('INS-90104', N'Rajhi Takaful', 1.00, '2027-03-22', 30),
('INS-90105', N'Malaz Insurance', 0.80, '2028-08-10', 31),
('INS-90106', N'Bupa Saudi Arabia', 0.75, '2026-11-05', 32),
('INS-90107', N'Tawuniya', 0.85, '2029-01-19', 33),
('INS-90108', N'AXA Cooperative', 0.90, '2027-12-14', 34),
('INS-90109', N'Medgulf', 0.50, '2028-05-28', 36),
('INS-90110', N'Rajhi Takaful', 0.80, '2029-09-07', 37),
('INS-90111', N'Bupa Saudi Arabia', 0.95, '2027-08-18', 38),
('INS-90112', N'Tawuniya', 0.85, '2028-03-11', 40),
('INS-90113', N'GIG Gulf', 1.00, '2027-11-25', 41),
('INS-90114', N'Malaz Insurance', 0.75, '2028-07-01', 42),
('INS-90115', N'Medgulf', 0.90, '2029-10-14', 43),
('INS-90116', N'Bupa Saudi Arabia', 0.85, '2028-05-20', 44),
('INS-90117', N'Tawuniya', 0.80, '2027-02-15', 46),
('INS-90118', N'Rajhi Takaful', 0.70, '2029-03-10', 47),
('INS-90119', N'AXA Cooperative', 0.95, '2028-06-05', 48),
('INS-90120', N'Malaz Insurance', 0.85, '2029-11-25', 49),
('INS-90121', N'Medgulf', 1.00, '2027-09-18', 50),
('INS-90122', N'Bupa Saudi Arabia', 0.75, '2028-11-12', 51),
('INS-90123', N'Tawuniya', 0.90, '2027-04-24', 52),
('INS-90124', N'GIG Gulf', 0.80, '2029-01-14', 53),
('INS-90125', N'Rajhi Takaful', 0.85, '2028-12-01', 55),
('INS-90126', N'Malaz Insurance', 0.90, '2027-10-20', 56),
('INS-90127', N'Medgulf', 0.65, '2028-06-16', 57),
('INS-90128', N'Bupa Saudi Arabia', 1.00, '2029-03-30', 58),
('INS-90129', N'Tawuniya', 0.80, '2027-11-12', 59),
('INS-90130', N'AXA Cooperative', 0.85, '2028-02-19', 60),
('INS-90131', N'Rajhi Takaful', 0.75, '2029-04-15', 61),
('INS-90132', N'Malaz Insurance', 0.90, '2028-09-10', 62),
('INS-90133', N'Medgulf', 0.95, '2027-10-12', 64),
('INS-90134', N'Bupa Saudi Arabia', 0.80, '2028-05-01', 65),
('INS-90135', N'Tawuniya', 1.00, '2029-07-24', 66),
('INS-90136', N'GIG Gulf', 0.85, '2027-03-14', 67),
('INS-90137', N'Rajhi Takaful', 0.70, '2028-02-20', 68),
('INS-90138', N'Malaz Insurance', 0.90, '2029-02-15', 69),
('INS-90139', N'Medgulf', 0.85, '2027-06-19', 70),
('INS-90140', N'Bupa Saudi Arabia', 0.75, '2028-11-02', 71),
('INS-90141', N'Tawuniya', 1.00, '2029-03-11', 72),
('INS-90142', N'AXA Cooperative', 0.80, '2027-08-25', 73),
('INS-90143', N'Rajhi Takaful', 0.90, '2028-04-05', 75),
('INS-90144', N'Malaz Insurance', 0.85, '2026-12-18', 76),
('INS-90145', N'Medgulf', 0.95, '2029-02-28', 77),
('INS-90146', N'Bupa Saudi Arabia', 0.70, '2029-01-11', 78),
('INS-90147', N'Tawuniya', 0.80, '2028-06-22', 79),
('INS-90148', N'GIG Gulf', 1.00, '2027-08-14', 80),
('INS-90149', N'Rajhi Takaful', 0.85, '2029-05-18', 81),
('INS-90150', N'Malaz Insurance', 0.75, '2028-11-05', 82),
('INS-90151', N'Medgulf', 0.90, '2027-04-20', 83),
('INS-90152', N'Bupa Saudi Arabia', 0.80, '2029-02-15', 84),
('INS-90153', N'Tawuniya', 0.85, '2028-03-02', 86),
('INS-90154', N'AXA Cooperative', 1.00, '2027-09-10', 87),
('INS-90155', N'Rajhi Takaful', 0.90, '2029-02-22', 89),
('INS-90156', N'Malaz Insurance', 0.75, '2028-07-14', 90),
('INS-90157', N'Medgulf', 0.85, '2027-10-01', 91),
('INS-90158', N'Bupa Saudi Arabia', 0.80, '2029-06-19', 93),
('INS-90159', N'Tawuniya', 0.95, '2028-01-27', 94),
('INS-90160', N'GIG Gulf', 0.85, '2027-11-25', 96),
('INS-90161', N'Rajhi Takaful', 1.00, '2028-08-09', 97),
('INS-90162', N'Malaz Insurance', 0.70, '2029-04-14', 98),
('INS-90163', N'Medgulf', 0.90, '2027-02-28', 99),
('INS-90164', N'Bupa Saudi Arabia', 0.85, '2028-10-11', 100),
('INS-90165', N'Tawuniya', 0.80, '2029-01-18', 101),
('INS-90166', N'AXA Cooperative', 0.95, '2027-07-22', 102),
('INS-90167', N'Rajhi Takaful', 0.85, '2028-09-05', 103),
('INS-90168', N'Malaz Insurance', 1.00, '2029-05-12', 105),
('INS-90169', N'Medgulf', 0.75, '2027-03-01', 106),
('INS-90170', N'Bupa Saudi Arabia', 0.90, '2028-06-14', 107),
('INS-90171', N'Tawuniya', 0.85, '2029-03-20', 108),
('INS-90172', N'GIG Gulf', 0.80, '2027-11-15', 109),
('INS-90173', N'Rajhi Takaful', 0.95, '2028-04-10', 110),
('INS-90174', N'Malaz Insurance', 0.85, '2029-07-24', 111),
('INS-90175', N'Medgulf', 1.00, '2027-05-05', 113),
('INS-90176', N'Bupa Saudi Arabia', 0.70, '2029-02-14', 114),
('INS-90177', N'Tawuniya', 0.90, '2028-10-22', 116),
('INS-90178', N'AXA Cooperative', 0.85, '2027-05-18', 117),
('INS-90179', N'Rajhi Takaful', 0.80, '2029-08-05', 119),
('INS-90180', N'Malaz Insurance', 0.95, '2028-01-30', 121),
('INS-90181', N'Medgulf', 0.85, '2029-06-14', 122),
('INS-90182', N'Bupa Saudi Arabia', 1.00, '2027-03-15', 123),
('INS-90183', N'Tawuniya', 0.75, '2028-12-12', 124),
('INS-90184', N'GIG Gulf', 0.90, '2029-04-20', 126),
('INS-90185', N'Rajhi Takaful', 0.85, '2028-02-18', 128),
('INS-90186', N'Malaz Insurance', 1.00, '2027-10-05', 129),
('INS-90187', N'Medgulf', 0.80, '2029-01-30', 314),
('INS-90188', N'Bupa Saudi Arabia', 0.90, '2028-07-15', 315),
('INS-90189', N'Tawuniya', 0.85, '2027-11-19', 316);



USE Hospital_Management_SystemDB;
GO

INSERT INTO Treatments (TreatmentDate, ExitDate, PatientID, DoctorID)
VALUES 
('2025-03-12', NULL, 142, 12),
('2024-08-22', NULL, 15, 29),
('2026-01-05', NULL, 288, 3),
('2025-11-19', NULL, 63, 18),
('2024-06-30', NULL, 195, 35),
('2025-07-14', NULL, 12, 7),
('2026-04-02', NULL, 305, 22),
('2024-10-25', NULL, 88, 1),
('2025-02-14', NULL, 118, 40),
('2025-09-09', NULL, 210, 15),

('2024-12-25', NULL, 54, 31),
('2026-03-18', NULL, 175, 9),
('2025-05-30', NULL, 92, 25),
('2024-07-07', NULL, 250, 14),
('2025-10-11', NULL, 134, 5),
('2026-02-28', NULL, 45, 38),
('2024-09-15', NULL, 311, 20),
('2025-04-17', NULL, 8, 11),
('2025-12-12', NULL, 222, 27),
('2024-11-01', NULL, 160, 33),

('2026-05-14', NULL, 294, 2),
('2025-01-20', NULL, 74, 17),
('2024-08-04', NULL, 185, 24),
('2025-06-18', NULL, 39, 8),
('2026-02-11', NULL, 104, 36),
('2024-10-10', NULL, 277, 13),
('2025-03-01', NULL, 151, 30),
('2025-09-25', NULL, 50, 4),
('2024-06-13', NULL, 201, 19),
('2025-11-11', NULL, 127, 26),

('2026-04-24', NULL, 315, 10),
('2024-12-15', NULL, 83, 39),
('2025-05-18', NULL, 190, 6),
('2025-08-24', NULL, 240, 21),
('2024-07-22', NULL, 112, 16),
('2026-01-30', NULL, 269, 34),
('2025-02-27', NULL, 99, 28),
('2024-11-12', NULL, 3, 23),
('2025-10-05', NULL, 145, 40),
('2025-04-01', NULL, 220, 2),

('2026-03-14', NULL, 57, 15),
('2024-09-05', NULL, 180, 11),
('2025-07-19', NULL, 290, 37),
('2024-06-06', NULL, 13, 9),
('2025-12-25', NULL, 101, 32),
('2026-05-05', NULL, 255, 1),
('2025-01-15', NULL, 33, 25),
('2024-10-15', NULL, 165, 18),
('2025-08-16', NULL, 300, 14),
('2024-07-14', NULL, 79, 29),

('2026-02-12', NULL, 213, 5),
('2025-03-22', NULL, 41, 31),
('2024-11-22', NULL, 120, 8),
('2025-09-12', NULL, 248, 20),
('2024-08-27', NULL, 6, 35),
('2026-04-19', NULL, 189, 17),
('2025-06-14', NULL, 94, 12),
('2025-10-29', NULL, 310, 24),
('2024-12-02', NULL, 140, 3),
('2025-05-05', NULL, 55, 38),

('2026-01-11', NULL, 270, 7),
('2024-09-29', NULL, 87, 26),
('2025-07-07', NULL, 150, 16),
('2024-11-18', NULL, 22, 33),
('2025-11-05', NULL, 115, 10),
('2026-03-30', NULL, 299, 4),
('2025-04-22', NULL, 66, 22),
('2024-08-14', NULL, 170, 19),
('2025-12-14', NULL, 230, 30),
('2024-06-18', NULL, 10, 36),

('2026-05-24', NULL, 314, 13),
('2025-02-20', NULL, 49, 27),
('2024-10-01', NULL, 125, 23),
('2025-09-05', NULL, 200, 34),
('2024-07-19', NULL, 90, 6),
('2026-02-14', NULL, 260, 21),
('2025-03-10', NULL, 38, 15),
('2025-08-09', NULL, 108, 28),
('2024-11-11', NULL, 119, 2),
('2025-10-22', NULL, 51, 9),

('2026-01-20', NULL, 280, 40),
('2024-12-12', NULL, 73, 11),
('2025-06-12', NULL, 167, 32); 


USE Hospital_Management_SystemDB;
GO

INSERT INTO Treatments (TreatmentDate, ExitDate, PatientID, DoctorID)
VALUES 
('2025-01-10', '2025-01-15', 450, 12),
('2025-01-12', '2025-01-20', 465, 29),
('2025-02-05', '2025-02-06', 490, 3),
('2025-02-14', '2025-02-22', 512, 18),
('2025-03-01', '2025-03-12', 533, 35),
('2025-03-18', '2025-03-20', 560, 7),
('2025-04-05', '2025-04-14', 588, 22),
('2025-04-22', '2025-05-02', 601, 1),
('2025-05-12', '2025-05-15', 625, 40),
('2025-05-19', '2025-05-30', 650, 15),

('2025-06-02', '2025-06-11', 677, 31),
('2025-06-15', '2025-06-19', 702, 9),
('2025-07-04', '2025-07-14', 720, 25),
('2025-07-20', '2025-07-25', 744, 14),
('2025-08-11', '2025-08-15', 760, 5),
('2025-08-24', '2025-09-02', 789, 38),
('2025-09-05', '2025-09-10', 811, 20),
('2025-09-18', '2025-09-30', 835, 11),
('2025-10-01', '2025-10-05', 850, 27),
('2025-10-15', '2025-10-22', 880, 33),

('2025-11-04', '2025-11-08', 905, 2),
('2025-11-20', '2025-11-25', 922, 17),
('2025-12-05', '2025-12-15', 948, 24),
('2025-12-12', '2025-12-14', 970, 8),
('2026-01-08', '2026-01-12', 1002, 36),
('2026-01-22', '2026-02-02', 1025, 13),
('2026-02-01', '2026-02-05', 1050, 30),
('2026-02-14', '2026-02-26', 1077, 4),
('2026-03-02', '2026-03-05', 1100, 19),
('2026-03-15', '2026-03-25', 1123, 26),

('2025-01-15', '2025-01-18', 455, 42),
('2025-01-25', '2025-02-04', 470, 45),
('2025-02-10', '2025-02-14', 502, 48),
('2025-02-28', '2025-03-05', 525, 50),
('2025-03-10', '2025-03-15', 544, 43),
('2025-03-22', '2025-03-30', 572, 47),
('2025-04-12', '2025-04-15', 599, 41),
('2025-04-30', '2025-05-05', 615, 46),
('2025-05-15', '2025-05-25', 638, 49),
('2025-05-24', '2025-05-28', 662, 44),

('2025-06-10', '2025-06-14', 450, 12),
('2025-06-20', '2025-06-25', 465, 29),
('2025-07-02', '2025-07-08', 490, 3),
('2025-07-15', '2025-07-22', 512, 18),
('2025-08-01', '2025-08-12', 533, 35),
('2025-08-18', '2025-08-20', 560, 7),
('2025-09-02', '2025-09-14', 588, 22),
('2025-09-20', '2025-10-01', 601, 1),
('2025-10-10', '2025-10-15', 625, 40),
('2025-10-25', '2025-11-05', 650, 15),

('2025-11-12', '2025-11-15', 677, 31),
('2025-11-28', '2025-12-05', 702, 9),
('2025-12-15', '2025-12-18', 720, 25),
('2025-12-28', '2025-12-30', 744, 14),
('2026-01-15', '2026-01-20', 760, 5),
('2026-01-30', '2026-02-05', 789, 38),
('2026-02-12', '2026-02-18', 811, 20),
('2026-02-25', '2026-03-05', 835, 11),
('2026-03-10', '2026-03-14', 850, 27),
('2026-03-28', '2026-04-05', 880, 33),

('2026-04-01', '2026-04-10', 905, 2),
('2026-04-15', '2026-04-22', 922, 17),
('2026-05-02', '2026-05-08', 948, 24),
('2026-05-18', '2026-05-24', 970, 8),
('2026-05-28', '2026-06-02', 1002, 36),
('2026-01-05', '2026-01-15', 1025, 13),
('2026-02-18', '2026-02-22', 1050, 30),
('2026-03-08', '2026-03-12', 1077, 4),
('2026-04-12', '2026-04-20', 1100, 19),
('2026-05-05', '2026-05-10', 1123, 26),

('2025-08-05', '2025-08-10', 455, 42),
('2025-09-12', '2025-09-18', 470, 45),
('2025-10-19', '2025-10-25', 502, 48),
('2025-11-01', '2025-11-05', 525, 50),
('2025-12-14', '2025-12-25', 544, 43),
('2026-01-20', '2026-01-24', 572, 47),
('2026-02-22', '2026-02-28', 599, 41),
('2026-03-11', '2026-03-18', 615, 46),
('2026-04-05', '2026-04-12', 638, 49),
('2026-05-19', '2026-05-22', 662, 44),

('2026-02-10', '2026-02-15', 680, 16),
('2026-03-01', '2026-03-10', 710, 23),
('2026-04-18', '2026-04-25', 735, 34); 


USE Hospital_Management_SystemDB;
GO

INSERT INTO Prescriptions (IssueDate, TreatmentID)
VALUES 
('2025-03-12', 1),
('2024-08-23', 2),
('2026-01-06', 3),
('2025-11-19', 4),
('2024-06-30', 5),
('2025-07-15', 6),
('2026-04-02', 7),
('2024-10-26', 8),
('2025-02-14', 9),
('2025-09-10', 10),

('2024-12-25', 11),
('2026-03-19', 12),
('2025-05-30', 13),
('2024-07-08', 14),
('2025-10-12', 15),
('2026-02-28', 16),
('2024-09-16', 17),
('2025-04-17', 18),
('2025-12-13', 19),
('2024-11-02', 20),

('2026-05-14', 21),
('2025-01-20', 22),
('2024-08-05', 23),
('2025-06-19', 24),
('2026-02-11', 25),
('2024-10-11', 26),
('2025-03-02', 27),
('2025-09-25', 28),
('2024-06-14', 29),
('2025-11-12', 30),

('2026-04-25', 31),
('2024-12-15', 32),
('2025-05-19', 33),
('2025-08-25', 34),
('2024-07-23', 35),
('2026-01-30', 36),
('2025-02-27', 37),
('2024-11-13', 38),
('2025-10-06', 39),
('2025-04-02', 40),

('2025-01-11', 84),
('2025-01-13', 85),
('2025-02-05', 86),
('2025-02-15', 87),
('2025-03-02', 88),
('2025-03-19', 89),
('2025-04-06', 90),
('2025-04-23', 91),
('2025-05-13', 92),
('2025-05-20', 93),

('2025-06-03', 94),
('2025-06-16', 95),
('2025-07-05', 96),
('2025-07-21', 97),
('2025-08-12', 98),
('2025-08-25', 99),
('2025-09-06', 100),
('2025-09-19', 101),
('2025-10-02', 102),
('2025-10-16', 103),

('2025-11-05', 104),
('2025-11-21', 105),
('2025-12-06', 106),
('2025-12-13', 107),
('2026-01-09', 108),
('2026-01-23', 109),
('2026-02-02', 110),
('2026-02-15', 111),
('2026-03-03', 112),
('2026-03-16', 113),

('2025-01-16', 114),
('2025-01-26', 115),
('2025-02-11', 116),
('2025-02-28', 117),
('2025-03-11', 118),
('2025-03-23', 119),
('2025-04-13', 120),
('2025-04-30', 121),
('2025-05-16', 122),
('2025-05-25', 123),

('2025-06-11', 124),
('2025-06-21', 125),
('2025-07-03', 126),
('2025-07-16', 127),
('2025-08-02', 128),
('2025-08-19', 129),
('2025-09-03', 130),
('2025-09-21', 131),
('2025-10-11', 132); 


USE Hospital_Management_SystemDB;
GO

-- Inserting 89 records into PrescriptionMedications with strictly sequential PrescriptionIDs
INSERT INTO PrescriptionMedications (Instructions, Duration, Dosage, MedicineDetailID, PrescriptionID)
VALUES 
(N'After breakfast', '30 Days', '1 Tab', 39, 88);
--####### 
--####### deleted




USE Hospital_Management_SystemDB;
GO

-- Inserting 89 randomized, logically consistent records into Admissions
INSERT INTO Admissions (AdmissionDate, ExitDate, PatientID, RoomID, NurseID)
VALUES 
('2025-03-12', '2025-03-19', 742, 15, 42),
('2024-08-22', NULL, 150, 29, 11),
('2026-01-05', '2026-01-10', 888, 3, 68),
('2025-11-19', NULL, 63, 18, 55),
('2024-06-30', '2024-07-12', 195, 35, 23),
('2025-07-14', NULL, 912, 7, 7),
('2026-04-02', '2026-04-05', 305, 22, 60),
('2024-10-25', NULL, 88, 1, 33),
('2025-02-14', '2025-02-20', 118, 45, 19),
('2025-09-09', NULL, 210, 15, 50),

('2024-12-25', '2025-01-02', 544, 31, 5),
('2026-03-18', NULL, 175, 9, 47),
('2025-05-30', '2025-06-04', 92, 25, 14),
('2024-07-07', NULL, 250, 14, 39),
('2025-10-11', '2025-10-15', 134, 5, 22),
('2026-02-28', NULL, 45, 38, 61),
('2024-09-15', '2024-09-22', 311, 20, 8),
('2025-04-17', NULL, 804, 11, 53),
('2025-12-12', '2025-12-18', 222, 27, 26),
('2024-11-01', NULL, 160, 33, 17),

('2026-05-14', '2026-05-24', 294, 2, 70),
('2025-01-20', NULL, 74, 17, 35),
('2024-08-04', '2024-08-15', 185, 24, 44),
('2025-06-18', NULL, 391, 8, 12),
('2026-02-11', '2026-02-14', 104, 36, 58),
('2024-10-10', NULL, 277, 13, 2),
('2025-03-01', '2025-03-10', 151, 30, 29),
('2025-09-25', NULL, 50, 4, 63),
('2024-06-13', '2024-06-15', 201, 19, 41),
('2025-11-11', NULL, 127, 26, 9),

('2026-04-24', '2026-05-02', 315, 10, 52),
('2024-12-15', NULL, 832, 39, 13),
('2025-05-18', '2025-05-22', 190, 6, 48),
('2025-08-24', NULL, 240, 21, 6),
('2024-07-22', '2024-08-01', 112, 16, 31),
('2026-01-30', NULL, 269, 34, 66),
('2025-02-27', '2025-03-05', 999, 28, 20),
('2024-11-12', NULL, 3, 23, 57),
('2025-10-05', '2025-10-10', 145, 40, 4),
('2025-04-01', NULL, 220, 2, 28),

('2026-03-14', '2026-03-24', 572, 15, 37),
('2024-09-05', NULL, 180, 11, 49),
('2025-07-19', '2025-07-25', 290, 37, 15),
('2024-06-06', NULL, 13, 9, 64),
('2025-12-25', '2026-01-02', 101, 32, 1),
('2026-05-05', NULL, 255, 1, 46),
('2025-01-15', '2025-01-20', 33, 25, 51),
('2024-10-15', NULL, 165, 18, 18),
('2025-08-16', '2025-08-22', 300, 14, 30),
('2024-07-14', NULL, 79, 29, 62),

('2026-02-12', '2026-02-15', 213, 5, 59),
('2025-03-22', NULL, 41, 31, 10),
('2024-11-22', '2024-12-02', 120, 8, 54),
('2025-09-12', NULL, 248, 20, 25),
('2024-08-27', '2024-08-30', 6, 35, 38),
('2026-04-19', NULL, 189, 17, 69),
('2025-06-14', '2025-06-18', 944, 12, 32),
('2025-10-29', NULL, 310, 24, 3),
('2024-12-02', '2024-12-14', 140, 3, 43),
('2025-05-05', NULL, 555, 38, 16),

('2026-01-11', '2026-01-15', 270, 7, 56),
('2024-09-29', NULL, 87, 26, 21),
('2025-07-07', '2025-07-17', 150, 16, 40),
('2024-11-18', NULL, 22, 33, 67),
('2025-11-05', '2025-11-12', 115, 10, 34),
('2026-03-30', NULL, 299, 4, 12),
('2025-04-22', '2025-05-01', 66, 22, 45),
('2024-08-14', NULL, 170, 19, 27),
('2025-12-14', '2025-12-20', 230, 30, 65),
('2024-06-18', NULL, 10, 36, 24),

('2026-05-24', '2026-05-28', 314, 13, 50),
('2025-02-20', NULL, 499, 27, 8),
('2024-10-01', '2024-10-11', 125, 23, 36),
('2025-09-05', NULL, 200, 34, 14),
('2024-07-19', '2024-07-25', 90, 6, 61),
('2026-02-14', NULL, 260, 21, 22),
('2025-03-10', '2025-03-15', 38, 15, 47),
('2025-08-09', NULL, 108, 28, 5),
('2024-11-11', '2024-11-20', 119, 2, 19),
('2025-10-22', NULL, 51, 9, 31),

('2026-01-20', '2026-01-30', 280, 45, 63),
('2024-12-12', NULL, 73, 11, 26),
('2025-06-12', '2025-06-22', 167, 32, 58);


USE Hospital_Management_SystemDB;
GO

-- Inserting another 83 randomized, logically consistent records into Admissions
INSERT INTO Admissions (AdmissionDate, ExitDate, PatientID, RoomID, NurseID)
VALUES 
('2025-01-15', '2025-01-22', 452, 12, 65),
('2025-01-18', NULL, 891, 38, 24),
('2025-02-10', '2025-02-15', 23, 8, 12),
('2025-02-28', NULL, 615, 21, 49),
('2025-03-14', '2025-03-20', 780, 44, 3),
('2025-03-22', NULL, 102, 19, 57),
('2025-04-05', '2025-04-18', 534, 30, 31),
('2025-04-20', NULL, 905, 5, 16),
('2025-05-12', '2025-05-15', 367, 27, 41),
('2025-05-25', NULL, 822, 14, 69),

('2025-06-02', '2025-06-12', 149, 40, 8),
('2025-06-15', NULL, 730, 22, 52),
('2025-07-04', '2025-07-09', 58, 33, 27),
('2025-07-19', NULL, 488, 11, 60),
('2025-08-11', '2025-08-25', 921, 45, 18),
('2025-08-30', NULL, 314, 2, 36),
('2025-09-05', '2025-09-12', 644, 26, 43),
('2025-09-22', NULL, 170, 17, 5),
('2025-10-01', '2025-10-05', 855, 39, 50),
('2025-10-18', NULL, 299, 9, 22),

('2025-11-04', '2025-11-14', 412, 35, 61),
('2025-11-20', NULL, 965, 4, 14),
('2025-12-05', '2025-12-10', 138, 23, 33),
('2025-12-15', NULL, 704, 42, 58),
('2026-01-02', '2026-01-12', 511, 16, 7),
('2026-01-18', NULL, 840, 28, 46),
('2026-02-05', '2026-02-11', 67, 13, 29),
('2026-02-20', NULL, 350, 31, 64),
('2026-03-02', '2026-03-15', 799, 7, 1),
('2026-03-19', NULL, 21, 12, 31),

('2025-01-25', '2025-02-02', 602, 18, 51),
('2025-02-05', NULL, 119, 41, 10),
('2025-02-22', '2025-02-28', 834, 6, 25),
('2025-03-10', NULL, 401, 32, 67),
('2025-03-28', '2025-04-04', 950, 15, 30),
('2025-04-12', NULL, 277, 43, 56),
('2025-04-29', '2025-05-05', 711, 10, 21),
('2025-05-15', NULL, 50, 29, 63),
('2025-06-01', '2025-06-08', 688, 24, 4),
('2025-06-18', NULL, 913, 37, 40),

('2025-07-05', '2025-07-15', 340, 1, 45),
('2025-07-22', NULL, 802, 34, 19),
('2025-08-14', '2025-08-20', 165, 45, 54),
('2025-08-28', NULL, 599, 12, 32),
('2025-09-12', '2025-09-24', 977, 3, 62),
('2025-09-30', NULL, 420, 36, 17),
('2025-10-10', '2025-10-15', 111, 25, 70),
('2025-10-25', NULL, 655, 8, 35),
('2025-11-12', '2025-11-18', 230, 22, 44),
('2025-11-28', NULL, 870, 14, 13),

('2025-12-10', '2025-12-15', 499, 39, 53),
('2025-12-24', NULL, 15, 5, 2),
('2026-01-08', '2026-01-20', 744, 33, 47),
('2026-01-25', NULL, 380, 17, 34),
('2026-02-12', '2026-02-16', 900, 42, 59),
('2026-02-26', NULL, 555, 20, 11),
('2026-03-10', '2026-03-18', 125, 31, 26),
('2026-03-25', NULL, 680, 9, 55),
('2026-04-05', '2026-04-12', 310, 2, 68),
('2026-04-22', NULL, 811, 18, 23),

('2025-02-15', '2025-02-22', 944, 27, 42),
('2025-03-05', NULL, 47, 11, 6),
('2025-04-18', '2025-04-28', 666, 30, 37),
('2025-05-02', NULL, 222, 13, 66),
('2025-06-14', '2025-06-20', 705, 41, 15),
('2025-07-28', NULL, 49, 7, 48),
('2025-08-05', '2025-08-12', 835, 24, 51),
('2025-09-19', NULL, 300, 35, 9),
('2025-10-02', '2025-10-09', 512, 16, 28),
('2025-11-15', NULL, 999, 44, 60),

('2025-12-01', '2025-12-05', 180, 6, 32),
('2026-01-14', NULL, 638, 23, 1),
('2026-02-18', '2026-02-25', 79, 32, 49),
('2026-03-05', NULL, 450, 10, 20),
('2026-04-12', '2026-04-22', 888, 38, 57),
('2026-05-02', NULL, 134, 15, 39),
('2026-05-18', '2026-05-24', 572, 21, 12),
('2026-05-28', NULL, 90, 4, 30),
('2025-04-15', '2025-04-20', 601, 28, 56),
('2025-08-20', NULL, 240, 43, 21),

('2025-11-11', '2025-11-15', 119, 12, 8),
('2026-01-30', NULL, 269, 19, 64),
('2026-03-30', '2026-04-05', 299, 45, 16);



USE Hospital_Management_SystemDB;
GO

-- Inserting 83 certified and logically consistent financial records into Invoices
INSERT INTO Invoices (TotalAmount, DiscountAmount, IssueDate, IssueTime, BillingStatus, TreatmentID)
VALUES 
(1450.00, 150.00, '2025-03-12', '09:30:15', N'Paid', 142),
(320.50, 0.00, '2024-08-22', '14:22:10', N'Unpaid', 15),
(2100.00, 200.00, '2026-01-05', '11:05:45', N'Partially Paid', 88),
(450.75, 50.00, '2025-11-19', '16:40:22', N'Rejected', 63),
(120.00, 10.00, '2024-06-30', '08:15:30', N'Paid', 12),
(850.00, 0.00, '2025-07-14', '13:12:05', N'Unpaid', 104),
(3100.00, 500.00, '2026-04-02', '10:00:00', N'Paid', 8),
(175.25, 0.00, '2024-10-25', '17:45:18', N'Rejected', 118),
(1600.00, 150.00, '2025-02-14', '12:35:50', N'Partially Paid', 54),
(640.00, 40.00, '2025-09-09', '15:20:11', N'Paid', 134),

(190.00, 0.00, '2024-12-25', '19:10:05', N'Unpaid', 45),
(4300.00, 600.00, '2026-03-18', '09:15:40', N'Paid', 8),
(250.00, 25.00, '2025-05-30', '11:55:33', N'Partially Paid', 160),
(780.50, 0.00, '2024-07-07', '14:30:25', N'Unpaid', 112),
(1350.00, 100.00, '2025-10-11', '16:05:14', N'Paid', 99),
(95.00, 0.00, '2026-02-28', '08:45:55', N'Rejected', 3),
(2200.00, 300.00, '2024-09-15', '10:30:20', N'Paid', 57),
(510.00, 50.00, '2025-04-17', '13:40:12', N'Partially Paid', 13),
(340.00, 0.00, '2025-12-12', '15:15:45', N'Unpaid', 101),
(1250.00, 120.00, '2024-11-01', '11:22:30', N'Paid', 33),

(415.00, 15.00, '2026-05-14', '14:50:18', N'Partially Paid', 74),
(900.00, 0.00, '2025-01-20', '09:05:55', N'Unpaid', 39),
(180.25, 0.00, '2024-08-04', '16:35:40', N'Rejected', 127),
(2800.00, 400.00, '2025-06-18', '10:12:15', N'Paid', 115),
(620.00, 60.00, '2026-02-11', '12:45:22', N'Paid', 83),
(150.00, 0.00, '2024-10-10', '13:18:05', N'Unpaid', 112),
(950.00, 100.00, '2025-03-01', '15:55:50', N'Partially Paid', 3),
(310.00, 0.00, '2025-09-25', '17:20:34', N'Rejected', 145),
(1850.00, 200.00, '2024-06-13', '11:10:42', N'Paid', 5),
(720.00, 50.00, '2025-11-11', '08:30:15', N'Paid', 79),

(530.50, 0.00, '2026-04-24', '14:15:55', N'Unpaid', 41),
(140.00, 10.00, '2024-12-15', '16:45:20', N'Paid', 120),
(2600.00, 300.00, '2025-05-18', '10:35:12', N'Partially Paid', 6),
(890.00, 90.00, '2025-08-24', '12:18:40', N'Paid', 94),
(115.00, 0.00, '2024-07-22', '09:50:33', N'Unpaid', 140),
(3400.00, 450.00, '2026-01-30', '15:22:18', N'Paid', 22),
(480.00, 30.00, '2025-02-27', '11:05:50', N'Partially Paid', 150),
(75.00, 0.00, '2024-11-12', '13:40:25', N'Rejected', 87),
(1950.00, 250.00, '2025-10-05', '16:12:05', N'Paid', 22),
(670.25, 0.00, '2025-04-01', '10:55:14', N'Unpaid', 115),

(230.00, 20.00, '2026-03-14', '14:20:45', N'Paid', 10),
(1550.00, 150.00, '2024-09-05', '12:35:30', N'Partially Paid', 13),
(380.00, 0.00, '2025-07-19', '11:15:18', N'Unpaid', 14),
(920.00, 100.00, '2024-06-06', '16:40:55', N'Paid', 132),
(105.50, 0.00, '2025-12-25', '09:22:12', N'Rejected', 51),
(2900.00, 350.00, '2026-05-05', '15:10:33', N'Paid', 73),
(560.00, 60.00, '2025-01-15', '13:45:20', N'Partially Paid', 125),
(130.00, 0.00, '2024-10-15', '10:05:42', N'Unpaid', 68),
(1780.00, 200.00, '2025-08-16', '11:55:15', N'Paid', 119),
(420.00, 40.00, '2024-07-14', '14:12:38', N'Paid', 31),

(85.00, 0.00, '2026-02-12', '17:30:05', N'Unpaid', 49),
(2400.00, 300.00, '2025-03-22', '09:45:50', N'Paid', 125),
(690.50, 70.00, '2024-11-22', '12:15:22', N'Partially Paid', 90),
(160.00, 0.00, '2025-09-12', '16:05:40', N'Rejected', 38),
(310.00, 20.00, '2024-08-27', '10:22:14', N'Paid', 108),
(1150.00, 120.00, '2026-04-19', '15:40:33', N'Paid', 55),
(520.00, 0.00, '2025-06-14', '13:12:55', N'Unpaid', 73),
(95.25, 0.00, '2025-10-29', '11:55:18', N'Rejected', 160),
(1380.00, 150.00, '2024-12-02', '14:30:25', N'Partially Paid', 15),
(460.00, 40.00, '2025-05-05', '16:45:12', N'Paid', 63),

(3200.00, 400.00, '2026-01-11', '10:15:50', N'Paid', 142),
(240.00, 0.00, '2024-09-29', '13:22:11', N'Unpaid', 150),
(710.00, 50.00, '2025-07-07', '15:40:35', N'Partially Paid', 15),
(115.00, 10.00, '2024-11-18', '09:05:22', N'Paid', 115),
(1650.00, 200.00, '2025-11-05', '11:55:14', N'Paid', 12),
(580.00, 0.00, '2026-03-30', '14:12:05', N'Unpaid', 105),
(90.00, 0.00, '2025-04-22', '16:35:40', N'Rejected', 88),
(2100.00, 250.00, '2024-08-14', '10:22:18', N'Partially Paid', 118),
(630.50, 60.00, '2025-12-14', '12:45:55', N'Paid', 110),
(140.00, 0.00, '2024-06-18', '13:18:30', N'Unpaid', 54),

(4100.00, 500.00, '2026-05-24', '15:55:12', N'Paid', 118),
(370.00, 30.00, '2025-02-20', '11:10:42', N'Partially Paid', 134),
(125.00, 0.00, '2024-10-01', '08:30:15', N'Unpaid', 92),
(1850.00, 200.00, '2025-09-05', '14:15:55', N'Paid', 150),
(520.00, 50.00, '2024-07-19', '16:45:20', N'Paid', 45),
(95.00, 0.00, '2026-02-14', '10:35:12', N'Rejected', 111),
(1450.00, 150.00, '2025-03-10', '12:18:40', N'Partially Paid', 8),
(310.25, 0.00, '2025-08-09', '09:50:33', N'Unpaid', 122),
(2700.00, 300.00, '2024-11-11', '15:22:18', N'Paid', 160),
(820.00, 80.00, '2025-10-22', '11:05:50', N'Paid', 74),

(190.00, 0.00, '2026-01-20', '13:40:25', N'Unpaid', 85),
(1350.00, 150.00, '2024-12-12', '16:12:05', N'Paid', 39),
(440.00, 40.00, '2025-06-12', '10:55:14', N'Partially Paid', 104);



USE Hospital_Management_SystemDB;
GO

-- Inserting another 89 distinct and verified records into Invoices
INSERT INTO Invoices (TotalAmount, DiscountAmount, IssueDate, IssueTime, BillingStatus, TreatmentID)
VALUES 
(250.00, 20.00, '2025-01-15', '08:15:22', N'Paid', 14),
(1800.00, 0.00, '2025-01-18', '11:45:10', N'Unpaid', 82),
(340.50, 30.00, '2025-02-10', '14:20:35', N'Partially Paid', 3),
(95.00, 0.00, '2025-02-28', '16:10:05', N'Rejected', 44),
(1250.00, 150.00, '2025-03-14', '09:05:42', N'Paid', 67),
(410.00, 0.00, '2025-03-22', '13:50:18', N'Unpaid', 22),
(2900.00, 300.00, '2025-04-05', '10:30:25', N'Paid', 90),
(150.00, 0.00, '2025-04-20', '17:15:50', N'Rejected', 11),
(620.75, 50.00, '2025-05-12', '12:00:11', N'Partially Paid', 55),
(880.00, 80.00, '2025-05-25', '15:25:33', N'Paid', 73),

(195.00, 0.00, '2025-06-02', '19:40:12', N'Unpaid', 19),
(3400.00, 400.00, '2025-06-15', '08:45:55', N'Paid', 61),
(530.00, 40.00, '2025-07-04', '11:12:04', N'Partially Paid', 8),
(720.00, 0.00, '2025-07-19', '14:55:21', N'Unpaid', 49),
(1650.00, 150.00, '2025-08-11', '16:05:47', N'Paid', 34),
(110.50, 0.00, '2025-08-30', '09:22:18', N'Rejected', 95),
(2150.00, 250.00, '2025-09-05', '10:10:30', N'Paid', 50),
(480.00, 30.00, '2025-09-22', '13:42:15', N'Partially Paid', 12),
(310.00, 0.00, '2025-10-01', '15:18:44', N'Unpaid', 88),
(1380.00, 120.00, '2025-10-18', '11:05:22', N'Paid', 27),

(450.00, 20.00, '2025-11-04', '14:35:50', N'Partially Paid', 41),
(850.00, 0.00, '2025-11-20', '09:12:05', N'Unpaid', 70),
(175.25, 0.00, '2025-12-05', '16:50:14', N'Rejected', 6),
(2700.00, 350.00, '2025-12-15', '10:40:22', N'Paid', 83),
(590.00, 50.00, '2026-01-02', '12:15:33', N'Paid', 52),
(130.00, 0.00, '2026-01-18', '13:02:11', N'Unpaid', 16),
(920.00, 100.00, '2026-02-05', '15:45:55', N'Partially Paid', 99),
(280.00, 0.00, '2026-02-20', '17:10:04', N'Rejected', 23),
(1950.00, 200.00, '2026-03-02', '11:22:18', N'Paid', 77),
(680.00, 60.00, '2026-03-19', '08:50:40', N'Paid', 35),

(510.50, 0.00, '2025-01-25', '14:05:12', N'Unpaid', 64),
(160.00, 10.00, '2025-02-05', '16:30:25', N'Paid', 13),
(2400.00, 300.00, '2025-02-22', '10:15:44', N'Partially Paid', 80),
(820.00, 80.00, '2025-03-10', '12:55:19', N'Paid', 46),
(125.00, 0.00, '2025-03-28', '09:40:02', N'Unpaid', 92),
(3100.00, 400.00, '2025-04-12', '15:10:35', N'Paid', 29),
(460.00, 30.00, '2025-04-29', '11:18:50', N'Partially Paid', 5),
(85.00, 0.00, '2025-05-15', '13:22:14', N'Rejected', 71),
(1850.00, 250.00, '2025-06-01', '16:05:40', N'Paid', 48),
(640.25, 0.00, '2025-06-18', '10:45:11', N'Unpaid', 86),

(210.00, 15.00, '2025-07-05', '14:55:30', N'Paid', 21),
(1480.00, 120.00, '2025-07-22', '12:22:45', N'Partially Paid', 57),
(390.00, 0.00, '2025-08-14', '11:05:12', N'Unpaid', 94),
(890.00, 90.00, '2025-08-28', '16:35:04', N'Paid', 38),
(95.50, 0.00, '2025-09-12', '09:15:55', N'Rejected', 12),
(2650.00, 300.00, '2025-09-30', '15:40:22', N'Paid', 66),
(540.00, 50.00, '2025-10-10', '13:30:14', N'Partially Paid', 43),
(120.00, 0.00, '2025-10-25', '10:12:44', N'Unpaid', 89),
(1690.00, 180.00, '2025-11-12', '11:45:05', N'Paid', 18),
(450.00, 40.00, '2025-11-28', '14:20:18', N'Paid', 75),

(75.00, 0.00, '2025-12-10', '17:15:33', N'Unpaid', 2),
(2200.00, 250.00, '2025-12-24', '09:35:10', N'Paid', 51),
(640.50, 60.00, '2026-01-08', '12:05:55', N'Partially Paid', 97),
(140.00, 0.00, '2026-01-25', '16:40:12', N'Rejected', 30),
(330.00, 20.00, '2026-02-12', '10:11:42', N'Paid', 79),
(1080.00, 100.00, '2026-02-26', '15:22:05', N'Paid', 14),
(490.00, 0.00, '2026-03-10', '13:05:50', N'Unpaid', 60),
(88.25, 0.00, '2026-03-25', '11:45:13', N'Rejected', 25),
(1420.00, 150.00, '2026-04-05', '14:12:38', N'Partially Paid', 84),
(430.00, 30.00, '2026-04-22', '16:55:01', N'Paid', 40),

(3100.00, 400.00, '2025-02-15', '10:05:44', N'Paid', 93),
(220.00, 0.00, '2025-03-05', '13:15:22', N'Unpaid', 9),
(680.00, 50.00, '2025-04-18', '15:30:11', N'Partially Paid', 72),
(110.00, 10.00, '2025-05-02', '09:12:05', N'Paid', 33),
(1580.00, 180.00, '2025-06-14', '11:45:40', N'Paid', 85),
(550.00, 0.00, '2025-07-28', '14:22:15', N'Unpaid', 17),
(85.00, 0.00, '2025-08-05', '16:50:33', N'Rejected', 53),
(1980.00, 220.00, '2025-09-19', '10:15:14', N'Partially Paid', 65),
(610.50, 50.00, '2025-10-02', '12:35:55', N'Paid', 47),
(135.00, 0.00, '2025-11-15', '13:10:02', N'Unpaid', 91),

(3900.00, 500.00, '2025-12-01', '15:45:20', N'Paid', 26),
(350.00, 30.00, '2026-01-14', '11:05:14', N'Partially Paid', 59),
(115.00, 0.00, '2026-02-18', '08:55:33', N'Unpaid', 96),
(1720.00, 200.00, '2026-03-05', '14:22:18', N'Paid', 31),
(490.00, 40.00, '2026-04-12', '16:35:50', N'Paid', 69),
(90.00, 0.00, '2026-05-02', '10:15:11', N'Rejected', 4),
(1380.00, 120.00, '2026-05-18', '12:45:40', N'Partially Paid', 42),
(295.25, 0.00, '2026-05-28', '09:20:05', N'Unpaid', 81),
(2500.00, 300.00, '2025-04-15', '15:12:33', N'Paid', 15),
(790.00, 70.00, '2025-08-20', '11:55:14', N'Paid', 76),

(180.00, 0.00, '2025-11-11', '13:30:25', N'Unpaid', 87),
(1280.00, 100.00, '2026-01-30', '16:05:12', N'Paid', 20),
(420.00, 30.00, '2026-03-30', '10:45:55', N'Partially Paid', 63),
(910.00, 90.00, '2025-06-10', '11:20:45', N'Paid', 142),
(150.00, 0.00, '2025-06-20', '14:35:12', N'Unpaid', 15),
(780.00, 50.00, '2025-07-02', '16:15:30', N'Partially Paid', 88),
(120.00, 10.00, '2025-07-15', '09:05:22', N'Paid', 63),
(1650.00, 200.00, '2025-08-01', '11:55:14', N'Paid', 12),
(540.00, 0.00, '2025-08-18', '13:12:05', N'Unpaid', 104);













USE Hospital_Management_SystemDB;
GO

-- Inserting 89 sequential records into Invoices_Details starting from InvoiceID = 65
INSERT INTO Invoices_Details (ItemType, InvoiceID, Quantity, UnitPrice)
VALUES 
(N'Medication - Amoxicillin 500mg', 65, 2, 18.50),
(N'Room Rental - ICU Room 12', 66, NULL, NULL),
(N'Medication - Paracetamol 1g', 67, 3, 5.00),
(N'Room Rental-General', 68, NULL, NULL),
(N'Medication - Lipitor 20mg', 69, 1, 45.25),
(N'Room Rental - Private Room 22', 70, NULL, NULL),
(N'Medication - Metformin 850mg', 71, 2, 12.00),
(N'Room Rental - Surgical Ward Room 14', 72, NULL, NULL),
(N'Medication - Ibuprofen 400mg', 73, 1, 8.50),
(N'Room Rental - Pediatric Ward Room 8', 74, NULL, NULL),

(N'Medication - Omeprazole 20mg', 75, 2, 22.00),
(N'Room Rental - Emergency Room Bed 3', 76, NULL, NULL),
(N'Medication - Augmentin 1g', 77, 1, 55.00),
(N'Room Rental - ICU Room 4', 78, NULL, NULL),
(N'Medication - Ventolin Inhaler', 79, 1, 35.00),
(N'Room Rental - Isolation Room 10', 80, NULL, NULL),
(N'Medication - Nexium 40mg', 81, 2, 60.50),
(N'Room Rental - General Ward Room 12', 82, NULL, NULL),
(N'Medication - Plavix 75mg', 83, 1, 90.00),
(N'Room Rental - Private Room 5', 84, NULL, NULL),

(N'Medication - Panadol Joint', 85, 3, 11.25),
(N'Room Rental - VIP Suite Room 1', 86, NULL, NULL),
(N'Medication - Zyrtec 10mg', 87, 1, 15.00),
(N'Room Rental - Recovery Room Bed 2', 88, NULL, NULL),
(N'Medication - Voltaren Emulgel', 89, 2, 24.50),
(N'Room Rental - Surgical Ward Room 40', 90, NULL, NULL),
(N'Medication - Clexane 40mg', 91, 5, 40.00),
(N'Room Rental - ICU Room 15', 92, NULL, NULL),
(N'Medication - Aspirin 81mg', 93, 1, 4.50),
(N'Room Rental - Private Room 18', 94, NULL, NULL),

(N'Medication - Concor 5mg', 95, 2, 28.00),
(N'Room Rental - General Ward Room 19', 96, NULL, NULL),
(N'Medication - Diamicron 60mg', 97, 1, 32.10),
(N'Room Rental - Pediatric Ward Room 2', 98, NULL, NULL),
(N'Medication - Lasix 40mg', 99, 2, 9.00),
(N'Room Rental - Emergency Room Bed 1', 100, NULL, NULL),
(N'Medication - Januvia 100mg', 65, 1, 110.00),
(N'Room Rental - ICU Room 7', 66, NULL, NULL),
(N'Medication - Gupisone 5mg', 67, 3, 7.00),
(N'Room Rental - Private Room 31', 68, NULL, NULL),

(N'Medication - Brufen 600mg', 69, 2, 19.50),
(N'Room Rental - Isolation Room 2', 70, NULL, NULL),
(N'Medication - Solupred 20mg', 71, 1, 21.00),
(N'Room Rental - Surgical Ward Room 11', 72, NULL, NULL),
(N'Medication - Crestor 10mg', 73, 1, 65.00),
(N'Room Rental - General Ward Room 25', 74, NULL, NULL),
(N'Medication - Claritin 10mg', 75, 2, 16.50),
(N'Room Rental - ICU Room 9', 76, NULL, NULL),
(N'Medication - Profenid 100mg', 77, 1, 14.00),
(N'Room Rental - Private Room 14', 78, NULL, NULL),

(N'Medication - Atorva 20mg', 79, 2, 38.00),
(N'Room Rental - VIP Suite Room 3', 80, NULL, NULL),
(N'Medication - Rocephin 1g Injection', 81, 4, 45.00),
(N'Room Rental - Pediatric Ward Room 11', 82, NULL, NULL),
(N'Medication - Keppra 500mg', 83, 1, 85.00),
(N'Room Rental - Emergency Room Bed 5', 84, NULL, NULL),
(N'Medication - Xanax 0.5mg', 85, 1, 30.00),
(N'Room Rental - Surgical Ward Room 33', 86, NULL, NULL),
(N'Medication - Cataflam 50mg', 87, 2, 13.50),
(N'Room Rental - General Ward Room 8', 88, NULL, NULL),

(N'Medication - Euthyrox 50mcg', 89, 1, 25.00),
(N'Room Rental - ICU Room 3', 90, NULL, NULL),
(N'Medication - Glucophage 1000mg', 91, 3, 15.00),
(N'Room Rental - Private Room 45', 92, NULL, NULL),
(N'Medication - Exforge 5/160mg', 93, 1, 95.00),
(N'Room Rental - Isolation Room 5', 94, NULL, NULL),
(N'Medication - Nebilet 5mg', 95, 2, 42.00),
(N'Room Rental - Recovery Room Bed 4', 96, NULL, NULL),
(N'Medication - Duspatalin Retard', 97, 1, 33.50),
(N'Room Rental - General Ward Room 30', 98, NULL, NULL),

(N'Medication - Daonil 5mg', 99, 2, 11.00),
(N'Room Rental - Surgical Ward Room 15', 100, NULL, NULL),
(N'Medication - Spasfon Tablet', 65, 3, 8.00),
(N'Room Rental - Pediatric Ward Room 6', 66, NULL, NULL),
(N'Medication - Coversyl 5mg', 67, 1, 52.00),
(N'Room Rental - Emergency Room Bed 9', 68, NULL, NULL),
(N'Medication - Telfast 180mg', 69, 1, 27.00),
(N'Room Rental - ICU Room 21', 70, NULL, NULL),
(N'Medication - Buscopan 10mg', 71, 2, 10.50),
(N'Room Rental - Private Room 10', 72, NULL, NULL),

(N'Medication - Mobic 15mg', 73, 1, 23.00),
(N'Room Rental - General Ward Room 1', 74, NULL, NULL),
(N'Medication - Cialis 20mg', 75, 1, 70.00),
(N'Room Rental - VIP Suite Room 2', 76, NULL, NULL),
(N'Medication - Klacid 500mg', 77, 2, 64.00),
(N'Room Rental - Surgical Ward Room 9', 78, NULL, NULL),
(N'Medication - Symbicort Turbuhaler', 79, 1, 120.00),
(N'Room Rental - ICU Room 2', 80, NULL, NULL),
(N'Medication - Aerius 5mg', 81, 2, 18.00);


USE Hospital_Management_SystemDB;
GO

-- Inserting another 83 unique and verified records into Invoices_Details
INSERT INTO Invoices_Details (ItemType, InvoiceID, Quantity, UnitPrice)
VALUES 
(N'Medication - Vitamin C 1000mg', 65, 1, 12.50),
(N'Room Rental - Cardiology Ward Room 3', 66, NULL, NULL),
(N'Medication - Omega 3 Fish Oil', 67, 2, 28.00),
(N'Room Rental - Neurology Clinic Bed 1', 68, NULL, NULL),
(N'Medication - Vitamin D3 5000 IU', 69, 1, 19.75),
(N'Room Rental - VIP Suite Room 4', 70, NULL, NULL),
(N'Medication - Magnesium Citrate', 71, 1, 22.40),
(N'Room Rental - Orthopedic Ward Room 12', 72, NULL, NULL),
(N'Medication - Zinc 50mg Tablets', 73, 3, 9.15),
(N'Room Rental - Maternity Ward Room 7', 74, NULL, NULL),

(N'Medication - Glucosamine Chondroitin', 75, 1, 45.00),
(N'Room Rental - Burn Unit Private Bed 2', 76, NULL, NULL),
(N'Medication - Iron Complex 65mg', 77, 2, 14.20),
(N'Room Rental - CCU Intensive Bed 5', 78, NULL, NULL),
(N'Medication - Calcium Carbonate 600mg', 79, 1, 11.00),
(N'Room Rental - Day Surgery Recovery 3', 80, NULL, NULL),
(N'Medication - B-Complex High Potency', 81, 2, 16.50),
(N'Room Rental - Endoscopy Private Room 1', 82, NULL, NULL),
(N'Medication - Probiotics 10 Billion', 83, 1, 35.00),
(N'Room Rental - Physiotherapy Room B', 84, NULL, NULL),

(N'Medication - Folic Acid 400mcg', 85, 3, 6.50),
(N'Room Rental - Dialysis Station Bed 8', 86, NULL, NULL),
(N'Medication - Biotin 10000mcg', 87, 1, 24.00),
(N'Room Rental - Chemotherapy Day Bed 4', 88, NULL, NULL),
(N'Medication - CoQ10 100mg Capsule', 89, 1, 55.30),
(N'Room Rental - ENT Clinic Treatment Room', 90, NULL, NULL),
(N'Medication - Melatonin 5mg Gummie', 91, 2, 18.00),
(N'Room Rental - Ophthalmology Room 2', 92, NULL, NULL),
(N'Medication - Collagen Peptides Powder', 93, 1, 49.90),
(N'Room Rental - Dermatology Ward Room 6', 94, NULL, NULL),

(N'Medication - Echinacea Immune Support', 95, 2, 13.25),
(N'Room Rental - Executive Health Suite 5', 96, NULL, NULL),
(N'Medication - Elderberry Extract Syrup', 97, 1, 21.10),
(N'Room Rental - Neonatal ICU Incubator 2', 98, NULL, NULL),
(N'Medication - Ashwagandha 500mg', 99, 2, 26.00),
(N'Room Rental - Trauma Bay Emergency Bed', 100, NULL, NULL),
(N'Medication - Turmeric Curcumin 1000mg', 65, 1, 31.50),
(N'Room Rental - Isolation Ward Room B1', 66, NULL, NULL),
(N'Medication - Ginger Root 550mg', 67, 3, 8.40),
(N'Room Rental - Psychiatric Secure Room 3', 68, NULL, NULL),

(N'Medication - Garlic Odorless 1000mg', 69, 2, 11.20),
(N'Room Rental - Respiratory Isolation 4', 70, NULL, NULL),
(N'Medication - Milk Thistle Liver Care', 71, 1, 23.50),
(N'Room Rental - Geriatric Ward Room 18', 72, NULL, NULL),
(N'Medication - Cranberry Urinary Health', 73, 1, 17.80),
(N'Room Rental - Observation Ward Bed 11', 74, NULL, NULL),
(N'Medication - Ginkgo Biloba 120mg', 75, 2, 19.90),
(N'Room Rental - Pediatric ICU Bed 3', 76, NULL, NULL),
(N'Medication - Saw Palmetto Prostate', 77, 1, 25.00),
(N'Room Rental - VIP Suite Room 5', 78, NULL, NULL),

(N'Medication - Apple Cider Vinegar', 79, 2, 15.00),
(N'Room Rental - Outpatient Recovery Bed 9', 80, NULL, NULL),
(N'Medication - Green Tea Extract 500mg', 81, 1, 14.50),
(N'Room Rental - General Ward Room 44', 82, NULL, NULL),
(N'Medication - Hyaluronic Acid Joint', 83, 1, 38.00),
(N'Room Rental - Private Luxury Room 101', 84, NULL, NULL),
(N'Medication - Alpha Lipoic Acid 600mg', 85, 2, 29.10),
(N'Room Rental - Surgical Recovery Room 2', 86, NULL, NULL),
(N'Medication - L-Theanine 200mg Stress', 87, 1, 20.00),
(N'Room Rental - Semi-Private Room 202A', 88, NULL, NULL),

(N'Medication - 5-HTP Mood Support 100mg', 89, 1, 27.50),
(N'Room Rental - Cardiac Rehab Station 1', 90, NULL, NULL),
(N'Medication - Valerian Root Sleep Blend', 91, 3, 12.00),
(N'Room Rental - Private Room 105', 92, NULL, NULL),
(N'Medication - Flaxseed Oil 1000mg', 93, 1, 13.40),
(N'Room Rental - Clinical Research Room 4', 94, NULL, NULL),
(N'Medication - Krill Oil Pure 500mg', 95, 2, 34.20),
(N'Room Rental - General Ward Room 15', 96, NULL, NULL),
(N'Medication - Red Yeast Rice 600mg', 97, 1, 22.00),
(N'Room Rental - Pediatric Ward Room 14', 98, NULL, NULL),

(N'Medication - Beet Root Blood Pressure', 99, 2, 16.80),
(N'Room Rental - Surgical ICU Bed 1', 100, NULL, NULL),
(N'Medication - Spirulina Organic 500mg', 65, 3, 15.00),
(N'Room Rental - Orthopedic Clinic Room 3', 66, NULL, NULL),
(N'Medication - Chlorella Superfood', 67, 1, 18.90),
(N'Room Rental - Private Room 310', 68, NULL, NULL),
(N'Medication - Maca Root Energy 500mg', 69, 1, 14.00),
(N'Room Rental - Urology Care Bed 2', 70, NULL, NULL),
(N'Medication - Ginseng Complex Vitality', 71, 2, 21.50),
(N'Room Rental - General Ward Room 50', 72, NULL, NULL),

(N'Medication - Aloe Vera Inner Leaf', 73, 1, 11.10),
(N'Room Rental - Neurology Intensive Bed 3', 74, NULL, NULL),
(N'Medication - Peppermint Oil Digestion', 75, 2, 9.80);



USE Hospital_Management_SystemDB;
GO

-- Inserting 83 unique and verified records into Payments
INSERT INTO Payments (AmountPaid, PaymentDate, PaymentTime, PaymentMethod, InvoiceID, PatientID)
VALUES 
(250.00, '2025-01-15', '08:30:00', N'Cash', 65, 1),
(1800.00, '2025-01-18', '11:55:12', N'Card', 66, 2),
(310.50, '2025-02-10', '14:35:22', N'Online', 67, 3),
(95.00, '2025-02-28', '16:20:05', N'Cash', 68, 4),
(1100.00, '2025-03-14', '09:15:42', N'Card', 69, 5),
(410.00, '2025-03-22', '14:02:18', N'Online', 70, 6),
(2600.00, '2025-04-05', '10:45:30', N'Card', 71, 7),
(150.00, '2025-04-20', '17:30:11', N'Cash', 72, 8),
(570.75, '2025-05-12', '12:15:00', N'Online', 73, 9),
(800.00, '2025-05-25', '15:40:22', N'Card', 74, 10),

(195.00, '2025-06-02', '19:50:11', N'Cash', 75, 11),
(3000.00, '2025-06-15', '08:55:45', N'Online', 76, 12),
(490.00, '2025-07-04', '11:25:04', N'Card', 77, 13),
(720.00, '2025-07-19', '15:10:21', N'Cash', 78, 14),
(1500.00, '2025-08-11', '16:22:30', N'Online', 79, 15),
(110.50, '2025-08-30', '09:35:18', N'Card', 80, 16),
(1900.00, '2025-09-05', '10:25:00', N'Cash', 81, 17),
(450.00, '2025-09-22', '13:55:15', N'Online', 82, 18),
(310.00, '2025-10-01', '15:30:44', N'Card', 83, 19),
(1260.00, '2025-10-18', '11:20:02', N'Cash', 84, 20),

(430.00, '2025-11-04', '14:50:50', N'Online', 85, 21),
(850.00, '2025-11-20', '09:25:05', N'Card', 86, 22),
(175.25, '2025-12-05', '17:05:14', N'Cash', 87, 23),
(2350.00, '2025-12-15', '10:55:22', N'Online', 88, 24),
(540.00, '2026-01-02', '12:30:33', N'Card', 89, 25),
(130.00, '2026-01-18', '13:15:11', N'Cash', 90, 26),
(820.00, '2026-02-05', '16:02:55', N'Online', 91, 27),
(280.00, '2026-02-20', '17:25:04', N'Card', 92, 28),
(1750.00, '2026-03-02', '11:40:18', N'Cash', 93, 29),
(620.00, '2026-03-19', '09:05:40', N'Online', 94, 30),

(510.50, '2025-01-25', '14:20:12', N'Card', 95, 31),
(150.00, '2025-02-05', '16:45:25', N'Cash', 96, 32),
(2100.00, '2025-02-22', '10:30:44', N'Online', 97, 33),
(740.00, '2025-03-10', '13:10:19', N'Card', 98, 34),
(125.00, '2025-03-28', '09:55:02', N'Cash', 99, 35),
(2700.00, '2025-04-12', '15:25:35', N'Online', 100, 36),
(430.00, '2025-04-29', '11:35:50', N'Card', 101, 37),
(85.00, '2025-05-15', '13:40:14', N'Cash', 102, 38),
(1600.00, '2025-06-01', '16:20:40', N'Online', 103, 39),
(640.25, '2025-06-18', '11:02:11', N'Card', 104, 40),

(210.00, '2025-07-05', '15:10:30', N'Cash', 105, 41),
(1360.00, '2025-07-22', '12:35:45', N'Online', 106, 42),
(390.00, '2025-08-14', '11:20:12', N'Card', 107, 43),
(800.00, '2025-08-28', '16:50:04', N'Cash', 108, 44),
(95.50, '2025-09-12', '09:30:55', N'Online', 109, 45),
(2350.00, '2025-09-30', '15:55:22', N'Card', 110, 46),
(490.00, '2025-10-10', '13:45:14', N'Cash', 111, 47),
(120.00, '2025-10-25', '10:30:44', N'Online', 112, 48),
(1510.00, '2025-11-12', '12:00:05', N'Card', 113, 49),
(410.00, '2025-11-28', '14:35:18', N'Cash', 114, 50),

(75.00, '2025-12-10', '17:30:33', N'Online', 115, 1),
(1950.00, '2025-12-24', '09:50:10', N'Card', 116, 2),
(580.50, '2026-01-08', '12:20:55', N'Cash', 117, 3),
(140.00, '2026-01-25', '16:55:12', N'Online', 118, 4),
(310.00, '2026-02-12', '10:25:42', N'Card', 119, 5),
(980.00, '2026-02-26', '15:35:05', N'Cash', 120, 6),
(490.00, '2026-03-10', '13:20:50', N'Online', 121, 7),
(88.25, '2026-03-25', '12:00:13', N'Card', 122, 8),
(1270.00, '2026-04-05', '14:25:38', N'Cash', 123, 9),
(400.00, '2026-04-22', '17:10:01', N'Online', 124, 10),

(2700.00, '2025-02-15', '10:20:44', N'Card', 125, 11),
(220.00, '2025-03-05', '13:30:22', N'Cash', 126, 12),
(630.00, '2025-04-18', '15:45:11', N'Online', 127, 13),
(100.00, '2025-05-02', '09:25:05', N'Card', 128, 14),
(1400.00, '2025-06-14', '12:00:40', N'Cash', 129, 15),
(550.00, '2025-07-28', '14:35:15', N'Online', 130, 16),
(85.00, '2025-08-05', '17:05:33', N'Card', 131, 17),
(1760.00, '2025-09-19', '10:30:14', N'Cash', 132, 18),
(560.50, '2025-10-02', '12:50:55', N'Online', 133, 19),
(135.00, '2025-11-15', '13:25:02', N'Card', 134, 20),

(3400.00, '2025-12-01', '16:00:20', N'Cash', 135, 21),
(320.00, '2026-01-14', '11:20:14', N'Online', 136, 22),
(115.00, '2026-02-18', '09:10:33', N'Card', 137, 23),
(1520.00, '2026-03-05', '14:35:18', N'Cash', 138, 24),
(450.00, '2026-04-12', '16:50:50', N'Online', 139, 25),
(90.00, '2026-05-02', '10:30:11', N'Card', 140, 26),
(1260.00, '2026-05-18', '13:00:40', N'Cash', 141, 27),
(295.25, '2026-05-28', '09:35:05', N'Online', 142, 28),
(2200.00, '2025-04-15', '15:25:33', N'Card', 143, 29),
(720.00, '2025-08-20', '12:10:14', N'Cash', 144, 30),

(180.00, '2025-11-11', '13:45:25', N'Online', 145, 31),
(1180.00, '2026-01-30', '16:20:12', N'Card', 146, 32),
(390.00, '2026-03-30', '11:00:55', N'Cash', 147, 33);
GO




USE Hospital_Management_SystemDB;
GO

-- Inserting 89 randomized and unique records into Payments
INSERT INTO Payments (AmountPaid, PaymentDate, PaymentTime, PaymentMethod, InvoiceID, PatientID)
VALUES 
(450.00, '2025-01-20', '09:15:00', N'Card', 88, 14),
(120.00, '2025-01-22', '14:30:25', N'Cash', 112, 3),
(2300.00, '2025-02-02', '11:12:40', N'Online', 65, 29),
(85.50, '2025-02-15', '16:45:10', N'Cash', 134, 40),
(670.00, '2025-03-01', '10:20:33', N'Card', 92, 5),
(1450.00, '2025-03-18', '13:55:12', N'Online', 145, 22),
(310.00, '2025-04-02', '08:40:19', N'Card', 73, 11),
(95.00, '2025-04-14', '15:10:02', N'Cash', 119, 18),
(1850.00, '2025-05-01', '12:25:44', N'Online', 104, 33),
(400.00, '2025-05-19', '17:02:50', N'Card', 81, 7),

(220.00, '2025-06-05', '11:35:14', N'Cash', 127, 45),
(3100.00, '2025-06-20', '10:50:22', N'Online', 140, 12),
(540.00, '2025-07-01', '14:15:05', N'Card', 68, 2),
(1250.00, '2025-07-15', '09:00:30', N'Cash', 101, 37),
(90.00, '2025-08-02', '16:30:44', N'Online', 85, 20),
(780.00, '2025-08-22', '11:10:15', N'Card', 116, 9),
(160.00, '2025-09-01', '15:40:22', N'Cash', 77, 16),
(2400.00, '2025-09-15', '13:22:01', N'Online', 131, 26),
(350.00, '2025-10-05', '09:45:55', N'Card', 99, 1),
(115.00, '2025-10-20', '17:15:12', N'Cash', 123, 15),

(930.00, '2025-11-02', '12:05:40', N'Online', 149, 31),
(1200.00, '2025-11-18', '14:50:04', N'Card', 70, 8),
(85.00, '2025-12-01', '10:15:33', N'Cash', 106, 24),
(1750.00, '2025-12-14', '16:10:25', N'Online', 89, 4),
(620.00, '2026-01-05', '11:25:42', N'Card', 138, 42),
(130.00, '2026-01-22', '13:02:11', N'Cash', 122, 19),
(210.00, '2026-02-02', '15:35:50', N'Online', 75, 10),
(2800.00, '2026-02-18', '09:55:00', N'Card', 143, 35),
(410.25, '2026-03-01', '14:20:18', N'Cash', 95, 23),
(1360.00, '2026-03-15', '11:40:33', N'Online', 110, 48),

(550.00, '2025-01-28', '16:05:12', N'Card', 125, 6),
(175.00, '2025-02-11', '08:50:44', N'Cash', 79, 17),
(1900.00, '2025-03-05', '13:15:22', N'Online', 107, 27),
(320.00, '2025-03-25', '15:30:01', N'Card', 136, 50),
(95.50, '2025-04-10', '10:10:55', N'Cash', 66, 13),
(1600.00, '2025-04-26', '12:45:14', N'Online', 98, 44),
(740.00, '2025-05-08', '14:02:40', N'Card', 147, 8),
(110.00, '2025-05-22', '17:22:11', N'Cash', 82, 39),
(2200.00, '2025-06-11', '09:55:30', N'Online', 115, 21),
(430.00, '2025-06-28', '11:30:05', N'Card', 133, 2),

(125.00, '2025-07-10', '15:25:42', N'Cash', 72, 32),
(2700.00, '2025-07-26', '13:10:18', N'Online', 103, 11),
(490.00, '2025-08-05', '10:40:50', N'Card', 121, 47),
(800.00, '2025-08-19', '16:15:11', N'Cash', 90, 25),
(640.00, '2025-09-04', '14:20:33', N'Online', 144, 3),
(150.00, '2025-09-20', '08:35:02', N'Card', 76, 14),
(1350.00, '2025-10-12', '11:55:40', N'Cash', 109, 36),
(390.00, '2025-10-28', '15:02:18', N'Online', 128, 41),
(980.00, '2025-11-05', '12:10:25', N'Card', 84, 15),
(180.00, '2025-11-22', '17:45:04', N'Cash', 139, 28),

(1510.00, '2025-12-03', '09:30:55', N'Online', 69, 49),
(310.50, '2025-12-19', '13:12:11', N'Card', 113, 10),
(75.00, '2026-01-08', '16:40:33', N'Cash', 94, 34),
(1950.00, '2026-01-26', '10:22:05', N'Online', 142, 43),
(580.00, '2026-02-11', '14:55:12', N'Card', 78, 5),
(140.00, '2026-02-25', '11:05:44', N'Cash', 117, 20),
(1270.00, '2026-03-08', '15:30:19', N'Online', 100, 46),
(400.00, '2026-03-22', '09:15:50', N'Card', 135, 1),
(88.00, '2026-04-02', '13:40:14', N'Cash', 87, 30),
(2600.00, '2026-04-18', '16:20:42', N'Online', 120, 17),

(570.00, '2025-02-20', '10:45:00', N'Card', 148, 24),
(150.00, '2025-03-12', '14:10:55', N'Cash', 67, 38),
(1100.00, '2025-04-05', '11:25:12', N'Online', 105, 9),
(410.00, '2025-04-22', '16:02:44', N'Card', 126, 32),
(195.00, '2025-05-10', '09:35:05', N'Cash', 74, 15),
(3000.00, '2025-05-28', '13:50:18', N'Online', 111, 41),
(720.00, '2025-06-14', '15:15:30', N'Card', 91, 3),
(1500.00, '2025-07-02', '11:00:44', N'Cash', 137, 27),
(310.00, '2025-07-20', '12:40:22', N'Online', 80, 13),
(1260.00, '2025-08-08', '16:55:11', N'Card', 114, 44),

(430.00, '2025-08-25', '10:15:02', N'Cash', 130, 7),
(850.00, '2025-09-11', '14:35:40', N'Online', 96, 21),
(175.00, '2025-09-28', '11:20:14', N'Card', 71, 36),
(2350.00, '2025-10-15', '15:45:05', N'Cash', 118, 50),
(130.00, '2025-11-01', '09:05:33', N'Online', 141, 11),
(820.00, '2025-11-19', '13:25:55', N'Card', 83, 25),
(280.00, '2025-12-05', '16:02:12', N'Cash', 124, 4),
(1750.00, '2025-12-22', '10:50:44', N'Online', 102, 18),
(620.00, '2026-01-10', '14:15:18', N'Card', 146, 29),
(510.00, '2026-01-28', '11:35:02', N'Cash', 72, 42),

(2100.00, '2026-02-14', '15:25:40', N'Online', 108, 6),
(740.00, '2026-03-02', '09:10:11', N'Card', 129, 34),
(2700.00, '2026-03-20', '13:45:35', N'Cash', 86, 19),
(85.00, '2026-04-05', '16:00:50', N'Online', 132, 23),
(1600.00, '2026-04-25', '11:20:14', N'Card', 97, 47),
(640.50, '2026-05-02', '14:50:05', N'Cash', 146, 12),
(1360.00, '2026-05-15', '10:30:22', N'Online', 79, 35),
(390.00, '2026-05-25', '12:15:45', N'Card', 122, 8),
(800.00, '2026-06-02', '15:10:11', N'Cash', 105, 49);
GO






USE Hospital_Management_SystemDB;
GO

-- Inserting 93 unique phone records for 55 Doctors
INSERT INTO Doctors_Phones (Phone, DoctorID)
VALUES 
(N'+966501234561', 1),
(N'+966501234562', 2),
(N'+966501234563', 3),
(N'+966501234564', 4),
(N'+966501234565', 5),
(N'+966501234566', 6),
(N'+966501234567', 7),
(N'+966501234568', 8),
(N'+966501234569', 9),
(N'+966501234570', 10),

(N'+966501234571', 11),
(N'+966501234572', 12),
(N'+966501234573', 13),
(N'+966501234574', 14),
(N'+966501234575', 15),
(N'+966501234576', 16),
(N'+966501234577', 17),
(N'+966501234578', 18),
(N'+966501234579', 19),
(N'+966501234580', 20),

(N'+966551234581', 21),
(N'+966551234582', 22),
(N'+966551234583', 23),
(N'+966551234584', 24),
(N'+966551234585', 25),
(N'+966551234586', 26),
(N'+966551234587', 27),
(N'+966551234588', 28),
(N'+966551234589', 29),
(N'+966551234590', 30),

(N'+966551234591', 31),
(N'+966551234592', 32),
(N'+966551234593', 33),
(N'+966551234594', 34),
(N'+966551234595', 35),
(N'+966551234596', 36),
(N'+966551234597', 37),
(N'+966551234598', 38),
(N'+966551234599', 39),
(N'+966551234600', 40),

(N'0561234501', 41),
(N'0561234502', 42),
(N'0561234503', 43),
(N'0561234504', 44),
(N'0561234505', 45),
(N'0561234506', 46),
(N'0561234507', 47),
(N'0561234508', 48),
(N'0561234509', 49),
(N'0561234510', 50),

(N'0541234551', 51),
(N'0541234552', 52),
(N'0541234553', 53),
(N'0541234554', 54),
(N'0541234555', 55),

(N'0509988771', 5),
(N'0509988772', 12),
(N'0509988773', 19),
(N'0509988774', 24),
(N'0509988775', 33),
(N'0509988776', 45),
(N'0509988777', 8),
(N'0509988778', 14),
(N'0509988779', 52),
(N'0509988780', 2),

(N'0558877661', 11),
(N'0558877662', 27),
(N'0558877663', 39),
(N'0558877664', 41),
(N'0558877665', 50),
(N'0558877666', 4),
(N'0558877667', 17),
(N'0558877668', 22),
(N'0558877669', 31),
(N'0558877670', 48),

(N'0567766551', 3),
(N'0567766552', 15),
(N'0567766553', 29),
(N'0567766554', 36),
(N'0567766555', 54),
(N'0567766556', 7),
(N'0567766557', 13),
(N'0567766558', 25),
(N'0567766559', 38),
(N'0567766560', 44),

(N'0546655441', 1),
(N'0546655442', 10),
(N'0546655443', 20),
(N'0546655444', 30),
(N'0546655445', 40),
(N'0546655446', 55),
(N'0546655447', 6),
(N'0546655448', 18),
(N'0546655449', 23),
(N'0546655450', 35),

(N'0531122334', 49),
(N'0531122335', 53),
(N'0531122336', 16);
GO





USE Hospital_Management_SystemDB;
GO

---- Inserting 93 randomized and unique phone records for Patients (Max ID: 1000)
INSERT INTO Patients_Phones (Phone, PatientID)
VALUES 
(N'0555911221', 14),
(N'0555911222', 852),
(N'0555911223', 63),
(N'0555911224', 995),
(N'0555911225', 241),
(N'0555911226', 730),
(N'0555911227', 95),
(N'0555911228', 412),
(N'0555911229', 818),
(N'0555911230', 55),

(N'0500811331', 884),
(N'0500811332', 19),
(N'0500811333', 912),
(N'0500811334', 305),
(N'0500811335', 642),
(N'0500811336', 118),
(N'0500811337', 953),
(N'0500811338', 47),
(N'0500811339', 701),
(N'0500811340', 855),

(N'0533711441', 5),
(N'0533711442', 820),
(N'0533711443', 1000),
(N'0533711444', 142),
(N'0533711445', 619),
(N'0533711446', 38),
(N'0533711447', 904),
(N'0533711448', 711),
(N'0533711449', 602),
(N'0533711450', 523),

(N'0577611558', 224),
(N'0577611559', 150),
(N'0577611560', 105),

(N'0555112233', 74),
(N'0555112234', 991),
(N'0555112235', 152),
(N'0555112236', 840),
(N'0555112237', 311),
(N'0555112238', 766),
(N'0555112239', 495),
(N'0555112240', 22),
(N'0555112241', 715),
(N'0555112242', 901),


(N'0500445566', 602),
(N'0500445567', 135),
(N'0500445568', 918),
(N'0500445569', 83),
(N'0500445570', 744),
(N'0500445571', 419),
(N'0500445572', 777),
(N'0500445573', 250),
(N'0500445574', 861),
(N'0500445575', 910),

(N'0533889901', 94),
(N'0533889902', 705),
(N'0533889903', 822),
(N'0533889904', 333),
(N'0533889905', 512),
(N'0533889906', 999),
(N'0533889907', 460),
(N'0533889908', 814),
(N'0533889909', 167),
(N'0533889910', 943),

(N'0577114477', 28),
(N'0577114478', 899),
(N'0577114479', 654),
(N'0577114480', 390),
(N'0577114481', 822),
(N'0577114482', 105),

(N'0577114483', 741),
(N'0577114484', 530),
(N'0577114485', 912),
(N'0577114486', 214),
(N'0555667788', 888),
(N'0555667789', 42),
(N'0555667790', 830),
(N'0555667791', 199),
(N'0555667792', 762),
(N'0555667793', 550),
(N'0555667794', 902),
(N'0555667795', 364),
(N'0555667796', 801),
(N'0555667797', 128),

(N'0500223399', 975),
(N'0500223300', 480),
(N'0500223301', 890);
GO









select * from Departments
select * from Medicines
select * froM Allergies
select * froM RoomTypes
select * froM doctors
select * froM MedicineDetails
select * froM Patients

select * from Nurses
select * from Rooms
select * froM Patients_Allergies
select * froM HealthInsurances
select * froM Treatments
select * froM Prescriptions
select * froM PrescriptionMedications

select * from Admissions
select * from Invoices where TotalAmount = 1450.00 and TreatmentID = 142
select * froM Invoices_Details

select * from Payments
select * from Patients_Phones
select * froM Doctors_Phones


-- test

SELECT 
    pay.PaymentID,
    pay.AmountPaid,
    pay.PaymentMethod,
    pay.PaymentDate,
    pay.PaymentTime,
    pay.InvoiceID,
    pay.PatientID,
    id.ItemType,
    id.Quantity,
    id.UnitPrice
FROM Payments pay

JOIN Invoices_Details id ON pay.InvoiceID = id.InvoiceID
ORDER BY pay.PaymentID ASC;
GO

