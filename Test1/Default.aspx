<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Test Page
    </title>
</head>
<body>
      <form id="form1" runat="server">
         <div>
         
            <asp:TextBox ID="TextBox1" runat="server" style="width:224px">
            </asp:TextBox>
            
            <br />
            <br />
            
            <asp:Button ID="Button1" runat="server" Text="Enter..." style="width:85px" onclick="Button1_Click" />
            <hr />
            
            <h3> Results: </h3>
            <span runat="server" id="changed_text" />
            
         </div>
      </form>
</body>
</html>
