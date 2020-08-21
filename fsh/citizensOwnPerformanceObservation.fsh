Alias: $KLTerminology = urn:oid:1.2.208.176.2.21

Profile: KLGatewayCareCitizensOwnPerformanceObservation
Parent: KLGatewayCareCitizensOwnObservation
Id: klgateway-care-citizens-own-performance-observation
Title: "Care Citizens Own Performance Observation"
Description: "Documentation of performance level assessment made by the patient."
* code.coding = $KLTerminology#C
* value[x] from FSIIIPerformanceLevelCodes


Instance: UdfoererSelvVaskeSig
InstanceOf: KLGatewayCareCitizensOwnPerformanceObservation
* status = #final
* code = $KLTerminology#C
* subject = Reference(TestPerson)
* focus = Reference(VaskeSigLetteBegraensninger)
* effectiveDateTime = 2020-08-14
* valueCodeableConcept = $KLTerminology#C1