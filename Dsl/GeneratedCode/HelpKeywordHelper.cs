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
	/// Helper class used to map shapes and model elements to help keywords.
	/// </summary>
	/// <remarks>
	/// Double-derived class to allow easier code customization.
	/// </remarks>
	public partial class CyberPhisical_finalHelpKeywordHelper : CyberPhisical_finalHelpKeywordHelperBase 
	{
		
		/// <summary>
		/// Constructs a new CyberPhisical_finalHelpKeywordHelper.
		/// </summary>
		protected CyberPhisical_finalHelpKeywordHelper()
			: base() { }
			
		/// <summary>
		/// Single instance of the CyberPhisical_finalHelpKeywordHelper.
		/// </summary>
		public static CyberPhisical_finalHelpKeywordHelper Instance
		{
			get
			{
				return null; // This DSL does not define any help keywords.
			}
		}
	}
	
	/// <summary>
	/// Helper class used to map shapes and model elements to F1 help keywords.
	/// </summary>
	public abstract class CyberPhisical_finalHelpKeywordHelperBase
	{
		private global::System.Collections.Generic.Dictionary<string, string> helpKeywords;
		
		/// <summary>
		/// Constructs a new CyberPhisical_finalHelpKeywordHelperBase.
		/// </summary>
		protected CyberPhisical_finalHelpKeywordHelperBase()
			: base() { }
			
		/// <summary>
		/// Called to initialize the HelpKeywords dictionary.  Derived classes may override this to add custom keywords to the collection.
		/// </summary>
		protected virtual void Initialize()
		{
			this.helpKeywords = new global::System.Collections.Generic.Dictionary<string, string>(0);
		}
		
		/// <summary>
		/// Collection of key/value pairs describing help keywords for this DSL.
		/// Keys are strings such as domain class names that describe elements of the DSL.
		/// Values are corresponding help keywords.
		/// </summary>
		protected global::System.Collections.Generic.IDictionary<string, string> HelpKeywords
		{
			get
			{
				if (this.helpKeywords == null)
				{
					this.helpKeywords = new global::System.Collections.Generic.Dictionary<string, string>(10);
				}

				return this.helpKeywords;
			}
		}
		
		/// <summary>
		/// Gets the help keyword associated with the given shape or model element instance.
		/// </summary>
		/// <returns>Help keyword, or empty string if there is no associated help keyword.</returns>
		public virtual string GetHelpKeyword(DslModeling::ModelElement modelElement)
		{
			if(modelElement == null) throw new global::System.ArgumentNullException("modelElement");
			
			if(this.helpKeywords == null)
			{
				Initialize();
			}
			
			string helpKeyword;
			if(this.helpKeywords.TryGetValue(modelElement.GetType().FullName, out helpKeyword))
			{
				return helpKeyword;
			}
			
			return string.Empty;
		}
		
		/// <summary>
		/// Gets the help keyword associated with the given domain role.
		/// </summary>
		/// <returns>Help keyword, or empty string if there is no associated help keyword.</returns>
		public virtual string GetDomainRoleHelpKeyword(DslModeling::DomainRoleInfo domainRole)
		{
			if(domainRole == null) throw new global::System.ArgumentNullException("domainRole");
			
			if(this.helpKeywords == null)
			{
				Initialize();
			}
			
			string helpKeyword;
			if(this.helpKeywords.TryGetValue(domainRole.DomainRelationship.ImplementationClass.FullName + "/" + domainRole.Name, out helpKeyword))
			{
				return helpKeyword;
			}
			
			return string.Empty;
		}
		
		/// <summary>
		/// Gets the help keyword associated with the given domain property.
		/// </summary>
		/// <returns>Help keyword, or empty string if there is no associated help keyword.</returns>
		public virtual string GetDomainPropertyHelpKeyword(DslModeling::DomainPropertyInfo domainProperty)
		{
			if(domainProperty == null) throw new global::System.ArgumentNullException("domainProperty");
			
			if(this.helpKeywords == null)
			{
				Initialize();
			}
			
			string helpKeyword;
			if(this.helpKeywords.TryGetValue(domainProperty.DomainClass.ImplementationClass.FullName + "/" + domainProperty.Name, out helpKeyword))
			{
				return helpKeyword;
			}
			
			return string.Empty;
		}
	}
}
