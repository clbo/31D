<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true"
    CodeFile="rediger_nyhed.aspx.cs" Inherits="Admin_rediger_nyhed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="span8 offset2">
            <h1>
                Rediger</h1>
        </div>
    </div>
    <div class="row">
        <asp:Repeater ID="Repeater_nyheder_forside" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div class="span4">
                    <div>
                        <h2>
                            <%#Eval("n_title") %></h2>
                        <p>
                            <smal><em>Skrevet d. <%#Eval("n_date","{0:dd. MMM yy}") %></em></smal>
                        </p>
                        <p>
                            <%#Eval("n_tekst") %>
                        </p>
                        <p>
                            <a class="btn btn-block btn-primary" href="rediger_nyhed_enkelt.aspx?newsid=<%#Eval("n_id") %>">Rediger denne
                                nyhed</a></p>
                        <p>
                            <a class="btn btn-block btn-danger" href="slet_nyhed.aspx?newsid=<%#Eval("n_id") %>">Slet denne
                                nyhed</a></p>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <!--end row -->
    <!-- SQLDATASOURCES -->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>"
        SelectCommand="SELECT * FROM [news] ORDER BY [n_id] DESC"></asp:SqlDataSource>
</asp:Content>
