﻿using System;
using FluentAssertions;
using Xunit;

namespace DDD.HealthcareDelivery.Domain.Prescriptions
{
    using Common.Domain;
    using Patients;
    using Providers;
    using Facilities;

    public class PharmaceuticalPrescriptionTests : PrescriptionTests<PharmaceuticalPrescriptionState>
    {

        #region Constructors

        static PharmaceuticalPrescriptionTests()
        {
            RevocablePrescriptions.Add(CreatePrescription(PrescriptionStatus.Created));
            NotRevocablePrescriptions.Add(CreatePrescription(PrescriptionStatus.Revoked));
            NotRevocablePrescriptions.Add(CreatePrescription(PrescriptionStatus.Delivered));
            DeliverablePrescriptions.Add(CreatePrescription(PrescriptionStatus.Created));
            NotDeliverablePrescriptions.Add(CreatePrescription(PrescriptionStatus.Delivered));
            NotDeliverablePrescriptions.Add(CreatePrescription(PrescriptionStatus.Revoked));
        }

        #endregion Constructors

        #region Methods

        [Fact]
        public void Create_CreationDateNotSpecified_AddsPrescriptionCreatedEvent()
        {
            // Act
            var prescription = PharmaceuticalPrescription.Create
                              (
                                  new PrescriptionIdentifier(1),
                                  new Physician(1, new FullName("Duck", "Donald"), new BelgianPractitionerLicenseNumber("19006951001")),
                                  new Patient(1, new FullName("Fred", "Flintstone"), BelgianSex.Male),
                                  new HealthcareCenter(1, "Healthcenter Donald Duck"),
                                  new PrescribedMedication[] { new PrescribedPharmaceuticalProduct("ADALAT OROS 30 COMP 28 X 30 MG", "appliquer 2 fois par jour") },
                                  new Alpha2LanguageCode("FR")
                              );
            // Assert
            prescription.AllEvents().Should().ContainSingle(e => e is PharmaceuticalPrescriptionCreated);
        }

        [Fact]
        public void Create_CreationDateNotSpecified_MarksPrescriptionAsCreated()
        {
            // Act
            var prescription = PharmaceuticalPrescription.Create
                              (
                                  new PrescriptionIdentifier(1),
                                  new Physician(1, new FullName("Duck", "Donald"), new BelgianPractitionerLicenseNumber("19006951001")),
                                  new Patient(1, new FullName("Fred", "Flintstone"), BelgianSex.Male),
                                  new HealthcareCenter(1, "Healthcenter Donald Duck"),
                                  new PrescribedMedication[] { new PrescribedPharmaceuticalProduct("ADALAT OROS 30 COMP 28 X 30 MG", "appliquer 2 fois par jour") },
                                  new Alpha2LanguageCode("FR")
                              );
            // Assert
            var status = prescription.ToState().Status;
            status.Should().Be(PrescriptionStatus.Created.Code);
        }

        [Fact]
        public void Create_CreationDateSpecified_AddsPrescriptionCreatedEvent()
        {
            // Act
            var prescription = PharmaceuticalPrescription.Create
                              (
                                  new PrescriptionIdentifier(1),
                                  new Physician(1, new FullName("Duck", "Donald"), new BelgianPractitionerLicenseNumber("19006951001")),
                                  new Patient(1, new FullName("Fred", "Flintstone"), BelgianSex.Male),
                                  new HealthcareCenter(1, "Healthcenter Donald Duck"),
                                  new PrescribedMedication[] { new PrescribedPharmaceuticalProduct("ADALAT OROS 30 COMP 28 X 30 MG", "appliquer 2 fois par jour") },
                                  new DateTime(2016, 2, 7),
                                  new Alpha2LanguageCode("FR")
                              );
            // Assert
            prescription.AllEvents().Should().ContainSingle(e => e is PharmaceuticalPrescriptionCreated);
        }

        [Fact]
        public void Create_CreationDateSpecified_MarksPrescriptionAsCreated()
        {
            // Act
            var prescription = PharmaceuticalPrescription.Create
                              (
                                  new PrescriptionIdentifier(1),
                                  new Physician(1, new FullName("Duck", "Donald"), new BelgianPractitionerLicenseNumber("19006951001")),
                                  new Patient(1, new FullName("Fred", "Flintstone"), BelgianSex.Male),
                                  new HealthcareCenter(1, "Healthcenter Donald Duck"),
                                  new PrescribedMedication[] { new PrescribedPharmaceuticalProduct("ADALAT OROS 30 COMP 28 X 30 MG", "appliquer 2 fois par jour") },
                                  new DateTime(2016, 2, 7),
                                  new Alpha2LanguageCode("FR")
                              );
            // Assert
            var status = prescription.ToState().Status;
            status.Should().Be(PrescriptionStatus.Created.Code);
        }

        public override void Deliver_DeliverablePrescription_AddsPrescriptionDeliveredEvent(Prescription<PharmaceuticalPrescriptionState> prescription)
        {
            // Act
            prescription.Deliver();
            // Assert
            prescription.AllEvents().Should().ContainSingle(e => e is PharmaceuticalPrescriptionDelivered);
        }

        public override void Deliver_NotDeliverablePrescription_DoesNotAddEvent(Prescription<PharmaceuticalPrescriptionState> prescription)
        {
            // Act
            prescription.Deliver();
            // Assert
            prescription.AllEvents().Should().BeEmpty();
        }

        public override void Revoke_NotRevocablePrescription_DoesNotAddEvent(Prescription<PharmaceuticalPrescriptionState> prescription)
        {
            // Act
            prescription.Revoke("Erreur");
            // Assert
            prescription.AllEvents().Should().BeEmpty();
        }

        public override void Revoke_RevocablePrescription_AddsPrescriptionRevokedEvent(Prescription<PharmaceuticalPrescriptionState> prescription)
        {
            // Act
            prescription.Revoke("Erreur");
            // Assert
            prescription.AllEvents().Should().ContainSingle(e => e is PharmaceuticalPrescriptionRevoked);
        }
        private static PharmaceuticalPrescription CreatePrescription(PrescriptionStatus status)
        {
            return new PharmaceuticalPrescription
            (
                new PrescriptionIdentifier(1),
                new Physician(1, new FullName("Duck", "Donald"), new BelgianPractitionerLicenseNumber("19006951001")),
                new Patient(1, new FullName("Fred", "Flintstone"), BelgianSex.Male),
                new HealthcareCenter(1, "Healthcenter Donald Duck"),
                new PrescribedMedication[] { new PrescribedPharmaceuticalProduct("ADALAT OROS 30 COMP 28 X 30 MG", "appliquer 2 fois par jour") },
                new Alpha2LanguageCode("FR"),
                status,
                new DateTime(2016, 2, 7)
            );
        }

        #endregion Methods

    }
}
