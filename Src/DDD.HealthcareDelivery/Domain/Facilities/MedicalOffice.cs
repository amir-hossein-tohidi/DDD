﻿namespace DDD.HealthcareDelivery.Domain.Facilities
{
    /// <summary>
    /// Represents an outpatient facility in a specific location in which one or more healthcare practitioners (physicians, dentists, ...) receive and treat patients.
    /// </summary>
    public class MedicalOffice : HealthFacility
    {

        #region Constructors

        public MedicalOffice(int identifier, 
                             string name, 
                             HealthFacilityLicenseNumber licenseNumber = null) 
            : base(identifier, name, licenseNumber)
        {
        }

        #endregion Constructors

        #region Methods

        public override HealthFacilityState ToState()
        {
            var state = base.ToState();
            state.FacilityType = "MedicalOffice";
            return state;
        }

        #endregion Methods

    }
}
