#region Using directives

using System;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Runtime.ConstrainedExecution;

#endregion

//
// General Information about an assembly is controlled through the following 
// set of attributes. Change these attribute values to modify the information
// associated with an assembly.
//
[assembly: AssemblyTitle(@"")]
[assembly: AssemblyDescription(@"")]
[assembly: AssemblyConfiguration("")]
[assembly: AssemblyCompany(@"Company")]
[assembly: AssemblyProduct(@"CyberPhisical_final")]
[assembly: AssemblyCopyright("")]
[assembly: AssemblyTrademark("")]
[assembly: AssemblyCulture("")]
[assembly: System.Resources.NeutralResourcesLanguage("en")]

//
// Version information for an assembly consists of the following four values:
//
//      Major Version
//      Minor Version 
//      Build Number
//      Revision
//
// You can specify all the values or you can default the Revision and Build Numbers 
// by using the '*' as shown below:

[assembly: AssemblyVersion(@"1.0.0.0")]
[assembly: ComVisible(false)]
[assembly: CLSCompliant(true)]
[assembly: ReliabilityContract(Consistency.MayCorruptProcess, Cer.None)]

//
// Make the Dsl project internally visible to the DslPackage assembly
//
[assembly: InternalsVisibleTo(@"Company.CyberPhisical_final.DslPackage, PublicKey=0024000004800000940000000602000000240000525341310004000001000100B55727E072A8E15979D3D07A5481D517E9AC970AC160E421B7BE9FB2BCD21AC6E1EBD63EBDB72B713C0FFD0AD79583E46EA6A8A00799A7FE8E3279A3E1B7699F39A478B70CE82492C77D79123C77BD3CA154BB2696CB0E553DDDFB1976D38D56525EEE16D3B4B206610B3F97C82E21A07D8740C461D5D6E87B42DBAA59568CBA")]