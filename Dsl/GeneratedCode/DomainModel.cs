﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using DslModeling = global::Microsoft.VisualStudio.Modeling;
using DslDesign = global::Microsoft.VisualStudio.Modeling.Design;
using DslDiagrams = global::Microsoft.VisualStudio.Modeling.Diagrams;
namespace Company.CyberPhisical_final
{
	/// <summary>
	/// DomainModel CyberPhisical_finalDomainModel
	/// Description for Company.CyberPhisical_final.CyberPhisical_final
	/// </summary>
	[DslDesign::DisplayNameResource("Company.CyberPhisical_final.CyberPhisical_finalDomainModel.DisplayName", typeof(global::Company.CyberPhisical_final.CyberPhisical_finalDomainModel), "Company.CyberPhisical_final.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("Company.CyberPhisical_final.CyberPhisical_finalDomainModel.Description", typeof(global::Company.CyberPhisical_final.CyberPhisical_finalDomainModel), "Company.CyberPhisical_final.GeneratedCode.DomainModelResx")]
	[global::System.CLSCompliant(true)]
	[DslModeling::DependsOnDomainModel(typeof(global::Microsoft.VisualStudio.Modeling.CoreDomainModel))]
	[DslModeling::DependsOnDomainModel(typeof(global::Microsoft.VisualStudio.Modeling.Diagrams.CoreDesignSurfaceDomainModel))]
	[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1506:AvoidExcessiveClassCoupling", Justification = "Generated code.")]
	[DslModeling::DomainObjectId("234a2f4b-4992-4d29-8ff0-e19ed6329371")]
	public partial class CyberPhisical_finalDomainModel : DslModeling::DomainModel
	{
		#region Constructor, domain model Id
	
		/// <summary>
		/// CyberPhisical_finalDomainModel domain model Id.
		/// </summary>
		public static readonly global::System.Guid DomainModelId = new global::System.Guid(0x234a2f4b, 0x4992, 0x4d29, 0x8f, 0xf0, 0xe1, 0x9e, 0xd6, 0x32, 0x93, 0x71);
	
		/// <summary>
		/// Constructor.
		/// </summary>
		/// <param name="store">Store containing the domain model.</param>
		public CyberPhisical_finalDomainModel(DslModeling::Store store)
			: base(store, DomainModelId)
		{
			// Call the partial method to allow any required serialization setup to be done.
			this.InitializeSerialization(store);		
		}
		
	
		///<Summary>
		/// Defines a partial method that will be called from the constructor to
		/// allow any necessary serialization setup to be done.
		///</Summary>
		///<remarks>
		/// For a DSL created with the DSL Designer wizard, an implementation of this 
		/// method will be generated in the GeneratedCode\SerializationHelper.cs class.
		///</remarks>
		partial void InitializeSerialization(DslModeling::Store store);
	
	
		#endregion
		#region Domain model reflection
			
		/// <summary>
		/// Gets the list of generated domain model types (classes, rules, relationships).
		/// </summary>
		/// <returns>List of types.</returns>
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1506:AvoidExcessiveClassCoupling", Justification = "Generated code.")]	
		protected sealed override global::System.Type[] GetGeneratedDomainModelTypes()
		{
			return new global::System.Type[]
			{
				typeof(IoT),
				typeof(Device),
				typeof(Sensor),
				typeof(Temperature),
				typeof(Humidity),
				typeof(CO2Level),
				typeof(SmokeSensor),
				typeof(AirConditioning),
				typeof(Siren),
				typeof(Actuators),
				typeof(Controller),
				typeof(Alarms),
				typeof(Things),
				typeof(IoTHasElements),
				typeof(DeviceHasSensors),
				typeof(DeviceHasActuator),
				typeof(IoTHasControllers),
				typeof(IoTHasAlarm),
				typeof(ControllerReferencesThing),
				typeof(CyberPhisical_finalDiagram),
				typeof(ExampleConnector),
				typeof(ExampleShape),
				typeof(GeometryShape1),
				typeof(GeometryShape2),
				typeof(AlarmsGS),
				typeof(TemperatureImage),
				typeof(HumidityImage),
				typeof(SirenImage),
				typeof(AirConditioningImage),
				typeof(ControllerIS),
				typeof(Co2IS),
				typeof(ImageShape1),
				typeof(global::Company.CyberPhisical_final.FixUpDiagram),
				typeof(global::Company.CyberPhisical_final.ConnectorRolePlayerChanged),
			};
		}
		/// <summary>
		/// Gets the list of generated domain properties.
		/// </summary>
		/// <returns>List of property data.</returns>
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1506:AvoidExcessiveClassCoupling", Justification = "Generated code.")]	
		protected sealed override DomainMemberInfo[] GetGeneratedDomainProperties()
		{
			return new DomainMemberInfo[]
			{
				new DomainMemberInfo(typeof(Device), "Name", Device.NameDomainPropertyId, typeof(Device.NamePropertyHandler)),
				new DomainMemberInfo(typeof(Sensor), "type_measure", Sensor.type_measureDomainPropertyId, typeof(Sensor.type_measurePropertyHandler)),
				new DomainMemberInfo(typeof(Alarms), "name", Alarms.nameDomainPropertyId, typeof(Alarms.namePropertyHandler)),
				new DomainMemberInfo(typeof(Alarms), "condition", Alarms.conditionDomainPropertyId, typeof(Alarms.conditionPropertyHandler)),
				new DomainMemberInfo(typeof(Alarms), "advertence", Alarms.advertenceDomainPropertyId, typeof(Alarms.advertencePropertyHandler)),
			};
		}
		/// <summary>
		/// Gets the list of generated domain roles.
		/// </summary>
		/// <returns>List of role data.</returns>
		protected sealed override DomainRolePlayerInfo[] GetGeneratedDomainRoles()
		{
			return new DomainRolePlayerInfo[]
			{
				new DomainRolePlayerInfo(typeof(IoTHasElements), "IoT", IoTHasElements.IoTDomainRoleId),
				new DomainRolePlayerInfo(typeof(IoTHasElements), "Element", IoTHasElements.ElementDomainRoleId),
				new DomainRolePlayerInfo(typeof(DeviceHasSensors), "Device", DeviceHasSensors.DeviceDomainRoleId),
				new DomainRolePlayerInfo(typeof(DeviceHasSensors), "Sensor", DeviceHasSensors.SensorDomainRoleId),
				new DomainRolePlayerInfo(typeof(DeviceHasActuator), "Device", DeviceHasActuator.DeviceDomainRoleId),
				new DomainRolePlayerInfo(typeof(DeviceHasActuator), "Actuators", DeviceHasActuator.ActuatorsDomainRoleId),
				new DomainRolePlayerInfo(typeof(IoTHasControllers), "IoT", IoTHasControllers.IoTDomainRoleId),
				new DomainRolePlayerInfo(typeof(IoTHasControllers), "Controller", IoTHasControllers.ControllerDomainRoleId),
				new DomainRolePlayerInfo(typeof(IoTHasAlarm), "IoT", IoTHasAlarm.IoTDomainRoleId),
				new DomainRolePlayerInfo(typeof(IoTHasAlarm), "Alarms", IoTHasAlarm.AlarmsDomainRoleId),
				new DomainRolePlayerInfo(typeof(ControllerReferencesThing), "Controller", ControllerReferencesThing.ControllerDomainRoleId),
				new DomainRolePlayerInfo(typeof(ControllerReferencesThing), "Things", ControllerReferencesThing.ThingsDomainRoleId),
			};
		}
		#endregion
		#region Factory methods
		private static global::System.Collections.Generic.Dictionary<global::System.Type, int> createElementMap;
	
		/// <summary>
		/// Creates an element of specified type.
		/// </summary>
		/// <param name="partition">Partition where element is to be created.</param>
		/// <param name="elementType">Element type which belongs to this domain model.</param>
		/// <param name="propertyAssignments">New element property assignments.</param>
		/// <returns>Created element.</returns>
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1506:AvoidExcessiveClassCoupling", Justification = "Generated code.")]	
		public sealed override DslModeling::ModelElement CreateElement(DslModeling::Partition partition, global::System.Type elementType, DslModeling::PropertyAssignment[] propertyAssignments)
		{
			if (elementType == null) throw new global::System.ArgumentNullException("elementType");
	
			if (createElementMap == null)
			{
				createElementMap = new global::System.Collections.Generic.Dictionary<global::System.Type, int>(26);
				createElementMap.Add(typeof(IoT), 0);
				createElementMap.Add(typeof(Device), 1);
				createElementMap.Add(typeof(Temperature), 2);
				createElementMap.Add(typeof(Humidity), 3);
				createElementMap.Add(typeof(CO2Level), 4);
				createElementMap.Add(typeof(SmokeSensor), 5);
				createElementMap.Add(typeof(AirConditioning), 6);
				createElementMap.Add(typeof(Siren), 7);
				createElementMap.Add(typeof(Controller), 8);
				createElementMap.Add(typeof(Alarms), 9);
				createElementMap.Add(typeof(CyberPhisical_finalDiagram), 10);
				createElementMap.Add(typeof(ExampleConnector), 11);
				createElementMap.Add(typeof(ExampleShape), 12);
				createElementMap.Add(typeof(GeometryShape1), 13);
				createElementMap.Add(typeof(GeometryShape2), 14);
				createElementMap.Add(typeof(AlarmsGS), 15);
				createElementMap.Add(typeof(TemperatureImage), 16);
				createElementMap.Add(typeof(HumidityImage), 17);
				createElementMap.Add(typeof(SirenImage), 18);
				createElementMap.Add(typeof(AirConditioningImage), 19);
				createElementMap.Add(typeof(ControllerIS), 20);
				createElementMap.Add(typeof(Co2IS), 21);
				createElementMap.Add(typeof(ImageShape1), 22);
			}
			int index;
			if (!createElementMap.TryGetValue(elementType, out index))
			{
				// construct exception error message		
				string exceptionError = string.Format(
								global::System.Globalization.CultureInfo.CurrentCulture,
								global::Company.CyberPhisical_final.CyberPhisical_finalDomainModel.SingletonResourceManager.GetString("UnrecognizedElementType"),
								elementType.Name);
				throw new global::System.ArgumentException(exceptionError, "elementType");
			}
			switch (index)
			{
				case 0: return new IoT(partition, propertyAssignments);
				case 1: return new Device(partition, propertyAssignments);
				case 2: return new Temperature(partition, propertyAssignments);
				case 3: return new Humidity(partition, propertyAssignments);
				case 4: return new CO2Level(partition, propertyAssignments);
				case 5: return new SmokeSensor(partition, propertyAssignments);
				case 6: return new AirConditioning(partition, propertyAssignments);
				case 7: return new Siren(partition, propertyAssignments);
				case 8: return new Controller(partition, propertyAssignments);
				case 9: return new Alarms(partition, propertyAssignments);
				case 10: return new CyberPhisical_finalDiagram(partition, propertyAssignments);
				case 11: return new ExampleConnector(partition, propertyAssignments);
				case 12: return new ExampleShape(partition, propertyAssignments);
				case 13: return new GeometryShape1(partition, propertyAssignments);
				case 14: return new GeometryShape2(partition, propertyAssignments);
				case 15: return new AlarmsGS(partition, propertyAssignments);
				case 16: return new TemperatureImage(partition, propertyAssignments);
				case 17: return new HumidityImage(partition, propertyAssignments);
				case 18: return new SirenImage(partition, propertyAssignments);
				case 19: return new AirConditioningImage(partition, propertyAssignments);
				case 20: return new ControllerIS(partition, propertyAssignments);
				case 21: return new Co2IS(partition, propertyAssignments);
				case 22: return new ImageShape1(partition, propertyAssignments);
				default: return null;
			}
		}
	
		private static global::System.Collections.Generic.Dictionary<global::System.Type, int> createElementLinkMap;
	
		/// <summary>
		/// Creates an element link of specified type.
		/// </summary>
		/// <param name="partition">Partition where element is to be created.</param>
		/// <param name="elementLinkType">Element link type which belongs to this domain model.</param>
		/// <param name="roleAssignments">List of relationship role assignments for the new link.</param>
		/// <param name="propertyAssignments">New element property assignments.</param>
		/// <returns>Created element link.</returns>
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
		public sealed override DslModeling::ElementLink CreateElementLink(DslModeling::Partition partition, global::System.Type elementLinkType, DslModeling::RoleAssignment[] roleAssignments, DslModeling::PropertyAssignment[] propertyAssignments)
		{
			if (elementLinkType == null) throw new global::System.ArgumentNullException("elementLinkType");
			if (roleAssignments == null) throw new global::System.ArgumentNullException("roleAssignments");
	
			if (createElementLinkMap == null)
			{
				createElementLinkMap = new global::System.Collections.Generic.Dictionary<global::System.Type, int>(6);
				createElementLinkMap.Add(typeof(IoTHasElements), 0);
				createElementLinkMap.Add(typeof(DeviceHasSensors), 1);
				createElementLinkMap.Add(typeof(DeviceHasActuator), 2);
				createElementLinkMap.Add(typeof(IoTHasControllers), 3);
				createElementLinkMap.Add(typeof(IoTHasAlarm), 4);
				createElementLinkMap.Add(typeof(ControllerReferencesThing), 5);
			}
			int index;
			if (!createElementLinkMap.TryGetValue(elementLinkType, out index))
			{
				// construct exception error message
				string exceptionError = string.Format(
								global::System.Globalization.CultureInfo.CurrentCulture,
								global::Company.CyberPhisical_final.CyberPhisical_finalDomainModel.SingletonResourceManager.GetString("UnrecognizedElementLinkType"),
								elementLinkType.Name);
				throw new global::System.ArgumentException(exceptionError, "elementLinkType");
			
			}
			switch (index)
			{
				case 0: return new IoTHasElements(partition, roleAssignments, propertyAssignments);
				case 1: return new DeviceHasSensors(partition, roleAssignments, propertyAssignments);
				case 2: return new DeviceHasActuator(partition, roleAssignments, propertyAssignments);
				case 3: return new IoTHasControllers(partition, roleAssignments, propertyAssignments);
				case 4: return new IoTHasAlarm(partition, roleAssignments, propertyAssignments);
				case 5: return new ControllerReferencesThing(partition, roleAssignments, propertyAssignments);
				default: return null;
			}
		}
		#endregion
		#region Resource manager
		
		private static global::System.Resources.ResourceManager resourceManager;
		
		/// <summary>
		/// The base name of this model's resources.
		/// </summary>
		public const string ResourceBaseName = "Company.CyberPhisical_final.GeneratedCode.DomainModelResx";
		
		/// <summary>
		/// Gets the DomainModel's ResourceManager. If the ResourceManager does not already exist, then it is created.
		/// </summary>
		public override global::System.Resources.ResourceManager ResourceManager
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return CyberPhisical_finalDomainModel.SingletonResourceManager;
			}
		}
	
		/// <summary>
		/// Gets the Singleton ResourceManager for this domain model.
		/// </summary>
		public static global::System.Resources.ResourceManager SingletonResourceManager
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				if (CyberPhisical_finalDomainModel.resourceManager == null)
				{
					CyberPhisical_finalDomainModel.resourceManager = new global::System.Resources.ResourceManager(ResourceBaseName, typeof(CyberPhisical_finalDomainModel).Assembly);
				}
				return CyberPhisical_finalDomainModel.resourceManager;
			}
		}
		#endregion
		#region Copy/Remove closures
		/// <summary>
		/// CopyClosure cache
		/// </summary>
		private static DslModeling::IElementVisitorFilter copyClosure;
		/// <summary>
		/// DeleteClosure cache
		/// </summary>
		private static DslModeling::IElementVisitorFilter removeClosure;
		/// <summary>
		/// Returns an IElementVisitorFilter that corresponds to the ClosureType.
		/// </summary>
		/// <param name="type">closure type</param>
		/// <param name="rootElements">collection of root elements</param>
		/// <returns>IElementVisitorFilter or null</returns>
		public override DslModeling::IElementVisitorFilter GetClosureFilter(DslModeling::ClosureType type, global::System.Collections.Generic.ICollection<DslModeling::ModelElement> rootElements)
		{
			switch (type)
			{
				case DslModeling::ClosureType.CopyClosure:
					return CyberPhisical_finalDomainModel.CopyClosure;
				case DslModeling::ClosureType.DeleteClosure:
					return CyberPhisical_finalDomainModel.DeleteClosure;
			}
			return base.GetClosureFilter(type, rootElements);
		}
		/// <summary>
		/// CopyClosure cache
		/// </summary>
		private static DslModeling::IElementVisitorFilter CopyClosure
		{
			get
			{
				// Incorporate all of the closures from the models we extend
				if (CyberPhisical_finalDomainModel.copyClosure == null)
				{
					DslModeling::ChainingElementVisitorFilter copyFilter = new DslModeling::ChainingElementVisitorFilter();
					copyFilter.AddFilter(new CyberPhisical_finalCopyClosure());
					copyFilter.AddFilter(new DslModeling::CoreCopyClosure());
					copyFilter.AddFilter(new DslDiagrams::CoreDesignSurfaceCopyClosure());
					
					CyberPhisical_finalDomainModel.copyClosure = copyFilter;
				}
				return CyberPhisical_finalDomainModel.copyClosure;
			}
		}
		/// <summary>
		/// DeleteClosure cache
		/// </summary>
		private static DslModeling::IElementVisitorFilter DeleteClosure
		{
			get
			{
				// Incorporate all of the closures from the models we extend
				if (CyberPhisical_finalDomainModel.removeClosure == null)
				{
					DslModeling::ChainingElementVisitorFilter removeFilter = new DslModeling::ChainingElementVisitorFilter();
					removeFilter.AddFilter(new CyberPhisical_finalDeleteClosure());
					removeFilter.AddFilter(new DslModeling::CoreDeleteClosure());
					removeFilter.AddFilter(new DslDiagrams::CoreDesignSurfaceDeleteClosure());
		
					CyberPhisical_finalDomainModel.removeClosure = removeFilter;
				}
				return CyberPhisical_finalDomainModel.removeClosure;
			}
		}
		#endregion
		#region Diagram rule helpers
		/// <summary>
		/// Enables rules in this domain model related to diagram fixup for the given store.
		/// If diagram data will be loaded into the store, this method should be called first to ensure
		/// that the diagram behaves properly.
		/// </summary>
		public static void EnableDiagramRules(DslModeling::Store store)
		{
			if(store == null) throw new global::System.ArgumentNullException("store");
			
			DslModeling::RuleManager ruleManager = store.RuleManager;
			ruleManager.EnableRule(typeof(global::Company.CyberPhisical_final.FixUpDiagram));
			ruleManager.EnableRule(typeof(global::Company.CyberPhisical_final.ConnectorRolePlayerChanged));
		}
		
