

IF NOT EXISTS(SELECT * FROM sys.databases WHERE NAME = 'Hospital_Management_SystemDB')
	BEGIN 
		CREATE DATABASE Hospital_Management_SystemDB ;
	END

USE Hospital_Management_SystemDB;
-- fist of all I created important tables who's have no foregin key's

CREATE TABLE Departments (

	DepartmentID SMALLINT IDENTITY(1,1) PRIMARY KEY,
	DepartmentName NVARCHAR(50) NOT NULL,
	LocationFloor NVARCHAR(30),
	PhoneExtension VARCHAR(15),
	AnnualBudget DECIMAL(13,2) NOT NULL CHECK (AnnualBudget >= 0)
)

CREATE TABLE Doctors (

	DoctorID INT IDENTITY(1,1) PRIMARY KEY,
	Specialization NVARCHAR(50) NOT NULL,
	FirstName NVARCHAR(30) NOT NULL,
	LastName NVARCHAR(30) NOT  NULL,
	LicenseNum VARCHAR(20) NOT NULL,
	HireDate DATE NOT NULL,
	DateOfBirth DATE,
	MSalary SMALLMONEY CHECK(MSalary >= 0),
	Gender NVARCHAR(1) CHECK (Gender IN ('M', 'F')),
	Email  NVARCHAR(30),
	HomeAddress NVARCHAR(50),
	DepartmentID SMALLINT FOREIGN KEY REFERENCES Departments(DepartmentID)
)

CREATE TABLE Doctors_Phones(
	
	PhoneID SMALLINT IDENTITY(1,1) PRIMARY KEY,
	Phone NVARCHAR(15),
	DoctorID INT FOREIGN KEY REFERENCES Doctors(DoctorID)
)

CREATE TABLE Patients (

	PatientID INT IDENTITY(1,1) PRIMARY KEY,
	FirstName NVARCHAR(30) NOT NULL,
	LastName NVARCHAR(30) NOT  NULL,
	DateOfBirth DATE,
	Gender NVARCHAR(1) CHECK (Gender IN ('M', 'F')),
	Email  NVARCHAR(30),
	HomeAddress NVARCHAR(50),
	BloodType NVARCHAR(5)
)
-- here some table relate to patients

CREATE TABLE Patients_Phones(
	
	PhoneID SMALLINT IDENTITY(1,1) PRIMARY KEY,
	Phone NVARCHAR(15),
	PatientID INT FOREIGN KEY REFERENCES Patients(PatientID)
)

CREATE TABLE HealthInsurances (
			
	InsuranceID INT IDENTITY(1,1) PRIMARY KEY,
	InsuranceNumber NVARCHAR(15) NOT NULL,
	InsuranceCompany NVARCHAR(30) NOT NULL,
	CoveringPercentage DECIMAL(3,2),  -- note: the percentage represents like 85% = 0.85, 100% = 1.00
	ExpiryDate Date NOT NULL,
	PatientID INT FOREIGN KEY REFERENCES Patients(PatientID)
)

CREATE TABLE Allergies(

	AllergyID SMALLINT IDENTITY(1,1) PRIMARY KEY,
	AllergyName NVARCHAR(50) NOT NULL,
)


CREATE TABLE Patients_Allergies(

	Patient_AllergyID INT IDENTITY(1,1) PRIMARY KEY,
	DiagnosisDate DATE,
	SeverityLevel NVARCHAR(20) CHECK(SeverityLevel IN ('Mild','Severe', 'Moderate' )),
	Note NVARCHAR(MAX),
	PatientID INT FOREIGN KEY REFERENCES Patients(PatientID),
	AllergyID SMALLINT FOREIGN KEY REFERENCES Allergies(AllergyID)
)



CREATE TABLE Treatments (

	TreatmentID INT IDENTITY(1,1) PRIMARY KEY,
	TreatmentDate Date DEFAULT GETDATE(),
	ExitDate Date,
	PatientID INT FOREIGN KEY REFERENCES Patients(PatientID),
	DoctorID INT FOREIGN KEY REFERENCES Doctors(DoctorID)
)


CREATE TABLE Medicines(

	MedicineID INT IDENTITY(1,1) PRIMARY KEY,
	MedicationName NVARCHAR(30) NOT NULL,
	Description NVARCHAR(MAX),
	CompanyName NVARCHAR(40)
)

CREATE TABLE MedicineDetails (

	MedicineDetailID INT IDENTITY(1,1) PRIMARY KEY,
	BatchNumber NVARCHAR(30),
	Quantity INT CHECK(Quantity >=0) DEFAULT 0,
	UnitPrice SMALLMONEY CHECK(UnitPrice >=0) DEFAULT 0,
	ExpiryDate DATE NOT NULL,
	MedicineID INT FOREIGN KEY REFERENCES Medicines(MedicineID)
)

CREATE TABLE Prescriptions(
	
	PrescriptionID INT IDENTITY(1,1) PRIMARY KEY,
	IssueDate DATE DEFAULT GETDATE(),
	TreatmentID INT FOREIGN KEY REFERENCES Treatments(TreatmentID),
)

