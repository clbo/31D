<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="kontakt.aspx.cs" Inherits="kontakt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!-- Main hero unit for a primary marketing message or call to action -->
    <div class="hero-unit">
        
        <p>
            <img src="http://www.placehold.it/1024x200" /></p>
        <%--<p>
            <a class="btn btn-primary btn-large">Learn more &raquo;</a></p>--%>
    </div>
    <!-- Example row of columns -->
    <div class="row">
       <asp:Label ID="Label_besked" runat="server"></asp:Label>
                <div class="span4 offset4">
                    <div>
                  
                        <h2>
                            Kontakt</h2>
                        <table style="width: 300px">
                            <tr>
                                <td>
                                    skriv id på nyhed</td>
                                <td>
                                    <asp:TextBox ID="TextBox_navn" runat="server" placeholder="Dit navn" required=""></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Email</td>
                                <td>
                                    <asp:TextBox ID="TextBox_email" runat="server" placeholder="Din email" required=""></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Emne</td>
                                <td>
                                    <asp:TextBox ID="TextBox_emne" runat="server" placeholder="Emne" required=""></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Besked</td>
                                <td>
                                    <asp:TextBox ID="TextBox_besked" runat="server" TextMode="MultiLine" Rows="6" placeholder="Besked" required=""></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:Button ID="Button_send_besked" runat="server" 
                                        onclick="Button_send_besked_Click" Text="Send besked" CssClass="btn btn-large btn-info" />
                                </td>
                            </tr>
                        </table>
                        
                        
                    </div>
                </div>
           
    </div>
    <!--end row -->

</asp:Content>

