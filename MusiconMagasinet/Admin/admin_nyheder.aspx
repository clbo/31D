<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="admin_nyheder.aspx.cs" Inherits="Admin_admin_nyheder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <!-- Main hero unit for a primary marketing message or call to action -->
    <div class="hero-unit">
        <h1>
            Nyheder</h1>
        <p>
            Opret, rediger eller slet en nyhed
            <%--<p>
            <a class="btn btn-primary btn-large">Learn more &raquo;</a></p>--%>
    </div>
    <!-- Example row of columns -->
    <section class="row">
        
        <div class="span4">
            <div>
            
               <asp:Button ID="Button__opret" runat="server" Text="Opret" class="btn btn-large btn-block btn-primary" PostBackUrl="~/Admin/opret_nuhed.aspx" />
            </div>
        </div>
        <div class="span4">
            <div>
           
               <asp:Button ID="Button_rediger" runat="server" Text="Rediger" class="btn btn-large btn-block btn-success" PostBackUrl="~/Admin/rediger_nyhed.aspx" />
            </div>
        </div>
        <div class="span4">
            <div>
            
               <asp:Button ID="Button_slet" runat="server" Text="Slet" class="btn btn-large btn-block btn-danger" PostBackUrl="~/Admin/rediger_nyhed.aspx" />
            </div>
        </div>
    </section>
    <!--end row -->
</asp:Content>

