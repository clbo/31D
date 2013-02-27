<%@ Page Language="C#" AutoEventWireup="true" CodeFile="upload_Resize.aspx.cs" Inherits="upload_Resize" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
    <h1>Upload/Resize</h1>
    <p>
        <asp:FileUpload ID="FileUpload1" runat="server" />
    </p>
    <p>
        <asp:Button ID="Button_upload" runat="server" onclick="Button_upload_Click" 
            Text="Upload" />
    </p>
    
   
    </form>
</body>
</html>
