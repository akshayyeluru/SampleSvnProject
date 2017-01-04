<?xml version="1.0" encoding="ASCII"?>
<emulation:EmulationData xmlns:emulation="http:///emulation.ecore" isBW="true" location="BulkMainFlow">
  <ProcessNode Id="SFBaseFlow.SFAccount" Name="SFBaseFlow.SFAccount" ModelType="BW" moduleName="BulkMainFlow">
    <Operation Name="callProcess" serviceName="SFBaseFlow.SFAccount">
      <Inputs Id="BulkMainFlow_SFBaseFlow.SFAccount_callProcess_Start" Name="Start" isDefault="true" type="CALLPROCESS"/>
    </Operation>
  </ProcessNode>
  <ProcessNode Id="SFBaseFlow.SFBillPayer" Name="SFBaseFlow.SFBillPayer" ModelType="BW" moduleName="BulkMainFlow">
    <Operation Name="callProcess" serviceName="SFBaseFlow.SFBillPayer">
      <Inputs Id="BulkMainFlow_SFBaseFlow.SFBillPayer_callProcess_Start" Name="Start" isDefault="true" type="CALLPROCESS"/>
    </Operation>
  </ProcessNode>
  <ProcessNode Id="SFBaseFlow.SFContact" Name="SFBaseFlow.SFContact" ModelType="BW" moduleName="BulkMainFlow">
    <Operation Name="callProcess" serviceName="SFBaseFlow.SFContact">
      <Inputs Id="BulkMainFlow_SFBaseFlow.SFContact_callProcess_Start" Name="Start" isDefault="true" type="CALLPROCESS"/>
    </Operation>
  </ProcessNode>
  <ProcessNode Id="SFBaseFlow.SFQueueProcess" Name="SFBaseFlow.SFQueueProcess" ModelType="BW" moduleName="BulkMainFlow">
    <Operation Name="callProcess" serviceName="SFBaseFlow.SFQueueProcess">
      <Inputs Id="BulkMainFlow_SFBaseFlow.SFQueueProcess_callProcess_Start" Name="Start" isDefault="true" type="CALLPROCESS"/>
    </Operation>
  </ProcessNode>
</emulation:EmulationData>
