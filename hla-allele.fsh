Profile:        HLAallele
Parent:         haplotype 
Id:             hla-allele
Title:          "HLA Allele Observation"
Description:    "HLA Allele profile of haplotype observation"

* component[cytogenetic-location] 0..0
* component[ref-sequence-assembly] 0..0

* component[gene-studied] 1..1 MS
// * component[gene-studied].value[x] 1..1
* component[gene-studied].value[x] only CodeableConcept
* component[gene-studied].value[x] from HLAGeneIdVS

* value[x] only CodeableConcept 
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding ^slicing.description = "slicing on valueCodeableConcept"

* valueCodeableConcept.coding contains GL 1..1 MS
* valueCodeableConcept.coding[GL].system 1..1
* valueCodeableConcept.coding[GL].code 1..1
* valueCodeableConcept.coding[GL].system = "https://glstring.org"
* valueCodeableConcept.coding[GL].code obeys GLSC
