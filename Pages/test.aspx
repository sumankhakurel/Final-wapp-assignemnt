<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Final_wapp_assignemnt.Pages.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../assets/css/dashlite.css?ver=2.9.0">

    <link id="skindefault" rel="stylesheet" href="../assets/css/theme.css?ver=2.9.0">
    <style type="text/css">
        .auto-style1 {
        }
    </style>
</head>
<body>
   <form id="form1" runat="server">
    <div>
        <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#myModal"
            data-id="12"
            data-name="name"
            data-description="desc"
            data-image="url">View Details
        </a>

     

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <script>
        
        $(document).on("click", ".btn-primary", function () {
            console.log("Hello world!");
            var productId = $(this).data("id");
            var description = $(this).data("description");

            $("#productId").val(description);
           
            $("#myModal").modal("show");
        });
    </script>
</form>

</body>
</html>
