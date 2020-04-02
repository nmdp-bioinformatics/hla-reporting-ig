Alias: GLSCodeSystem = https://glstring.org 

Profile:        HLAGenotype
Parent:         genotype
Id:             hla-genotype
Title:          "HLA Genotype Observation"
Description:    "HLA Genotype profile of genotype observation"

* component[cytogenetic-location] 0..0
* component[ref-sequence-assembly] 0..0

* component[gene-studied] 1..1 MS
* component[gene-studied].value[x] only CodeableConcept
* component[gene-studied].value[x] from HLAGeneIdVS

* value[x] only CodeableConcept 
// * valueCodeableConcept ^patternCodeableConcept.coding.system = "https://glstring.org"
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding ^slicing.description = "slicing on valueCodeableConcept"

* valueCodeableConcept.coding contains GL 1..1 MS
* valueCodeableConcept.coding[GL].system 1..1
* valueCodeableConcept.coding[GL].code 1..1
* valueCodeableConcept.coding[GL].system = "https://glstring.org"
* valueCodeableConcept.coding[GL].code obeys GLSC



Instance:   HLA-A-GenotypeExample1
InstanceOf: http://fhir.nmdp.org/ig/hla-reporting/StructureDefinition/hla-genotype
Title:      "HLA-A Genotype Example 1"
Description: "Example of HLA-A genotyping using IMGT/HLA 3.25 nomenclature"
* status = #final
* valueCodeableConcept.coding[GL] = GLSCodeSystem#hla#3.25.0#HLA-A*01:01:01:01/HLA-A*24:02:01:01
* component[gene-studied].valueCodeableConcept = HGNC#HGNC:4931 "HLA-A"
