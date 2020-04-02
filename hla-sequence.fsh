Profile:        HLAMolecularSequence
Parent:         MolecularSequence
Id:             hla-molecularsequence
Title:          "HLA Molecular Sequence"
Description:    "HLA profile of MolecularSequence resource"

// * type = #dna
// * coordinatesystem = 0
* referenceSeq 1..1 MS
* referenceSeq.windowStart 1..1
* referenceSeq.windowEnd 1..1
* referenceSeq.referenceSeqId 1..1
* referenceSeq.referenceSeqId ^patternCodeableConcept.coding.system = "http://www.ebi.ac.uk/ipd/imgt/hla"
* observedSeq 1..1 MS

* quantity 0..0
