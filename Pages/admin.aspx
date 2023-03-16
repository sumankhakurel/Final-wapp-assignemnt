<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Final_wapp_assignemnt.Pages.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

    <title>Admin Login</title>
</head>
<body>
    <form id="form1" runat="server">
         <div class="container">
            <div class="row justify-content-center mt-5">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">
                            Admin Login
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="tbusername">Username</label>
                                <asp:TextBox ID="tbusername" CssClass="form-control" runat="server" />
                                <asp:RequiredFieldValidator ID="rfvUsername" ControlToValidate="tbusername" Text="*" ValidationGroup="login" runat="server" />
                            </div>
                            <div class="form-group">
                                <label for="tbpassword">Password</label>
                                <asp:TextBox ID="tbpassword" CssClass="form-control" TextMode="Password" runat="server" />
                                <asp:RequiredFieldValidator ID="rfvPassword" ControlToValidate="tbpassword" Text="*" ValidationGroup="login" runat="server" />
                            </div>
                            <div class="form-group">
                                <asp:Button ID="btnLogin" CssClass="btn btn-primary" Text="Login" ValidationGroup="login" OnClick="btnLogin_Click" runat="server" />
                            </div>
                            <asp:Label ID="lblError" runat="server" CssClass="text-danger" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
