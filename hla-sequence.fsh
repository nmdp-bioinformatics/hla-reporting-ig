Profile:        HLAMolecularSequence
Parent:         MolecularSequence
Id:             hla-molecularsequence
Title:          "HLA Molecular Sequence"
Description:    "HLA profile of MolecularSequence resource"
* type = #dna
* coordinateSystem = 0
* observedSeq 1..1 MS
* referenceSeq 1..1 MS
* referenceSeq.referenceSeqId 1..1
// * referenceSeq.referenceSeqId ^patternCodeableConcept.coding.system = "http://www.ebi.ac.uk/ipd/imgt/hla"
* referenceSeq.referenceSeqId.coding ^slicing.discriminator.type = #value
* referenceSeq.referenceSeqId.coding ^slicing.discriminator.path = "system"
* referenceSeq.referenceSeqId.coding ^slicing.rules = #open
* referenceSeq.referenceSeqId.coding ^slicing.description = "slicing on referenceSeqId.coding"
* referenceSeq.referenceSeqId.coding contains 
    IMGT 1..1 MS
* referenceSeq.referenceSeqId.coding[IMGT].system = "http://www.ebi.ac.uk/ipd/imgt/hla" (exactly)
* referenceSeq.referenceSeqId.coding[IMGT].code 1..1 
* referenceSeq.referenceSeqId.coding[IMGT].version 1..1


