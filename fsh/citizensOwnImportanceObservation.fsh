Alias: $KLTerminology = urn:oid:1.2.208.176.2.21

Profile: KLGatewayCareCitizensOwnImportanceObservation
Parent: KLGatewayCareCitizensOwnObservation
Id: klgateway-care-citizens-own-importance-observation
Title: "Care Citizens Own Importance Observation"
Description: "Documentation of importance level assessment made by the patient."
* code.coding = $KLTerminology#D
* value[x] from FSIIIImportanceLevelCodes


Instance: OpleverIkkeBegraensningerMedVaskeSig
InstanceOf: KLGatewayCareCitizensOwnImportanceObservation
* status = #final
* code = $KLTerminology#D
* subject = Reference(TestPerson)
* focus = Reference(VaskeSigLetteBegraensninger)
* effectiveDateTime = 2020-08-14
* valueCodeableConcept = $KLTerminology#D1