﻿#pragma checksum "..\..\..\..\..\..\..\views\administrador\vadmin\controlesVentana\telefonosUsuarioControl.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "BC32ADF10D77561497FA4EDD7B4AC78784DC5DC6"
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
    /// telefonosUsuarioControl
    /// </summary>
    public partial class telefonosUsuarioControl : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector, System.Windows.Markup.IStyleConnector {
        
        
        #line 18 "..\..\..\..\..\..\..\views\administrador\vadmin\controlesVentana\telefonosUsuarioControl.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txt_itemSearch;
        
        #line default
        #line hidden
        
        
        #line 19 "..\..\..\..\..\..\..\views\administrador\vadmin\controlesVentana\telefonosUsuarioControl.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btn_searchElement;
        
        #line default
        #line hidden
        
        
        #line 28 "..\..\..\..\..\..\..\views\administrador\vadmin\controlesVentana\telefonosUsuarioControl.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btn_report;
        
        #line default
        #line hidden
        
        
        #line 45 "..\..\..\..\..\..\..\views\administrador\vadmin\controlesVentana\telefonosUsuarioControl.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txttelefono;
        
        #line default
        #line hidden
        
        
        #line 48 "..\..\..\..\..\..\..\views\administrador\vadmin\controlesVentana\telefonosUsuarioControl.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox cbox;
        
        #line default
        #line hidden
        
        
        #line 53 "..\..\..\..\..\..\..\views\administrador\vadmin\controlesVentana\telefonosUsuarioControl.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btn_saveData;
        
        #line default
        #line hidden
        
        
        #line 58 "..\..\..\..\..\..\..\views\administrador\vadmin\controlesVentana\telefonosUsuarioControl.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button Acl;
        
        #line default
        #line hidden
        
        
        #line 67 "..\..\..\..\..\..\..\views\administrador\vadmin\controlesVentana\telefonosUsuarioControl.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid dataTable;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "6.0.2.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/TurismoSV_client;component/views/administrador/vadmin/controlesventana/telefonos" +
                    "usuariocontrol.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\..\..\..\views\administrador\vadmin\controlesVentana\telefonosUsuarioControl.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "6.0.2.0")]
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
            
            #line 19 "..\..\..\..\..\..\..\views\administrador\vadmin\controlesVentana\telefonosUsuarioControl.xaml"
            this.btn_searchElement.Click += new System.Windows.RoutedEventHandler(this.btn_searchElement_Click);
            
            #line default
            #line hidden
            return;
            case 3:
            this.btn_report = ((System.Windows.Controls.Button)(target));
            
            #line 28 "..\..\..\..\..\..\..\views\administrador\vadmin\controlesVentana\telefonosUsuarioControl.xaml"
            this.btn_report.Click += new System.Windows.RoutedEventHandler(this.btn_report_Click);
            
            #line default
            #line hidden
            return;
            case 4:
            this.txttelefono = ((System.Windows.Controls.TextBox)(target));
            return;
            case 5:
            this.cbox = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 6:
            this.btn_saveData = ((System.Windows.Controls.Button)(target));
            
            #line 53 "..\..\..\..\..\..\..\views\administrador\vadmin\controlesVentana\telefonosUsuarioControl.xaml"
            this.btn_saveData.Click += new System.Windows.RoutedEventHandler(this.Button_Click);
            
            #line default
            #line hidden
            return;
            case 7:
            this.Acl = ((System.Windows.Controls.Button)(target));
            
            #line 58 "..\..\..\..\..\..\..\views\administrador\vadmin\controlesVentana\telefonosUsuarioControl.xaml"
            this.Acl.Click += new System.Windows.RoutedEventHandler(this.Acl_Click);
            
            #line default
            #line hidden
            return;
            case 8:
            this.dataTable = ((System.Windows.Controls.DataGrid)(target));
            return;
            }
            this._contentLoaded = true;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "6.0.2.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        void System.Windows.Markup.IStyleConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 9:
            
            #line 85 "..\..\..\..\..\..\..\views\administrador\vadmin\controlesVentana\telefonosUsuarioControl.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Button_Click_2);
            
            #line default
            #line hidden
            break;
            case 10:
            
            #line 122 "..\..\..\..\..\..\..\views\administrador\vadmin\controlesVentana\telefonosUsuarioControl.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Button_Click_1);
            
            #line default
            #line hidden
            break;
            }
        }
    }
}