CREATE TABLE PrescriptionMedications(

	PM_ID INT IDENTITY(1,1) PRIMARY KEY,
	Instructions NVARCHAR(MAX),
	Duration NVARCHAR(30) NOT NULL,
	Dosage nVARCHAR(15),
	MedicineDetailID INT FOREIGN KEY REFERENCES MedicineDetails(MedicineDetailID),
	PrescriptionID INT FOREIGN KEY REFERENCES Prescriptions(PrescriptionID) 
)

-- first steps to create admissions table

CREATE TABLE Nurses (

	NurseID INT IDENTITY(1,1) PRIMARY KEY,
	FirstName NVARCHAR(30) NOT NULL,
	LastName NVARCHAR(30) NOT  NULL,
	Shift VARCHAR(20) NOT NULL,
	HireDate DATE NOT NULL,
	MSalary SMALLMONEY CHECK(MSalary >= 0),
	Gender NVARCHAR(1) CHECK (Gender IN ('M', 'F')),
	Email  NVARCHAR(30),
	HomeAddress NVARCHAR(50),
	Phone VARCHAR(20) NOT NULL,
	DepartmentID SMALLINT FOREIGN KEY REFERENCES Departments(DepartmentID)
)

CREATE TABLE RoomTypes(

	RoomTypeID SMALLINT IDENTITY(1,1) PRIMARY KEY,
	RoomType NVARCHAR(20) CHECK (RoomType in ('General Ward','Semi-Private Room','Private Room',
								'ICU Room','ER Observation', 'VIP Suite', 'Isolation Room' ))  NOT NULL,

	CostPerNight SMALLMONEY CHECK(CostPerNight >=0) DEFAULT 0,
	Capacity TINYINT CHECK(Capacity >=0) DEFAULT 0,
)

CREATE TABLE Rooms(

	RoomID SMALLINT IDENTITY(1,1) PRIMARY KEY,
	RoomNumber NVARCHAR(10),
	RoomLocation NVARCHAR(30),
	RoomTypeID SMALLINT FOREIGN KEY REFERENCES RoomTypes(RoomTypeID)
)


CREATE TABLE Admissions(
	
	AdmissionID INT IDENTITY(1,1) PRIMARY KEY,
	AdmissionDate DATE DEFAULT GETDATE(),
	ExitDate DATE,
	PatientID INT FOREIGN KEY REFERENCES Patients(PatientID),
	RoomID SMALLINT FOREIGN KEY REFERENCES Rooms(RoomID),
	NurseID INT FOREIGN KEY REFERENCES Nurses(NurseID)
)

-- finance tables 
CREATE TABLE Invoices(

	InvoiceID INT IDENTITY(1,1) PRIMARY KEY,
	TotalAmount DECIMAL(10,2) CHECK (TotalAmount >= 0),
	DiscountAmount DECIMAL(10,2) CHECK (DiscountAmount >= 0),
	IssueDate DATE DEFAULT GETDATE(),
	IssueTime TIME DEFAULT SYSDATETIME(),
	BillingStatus NVARCHAR(15) CHECK (BillingStatus IN ('Paid', 'UnPaid', 'Partially Paid', 'Rejected')),
	TreatmentID INT FOREIGN KEY REFERENCES Treatments(TreatmentID)
)

CREATE TABLE Invoices_Details(

	InvoiceDetailID INT IDENTITY(1,1) PRIMARY KEY,
	ItemType NVARCHAR(60),
	InvoiceID INT FOREIGN KEY REFERENCES Invoices(InvoiceID),
	Quantity SMALLINT CHECK(QUANTITY >= 0) DEFAULT 0,
	UnitPrice SMALLMONEY CHECK(UnitPrice >= 0) DEFAULT 0
)


CREATE TABLE Payments(

	PaymentID INT IDENTITY(1,1) PRIMARY KEY,
	AmountPaid DECIMAL(10,2) CHECK (AmountPaid >= 0),
	PaymentDate DATE DEFAULT GETDATE(),
	PaymentTime TIME DEFAULT SYSDATETIME(),
	PaymentMethod NVARCHAR(15) CHECK (PaymentMethod IN ('Cash', 'Card', 'Online')) NOT NULL,
	InvoiceID INT FOREIGN KEY REFERENCES Invoices(InvoiceID),
	PatientID INT FOREIGN KEY REFERENCES Patients(PatientID)
)






--DROP TABLE IF EXISTS Payments;
--DROP TABLE IF EXISTS Invoices_Details;
--DROP TABLE IF EXISTS Invoices;

--DROP TABLE IF EXISTS Admissions;
--DROP TABLE IF EXISTS PrescriptionMedications;
--DROP TABLE IF EXISTS Prescriptions;
--DROP TABLE IF EXISTS Treatments;
--DROP TABLE IF EXISTS Patients_Allergies;

--DROP TABLE IF EXISTS HealthInsurances;
--DROP TABLE IF EXISTS Patients_Phones;
--DROP TABLE IF EXISTS MedicineDetails;
--DROP TABLE IF EXISTS Doctors_Phones;

--DROP TABLE IF EXISTS Rooms;
--DROP TABLE IF EXISTS Nurses;
--DROP TABLE IF EXISTS Doctors;
--DROP TABLE IF EXISTS Patients;

 
--DROP TABLE IF EXISTS RoomTypes;
--DROP TABLE IF EXISTS Medicines;
--DROP TABLE IF EXISTS Allergies;
--DROP TABLE IF EXISTS Departments;


