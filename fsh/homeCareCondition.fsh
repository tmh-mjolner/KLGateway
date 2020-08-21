Profile: KLGatewayCareHomeCareCondition
Parent: KLGatewayCareCondition
Id: klgateway-care-home-care-condition
Title: "Care Home Care Condition"
Description: "Detailed information about home care conditions."
* severity 1..1
* severity from FSIIISeverites (required)
* code from KLConditionCodesHomeCare (required)


Instance: VaskeSigLetteBegraensninger
InstanceOf: KLGatewayCareHomeCareCondition
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $KLTerminology#B2
* code = $KLTerminology#J.1.1
* subject = Reference(TestPerson)
* recordedDate = 2020-08-14
* extension[followUpEncounter].valueReference = Reference(OpfoelgningsKontakt)