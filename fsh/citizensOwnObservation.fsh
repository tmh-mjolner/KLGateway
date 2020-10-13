Profile: KLGatewayCareCitizensOwnObservation
Parent: Observation
Id: klgateway-care-citizens-own-observation
Title: "Care Citizens Own Observation"
Description: "Measurements and simple assertions made about a patient by the patient."
* identifier ..0
* basedOn ..0
* partOf ..0
* category ..0
* status ^definition = "The status of the result value. Will typically be final or entered-in-error."
* code 1..1
* code from http://kl.dk/fhir/common/caresocial/ValueSet/KLCitizenObservationCodesFSIII (required)
* code.coding.version ..0
* code.coding.display ..0
* code.coding.userSelected ..0
* code.text ..0
* subject only Reference(klgateway-care-citizen)
* subject ^type.aggregation = #bundled
* focus 1..1
* focus only Reference(KLGatewayCareCondition or KLGatewayCareMatterOfInterestObservation)
* focus ^type.aggregation = #bundled
* encounter ..0
* effective[x] 1..1
* effective[x] only dateTime
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from http://kl.dk/fhir/common/caresocial/ValueSet/KLCitizenObservationResultCodesFSIII
* value[x].coding.version ..0
* value[x].coding.display ..0
* value[x].coding.userSelected ..0
* value[x].text ..0
* issued ..0
* performer ..0
* dataAbsentReason ..0
* interpretation ..0
* note ..0
* bodySite ..0
* method ..0
* specimen ..0
* device ..0
* referenceRange ..0
* hasMember ..0
* derivedFrom ..0
* component ..0
* obeys klgateway-citizen-observation-code-and-value-must-match
* obeys klgateway-focus-must-be-home-care-condition-or-area

Invariant: klgateway-citizen-observation-code-and-value-must-match
Description: "The value of the observation shall be member of the valueset matching the code of the observation"
Severity: #error
Expression: "((code.coding.code = 'C') and (valueCodeableConcept.memberOf('http://kl.dk/fhir/common/caresocial/ValueSet/KLPerformanceLevelCodesFSIII')))
          or ((code.coding.code = 'D') and (valueCodeableConcept.memberOf('http://kl.dk/fhir/common/caresocial/ValueSet/KLImportanceLevelCodesFSIII')))"

Invariant: klgateway-focus-must-be-home-care-condition-or-area
Description: "The focus shall be a home care condition or a home care matter of interest"
Severity: #error
Expression: "focus.resolve().code.coding.memberOf('http://kl.dk/fhir/common/caresocial/ValueSet/KLConditionCodesHomeCare')
          or focus.resolve().code.coding.memberOf('http://kl.dk/fhir/common/caresocial/ValueSet/HomeCareAreas')"


Instance: UdfoererSelvVaskeSig
InstanceOf: KLGatewayCareCitizensOwnObservation
Description: "Citizens own observation regarding abililty to wash himself"
* status = #final
* code = $KLTerminology#C
* subject = Reference(TestPerson)
* focus = Reference(VaskeSigLetteBegraensninger)
* effectiveDateTime = 2020-08-14
* valueCodeableConcept = $KLTerminology#C1

Instance: OpleverIkkeBegraensningerMedVaskeSig
InstanceOf: KLGatewayCareCitizensOwnObservation
Description: "Citizens own observation regarding the importance of the limitations on the ability to wash himself"
* status = #final
* code = $KLTerminology#D
* subject = Reference(TestPerson)
* focus = Reference(VaskeSigLetteBegraensninger)
* effectiveDateTime = 2020-08-14
* valueCodeableConcept = $KLTerminology#D1