Instance:   HLA-A-SequenceExample1
InstanceOf: hla-molecularsequence
Usage: #example
Title:      "HLA-A*01:01:01:01 Sequence Example"
Description: "Example of HLA-A*01:01:01:01 sequence"
* coordinateSystem = 0 
// * type = #dna  
// * referenceSeq.referenceSeqId.coding.system = "http://www.ebi.ac.uk/ipd/imgt/hla"
* referenceSeq.referenceSeqId.coding.code = #HLA00001
* referenceSeq.referenceSeqId.coding.version = "3.25.0"
* referenceSeq.referenceSeqId.coding.display = "HLA-A*01:01:01:01"
* referenceSeq.windowStart = 0
* referenceSeq.windowEnd = 3503
* observedSeq = "CAGGAGCAGAGGGGTCAGGGCGAAGTCCCAGGGCCCCAGGCGTGGCTCTCAGGGTCTCAGGCCCCGAAGGCGGTGTATGGATTGGGGAGTCCCAGCCTTGGGGATTCCCCAACTCCGCAGTTTCTTTTCTCCCTCTCCCAACCTACGTAGGGTCCTTCATCCTGGATACTCACGACGCGGACCCAGTTCTCACTCCCATTGGGTGTCGGGTTTCCAGAGAAGCCAATCAGTGTCGTCGCGGTCGCTGTTCTAAAGTCCGCACGCACCCACCGGGACTCAGATTCTCCCCAGACGCCGAGGATGGCCGTCATGGCGCCCCGAACCCTCCTCCTGCTACTCTCGGGGGCCCTGGCCCTGACCCAGACCTGGGCGGGTGAGTGCGGGGTCGGGAGGGAAACCGCCTCTGCGGGGAGAAGCAAGGGGCCCTCCTGGCGGGGGCGCAGGACCGGGGGAGCCGCGCCGGGAGGAGGGTCGGGCAGGTCTCAGCCACTGCTCGCCCCCAGGCTCCCACTCCATGAGGTATTTCTTCACATCCGTGTCCCGGCCCGGCCGCGGGGAGCCCCGCTTCATCGCCGTGGGCTACGTGGACGACACGCAGTTCGTGCGGTTCGACAGCGACGCCGCGAGCCAGAAGATGGAGCCGCGGGCGCCGTGGATAGAGCAGGAGGGGCCGGAGTATTGGGACCAGGAGACACGGAATATGAAGGCCCACTCACAGACTGACCGAGCGAACCTGGGGACCCTGCGCGGCTACTACAACCAGAGCGAGGACGGTGAGTGACCCCGGCCCGGGGCGCAGGTCACGACCCCTCATCCCCCACGGACGGGCCAGGTCGCCCACAGTCTCCGGGTCCGAGATCCACCCCGAAGCCGCGGGACTCCGAGACCCTTGTCCCGGGAGAGGCCCAGGCGCCTTTACCCGGTTTCATTTTCAGTTTAGGCCAAAAATCCCCCCGGGTTGGTCGGGGCGGGGCGGGGCTCGGGGGACTGGGCTGACCGCGGGGTCGGGGCCAGGTTCTCACACCATCCAGATAATGTATGGCTGCGACGTGGGGCCGGACGGGCGCTTCCTCCGCGGGTACCGGCAGGACGCCTACGACGGCAAGGATTACATCGCCCTGAACGAGGACCTGCGCTCTTGGACCGCGGCGGACATGGCAGCTCAGATCACCAAGCGCAAGTGGGAGGCGGTCCATGCGGCGGAGCAGCGGAGAGTCTACCTGGAGGGCCGGTGCGTGGACGGGCTCCGCAGATACCTGGAGAACGGGAAGGAGACGCTGCAGCGCACGGGTACCAGGGGCCACGGGGCGCCTCCCTGATCGCCTATAGATCTCCCGGGCTGGCCTCCCACAAGGAGGGGAGACAATTGGGACCAACACTAGAATATCACCCTCCCTCTGGTCCTGAGGGAGAGGAATCCTCCTGGGTTTCCAGATCCTGTACCAGAGAGTGACTCTGAGGTTCCGCCCTGCTCTCTGACACAATTAAGGGATAAAATCTCTGAAGGAGTGACGGGAAGACGATCCCTCGAATACTGATGAGTGGTTCCCTTTGACACCGGCAGCAGCCTTGGGCCCGTGACTTTTCCTCTCAGGCCTTGTTCTCTGCTTCACACTCAATGTGTGTGGGGGTCTGAGTCCAGCACTTCTGAGTCTCTCAGCCTCCACTCAGGTCAGGACCAGAAGTCGCTGTTCCCTTCTCAGGGAATAGAAGATTATCCCAGGTGCCTGTGTCCAGGCTGGTGTCTGGGTTCTGTGCTCTCTTCCCCATCCCGGGTGTCCTGTCCATTCTCAAGATGGCCACATGCGTGCTGGTGGAGTGTCCCATGACAGATGCAAAATGCCTGAATTTTCTGACTCTTCCCGTCAGACCCCCCCAAGACACATATGACCCACCACCCCATCTCTGACCATGAGGCCACCCTGAGGTGCTGGGCCCTGGGCTTCTACCCTGCGGAGATCACACTGACCTGGCAGCGGGATGGGGAGGACCAGACCCAGGACACGGAGCTCGTGGAGACCAGGCCTGCAGGGGATGGAACCTTCCAGAAGTGGGCGGCTGTGGTGGTGCCTTCTGGAGAGGAGCAGAGATACACCTGCCATGTGCAGCATGAGGGTCTGCCCAAGCCCCTCACCCTGAGATGGGGTAAGGAGGGAGATGGGGGTGTCATGTCTCTTAGGGAAAGCAGGAGCCTCTCTGGAGACCTTTAGCAGGGTCAGGGCCCCTCACCTTCCCCTCTTTTCCCAGAGCTGTCTTCCCAGCCCACCATCCCCATCGTGGGCATCATTGCTGGCCTGGTTCTCCTTGGAGCTGTGATCACTGGAGCTGTGGTCGCTGCCGTGATGTGGAGGAGGAAGAGCTCAGGTGGAGAAGGGGTGAAGGGTGGGGTCTGAGATTTCTTGTCTCACTGAGGGTTCCAAGCCCCAGCTAGAAATGTGCCCTGTCTCATTACTGGGAAGCACCTTCCACAATCATGGGCCGACCCAGCCTGGGCCCTGTGTGCCAGCACTTACTCTTTTGTAAAGCACCTGTTAAAATGAAGGACAGATTTATCACCTTGATTACGGCGGTGATGGGACCTGATCCCAGCAGTCACAAGTCACAGGGGAAGGTCCCTGAGGACAGACCTCAGGAGGGCTATTGGTCCAGGACCCACACCTGCTTTCTTCATGTTTCCTGATCCCGCCCTGGGTCTGCAGTCACACATTTCTGGAAACTTCTCTGGGGTCCAAGACTAGGAGGTTCCTCTAGGACCTTAAGGCCCTGGCTCCTTTCTGGTATCTCACAGGACATTTTCTTCCCACAGATAGAAAAGGAGGGAGTTACACTCAGGCTGCAAGTAAGTATGAAGGAGGCTGATGCCTGAGGTCCTTGGGATATTGTGTTTGGGAGCCCATGGGGGAGCTCACCCACCCCACAATTCCTCCTCTAGCCACATCTTCTGTGGGATCTGACCAGGTTCTGTTTTTGTTCTACCCCAGGCAGTGACAGTGCCCAGGGCTCTGATGTGTCTCTCACAGCTTGTAAAGGTGAGAGCTTGGAGGGCCTGATGTGTGTTGGGTGTTGGGTGGAACAGTGGACACAGCTGTGCTATGGGGTTTCTTTGCGTTGGATGTATTGAGCATGCGATGGGCTGTTTAAGGTGTGACCCCTCACTGTGATGGATATGAATTTGTTCATGAATATTTTTTTCTATAGTGTGAGACAGCTGCCTTGTGTGGGACTGAGAGGCAAGAGTTGTTCCTGCCCTTCCCTTTGTGACTTGAAGAACCCTGACTTTGTTTCTGCAAAGGCACCTGCATGTGTCTGTGTTCGTGTAGGCATAATGTGAGGAGGTGGGGAGAGCACCCCACCCCCATGTCCACCATGACCCTCTTCCCACGCTGACCTGTGCTCCCTCTCCAATCATCTTTCCTGTTCCAGAGAGGTGGGGCTGAGGTGTCTCCATCTCTGTCTCAACTTCATGGTGCACTGAGCTGTAACTTCTTCCTTCCCTATTAAAA"


