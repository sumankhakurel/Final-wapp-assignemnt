<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="category.aspx.cs" Inherits="Final_wapp_assignemnt.Pages.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="nav" runat="server">
    <!-- content @s -->
    <div class="nk-content ">
        <div class="container-fluid">
            <div class="nk-content-inner">
                <div class="nk-content-body">
                    <div class="nk-block-head nk-block-head-sm">
                        <div class="nk-block-between">
                            <div class="nk-block-head-content">
                                <h3 class="nk-block-title page-title">Course Category</h3>
                                <div class="nk-block-des text-soft">
                                    <p>You have different Categories</p>
                                </div>
                            </div>
                            <!-- .nk-block-head-content -->
                            <div class="nk-block-head-content">
                                <div class="toggle-wrap nk-block-tools-toggle">
                                    <a href="#" class="btn btn-icon btn-trigger toggle-expand mr-n1" data-target="pageMenu"><em class="icon ni ni-menu-alt-r"></em></a>
                                    <div class="toggle-expand-content" data-content="pageMenu">
                                        <ul class="nk-block-tools g-3">

                                            <li class="nk-block-tools-opt"><a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modalCreate"><em class="icon ni ni-plus"></em><span>Add Category</span></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- .toggle-wrap -->
                            </div>
                            <!-- .nk-block-head-content -->
                        </div>
                        <!-- .nk-block-between -->
                    </div>
                    <!-- .nk-block-head -->
                    <div style="display: flex; flex-wrap: wrap; justify-content: space-around;">
                        <div class="nk-block">
                            <div class="row g-gs">




                                <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" CellPadding="10">
                                    <ItemTemplate>
                                        <div class="card h-100">
                                            <div class="card-inner">
                                                <div class="d-flex justify-content-between align-items-start mb-3">
                                                    <a href="html/lms/courses.html" class="d-flex align-items-center">
                                                        <div class="user-avatar sq bg-purple">
                                                            <span>
                                                                <img src="<%# Eval("[url]") %>" /></span>
                                                        </div>
                                                        <div class="ml-3">
                                                            <h6 runat="server" id="txtCategoryName" class="title mb-1"><%# Eval("[name]") %></h6>
                                                            <span runat="server" id="txtSubCategory" class="sub-text"><%# Eval("[subcategories]") %></span>
                                                        </div>
                                                    </a>
                                                    <div class="dropdown">
                                                        <a href="#" class="dropdown-toggle btn btn-sm btn-icon btn-trigger mt-n1 mr-n1" data-toggle="dropdown"><em class="icon ni ni-more-h"></em></a>
                                                        <div class="dropdown-menu dropdown-menu-right">
                                                            <ul class="link-list-opt no-bdr">
                                                                <li> 
                                                                    <a href="#"  data-toggle="modal" class="btn btn-primary editbtn" data-target="#editCategoryModal"
                                                                        data-name="<%# Eval("name") %>"
                                                                        data-description="<%# Eval("description") %>"
                                                                        data-categoryimage="<%# Eval("url") %>"
                                                                        data-subcategories= "<%# Eval("subcategories") %>"
                                                                        data-catagories="<%# Eval("categoriesnumbers") %>"
                                                                        data-uid="<%# Eval("categoryid") %>">
                                                                        
                                                                        <em class="icon ni ni-edit"></em>
                                                                        <span>Edit Category</span>
                                                                    </a>

                                                                </li>
                                                                <li><a class="delbtn" data-toggle="modal" data-target="#modalDelete" href="#"
                                                                    data-name="<%# Eval("name") %>"
                                                                    ><em class="icon ni ni-delete"></em><span>Delete Category</span></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <p runat="server" id="txtDescription"><%# Eval("[description]") %></p>
                                                <ul class="d-flex flex-wrap g-1">
                                                    <li><span class="badge badge-dim badge-primary">"<%# Eval("[categoriesnumbers]") %>"</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:DataList>

                            </div>
                        </div>
                        <!-- .nk-block -->
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- content @e -->
    <!-- @@ Category Modal @e -->
   
    <div class="modal fade" id="modalCreate">
        <div class="modal-dialog" role="document">
            
            <div class="modal-content">
                <a href="#" class="close" data-dismiss="modal" aria-label="Close"><em class="icon ni ni-cross-sm"></em></a>
                <div class="modal-body modal-body-md">
                    <h5 class="title">Add Category</h5>
                    
                    <form action="Pages/category.aspx" method="post" class="pt-2">
                        <div class="form-group">
                            <label class="form-label" for="full-name" ">Category Name</label>
                            <div class="form-control-wrap">
                                <input  runat="server" type="text" class="form-control" id="fullName" placeholder="e.g. Web Development">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="description">Description</label>
                            <div class="form-control-wrap">
                                <textarea runat="server"  class="form-control" name="description" id="description" placeholder="Write Category Description"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="thumb">Category thumbnail</label>
                            <div class="form-control-wrap">
                                <div class="custom-file">
                                    <input runat="server" type="file" multiple class="custom-file-input" id="customFile">
                                    <label class="custom-file-label" for="thumb">Choose file</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="form-label">Subcategory no</label>
                            <div class="d-flex gx-3 mb-3">
                                <div class="g w-100">
                                    <div class="form-control-wrap">
                                        <input runat="server" type="text" class="form-control" id="catgn" placeholder="4 category">
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="form-label">Subcategory</label>
                            <div class="d-flex gx-3 mb-3">
                                <div class="g w-100">
                                    <div class="form-control-wrap">
                                        <input runat="server" type="text" class="form-control" id="cate" placeholder="e.g. Web Development">
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                        <div class="form-group">
                            
                            <asp:Button ID="Button3" runat="server" class="btn btn-primary" OnClick="Button2_Click1" Text="Add" />





                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
   <!-- Edit Category Modal -->
