USE [Test]
GO
EXEC spClearDatabase
GO
INSERT [dbo].[PARAM_CACHET] ([USERNUM], [SITENUM], [SITENAME], [OPHTALMO], [TEL1], [TEL2], [ADRESSE], [NUMLOC], [MAIL1], [MAIL2], [WEB1], [WEB2], [CENTRE]) VALUES (1, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Prescription] ([PrescriptionId], [PrescriptionType], [Status], [Language], [IsElectronic], [ElectronicNum], [CreatedOn], [DelivrableAt], [PrescriberId], [PrescriberType], [PrescriberLastName], [PrescriberFirstName], [PrescriberDisplayName], [PrescriberLicenseNum], [PrescriberSSN], [PrescriberSpeciality], [PrescriberPhone1], [PrescriberPhone2], [PrescriberEmail1], [PrescriberEmail2], [PrescriberWebSite], [PrescriberStreet], [PrescriberHouseNum], [PrescriberBoxNum], [PrescriberPostCode], [PrescriberCity], [PrescriberCountry], [PatientId], [PatientFirstName], [PatientLastName], [PatientSex], [PatientSSN], [PatientBirthdate], [PatientOldId], [FacilityId], [FacilityType], [FacilityName], [FacilityLicenseNum], [FacilityCode]) VALUES (1, N'PHARM', N'SNT', N'FR', 1, N'BEL60263475', CAST(N'2016-12-18 00:00:00.000' AS DateTime), NULL, 1, N'Physician', N'Duck', N'Donald', N'Dr. Duck Donald', N'16480793370', NULL, N'Ophtalmologie', N'02/221.21.21', NULL, N'donald.duck@gmail.com', NULL, NULL, N'Grote Markt 7', NULL, NULL, N'1000', N'Brussel', NULL, 12601, N'Archibald', N'Haddock', N'M', NULL, CAST(N'1940-12-12 00:00:00.000' AS DateTime), NULL, 1, N'Center', N'Healthcenter Donald Duck', NULL, NULL)
GO
INSERT [dbo].[Prescription] ([PrescriptionId], [PrescriptionType], [Status], [Language], [IsElectronic], [ElectronicNum], [CreatedOn], [DelivrableAt], [PrescriberId], [PrescriberType], [PrescriberLastName], [PrescriberFirstName], [PrescriberDisplayName], [PrescriberLicenseNum], [PrescriberSSN], [PrescriberSpeciality], [PrescriberPhone1], [PrescriberPhone2], [PrescriberEmail1], [PrescriberEmail2], [PrescriberWebSite], [PrescriberStreet], [PrescriberHouseNum], [PrescriberBoxNum], [PrescriberPostCode], [PrescriberCity], [PrescriberCountry], [PatientId], [PatientFirstName], [PatientLastName], [PatientSex], [PatientSSN], [PatientBirthdate], [PatientOldId], [FacilityId], [FacilityType], [FacilityName], [FacilityLicenseNum], [FacilityCode]) VALUES (2, N'PHARM', N'SNT', N'FR', 1, N'BEL79938169', CAST(N'2016-12-18 00:00:00.000' AS DateTime), CAST(N'2017-02-18 00:00:00.000' AS DateTime), 1, N'Physician', N'Duck', N'Donald', N'Dr. Duck Donald', N'16480793370', NULL, N'Ophtalmologie', N'02/221.21.21', NULL, N'donald.duck@gmail.com', NULL, NULL, N'Grote Markt 7', NULL, NULL, N'1000', N'Brussel', NULL, 12601, N'Archibald', N'Haddock', N'M', NULL, CAST(N'1940-12-12 00:00:00.000' AS DateTime), NULL, 1, N'Center', N'Healthcenter Donald Duck', NULL, NULL)
GO
INSERT [dbo].[Prescription] ([PrescriptionId], [PrescriptionType], [Status], [Language], [IsElectronic], [ElectronicNum], [CreatedOn], [DelivrableAt], [PrescriberId], [PrescriberType], [PrescriberLastName], [PrescriberFirstName], [PrescriberDisplayName], [PrescriberLicenseNum], [PrescriberSSN], [PrescriberSpeciality], [PrescriberPhone1], [PrescriberPhone2], [PrescriberEmail1], [PrescriberEmail2], [PrescriberWebSite], [PrescriberStreet], [PrescriberHouseNum], [PrescriberBoxNum], [PrescriberPostCode], [PrescriberCity], [PrescriberCountry], [PatientId], [PatientFirstName], [PatientLastName], [PatientSex], [PatientSSN], [PatientBirthdate], [PatientOldId], [FacilityId], [FacilityType], [FacilityName], [FacilityLicenseNum], [FacilityCode]) VALUES (3, N'PHARM', N'SNT', N'FR', 1, N'BEL11720591', CAST(N'2016-12-18 00:00:00.000' AS DateTime), CAST(N'2017-03-18 00:00:00.000' AS DateTime), 1, N'Physician', N'Duck', N'Donald', N'Dr. Duck Donald', N'16480793370', NULL, N'Ophtalmologie', N'02/221.21.21', NULL, N'donald.duck@gmail.com', NULL, NULL, N'Grote Markt 7', NULL, NULL, N'1000', N'Brussel', NULL, 12601, N'Archibald', N'Haddock', N'M', NULL, CAST(N'1940-12-12 00:00:00.000' AS DateTime), NULL, 1, N'Center', N'Healthcenter Donald Duck', NULL, NULL)
GO
INSERT [dbo].[Prescription] ([PrescriptionId], [PrescriptionType], [Status], [Language], [IsElectronic], [ElectronicNum], [CreatedOn], [DelivrableAt], [PrescriberId], [PrescriberType], [PrescriberLastName], [PrescriberFirstName], [PrescriberDisplayName], [PrescriberLicenseNum], [PrescriberSSN], [PrescriberSpeciality], [PrescriberPhone1], [PrescriberPhone2], [PrescriberEmail1], [PrescriberEmail2], [PrescriberWebSite], [PrescriberStreet], [PrescriberHouseNum], [PrescriberBoxNum], [PrescriberPostCode], [PrescriberCity], [PrescriberCountry], [PatientId], [PatientFirstName], [PatientLastName], [PatientSex], [PatientSSN], [PatientBirthdate], [PatientOldId], [FacilityId], [FacilityType], [FacilityName], [FacilityLicenseNum], [FacilityCode]) VALUES (4, N'PHARM', N'SNT', N'FR', 1, N'BEL44378179', CAST(N'2016-12-18 00:00:00.000' AS DateTime), CAST(N'2017-04-18 00:00:00.000' AS DateTime), 1, N'Physician', N'Duck', N'Donald', N'Dr. Duck Donald', N'16480793370', NULL, N'Ophtalmologie', N'02/221.21.21', NULL, N'donald.duck@gmail.com', NULL, NULL, N'Grote Markt 7', NULL, NULL, N'1000', N'Brussel', NULL, 12601, N'Archibald', N'Haddock', N'M', NULL, CAST(N'1940-12-12 00:00:00.000' AS DateTime), NULL, 1, N'Center', N'Healthcenter Donald Duck', NULL, NULL)
GO
INSERT [dbo].[PrescMedication] ([PrescMedicationId], [PrescriptionId], [MedicationType], [NameOrDesc], [Posology], [Quantity], [QuantityNum], [Duration], [Code]) VALUES (1, 1, N'Product', N'Latansoc Mylan Coll. 2,5 ml X 3', N'1 goutte le soir', N'1 boîte de 3 flacons', 1, NULL, NULL)
GO
INSERT [dbo].[PrescMedication] ([PrescMedicationId], [PrescriptionId], [MedicationType], [NameOrDesc], [Posology], [Quantity], [QuantityNum], [Duration], [Code]) VALUES (2, 1, N'Product', N'Dualkopt Coll. 10 ml', N'1 goutte 2 x/jour', N'1 flacon', 1, NULL, N'3260072')
GO
INSERT [dbo].[PrescMedication] ([PrescMedicationId], [PrescriptionId], [MedicationType], [NameOrDesc], [Posology], [Quantity], [QuantityNum], [Duration], [Code]) VALUES (3, 2, N'Product', N'Dualkopt Coll. 10 ml', N'1 goutte 2 x/jour', N'1 flacon', 1, NULL, N'3260072')
GO
INSERT [dbo].[PrescMedication] ([PrescMedicationId], [PrescriptionId], [MedicationType], [NameOrDesc], [Posology], [Quantity], [QuantityNum], [Duration], [Code]) VALUES (4, 3, N'Product', N'Latansoc Mylan Coll. 2,5 ml X 3', N'1 goutte le soir', N'1 boîte de 3 flacons', 1, NULL, NULL)
GO
INSERT [dbo].[PrescMedication] ([PrescMedicationId], [PrescriptionId], [MedicationType], [NameOrDesc], [Posology], [Quantity], [QuantityNum], [Duration], [Code]) VALUES (5, 4, N'Product', N'Dualkopt Coll. 10 ml', N'1 goutte 2 x/jour', N'1 flacon', 1, NULL, N'3260072')
GO