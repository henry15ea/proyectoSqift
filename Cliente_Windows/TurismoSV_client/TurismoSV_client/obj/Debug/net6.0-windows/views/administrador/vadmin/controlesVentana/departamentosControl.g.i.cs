﻿#pragma checksum "..\..\..\..\..\..\..\views\administrador\vadmin\controlesVentana\departamentosControl.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "F40906AA5758525D197E1225BDB17686E86E155B"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Controls.Ribbon;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;
using TurismoSV_client.views.administrador.vadmin.controlesVentana;


namespace TurismoSV_client.views.administrador.vadmin.controlesVentana {
    
    
    /// <summary>
    /// departamentosControl
    /// </summary>
    public partial class departamentosControl : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector, System.Windows.Markup.IStyleConnector {
        
        
        #line 18 "..\..\..\..\..\..\..\views\administrador\vadmin\controlesVentana\departamentosControl.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txt_itemSearch;
        
        #line default
        #line hidden
        
        
        #line 19 "..\..\..\..\..\..\..\views\administrador\vadmin\controlesVentana\departamentosControl.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btn_searchElement;
        
        #line default
        #line hidden
        
        
        #line 35 "..\..\..\..\..\..\..\views\administrador\vadmin\controlesVentana\departamentosControl.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtnombre;
        
        #line default
        #line hidden
        
        
        #line 38 "..\..\..\..\..\..\..\views\administrador\vadmin\controlesVentana\departamentosControl.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btn_saveData;
        
        #line default
        #line hidden
        
        
        #line 43 "..\..\..\..\..\..\..\views\administrador\vadmin\controlesVentana\departamentosControl.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button Acl;
        
        #line default
        #line hidden
        
        
        #line 52 "..\..\..\..\..\..\..\views\administrador\vadmin\controlesVentana\departamentosControl.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid dataTable;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "7.0.5.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/TurismoSV_client;V1.0.0.0;component/views/administrador/vadmin/controlesventana/" +
                    "departamentoscontrol.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\..\..\..\views\administrador\vadmin\controlesVentana\departamentosControl.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "7.0.5.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.txt_itemSearch = ((System.Windows.Controls.TextBox)(target));
            return;
            case 2:
            this.btn_searchElement = ((System.Windows.Controls.Button)(target));
            
            #line 19 "..\..\..\..\..\..\..\views\administrador\vadmin\controlesVentana\departamentosControl.xaml"
            this.btn_searchElement.Click += new System.Windows.RoutedEventHandler(this.btn_searchElement_Click);
            
            #line default
            #line hidden
            return;
            case 3:
            this.txtnombre = ((System.Windows.Controls.TextBox)(target));
            return;
            case 4:
            this.btn_saveData = ((System.Windows.Controls.Button)(target));
            
            #line 38 "..\..\..\..\..\..\..\views\administrador\vadmin\controlesVentana\departamentosControl.xaml"
            this.btn_saveData.Click += new System.Windows.RoutedEventHandler(this.Button_Click);
            
            #line default
            #line hidden
            return;
            case 5:
            this.Acl = ((System.Windows.Controls.Button)(target));
            
            #line 43 "..\..\..\..\..\..\..\views\administrador\vadmin\controlesVentana\departamentosControl.xaml"
            this.Acl.Click += new System.Windows.RoutedEventHandler(this.Acl_Click);
            
            #line default
            #line hidden
            return;
            case 6:
            this.dataTable = ((System.Windows.Controls.DataGrid)(target));
            return;
            }
            this._contentLoaded = true;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "7.0.5.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        void System.Windows.Markup.IStyleConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 7:
            
            #line 80 "..\..\..\..\..\..\..\views\administrador\vadmin\controlesVentana\departamentosControl.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Button_Click_1);
            
            #line default
            #line hidden
            break;
            case 8:
            
            #line 96 "..\..\..\..\..\..\..\views\administrador\vadmin\controlesVentana\departamentosControl.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Button_Click_2);
            
            #line default
            #line hidden
            break;
            }
        }
    }
}

