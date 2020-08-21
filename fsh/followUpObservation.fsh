Alias: $SnomedCT = http://snomed.info/sct

Profile: KLGatewayCareFollowUpObservation
Parent: Observation
Id: klgateway-care-follow-up-observation
Title: "Care Follow Up Observation"
Description: "Structured result or outcome of a follow up."
* identifier ..0
* basedOn ..0
* partOf ..0
* category ..0
* code.coding 1..1
* code.coding = $SnomedCT#712744002
* subject only Reference(klgateway-care-citizen)
* subject ^type.aggregation = #bundled
* focus ..0 // Should refer to condition(s) and/or intervention(s)? 
* encounter 1..1
* encounter only Reference(KLGatewayCareEncounter)
* encounter ^type.aggregation = #bundled
* effective[x] 1..1
* effective[x] only dateTime
* issued ..0
* performer ..0
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from FSIIIFollowUpCodes
* dataAbsentReason ..0
* interpretation ..0
* note ..0
* bodySite ..0
* method ..0
* specimen ..0
* device ..0
* referenceRange ..0
* hasMember 0..0
* derivedFrom ..0
* component ..0


Instance: Fortsaettes
InstanceOf: KLGatewayCareFollowUpObservation
* status = #final
* code = $SnomedCT#712744002
* subject = Reference(TestPerson)
* encounter = Reference(OpfoelgningsKontakt)
* effectiveDateTime = 2020-08-14
* valueCodeableConcept = $KLTerminology#E1