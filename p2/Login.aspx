<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Assignment.assignment.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
					.container {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-color: #f5f5f5;
}

.background-image {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-image: url('bg-image.jpg');
	background-repeat: no-repeat;
	background-size: cover;
	filter: blur(5px);
	z-index: -1;
}

.form-container {
	position: relative;
	background-color: #fff;
	padding: 50px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
}

h1 {
	text-align: center;
	color: #333;
	margin-bottom: 30px;
}

label {
	display: block;
	font-size: 18px;
	color: #333;
	margin-bottom: 10px;
}

input[type="email"], input[type="password"] {
	display: block;
	width: 100%;
	padding: 10px;
	border: none;
	border-radius: 5px;
	background-color: #f5f5f5;
	margin-bottom: 20px;
	font-size: 18px;
}

input[type="checkbox"] {
	margin-right: 10px;
}

.remember-me {
	margin-bottom: 20px;
}

input[type="submit"] {
	background-color: #1abc9c;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 18px;
}

input[type="submit"]:hover {
	background-color: #16a085;
}

.signup-link {
	margin-top: 30px;
	text-align: center;
}

.signup-link a {
	color: #1abc9c;
	font-weight: bold;
}
    </style>
	<script>
        function validateLoginForm() {
            const email = document.getElementById('email').value.trim
    </script>
</head>
<body>
    <form id="form1" runat="server">
		<div class="container"style="background-image: url('images/black.jpg');" >
            <div class="background-image"></div>
        <div class="container"style="background-color:rgba(0,0,0,0)">
    <div class="background-image"></div>
    <div class="form-container">
        <h1>Login to Your Account</h1>
        <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-input" placeholder="Enter your email address" type="email" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-input" placeholder="Enter your password" type="password" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" Display="Dynamic"></asp:RequiredFieldValidator>
				<asp:Button ID="Button1" runat="server" OnClick="btnLogin_Click" Text="Login"/>
                <div class="signup-link">
                    <p>Don't have an account? <a href="Signup.aspx">Sign up here</a></p>
                </div>
		</div>
            </div>
        </div>
    </form>
</body>
</html>
