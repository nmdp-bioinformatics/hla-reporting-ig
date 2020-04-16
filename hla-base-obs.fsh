RuleSet: HLABaseObservation
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false
* component ^slicing.description = "slice based on component.code pattern"
* component contains 
    gene-studied 1..1 MS
* component[gene-studied] ^short = "Gene studied [ID]"
* component[gene-studied] ^definition = "A gene targeted for mutation analysis, identified in HUGO Gene Nomenclature Committee (HGNC) notation. The required code is HGNC gene ID. Gene IDs are of the format HGNC:n, where n is a unique number. For example, the HGNC identifier for the HLA-A gene is HGNC:4931. The display text associated with the code should be the HGNC official gene symbol. For example, the official gene symbol for 'major histocompatibility complex, class I, A' is HLA-A."
* component[gene-studied].code = LNC#48018-6  // Gene studied [ID]
* component[gene-studied].value[x] only CodeableConcept
* component[gene-studied].valueCodeableConcept 1..1
// * component[gene-studied].valueCodeableConcept from HLAGeneIdVS


* value[x] only CodeableConcept 
// * valueCodeableConcept ^patternCodeableConcept.coding.system = "http://glstring.org"
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding ^slicing.description = "slicing on valueCodeableConcept"
* valueCodeableConcept.coding contains 
    GL 1..1 MS
* valueCodeableConcept.coding[GL] ^short = "GL String Code"
* valueCodeableConcept.coding[GL] ^definition = "The Genotype List String Code code system defines a syntax for using the Genotype List String (GL String) grammar in association with a gene family namespace. The GL String Code is composed of three required fields in a string separated by a “#” character. These fields, in order, are: 1) Gene family namespace, 2) version of the nomenclature, or the date when teh GL String was created, and 3) GL String."
* valueCodeableConcept.coding[GL].system 1..1
* valueCodeableConcept.coding[GL].code 1..1
* valueCodeableConcept.coding[GL].system = "http://glstring.org" (exactly)
* valueCodeableConcept.coding[GL].code obeys GLSC

* derivedFrom ^slicing.discriminator.type = #profile
* derivedFrom ^slicing.discriminator.path = "$this.resolve()"
* derivedFrom ^slicing.rules = #open
* derivedFrom ^slicing.description = "slice derivedFrom based on profile"
* derivedFrom contains 
    hla-sequence 0..* MS and
    hla-allele 0..* MS
* derivedFrom[hla-allele] only Reference(HLAallele)
* derivedFrom[hla-allele] ^short = "HLA Allele"
* derivedFrom[hla-sequence] only Reference(HLAMolecularSequence)
* derivedFrom[hla-sequence] ^short = "HLA Molecular Sequence"