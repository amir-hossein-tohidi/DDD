﻿using System.Collections.Generic;

namespace DDD.HealthcareDelivery.Application.Prescriptions
{
    using Core.Application;

    /// <summary>
    /// Encapsulates all information needed to find pharmaceutical prescriptions by patient.
    /// </summary>
    public class FindPharmaceuticalPrescriptionsByPatient : IQuery<IEnumerable<PharmaceuticalPrescriptionSummary>>
    {

        #region Properties

        public int PatientIdentifier { get; set; }

        #endregion Properties

    }
}
