<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Main hero unit for a primary marketing message or call to action -->
    <div class="hero-unit">
        
        <p>
            <img src="http://www.placehold.it/1024x200" /></p>
        <%--<p>
            <a class="btn btn-primary btn-large">Learn more &raquo;</a></p>--%>
    </div>
    <!-- Example row of columns -->
    <div class="row">
        <asp:Repeater ID="Repeater_nyheder_forside" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div class="span4">
                    <div>
                        <h2>
                            <%#Eval("n_title") %></h2>
                        <p>
                            <%#Eval("n_tekst") %> ...
                        </p>
                        <p>
                            <a class="btn" href="enkeltnyhed.aspx?newsid=<%#Eval("n_id") %>">Læs mere</a></p>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <!--end row -->
    <!-- SQLDATASOURCES -->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>"
        SelectCommand="SELECT TOP(3) * FROM [news] ORDER BY [n_id] DESC"></asp:SqlDataSource>
</asp:Content>
