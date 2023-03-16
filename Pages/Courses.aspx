<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="Final_wapp_assignemnt.Pages.WebForm3" %>
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
                                            <h3 class="nk-block-title page-title">Courses</h3>
                                            <div class="nk-block-des text-soft">
                                                <p>You have different Courses.</p>
                                            </div>
                                        </div>
                                    </div><!-- .nk-block-between -->
                                </div><!-- .nk-block-head -->
                                <div class="nk-block">
                                    <div class="card card-stretch">
                                        <div class="card-inner-group">
                                            <div class="card-inner p-0">
                                                <table class="nk-tb-list">
                                                    <thead>
                                                        <tr class="nk-tb-item">
                                                            <th class="nk-tb-col">Course Image</th>
                                                            <th class="nk-tb-col">Course Name</th>
                                                            <th class="nk-tb-col" >Category</th>
                                                            <th class="nk-tb-col" >Instractor</th>
                                                            <th class="nk-tb-col">Descsription</th>

                                                           
                                                        </tr><!-- .nk-tb-item -->
                                                   
                                                    
                                                         <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2">
                                                             <ItemTemplate>
                                                                 <tr class="nk-tb-item">
                                                                     <th class="nk-tb-col "><image hight="10px" src="<%# Eval("[image]") %>"></image></th>
                                                                     <th class="nk-tb-col"> <%# Eval("[name2]") %></th>
                                                                     <th class="nk-tb-col"><span><%# Eval("[name]") %></span></th>
                                                                     <th class="nk-tb-col"><span><%# Eval("[name1]") %></span></th>
                                                                     <th class="nk-tb-col"><span><%# Eval("[description]") %></span></th>
                                                           

                                                               </tr>
                                                       
                                                          </ItemTemplate>
                                                        </asp:DataList>
                                                            
                                                                 </thead>
                                                                <!-- .nk-tb-item -->
                                                               
                                                        
                                                </table>
                                                <!-- .nk-tb-list -->
                                            </div>
                                           
                                        </div>
                                    </div><!-- .card -->
                                </div><!-- .nk-block -->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- content @e -->
</asp:Content>
