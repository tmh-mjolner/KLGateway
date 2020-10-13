Profile: KLGatewayCareDeliveryReport
Parent: Bundle
Id: klgateway-care-delivery-report
Title: "Care Delivery Report"
Description: "Deliver report to deliver for each citizen."
* identifier ..0
* type = #collection
* timestamp 1..1
* total ..0
* link ..0
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains
    citizen 1..1 and
    condition 0.. and
    goal 0.. and
    citizensOwnObservation 0.. and
    plannedIntervention 0.. and
    matterOfInterestObservation 0.. and
    encounter 0.. and
    followUpObservation 0..
* entry[citizen].resource 1..1
* entry[citizen].resource only KLGatewayCareCitizen
* entry[condition].resource 1..1
* entry[condition].resource only KLGatewayCareCondition
* entry[goal].resource 1..1
* entry[goal].resource only KLGatewayCareGoal
* entry[citizensOwnObservation].resource 1..1
* entry[citizensOwnObservation].resource only KLGatewayCareCitizensOwnObservation
* entry[plannedIntervention].resource 1..1
* entry[plannedIntervention].resource only KLGatewayCarePlannedIntervention
* entry[matterOfInterestObservation].resource 1..1
* entry[matterOfInterestObservation].resource only KLGatewayCareMatterOfInterestObservation
* entry[encounter].resource 1..1
* entry[encounter].resource only KLGatewayCareEncounter
* entry[followUpObservation].resource 1..1
* entry[followUpObservation].resource only KLGatewayCareFollowUpObservation
* signature ..0

Instance: TestPersonReport
InstanceOf: KLGatewayCareDeliveryReport
Description: "Example of a delivery report for the test person"
* type = #collection
* timestamp = 2020-08-14T00:00:00Z
* entry[citizen].fullUrl = "Patient/TestPerson"
* entry[citizen].resource = TestPerson
* entry[condition][0].fullUrl = "Condition/VaskeSigLetteBegraensninger"
* entry[condition][0].resource = VaskeSigLetteBegraensninger 
* entry[goal].fullUrl = "Goal/ForventetIngenBegraensninger"
* entry[goal].resource = ForventetIngenBegraensninger
* entry[citizensOwnObservation][0].fullUrl = "Observation/OpleverIkkeBegraensningerMedVaskeSig"
* entry[citizensOwnObservation][0].resource = OpleverIkkeBegraensningerMedVaskeSig
* entry[citizensOwnObservation][1].fullUrl = "Observation/UdfoererSelvVaskeSig"
* entry[citizensOwnObservation][1].resource = UdfoererSelvVaskeSig
* entry[condition][1].fullUrl = "Condition/ProblemerMedPersonligPleje"
* entry[condition][1].resource = ProblemerMedPersonligPleje
* entry[plannedIntervention].fullUrl = "CarePlan/PersonligHygiejne"
* entry[plannedIntervention].resource = PersonligHygiejne
* entry[plannedIntervention].fullUrl = "CarePlan/Dialyse"
* entry[plannedIntervention].resource = Dialyse
* entry[matterOfInterestObservation].fullUrl = "Observation/EgensomsorgBegraensninger"
* entry[matterOfInterestObservation].resource = EgensomsorgBegraensninger
* entry[encounter].fullUrl = "Encounter/OpfoelgningsKontakt"
* entry[encounter].resource = OpfoelgningsKontakt
* entry[followUpObservation][0].fullUrl = "Observation/VaskeSigFortsaettes"
* entry[followUpObservation][0].resource = VaskeSigFortsaettes
* entry[followUpObservation][1].fullUrl = "Observation/PersonligPlejeFortsaettes"
* entry[followUpObservation][1].resource = PersonligPlejeFortsaettes
* entry[followUpObservation][2].fullUrl = "Observation/PersonligHygiejneFortsaettes"
* entry[followUpObservation][2].resource = PersonligHygiejneFortsaettes
* entry[followUpObservation][3].fullUrl = "Observation/DialyseFortsaettes"
* entry[followUpObservation][3].resource = DialyseFortsaettes
* entry[followUpObservation][4].fullUrl = "Observation/EgensomsorgBegraensningerFortsaettes"
* entry[followUpObservation][4].resource = EgensomsorgBegraensningerFortsaettes