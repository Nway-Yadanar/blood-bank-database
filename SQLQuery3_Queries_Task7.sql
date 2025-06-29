CREATE VIEW BloodInventory AS
SELECT b.BloodGroup, b.RhFactor, COUNT(b.BagNo) AS TotalBags
FROM BloodBag b
INNER JOIN Blood_Storage s ON b.StorageUnitID = s.StorageUnitID
GROUP BY b.BloodGroup, b.RhFactor;

Select * from BloodInventory;


SELECT bs.StorageUnitID, bs.Component, bb.BagNo, bb.BloodGroup
FROM Blood_Storage bs
LEFT JOIN BloodBag bb ON bs.StorageUnitID = bb.StorageUnitID;


SELECT d.DonorID, d.Donor_Name, (
    SELECT COUNT(*)
    FROM Donation dn
    WHERE d.DonorID = dn.DonorID
) AS DonationCount
FROM Donors d;

CREATE VIEW BloodRequestView AS
SELECT h.Hospital_Name, b.BloodGroup, b.RhFactor, COUNT(b.BagNo) AS AvailableBags
FROM RequestedBlood rb
INNER JOIN Hospitals h ON rb.HospitalID = h.HospitalID
INNER JOIN BloodBag b ON rb.StorageUnitID = b.StorageUnitID
GROUP BY h.Hospital_Name, b.BloodGroup, b.RhFactor;

Select * from BloodRequestView;


SELECT d1.Doctor_Name AS Doctor1, d2.Doctor_Name AS Doctor2, d1.Position
FROM Doctors d1
INNER JOIN Doctors d2 ON d1.Position = d2.Position
WHERE d1.DoctorID <> d2.DoctorID;


SELECT bb.BagNo, bb.BloodGroup, bb.ExpiryDate, bs.Component
FROM BloodBag bb
INNER JOIN Blood_Storage bs ON bb.StorageUnitID = bs.StorageUnitID
WHERE bb.ExpiryDate < '2024-09-14';


SELECT Donor_Name,Age,Gender
FROM Donors d
WHERE DonorID IN (
    SELECT DonorID 
    FROM Donation dn
    JOIN BloodBag bb ON dn.BagNo = bb.BagNo
    WHERE bb.BloodGroup = 'AB'
);




SELECT h.Hospital_Name, h.Location, COUNT(rb.HospitalID) AS TotalRequests
FROM Hospitals h
INNER JOIN RequestedBlood rb ON h.HospitalID = rb.HospitalID
GROUP BY h.Hospital_Name, h.Location
HAVING COUNT(rb.HospitalID) >= 1;


SELECT Donor_Name, 
       (SELECT bb.BloodGroup 
        FROM BloodBag bb 
        JOIN Donation dn ON bb.BagNo = dn.BagNo 
        WHERE dn.DonorID = d.DonorID AND bb.BloodGroup = 'O' AND bb.RhFactor = 'Positive' 
        ) AS BloodGroup, 
       (SELECT bb.RhFactor 
        FROM BloodBag bb 
        JOIN Donation dn ON bb.BagNo = dn.BagNo 
        WHERE dn.DonorID = d.DonorID AND bb.BloodGroup = 'O' AND bb.RhFactor = 'Positive' 
        ) AS RhFactor
FROM Donors d
WHERE EXISTS (
    SELECT 1 
    FROM Donation dn 
    JOIN BloodBag bb ON dn.BagNo = bb.BagNo 
    WHERE d.DonorID = dn.DonorID AND bb.BloodGroup = 'O' AND bb.RhFactor = 'Positive'
);


CREATE TRIGGER AutoDisposeExpiredBlood
ON BloodBag
AFTER INSERT, UPDATE
AS
BEGIN
    DECLARE @BagNo VARCHAR(20), @ExpiryDate DATE, @StorageUnitID VARCHAR(20);

    -- Fetch details from inserted or updated row
    SELECT @BagNo = BagNo, @ExpiryDate = ExpiryDate, @StorageUnitID = StorageUnitID FROM inserted;

    -- Check if the blood bag is expired
    IF @ExpiryDate < GETDATE()
    BEGIN
        -- Insert a record into the Disposal table for expired blood
        INSERT INTO Disposal (DisposalUnitID, DisposedDate, Method, Reason, StorageUnitID)
        VALUES (
            NEWID(), -- Generate a unique DisposalUnitID
            GETDATE(), -- Set the disposal date as today
            'Incineration', -- Disposal method
            'Expired Blood Bag', -- Reason for disposal
            @StorageUnitID -- Storage Unit ID from BloodBag table
        );
    END
END;
