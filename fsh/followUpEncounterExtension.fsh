Extension:  KLGatewayCareFollowUpEncounterExtension
Id: klgateway-care-follow-up-encounter-extension
Title: "Care Follow Up Encounter Extension"
Description: "Encounter for following up on this information."
* value[x] 1..
* value[x] only Reference(klgateway-care-encounter)
* value[x] ^type.aggregation = #bundled