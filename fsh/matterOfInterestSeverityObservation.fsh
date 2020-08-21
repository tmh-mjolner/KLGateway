Profile: KLGatewayCareHomeCareMatterOfInterestSeverityObservation
Parent: Observation
Id: klgateway-care-home-care-matter-of-interest-observation
Title: "Care Home Care Matter of Interest Severity Observation"
Description: "Severity of a home care matter of interest."
* identifier ..0
* basedOn ..0
* partOf ..0
* category ..0
* code from HomeCareAreas
* subject only Reference(klgateway-care-citizen)
* subject ^type.aggregation = #bundled
* focus ..0
* encounter ..0
* effective[x] 1..1
* effective[x] only dateTime
* issued ..0
* performer ..0
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from FSIIISeverites
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


Instance: EgensomsorgLetteBegraensninger
InstanceOf: KLGatewayCareHomeCareMatterOfInterestSeverityObservation
* status = #final
* code = urn:oid:1.2.208.176.2.21#J1
* subject = Reference(TestPerson)
* effectiveDateTime = 2020-08-14
* valueCodeableConcept = urn:oid:1.2.208.176.2.21#B2
