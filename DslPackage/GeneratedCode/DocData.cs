﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using DslShell = global::Microsoft.VisualStudio.Modeling.Shell;
using DslModeling = global::Microsoft.VisualStudio.Modeling;
using DslValidation = global::Microsoft.VisualStudio.Modeling.Validation;
using DslDiagrams = global::Microsoft.VisualStudio.Modeling.Diagrams;
using VSShellInterop = global::Microsoft.VisualStudio.Shell.Interop;
using global::System.Linq;

namespace Company.CyberPhisical_final
{
	/// <summary>
	/// Double-derived class to allow easier code customization.
	/// </summary>
	internal partial class CyberPhisical_finalDocData : CyberPhisical_finalDocDataBase
	{
		/// <summary>
		/// Constructs a new CyberPhisical_finalDocData.
		/// </summary>
		public CyberPhisical_finalDocData(global::System.IServiceProvider serviceProvider, global::System.Guid editorFactoryId) 
			: base(serviceProvider, editorFactoryId)
		{
		}
	}

	/// <summary>
	/// Class which represents a CyberPhisical_final document in memory.
	/// </summary>
	internal abstract partial class CyberPhisical_finalDocDataBase : DslShell::ModelingDocData
	{
		/// <summary>
		/// Document lock holder registered for the subordinate .diagram file.
		/// </summary>
		protected DslShell::SubordinateDocumentLockHolder diagramDocumentLockHolder;

		/// <summary>
		/// Constructs a new CyberPhisical_finalDocDataBase.
		/// </summary>
		protected CyberPhisical_finalDocDataBase(global::System.IServiceProvider serviceProvider, global::System.Guid editorFactoryId) : base(serviceProvider, editorFactoryId)
		{
		}

		/// <summary>
		/// Returns a list of file format specifiers for the Save dialog box.
		/// </summary>
		protected override string FormatList
		{
			get
			{
				return global::Company.CyberPhisical_final.CyberPhisical_finalDomainModel.SingletonResourceManager.GetString("FormatList"); 
			}
		}

		#region Composition container

		/// <summary>
		/// Create and return a new store
		/// </summary>
		/// <remarks>
		/// Override the default behaviour to put the doc data's composition container into the store's property bag.
		/// By default, the runtime will add the CompositionService from the DslShell ModelingCompositionContainer
		/// if the property has not already been set.
		/// </remarks>
		protected override DslModeling::Store CreateStore()
		{
			DslModeling::Store store = base.CreateStore();

			global::System.ComponentModel.Composition.ICompositionService compositionService = this.CompositionService;
			// Add the composition container to the property bag even if it is null. This will prevent the runtime from
			// adding the shared ModelingCompositionContainer.CompositionService.
			store.PropertyBag.Add(DslModeling::ExtensionEnablement.ExtensionEnablementConstants.ContainerId, compositionService);

			return store;
		}

		/// <summary>
		/// Initialize the doc data
		/// </summary>
		public override void Initialize(DslModeling::Store sharedStore)
		{
			this.InitializeComposition();
			base.Initialize(sharedStore);
		}
				
		/// <summary>
		/// The MEF composition container used by the doc data.
		/// </summary>
		/// <remarks>Can be null. Returns the shared modeling composition service by default.</remarks>
		protected virtual global::System.ComponentModel.Composition.ICompositionService CompositionService
		{
			get
			{
				return DslShell::ModelingCompositionContainer.CompositionService;
			}
		}

		/// <summary>
		/// The MEF Export Provider used by the doc data.
		/// </summary>
		/// <remarks>Can be null. Returns the shared modeling export provider by default</remarks>
		protected virtual global::System.ComponentModel.Composition.Hosting.ExportProvider ExportProvider
		{
			get
			{
				return DslShell::ModelingCompositionContainer.ExportProvider;
			}		
		}

		/// <summary>
		/// Satisfy Imports in DocData object
		/// </summary>		
		protected virtual void InitializeComposition()
		{
			global::System.ComponentModel.Composition.ICompositionService compositionService = this.CompositionService;
			if (compositionService != null)
			{		
				try
				{
					compositionService.SatisfyImportsOnce(global::System.ComponentModel.Composition.AttributedModelServices.CreatePart(this));
				}
				catch (global::System.Exception ex)
				{
					// Handle binding failures
					if (!HandleBindingFailure(ex))
					{
						throw;
					}
				}
			}
		}

