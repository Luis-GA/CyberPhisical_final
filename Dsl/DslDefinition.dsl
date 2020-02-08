<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="234a2f4b-4992-4d29-8ff0-e19ed6329371" Description="Description for Company.CyberPhisical_final.CyberPhisical_final" Name="CyberPhisical_final" DisplayName="CyberPhisical_final" Namespace="Company.CyberPhisical_final" ProductName="CyberPhisical_final" CompanyName="Company" PackageGuid="d98a8d8e-03f6-4c2d-9bad-81cd31a78fb2" PackageNamespace="Company.CyberPhisical_final" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="60705938-a426-4785-ad5a-e4aeecffb104" Description="The root in which all other elements are embedded. Appears as a diagram." Name="IoT" DisplayName="Io T" Namespace="Company.CyberPhisical_final">
      <Properties>
        <DomainProperty Id="99328630-6e9d-4451-b1eb-43c73cc67eb0" Description="Description for Company.CyberPhisical_final.IoT.Name DDBB" Name="NameDDBB" DisplayName="Name DDBB">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Notes>Creates an embedding link when an element is dropped onto a model. </Notes>
          <Index>
            <DomainClassMoniker Name="Device" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>IoTHasElements.Elements</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Controller" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>IoTHasControllers.Controllers</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Alarms" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>IoTHasAlarm.Alarm</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="01e75ad3-4060-44d7-8bc3-dbc5fe5fc65f" Description="Elements embedded in the model. Appear as boxes on the diagram." Name="Device" DisplayName="Device" Namespace="Company.CyberPhisical_final">
      <Properties>
        <DomainProperty Id="a4ed7b51-005e-4e3a-a1d4-a8fca34c1a6c" Description="Description for Company.CyberPhisical_final.Device.Name" Name="Name" DisplayName="Name" DefaultValue="" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Sensor" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>DeviceHasSensors.Sensors</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Actuators" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>DeviceHasActuator.Actuator</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="ee1b923b-99cf-44b2-9c74-1c489b1e42c4" Description="Description for Company.CyberPhisical_final.Sensor" Name="Sensor" DisplayName="Sensor" InheritanceModifier="Abstract" Namespace="Company.CyberPhisical_final">
      <BaseClass>
        <DomainClassMoniker Name="Things" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="1d201e7b-3d92-498e-a325-4b1612867089" Description="Description for Company.CyberPhisical_final.Sensor.Current_mesure" Name="current_mesure" DisplayName="Current_mesure">
          <Type>
            <ExternalTypeMoniker Name="/System/Double" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="41ea660f-be4d-4bb3-bbd8-a33734c0d8ab" Description="Description for Company.CyberPhisical_final.Sensor.Name" Name="name" DisplayName="Name">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="7f596f97-6e8e-460a-86b8-8651b71127eb" Description="Description for Company.CyberPhisical_final.Sensor.Type_measure" Name="type_measure" DisplayName="Type_measure">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="6fca36d4-cc15-45d0-bb2e-246f5e6eaa47" Description="Description for Company.CyberPhisical_final.Temperature" Name="Temperature" DisplayName="Temperature" Namespace="Company.CyberPhisical_final">
      <BaseClass>
        <DomainClassMoniker Name="Sensor" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="f36e410f-a7ad-4b17-8165-ebc7a9dacb1f" Description="Description for Company.CyberPhisical_final.Humidity" Name="Humidity" DisplayName="Humidity" Namespace="Company.CyberPhisical_final">
      <BaseClass>
        <DomainClassMoniker Name="Sensor" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="4ba904f6-171f-4956-8e5d-585ba8a7918d" Description="Description for Company.CyberPhisical_final.Custom_sensor" Name="Custom_sensor" DisplayName="Custom_sensor" Namespace="Company.CyberPhisical_final">
      <BaseClass>
        <DomainClassMoniker Name="Sensor" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="63830adc-233b-4b83-a38a-1d182aa2a48f" Description="Description for Company.CyberPhisical_final.SmokeSensor" Name="SmokeSensor" DisplayName="Smoke Sensor" Namespace="Company.CyberPhisical_final">
      <BaseClass>
        <DomainClassMoniker Name="Sensor" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="e7387979-1b82-4db6-9f43-7488484b652a" Description="Description for Company.CyberPhisical_final.AirConditioning" Name="AirConditioning" DisplayName="Air Conditioning" Namespace="Company.CyberPhisical_final">
      <BaseClass>
        <DomainClassMoniker Name="Actuators" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="d29e4c68-900f-4a34-9421-38cb1bb83432" Description="Description for Company.CyberPhisical_final.Siren" Name="Siren" DisplayName="Siren" Namespace="Company.CyberPhisical_final">
      <BaseClass>
        <DomainClassMoniker Name="Actuators" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="1250097d-8a44-4cde-be0d-6e8e468ac023" Description="Description for Company.CyberPhisical_final.Actuators" Name="Actuators" DisplayName="Actuators" InheritanceModifier="Abstract" Namespace="Company.CyberPhisical_final">
      <BaseClass>
        <DomainClassMoniker Name="Things" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="d6e3eb2a-efb7-4212-aa29-46df0f179250" Description="Description for Company.CyberPhisical_final.Actuators.Name" Name="name" DisplayName="Name">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="b26fec0f-d73c-4bc8-84fa-acf11637d229" Description="Description for Company.CyberPhisical_final.Controller" Name="Controller" DisplayName="Controller" Namespace="Company.CyberPhisical_final">
      <Properties>
        <DomainProperty Id="7c5760ab-df4c-4a59-a642-f19dd10dd382" Description="Description for Company.CyberPhisical_final.Controller.Name" Name="Name" DisplayName="Name">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="3f35d373-8d61-4246-aa24-3b1383304ef7" Description="Description for Company.CyberPhisical_final.Alarms" Name="Alarms" DisplayName="Alarms" Namespace="Company.CyberPhisical_final">
      <BaseClass>
        <DomainClassMoniker Name="Things" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="3e751e1e-8e43-4be2-8007-c9f9e55a0d7f" Description="Description for Company.CyberPhisical_final.Alarms.Name" Name="name" DisplayName="Name">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="938b0120-2f33-473a-a54e-ed274dc86768" Description="Description for Company.CyberPhisical_final.Alarms.Condition" Name="condition" DisplayName="Condition">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="fbe86373-5c0d-4440-9161-1922f9ccc2af" Description="Description for Company.CyberPhisical_final.Alarms.Advertence" Name="advertence" DisplayName="Advertence">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="302e1d16-0280-4047-918d-0cf5b1ea7df7" Description="Description for Company.CyberPhisical_final.Things" Name="Things" DisplayName="Things" InheritanceModifier="Abstract" Namespace="Company.CyberPhisical_final" />
    <DomainClass Id="8ee57918-17b2-492b-9381-70e5a08c74cb" Description="Description for Company.CyberPhisical_final.custom_actuator" Name="custom_actuator" DisplayName="Custom_actuator" Namespace="Company.CyberPhisical_final">
      <BaseClass>
        <DomainClassMoniker Name="Actuators" />
      </BaseClass>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="3a3d0156-0947-40ab-8e32-a2ad861fb292" Description="Embedding relationship between the Model and Elements" Name="IoTHasElements" DisplayName="Io THas Elements" Namespace="Company.CyberPhisical_final" IsEmbedding="true">
      <Source>
        <DomainRole Id="dec72998-807d-49dc-9f02-aabbcb02f8d5" Description="" Name="IoT" DisplayName="Io T" PropertyName="Elements" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Elements">
          <RolePlayer>
            <DomainClassMoniker Name="IoT" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="cb0f0194-ae48-470e-95a6-1e9b86bb6389" Description="" Name="Element" DisplayName="Element" PropertyName="IoT" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Io T">
          <RolePlayer>
            <DomainClassMoniker Name="Device" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="4ce4b998-98d2-4941-b7fa-6ef80780a8b7" Description="Description for Company.CyberPhisical_final.DeviceHasSensors" Name="DeviceHasSensors" DisplayName="Device Has Sensors" Namespace="Company.CyberPhisical_final" IsEmbedding="true">
      <Source>
        <DomainRole Id="c8fb73e7-f697-44e5-904c-4f2c289573a7" Description="Description for Company.CyberPhisical_final.DeviceHasSensors.Device" Name="Device" DisplayName="Device" PropertyName="Sensors" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Sensors">
          <RolePlayer>
            <DomainClassMoniker Name="Device" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="4335be7a-a045-476b-8d76-041af60cbd55" Description="Description for Company.CyberPhisical_final.DeviceHasSensors.Sensor" Name="Sensor" DisplayName="Sensor" PropertyName="Device" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Device">
          <RolePlayer>
            <DomainClassMoniker Name="Sensor" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="05c552e7-7d97-430c-a99d-8f58eed9580d" Description="Description for Company.CyberPhisical_final.DeviceHasActuator" Name="DeviceHasActuator" DisplayName="Device Has Actuator" Namespace="Company.CyberPhisical_final" IsEmbedding="true">
      <Source>
        <DomainRole Id="9f14e0bd-bcd2-4767-92d5-a4beec367987" Description="Description for Company.CyberPhisical_final.DeviceHasActuator.Device" Name="Device" DisplayName="Device" PropertyName="Actuator" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Actuator">
          <RolePlayer>
            <DomainClassMoniker Name="Device" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="b571352a-7a3c-442c-aa22-d5d4a7cbde6c" Description="Description for Company.CyberPhisical_final.DeviceHasActuator.Actuators" Name="Actuators" DisplayName="Actuators" PropertyName="Device" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Device">
          <RolePlayer>
            <DomainClassMoniker Name="Actuators" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="a7c1fe8b-7f0d-4395-8a3e-4ab60f31f015" Description="Description for Company.CyberPhisical_final.IoTHasControllers" Name="IoTHasControllers" DisplayName="Io THas Controllers" Namespace="Company.CyberPhisical_final" IsEmbedding="true">
      <Source>
        <DomainRole Id="0a68d31d-0d00-4c76-b1c8-94c5c070ff17" Description="Description for Company.CyberPhisical_final.IoTHasControllers.IoT" Name="IoT" DisplayName="Io T" PropertyName="Controllers" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Controllers">
          <RolePlayer>
            <DomainClassMoniker Name="IoT" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="17064fc8-76a1-44c1-8873-9c8da971864d" Description="Description for Company.CyberPhisical_final.IoTHasControllers.Controller" Name="Controller" DisplayName="Controller" PropertyName="IoT" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Io T">
          <RolePlayer>
            <DomainClassMoniker Name="Controller" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="22524e6d-6162-4f69-9fc3-e458bb06d897" Description="Description for Company.CyberPhisical_final.IoTHasAlarm" Name="IoTHasAlarm" DisplayName="Io THas Alarm" Namespace="Company.CyberPhisical_final" IsEmbedding="true">
      <Source>
        <DomainRole Id="7fedd3c9-f516-45f9-bbe4-012d2b9586f5" Description="Description for Company.CyberPhisical_final.IoTHasAlarm.IoT" Name="IoT" DisplayName="Io T" PropertyName="Alarm" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Alarm">
          <RolePlayer>
            <DomainClassMoniker Name="IoT" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="147884ea-a930-4c19-9b33-4ab3ddf75fb6" Description="Description for Company.CyberPhisical_final.IoTHasAlarm.Alarms" Name="Alarms" DisplayName="Alarms" PropertyName="IoT" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Io T">
          <RolePlayer>
            <DomainClassMoniker Name="Alarms" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="c8f9706e-d0e7-47e9-bea9-00d5d244cca9" Description="Description for Company.CyberPhisical_final.ControllerReferencesThing" Name="ControllerReferencesThing" DisplayName="Controller References Thing" Namespace="Company.CyberPhisical_final">
      <Source>
        <DomainRole Id="87b71d76-df8f-400c-ba6f-66d016a2c674" Description="Description for Company.CyberPhisical_final.ControllerReferencesThing.Controller" Name="Controller" DisplayName="Controller" PropertyName="Thing" PropertyDisplayName="Thing">
          <RolePlayer>
            <DomainClassMoniker Name="Controller" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="c06c3d73-34c2-49ab-9fc5-606ad25cd778" Description="Description for Company.CyberPhisical_final.ControllerReferencesThing.Things" Name="Things" DisplayName="Things" PropertyName="Controllers" PropertyDisplayName="Controllers">
          <RolePlayer>
            <DomainClassMoniker Name="Things" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
  </Relationships>
  <Types>
    <ExternalType Name="DateTime" Namespace="System" />
    <ExternalType Name="String" Namespace="System" />
    <ExternalType Name="Int16" Namespace="System" />
    <ExternalType Name="Int32" Namespace="System" />
    <ExternalType Name="Int64" Namespace="System" />
    <ExternalType Name="UInt16" Namespace="System" />
    <ExternalType Name="UInt32" Namespace="System" />
    <ExternalType Name="UInt64" Namespace="System" />
    <ExternalType Name="SByte" Namespace="System" />
    <ExternalType Name="Byte" Namespace="System" />
    <ExternalType Name="Double" Namespace="System" />
    <ExternalType Name="Single" Namespace="System" />
    <ExternalType Name="Guid" Namespace="System" />
    <ExternalType Name="Boolean" Namespace="System" />
    <ExternalType Name="Char" Namespace="System" />
  </Types>
  <Shapes>
    <GeometryShape Id="fbec94cf-c398-4a01-af52-39c28e0ea8c3" Description="Shape used to represent ExampleElements on a Diagram." Name="ExampleShape" DisplayName="Example Shape" Namespace="Company.CyberPhisical_final" FixedTooltipText="Example Shape" FillColor="242, 239, 229" OutlineColor="113, 111, 110" InitialWidth="2" InitialHeight="0.75" OutlineThickness="0.01" Geometry="Rectangle">
      <Notes>The shape has a text decorator used to display the Name property of the mapped ExampleElement.</Notes>
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
    <ImageShape Id="d14bf511-2142-4908-9b04-b73dc518aea9" Description="Description for Company.CyberPhisical_final.TemperatureImage" Name="TemperatureImage" DisplayName="Temperature Image" Namespace="Company.CyberPhisical_final" FixedTooltipText="Temperature Image" InitialWidth="0.75" InitialHeight="0.5" Image="Resources\Images\Sensors\termometro.png" />
    <ImageShape Id="ab93a8f0-0f97-453f-9809-dc5d556ca58a" Description="Description for Company.CyberPhisical_final.HumidityImage" Name="HumidityImage" DisplayName="Humidity Image" Namespace="Company.CyberPhisical_final" FixedTooltipText="Humidity Image" InitialWidth="0.6" InitialHeight="0.6" Image="Resources\Images\Sensors\humidity.png" />
    <ImageShape Id="d1a6ae15-fda6-4b08-aa3c-04727d85570e" Description="Description for Company.CyberPhisical_final.SirenImage" Name="SirenImage" DisplayName="Siren Image" Namespace="Company.CyberPhisical_final" FixedTooltipText="Siren Image" InitialWidth="0.5" InitialHeight="0.5" Image="Resources\Images\actuator\siren.png" />
    <ImageShape Id="afe4a4b9-7baf-4e69-94e2-2a7a588a3b86" Description="Description for Company.CyberPhisical_final.AirConditioningImage" Name="AirConditioningImage" DisplayName="Air Conditioning Image" Namespace="Company.CyberPhisical_final" FixedTooltipText="Air Conditioning Image" InitialWidth="0.8" InitialHeight="0.8" Image="Resources\Images\actuator\aire.png" />
    <GeometryShape Id="461c2def-db50-4e61-96c3-3d3e7e3586a2" Description="Description for Company.CyberPhisical_final.AlarmsGS" Name="AlarmsGS" DisplayName="Alarms GS" Namespace="Company.CyberPhisical_final" FixedTooltipText="Alarms GS" FillColor="Orange" InitialWidth="1" InitialHeight="0.8" Geometry="RoundedRectangle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="name" DisplayName="Name" DefaultText="name" FontSize="10" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopRight" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="IconDecorator1" DisplayName="Icon Decorator1" DefaultIcon="Resources\alert.bmp" />
      </ShapeHasDecorators>
    </GeometryShape>
    <ImageShape Id="405598f7-1607-4124-853a-617fff159590" Description="Description for Company.CyberPhisical_final.ControllerIS" Name="ControllerIS" DisplayName="Controller IS" Namespace="Company.CyberPhisical_final" FixedTooltipText="Controller IS" InitialWidth="1" InitialHeight="0.8" Image="Resources\Images\kisspng_network_cards_adapters_computer.png" />
    <ImageShape Id="14a0de5f-2303-416e-81ae-f79186abd675" Description="Description for Company.CyberPhisical_final.ImageShape1" Name="ImageShape1" DisplayName="Image Shape1" Namespace="Company.CyberPhisical_final" FixedTooltipText="Image Shape1" InitialWidth="0.5" InitialHeight="0.5" Image="Resources\Images\Sensors\smoke.png" />
    <GeometryShape Id="84c267c6-efec-444c-b3c3-cbb7254a287b" Description="Description for Company.CyberPhisical_final.CustomSensorGS" Name="CustomSensorGS" DisplayName="Custom Sensor GS" Namespace="Company.CyberPhisical_final" FixedTooltipText="Custom Sensor GS" FillColor="RosyBrown" InitialWidth="0.7" InitialHeight="0.5" Geometry="Rectangle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Name" DisplayName="Name" DefaultText="Name" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="c299a596-a6e5-484e-9190-b35008cf2b30" Description="Description for Company.CyberPhisical_final.CustomActuatorGS" Name="CustomActuatorGS" DisplayName="Custom Actuator GS" Namespace="Company.CyberPhisical_final" FixedTooltipText="Custom Actuator GS" InitialWidth="0.7" InitialHeight="0.5" Geometry="Rectangle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Name" DisplayName="Name" DefaultText="Name" />
      </ShapeHasDecorators>
    </GeometryShape>
  </Shapes>
  <Connectors>
    <Connector Id="d956db30-97a6-4124-be00-1a4cc6791184" Description="Connector between the ExampleShapes. Represents ExampleRelationships on the Diagram." Name="ExampleConnector" DisplayName="Example Connector" Namespace="Company.CyberPhisical_final" FixedTooltipText="Example Connector" Color="113, 111, 110" TargetEndStyle="EmptyArrow" Thickness="0.01" />
  </Connectors>
  <XmlSerializationBehavior Name="CyberPhisical_finalSerializationBehavior" Namespace="Company.CyberPhisical_final">
    <ClassData>
      <XmlClassData TypeName="IoT" MonikerAttributeName="" SerializeId="true" MonikerElementName="ioTMoniker" ElementName="ioT" MonikerTypeName="IoTMoniker">
        <DomainClassMoniker Name="IoT" />
        <ElementData>
          <XmlRelationshipData RoleElementName="elements">
            <DomainRelationshipMoniker Name="IoTHasElements" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="controllers">
            <DomainRelationshipMoniker Name="IoTHasControllers" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="alarm">
            <DomainRelationshipMoniker Name="IoTHasAlarm" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="nameDDBB">
            <DomainPropertyMoniker Name="IoT/NameDDBB" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Device" MonikerAttributeName="name" SerializeId="true" MonikerElementName="deviceMoniker" ElementName="device" MonikerTypeName="DeviceMoniker">
        <DomainClassMoniker Name="Device" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="Device/Name" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="sensors">
            <DomainRelationshipMoniker Name="DeviceHasSensors" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="actuator">
            <DomainRelationshipMoniker Name="DeviceHasActuator" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="IoTHasElements" MonikerAttributeName="" SerializeId="true" MonikerElementName="ioTHasElementsMoniker" ElementName="ioTHasElements" MonikerTypeName="IoTHasElementsMoniker">
        <DomainRelationshipMoniker Name="IoTHasElements" />
      </XmlClassData>
      <XmlClassData TypeName="ExampleShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleShapeMoniker" ElementName="exampleShape" MonikerTypeName="ExampleShapeMoniker">
        <GeometryShapeMoniker Name="ExampleShape" />
      </XmlClassData>
      <XmlClassData TypeName="ExampleConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleConnectorMoniker" ElementName="exampleConnector" MonikerTypeName="ExampleConnectorMoniker">
        <ConnectorMoniker Name="ExampleConnector" />
      </XmlClassData>
      <XmlClassData TypeName="CyberPhisical_finalDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="cyberPhisical_finalDiagramMoniker" ElementName="cyberPhisical_finalDiagram" MonikerTypeName="CyberPhisical_finalDiagramMoniker">
        <DiagramMoniker Name="CyberPhisical_finalDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="Sensor" MonikerAttributeName="" SerializeId="true" MonikerElementName="sensorMoniker" ElementName="sensor" MonikerTypeName="SensorMoniker">
        <DomainClassMoniker Name="Sensor" />
        <ElementData>
          <XmlPropertyData XmlName="current_mesure">
            <DomainPropertyMoniker Name="Sensor/current_mesure" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="Sensor/name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="type_measure">
            <DomainPropertyMoniker Name="Sensor/type_measure" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="DeviceHasSensors" MonikerAttributeName="" SerializeId="true" MonikerElementName="deviceHasSensorsMoniker" ElementName="deviceHasSensors" MonikerTypeName="DeviceHasSensorsMoniker">
        <DomainRelationshipMoniker Name="DeviceHasSensors" />
      </XmlClassData>
      <XmlClassData TypeName="Temperature" MonikerAttributeName="" SerializeId="true" MonikerElementName="temperatureMoniker" ElementName="temperature" MonikerTypeName="TemperatureMoniker">
        <DomainClassMoniker Name="Temperature" />
      </XmlClassData>
      <XmlClassData TypeName="Humidity" MonikerAttributeName="" SerializeId="true" MonikerElementName="humidityMoniker" ElementName="humidity" MonikerTypeName="HumidityMoniker">
        <DomainClassMoniker Name="Humidity" />
      </XmlClassData>
      <XmlClassData TypeName="Custom_sensor" MonikerAttributeName="" SerializeId="true" MonikerElementName="custom_sensorMoniker" ElementName="custom_sensor" MonikerTypeName="Custom_sensorMoniker">
        <DomainClassMoniker Name="Custom_sensor" />
      </XmlClassData>
      <XmlClassData TypeName="SmokeSensor" MonikerAttributeName="" SerializeId="true" MonikerElementName="smokeSensorMoniker" ElementName="smokeSensor" MonikerTypeName="SmokeSensorMoniker">
        <DomainClassMoniker Name="SmokeSensor" />
      </XmlClassData>
      <XmlClassData TypeName="TemperatureImage" MonikerAttributeName="" SerializeId="true" MonikerElementName="temperatureImageMoniker" ElementName="temperatureImage" MonikerTypeName="TemperatureImageMoniker">
        <ImageShapeMoniker Name="TemperatureImage" />
      </XmlClassData>
      <XmlClassData TypeName="AirConditioning" MonikerAttributeName="" SerializeId="true" MonikerElementName="airConditioningMoniker" ElementName="airConditioning" MonikerTypeName="AirConditioningMoniker">
        <DomainClassMoniker Name="AirConditioning" />
      </XmlClassData>
      <XmlClassData TypeName="Siren" MonikerAttributeName="" SerializeId="true" MonikerElementName="sirenMoniker" ElementName="siren" MonikerTypeName="SirenMoniker">
        <DomainClassMoniker Name="Siren" />
      </XmlClassData>
      <XmlClassData TypeName="Actuators" MonikerAttributeName="" SerializeId="true" MonikerElementName="actuatorsMoniker" ElementName="actuators" MonikerTypeName="ActuatorsMoniker">
        <DomainClassMoniker Name="Actuators" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="Actuators/name" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="HumidityImage" MonikerAttributeName="" SerializeId="true" MonikerElementName="humidityImageMoniker" ElementName="humidityImage" MonikerTypeName="HumidityImageMoniker">
        <ImageShapeMoniker Name="HumidityImage" />
      </XmlClassData>
      <XmlClassData TypeName="SirenImage" MonikerAttributeName="" SerializeId="true" MonikerElementName="sirenImageMoniker" ElementName="sirenImage" MonikerTypeName="SirenImageMoniker">
        <ImageShapeMoniker Name="SirenImage" />
      </XmlClassData>
      <XmlClassData TypeName="AirConditioningImage" MonikerAttributeName="" SerializeId="true" MonikerElementName="airConditioningImageMoniker" ElementName="airConditioningImage" MonikerTypeName="AirConditioningImageMoniker">
        <ImageShapeMoniker Name="AirConditioningImage" />
      </XmlClassData>
      <XmlClassData TypeName="DeviceHasActuator" MonikerAttributeName="" SerializeId="true" MonikerElementName="deviceHasActuatorMoniker" ElementName="deviceHasActuator" MonikerTypeName="DeviceHasActuatorMoniker">
        <DomainRelationshipMoniker Name="DeviceHasActuator" />
      </XmlClassData>
      <XmlClassData TypeName="Controller" MonikerAttributeName="" SerializeId="true" MonikerElementName="controllerMoniker" ElementName="controller" MonikerTypeName="ControllerMoniker">
        <DomainClassMoniker Name="Controller" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="thing">
            <DomainRelationshipMoniker Name="ControllerReferencesThing" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="Controller/Name" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="IoTHasControllers" MonikerAttributeName="" SerializeId="true" MonikerElementName="ioTHasControllersMoniker" ElementName="ioTHasControllers" MonikerTypeName="IoTHasControllersMoniker">
        <DomainRelationshipMoniker Name="IoTHasControllers" />
      </XmlClassData>
      <XmlClassData TypeName="Alarms" MonikerAttributeName="" SerializeId="true" MonikerElementName="alarmsMoniker" ElementName="alarms" MonikerTypeName="AlarmsMoniker">
        <DomainClassMoniker Name="Alarms" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="Alarms/name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="condition">
            <DomainPropertyMoniker Name="Alarms/condition" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="advertence">
            <DomainPropertyMoniker Name="Alarms/advertence" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="IoTHasAlarm" MonikerAttributeName="" SerializeId="true" MonikerElementName="ioTHasAlarmMoniker" ElementName="ioTHasAlarm" MonikerTypeName="IoTHasAlarmMoniker">
        <DomainRelationshipMoniker Name="IoTHasAlarm" />
      </XmlClassData>
      <XmlClassData TypeName="AlarmsGS" MonikerAttributeName="" SerializeId="true" MonikerElementName="alarmsGSMoniker" ElementName="alarmsGS" MonikerTypeName="AlarmsGSMoniker">
        <GeometryShapeMoniker Name="AlarmsGS" />
      </XmlClassData>
      <XmlClassData TypeName="ControllerIS" MonikerAttributeName="" SerializeId="true" MonikerElementName="controllerISMoniker" ElementName="controllerIS" MonikerTypeName="ControllerISMoniker">
        <ImageShapeMoniker Name="ControllerIS" />
      </XmlClassData>
      <XmlClassData TypeName="ImageShape1" MonikerAttributeName="" SerializeId="true" MonikerElementName="imageShape1Moniker" ElementName="imageShape1" MonikerTypeName="ImageShape1Moniker">
        <ImageShapeMoniker Name="ImageShape1" />
      </XmlClassData>
      <XmlClassData TypeName="Things" MonikerAttributeName="" SerializeId="true" MonikerElementName="thingsMoniker" ElementName="things" MonikerTypeName="ThingsMoniker">
        <DomainClassMoniker Name="Things" />
      </XmlClassData>
      <XmlClassData TypeName="ControllerReferencesThing" MonikerAttributeName="" SerializeId="true" MonikerElementName="controllerReferencesThingMoniker" ElementName="controllerReferencesThing" MonikerTypeName="ControllerReferencesThingMoniker">
        <DomainRelationshipMoniker Name="ControllerReferencesThing" />
      </XmlClassData>
      <XmlClassData TypeName="CustomSensorGS" MonikerAttributeName="" SerializeId="true" MonikerElementName="customSensorGSMoniker" ElementName="customSensorGS" MonikerTypeName="CustomSensorGSMoniker">
        <GeometryShapeMoniker Name="CustomSensorGS" />
      </XmlClassData>
      <XmlClassData TypeName="Custom_actuator" MonikerAttributeName="" SerializeId="true" MonikerElementName="custom_actuatorMoniker" ElementName="custom_actuator" MonikerTypeName="Custom_actuatorMoniker">
        <DomainClassMoniker Name="custom_actuator" />
      </XmlClassData>
      <XmlClassData TypeName="CustomActuatorGS" MonikerAttributeName="" SerializeId="true" MonikerElementName="customActuatorGSMoniker" ElementName="customActuatorGS" MonikerTypeName="CustomActuatorGSMoniker">
        <GeometryShapeMoniker Name="CustomActuatorGS" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="CyberPhisical_finalExplorer" />
  <ConnectionBuilders>
    <ConnectionBuilder Name="ControllerReferencesThingBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="ControllerReferencesThing" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Controller" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Things" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
  </ConnectionBuilders>
  <Diagram Id="be7b0bc4-2a33-41ae-8797-1564c66cdfc0" Description="Description for Company.CyberPhisical_final.CyberPhisical_finalDiagram" Name="CyberPhisical_finalDiagram" DisplayName="Minimal Language Diagram" Namespace="Company.CyberPhisical_final">
    <Class>
      <DomainClassMoniker Name="IoT" />
    </Class>
    <ShapeMaps>
      <ShapeMap>
        <DomainClassMoniker Name="Device" />
        <ParentElementPath>
          <DomainPath>IoTHasElements.IoT/!IoT</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ExampleShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Device/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="ExampleShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Temperature" />
        <ParentElementPath>
          <DomainPath>DeviceHasSensors.Device/!Device/IoTHasElements.IoT/!IoT</DomainPath>
        </ParentElementPath>
        <ImageShapeMoniker Name="TemperatureImage" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Humidity" />
        <ParentElementPath>
          <DomainPath>DeviceHasSensors.Device/!Device/IoTHasElements.IoT/!IoT</DomainPath>
        </ParentElementPath>
        <ImageShapeMoniker Name="HumidityImage" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Siren" />
        <ParentElementPath>
          <DomainPath>DeviceHasActuator.Device/!Device/IoTHasElements.IoT/!IoT</DomainPath>
        </ParentElementPath>
        <ImageShapeMoniker Name="SirenImage" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="AirConditioning" />
        <ParentElementPath>
          <DomainPath>DeviceHasActuator.Device/!Device/IoTHasElements.IoT/!IoT</DomainPath>
        </ParentElementPath>
        <ImageShapeMoniker Name="AirConditioningImage" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Alarms" />
        <ParentElementPath>
          <DomainPath>IoTHasAlarm.IoT/!IoT</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AlarmsGS/name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Alarms/name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="AlarmsGS" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Controller" />
        <ParentElementPath>
          <DomainPath>IoTHasControllers.IoT/!IoT</DomainPath>
        </ParentElementPath>
        <ImageShapeMoniker Name="ControllerIS" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="SmokeSensor" />
        <ParentElementPath>
          <DomainPath>DeviceHasSensors.Device/!Device/IoTHasElements.IoT/!IoT</DomainPath>
        </ParentElementPath>
        <ImageShapeMoniker Name="ImageShape1" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Custom_sensor" />
        <ParentElementPath>
          <DomainPath>DeviceHasSensors.Device/!Device/IoTHasElements.IoT/!IoT</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="CustomSensorGS/Name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Sensor/name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="CustomSensorGS" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="custom_actuator" />
        <ParentElementPath>
          <DomainPath>DeviceHasActuator.Device/!Device/IoTHasElements.IoT/!IoT</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="CustomActuatorGS/Name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Actuators/name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="CustomActuatorGS" />
      </ShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="ExampleConnector" />
        <DomainRelationshipMoniker Name="ControllerReferencesThing" />
      </ConnectorMap>
    </ConnectorMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="CyberPhisicalfinal" EditorGuid="26c240b3-67f9-4e61-92e6-ccb33db0a8dd">
    <RootClass>
      <DomainClassMoniker Name="IoT" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="CyberPhisical_finalSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="CyberPhisical_final">
      <ElementTool Name="Device" ToolboxIcon="resources\exampleshapetoolbitmap.bmp" Caption="Device" Tooltip="" HelpKeyword="CreateExampleClassF1Keyword">
        <DomainClassMoniker Name="Device" />
      </ElementTool>
      <ElementTool Name="Temperature" ToolboxIcon="Resources\weather.bmp" Caption="Temperature" Tooltip="Temperature" HelpKeyword="Tempertature">
        <DomainClassMoniker Name="Temperature" />
      </ElementTool>
      <ElementTool Name="Siren" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Siren" Tooltip="Siren" HelpKeyword="Siren">
        <DomainClassMoniker Name="Siren" />
      </ElementTool>
      <ElementTool Name="AirConditioning" ToolboxIcon="Resources\fan.bmp" Caption="AirConditioning" Tooltip="Air Conditioning" HelpKeyword="AirConditioning">
        <DomainClassMoniker Name="AirConditioning" />
      </ElementTool>
      <ElementTool Name="Controller" ToolboxIcon="Resources\setting.bmp" Caption="Controller" Tooltip="Controller" HelpKeyword="Controller">
        <DomainClassMoniker Name="Controller" />
      </ElementTool>
      <ElementTool Name="Alarm" ToolboxIcon="Resources\Alert-icon.bmp" Caption="Alarm" Tooltip="Alarm" HelpKeyword="Alarm">
        <DomainClassMoniker Name="Alarms" />
      </ElementTool>
      <ConnectionTool Name="ConnectionTool1" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="Controller_connection" Tooltip="Connection Tool1" HelpKeyword="ConnectionTool1">
        <ConnectionBuilderMoniker Name="CyberPhisical_final/ControllerReferencesThingBuilder" />
      </ConnectionTool>
      <ElementTool Name="Custom_Sensor" ToolboxIcon="Resources\steam.bmp" Caption="Custom_Sensor" Tooltip="Custom_ Sensor" HelpKeyword="Custom_Sensor">
        <DomainClassMoniker Name="Custom_sensor" />
      </ElementTool>
      <ElementTool Name="Custom_Actuator" ToolboxIcon="Resources\steam.bmp" Caption="Custom Actuator" Tooltip="Custom Actuator" HelpKeyword="">
        <DomainClassMoniker Name="custom_actuator" />
      </ElementTool>
      <ElementTool Name="Humedity" ToolboxIcon="Resources\humedity (1).bmp" Caption="Humedity" Tooltip="Humedity" HelpKeyword="Humedity">
        <DomainClassMoniker Name="Humidity" />
      </ElementTool>
      <ElementTool Name="Smoke" ToolboxIcon="Resources\smoke.bmp" Caption="Smoke" Tooltip="Smoke" HelpKeyword="Smoke">
        <DomainClassMoniker Name="SmokeSensor" />
      </ElementTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="CyberPhisical_finalDiagram" />
  </Designer>
  <Explorer ExplorerGuid="20df160e-0f37-46f8-bf51-cefdd36d8dc7" Title="CyberPhisical_final Explorer">
    <ExplorerBehaviorMoniker Name="CyberPhisical_final/CyberPhisical_finalExplorer" />
  </Explorer>
</Dsl>