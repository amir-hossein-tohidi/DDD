SELECT   PrescriptionId AS Identifier,
         CASE Status
			WHEN 'CRT' THEN 1
			WHEN 'RVK' THEN 2
			WHEN 'SNT' THEN 3
		 END AS Status,
         IsElectronic,
         ElectronicNum AS ElectronicNumber,
         CreatedOn,
         DelivrableAt,
		 PrescriberDisplayName
FROM     Prescription
WHERE    PrescriptionType = 'PHARM'
AND      PatientId = @PatientId
ORDER BY CreatedOn, PrescriptionId