		/// <summary>
		/// Handles exceptions that occurred during binding.
		/// </summary>
		/// <param name="exception">The exception that occured</param>
		/// <returns>A flag indicating whether the exception was handled or not.</returns>
		/// <remarks>If the exception is not handled (i.e. the method returns false), it will be re-thrown
		/// by the calling method.
		/// This method will be called for all types of exception.</remarks>
		protected virtual bool HandleBindingFailure(global::System.Exception exception)
		{
			// Log and suppress all binding failure exceptions.
			string errorMessage = string.Format(global::System.Globalization.CultureInfo.CurrentCulture,
				global::Company.CyberPhisical_final.CyberPhisical_finalDomainModel.SingletonResourceManager.GetString("BindingErrorOccurred"),
				exception.ToString());
			
			this.AddErrorListItem(new DslShell::SimpleErrorListItem(errorMessage, this.FileName, global::Microsoft.VisualStudio.Shell.TaskPriority.Normal, global::Microsoft.VisualStudio.Shell.TaskErrorCategory.Warning));
			return true;
		}

		#endregion // CompositionContainer

		#region SerializerLocator

		/// <summary>
		/// Resolves the xml namespaces to domain model types
		/// </summary>
		private DslModeling::ISerializerLocator serializerLocator;

		/// <summary>
		/// The domain model resolver used during serialization.
		/// </summary>
		protected DslModeling::ISerializerLocator SerializerLocator
		{
			get
			{
				if (this.serializerLocator == null)
				{
					this.serializerLocator = CreateSerializerLocator();
				}
				return this.serializerLocator;
			}
		}

		/// <summary>
		/// Factory method to create a SerializerLocator.
		/// </summary>
		protected virtual DslModeling::ISerializerLocator CreateSerializerLocator()
		{
			// If we don't have a MEF ExportProvider, we won't be able to resolve
			// any namespaces.
			if (this.ExportProvider == null)
			{
				return null;
			}

			return new DslModeling::StandardSerializerLocator(this.ExportProvider);
		}

		#endregion // SerializerLocator
		
		#region ExtensionLocator

		/// <summary>
		/// Used to locate domain model extensions
		/// </summary>
		private DslModeling::IExtensionLocator extensionLocator;

		/// <summary>
		/// The locator used to find domain model extensions.
		/// </summary>
		protected DslModeling::IExtensionLocator ExtensionLocator
		{
			get
			{
				if (this.extensionLocator == null)
				{
					this.extensionLocator = CreateExtensionLocator();
				}
				return this.extensionLocator;
			}
		}

		/// <summary>
		/// Factory method to create an ExtensionLocator.
		/// </summary>
		protected virtual DslModeling::IExtensionLocator CreateExtensionLocator()
		{
			// If we don't have an MEF ExportProvider, we won't be able to locate
			// any extensions
			if (this.ExportProvider == null)
			{
				return null;
			}

			return new DslModeling::StandardExtensionLocator(this.ExportProvider);
		}

		#endregion // ExtensionLocator


		/// <summary>
		/// When the doc data is closed, make sure we reset the valiation messages 
		/// (if there's any) from the ErrorList window.
		/// </summary>
		/// <param name="disposing"></param>
		protected override void Dispose(bool disposing)
		{
			try
			{
				if (this.diagramDocumentLockHolder != null)
				{
					this.diagramDocumentLockHolder.Dispose();
					this.diagramDocumentLockHolder = null;
				}
				this.diagramPartitionId = global::System.Guid.Empty;
			}
			finally
			{
				base.Dispose(disposing);
			}
		}

		/// <summary>
		/// Returns a collection of domain models to load into the store.
		/// </summary>
		/// <remarks>The default implementation includes any extension domain models returned by the call to GetExtensionDomainModels().</remarks>
		protected override global::System.Collections.Generic.IList<global::System.Type> GetDomainModels()
		{
			global::System.Collections.Generic.List<global::System.Type> allTypes = new System.Collections.Generic.List<System.Type>();

			// In the type of our base domain model
			allTypes.Add(typeof(global::Company.CyberPhisical_final.CyberPhisical_finalDomainModel));

			// Add in any extension domain models
			global::System.Collections.Generic.IEnumerable<global::System.Type> extensionTypes = this.GetExtensionDomainModels();
			if (extensionTypes != null && extensionTypes.Count() > 0)
			{
				allTypes.AddRange(extensionTypes);
			}

			return allTypes;
		}

