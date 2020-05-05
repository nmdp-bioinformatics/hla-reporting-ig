Profile:        HLAallele
Parent:         Observation 
Id:             hla-allele
Mixins:         HLABaseObservation
Title:          "HLA Allele Observation"
Description:    "HLA Allele profile of haplotype observation"
// * code ^patternCodeableConcept = LNC#84413-4 // Haplotype display name
* code = LNC#84414-2 // Haplotype display name

Instance:   HLA-A-AlleleExample1
InstanceOf: hla-allele
Usage:      #example
Title:      "HLA-A*01:01:01:01 Allele Example"
Description: "Example of HLA-A allele HLA-A*01:01:01:01 using IMGT/HLA 3.25 nomenclature"
// * code.coding[0] = LNC#84413-4 "Haplotype display name"
* status = #final
* valueCodeableConcept.coding.code = #hla#3.25.0#HLA-A*01:01:01:01
* component[gene-studied].valueCodeableConcept = HLAGeneIdCS#HGNC:4931 "HLA-A"
// * derivedFrom[hla-sequence].reference = "http://example.org/fhir/MolecularSequence/HLA-A-SequenceExample1"
* derivedFrom = Reference(HLA-A-SequenceExample1)


Instance:   HLA-A-AlleleExample2
InstanceOf: hla-allele
Usage:      #example
Title:      "HLA-A*01:02 Allele Example"
Description: "Example of HLA-A allele HLA-A*01:02 using IMGT/HLA 3.25 nomenclature"
// * code.coding[0] = LNC#84413-4 "Haplotype display name"
* status = #final
* valueCodeableConcept.coding.code = #hla#3.25.0#HLA-A*01:02
* component[gene-studied].valueCodeableConcept = HLAGeneIdCS#HGNC:4931 "HLA-A"
// * derivedFrom[hla-sequence].reference = "http://example.org/fhir/MolecularSequence/HLA-A-SequenceExample2"
* derivedFrom = Reference(HLA-A-SequenceExample2)


Instance:   HLA-B-AlleleExample1
InstanceOf: hla-allele
Usage:      #example
Title:      "HLA-B*57:01:01:01 Allele Example"
Description: "Example of HLA-B*57:01:01:01 allele using IMGT/HLA 3.25 nomenclature"
// * code.coding[0] = LNC#84413-4 "Haplotype display name"
* status = #final
* valueCodeableConcept.coding.code = #hla#3.25.0#HLA-B*57:01:01:01
* component[gene-studied].valueCodeableConcept = HLAGeneIdCS#HGNC:4932 "HLA-B"
// * derivedFrom[hla-sequence].reference = "http://example.org/fhir/MolecularSequence/HLA-B-SequenceExample1"
* derivedFrom = Reference(HLA-B-SequenceExample1)

Instance:   HLA-B-AlleleExample2
InstanceOf: hla-allele
Usage:      #example
Title:      "HLA-B*15:01:01:01 Allele Example"
Description: "Example of HLA-B*15:01:01:01 allele using IMGT/HLA 3.25 nomenclature"
// * code.coding[0] = LNC#84413-4 "Haplotype display name"
* status = #final
* valueCodeableConcept.coding.code = #hla#3.25.0#HLA-B*15:01:01:01
* component[gene-studied].valueCodeableConcept = HLAGeneIdCS#HGNC:4932 "HLA-B"
// * derivedFrom[hla-sequence].reference = "http://example.org/fhir/MolecularSequence/HLA-B-SequenceExample2"
* derivedFrom = Reference(HLA-B-SequenceExample2)
