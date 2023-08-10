cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  antipsychotic---primary:
    run: antipsychotic---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  antipsychotic-hydrochloride---primary:
    run: antipsychotic-hydrochloride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: antipsychotic---primary/output
  antipsychotic-benperidol---primary:
    run: antipsychotic-benperidol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: antipsychotic-hydrochloride---primary/output
  antipsychotic-chlorprothixene---primary:
    run: antipsychotic-chlorprothixene---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: antipsychotic-benperidol---primary/output
  antipsychotic-flupentixol---primary:
    run: antipsychotic-flupentixol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: antipsychotic-chlorprothixene---primary/output
  antipsychotic-fluphenazine---primary:
    run: antipsychotic-fluphenazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: antipsychotic-flupentixol---primary/output
  antipsychotic-haloperidol---primary:
    run: antipsychotic-haloperidol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: antipsychotic-fluphenazine---primary/output
  antipsychotic-levomepromazine---primary:
    run: antipsychotic-levomepromazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: antipsychotic-haloperidol---primary/output
  antipsychotic-oxypertine---primary:
    run: antipsychotic-oxypertine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: antipsychotic-levomepromazine---primary/output
  antipsychotic-pericyazine---primary:
    run: antipsychotic-pericyazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: antipsychotic-oxypertine---primary/output
  antipsychotic-perphenazine---primary:
    run: antipsychotic-perphenazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: antipsychotic-pericyazine---primary/output
  antipsychotic-pimozide---primary:
    run: antipsychotic-pimozide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: antipsychotic-perphenazine---primary/output
  antipsychotic-prochlorperazine---primary:
    run: antipsychotic-prochlorperazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: antipsychotic-pimozide---primary/output
  antipsychotic-sulpiride---primary:
    run: antipsychotic-sulpiride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: antipsychotic-prochlorperazine---primary/output
  antipsychotic-thioridazine---primary:
    run: antipsychotic-thioridazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: antipsychotic-sulpiride---primary/output
  antipsychotic-trifluoperazine---primary:
    run: antipsychotic-trifluoperazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: antipsychotic-thioridazine---primary/output
  antipsychotic-trifluperidol---primary:
    run: antipsychotic-trifluperidol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: antipsychotic-trifluoperazine---primary/output
  antipsychotic-zuclopenthixol---primary:
    run: antipsychotic-zuclopenthixol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: antipsychotic-trifluperidol---primary/output
  antipsychotic-clozapine---primary:
    run: antipsychotic-clozapine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: antipsychotic-zuclopenthixol---primary/output
  antipsychotic-remoxipride---primary:
    run: antipsychotic-remoxipride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: antipsychotic-clozapine---primary/output
  antipsychotic-risperidone---primary:
    run: antipsychotic-risperidone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: antipsychotic-remoxipride---primary/output
  antipsychotic-sertindole---primary:
    run: antipsychotic-sertindole---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: antipsychotic-risperidone---primary/output
  antipsychotic-olanzapine---primary:
    run: antipsychotic-olanzapine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: antipsychotic-sertindole---primary/output
  antipsychotic-quetiapine---primary:
    run: antipsychotic-quetiapine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: antipsychotic-olanzapine---primary/output
  antipsychotic-amisulpride---primary:
    run: antipsychotic-amisulpride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: antipsychotic-quetiapine---primary/output
  antipsychotic-zotepine---primary:
    run: antipsychotic-zotepine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: antipsychotic-amisulpride---primary/output
  antipsychotic-aripiprazole---primary:
    run: antipsychotic-aripiprazole---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: antipsychotic-zotepine---primary/output
  antipsychotic-paliperidone---primary:
    run: antipsychotic-paliperidone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: antipsychotic-aripiprazole---primary/output
  antipsychotic-asenapine---primary:
    run: antipsychotic-asenapine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: antipsychotic-paliperidone---primary/output
  antipsychotic-fluspirilene---primary:
    run: antipsychotic-fluspirilene---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: antipsychotic-asenapine---primary/output
  antipsychotic-nausea---primary:
    run: antipsychotic-nausea---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: antipsychotic-fluspirilene---primary/output
  antipsychotic-tablet---primary:
    run: antipsychotic-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: antipsychotic-nausea---primary/output
  antipsychotic-capsule---primary:
    run: antipsychotic-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: antipsychotic-tablet---primary/output
  antipsychotic-chlorpromazine---primary:
    run: antipsychotic-chlorpromazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: antipsychotic-capsule---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: antipsychotic-chlorpromazine---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
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
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
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