		/// <summary>
		/// Returns the list of extension domain models to be loaded
		/// </summary>
		/// <returns>A list of domain model types. Can be empty.</returns>
		/// <remarks>This method is called by "GetDomainModels", which aggregates the returned lists.</remarks>
		protected virtual global::System.Collections.Generic.IEnumerable<global::System.Type> GetExtensionDomainModels()
		{
			if (this.ExtensionLocator == null)
			{
				return null;
			}

			global::System.Collections.Generic.IEnumerable<global::System.Type> extensionDomainModels = this.ExtensionLocator.GetExtendingDomainModels(typeof(global::Company.CyberPhisical_final.CyberPhisical_finalDomainModel));

			return extensionDomainModels;
		}




		/// <summary>
		/// Loads the given file.
		/// </summary>
		protected override void Load(string fileName, bool isReload)
		{
			DslModeling::SerializationResult serializationResult = new DslModeling::SerializationResult();
			global::Company.CyberPhisical_final.IoT modelRoot = null;
			DslModeling::ISchemaResolver schemaResolver = new DslShell::ModelingSchemaResolver(this.ServiceProvider);
			//clear the current root element
			this.SetRootElement(null);
			// Enable diagram fixup rules in our store, because we will load diagram data.
			global::Company.CyberPhisical_final.CyberPhisical_finalDomainModel.EnableDiagramRules(this.Store);
			string diagramFileName = fileName + this.DiagramExtension;
			
			modelRoot = global::Company.CyberPhisical_final.CyberPhisical_finalSerializationHelper.Instance.LoadModelAndDiagram(serializationResult, this.GetModelPartition(), fileName, this.GetDiagramPartition(), diagramFileName, schemaResolver, null /* no load-time validation */, this.SerializerLocator);

			// Report serialization messages.
			this.SuspendErrorListRefresh();
			try
			{
				foreach (DslModeling::SerializationMessage serializationMessage in serializationResult)
				{
					this.AddErrorListItem(new DslShell::SerializationErrorListItem(this.ServiceProvider, serializationMessage));
				}
			}
			finally
			{
				this.ResumeErrorListRefresh();
			}

			if (serializationResult.Failed)
			{	
				// Load failed, can't open the file.
				throw new global::System.InvalidOperationException(global::Company.CyberPhisical_final.CyberPhisical_finalDomainModel.SingletonResourceManager.GetString("CannotOpenDocument"));
			}
			else
			{
				this.SetRootElement(modelRoot);
				
				// Attempt to set the encoding
				if (serializationResult.Encoding != null)
				{
					this.ModelingDocStore.SetEncoding(serializationResult.Encoding);
					global::Microsoft.VisualStudio.ErrorHandler.ThrowOnFailure(this.SetDocDataDirty(0)); // Setting the encoding will mark the document as dirty, so clear the dirty flag.
				}
				
				if (this.Hierarchy != null && global::System.IO.File.Exists(diagramFileName))
				{
					// Add a lock to the subordinate diagram file.
					if (this.diagramDocumentLockHolder == null)
					{
						uint itemId = DslShell::SubordinateFileHelper.GetChildProjectItemId(this.Hierarchy, this.ItemId, this.DiagramExtension);
						if (itemId != global::Microsoft.VisualStudio.VSConstants.VSITEMID_NIL)
						{
							this.diagramDocumentLockHolder = DslShell::SubordinateFileHelper.LockSubordinateDocument(this.ServiceProvider, this, diagramFileName, itemId);
							if (this.diagramDocumentLockHolder == null)
							{
								throw new global::System.InvalidOperationException(string.Format(global::System.Globalization.CultureInfo.CurrentCulture,
													global::Company.CyberPhisical_final.CyberPhisical_finalDomainModel.SingletonResourceManager.GetString("CannotCloseExistingDiagramDocument"),
													diagramFileName));
							}
						}
					}
				}
			}
		}


			
		/// <summary>
		/// Handle when document has been saved
		/// </summary>
		/// <param name="e"></param>
		protected override void OnDocumentSaved(global::System.EventArgs e)
		{
			base.OnDocumentSaved(e);

			// Notify the Running Document Table that the subordinate has been saved
			// If this was a SaveAs, then let the subordinate document do this notification itself.
			// Otherwise VS will never ask the subordinate to save itself.
			DslShell::DocumentSavedEventArgs savedEventArgs = e as DslShell::DocumentSavedEventArgs;
			if (savedEventArgs != null && this.ServiceProvider != null)
			{
				this.NotifySubordinateDocumentSaved(savedEventArgs.OldFileName, savedEventArgs.NewFileName);
			}
		}

