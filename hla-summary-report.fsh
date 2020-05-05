Profile:        HLASummaryReport
Parent:         DiagnosticReport 
Id:             hla-summary-report
Title:          "HLA Summary Report"
Description:    "HLA Summary Report profile of genomics report"

// * extension[RecommendedAction] 0..0
// * imagingStudy 0..0
// * media 0..0

* extension contains HLAGenotypeSummary named GenotypeSummary 1..1

// comment out below because it causes errors. I think the slicing is inherited from genomics-report
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "slicing code"

* code.coding contains
    code 1..1 and
    HLAGeneGroup 1..1
// * code.coding[code] = LNC#81247-9 (exactly) // Master HL7 genetic variant reporting panel
* code.coding[code].system 1..1
* code.coding[code].code 1..1
* code.coding[code].system = "http://loinc.org" (exactly) 
* code.coding[code].code = #81247-9 (exactly) // Master HL7 genetic variant reporting panel

// * code.coding[HLAGeneGroup] = HLAGenegroupCS#588 (exactly) // "Histocompatibility complex (HLA)"
* code.coding[HLAGeneGroup].system 1..1
* code.coding[HLAGeneGroup].code 1..1
* code.coding[HLAGeneGroup].system = "http://www.genenames.org/genegroup" (exactly)
* code.coding[HLAGeneGroup].code = #588  (exactly) // "Histocompatibility complex (HLA)"

* result ^slicing.discriminator[0].type = #pattern
* result ^slicing.discriminator[0].path = "$this.resolve().code"
* result ^slicing.rules = #open
<<<<<<< HEAD
* result ^slicing.description = "slice on pattern of Obs.code"
=======
* result ^slicing.description = "slice result based on pattern of observation.code"
>>>>>>> 877c05cec137f84186830334ae3fc9725b37949d
* result contains 
    hla-genotype 0..* MS and
    hla-allele 0..* MS
// * result[hla-gentotype] only Reference(HLAGenotype)     
// * result[hla-allele] only Reference(HLAallele)
* result[hla-genotype] only Reference(hla-genotype)
* result[hla-genotype] ^short = "HLA Genotype"
* result[hla-allele] only Reference(hla-allele)
* result[hla-allele] ^short = "HLA Allele"




Extension: HLAGenotypeSummary
Id:        hla-genotype-summary
Title:     "HLA Genotype Summary"
Description: "Summary genotype of HLA in GL String Code"
* value[x] only CodeableConcept
* value[x] ^patternCodeableConcept.coding.system = http://glstring.org


Instance:   HLA-AB-SummaryReportExample
InstanceOf: hla-summary-report
Usage: #example
Title:      "HLA-A, HLA-B Summary Report Example"
Description: "Example of HLA summary report"
// * id = "hla-a-summaryreport-ex1"
* extension[GenotypeSummary].valueCodeableConcept = GLSCodeSystem#hla#3.25.0#HLA-A*01:01:01:01+HLA-A*01:01:02^HLA-B*57:01:01:01+HLA-B*15:01:01:01
* status = #final
// * code.coding[code] = LNC#81247-9 "Master HL7 genetic variant reporting panel" (exactly)
// * code.coding[HLAGeneGroup] = HLAGenegroupCS#588 "Histocompatibility complex (HLA)" (exactly)
* subject.type = "Patient"
* subject.identifier.system = "http://example.org/mysubject_identifers"
* subject.identifier.value = "1234"
* specimen.type = "Specimen"
* specimen.identifier.system = "http://example.org/myspecimen_identifiers"
* specimen.identifier.value = "6789"
* result[0] = Reference(HLA-A-GenotypeExample)
* result[1] = Reference(HLA-B-GenotypeExample)