Instance:   HLA-A-SequenceExample2
InstanceOf: hla-molecularsequence
Usage: #example
Title:      "HLA-A*01:02 Sequence Example"
Description: "Example of HLA-A*01:02 sequence"
* coordinateSystem = 0 
// * type = #dna
// * referenceSeq.referenceSeqId.coding.system = "http://www.ebi.ac.uk/ipd/imgt/hla"
* referenceSeq.referenceSeqId.coding.code = #HLA00002
* referenceSeq.referenceSeqId.coding.version = "3.25.0"
* referenceSeq.referenceSeqId.coding.display = "HLA-A*01:02"
* referenceSeq.windowStart = 0
* referenceSeq.windowEnd = 3503
* observedSeq = "CAGGAGCAGAGGGGTCAGGGCGAAGTCCCAGGGCCCCAGGCGTGGCTCTCAGGGTCTCAGGCCCCGAAGGCGGTGTATGGATTGGGGAGTCCCAGCCTTGGGGATTCCCCAACTCCGCAGTTTCTTTTCTCCCTCTCCCAACCTACGTAGGGTCCTTCATCCTGGATACTCACGACGCGGACCCAGTTCTCACTCCCATTGGGTGTCGGGTTTCCAGAGAAGCCAATCAGTGTCGTCGCGGTCGCTGTTCTAAAGTCCGCACGCACCCACCGGGACTCAGATTCTCCCCAGACGCCGAGGATGGCCGTCATGGCGCCCCGAACCCTCCTCCTGCTACTCTCGGGGGCCCTGGCCCTGACCCAGACCTGGGCGGGTGAGTGCGGGGTCGGGAGGGAAACCGCCTCTGCGGGGAGAAGCAAGGGGCCCTCCTGGCGGGGGCGCAGGACCGGGGGAGCCGCGCCGGGAGGAGGGTCGGTCAGGTCTCAGCCACTGCTCGCCCCCAGGCTCCCACTCCATGAGGTATTTCTCCACATCCGTGTCCCGGCCCGGCAGTGGAGAGCCCCGCTTCATCGCAGTGGGCTACGTGGACGACACGCAGTTCGTGCGGTTCGACAGCGACGCCGCGAGCCAGAAGATGGAGCCGCGGGCGCCGTGGATAGAGCAGGAGGGGCCGGAGTATTGGGACCAGGAGACACGGAATATGAAGGCCCACTCACAGACTGACCGAGCGAACCTGGGGACCCTGCGCGGCTACTACAACCAGAGCGAGGACGGTGAGTGACCCCGGCCCGGGGCGCAGGTCACGACCCCTCATCCCCCACGGACGGGCCAGGTCGCCCACAGTCTCCGGGTCCGAGATCCACCCCGAAGCCGCGGGACTCCGAGACCCTTGTCCCGGGAGAGGCCCAGGCGCCTTTACCCGGTTTCATTTTCAGTTTAGGCCAAAAATCCCCCCGGGTTGGTCGGGGCGGGGCGGGGCTCGGGGGACTGGGCTGACCGCGGGGTCGGGGCCAGGTTCTCACACCATCCAGATAATGTATGGCTGCGACGTGGGGCCGGACGGGCGCTTCCTCCGCGGGTACCGGCAGGACGCCTACGACGGCAAGGATTACATCGCCCTGAACGAGGACCTGCGCTCTTGGACCGCGGCGGACATGGCAGCTCAGATCACCAAGCGCAAGTGGGAGGCGGTCCATGCGGCGGAGCAGCGGAGAGTCTACCTGGAGGGCCGGTGCGTGGACGGGCTCCGCAGATACCTGGAGAACGGGAAGGAGACGCTGCAGCGCACGGGTACCAGGGGCCACGGGGCGCCTCCCTGATCGCCTATAGATCTCCCGGGCTGGCCTCCCACAAGGAGGGGAGACAATTGGGACCAACACTAGAATATCACCCTCCCTCTGGTCCTGAGGGAGAGGAATCCTCCTGGGTTTCCAGATCCTGTACCAGAGAGTGACTCTGAGGTTCCGCCCTGCTCTCTGACACAATTAAGGGATAAAATCTCTGAAGGAGTGACGGGAAGACGATCCCTCGAATACTGATGAGTGGTTCCCTTTGACACCGGCAGCAGCCTTGGGCCCGTGACTTTTCCTCTCAGGCCTTGTTCTCTGCTTCACACTCAATGTGTGTGGGGGTCTGAGTCCAGCACTTCTGAGTCTCTCAGCCTCCACTCAGGTCAGGACCAGAAGTCGCTGTTCCCTTCTCAGGGAATAGAAGATTATCCCAGGTGCCTGTGTCCAGGCTGGTGTCTGGGTTCTGTGCTCTCTTCCCCATCCCGGGTGTCCTGTCCATTCTCAAGATGGCCACATGCGTGCTGGTGGAGTGTCCCATGACAGATGCAAAATGCCTGAATTTTCTGACTCTTCCCGTCAGACCCCCCCAAGACACATATGACCCACCACCCCATCTCTGACCATGAGGCCACCCTGAGGTGCTGGGCCCTGGGCTTCTACCCTGCGGAGATCACACTGACCTGGCAGCGGGATGGGGAGGACCAGACCCAGGACACGGAGCTCGTGGAGACCAGGCCTGCAGGGGATGGAACCTTCCAGAAGTGGGCGGCTGTGGTGGTGCCTTCTGGAGAGGAGCAGAGATACACCTGCCATGTGCAGCATGAGGGTCTGCCCAAGCCCCTCACCCTGAGATGGGGTAAGGAGGGAGATGGGGGTGTCATGTCTCTTAGGGAAAGCAGGAGCCTCTCTGGAGACCTTTAGCAGGGTCAGGGCCCCTCACCTTCCCCTCTTTTCCCAGAGCTGTCTTCCCAGCCCACCATCCCCATCGTGGGCATCATTGCTGGCCTGGTTCTCCTTGGAGCTGTGATCACTGGAGCTGTGGTCGCTGCCGTGATGTGGAGGAGGAAGAGCTCAGGTGGAGAAGGGGTGAAGGGTGGGGTCTGAGATTTCTTGTCTCACTGAGGGTTCCAAGCCCCAGCTAGAAATGTGCCCTGTCTCATTACTGGGAAGCACCTTCCACAATCATGGGCCGACCCAGCCTGGGCCCTGTGTGCCAGCACTTACTCTTTTGTAAAGCACCTGTTAAAATGAAGGACAGATTTATCACCTTGATTACGGCGGTGATGGGACCTGATCCCAGCAGTCACAAGTCACAGGGGAAGGTCCCTGAGGACAGACCTCAGGAGGGCTATTGGTCCAGGACCCACACCTGCTTTCTTCATGTTTCCTGATCCCGCCCTGGGTCTGCAGTCACACATTTCTGGAAACTTCTCTGGGGTCCAAGACTAGGAGGTTCCTCTAGGACCTTAAGGCCCTGGCTCCTTTCTGGTATCTCACAGGACATTTTCTTCCCACAGATAGAAAAGGAGGGAGTTACACTCAGGCTGCAAGTAAGTATGAAGGAGGCTGATGCCTGAGGTCCTTGGGATATTGTGTTTGGGAGCCCATGGGGGAGCTCACCCACCCCACAATTCCTCCTCTAGCCACATCTTCTGTGGGATCTGACCAGGTTCTGTTTTTGTTCTACCCCAGGCAGTGACAGTGCCCAGGGCTCTGATGTGTCTCTCACAGCTTGTAAAGGTGAGAGCTTGGAGGGCCTGATGTGTGTTGGGTGTTGGGTGGAACAGTGGACACAGCTGTGCTATGGGGTTTCTTTGCGTTGGATGTATTGAGCATGCGATGGGCTGTTTAAGGTGTGACCCCTCACTGTGATGGATATGAATTTGTTCATGAATATTTTTTTCTATAGTGTGAGACAGCTGCCTTGTGTGGGACTGAGAGGCAAGAGTTGTTCCTGCCCTTCCCTTTGTGACTTGAAGAACCCTGACTTTGTTTCTGCAAAGGCACCTGCATGTGTCTGTGTTCGTGTAGGCATAATGTGAGGAGGTGGGGAGAGCACCCCACCCCCATGTCCACCATGACCCTCTTCCCACGCTGACCTGTGCTCCCTCTCCAATCATCTTTCCTGTTCCAGAGAGGTGGGGCTGAGGTGTCTCCATCTCTGTCTCAACTTCATGGTGCACTGAGCTGTAACTTCTTCCTTCCCTATTAAAA"


