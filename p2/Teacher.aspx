<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" Inherits="Assignment.Teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Teachers</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">

   <!-- custom css file link  -->
    <link href="assignment/css/style.css" rel="stylesheet" />
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
      <a href="Profile.aspx" class="btn">view profile</a>
   </div>

   <nav class="navbar">
      <a href="StudentHomePage.aspx"><i class="fas fa-home"></i><span>home</span></a>
      <a href="StudentCourses.aspx"><i class="fas fa-graduation-cap"></i><span>courses</span></a>
      <a href="Teacher.aspx"><i class="fas fa-chalkboard-user"></i><span>teachers</span></a>
      <a href="ContractUs.aspx"><i class="fas fa-headset"></i><span>contact us</span></a>
   </nav>

</div>

<section class="teachers">

   <h1 class="heading">expert teachers</h1>

   <form action="" method="post" class="search-tutor">
      <input type="text" name="search_box" placeholder="search tutors..." required maxlength="100">
      <button type="submit" class="fas fa-search" name="search_tutor"></button>
   </form>

   <div class="box-container">

      <div class="box offer">
         <h3>become a tutor</h3>
         <p>Becoming a tutor can be a rewarding and fulfilling experience, as it allows you to share your knowledge and help others learn and grow.</p>
         <a href="Register.aspx" class="inline-btn">get started</a>
      </div>

      <div class="box">
         <div class="tutor">
             <img src="assignment/images/pic-2.jpg" />
            
            <div>
               <h3>john deo</h3>
               <span>developer</span>
            </div>
         </div>
         <p>total playlists : <span>4</span></p>
         <p>total videos : <span>18</span></p>
         <p>total likes : <span>1208</span></p>
         <a href="teacher_profile.aspx" class="inline-btn">view profile</a>
      </div>

      <div class="box">
         <div class="tutor">
             <img src="assignment/images/pic-3.jpg" />
            <div>
               <h3>john deo</h3>
               <span>developer</span>
            </div>
         </div>
         <p>total playlists : <span>4</span></p>
         <p>total videos : <span>18</span></p>
         <p>total likes : <span>1208</span></p>
         <a href="teacher_profile.aspx" class="inline-btn">view profile</a>
      </div>

      <div class="box">
         <div class="tutor">
             <img src="assignment/images/pic-4.jpg" />
            <div>
               <h3>john deo</h3>
               <span>developer</span>
            </div>
         </div>
         <p>total playlists : <span>4</span></p>
         <p>total videos : <span>18</span></p>
         <p>total likes : <span>1208</span></p>
         <a href="teacher_profile.aspx" class="inline-btn">view profile</a>
      </div>

      <div class="box">
         <div class="tutor">
             <img src="assignment/images/pic-5.jpg" />
            <div>
               <h3>john deo</h3>
               <span>developer</span>
            </div>
         </div>
         <p>total playlists : <span>4</span></p>
         <p>total videos : <span>18</span></p>
         <p>total likes : <span>1208</span></p>
         <a href="teacher_profile.aspx" class="inline-btn">view profile</a>
      </div>

      <div class="box">
         <div class="tutor">
             <img src="assignment/images/pic-6.jpg" />
            <div>
               <h3>john deo</h3>
               <span>developer</span>
            </div>
         </div>
         <p>total playlists : <span>4</span></p>
         <p>total videos : <span>18</span></p>
         <p>total likes : <span>1208</span></p>
         <a href="teacher_profile.aspx" class="inline-btn">view profile</a>
      </div>

      <div class="box">
         <div class="tutor">
             <img src="assignment/images/pic-7.jpg" />
            <div>
               <h3>john deo</h3>
               <span>developer</span>
            </div>
         </div>
         <p>total playlists : <span>4</span></p>
         <p>total videos : <span>18</span></p>
         <p>total likes : <span>1208</span></p>
         <a href="teacher_profile.aspx" class="inline-btn">view profile</a>
      </div>

      <div class="box">
         <div class="tutor">
             <img src="assignment/images/pic-8.jpg" />
            <div>
               <h3>john deo</h3>
               <span>developer</span>
            </div>
         </div>
         <p>total playlists : <span>4</span></p>
         <p>total videos : <span>18</span></p>
         <p>total likes : <span>1208</span></p>
         <a href="teacher_profile.aspx" class="inline-btn">view profile</a>
      </div>

   </div>

</section>

    </form>
    <script src="js/script.js"></script>
</body>
</html>
