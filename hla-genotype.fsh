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
// * valueCodeableConcept ^patternCodeableConcept.coding.system = "http://glstring.org"
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding ^slicing.description = "slicing on valueCodeableConcept"

* valueCodeableConcept.coding contains GL 1..1 MS
* valueCodeableConcept.coding[GL].system 1..1
* valueCodeableConcept.coding[GL].code 1..1
* valueCodeableConcept.coding[GL].system = "http://glstring.org" (exactly)
* valueCodeableConcept.coding[GL].code obeys GLSC

* derivedFrom ^slicing.discriminator.type = #pattern
* derivedFrom ^slicing.discriminator.path = "resolve().code"
* derivedFrom ^slicing.rules = #open
* derivedFrom ^slicing.description = "reference to allele and sequence"
* derivedFrom contains hla-allele 0..*
* derivedFrom contains hla-sequence 0..*
* derivedFrom[hla-allele] only Reference(hla-allele)
* derivedFrom[hla-sequence] only Reference(hla-molecularsequence)


Instance:   HLA-A-GenotypeExample
InstanceOf: http://fhir.nmdp.org/ig/hla-reporting/StructureDefinition/hla-genotype
Usage: #example
Title:      "HLA-A Genotype Example (HLA-A*01:01:01:01+HLA-A*01:02)"
Description: "Example of HLA-A genotyping using IMGT/HLA 3.25 nomenclature"
* status = #final
* valueCodeableConcept.coding[GL] = GLSCodeSystem#hla#3.25.0#HLA-A*01:01:01:01+HLA-A*01:02
* component[gene-studied].valueCodeableConcept = HLAGeneIDCS#HGNC:4931 "HLA-A"
// * derivedFrom[0].reference = "http://example.org/fhir/Observation/HLA-A-AlleleExample1"
// * derivedFrom[1].reference = "http://example.org/fhir/Observation/HLA-A-AlleleExample2"
* derivedFrom[0].reference = "Observation/HLA-A-AlleleExample1"
* derivedFrom[1].reference = "Observation/HLA-A-AlleleExample2"
// * derivedFrom.reference = HLA-A-AlleleExample1
// * derivedFrom.reference = HLA-A-AlleleExample2

Instance:   HLA-B-GenotypeExample
InstanceOf: http://fhir.nmdp.org/ig/hla-reporting/StructureDefinition/hla-genotype
Usage: #example
Title:      "HLA-B Genotype Example (HLA-B*57:01:01:01+HLA-B*15:01:01:01)"
Description: "Example of HLA-B genotyping using IMGT/HLA 3.25 nomenclature"
* status = #final
* valueCodeableConcept.coding[GL] = GLSCodeSystem#hla#3.25.0#HLA-B*57:01:01:01+HLA-B*15:01:01:01
* component[gene-studied].valueCodeableConcept = HLAGeneIDCS#HGNC:4932 "HLA-B"
// * derivedFrom[0].reference = "http://example.org/fhir/Observation/HLA-B-AlleleExample1"
// * derivedFrom[1].reference = "http://example.org/fhir/Observation/HLA-B-AlleleExample2"
* derivedFrom[0].reference = "Observation/HLA-B-AlleleExample1"
* derivedFrom[1].reference = "Observation/HLA-B-AlleleExample2"
// * derivedFrom.reference = HLA-B-AlleleExample1
// * derivedFrom.reference = HLA-A-BlleleExample2