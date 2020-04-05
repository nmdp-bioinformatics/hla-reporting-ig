Profile:        HLASummaryReport
Parent:         genomics-report 
Id:             hla-summary-report
Title:          "HLA Summary Report"
Description:    "HLA Summary Report profile of genomics report"


// * valueCodeableConcept ^patternCodeableConcept.coding.system = "http://glstring.org"
* extension contains GenotypeSummary 1..1 MS
* extension[GenotypeSummary].value[x] only CodeableConcept
* extension[GenotypeSummary].valueCodeableConcept ^patternCodeableConcept.coding.system = http://glstring.org

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "slicing code"

* code.coding contains HLAGeneGroup 0..1
* code.coding[HLAGeneGroup].system 1..1
* code.coding[HLAGeneGroup].code 1..1
* code.coding[HLAGeneGroup].system = "http://www.genenames.org/genegroup"
* code.coding[HLAGeneGroup].code = #588 "Histocompatibility complex (HLA)"
// * code.coding[HLAGeneGroup] = HLAGenegroupCS#588 "Histocompatibility complex (HLA)"

* result contains hla-genotype 0..* 
* result contains hla-allele 0..* 

* result[hla-genotype] only Reference(hla-genotype)
* result[hla-allele] only Reference(hla-allele)
* result[gen-grouper] 0..0
* result[overall] 0..0
* result[inh-dis-path] 0..0
* result[som-diagnostic] 0..0
* result[som-prognostic] 0..0
* result[som-predictive] 0..0
* result[med-metabolism] 0..0
* result[med-efficacy] 0..0
* result[med-transporter] 0..0
* result[med-high-risk] 0..0
* result[genotype] 0..0
* result[haplotype] 0..0
* result[variant] 0..0
* result[region-studied] 0..0

* imagingStudy 0..0
* media 0..0


Instance:   HLA-A-SummaryReportExample1
InstanceOf: http://fhir.nmdp.org/ig/hla-reporting/StructureDefinition/hla-summary-report
Usage: #example
Title:      "HLA-A Summary Report Example 1"
Description: "Example of HLA summary report"
// * id = "hla-a-summaryreport-ex1"
* extension[GenotypeSummary].valueCodeableConcept = GLSCodeSystem#hla#3.31.0#HLA-A*01:01:01:01+HLA-A*01:01:01:03
* status = #final
* code.coding[code] = LNC#81247-9 "Master HL7 genetic variant reporting panel"
* code.coding[HLAGeneGroup] = HLAGenegroupCS#588 "Histocompatibility complex (HLA)"
* result.reference = "http://example.org/fhir/Observation/HLA-A-GenotypeExample1"
// * result.reference = HLA-A-GenotypeExample1
// * result.reference = "hla-genotype-ex1"
