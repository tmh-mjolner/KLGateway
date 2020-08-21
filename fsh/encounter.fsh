Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $KLTerminology = urn:oid:1.2.208.176.2.21

Profile: KLGatewayCareEncounter
Parent: Encounter
Id: klgateway-care-encounter
Title: "Care Encounter"
Description: "Encounter for following up on conditions, care plans, or observations."
* identifier ..0
* status = #planned
* statusHistory ..0
* class = $v3-ActCode#HH
* class.version ..0
* class.display ..0
* class.userSelected ..0
* classHistory ..0
* type 1..1
* type from KLCommonCareSocialEncounterTypes (required)
* type.coding 1..1
* type.coding = $KLTerminology#9f03dfbb-7a97-45a5-94db-d4c3501714a9
* type.coding.version ..0
* type.coding.display ..0
* type.coding.userSelected ..0
* type.text ..0
* serviceType ..0
* priority ..0
* subject 1..1
* subject only Reference(klgateway-care-citizen)
* subject ^type.aggregation = #bundled
* episodeOfCare ..0
* basedOn ..0
* participant ..0
* appointment ..0
* period 1..1
* period.end ..0
* length ..0
* reasonCode ..0
* reasonReference ..0
* diagnosis ..0
* account ..0
* hospitalization ..0
* location ..0
* serviceProvider ..0
* partOf ..0


Instance: OpfoelgningsKontakt
InstanceOf: KLGatewayCareEncounter
* status = #planned
* class = $v3-ActCode#HH
* type = $KLTerminology#9f03dfbb-7a97-45a5-94db-d4c3501714a9
* subject = Reference(TestPerson)
* period.start = 2020-08-14