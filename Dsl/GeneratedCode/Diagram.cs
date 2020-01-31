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

[module: global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1506:AvoidExcessiveClassCoupling", Scope = "type", Target = "Company.CyberPhisical_final.CyberPhisical_finalDiagram")]

namespace Company.CyberPhisical_final
{
	/// <summary>
	/// DomainClass CyberPhisical_finalDiagram
	/// Description for Company.CyberPhisical_final.CyberPhisical_finalDiagram
	/// </summary>
	[DslDesign::DisplayNameResource("Company.CyberPhisical_final.CyberPhisical_finalDiagram.DisplayName", typeof(global::Company.CyberPhisical_final.CyberPhisical_finalDomainModel), "Company.CyberPhisical_final.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("Company.CyberPhisical_final.CyberPhisical_finalDiagram.Description", typeof(global::Company.CyberPhisical_final.CyberPhisical_finalDomainModel), "Company.CyberPhisical_final.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::Company.CyberPhisical_final.CyberPhisical_finalDomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainObjectId("be7b0bc4-2a33-41ae-8797-1564c66cdfc0")]
	public partial class CyberPhisical_finalDiagram : DslDiagrams::Diagram
	{
		#region Diagram boilerplate
		private static DslDiagrams::StyleSet classStyleSet;
		private static global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields;
		/// <summary>
		/// Per-class style set for this shape.
		/// </summary>
		protected override DslDiagrams::StyleSet ClassStyleSet
		{
			get
			{
				if (classStyleSet == null)
				{
					classStyleSet = CreateClassStyleSet();
				}
				return classStyleSet;
			}
		}
		
		/// <summary>
		/// Per-class ShapeFields for this shape
		/// </summary>
		public override global::System.Collections.Generic.IList<DslDiagrams::ShapeField> ShapeFields
		{
			get
			{
				if (shapeFields == null)
				{
					shapeFields = CreateShapeFields();
				}
				return shapeFields;
			}
		}
		#endregion
		#region Toolbox filters
		private static global::System.ComponentModel.ToolboxItemFilterAttribute[] toolboxFilters = new global::System.ComponentModel.ToolboxItemFilterAttribute[] {
					new global::System.ComponentModel.ToolboxItemFilterAttribute(global::Company.CyberPhisical_final.CyberPhisical_finalToolboxHelperBase.ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require) };
		
		/// <summary>
		/// Toolbox item filter attributes for this diagram.
		/// </summary>
		public override global::System.Collections.ICollection TargetToolboxItemFilterAttributes
		{
			get
			{
				return toolboxFilters;
			}
		}
		#endregion
		#region Auto-placement
		/// <summary>
		/// Indicate that child shapes should added through view fixup should be placed automatically.
		/// </summary>
		public override bool ShouldAutoPlaceChildShapes
		{
			get
			{
				return true;
			}
		}
		#endregion
		#region Shape mapping
		/// <summary>
		/// Called during view fixup to ask the parent whether a shape should be created for the given child element.
		/// </summary>
		/// <remarks>
		/// Always return true, since we assume there is only one diagram per model file for DSL scenarios.
		/// </remarks>
		protected override bool ShouldAddShapeForElement(DslModeling::ModelElement element)
		{
			return true;
		}
		
		
		/// <summary>
		/// Most connectors are mapped to element links, but there can be exceptions. This method tell if a connector should be
		/// mapped to an element link.
		/// </summary>
		public override bool IsConnectorMappedToLink(DslDiagrams::BinaryLinkShape connector)
		{
			#region Check Parameters
			global::System.Diagnostics.Debug.Assert(connector != null);
			if (connector == null)
				throw new global::System.ArgumentNullException("connector");
			#endregion
			if (connector.GetType() == typeof(global::Company.CyberPhisical_final.ExampleConnector))
				return false;
			return base.IsConnectorMappedToLink(connector);
		}
		
		/// <summary>
		/// Creates a new shape for the given model element as part of view fixup
		/// </summary>
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily", Justification = "Generated code.")]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1506:AvoidExcessiveClassCoupling", Justification = "Generated code.")]
		protected override DslDiagrams::ShapeElement CreateChildShape(DslModeling::ModelElement element)
		{
			if(element is global::Company.CyberPhisical_final.Temperature)
			{
				global::Company.CyberPhisical_final.TemperatureImage newShape = new global::Company.CyberPhisical_final.TemperatureImage(this.Partition);
				if(newShape != null) newShape.Size = newShape.DefaultSize; // set default shape size
				return newShape;
			}
			if(element is global::Company.CyberPhisical_final.Humidity)
			{
				global::Company.CyberPhisical_final.HumidityImage newShape = new global::Company.CyberPhisical_final.HumidityImage(this.Partition);
				if(newShape != null) newShape.Size = newShape.DefaultSize; // set default shape size
				return newShape;
			}
			if(element is global::Company.CyberPhisical_final.Device)
			{
				global::Company.CyberPhisical_final.ExampleShape newShape = new global::Company.CyberPhisical_final.ExampleShape(this.Partition);
				if(newShape != null) newShape.Size = newShape.DefaultSize; // set default shape size
				return newShape;
			}
			return base.CreateChildShape(element);
		}
		#endregion
		#region Decorator mapping
		/// <summary>
		/// Initialize shape decorator mappings.  This is done here rather than in individual shapes because decorator maps
		/// are defined per diagram type rather than per shape type.
		/// </summary>
		protected override void InitializeShapeFields(global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields)
		{
			base.InitializeShapeFields(shapeFields);
			global::Company.CyberPhisical_final.ExampleShape.DecoratorsInitialized += ExampleShapeDecoratorMap.OnDecoratorsInitialized;
		}
		
		/// <summary>
		/// Class containing decorator path traversal methods for ExampleShape.
		/// </summary>
		internal static partial class ExampleShapeDecoratorMap
		{
			/// <summary>
			/// Event handler called when decorator initialization is complete for ExampleShape.  Adds decorator mappings for this shape or connector.
			/// </summary>
			public static void OnDecoratorsInitialized(object sender, global::System.EventArgs e)
			{
				DslDiagrams::ShapeElement shape = (DslDiagrams::ShapeElement)sender;
				DslDiagrams::AssociatedPropertyInfo propertyInfo;
				
				propertyInfo = new DslDiagrams::AssociatedPropertyInfo(global::Company.CyberPhisical_final.Device.NameDomainPropertyId);
				DslDiagrams::ShapeElement.FindDecorator(shape.Decorators, "NameDecorator").AssociateValueWith(shape.Store, propertyInfo);
			}
		}
		
		#endregion
		#region Constructors, domain class Id
	
		/// <summary>
		/// CyberPhisical_finalDiagram domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0xbe7b0bc4, 0x2a33, 0x41ae, 0x87, 0x97, 0x15, 0x64, 0xc6, 0x6c, 0xdf, 0xc0);
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public CyberPhisical_finalDiagram(DslModeling::Store store, params DslModeling::PropertyAssignment[] propertyAssignments)
			: this(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, propertyAssignments)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public CyberPhisical_finalDiagram(DslModeling::Partition partition, params DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, propertyAssignments)
		{
		}
		#endregion
	}
}
namespace Company.CyberPhisical_final
{
	