		/// <summary>
		/// Notify the RDT that the sub-ordinate document has been saved, assuming saved to the same file as registered in the RDT
		/// </summary>
		protected virtual void NotifySubordinateDocumentSaved(string oldFileName, string newFileName)
		{
			if (this.ServiceProvider != null)
			{
				if (global::System.StringComparer.OrdinalIgnoreCase.Compare(oldFileName, newFileName) == 0)
				{
					VSShellInterop::IVsRunningDocumentTable rdt = (VSShellInterop.IVsRunningDocumentTable)this.ServiceProvider.GetService(typeof(VSShellInterop::SVsRunningDocumentTable));
					if (rdt != null && this.diagramDocumentLockHolder != null && this.diagramDocumentLockHolder.SubordinateDocData != null)
					{
						global::Microsoft.VisualStudio.ErrorHandler.ThrowOnFailure(rdt.NotifyOnAfterSave(this.diagramDocumentLockHolder.SubordinateDocData.Cookie));
					}
				}
			}
		}

		/// <summary>
		/// Saves the given file.
		/// </summary>
		protected override void Save(string fileName)
		{
			DslModeling::SerializationResult serializationResult = new DslModeling::SerializationResult();
			global::Company.CyberPhisical_final.IoT modelRoot = (global::Company.CyberPhisical_final.IoT)this.RootElement;

			
			// Only save the diagrams if
			// a) There are any to save
			// b) This is NOT a SaveAs operation.  SaveAs should allow the subordinate document to control the save of its data as it is writing a new file.
			//    Except DO save the diagram on SaveAs if there isn't currently a diagram as there won't be a subordinate document yet to save it.

			bool saveAs = global::System.StringComparer.OrdinalIgnoreCase.Compare(fileName, this.FileName) != 0;

			global::System.Collections.Generic.IList<DslDiagrams::PresentationElement> diagrams = DslDiagrams::PresentationViewsSubject.GetPresentation(this.RootElement);
			if (diagrams.Count > 0 && (!saveAs || this.diagramDocumentLockHolder == null))
			{
				global::Company.CyberPhisical_final.CyberPhisical_finalDiagram diagram = diagrams[0] as global::Company.CyberPhisical_final.CyberPhisical_finalDiagram;
				if (diagram != null)
				{
					string diagramFileName = fileName + this.DiagramExtension;
					try
					{
						this.SuspendFileChangeNotification(diagramFileName);
						
						global::Company.CyberPhisical_final.CyberPhisical_finalSerializationHelper.Instance.SaveModelAndDiagram(serializationResult, modelRoot, fileName, diagram, diagramFileName, this.Encoding, false);
					}
					finally
					{
						this.ResumeFileChangeNotification(diagramFileName);
					}
				}
			}
			else
			{
				global::Company.CyberPhisical_final.CyberPhisical_finalSerializationHelper.Instance.SaveModel(serializationResult, modelRoot, fileName, this.Encoding, false);
			}
			// Report serialization messages.
			this.SuspendErrorListRefresh();
			try
			{
				foreach (DslModeling::SerializationMessage serializationMessage in serializationResult)
				{
					this.AddErrorListItem(new DslShell::SerializationErrorListItem(this.ServiceProvider, serializationMessage));
				}
			}
			finally
			{
				this.ResumeErrorListRefresh();
			}

			if (serializationResult.Failed)
			{	// Save failed.
				throw new global::System.InvalidOperationException(global::Company.CyberPhisical_final.CyberPhisical_finalDomainModel.SingletonResourceManager.GetString("CannotSaveDocument"));
			}
		}
		/// <summary>
		/// Mark that the document has changed and thus a new backup should be created
		/// </summary>
		/// <remarks>
		/// Call this method when you change the document's content
		/// </remarks>
		public override void MarkDocumentChangedForBackup()
		{
			base.MarkDocumentChangedForBackup();

			// Also mark the subordinate document as changed
			if (this.diagramDocumentLockHolder != null &&
				this.diagramDocumentLockHolder.SubordinateDocData != null)
			{
				this.diagramDocumentLockHolder.SubordinateDocData.MarkDocumentChangedForBackup();
			}
		}
		
