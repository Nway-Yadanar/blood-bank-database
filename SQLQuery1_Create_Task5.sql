CREATE TABLE Staffs (
    StaffID VARCHAR(20) PRIMARY KEY NOT NULL, 
    Staff_Name VARCHAR(30) NOT NULL, --Name no can't be null
    Date_of_birth DATE NOT NULL, --DOB no can't be null
    Phone VARCHAR(20) Not Null, --Phone no can't be null
    Address VARCHAR(200), 
    Position VARCHAR(50), 
    Department VARCHAR(60) 
);

Select * from Staffs;

CREATE TABLE Doctors (
    DoctorID VARCHAR(20) PRIMARY KEY CHECK (DoctorID LIKE 'D%'),  -- DoctorID must start with 'D-'
    Doctor_Name VARCHAR(50) NOT NULL,  -- Doctor's name cannot be null
    Address VARCHAR(100),  -- Address of the doctor
    Phone VARCHAR(20),  -- Phone number
    Position VARCHAR(30),  -- Doctor's position
    Experience VARCHAR(30)  -- Experience level of the doctor
);

Select * from Doctors;

CREATE TABLE Donors (
    DonorID VARCHAR(20) PRIMARY KEY CHECK (DonorID LIKE 'DO%'),  -- DonorID must start with 'DO'
    Donor_Name VARCHAR(80) NOT NULL,  -- Donor's name
    Phone VARCHAR(50),  -- Donor's phone number
    Address VARCHAR(50),  -- Donor's address
    Age VARCHAR(10),  -- Donor's age
    Gender VARCHAR(5)NOT NULL,  -- Donor's gender
    Weight VARCHAR(10)NOT NULL,  -- Donor's weight
    Height VARCHAR(10) NOT NULL -- Donor's height
);

Select * from Donors;

CREATE TABLE Hospitals (
    HospitalID VARCHAR(20) PRIMARY KEY CHECK (HospitalID LIKE 'H%'),  -- HospitalID must start with 'H'
    Hospital_Name VARCHAR(80) NOT NULL,  -- Hospital's name
    Phone VARCHAR(50)NOT NULL,  -- Hospital's phone number
    Address VARCHAR(70)NOT NULL,  -- Hospital's address
    Location VARCHAR(100),  -- Hospital's location
    Email VARCHAR(60),  -- Hospital's email address
    Requested_Frequency VARCHAR(20)  -- Frequency of blood requests
);

Select * from Hospitals;

CREATE TABLE Patients (
    PatientID VARCHAR(20) PRIMARY KEY CHECK (PatientID LIKE 'P%'),  -- PatientID must start with 'P'
    Patient_Name VARCHAR(80) NOT NULL,  -- Patient's name
    Phone VARCHAR(50),  -- Patient's phone number
    Address VARCHAR(50),  -- Patient's address
    Age VARCHAR(10),  -- Patient's age
    Weight VARCHAR(10),  -- Patient's weight
    Height VARCHAR(10)  -- Patient's height
);

Select * from Patients;

CREATE TABLE Blood_Storage (
    StorageUnitID VARCHAR(20) PRIMARY KEY CHECK (StorageUnitID LIKE 'SU%'),-- StorageUnitID must start with 'SU'
    Component VARCHAR(80) NOT NULL,  -- Name of the stored blood component
    StorageTemperature VARCHAR(50),  -- Temperature of the storage unit
    ShelfLife VARCHAR(50)  -- Lifespan of the stored component
);

Select * from Blood_Storage;

CREATE TABLE BloodBag (
    BagNo VARCHAR(20) PRIMARY KEY CHECK (BagNo LIKE 'B%'),  -- BagNo must start with 'B-'
    DonationDate DATE NOT NULL,  -- Date of donation
    BloodGroup VARCHAR(10) NOT NULL,  -- Blood group
    Rhfactor VARCHAR(20),  -- Rh factor
    Volume VARCHAR(30),  -- Volume of blood in the bag
    ExpiryDate DATE NOT NULL,  -- Expiry date of the blood bag
    StorageUnitID VARCHAR(20),  -- Foreign key 
    FOREIGN KEY (StorageUnitID) REFERENCES Blood_Storage(StorageUnitID)
);

Select * from BloodBag;

CREATE TABLE Disposal (
    DisposalUnitID VARCHAR(20) PRIMARY KEY CHECK (DisposalUnitID LIKE 'DU%'),
    DisposedDate DATE NOT NULL,  -- Date of disposal
    Method VARCHAR(50),  -- Method of disposal
    Reason VARCHAR(100),  -- Reason for disposal
    StorageUnitID VARCHAR(20),  -- Foreign key 
    FOREIGN KEY (StorageUnitID) REFERENCES Blood_Storage(StorageUnitID)
);

Select * from Disposal;

CREATE TABLE BloodTests (
    DoctorID VARCHAR(20) NOT NULL CHECK (DoctorID LIKE 'D%'),  
    DonorID VARCHAR(20) NOT NULL CHECK (DonorID LIKE 'DO%'),  
    Hemoglobin VARCHAR(50),  -- Hemoglobin level of the donor
    Diseases VARCHAR(50),  -- Diseases of the donor
    PRIMARY KEY (DoctorID, DonorID),  -- Composite primary key (DoctorID + DonorID)
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID),
    FOREIGN KEY (DonorID) REFERENCES Donors(DonorID)
);

Select * from BloodTests;

CREATE TABLE Donation (
    DonorID VARCHAR(20) NOT NULL CHECK (DonorID LIKE 'DO%'), 
    BagNo VARCHAR(20) NOT NULL CHECK (BagNo LIKE 'B%'),  
    StaffID VARCHAR(20) NOT NULL CHECK (StaffID LIKE 'S%'),  
    DonationType VARCHAR(50),  -- Type of donation
    Duration VARCHAR(50),  -- Duration of the blood donation
    WaitingTime VARCHAR(40),  -- Waiting time before the next donation
    PRIMARY KEY (DonorID, BagNo, StaffID),  -- Composite primary key (DonorID + BagNo + StaffID)
    FOREIGN KEY (DonorID) REFERENCES Donors(DonorID),
    FOREIGN KEY (BagNo) REFERENCES BloodBag(BagNo),
    FOREIGN KEY (StaffID) REFERENCES Staffs(StaffID)
);

Select * from Donation;

CREATE TABLE RequestedBlood (
    HospitalID VARCHAR(20) NOT NULL CHECK (HospitalID LIKE 'H%'),  
    StorageUnitID VARCHAR(20) NOT NULL CHECK (StorageUnitID LIKE 'SU%'),  
    Quantity VARCHAR(10),  -- Quantity of blood bags requested
    Requested_Date DATE NOT NULL,  -- Date of the blood request
    PRIMARY KEY (HospitalID, StorageUnitID),  -- Composite primary key 
    FOREIGN KEY (HospitalID) REFERENCES Hospitals(HospitalID),
    FOREIGN KEY (StorageUnitID) REFERENCES Blood_Storage(StorageUnitID)
);

Select * from RequestedBlood;

CREATE TABLE Requested_Patients (
    HospitalID VARCHAR(20) NOT NULL CHECK (HospitalID LIKE 'H%'),  
    PatientID VARCHAR(20) NOT NULL CHECK (PatientID LIKE 'P%'),  
    Reason VARCHAR(100),  -- Reason for requesting blood
    PRIMARY KEY (HospitalID, PatientID),  
    FOREIGN KEY (HospitalID) REFERENCES Hospitals(HospitalID),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);

Select * from Requested_Patients;
