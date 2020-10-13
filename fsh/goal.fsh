Alias: $KLTerminology = http://kl.dk/fhir/common/caresocial/CodeSystem/FSIII
Alias: $KLCommonCodes = http://kl.dk/fhir/common/caresocial/CodeSystem/KLCommonCareSocialCodes

Profile: KLGatewayCareGoal
Parent: Goal
Id: klgateway-care-goal
Title: "Care Goal"
Description: "Describes the intended or expected functional level for a condition of a citizen."
* identifier ..0
* lifecycleStatus ^definition = "Shall be planned, entered-in-error, or fit the current lifecycle status of the goal"
* category 1..1
* category from http://kl.dk/fhir/common/caresocial/ValueSet/KLGoalTypeCodes
* category.coding 1..1
* category.coding = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
* category.coding.version ..0
* category.coding.display ..0
* category.coding.userSelected ..0
* category.text ..0
* achievementStatus ..0
* priority ..0
* description.coding 1..1
* description.coding = $KLTerminology#e182c5dc-9f91-474a-92e8-f62be3d498f4
* subject only Reference(klgateway-care-citizen)
* subject ^type.aggregation = #bundled
* start[x] 1..1
* start[x] only date
* target 1..1
* target.measure 1..1
* target.measure from http://kl.dk/fhir/common/caresocial/ValueSet/KLTargetMeasureCodes
* target.measure.coding 1..1
* target.measure.coding = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
* target.measure.coding.version ..0
* target.measure.coding.display ..0
* target.measure.coding.userSelected ..0
* target.measure.text ..0
* target.detail[x] only CodeableConcept
* target.detail[x] from http://kl.dk/fhir/common/caresocial/ValueSet/KLSeveritiesFSIII
* statusDate ..0
* statusReason ..0
* expressedBy ..0
* addresses 1..1
* addresses only Reference(KLGatewayCareCondition)
* addresses ^type.aggregation = #bundled
* note ..0
* outcomeCode ..0
* outcomeReference ..0
* obeys klgateway-adresses-must-be-home-care-condition

Invariant: klgateway-adresses-must-be-home-care-condition
Description: "The goal is only allowed to address home care conditions"
Severity: #error
Expression: "addresses.resolve().code.coding.memberOf('http://kl.dk/fhir/common/caresocial/ValueSet/KLConditionCodesHomeCare')"


Instance: ForventetIngenBegraensninger
InstanceOf: KLGatewayCareGoal
Description: "A goal for the test person on the ability to wash himself"
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
* description = $KLTerminology#e182c5dc-9f91-474a-92e8-f62be3d498f4
* subject = Reference(TestPerson)
* startDate = 2020-08-14
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
* target.detailCodeableConcept = $KLTerminology#B2
* addresses = Reference(VaskeSigLetteBegraensninger)