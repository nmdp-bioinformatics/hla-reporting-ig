// Alias: uuid-dr = urn:uuid:1fb210d2-fa8c-404f-a2c3-1847e97737df
// Alias: uuid-a-genotype = urn:uuid:8e6b5bd2-3786-4637-919b-4da121adce54
// Alias: uuid-a-allele1 = urn:uuid:c15b84ba-b64c-491d-91a8-a5fc51c085c4
// Alias: uuid-a-allele2 = urn:uuid:b16bc63e-353e-4ee9-a8ee-1a571818f305
// Alias: uuid-a-seq1 = urn:uuid:f67357d3-83bb-4b3b-baa8-2daf8e3f0213
// Alias: uuid-a-seq2 = urn:uuid:b397a2d5-cfe6-498f-8269-bb818eaa461b
 
Instance:    HLA-A-BundleExample1
InstanceOf:  Bundle
Usage:       #example
Title:       "HLA-A Bundle Example 1"
Description: "Example of HLA-A genotyping bundle using IMGT/HLA 3.25 nomenclature"
* type = #transaction
* entry[0].resource = HLA-AB-SummaryReportExample-Bundle
* entry[0].fullUrl = "urn:uuid:1fb210d2-fa8c-404f-a2c3-1847e97737df"
* entry[1].resource = HLA-A-GenotypeExample-Bundle
* entry[2].fullUrl = "urn:uuid:8e6b5bd2-3786-4637-919b-4da121adce54"
// // * entry[1].resource = HLA-A-GenotypeExample1
// // * entry[1].fullUrl = "urn:uuid:e50d05f3-d8da-447a-bc86-bfe1fb88f529"
// // * entry[2].resource = HLA-A-AlleleExample1
// // * entry[2].fullUrl = "urn:uuid:9d4eac7f-cbb2-4aa6-88a0-51c23dfd82a1"
// // * entry[2].resource = HLA-A-AlleleExample2
// // * entry[2].fullUrl = "urn:uuid:9d4eac7f-cbb2-4aa6-88a0-51c23dfd82a1"
// // * entry[3].resource = HLA-A-SequenceExample1
// // * entry[3].fullUrl = "urn:uuid:028f5c24-1ea4-4d30-9508-e7e27482e5b4"
// // * entry[3].resource = HLA-A-SequenceExample2
// // * entry[3].fullUrl = "urn:uuid:028f5c24-1ea4-4d30-9508-e7e27482e5b4"

Instance:   HLA-AB-SummaryReportExample-Bundle
InstanceOf: hla-summary-report
Usage:      #inline
Title:      "HLA-A, HLA-B Summary Report Example"
Description: "Example of HLA summary report"
* extension[GenotypeSummary].valueCodeableConcept = GLSCodeSystem#hla#3.25.0#HLA-A*01:01:01:01+HLA-A*01:01:02^HLA-B*57:01:01:01+HLA-B*15:01:01:01
* status = #final
* code.coding[code] = LNC#81247-9 "Master HL7 genetic variant reporting panel" (exactly)
* code.coding[HLAGeneGroup] = HLAGenegroupCS#588 "Histocompatibility complex (HLA)" (exactly)
* subject.type = "Patient"
* subject.identifier.system = "http://example.org/mysubject_identifers"
* subject.identifier.value = "1234"
* specimen.type = "Specimen"
* specimen.identifier.system = "http://example.org/myspecimen_identifiers"
* specimen.identifier.value = "6789"
* result[0] = Reference("urn:uuid:8e6b5bd2-3786-4637-919b-4da121adce54")
// // * result[1] = Reference(HLA-B-GenotypeExample)

Instance:   HLA-A-GenotypeExample-Bundle
InstanceOf: hla-genotype
Usage:      #inline
Title:      "HLA-A Genotype Example (HLA-A*01:01:01:01+HLA-A*01:02)"
Description: "Example of HLA-A genotyping using IMGT/HLA 3.25 nomenclature"
* status = #final
* code = LNC#84413-4 // Genotype display name
* valueCodeableConcept.coding[GL] = GLSCodeSystem#hla#3.25.0#HLA-A*01:01:01:01+HLA-A*01:02
* component[gene-studied].code = LNC#48018-6 // Gene studied
* component[gene-studied].valueCodeableConcept = HLAGeneIdCS#HGNC:4931 "HLA-A"
// * derivedFrom[allele][0] = Reference(HLA-A-AlleleExample1)
// * derivedFrom[allele][1] = Reference(HLA-A-AlleleExample2)

// Instance:   HLA-A-AlleleExample1-Bundle
// InstanceOf: hla-allele
// Usage:      #inline
// Title:      "HLA-A*01:01:01:01 Allele Example"
// Description: "Example of HLA-A allele HLA-A*01:01:01:01 using IMGT/HLA 3.25 nomenclature"
// // * code.coding[0] = LNC#84413-4 "Haplotype display name"
// * status = #final
// * valueCodeableConcept.coding.code = #hla#3.25.0#HLA-A*01:01:01:01
// * component[gene-studied].valueCodeableConcept = HLAGeneIdCS#HGNC:4931 "HLA-A"
// * derivedFrom = Reference(HLA-A-SequenceExample1)


// Instance:   HLA-A-AlleleExample2-Bundle
// InstanceOf: hla-allele
// Usage:      #inline
// Title:      "HLA-A*01:02 Allele Example"
// Description: "Example of HLA-A allele HLA-A*01:02 using IMGT/HLA 3.25 nomenclature"
// // * code.coding[0] = LNC#84413-4 "Haplotype display name"
// * status = #final
// * valueCodeableConcept.coding.code = #hla#3.25.0#HLA-A*01:02
// * component[gene-studied].valueCodeableConcept = HLAGeneIdCS#HGNC:4931 "HLA-A"
// * derivedFrom = Reference(HLA-A-SequenceExample2)