Instance:   HLA-B-SequenceExample1
InstanceOf: hla-molecularsequence
Usage: #example
Title:      "HLA-B*57:01:01:01 Sequence Example"
Description: "Example of HLA-B*57:01:01:01 sequence"
* coordinateSystem = 0
// * type = #dna
// * referenceSeq.referenceSeqId.coding.system = "http://www.ebi.ac.uk/ipd/imgt/hla"
* referenceSeq.referenceSeqId.coding.code = #HLA00381
* referenceSeq.referenceSeqId.coding.version = "3.25.0"
* referenceSeq.referenceSeqId.coding.display = "HLA-B*57:01:01:01"
* referenceSeq.windowStart = 0
* referenceSeq.windowEnd = 4095
* observedSeq = "GATCAGGACGAAGTCCCAGGTCCCGGACGGGGCTCTCAGGGTCTCAGGCTCCGAGAGCCTTGTCTGCATTGGGGAGGCGCAGCGTTGGGGATTCCCCACTCCCACGAGTTTCACTTCTTCTCCCAACCTGTGTCGGGTCCTTCTTCCAGGATACTCGTGACGCGTCCCCATTTCCCACTCCCATTGGGTGTCGGGTGTCTAGAGAAGCCAATCAGCGTCGCCGCGGTCCCAGTTCTAAAGTCCCCACGCACCCACCCGGACTCAGAATCTCCTCAGACGCCGAGATGCGGGTCACGGCACCCCGAACCGTCCTCCTGCTGCTCTGGGGGGCAGTGGCCCTGACCGAGACCTGGGCCGGTGAGTGCGGGTCGGCAGGGAAATGGCCTCTGTAGGGAGGAGCAAGGGGACCGCAGGCGGGGGCGCAGGACCCGGGGAGCCGCGCCGGGAGGAGGGTCGGGCGGGTCTCAGCCCCTCCTCGCCCCCAGGCTCCCACTCCATGAGGTATTTCTACACCGCCATGTCCCGGCCCGGCCGCGGGGAGCCCCGCTTCATCGCAGTGGGCTACGTGGACGACACCCAGTTCGTGAGGTTCGACAGCGACGCCGCGAGTCCGAGGATGGCGCCCCGGGCGCCATGGATAGAGCAGGAGGGGCCGGAGTATTGGGACGGGGAGACACGGAACATGAAGGCCTCCGCGCAGACTTACCGAGAGAACCTGCGGATCGCGCTCCGCTACTACAACCAGAGCGAGGCCGGTGAGTGACCCCGGCCCGGGGCGCAGGTCACGACTCCCCATCCCCCACGTACGGCCCGGGTCGCCCCGAGTCTCCGGGTCCGAGATCCACCCCCCTGAGGCCGCGGGACCCGCCCAGACCCTCGACCGGCGAGAGCCCCAGGCGCGTTTACCCGGTTTCATTTTCAGTTGAGGCCAAAATCCCCGCGGGTTGGTCAGGGCGGGGCGGGGCTCGGGGGGACGGGGCTGACCGCGGGGCCGGGGCCAGGGTCTCACATCATCCAGGTGATGTATGGCTGCGACGTGGGGCCGGACGGGCGCCTCCTCCGCGGGCATGACCAGTCCGCCTACGACGGCAAGGATTACATCGCCCTGAACGAGGACCTGAGCTCCTGGACCGCGGCGGACACGGCGGCTCAGATCACCCAGCGCAAGTGGGAGGCGGCCCGTGTGGCGGAGCAGCTGAGAGCCTACCTGGAGGGCCTGTGCGTGGAGTGGCTCCGCAGATACCTGGAGAACGGGAAGGAGACGCTGCAGCGCGCGGGTACCAGGGGCAGTGGGGAGCCTTCCCCATCTCCTATAGGTCGCCGGGGATGGCCTCCCACGAGAAGAGGAGGAAAATGGGATCAGCGCTAGAATGTCGCCCTCCCTTGAATGGAGAATGGCATGAGTTTTCCTGAGTTTCCTCTGAGGGCCCCCTCTTCTCTCTAGGACAATTAAGGGATGACGTCTCTGAGGAAATGGAGGGGAAGACAGTCCCTAGAATACTGATCAGGGGTCCCCTTTGACCCCTGCAGCAGCCTTGGGAACCGTGACTTTTCCTCTCAGGCCTTGTTCTCTGCCTCACACTCAGTGTGTTTGGGGCTCTGATTCCAGCACTTCTGAGTCACTTTACCTCCACTCAGATCAGGAGCAGAAGTCCCTGTTCCCCGCTCAGAGACTCGAACTTTCCAATGAATAGGAGATTATCCCAGGTGCCTGCGTCCAGGCTGGTGTCTGGGTTCTGTGCCCCTTCCCCACCCCAGGTGTCCTGCCCATTCTCAGGCTGGTCACATGGGTGGTCCTAGGGTGTCCCATGAGAGATGCAAAGCGCCTGAATTTTCTGACTCTTCCCATCAGACCCCCCAAAGACACATGTGACCCACCACCCCATCTCTGACCATGAGGCCACCCTGAGGTGCTGGGCCCTGGGCTTCTACCCTGCGGAGATCACACTGACCTGGCAGCGGGATGGCGAGGACCAAACTCAGGACACCGAGCTTGTGGAGACCAGACCAGCAGGAGATAGAACCTTCCAGAAGTGGGCAGCTGTGGTGGTGCCTTCTGGAGAAGAGCAGAGATACACATGCCATGTACAGCATGAGGGGCTGCCAAAGCCCCTCACCCTGAGATGGGGTAAGGAGGGGGATGAGGGGTCATATCTCTTCTCAGGGAAAGCAGGAGCCCTTCTGGAGCCCTTCAGCAGGGTCAGGGCCCCTCATCTTCCCCTCCTTTCCCAGAGCCATCTTCCCAATCCACCGTCCCCATCGTGGGCATTGTTGCTGGCCTGGCTGTCCTAGCAGTTGTGGTCATCGGAGCTGTGGTCGCTGCTGTGATGTGTAGGAGGAAGAGCTCAGGTAGGGAAGGGGTGAGGGGTGGGGTCTGGGTTTTCTTGTCCCACTGGGGGTTTCAAGCCCCAGGTAGAAGTGTTCCCTGCCTCATTACTGGGAAGCAGCATGCACACAGGGGCTAACGCAGCCTGGGACCCTGTGTGCCAGCACTTACTCTTTTGTGCAGCACATGTGACAATGAAGGACGGATGTATCACCTCGATGGTTGTGGTGTTGGGGTCCTGATTCCAGCATTCATGAGTCAGGGGAAGGTCCCTGCTAAGGACAGACCTTAGGAGAGCAGTTGGTCCAGGACCCACACTTGCTTTCCTCGTGTTTCCTGATCCTGCCCTGGGTCTGTAGTCATACTTCTGGAAATTCCTTTTGGGTCCAAGACGAGGAGGTTCCTCTAAGATCTCATGGCCCTGCTTCCTCCCAGTCCCCTCACAGGACATTTTCTTCCCACAGGTGGAAAAGGAGGGAGCTACTCTCAGGCTGCGTGTAAGTGGTGGGGGTGGGAGTGTGGAGGAGCTCACCCACCCCATAATTCCTCCTGTCCCACGTCTCCTGCGGGCTCTGACCAGGTCCTGTTTTTGTTCTACTCCAGGCAGCGACAGTGCCCAGGGCTCTGATGTGTCTCTCACAGCTTGAAAAGGTGAGATTCTTGGGGTCTAGAGTGGGTGGGGGTGGCGGGTCTGGGGCGGGGTGGGGCAGAGGGGAAAGGCCTGGGTAATGGAGATTCTTTGATTGGGATGTTTCGCGTGTGTGGTGGGCTGTTCAGAGTGTCATCACTTACCATGACTCACCAGAATTTGTTCATGACTGTTGTTTTCTGTAGCCTGAGACAGCTGTCTTGTGAGGGACTGAGATGCAGGATTTCTTCACGCCTCCCCTTTGTGACTTCAAGAGCCTCTGGCATCTCTTTCTGCAAAGGCACCTGAATGTGTCTGCGTCCCTGTTAGCCTAATGTGAGGAGGTGGAGAGACAGCCCAACCTTGTGTCCACTGTGACCCCTGTTCCCATGCTGACCTGTGTTTCCTCCCCAGTCATCTTTCTTGTTCCAGAGAGGTGGGGCTGGATGTCTCCATCTCTGTCTCAACTTTATGTGCACTGAGCTGCAACTTCTTACTTCCCTGCTGAAAATAAGAATCTGAATATCAATTTGTTTTCTCAAATATTTGCTATGAGAGGTTGATGGATTAATTAAATAAGTCAATTCCTGGAATTTGAGAGAGCAAATAAAGACCTGAGAACCTTCCAGAATCTGCATGTTCGCTGTGCTGAGTCTGTTGCAGGTGGGGTGTGGAGAAGGCTGTGGGGGGCCGAGTGTGGACGGGGCCTGTGCCCATTTGGTGTTGAGTCCATCATGGGCTTTATGTGGTTAGTCCTCAGCTGGGTCACCTTCACTGCTCCATTGTCCTTGTCCCTTCAGTGGAAACTTGTCCAGCGGGAGCTGTGACCACAGAGGCTCACACATCGCCCAGGGCGGCCCCTGCACACGGGGGTCTCTGTGCATTCTGAGACAAATTTTCAGAGCCATTCACCTCCTGCCCTGCTTCTAGAGCTCCTTTTCTGCTCTGCTCTTCTGCCCTCTCTCCCTGCCCTGGTTCTAGTGATCTTGGTGCTGAATCCAATCCCAACTCATGAATCTGTAAAGCAGAGTCTAATTTAGAGTTACATTTGTCTGTGAAATTGGACCCGTCATCAAGGACTGTTCTTTCCTGAAGAGAGAACCTGATTGTGTGCTGCAGTGTGCTGGGGCAGGGGGTGCGG"

