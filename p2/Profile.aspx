﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Assignment.assignment.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>profile</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">

   <!-- custom css file link  -->
    <link href="css/style.css" rel="stylesheet" />
   <link rel="stylesheet" href="css/style.css">


</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
   
   <section class="flex">

      <a href="StudentHomePage.aspx" class="logo">GlamEdy.</a>

      <form action="search.html" method="post" class="search-form">
         <input type="text" name="search_box" required placeholder="search courses..." maxlength="100">
         <button type="submit" class="fas fa-search"></button>
      </form>

      <div class="icons">
         <div id="menu-btn" class="fas fa-bars"></div>
         <div id="search-btn" class="fas fa-search"></div>
         <div id="user-btn" class="fas fa-user"></div>
         <div id="toggle-btn" class="fas fa-sun"></div>
      </div>

      <div class="profile">
         <img src="images/pic-1.jpg" class="image" alt="">
         <h3 class="name">shaikh anas</h3>
         <p class="role">studen</p>
         <a href="Profile.aspx" class="btn">view profile</a>
         <div class="flex-btn">
         <asp:Button ID="Button1" runat="server" Text="Log Out" class="option-btn" OnClick="btnLogOut_Click" />

         </div>
      </div>

   </section>

</header>   

<div class="side-bar">

   <div id="close-btn">
      <i class="fas fa-times"></i>
   </div>

   <div class="profile">
      <img src="images/pic-1.jpg" class="image" alt="">
      <h3 class="name">shaikh anas</h3>
      <p class="role">studen</p>
       <a href="Profile.aspx"class="btn">view profile</a>
      
   </div>

   <nav class="navbar">
     <a href="StudentHomePage.aspx"><i class="fas fa-home"></i><span>home</span></a>
      <a href="StudentCourses.aspx"><i class="fas fa-graduation-cap"></i><span>courses</span></a>
      <a href="Teacher.aspx"><i class="fas fa-chalkboard-user"></i><span>teachers</span></a>
      <a href="ContractUs.aspx"><i class="fas fa-headset"></i><span>contact us</span></a>
   </nav>

</div>

<section class="user-profile">

   <h1 class="heading">your profile</h1>

   <div class="info">

      <div class="user">
         <img src="images/pic-1.jpg" alt="">
         <h3>shaikh anas</h3>
         <p>student</p>
         <a href="update.aspx" class="inline-btn">update profile</a>
      </div>
   
      <div class="box-container">
   
         <div class="box">
            <div class="flex">
               <i class="fas fa-bookmark"></i>
               <div>
                  <span>4</span>
                  <p>saved playlist</p>
               </div>
            </div>
            <a href="playlist.aspx" class="inline-btn">view playlists</a>
         </div>
   
         <div class="box">
            <div class="flex">
               <i class="fas fa-heart"></i>
               <div>
                  <span>33</span>
                  <p>videos liked</p>
               </div>
            </div>
            <a href="#" class="inline-btn">view liked</a>
         </div>
   
         <div class="box">
            <div class="flex">
               <i class="fas fa-comment"></i>
               <div>
                  <span>12</span>
                  <p>videos comments</p>
               </div>
            </div>
            <a href="#" class="inline-btn">view comments</a>
         </div>
   
      </div>
   </div>

</section>

    </form>
    <script src="js/script.js"></script>
</body>
</html>
