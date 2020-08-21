Profile: KLGatewayCareCitizensOwnObservation
Parent: Observation
Id: klgateway-care-citizens-own-observation
Title: "Care Citizens Own Observation"
Description: "Measurements and simple assertions made about a patient by the patient."
* identifier ..0
* basedOn ..0
* partOf ..0
* category ..0
* code 1..1
* code from FSIIICitizenObservationCodes (required)
* code.coding.version ..0
* code.coding.display ..0
* code.coding.userSelected ..0
* code.text ..0
* subject only Reference(klgateway-care-citizen)
* subject ^type.aggregation = #bundled
* focus 1..1
* focus only Reference(klgateway-care-home-care-condition)
* focus ^type.aggregation = #bundled
* encounter ..0
* effective[x] 1..1
* effective[x] only dateTime
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from FSIIICitizenObservationResultCodes
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