		/// <summary>
		/// Disables rules in this domain model related to diagram fixup for the given store.
		/// </summary>
		public static void DisableDiagramRules(DslModeling::Store store)
		{
			if(store == null) throw new global::System.ArgumentNullException("store");
			
			DslModeling::RuleManager ruleManager = store.RuleManager;
			ruleManager.DisableRule(typeof(global::Company.CyberPhisical_final.FixUpDiagram));
			ruleManager.DisableRule(typeof(global::Company.CyberPhisical_final.ConnectorRolePlayerChanged));
		}
		#endregion
	}
		
	#region Copy/Remove closure classes
	/// <summary>
	/// Remove closure visitor filter
	/// </summary>
	[global::System.CLSCompliant(true)]
	public partial class CyberPhisical_finalDeleteClosure : CyberPhisical_finalDeleteClosureBase, DslModeling::IElementVisitorFilter
	{
		/// <summary>
		/// Constructor
		/// </summary>
		public CyberPhisical_finalDeleteClosure() : base()
		{
		}
	}
	
	/// <summary>
	/// Base class for remove closure visitor filter
	/// </summary>
	[global::System.CLSCompliant(true)]
	public partial class CyberPhisical_finalDeleteClosureBase : DslModeling::IElementVisitorFilter
	{
		/// <summary>
		/// DomainRoles
		/// </summary>
		private global::System.Collections.Specialized.HybridDictionary domainRoles;
		/// <summary>
		/// Constructor
		/// </summary>
		public CyberPhisical_finalDeleteClosureBase()
		{
			#region Initialize DomainData Table
			DomainRoles.Add(global::Company.CyberPhisical_final.IoTHasElements.ElementDomainRoleId, true);
			DomainRoles.Add(global::Company.CyberPhisical_final.DeviceHasSensors.SensorDomainRoleId, true);
			DomainRoles.Add(global::Company.CyberPhisical_final.DeviceHasActuator.ActuatorsDomainRoleId, true);
			DomainRoles.Add(global::Company.CyberPhisical_final.IoTHasControllers.ControllerDomainRoleId, true);
			DomainRoles.Add(global::Company.CyberPhisical_final.IoTHasAlarm.AlarmsDomainRoleId, true);
			#endregion
		}
		/// <summary>
		/// Called to ask the filter if a particular relationship from a source element should be included in the traversal
		/// </summary>
		/// <param name="walker">ElementWalker that is traversing the model</param>
		/// <param name="sourceElement">Model Element playing the source role</param>
		/// <param name="sourceRoleInfo">DomainRoleInfo of the role that the source element is playing in the relationship</param>
		/// <param name="domainRelationshipInfo">DomainRelationshipInfo for the ElementLink in question</param>
		/// <param name="targetRelationship">Relationship in question</param>
		/// <returns>Yes if the relationship should be traversed</returns>
		public virtual DslModeling::VisitorFilterResult ShouldVisitRelationship(DslModeling::ElementWalker walker, DslModeling::ModelElement sourceElement, DslModeling::DomainRoleInfo sourceRoleInfo, DslModeling::DomainRelationshipInfo domainRelationshipInfo, DslModeling::ElementLink targetRelationship)
		{
			return DslModeling::VisitorFilterResult.Yes;
		}
		/// <summary>
		/// Called to ask the filter if a particular role player should be Visited during traversal
		/// </summary>
		/// <param name="walker">ElementWalker that is traversing the model</param>
		/// <param name="sourceElement">Model Element playing the source role</param>
		/// <param name="elementLink">Element Link that forms the relationship to the role player in question</param>
		/// <param name="targetDomainRole">DomainRoleInfo of the target role</param>
		/// <param name="targetRolePlayer">Model Element that plays the target role in the relationship</param>
		/// <returns></returns>
		public virtual DslModeling::VisitorFilterResult ShouldVisitRolePlayer(DslModeling::ElementWalker walker, DslModeling::ModelElement sourceElement, DslModeling::ElementLink elementLink, DslModeling::DomainRoleInfo targetDomainRole, DslModeling::ModelElement targetRolePlayer)
		{
			if (targetDomainRole == null) throw new global::System.ArgumentNullException("targetDomainRole");
			return this.DomainRoles.Contains(targetDomainRole.Id) ? DslModeling::VisitorFilterResult.Yes : DslModeling::VisitorFilterResult.DoNotCare;
		}
		/// <summary>
		/// DomainRoles
		/// </summary>
		private global::System.Collections.Specialized.HybridDictionary DomainRoles
		{
			get
			{
				if (this.domainRoles == null)
				{
					this.domainRoles = new global::System.Collections.Specialized.HybridDictionary();
				}
				return this.domainRoles;
			}
		}
	
	}
	/// <summary>
	/// Copy closure visitor filter
	/// </summary>
	[global::System.CLSCompliant(true)]
	public partial class CyberPhisical_finalCopyClosure : CyberPhisical_finalCopyClosureBase, DslModeling::IElementVisitorFilter
	{
		/// <summary>
		/// Constructor
		/// </summary>
		public CyberPhisical_finalCopyClosure() : base()
		{
		}
	}
	/// <summary>
	/// Base class for copy closure visitor filter
	/// </summary>
	[global::System.CLSCompliant(true)]
	public partial class CyberPhisical_finalCopyClosureBase : DslModeling::CopyClosureFilter, DslModeling::IElementVisitorFilter
	{
		/// <summary>
		/// Constructor
		/// </summary>
		public CyberPhisical_finalCopyClosureBase():base()
		{
		}
	}
	#endregion
		
}

