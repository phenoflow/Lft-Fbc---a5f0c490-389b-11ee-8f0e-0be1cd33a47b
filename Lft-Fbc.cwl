cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  lft-fbc-m3-estimation---primary:
    run: lft-fbc-m3-estimation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  lft-fbc-m3-haemoglobin---primary:
    run: lft-fbc-m3-haemoglobin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: lft-fbc-m3-estimation---primary/output
  lft-fbc-m3-borderline---primary:
    run: lft-fbc-m3-borderline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: lft-fbc-m3-haemoglobin---primary/output
  abnormal-lft-fbc-m3---primary:
    run: abnormal-lft-fbc-m3---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: lft-fbc-m3-borderline---primary/output
  lft-fbc-m3-blood---primary:
    run: lft-fbc-m3-blood---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: abnormal-lft-fbc-m3---primary/output
  lft-fbc-m3-count---primary:
    run: lft-fbc-m3-count---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: lft-fbc-m3-blood---primary/output
  lft-fbc-m3-raised---primary:
    run: lft-fbc-m3-raised---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: lft-fbc-m3-count---primary/output
  lft-fbc-m3-nucleated---primary:
    run: lft-fbc-m3-nucleated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: lft-fbc-m3-raised---primary/output
  total-lft-fbc-m3---primary:
    run: total-lft-fbc-m3---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: lft-fbc-m3-nucleated---primary/output
  white-lft-fbc-m3---primary:
    run: white-lft-fbc-m3---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: total-lft-fbc-m3---primary/output
  lft-fbc-m3-leucopenia---primary:
    run: lft-fbc-m3-leucopenia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: white-lft-fbc-m3---primary/output
  lft-fbc-m3-leucocytosis---primary:
    run: lft-fbc-m3-leucocytosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: lft-fbc-m3-leucopenia---primary/output
  lft-fbc-m3-agranulocytosis---primary:
    run: lft-fbc-m3-agranulocytosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: lft-fbc-m3-leucocytosis---primary/output
  differential-lft-fbc-m3---primary:
    run: differential-lft-fbc-m3---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: lft-fbc-m3-agranulocytosis---primary/output
  lft-fbc-m3-platelet---primary:
    run: lft-fbc-m3-platelet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: differential-lft-fbc-m3---primary/output
  lft-fbc-m3-thrombocytopenia---primary:
    run: lft-fbc-m3-thrombocytopenia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: lft-fbc-m3-platelet---primary/output
  lft-fbc-m3-thrombocythaemia---primary:
    run: lft-fbc-m3-thrombocythaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: lft-fbc-m3-thrombocytopenia---primary/output
  lft-fbc-m3-neutrophil---primary:
    run: lft-fbc-m3-neutrophil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: lft-fbc-m3-thrombocythaemia---primary/output
  lft-fbc-m3-percentage---primary:
    run: lft-fbc-m3-percentage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: lft-fbc-m3-neutrophil---primary/output
  lft-fbc-m3-tests---primary:
    run: lft-fbc-m3-tests---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: lft-fbc-m3-percentage---primary/output
  lft-fbc-m3-pyruvate---primary:
    run: lft-fbc-m3-pyruvate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: lft-fbc-m3-tests---primary/output
  lft-fbc-m3-lactate---primary:
    run: lft-fbc-m3-lactate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: lft-fbc-m3-pyruvate---primary/output
  lft-fbc-m3-serum---primary:
    run: lft-fbc-m3-serum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: lft-fbc-m3-lactate---primary/output
  lft-fbc-m3-phosphatase---primary:
    run: lft-fbc-m3-phosphatase---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: lft-fbc-m3-serum---primary/output
  lft-fbc-m3-enzyme---primary:
    run: lft-fbc-m3-enzyme---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: lft-fbc-m3-phosphatase---primary/output
  lft-fbc-m3-gammaglutamyl---primary:
    run: lft-fbc-m3-gammaglutamyl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: lft-fbc-m3-enzyme---primary/output
  lft-fbc-m3-aminotransferase---primary:
    run: lft-fbc-m3-aminotransferase---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: lft-fbc-m3-gammaglutamyl---primary/output
  lft-fbc-m3-5nucleotidase---primary:
    run: lft-fbc-m3-5nucleotidase---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: lft-fbc-m3-aminotransferase---primary/output
  lft-fbc-m3-dehydrogenase---primary:
    run: lft-fbc-m3-dehydrogenase---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: lft-fbc-m3-5nucleotidase---primary/output
  lft-fbc-m3---primary:
    run: lft-fbc-m3---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: lft-fbc-m3-dehydrogenase---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: lft-fbc-m3---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
