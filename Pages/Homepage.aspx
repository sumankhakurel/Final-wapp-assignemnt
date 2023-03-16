<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Final_wapp_assignemnt.Pages.WebForm1" %>
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
                                            <h3 class="nk-block-title page-title">Dashboard</h3>
                                            <div class="nk-block-des text-soft">
                                                <p>Welcome GlamEdy Admin Dashboard.</p>
                                            </div>
                                        </div>
                                    </div><!-- .nk-block-between -->
                                </div><!-- .nk-block-head -->
                                <div class="nk-block">
                                    <div class="row g-gs">
                                        
                                        <div class="col-lg-6">
                                            <div class="card card-full">
                                                <div class="card-inner">
                                                    <div class="card-title-group align-start mb-4">
                                                        <div class="card-title">
                                                            <h6 class="title mb-1">Our Categories</h6>
                                                            <p>These are our categories.</p>
                                                        </div>

                                                    </div>
                                                    <!-- .card-title-group -->
                                                    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" CellPadding="10">
                                                        <ItemTemplate>
                                                            <div class="d-flex">
                                                                <ul class="flex-shrink-0 gy-2">
                                                                    <li class="align-center">
                                                                        <span class="dot dot-lg sq mr-1" data-bg="#f98c45"></span>
                                                                        <span><%# Eval("[name]") %></span>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:DataList>

                                                   
                                                <!-- .nk-coin-ovwg -->
                                                </div><!-- .card-inner -->
                                            </div>
                                            <!-- .card -->
                                        </div>
                                        <!-- .col -->
                                        <div class="col-md-6 col-xxl-4">
                                            <div class="card h-100">
                                                <div class="card-inner">
                                                    <div class="card-title-group mb-2">
                                                        <div class="card-title">
                                                            <h6 class="title">Top Courses</h6>
                                                        </div>
                                                        <div class="card-tools">
                                                            <div class="dropdown">
                                                                <a href="#" class="dropdown-toggle link link-light link-sm dropdown-indicator" data-toggle="dropdown">Weekly</a>
                                                                <div class="dropdown-menu dropdown-menu-sm dropdown-menu-right">
                                                                    <ul class="link-list-opt no-bdr">
                                                                        <li><a href="#"><span>Daily</span></a></li>
                                                                        <li><a href="#" class="active"><span>Weekly</span></a></li>
                                                                        <li><a href="#"><span>Monthly</span></a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <ul class="nk-top-products">
                                                        <li class="item">
                                                            <div class="user-avatar sq bg-success-dim mr-3">
                                                                <span>UI/X</span>
                                                            </div>
                                                            <div class="info">
                                                                <div class="title">UI/UX Design with Adobe XD</div>
                                                                <div class="price">$85.00</div>
                                                            </div>
                                                            <div class="total">
                                                                <div class="amount">$2,125.00</div>
                                                                <div class="count">25 Sold</div>
                                                            </div>
                                                        </li>
                                                        <li class="item">
                                                            <div class="user-avatar sq bg-warning-dim mr-3">
                                                                <span>AD</span>
                                                            </div>
                                                            <div class="info">
                                                                <div class="title">Android App Development</div>
                                                                <div class="price">$95.00</div>
                                                            </div>
                                                            <div class="total">
                                                                <div class="amount">$1,710.00</div>
                                                                <div class="count">10 Sold</div>
                                                            </div>
                                                        </li>
                                                        <li class="item">
                                                            <div class="user-avatar sq bg-danger-dim mr-3">
                                                                <span>WD</span>
                                                            </div>
                                                            <div class="info">
                                                                <div class="title">Wordpress Development</div>
                                                                <div class="price">$70.00</div>
                                                            </div>
                                                            <div class="total">
                                                                <div class="amount">$1050.00</div>
                                                                <div class="count">15 Sold</div>
                                                            </div>
                                                        </li>
                                                        <li class="item">
                                                            <div class="user-avatar sq bg-primary-dim mr-3">
                                                                <span>ML</span>
                                                            </div>
                                                            <div class="info">
                                                                <div class="title">Machine Learning</div>
                                                                <div class="price">$110.00</div>
                                                            </div>
                                                            <div class="total">
                                                                <div class="amount">$990.00</div>
                                                                <div class="count">10 Sold</div>
                                                            </div>
                                                        </li>
                                                        <li class="item">
                                                            <div class="user-avatar sq bg-info-dim mr-3">
                                                                <span>RD</span>
                                                            </div>
                                                            <div class="info">
                                                                <div class="title">Responsive Design</div>
                                                                <div class="price">$80.00</div>
                                                            </div>
                                                            <div class="total">
                                                                <div class="amount">$960.00</div>
                                                                <div class="count">12 Sold</div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div><!-- .card-inner -->
                                            </div><!-- .card -->
                                        </div><!-- .col -->
                                        <div class="col-md-6 col-xxl-4">
                                            <div class="card card-full">
                                                <div class="card-inner-group">
                                                    <div class="card-inner">
                                                        <div class="card-title-group">
                                                            <div class="card-title">
                                                                <h6 class="title">Top Instructors</h6>
                                                            </div>
                                                            <div class="card-tools">
                                                                <a href="html/lms/instructor-list.html" class="link">View All</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="card-inner card-inner-md">
                                                        <div class="review-item d-flex justify-content-between">
                                                            <div class="user-card">
                                                                <div class="user-avatar bg-primary-dim">
                                                                    <span>AB</span>
                                                                </div>
                                                                <div class="user-info">
                                                                    <span class="lead-text">Abu Bin Ishtiyak</span>
                                                                    <span class="sub-text">info@softnio.com</span>
                                                                </div>
                                                            </div>
                                                            <div class="review-status">
                                                                <ul class="review-stars d-flex">
                                                                    <li><em class="icon ni ni-star-fill text-warning"></em></li>
                                                                    <li><em class="icon ni ni-star-fill text-warning"></em></li>
                                                                    <li><em class="icon ni ni-star-fill text-warning"></em></li>
                                                                    <li><em class="icon ni ni-star-fill text-warning"></em></li>
                                                                    <li><em class="icon ni ni-star-fill text-warning"></em></li>
                                                                </ul>
                                                                <div class="review-count">25 Reviews</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="card-inner card-inner-md">
                                                        <div class="review-item d-flex justify-content-between">
                                                            <div class="user-card">
                                                                <div class="user-avatar bg-info-dim">
                                                                    <span>AL</span>
                                                                </div>
                                                                <div class="user-info">
                                                                    <span class="lead-text">Ashley Lawson</span>
                                                                    <span class="sub-text">ashley@softnio.com</span>
                                                                </div>
                                                            </div>
                                                            <div class="review-status">
                                                                <ul class="review-stars d-flex">
                                                                    <li><em class="icon ni ni-star-fill text-warning"></em></li>
                                                                    <li><em class="icon ni ni-star-fill text-warning"></em></li>
                                                                    <li><em class="icon ni ni-star-fill text-warning"></em></li>
                                                                    <li><em class="icon ni ni-star-fill text-warning"></em></li>
                                                                    <li><em class="icon ni ni-star-half-fill text-warning"></em></li>
                                                                </ul>
                                                                <div class="review-count">22 Reviews</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="card-inner card-inner-md">
                                                        <div class="review-item d-flex justify-content-between">
                                                            <div class="user-card">
                                                                <div class="user-avatar bg-warning-dim">
                                                                    <span>JM</span>
                                                                </div>
                                                                <div class="user-info">
                                                                    <span class="lead-text">Jane Montgomery</span>
                                                                    <span class="sub-text">jane84@example.com</span>
                                                                </div>
                                                            </div>
                                                            <div class="review-status">
                                                                <ul class="review-stars d-flex">
                                                                    <li><em class="icon ni ni-star-fill text-warning"></em></li>
                                                                    <li><em class="icon ni ni-star-fill text-warning"></em></li>
                                                                    <li><em class="icon ni ni-star-fill text-warning"></em></li>
                                                                    <li><em class="icon ni ni-star-fill text-warning"></em></li>
                                                                    <li><em class="icon ni ni-star-half-fill text-warning"></em></li>
                                                                </ul>
                                                                <div class="review-count">19 Reviews</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="card-inner card-inner-md">
                                                        <div class="review-item d-flex justify-content-between">
                                                            <div class="user-card">
                                                                <div class="user-avatar bg-pink-dim">
                                                                    <span>LH</span>
                                                                </div>
                                                                <div class="user-info">
                                                                    <span class="lead-text">Larry Henry</span>
                                                                    <span class="sub-text">larry108@example.com</span>
                                                                </div>
                                                            </div>
                                                            <div class="review-status">
                                                                <ul class="review-stars d-flex">
                                                                    <li><em class="icon ni ni-star-fill text-warning"></em></li>
                                                                    <li><em class="icon ni ni-star-fill text-warning"></em></li>
                                                                    <li><em class="icon ni ni-star-fill text-warning"></em></li>
                                                                    <li><em class="icon ni ni-star-fill text-warning"></em></li>
                                                                    <li><em class="icon ni ni-star text-warning"></em></li>
                                                                </ul>
                                                                <div class="review-count">24 Reviews</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div><!-- .card -->
                                        </div>
                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- content @e -->
</asp:Content>
