<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="234a2f4b-4992-4d29-8ff0-e19ed6329371" Description="Description for Company.CyberPhisical_final.CyberPhisical_final" Name="CyberPhisical_final" DisplayName="CyberPhisical_final" Namespace="Company.CyberPhisical_final" ProductName="CyberPhisical_final" CompanyName="Company" PackageGuid="d98a8d8e-03f6-4c2d-9bad-81cd31a78fb2" PackageNamespace="Company.CyberPhisical_final" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="60705938-a426-4785-ad5a-e4aeecffb104" Description="The root in which all other elements are embedded. Appears as a diagram." Name="IoT" DisplayName="Io T" Namespace="Company.CyberPhisical_final">
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
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="ee1b923b-99cf-44b2-9c74-1c489b1e42c4" Description="Description for Company.CyberPhisical_final.Sensor" Name="Sensor" DisplayName="Sensor" InheritanceModifier="Abstract" Namespace="Company.CyberPhisical_final">
      <Properties>
        <DomainProperty Id="1d201e7b-3d92-498e-a325-4b1612867089" Description="Description for Company.CyberPhisical_final.Sensor.Measure" Name="Measure" DisplayName="Measure">
          <Type>
            <ExternalTypeMoniker Name="/System/Double" />
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
    <DomainClass Id="4ba904f6-171f-4956-8e5d-585ba8a7918d" Description="Description for Company.CyberPhisical_final.CO2Level" Name="CO2Level" DisplayName="CO2 Level" Namespace="Company.CyberPhisical_final">
      <BaseClass>
        <DomainClassMoniker Name="Sensor" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="63830adc-233b-4b83-a38a-1d182aa2a48f" Description="Description for Company.CyberPhisical_final.SmokeSensor" Name="SmokeSensor" DisplayName="Smoke Sensor" Namespace="Company.CyberPhisical_final">
      <BaseClass>
        <DomainClassMoniker Name="Sensor" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="e7387979-1b82-4db6-9f43-7488484b652a" Description="Description for Company.CyberPhisical_final.AirConditioning" Name="AirConditioning" DisplayName="Air Conditioning" Namespace="Company.CyberPhisical_final" />
    <DomainClass Id="d29e4c68-900f-4a34-9421-38cb1bb83432" Description="Description for Company.CyberPhisical_final.WaterPump" Name="WaterPump" DisplayName="Water Pump" Namespace="Company.CyberPhisical_final" />
    <DomainClass Id="1250097d-8a44-4cde-be0d-6e8e468ac023" Description="Description for Company.CyberPhisical_final.DomainClass1" Name="DomainClass1" DisplayName="Domain Class1" Namespace="Company.CyberPhisical_final" />
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
    <GeometryShape Id="b2dfc7e7-30ea-40cc-bda4-03fb319b838e" Description="Description for Company.CyberPhisical_final.GeometryShape1" Name="GeometryShape1" DisplayName="Geometry Shape1" Namespace="Company.CyberPhisical_final" FixedTooltipText="Geometry Shape1" InitialHeight="1" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="" DefaultText="" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="59aa67b9-85d8-41ea-b5a7-8693b564404b" Description="Description for Company.CyberPhisical_final.GeometryShape2" Name="GeometryShape2" DisplayName="Geometry Shape2" Namespace="Company.CyberPhisical_final" FixedTooltipText="Geometry Shape2" InitialHeight="1" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
    <ImageShape Id="d14bf511-2142-4908-9b04-b73dc518aea9" Description="Description for Company.CyberPhisical_final.TemperatureImage" Name="TemperatureImage" DisplayName="Temperature Image" Namespace="Company.CyberPhisical_final" FixedTooltipText="Temperature Image" InitialHeight="1" Image="Resources\Images\Sensors\termometro.png" />
    <ImageShape Id="ab93a8f0-0f97-453f-9809-dc5d556ca58a" Description="Description for Company.CyberPhisical_final.HumidityImage" Name="HumidityImage" DisplayName="Humidity Image" Namespace="Company.CyberPhisical_final" FixedTooltipText="Humidity Image" InitialHeight="1" Image="Resources\Images\Sensors\humidity.png" />
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
          <XmlPropertyData XmlName="measure">
            <DomainPropertyMoniker Name="Sensor/Measure" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="GeometryShape1" MonikerAttributeName="" SerializeId="true" MonikerElementName="geometryShape1Moniker" ElementName="geometryShape1" MonikerTypeName="GeometryShape1Moniker">
        <GeometryShapeMoniker Name="GeometryShape1" />
      </XmlClassData>
      <XmlClassData TypeName="DeviceHasSensors" MonikerAttributeName="" SerializeId="true" MonikerElementName="deviceHasSensorsMoniker" ElementName="deviceHasSensors" MonikerTypeName="DeviceHasSensorsMoniker">
        <DomainRelationshipMoniker Name="DeviceHasSensors" />
      </XmlClassData>
      <XmlClassData TypeName="GeometryShape2" MonikerAttributeName="" SerializeId="true" MonikerElementName="geometryShape2Moniker" ElementName="geometryShape2" MonikerTypeName="GeometryShape2Moniker">
        <GeometryShapeMoniker Name="GeometryShape2" />
      </XmlClassData>
      <XmlClassData TypeName="Temperature" MonikerAttributeName="" SerializeId="true" MonikerElementName="temperatureMoniker" ElementName="temperature" MonikerTypeName="TemperatureMoniker">
        <DomainClassMoniker Name="Temperature" />
      </XmlClassData>
      <XmlClassData TypeName="Humidity" MonikerAttributeName="" SerializeId="true" MonikerElementName="humidityMoniker" ElementName="humidity" MonikerTypeName="HumidityMoniker">
        <DomainClassMoniker Name="Humidity" />
      </XmlClassData>
      <XmlClassData TypeName="CO2Level" MonikerAttributeName="" SerializeId="true" MonikerElementName="cO2LevelMoniker" ElementName="cO2Level" MonikerTypeName="CO2LevelMoniker">
        <DomainClassMoniker Name="CO2Level" />
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
      <XmlClassData TypeName="WaterPump" MonikerAttributeName="" SerializeId="true" MonikerElementName="waterPumpMoniker" ElementName="waterPump" MonikerTypeName="WaterPumpMoniker">
        <DomainClassMoniker Name="WaterPump" />
      </XmlClassData>
      <XmlClassData TypeName="DomainClass1" MonikerAttributeName="" SerializeId="true" MonikerElementName="domainClass1Moniker" ElementName="domainClass1" MonikerTypeName="DomainClass1Moniker">
        <DomainClassMoniker Name="DomainClass1" />
      </XmlClassData>
      <XmlClassData TypeName="HumidityImage" MonikerAttributeName="" SerializeId="true" MonikerElementName="humidityImageMoniker" ElementName="humidityImage" MonikerTypeName="HumidityImageMoniker">
        <ImageShapeMoniker Name="HumidityImage" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="CyberPhisical_finalExplorer" />
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
    </ShapeMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="CyberPhisicalfinal" EditorGuid="26c240b3-67f9-4e61-92e6-ccb33db0a8dd">
    <RootClass>
      <DomainClassMoniker Name="IoT" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="CyberPhisical_finalSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="CyberPhisical_final">
      <ElementTool Name="Device" ToolboxIcon="resources\exampleshapetoolbitmap.bmp" Caption="Device" Tooltip="Create an ExampleElement" HelpKeyword="CreateExampleClassF1Keyword">
        <DomainClassMoniker Name="Device" />
      </ElementTool>
      <ElementTool Name="iconTemp" ToolboxIcon="Resources\Images\weather.bmp" Caption="iconTemp" Tooltip="Icon Temp" HelpKeyword="iconTemp">
        <DomainClassMoniker Name="Temperature" />
      </ElementTool>
      <ElementTool Name="iconHumidity" ToolboxIcon="Resources\co2.bmp" Caption="iconHumidity" Tooltip="Icon Humidity" HelpKeyword="iconHumidity">
        <DomainClassMoniker Name="Humidity" />
      </ElementTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="CyberPhisical_finalDiagram" />
  </Designer>
  <Explorer ExplorerGuid="20df160e-0f37-46f8-bf51-cefdd36d8dc7" Title="CyberPhisical_final Explorer">
    <ExplorerBehaviorMoniker Name="CyberPhisical_final/CyberPhisical_finalExplorer" />
  </Explorer>
</Dsl>