		/// <summary>
		/// Double derived implementation for the rule that initiates view fixup when an element that has an associated shape is added to the model.
		/// This now enables the DSL author to everride the SkipFixUp() method 
		/// </summary>
		internal partial class FixUpDiagramBase : DslModeling::AddRule
		{
			protected virtual bool SkipFixup(DslModeling::ModelElement childElement)
			{
				return childElement.IsDeleted;
			}
		}
	
		/// <summary>
		/// Rule that initiates view fixup when an element that has an associated shape is added to the model. 
		/// </summary>
		[DslModeling::RuleOn(typeof(global::Company.CyberPhisical_final.Temperature), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddShapeParentExistRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::Company.CyberPhisical_final.Humidity), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddShapeParentExistRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::Company.CyberPhisical_final.Device), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddShapeParentExistRulePriority, InitiallyDisabled=true)]
		internal sealed partial class FixUpDiagram : FixUpDiagramBase
		{
			[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
			public override void ElementAdded(DslModeling::ElementAddedEventArgs e)
			{
				if(e == null) throw new global::System.ArgumentNullException("e");
			
				DslModeling::ModelElement childElement = e.ModelElement;
				if (this.SkipFixup(childElement))
					return;
				DslModeling::ModelElement parentElement;
				if(childElement is global::Company.CyberPhisical_final.Temperature)
				{
					parentElement = GetParentForTemperature((global::Company.CyberPhisical_final.Temperature)childElement);
				} else
				if(childElement is global::Company.CyberPhisical_final.Humidity)
				{
					parentElement = GetParentForHumidity((global::Company.CyberPhisical_final.Humidity)childElement);
				} else
				if(childElement is global::Company.CyberPhisical_final.Device)
				{
					parentElement = GetParentForDevice((global::Company.CyberPhisical_final.Device)childElement);
				} else
				{
					parentElement = null;
				}
				
				if(parentElement != null)
				{
					DslDiagrams::Diagram.FixUpDiagram(parentElement, childElement);
				}
			}
			public static global::Company.CyberPhisical_final.IoT GetParentForDevice( global::Company.CyberPhisical_final.Device root )
			{
				// Segments 0 and 1
				global::Company.CyberPhisical_final.IoT result = root.IoT;
				if ( result == null ) return null;
				return result;
			}
			public static global::Company.CyberPhisical_final.IoT GetParentForTemperature( global::Company.CyberPhisical_final.Sensor root )
			{
				// Segments 0 and 1
				global::Company.CyberPhisical_final.Device root2 = root.Device;
				if ( root2 == null ) return null;
				// Segments 2 and 3
				global::Company.CyberPhisical_final.IoT result = root2.IoT;
				if ( result == null ) return null;
				return result;
			}
			public static global::Company.CyberPhisical_final.IoT GetParentForHumidity( global::Company.CyberPhisical_final.Sensor root )
			{
				// Segments 0 and 1
				global::Company.CyberPhisical_final.Device root2 = root.Device;
				if ( root2 == null ) return null;
				// Segments 2 and 3
				global::Company.CyberPhisical_final.IoT result = root2.IoT;
				if ( result == null ) return null;
				return result;
			}
		}
		
	
	}