<!-- Edit Modal -->
<div class="modal fade" id="editCategoryModal" tabindex="-1" role="dialog" aria-labelledby="editCategoryModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="editCategoryModalLabel">Edit Category</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
        <div id="editCategoryForm"  >
            <div class="modal-body">
                <div class="form-group">
                    <label for="editCategoryName">Category Name</label>
                    <input type="text" class="form-control" id="editCategoryName" name="editCategoryName" data-name="CategoryName">
                     <input type="text" class="form-control" id="edituid" name="edituid" data-name="uid">
                </div>

                <div class="form-group">
                    <label for="editsubcategories">subcategories</label>
                    <input type="text" class="form-control" id="editsubcategories" name="editsubcategories" data-name="subcategories">
                </div>
                <div class="form-group">
                    <label for="editCategoryDescription">Description</label>
                    <textarea class="form-control" id="editCategoryDescription" name="editCategoryDescription" data-name="Description"></textarea>
          </div>
            <div class="form-group">
             <label for="editCategories">Categories</label>
            <input type="text" class="form-control" id="editCategories" name="editCategories" data-name="Categories">
          </div>
          <div class="form-group">
            <label for="editCategoryImage">Category Image</label>
            <input type="file" class="form-control-file" id="editCategoryImage" name="editCategoryImage" data-name="CategoryImage" value="oldFileName.jpg">
          </div>
        </div>
        
          
            <ul class="d-flex justify-content-center gx-4 mt-4">
                            <li>
                                 <asp:Button ID="Button4" runat="server" class="btn btn-primary" OnClick="Button4_Click4" Text="Save Edit" />


                            </li>
                            <li>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            </li>
                        </ul>
            
             

        
      </div>
    </div>
  </div>
</div>


<!-- .Edit Modal-Content -->
    <div class="modal fade" id="modalDelete">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <a href="#" class="close" data-dismiss="modal"><em class="icon ni ni-cross-sm"></em></a>
                <div class="modal-body modal-body-lg text-center">
                    <div class="nk-modal py-4">
                        <em class="nk-modal-icon icon icon-circle icon-circle-xxl ni ni-cross bg-danger"></em>
                        <h4 class="nk-modal-title">Are You Sure ?</h4>
                        <div class="nk-modal-text mt-n2">
                            <p class="text-soft">This event data will be removed permanently.</p>
                        </div>
                        <ul class="d-flex justify-content-center gx-4 mt-4">
                            <li>
                                 <asp:Button ID="Button2" runat="server" class="btn btn-primary" OnClick="Button2_Click2" Text="Yes, Delete it" />


                            </li>
                            <li>
                                <button data-dismiss="modal" data-toggle="modal" data-target="#editEventPopup" class="btn btn-danger btn-dim">Cancel</button>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- .Delete Modal-content -->

               <input type="hidden" class="form-control" id="deletename" name="deletename" data-name="deletename" value="test">
     



    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script>

        $(document).on("click", ".editbtn", function () {


            var categoryName = $(this).data("name");
            var description = $(this).data("description");
            var imageURL = $(this).data("categoryimage");
            var categories = $(this).data("catagories");
            var subcategories = $(this).data("subcategories");
            var uid = $(this).data("uid");


            $("#editCategoryName").val(categoryName);
            $("#editCategoryDescription").text(description);
            $("#editCategories").val(categories);
            $("#editsubcategories").val(subcategories);
            $("#edituid").val(uid);

            document.getElementById("olurl").value = imageURL;


            $("#editCategoryModal").modal("show");

        });



        $(document).on("click", ".delbtn", function () {


            var categoryName = $(this).data("name");

            document.getElementById("deletename").value = categoryName;






        });




    </script>



</asp:Content>


