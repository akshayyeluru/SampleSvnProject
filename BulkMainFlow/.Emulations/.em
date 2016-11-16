<?xml version="1.0" encoding="ASCII"?>
<emulation:EmulationData xmlns:emulation="http:///emulation.ecore" isBW="true" location="SampleArch">
  <ProcessNode Id="samplearch.SFAccount" Name="samplearch.SFAccount" ModelType="BW" moduleName="SampleArch">
    <Operation Name="callProcess" serviceName="samplearch.SFAccount">
      <Inputs Id="SampleArch_samplearch.SFAccount_callProcess_Start" Name="Start" isDefault="true" type="CALLPROCESS"/>
    </Operation>
  </ProcessNode>
  <ProcessNode Id="samplearch.SFContact" Name="samplearch.SFContact" ModelType="BW" moduleName="SampleArch">
    <Operation Name="callProcess" serviceName="samplearch.SFContact">
      <Inputs Id="SampleArch_samplearch.SFContact_callProcess_Start" Name="Start" isDefault="true" type="CALLPROCESS"/>
    </Operation>
  </ProcessNode>
  <ProcessNode Id="samplearch.SFQueueProcess" Name="samplearch.SFQueueProcess" ModelType="BW" moduleName="SampleArch">
    <Operation Name="callProcess" serviceName="samplearch.SFQueueProcess">
      <Inputs Id="SampleArch_samplearch.SFQueueProcess_callProcess_Start" Name="Start" isDefault="true" type="CALLPROCESS"/>
    </Operation>
  </ProcessNode>
</emulation:EmulationData>
