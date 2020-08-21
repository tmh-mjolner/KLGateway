Alias: $ConditionClinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $ConditionCategory = http://terminology.hl7.org/CodeSystem/condition-category
Alias: $KLTerminology = urn:oid:1.2.208.176.2.21

Profile: KLGatewayCareNursingCondition
Parent: KLGatewayCareCondition
Id: klgateway-care-nursing-condition
Title: "Care Nursing Condition"
Description: "Detailed information about nursing conditions."
* severity 0..0
* code from KLConditionCodesNursing (required)


Instance: ProblemerMedPersonligPleje
InstanceOf: KLGatewayCareNursingCondition
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* code = $KLTerminology#I1.1
* subject = Reference(TestPerson)
* recordedDate = 2020-08-14
* extension[followUpEncounter].valueReference = Reference(OpfoelgningsKontakt)