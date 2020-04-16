Profile:        HLAGenotype
Parent:         Observation
Id:             hla-genotype
Mixins:         HLABaseObservation
Title:          "HLA Genotype Observation"
Description:    "HLA Genotype profile of Observation"
* code ^patternCodeableConcept = LNC#84413-4 // Genotype display name


Instance:   HLA-A-GenotypeExample
InstanceOf: hla-genotype
Usage: #example
Title:      "HLA-A Genotype Example (HLA-A*01:01:01:01+HLA-A*01:02)"
Description: "Example of HLA-A genotyping using IMGT/HLA 3.25 nomenclature"
* status = #final
* valueCodeableConcept.coding[GL] = GLSCodeSystem#hla#3.25.0#HLA-A*01:01:01:01+HLA-A*01:02
// * component[gene-studied].code = LNC#HGNC:4931 "HLA-A"
* component[gene-studied].valueCodeableConcept = HLAGeneIDCS#HGNC:4931 "HLA-A"
// * derivedFrom[0].reference = "http://example.org/fhir/Observation/HLA-A-AlleleExample1"
// * derivedFrom[1].reference = "http://example.org/fhir/Observation/HLA-A-AlleleExample2"
* derivedFrom = Reference(HLA-A-AlleleExample1)
* derivedFrom = Reference(HLA-A-AlleleExample2)

Instance:   HLA-B-GenotypeExample
InstanceOf: hla-genotype
Usage: #example
Title:      "HLA-B Genotype Example (HLA-B*57:01:01:01+HLA-B*15:01:01:01)"
Description: "Example of HLA-B genotyping using IMGT/HLA 3.25 nomenclature"
* status = #final
* valueCodeableConcept.coding[GL] = GLSCodeSystem#hla#3.25.0#HLA-B*57:01:01:01+HLA-B*15:01:01:01
// * component[gene-studied].code = LNC#LNC#48018-6 // Gene studied [ID]
* component[gene-studied].valueCodeableConcept = HLAGeneIDCS#HGNC:4932 "HLA-B"
// * derivedFrom[0].reference = "http://example.org/fhir/Observation/HLA-B-AlleleExample1"
// * derivedFrom[1].reference = "http://example.org/fhir/Observation/HLA-B-AlleleExample2"
* derivedFrom = Reference(HLA-B-AlleleExample1)
* derivedFrom = Reference(HLA-B-AlleleExample2)