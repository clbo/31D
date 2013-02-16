<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="enkeltnyhed.aspx.cs" Inherits="enkeltnyhed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Main hero unit for a primary marketing message or call to action -->
   
    <!-- Example row of columns -->
   
    <div class="row">
        <asp:Repeater ID="Repeater_nyheder_forside" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div class="span8 offset2">
                    <div>
                        <h2>
                            <%#Eval("n_title") %></h2>
                            <p><smal><em>Skrevet d. <%#Eval("n_date","{0:dd. MMM yy}") %></em></smal></p>
                        <p><img src="http://www.placehold.it/925x100" /></p>
                        
                            <%#Eval("n_tekst") %> 
                        
                        
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <!--end row -->
    <!-- SQLDATASOURCES -->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>"
        SelectCommand="SELECT * FROM [news] WHERE ([n_id] = @n_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="n_id" QueryStringField="newsid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>


</asp:Content>

