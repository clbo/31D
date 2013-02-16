<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <!-- Main hero unit for a primary marketing message or call to action -->
    <div class="hero-unit">
        <h1>
            Administration</h1>
        <p>
            Administrer nyheder og aktiviteter på Musicon siden</p>
       
    </div>
    <!-- Example row of columns -->
    <section class="row">
        
        <div class="span4">
            <div>
                <h1>
                    Nyheder</h1>
                    <p>Opret, Rediger eller slet en nyhed</p>
                <asp:Button ID="Button_nyheder" runat="server" Text="Vælg" class="btn" PostBackUrl="~/Admin/admin_nyheder.aspx" />
            </div>
        </div>
        <div class="span4">
            <div>
                <h1>
                    Aktiviteter</h1>
                    <p>Opret, Rediger eller slet en aktivitet</p>
                <asp:Button ID="Button_aktivitet" runat="server" Text="Vælg" class="btn" PostBackUrl="~/Admin/admin_aktiviteter.aspx" />
            </div>
        </div>
        <div class="span4">
            <div>
                <h1>
                    Kontakt</h1>
                    <p>Læs eller slet Kontaktbeskeder</p>
                <asp:Button ID="Button_kontakt" runat="server" Text="Vælg" class="btn" />
            </div>
        </div>
    </section>
    <!--end row -->
</asp:Content>

