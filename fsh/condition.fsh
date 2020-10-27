Alias: $ConditionClinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $ConditionCategory = http://terminology.hl7.org/CodeSystem/condition-category
Alias: $VerificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status

Profile: KLGatewayCareCondition
Parent: Condition
Id: klgateway-care-condition
Title: "Care Condition"
Description: "Detailed information about conditions."
* identifier ..0
* clinicalStatus 1..1
* clinicalStatus.coding.version ..0
* clinicalStatus.coding.display ..0
* clinicalStatus.coding.userSelected ..0
* clinicalStatus.text ..0
* verificationStatus MS
* verificationStatus ^definition = "Must be present if entered-in-error. Must not be present otherwise."
* verificationStatus.coding 1..1
* verificationStatus.coding = $VerificationStatus#entered-in-error
* verificationStatus.coding.system ..0
* verificationStatus.coding.version ..0
* verificationStatus.coding.display ..0
* verificationStatus.coding.userSelected ..0
* verificationStatus.text ..0
* category 1..1
* category.coding 1..1
* category.coding = $ConditionCategory#problem-list-item
* category.coding.version ..0
* category.coding.display ..0
* category.coding.userSelected ..0
* category.text ..0
* severity 0..1
* severity from http://kl.dk/fhir/common/caresocial/ValueSet/KLSeveritiesFSIII (required)
* code 1..1
* code from FSIIICareConditions (required)
* bodySite ..0
* subject only Reference(klgateway-care-citizen)
* subject ^type.aggregation = #bundled
* abatement[x] ..0
* encounter ..0
* onset[x] ..0
* recordedDate 1..1
* recorder ..0
* asserter ..0
* stage ..0
* evidence ..0
* note ..0
* extension contains klgateway-care-follow-up-encounter-extension named followUpEncounter 0..1 MS
* extension[followUpEncounter] ^definition = "Encounter for following up on this condition. Must be present if a follow-up date is known"
* obeys klgateway-severity-mandatory-in-home-care-not-allowed-in-nursing

Invariant: klgateway-severity-mandatory-in-home-care-not-allowed-in-nursing
Description: "The severity is mandatory for home care and not allowed for nursing conditions"
Severity: #error
Expression: "(severity.exists() and code.coding.memberOf('http://kl.dk/fhir/common/caresocial/ValueSet/KLConditionCodesHomeCare'))
          or (severity.empty() and code.coding.memberOf('http://kl.dk/fhir/common/caresocial/ValueSet/KLConditionCodesNursing'))"


Alias: $KLTerminology = http://kl.dk/fhir/common/caresocial/CodeSystem/FSIII

Instance: VaskeSigLetteBegraensninger
InstanceOf: KLGatewayCareCondition
Description: "Assessed ability for the test person to wash himself"
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $KLTerminology#B2
* code = $KLTerminology#J1.1
* subject = Reference(TestPerson)
* recordedDate = 2020-08-14
* extension[followUpEncounter].valueReference = Reference(OpfoelgningsKontakt)

Instance: ProblemerMedPersonligPleje
InstanceOf: KLGatewayCareCondition
Description: "Assessed ability for the test person to perform personal care"
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* code = $KLTerminology#I1.1
* subject = Reference(TestPerson)
* recordedDate = 2020-08-14
* extension[followUpEncounter].valueReference = Reference(OpfoelgningsKontakt)