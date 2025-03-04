ValueSet: PatientReferral
Id: PatientReferral
Title: "Patient Referral"
Description: """
Restriction to use referral codes only
"""
* ^experimental  = false
* include codes from system http://snomed.info/sct where concept is-a #3457005 "Patient referral"
