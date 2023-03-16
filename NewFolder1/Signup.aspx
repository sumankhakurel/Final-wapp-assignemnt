<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Assignment.assignment.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
	.container {
	max-width: 500px;
	margin: 0 auto;
	padding: 20px;
	background-color: #f2f2f2;
	border-radius: 5px;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
}

h1 {
	text-align: center;
	font-size: 36px;
	margin-bottom: 30px;
	color: #666;
}

label {
	display: block;
	margin-bottom: 10px;
	color: #666;
	font-size: 18px;
}

input[type="text"], input[type="email"], input[type="password"], select {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-bottom: 20px;
	font-size: 18px;
}

input[type="submit"] {
	background-color: #4CAF50;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 18px;
}

input[type="submit"]:hover {
	background-color: #45a049;
}
    </style>
</head>
<body style="background-image: url('images/black.jpg');">
    <form id="form1" runat="server">
    <div class="container" >
            <div class="background-image"></div>
        <div class="container"style="background-color:rgba(0,0,0,0)">
    <h1>Sign up for GlamEdy</h1>

    <label for="fullname">Full Name</label>
    <asp:TextBox ID="fullname" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="fullnameRequiredValidator" runat="server"
        ControlToValidate="fullname" ErrorMessage="Full Name is required."></asp:RequiredFieldValidator>

    <label for="phone_number">Phone Number</label>
    <asp:TextBox ID="phone_number" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="phone_numberRequiredValidator" runat="server"
        ControlToValidate="phone_number" ErrorMessage="Phone Number is required."></asp:RequiredFieldValidator>

    <label for="email">Email</label>
    <asp:TextBox ID="email" runat="server" CssClass="form-control" type="email"></asp:TextBox>
    <asp:RequiredFieldValidator ID="emailRequiredValidator" runat="server"
        ControlToValidate="email" ErrorMessage="Email is required."></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="emailRegexValidator" runat="server"
        ControlToValidate="email" ErrorMessage="Invalid Email format."
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

    <label for="password">Password</label>
    <asp:TextBox ID="password" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="passwordRequiredValidator" runat="server"
        ControlToValidate="password" ErrorMessage="Password is required."></asp:RequiredFieldValidator>

    <label for="confirm_password">Confirm Password</label>
    <asp:TextBox ID="confirm_password" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
    <asp:CompareValidator ID="passwordMatchValidator" runat="server"
        ControlToCompare="password" ControlToValidate="confirm_password" 
        ErrorMessage="Passwords do not match."></asp:CompareValidator>

    <label for="country">Country</label>
    <asp:DropDownList ID="country" runat="server">
        <asp:ListItem Text="USA" Value="USA"></asp:ListItem>
        <asp:ListItem Text="Canada" Value="Canada"></asp:ListItem>
        <asp:ListItem Text="UK" Value="UK"></asp:ListItem>
        <asp:ListItem Text="Nepal" Value="UK"></asp:ListItem>
    </asp:DropDownList>
		<asp:Button ID="btn_SignUp" runat="server" Text="Sign up" OnClick="btnSignUp_Click"  />

    </div>

</form>
</body>
</html>