Instance:   HLA-B-SequenceExample2
InstanceOf: hla-molecularsequence
Usage: #example
Title:      "HLA-B*15:01:01:01 Sequence Example"
Description: "Example of HLA-B*15:01:01:01 sequence"
* coordinateSystem = 0 
// * type = #dna
// * referenceSeq.referenceSeqId.coding.system = "http://www.ebi.ac.uk/ipd/imgt/hla"
* referenceSeq.referenceSeqId.coding.code = #HLA00162
* referenceSeq.referenceSeqId.coding.version = "3.25.0"
* referenceSeq.referenceSeqId.coding.display = "HLA-B*15:01:01:01"
* referenceSeq.windowStart = 0
* referenceSeq.windowEnd = 4094
* observedSeq = "GATCAGGACGAAGTCCCAGGTCCCGGACGGGGCTCTCAGGGTCTCAGGCTCCGAGAGCCTTGTCTGCATTGGGGAGGCGCAGCGTTGGGGATTCCCCACTCCCACGAGTTTCACTTCTTCTCCCAACCTATGTCGGGTCCTTCTTCCAGGATACTCGTGACGCGTCCCCATTTCCCACTCCCATTGGGTGTCGGGTGTCTAGAGAAGCCAATCAGTGTCGCCGGGGTCCCAGTTCTAAAGTCCCCACGCACCCACCCGGACTCAAAATCTCCTCAGACGCCGAGATGCGGGTCACGGCGCCCCGAACCGTCCTCCTGCTGCTCTCGGGAGCCCTGGCCCTGACCGAGACCTGGGCCGGTGAGTGCGGGGTCGGCAGGGAAATGGCCTCTGTGGGGAGGAGCGAGGGGACCGCAGGCGGGGGCGCAGGACCCGGGGAGCCGCGCCGGGAGGAGGGTCGGGCGGGTCTCAGCCCCTCCTCGCCCCCAGGCTCCCACTCCATGAGGTATTTCTACACCGCCATGTCCCGGCCCGGCCGCGGGGAGCCCCGCTTCATCGCAGTGGGCTACGTGGACGACACCCAGTTCGTGAGGTTCGACAGCGACGCCGCGAGTCCGAGGATGGCGCCCCGGGCGCCATGGATAGAGCAGGAGGGGCCGGAGTATTGGGACCGGGAGACACAGATCTCCAAGACCAACACACAGACTTACCGAGAGAGCCTGCGGAACCTGCGCGGCTACTACAACCAGAGCGAGGCCGGTGAGTGACCCCGGCCTGGGGCGCAGGTCACGACTCCCCATCCCCCACGTACGGCCCGGGTCGCCCCGAGTCTCCGGGTCCGAGATCCGCCCCCCTGAGGCCGCGGGACCCGCCCAAACCCTCGACCGGCGAGAGCCCCAGGCGCGTTTACCCGGTTTCATTTTCAGTTGAGGCCAAAATCCCCGCGGGTTGGTCGGGGCGGGGCGGGGCTCGGGGGACGGGGCTGACCGCGGGGCCTGGGCCAGGGTCTCACACCCTCCAGAGGATGTACGGCTGCGACGTGGGGCCGGACGGGCGCCTCCTCCGCGGGCATGACCAGTCCGCCTACGACGGCAAGGATTACATCGCCCTGAACGAGGACCTGAGCTCCTGGACCGCGGCGGACACGGCGGCTCAGATCACCCAGCGCAAGTGGGAGGCGGCCCGTGAGGCGGAGCAGTGGAGAGCCTACCTGGAGGGCCTGTGCGTGGAGTGGCTCCGCAGATACCTGGAGAACGGGAAGGAGACGCTGCAGCGCGCGGGTACCAGGGGCAGTGGGGAGCCTTCCCCATCTCCTATAGGTCGCCGGGGATGGCCTCCCACGAGAAGAGGAGGAAAATGGGATCAGCGCTAGAATGTCGCCCTCCCTTGAATGGAGAATGGCATGAGTTTTCCTGAGTTTCCTCTGAGGGCCCCCTCTTCTCTCTAGGACAATTAAGGGATGACGTCTCTGAGGAAATGGAGGGGAAGACAGTCCCTAGGATAGTGATCAGGGGTCCCCTTTGACCCCTGCAGCAGCCTTGGGAACCGTGACTTTTCCTCTCAGGCCTTGTTCTCTGCCTCACACTCAGTGTGTTTGGGGCTCTGATTCCAGCACTTCTGAGTCACTTTACCTCCACTCAGATCAGGAGCAGAAGTCCCTGTTCCCCGCTCAGAGACTCGAACTTTCCAATGAATAGGAGATTATCCCAGGTGCCTGCGTCCAGGCTGGTGTCTGGGTTCTGTGCCCCTTCCCCACCCCAGGTGTCCTGTCCATTCTCAGGCTGGTCACATGGGTGGTCCTAGGGTGTCCCATGAGAGATGCAAAGCGCCTGAATTTTCTGACTCTTCCCATCAGACCCCCCAAAGACACATGTGACCCACCACCCCATCTCTGACCATGAGGCCACCCTGAGGTGCTGGGCCCTGGGCTTCTACCCTGCGGAGATCACACTGACCTGGCAGCGGGATGGCGAGGACCAAACTCAGGACACCGAGCTTGTGGAGACCAGACCAGCAGGAGATAGAACCTTCCAGAAGTGGGCAGCTGTGGTGGTGCCTTCTGGAGAAGAGCAGAGATACACATGCCATGTACAGCATGAGGGGCTGCCGAAGCCCCTCACCCTGAGATGGGGTAAGGAGGGGGATGAGGGGTCATATCTGTTCTCAGGGAAAGCAGGAGCCCTTCTGGAGCCCTTCAGCAGGGTCAGGGCCCCTCATCTTCCCCTCCTTTCCCAGAGCCATCTTCCCAGTCCACCATCCCCATCGTGGGCATTGTTGCTGGCCTGGCTGTCCTAGCAGTTGTGGTCATCGGAGCTGTGGTCGCTACTGTGATGTGTAGGAGGAAGAGCTCAGGTAGGGAAGGGGTGAGGGGTGGGGTCTGGGTTTTCTTGTCCCACTGGGGGTTTCAAGCCCCAGGTAGAAGTGTTCCCTGCCTCATTACTGGGAAGCAGCATCCACACAGGGGCTAACGCAGCCTGGGACCCTGTGTGCCAGCACTTACTCTTTTGTGCAGCACATGTGACAATGAAGGACAGATGTATCGCCTTGATGGTTGTGGTGTTGGGGTCCTGATTCCAGCATTCATGAGTCAGGGGAAGGTCCCTGCTAAGGACAGACCTTAGGAGGGCAGTTGGTCCAGGACCCACACTTGCTTTCCTCGTGTTTCCTGATCCTGCCCTGGGTCTGTAGTCATACTTCTGGAAATTCCTTTTGGTTCCAAGACGAGGAGGTTCCTCTAAGATCTCATGGTCCTGCTTCCTCCCAGTCCCCTCACAGGACATTTTCTTCCCACAGGTGGAAAAGGAGGGAGCTACTCTCAGGCTGCGTGTAAGTGGTGGGGGTGGGAGTGTGGAGGAGCTCACCCACCCCATAATTCCTCCTGTCCCACGTCTCCTGCGGGCTCTGACCAGGTCCTGTTTTTGTTCTACTCCAGCCAGCGACAGTGCCCAGGGCTCTGATGTGTCTCTCACAGCTTGAAAAGGTGAGATTCTTGGGGTCTAGAGTGGGTGGGGTGGCGGGTCTGGGGGTGGGTGGGGCAGTGGGGAAAGGCCTGGGTAATGGAGATTCTTTGATTGGGATGTTTCGCGTGTGTCGTGGGCTGTTCAGAGTGTCATCACTTACCATGACTAACCAGAATTTGTTCATGACTGTTGTTTTCTGTAGCCTGAGACAGCTGTCTTGTGAGGGACCGAGATGCAGGATTTCTTCACGCCTCCCCTTTGTGACTTCAAGAGCCTCTGGCATCTCTTTCTGCAAAGGCACCTGAATGTGTCTGCGTCCCTGTTAGCATAATGTGAGGAGGTGGAGAGACAGCCCACCCTTGTGTCCACTGTGACCCCTGTTCCCATGCTGATCTGTGTTTCCTCCCCAGTCATCTTTCTTGTTCCAGAGAGGTGGGGCTGGATGTCTCCATCTCTGTCTCAACTTTATGTGCACTGAGCTGCAACTTCTTACTTCCCTACTGAAAATAAGAATCTGAATATAAATTTGTTTTCTCAAATATTTGCTATGAGAGGTTGATGGATTAATTAAATAAGTCAATTCCTGGAATTTGAAAGAGCAAATAAAGACCTGAGAACCTTCCAGAATCTGCATGTTCGCTGTGCTGAGTCTGTTGCAGGTGGGGTGTGGAGAAGGCTGTGGGGGGCCGAGTGTGGATGGGGCCTGTGCCCATTTGGTGTTGAGTCCATCATGGGCTTTATGTGGTTAGTCGTCAGCTGGGTCACCTTCACTGCTCCATTGTCCTTGTCCCTTCAGTGGAAACTTGTCCAGTGGGAGCTGTGACCACAGAGGCTCACACATCGCCCAGGGTGGCCCCTGCACACGGGGGTCTCTGTGCATTCTGAGACAAATTTTCAGAGCCATTCACCTCCTGCCCTGCTTCTAGAGCTCCTTTTCTGCTCTGCTCTCCTGCCCTCTCTCCCTGCCCTGGTTCTAGTGATCTTGGTGCTGAATCCAATCCCAACTCCTGAATCTGTAAAGCAGAGTCTAATTTAGACTTACATTTGTCTGTGAAATTGGACCCGTCATCAAGGACTGTTCTTTCCTGAAGAGAGAACCTGATTGTGTGCTGCAGTGTGCTGGGGCAGGGGGTGCGG"
