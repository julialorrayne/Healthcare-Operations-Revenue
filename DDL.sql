-- Hospital Database Schema
-- Tool: DBeaver
-- Database: PostgreSQL

CREATE TABLE Department (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(100) NOT NULL
);

CREATE TABLE Doctor (
    Dr_ID INT PRIMARY KEY,
    Dr_FName VARCHAR(50) NOT NULL,
    Dr_LName VARCHAR(50) NOT NULL,
    Dept_ID INT NOT NULL,
    FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
);

CREATE TABLE Patient (
    Pat_ID INT PRIMARY KEY,
    P_FName VARCHAR(50) NOT NULL,
    P_LName VARCHAR(50) NOT NULL,
    Pat_DOB DATE NOT NULL,
    Pat_Sex CHAR(1) CHECK (Pat_Sex IN ('M','F')),
    Pat_Phone VARCHAR(15),
    Pat_Email VARCHAR(100),
    InsurancePlan VARCHAR(100) NULL
);

CREATE TABLE Appointment (
    Appt_ID INT PRIMARY KEY,
    Appt_Date DATE NOT NULL,
    Appt_Time TIME NOT NULL,
    Status VARCHAR(20) CHECK (Status IN ('Scheduled','Completed','No-Show','Cancelled')),
    Visit_Duration INT NULL,
    Pat_ID INT NOT NULL,
    Dr_ID INT NOT NULL,
    FOREIGN KEY (Pat_ID) REFERENCES Patient(Pat_ID),
    FOREIGN KEY (Dr_ID) REFERENCES Doctor(Dr_ID),
    CONSTRAINT chk_visit_duration CHECK (
        (Status = 'Completed' AND Visit_Duration IS NOT NULL)
        OR (Status <> 'Completed' AND Visit_Duration IS NULL)
    )
);

CREATE TABLE Diagnoses (
    Diagnosis_Code VARCHAR(10) PRIMARY KEY,
    Diagnosis_Desc VARCHAR(255) NOT NULL
);

CREATE TABLE Appointment_Diagnosis (
    ApptDiag_ID INT PRIMARY KEY,
    Appt_ID INT NOT NULL,
    Diagnosis_Code VARCHAR(10) NOT NULL,
    FOREIGN KEY (Appt_ID) REFERENCES Appointment(Appt_ID),
    FOREIGN KEY (Diagnosis_Code) REFERENCES Diagnoses(Diagnosis_Code)
);

CREATE TABLE Billing (
    Bill_ID INT PRIMARY KEY,
    Appt_ID INT UNIQUE,
    Total_Charge DECIMAL(10,2) NOT NULL,
    Amt_Paid DECIMAL(10,2),
    Payer_FName VARCHAR(50),
    Payer_LName VARCHAR(50),
    Bill_Date DATE NOT NULL,
    FOREIGN KEY (Appt_ID) REFERENCES Appointment(Appt_ID)
);
