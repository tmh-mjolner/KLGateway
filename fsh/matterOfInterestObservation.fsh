Profile: KLGatewayCareMatterOfInterestObservation
Parent: Observation
Id: klgateway-care-matter-of-interest-observation
Title: "Care Matter of Interest Observation"
Description: "Matter or area of interest in relation to the care of the citizen."
* identifier ..0
* basedOn ..0
* partOf ..0
* category ..0
* code from FSIIIConcernCodes
* subject only Reference(klgateway-care-citizen)
* subject ^type.aggregation = #bundled
* focus ..0
* encounter ..0
* effective[x] 1..1
* effective[x] only dateTime
* issued ..0
* performer ..0
* value[x] ..0
* dataAbsentReason ..0
* interpretation ..0
* note ..0
* bodySite ..0
* method ..0
* specimen ..0
* device ..0
* referenceRange ..0
* hasMember 0..1 MS
* hasMember ^definition = "Severity of the observation. Must be present for home care matters of interest, if severity is known"
* hasMember only Reference(KLGatewayCareHomeCareMatterOfInterestSeverityObservation)
* hasMember ^type.aggregation = #bundled
* derivedFrom ..0
* component ..0
* obeys klgateway-hasMember-code-match

Invariant: klgateway-hasMember-code-match
Description: "Matter of interest code must match concern code of severity observation"
Severity: #error
Expression: "hasMember.empty() or (code = hasMember.resolve().code)"

Instance: EgensomsorgBegraensninger
InstanceOf: KLGatewayCareMatterOfInterestObservation
* status = #final
* code = urn:oid:1.2.208.176.2.21#J1
* subject = Reference(TestPerson)
* effectiveDateTime = 2020-08-14
* hasMember = Reference(EgensomsorgLetteBegraensninger)