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
* entry ^slicing.discriminator.path = "$this.resource.resolve()"
* entry ^slicing.rules = #closed
* entry contains
    citizen 1..1 and
    homeCareCondition 0.. and
    goal 0.. and
    citizensOwnImportanceObservation 0.. and
    citizensOwnPerformanceObservation 0.. and
    nursingCondition 0.. and
    plannedIntervention 0.. and
    matterOfInterestObservation 0.. and
    homeCareMatterOfInterestSeverityObservation 0.. and
    encounter 0.. and
    followUpObservation 0..
* entry[citizen].resource 1..1
* entry[citizen].resource only KLGatewayCareCitizen
* entry[homeCareCondition].resource 1..1
* entry[homeCareCondition].resource only KLGatewayCareHomeCareCondition
* entry[goal].resource 1..1
* entry[goal].resource only KLGatewayCareGoal
* entry[citizensOwnImportanceObservation].resource 1..1
* entry[citizensOwnImportanceObservation].resource only KLGatewayCareCitizensOwnImportanceObservation
* entry[citizensOwnPerformanceObservation].resource 1..1
* entry[citizensOwnPerformanceObservation].resource only KLGatewayCareCitizensOwnPerformanceObservation
* entry[nursingCondition].resource 1..1
* entry[nursingCondition].resource only KLGatewayCareNursingCondition
* entry[plannedIntervention].resource 1..1
* entry[plannedIntervention].resource only KLGatewayCarePlannedIntervention
* entry[matterOfInterestObservation].resource 1..1
* entry[matterOfInterestObservation].resource only KLGatewayCareMatterOfInterestObservation
* entry[homeCareMatterOfInterestSeverityObservation].resource 1..1
* entry[homeCareMatterOfInterestSeverityObservation].resource only KLGatewayCareHomeCareMatterOfInterestSeverityObservation
* entry[encounter].resource 1..1
* entry[encounter].resource only KLGatewayCareEncounter
* entry[followUpObservation].resource 1..1
* entry[followUpObservation].resource only KLGatewayCareFollowUpObservation
* signature ..0

Instance: TestPersonReport
InstanceOf: KLGatewayCareDeliveryReport
* type = #collection
* timestamp = 2020-08-14T00:00:00Z
* entry[citizen].fullUrl = "Patient/TestPerson"
* entry[citizen].resource = TestPerson
* entry[homeCareCondition].fullUrl = "Condition/VaskeSigLetteBegraensninger"
* entry[homeCareCondition].resource = VaskeSigLetteBegraensninger 
* entry[goal].fullUrl = "Goal/ForventetIngenBegraensninger"
* entry[goal].resource = ForventetIngenBegraensninger
* entry[citizensOwnImportanceObservation].fullUrl = "Observation/OpleverIkkeBegraensningerMedVaskeSig"
* entry[citizensOwnImportanceObservation].resource = OpleverIkkeBegraensningerMedVaskeSig
* entry[citizensOwnPerformanceObservation].fullUrl = "Observation/UdfoererSelvVaskeSig"
* entry[citizensOwnPerformanceObservation].resource = UdfoererSelvVaskeSig
* entry[nursingCondition].fullUrl = "Condition/ProblemerMedPersonligPleje"
* entry[nursingCondition].resource = ProblemerMedPersonligPleje
* entry[plannedIntervention].fullUrl = "CarePlan/PersonligHygiejne"
* entry[plannedIntervention].resource = PersonligHygiejne
* entry[plannedIntervention].fullUrl = "CarePlan/Dialyse"
* entry[plannedIntervention].resource = Dialyse
* entry[matterOfInterestObservation].fullUrl = "Observation/EgensomsorgBegraensninger"
* entry[matterOfInterestObservation].resource = EgensomsorgBegraensninger
* entry[homeCareMatterOfInterestSeverityObservation].fullUrl = "Observation/EgensomsorgLetteBegraensninger"
* entry[homeCareMatterOfInterestSeverityObservation].resource = EgensomsorgLetteBegraensninger
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