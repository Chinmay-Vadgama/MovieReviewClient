<%@ Page Language="C#" Async="true" AutoEventWireup="true" CodeBehind="Loginpage.aspx.cs" Inherits="MovieReviewClient.Loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <p>
        <br />
    </p>
    <form id="form1" runat="server" method="get">
    <div>
     Email::<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></br>

     Password::<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </br>
        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
    </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
