<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="admin_aktiviteter.aspx.cs" Inherits="Admin_admin_aktiviteter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <!-- Main hero unit for a primary marketing message or call to action -->
    <div class="hero-unit">
        <h1>
            Administration</h1>
        <p>
            Administrer nyheder og aktiviteter
            <%--<p>
            <a class="btn btn-primary btn-large">Learn more &raquo;</a></p>--%>
    </div>
    <!-- Example row of columns -->
    <section class="row">
        <div class="span3">
            <div>
                <p>
                    Menu</p>
                <ul>
                    <li><a href="admin_nyheder.aspx">aAktiviteter</a></li><li><a href="admin_aktiviteter.aspx">Aktiviteter</a></li><li>Læs kontakt</li></ul>
            </div>
        </div>
        <div class="span9">
            <div>
            <h1>Aktiviteter</h1>
                <p>
                    Indhold</p>
            </div>
        </div>
    </section>
    <!--end row -->

</asp:Content>

