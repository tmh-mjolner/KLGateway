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
* status ^definition = "Shall be either unknown, entered-in-error, or the status of the intervention at the time of reporting"
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
* activity.detail.code.coding ^slicing.discriminator.type = #value
* activity.detail.code.coding ^slicing.discriminator.path = "system"
* activity.detail.code.coding ^slicing.rules = #closed
* activity.detail.code.coding contains level2 1..1 and level3 0..1 MS
* activity.detail.code.coding[level2].system = "http://kl.dk/fhir/common/caresocial/CodeSystem/FSIII"
* activity.detail.code.coding[level2] from FSIIICareInterventions
* activity.detail.code.coding[level3].system = "http://gateway.kl.dk/CodeSystem/LocallyDefinedInterventions"
* activity.detail.code.coding[level3].code 1..1
* activity.detail.code.coding[level3].display 1..1
* activity.detail.code.coding[level3] ^definition = "Shall contain locally defined code if it is a locally defined level 3 intervention"
* activity.detail.reasonCode ..0
* activity.detail.reasonReference only Reference(KLGatewayCareCondition)
* activity.detail.reasonReference MS
* activity.detail.reasonReference ^definition = "Reason for this intervention. Must contain all conditions known to be addressed by this intervention"
* activity.detail.reasonReference ^type.aggregation = #bundled
* activity.detail.goal ..0
* activity.detail.status ^definition = "Shall be either unknown, entered-in-error, or the activity status of the intervention at the time of reporting"
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
* extension[followUpEncounter] ^definition = "Encounter for following up on this intervention. Must be present if a follow-up date is known"


Alias: $KLTerminology = http://kl.dk/fhir/common/caresocial/CodeSystem/FSIII

Instance: PersonligHygiejne
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing personal hygiene according to FSIII on the test person"
* status = #active
* intent = #plan
* subject = Reference(TestPerson)
* period.start = 2020-08-14
* activity.detail.code.coding[level2] = $KLTerminology#H1.1
* activity.detail.status = #in-progress

Instance: Dialyse
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing dialysis according to FSIII on the test person"
* status = #active
* intent = #plan
* subject = Reference(TestPerson)
* period.start = 2020-08-14
* activity.detail.code.coding[level2] = $KLTerminology#G1.10
* activity.detail.status = #in-progress