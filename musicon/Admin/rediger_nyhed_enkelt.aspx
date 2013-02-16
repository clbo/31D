<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="rediger_nyhed_enkelt.aspx.cs" Inherits="Admin_rediger_nyhed_enkelt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="row">
        
        <div class="span8 offset1">
            <div>
            
                <asp:Label ID="Label_besked" runat="server"></asp:Label>
                
                <h1>Rediger nyhed</h1>
                <table style="width: 100%">
                    <tr>
                        <td>
                            Titel:</td>
                        <td>
                            <asp:TextBox ID="TextBox_titel" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Tekst</td>
                        <td>
                            <asp:TextBox ID="TextBox_tekst" runat="server" TextMode="MultiLine" Rows="20" Width="500px"
                                ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            billede</td>
                        <td>
                            <asp:FileUpload ID="FileUpload_nyhed" runat="server" class="btn" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
            
               <asp:Button ID="Button__rediger" runat="server" Text="Rediger" 
                    class="btn btn-large btn-primary" onclick="Button__rediger_Click" 
                     />
            </div>
        </div>
       
    </section>
    <!--end row -->

</asp:Content>