		#region Diagram file management
		
		/// <summary>
		/// Save the given document that is subordinate to this document.
		/// </summary>
		/// <param name="subordinateDocument"></param>
		/// <param name="fileName"></param>
		protected override void SaveSubordinateFile(DslShell::DocData subordinateDocument, string fileName)
		{
			// In this case, the only subordinate is the diagram.
			DslModeling::SerializationResult serializationResult = new DslModeling::SerializationResult();

			global::System.Collections.Generic.IList<DslDiagrams::PresentationElement> diagrams = DslDiagrams::PresentationViewsSubject.GetPresentation(this.RootElement);
			if (diagrams.Count > 0)
			{
				global::Company.CyberPhisical_final.CyberPhisical_finalDiagram diagram = diagrams[0] as global::Company.CyberPhisical_final.CyberPhisical_finalDiagram;
				if (diagram != null)
				{
					try
					{
						this.SuspendFileChangeNotification(fileName);
						
						global::Company.CyberPhisical_final.CyberPhisical_finalSerializationHelper.Instance.SaveDiagram(serializationResult, diagram, fileName, this.Encoding, false);
					}
					finally
					{
						this.ResumeFileChangeNotification(fileName);
					}
				}
			}
			// Report serialization messages.
			this.SuspendErrorListRefresh();
			try
			{
				foreach (DslModeling::SerializationMessage serializationMessage in serializationResult)
				{
					this.AddErrorListItem(new DslShell::SerializationErrorListItem(this.ServiceProvider, serializationMessage));
				}
			}
			finally
			{
				this.ResumeErrorListRefresh();
			}
			
			if (!serializationResult.Failed)
			{
				this.NotifySubordinateDocumentSaved(subordinateDocument.FileName, fileName);
			}
			else
			{	
				// Save failed.
				throw new global::System.InvalidOperationException(global::Company.CyberPhisical_final.CyberPhisical_finalDomainModel.SingletonResourceManager.GetString("CannotSaveDocument"));
			}						
		}
		
		/// <summary>
		/// Provide a suffix for the diagram file
		/// </summary>
		protected virtual string DiagramExtension
		{
			get
			{
				return Constants.DefaultDiagramExtension;
			}
		}
		#endregion
		
		#region Base virtual overrides
		
		/// <summary>
		/// Return the model in XML format
		/// </summary>
		protected override string SerializedModel
		{
			get
			{
				global::Company.CyberPhisical_final.IoT modelRoot = this.RootElement as global::Company.CyberPhisical_final.IoT;
				string modelFile = string.Empty;
				if (modelRoot != null)
				{
					modelFile = global::Company.CyberPhisical_final.CyberPhisical_finalSerializationHelper.Instance.GetSerializedModelString(modelRoot, this.Encoding);
				}
				return modelFile;
			}
		}
		#endregion

		#region Partition Support
		/// <summary>
		/// Get the Partition where model data will be loaded into.
		/// Base implementation returns the default partition of the store.
		/// </summary>
		protected internal virtual DslModeling::Partition GetModelPartition()
		{
			if (this.Store != null)
			{
				return this.Store.DefaultPartition;
			}
			
			return null;
		}

		/// <summary>
		/// Id of the partition that contains diagram elements.
		/// </summary>
		protected global::System.Guid diagramPartitionId = global::System.Guid.Empty;
		
		/// <summary>
		/// Get the Partition where diagram data will be loaded into.
		/// Base implementation returns the default partition of the store.
		/// </summary>
		protected internal virtual DslModeling::Partition GetDiagramPartition()
		{
			DslModeling::Partition result = null;
			if (this.Store != null)
			{
				if (this.diagramPartitionId == global::System.Guid.Empty || !this.Store.Partitions.TryGetValue(this.diagramPartitionId, out result))
				{
					result = new DslModeling::Partition(this.Store);
					this.diagramPartitionId = result.Id;
				}
			}
			
			return result;
		}
		#endregion
	}
}
