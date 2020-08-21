Alias: $KLTerminology = urn:oid:1.2.208.176.2.21

Profile: KLGatewayCarePlannedIntervention
Parent: CarePlan
Id: klgateway-care-planned-intervention
Title: "Care Planned Intervention"
Description: "Planned interventions for nursing and home care in Danish Municipalities."
* identifier ..0
* instantiatesCanonical ..0
* instantiatesUri ..0
* basedOn ..0
* replaces ..0
* partOf ..0
* intent = #plan
* category ..0
* title ..0
* description ..0
* subject only Reference(klgateway-care-citizen)
* subject ^type.aggregation = #bundled
* encounter ..0
* period 1..1
* period.start 1..1
* created ..0
* author ..0
* contributor ..0
* careTeam ..0
* addresses ..0
* supportingInfo ..0
* goal ..0
* activity 1..1
* activity.outcomeCodeableConcept ..0
* activity.outcomeReference ..0
* activity.progress ..0
* activity.reference ..0
* activity.detail 1..
* activity.detail.kind ..0
* activity.detail.instantiatesCanonical ..0
* activity.detail.instantiatesUri ..0
* activity.detail.code 1..1
* activity.detail.code from FSIIICareInterventions
* activity.detail.reasonCode ..0
* activity.detail.reasonReference only Reference(KLGatewayCareHomeCareCondition or KLGatewayCareNursingCondition)
* activity.detail.reasonReference MS
* activity.detail.reasonReference ^type.aggregation = #bundled
* activity.detail.goal ..0
// * activity.detail.status
* activity.detail.statusReason ..0
* activity.detail.doNotPerform ..0
* activity.detail.scheduled[x] ..0
* activity.detail.location ..0
* activity.detail.performer ..0
* activity.detail.product[x] ..0
* activity.detail.dailyAmount ..0
* activity.detail.quantity ..0
* activity.detail.description ..0
* note ..0
* extension contains klgateway-care-follow-up-encounter-extension named followUpEncounter 0..1 MS


Instance: PersonligHygiejne
InstanceOf: KLGatewayCarePlannedIntervention
* status = #active
* intent = #plan
* subject = Reference(TestPerson)
* period.start = 2020-08-14
* activity.detail.code = $KLTerminology#H1.1
* activity.detail.status = #in-progress

Instance: Dialyse
InstanceOf: KLGatewayCarePlannedIntervention
* status = #active
* intent = #plan
* subject = Reference(TestPerson)
* period.start = 2020-08-14
* activity.detail.code = $KLTerminology#G1.10
* activity.detail.status = #in-progress