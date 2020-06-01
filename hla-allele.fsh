Profile:        HLAallele
Parent:         haplotype 
Id:             hla-allele
Title:          "HLA Allele Observation"
Description:    "HLA Allele profile of haplotype observation"

* component[cytogenetic-location] 0..0
* component[ref-sequence-assembly] 0..0
* referenceRange 0..0
* derivedFrom[variant] 0..0
* derivedFrom[haplotype] 0..0

* component[gene-studied] 1..1 MS
// * component[gene-studied].value[x] 1..1
* component[gene-studied].value[x] only CodeableConcept
* component[gene-studied].value[x] from HLAGeneIdVS

* value[x] only CodeableConcept 
// * valueCodeableConcept.coding ^slicing.discriminator.type = #value
// * valueCodeableConcept.coding ^slicing.discriminator.path = "system"
// * valueCodeableConcept.coding ^slicing.rules = #open
// * valueCodeableConcept.coding ^slicing.description = "slicing on valueCodeableConcept"

// * valueCodeableConcept.coding contains GL 1..1 MS
// * valueCodeableConcept.coding[GL].system 1..1
// * valueCodeableConcept.coding[GL].code 1..1
// * valueCodeableConcept.coding[GL].system = "http://glstring.org"
// * valueCodeableConcept.coding[GL].code obeys GLSC

* valueCodeableConcept 1..1
* valueCodeableConcept ^patternCodeableConcept.coding.system = "http://glstring.org"

* derivedFrom ^slicing.discriminator.type = #pattern
* derivedFrom ^slicing.discriminator.path = "resolve().code"
* derivedFrom ^slicing.rules = #open
* derivedFrom ^slicing.description = "reference HLA molecular sequence"
* derivedFrom contains hla-sequence 0..*
// * derivedFrom[hla-sequence] only Reference(MolecularSequence){http://fhir.nmdp.org/ig/hla-reporting/StructureDefinition/hla-molecularsequence}
* derivedFrom[hla-sequence] only Reference(hla-molecularsequence)

Instance:   HLA-A-AlleleExample1
InstanceOf: http://fhir.nmdp.org/ig/hla-reporting/StructureDefinition/hla-allele
Usage:      #example
Title:      "HLA-A*01:01:01:01 Allele Example"
Description: "Example of HLA-A allele HLA-A*01:01:01:01 using IMGT/HLA 3.25 nomenclature"
* status = #final
* valueCodeableConcept.coding.code = #hla#3.25.0#HLA-A*01:01:01:01
* component[gene-studied].valueCodeableConcept = HLAGeneIDCS#HGNC:4931 "HLA-A"
// * derivedFrom[hla-sequence].reference = "http://example.org/fhir/MolecularSequence/HLA-A-SequenceExample1"
* derivedFrom[hla-sequence].reference = "MolecularSequence/HLA-A-SequenceExample1"
// * derivedFrom.reference = HLA-A-SequenceExample1


Instance:   HLA-A-AlleleExample2
InstanceOf: http://fhir.nmdp.org/ig/hla-reporting/StructureDefinition/hla-allele
Usage:      #example
Title:      "HLA-A*01:02 Allele Example"
Description: "Example of HLA-A allele HLA-A*01:02 using IMGT/HLA 3.25 nomenclature"
* status = #final
* valueCodeableConcept.coding.code = #hla#3.25.0#HLA-A*01:02
* component[gene-studied].valueCodeableConcept = HLAGeneIDCS#HGNC:4931 "HLA-A"
// * derivedFrom[hla-sequence].reference = "http://example.org/fhir/MolecularSequence/HLA-A-SequenceExample2"
* derivedFrom[hla-sequence].reference = "MolecularSequence/HLA-A-SequenceExample2"
// * derivedFrom.reference = HLA-A-SequenceExample2


Instance:   HLA-B-AlleleExample1
InstanceOf: http://fhir.nmdp.org/ig/hla-reporting/StructureDefinition/hla-allele
Usage:      #example
Title:      "HLA-B*57:01:01:01 Allele Example"
Description: "Example of HLA-B*57:01:01:01 allele using IMGT/HLA 3.25 nomenclature"
* status = #final
* valueCodeableConcept.coding.code = #hla#3.25.0#HLA-B*57:01:01:01
* component[gene-studied].valueCodeableConcept = HLAGeneIDCS#HGNC:4932 "HLA-B"
// * derivedFrom[hla-sequence].reference = "http://example.org/fhir/MolecularSequence/HLA-B-SequenceExample1"
* derivedFrom[hla-sequence].reference = "MolecularSequence/HLA-B-SequenceExample1"
// * derivedFrom.reference = HLA-B-SequenceExample1

Instance:   HLA-B-AlleleExample2
InstanceOf: http://fhir.nmdp.org/ig/hla-reporting/StructureDefinition/hla-allele
Usage:      #example
Title:      "HLA-B*15:01:01:01 Allele Example"
Description: "Example of HLA-B*15:01:01:01 allele using IMGT/HLA 3.25 nomenclature"
* status = #final
* valueCodeableConcept.coding.code = #hla#3.25.0#HLA-B*15:01:01:01
* component[gene-studied].valueCodeableConcept = HLAGeneIDCS#HGNC:4932 "HLA-B"
// * derivedFrom[hla-sequence].reference = "http://example.org/fhir/MolecularSequence/HLA-B-SequenceExample2"
* derivedFrom[hla-sequence].reference = "MolecularSequence/HLA-B-SequenceExample2"
// * derivedFrom.reference = HLA-B-SequenceExample1
