<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html class="no-js" lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <title>:: My-Task:: Ourclients</title>
    <link rel="icon" href="favicon.ico" type="image/x-icon"> <!-- Favicon-->
    <!-- project css file  -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/assets/css/my-task.style.min.css">
</head>
<body>

<div id="mytask-layout" class="theme-indigo">

     <!-- sidebar -->
		<div class="sidebar px-4 py-4 py-md-5 me-0">
			<div class="d-flex flex-column h-100">
				<a href="index.html" class="mb-0 brand-icon"> <span
					class="logo-icon"> <svg width="35" height="35"
							fill="currentColor" class="bi bi-clipboard-check"
							viewBox="0 0 16 16">
                            <path fill-rule="evenodd"
								d="M10.854 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z" />
                            <path
								d="M4 1.5H3a2 2 0 0 0-2 2V14a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V3.5a2 2 0 0 0-2-2h-1v1h1a1 1 0 0 1 1 1V14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V3.5a1 1 0 0 1 1-1h1v-1z" />
                            <path
								d="M9.5 1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-3a.5.5 0 0 1-.5-.5v-1a.5.5 0 0 1 .5-.5h3zm-3-1A1.5 1.5 0 0 0 5 1.5v1A1.5 1.5 0 0 0 6.5 4h3A1.5 1.5 0 0 0 11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3z" />
                        </svg>
				</span> <span class="logo-text">My-Task</span>
				</a>
				<!-- Menu: main ul -->

				<ul class="menu-list flex-grow-1 mt-3">
					<li class="collapsed"><a class="m-link active"
						data-bs-toggle="collapse" data-bs-target="#dashboard-Components"
						href="#"> <i class="icofont-home fs-5"></i> <span>Dashboard</span>
							<span class="arrow icofont-dotted-down ms-auto text-end fs-5"></span></a>
						<!-- Menu: Sub menu ul -->
						<ul class="sub-menu collapse show" id="dashboard-Components">
							<li><a class="ms-link active"
								href="<%=request.getContextPath()%>/Dashboard"> <span>Admin
										Dashboard</span></a></li>
							<li><a class="ms-link"
								href="<%=request.getContextPath()%>/KhoaHocDashboard"> <span>Khóa
										học Dashboard</span></a></li>
						</ul></li>
					<li class="collapsed"><a class="m-link"
						data-bs-toggle="collapse" data-bs-target="#project-Components"
						href="#"> <i class="icofont-briefcase"></i><span>Khóa
								học</span> <span
							class="arrow icofont-dotted-down ms-auto text-end fs-5"></span></a> <!-- Menu: Sub menu ul -->
						<ul class="sub-menu collapse" id="project-Components">
							<!--<li><a class="ms-link" href="projects.html"><span>Khóa học</span></a></li>  -->
							<li><a class="ms-link"
								href="<%=request.getContextPath()%>/KhoaHoc"><span>Khóa
										học</span></a></li>
						</ul></li>

					<li class="collapsed"><a class="m-link"
						data-bs-toggle="collapse" data-bs-target="#client-Components"
						href="#"><i class="icofont-user-male"></i> <span>Giảng
								viên</span> <span
							class="arrow icofont-dotted-down ms-auto text-end fs-5"></span></a> <!-- Menu: Sub menu ul -->
						<ul class="sub-menu collapse" id="client-Components">
							<li><a class="ms-link" href="<%=request.getContextPath()%>/giangvien"> <span>Danh
										sách</span></a></li>
							<li><a class="ms-link" href="profile.html"> <span>Hồ
										sơ giảng viên</span></a></li>
						</ul></li>
					<li class="collapsed"><a class="m-link"
						data-bs-toggle="collapse" data-bs-target="#emp-Components"
						href="#"><i class="icofont-users-alt-5"></i> <span>Học
								viên</span> <span
							class="arrow icofont-dotted-down ms-auto text-end fs-5"></span></a> <!-- Menu: Sub menu ul -->
						<ul class="sub-menu collapse" id="emp-Components">
							<li><a class="ms-link" href="<%=request.getContextPath()%>/hocvien"> <span>Học
										viên</span></a></li>
							<li><a class="ms-link" href="employee-profile.html"> <span>Hồ
										sơ học viên</span></a></li>
						</ul></li>
				</ul>
				<!-- Theme: Switch Theme -->
				<ul class="list-unstyled mb-0">
					<li class="d-flex align-items-center justify-content-center">
						<div class="form-check form-switch theme-switch">
							<input class="form-check-input" type="checkbox" id="theme-switch">
							<label class="form-check-label" for="theme-switch">Enable
								Dark Mode!</label>
						</div>
					</li>
					<li class="d-flex align-items-center justify-content-center">
						<div class="form-check form-switch theme-rtl">
							<input class="form-check-input" type="checkbox" id="theme-rtl">
							<label class="form-check-label" for="theme-rtl">Enable
								RTL Mode!</label>
						</div>
					</li>
				</ul>

				<!-- Menu: menu collepce btn -->
				<button type="button"
					class="btn btn-link sidebar-mini-btn text-light">
					<span class="ms-2"><i class="icofont-bubble-right"></i></span>
				</button>
			</div>
		</div>
		<!-- end sider bar -->
<!-- denday -->
    <!-- main body area -->
    <div class="main px-lg-4 px-md-4">

        <!-- Body: Header -->
        <div class="header">
            <nav class="navbar py-4">
                <div class="container-xxl">
    
                    <!-- header rightbar icon -->
                    <div class="h-right d-flex align-items-center mr-5 mr-lg-0 order-1">
                        <div class="dropdown notifications zindex-popover">
                            <a class="nav-link dropdown-toggle pulse" href="#" role="button" data-bs-toggle="dropdown">
                                <i class="icofont-alarm fs-5"></i>
                                <span class="pulse-ring"></span>
                            </a>
                            <div id="NotificationsDiv" class="dropdown-menu rounded-lg shadow border-0 dropdown-animation dropdown-menu-sm-end p-0 m-0">
                                <div class="card border-0 w380">
                                    <div class="card-header border-0 p-3">
                                        <h5 class="mb-0 font-weight-light d-flex justify-content-between">
                                            <span>Thông báo</span>
                                            <span class="badge text-white">6</span>
                                        </h5>
                                    </div>
                                    <div class="tab-content card-body">
                                        <div class="tab-pane fade show active">
                                            <ul class="list-unstyled list mb-0">
                                                <li class="py-2 mb-1 border-bottom">
                                                    <a href="javascript:void(0);" class="d-flex">
                                                        <img class="avatar rounded-circle" src="${pageContext.request.contextPath}/dist/assets/images/xs/avatar1.jpg" alt="">
                                                        <div class="flex-fill ms-2">
                                                            <p class="d-flex justify-content-between mb-0 "><span class="font-weight-bold">Nguyễn Văn A</span> <small>2 phút trước</small></p>
                                                            <span class="">Đã bắt đầu lớp học</span>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="py-2 mb-1 border-bottom">
                                                    <a href="javascript:void(0);" class="d-flex">
                                                        <div class="avatar rounded-circle no-thumbnail">KV</div>
                                                        <div class="flex-fill ms-2">
                                                            <p class="d-flex justify-content-between mb-0 "><span class="font-weight-bold">Nguyễn Văn B</span> <small>13 phút trước</small></p>
                                                            <span class="">Xin tài liệu giảng dạy</span>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="py-2 mb-1 border-bottom">
                                                    <a href="javascript:void(0);" class="d-flex">
                                                        <img class="avatar rounded-circle" src="${pageContext.request.contextPath}/dist/assets/images/xs/avatar3.jpg" alt="">
                                                        <div class="flex-fill ms-2">
                                                            <p class="d-flex justify-content-between mb-0 "><span class="font-weight-bold">Nguyễn Văn C</span> <small>1 giờ trước</small></p>
                                                            <span class="">Đã bắt đầu lớp học</span>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="py-2 mb-1 border-bottom">
                                                    <a href="javascript:void(0);" class="d-flex">
                                                        <img class="avatar rounded-circle" src="${pageContext.request.contextPath}/dist/assets/images/xs/avatar5.jpg" alt="">
                                                        <div class="flex-fill ms-2">
                                                            <p class="d-flex justify-content-between mb-0 "><span class="font-weight-bold">Trần Văn A</span> <small>4 phút trước</small></p>
                                                            <span class="">Đã bắt đầu lớp học</span>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="py-2 mb-1 border-bottom">
                                                    <a href="javascript:void(0);" class="d-flex">
                                                        <img class="avatar rounded-circle" src="${pageContext.request.contextPath}/dist/assets/images/xs/avatar6.jpg" alt="">
                                                        <div class="flex-fill ms-2">
                                                            <p class="d-flex justify-content-between mb-0 "><span class="font-weight-bold">Trần Văn B</span> <small>3 giờ trước</small></p>
                                                            <span class="">Đã kết thúc lớp học</span>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="py-2">
                                                    <a href="javascript:void(0);" class="d-flex">
                                                        <img class="avatar rounded-circle" src="${pageContext.request.contextPath}/dist/assets/images/xs/avatar7.jpg" alt="">
                                                        <div class="flex-fill ms-2">
                                                            <p class="d-flex justify-content-between mb-0 "><span class="font-weight-bold">Lê Thị A</span> <small class="">1 ngày trước</small></p>
                                                            <span class="">Đã kết thúc lớp học</span>
                                                        </div>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="dropdown user-profile ml-2 ml-sm-3 d-flex align-items-center zindex-popover">
                            <div class="u-info me-2">
                                <p class="mb-0 text-end line-height-sm "><span class="font-weight-bold">Tên quản trị viên</span></p>
                                <small>Hồ sơ quản trị viên</small>
                            </div>
                            <a class="nav-link dropdown-toggle pulse p-0" href="#" role="button" data-bs-toggle="dropdown" data-bs-display="static">
                                <img class="avatar lg rounded-circle img-thumbnail" src="${pageContext.request.contextPath}/dist/assets/images/profile_av.png" alt="profile">
                            </a>
                            <div class="dropdown-menu rounded-lg shadow border-0 dropdown-animation dropdown-menu-end p-0 m-0">
                                <div class="card border-0 w280">
                                    <div class="card-body pb-0">
                                        <div class="d-flex py-1">
                                            <img class="avatar rounded-circle" src="${pageContext.request.contextPath}/dist/assets/images/profile_av.png" alt="profile">
                                            <div class="flex-fill ms-3">
                                                <p class="mb-0"><span class="font-weight-bold">Vũ Cao X</span></p>
                                                <small class="">VuCaoX@gmail.com</small>
                                            </div>
                                        </div>
                                        
                                        <div><hr class="dropdown-divider border-dark"></div>
                                    </div>
                                    <div class="list-group m-2 ">
                                        <a href="task.html" class="list-group-item list-group-item-action border-0 "><i class="icofont-tasks fs-5 me-3"></i>Công việc của tôi</a>
                                        <a href="members.html" class="list-group-item list-group-item-action border-0 "><i class="icofont-ui-user-group fs-6 me-3"></i>Thành viên</a>
                                        <a href="ui-elements/auth-signin.html" class="list-group-item list-group-item-action border-0 "><i class="icofont-logout fs-6 me-3"></i>Đăng xuất</a>
                                        <div><hr class="dropdown-divider border-dark"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
    
                    <!-- menu toggler -->
                    <button class="navbar-toggler p-0 border-0 menu-toggle order-3" type="button" data-bs-toggle="collapse" data-bs-target="#mainHeader">
                        <span class="fa fa-bars"></span>
                    </button>
    
                    <!-- main menu Search-->
                    <div class="order-0 col-lg-4 col-md-4 col-sm-12 col-12 mb-3 mb-md-0 ">
                        <div class="input-group flex-nowrap input-group-lg">
                            <button type="button" class="input-group-text" id="addon-wrapping"><i class="fa fa-search"></i></button>
                            <input type="search" class="form-control" placeholder="Tìm kiếm" aria-label="search" aria-describedby="addon-wrapping">
                            <button type="button" class="input-group-text add-member-top" id="addon-wrappingone" data-bs-toggle="modal" data-bs-target="#addUser"><i class="fa fa-plus"></i></button>
                        </div>
                    </div>
    
                </div>
            </nav>
        </div>

        <!-- Body: Body -->
        <div class="body d-flex py-lg-3 py-md-2">
            <div class="container-xxl">
                <div class="row clearfix">
                    <div class="col-md-12">
                        <div class="card border-0 mb-4 no-bg">
                            <div class="card-header py-3 px-0 d-flex align-items-center  justify-content-between border-bottom">
                                <h3 class=" fw-bold flex-fill mb-0">Giảng viên</h3>
                                <div class="col-auto d-flex">
                                    <button type="button" class="btn btn-dark ms-1 " data-bs-toggle="modal" data-bs-target="#createproject"><i class="icofont-plus-circle me-2 fs-6"></i>Thêm Giảng viên</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- Row End -->
                <div class="row g-3 row-cols-1 row-cols-sm-1 row-cols-md-1 row-cols-lg-2 row-cols-xl-2 row-cols-xxl-2 row-deck py-1 pb-4">
                    <div class="col">
                        <div class="card teacher-card">
                            <div class="card-body  d-flex">
                                <div class="profile-av pe-xl-4 pe-md-2 pe-sm-4 pe-4 text-center w220">
                                    <img src="${pageContext.request.contextPath}/dist/assets/images/lg/avatar3.jpg" alt="" class="avatar xl rounded-circle img-thumbnail shadow-sm">
                                    <div class="about-info d-flex align-items-center mt-1 justify-content-center flex-column">
                                       <h6 class="mb-0 fw-bold d-block fs-6 mt-2">Giảng viên</h6>
                                        <div class="btn-group mt-2" role="group" aria-label="Basic outlined example">
                                            <button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#editproject"><i class="icofont-edit text-success"></i></button>
                                            <button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#deleteproject"><i class="icofont-ui-delete text-danger"></i></button>
                                        </div>  
                                    </div>
                                </div>
                                <div class="teacher-info border-start ps-xl-4 ps-md-3 ps-sm-4 ps-4 w-100">
                                    <h6  class="mb-0 mt-2  fw-bold d-block fs-6">Giảng viên lớp 2</h6>
                                    <span class="py-1 fw-bold small-11 mb-0 mt-1 text-muted">Nguyễn Thị A</span>
                                    <div class="video-setting-icon mt-3 pt-3 border-top">
                                        <p>Thạc sĩ</p>
                                    </div>
                                    <div class="d-flex flex-wrap align-items-center ct-btn-set">
                                        <a href="chat.html" class="btn btn-dark btn-sm mt-1 me-1"><i class="icofont-ui-text-chat me-2 fs-6"></i>Trò chuyện</a>
                                        <a href="profile.html" class="btn btn-dark btn-sm mt-1"><i class="icofont-invisible me-2 fs-6"></i>Hồ sơ</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card teacher-card">
                            <div class="card-body  d-flex">
                                <div class="profile-av pe-xl-4 pe-md-2 pe-sm-4 pe-4 text-center w220">
                                    <img src="${pageContext.request.contextPath}/dist/assets/images/lg/avatar3.jpg" alt="" class="avatar xl rounded-circle img-thumbnail shadow-sm">
                                    <div class="about-info d-flex align-items-center mt-1 justify-content-center flex-column">
                                       <h6 class="mb-0 fw-bold d-block fs-6 mt-2">Giảng viên</h6>
                                        <div class="btn-group mt-2" role="group" aria-label="Basic outlined example">
                                            <button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#editproject"><i class="icofont-edit text-success"></i></button>
                                            <button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#deleteproject"><i class="icofont-ui-delete text-danger"></i></button>
                                        </div>  
                                    </div>
                                </div>
                                <div class="teacher-info border-start ps-xl-4 ps-md-3 ps-sm-4 ps-4 w-100">
                                    <h6  class="mb-0 mt-2  fw-bold d-block fs-6">Giảng viên lớp 3</h6>
                                    <span class="py-1 fw-bold small-11 mb-0 mt-1 text-muted">Nguyễn Thị A</span>
                                    <div class="video-setting-icon mt-3 pt-3 border-top">
                                        <p>Thạc sĩ</p>
                                    </div>
                                    <div class="d-flex flex-wrap align-items-center ct-btn-set">
                                        <a href="chat.html" class="btn btn-dark btn-sm mt-1 me-1"><i class="icofont-ui-text-chat me-2 fs-6"></i>Trò chuyện</a>
                                        <a href="profile.html" class="btn btn-dark btn-sm mt-1"><i class="icofont-invisible me-2 fs-6"></i>Hồ sơ</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card teacher-card">
                            <div class="card-body  d-flex">
                                <div class="profile-av pe-xl-4 pe-md-2 pe-sm-4 pe-4 text-center w220">
                                    <img src="${pageContext.request.contextPath}/dist/assets/images/lg/avatar3.jpg" alt="" class="avatar xl rounded-circle img-thumbnail shadow-sm">
                                    <div class="about-info d-flex align-items-center mt-1 justify-content-center flex-column">
                                       <h6 class="mb-0 fw-bold d-block fs-6 mt-2">Giảng viên</h6>
                                        <div class="btn-group mt-2" role="group" aria-label="Basic outlined example">
                                            <button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#editproject"><i class="icofont-edit text-success"></i></button>
                                            <button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#deleteproject"><i class="icofont-ui-delete text-danger"></i></button>
                                        </div>  
                                    </div>
                                </div>
                                <div class="teacher-info border-start ps-xl-4 ps-md-3 ps-sm-4 ps-4 w-100">
                                    <h6  class="mb-0 mt-2  fw-bold d-block fs-6">Giảng viên lớp 1</h6>
                                    <span class="py-1 fw-bold small-11 mb-0 mt-1 text-muted">Nguyễn Thị A</span>
                                    <div class="video-setting-icon mt-3 pt-3 border-top">
                                        <p>Thạc sĩ</p>
                                    </div>
                                    <div class="d-flex flex-wrap align-items-center ct-btn-set">
                                        <a href="chat.html" class="btn btn-dark btn-sm mt-1 me-1"><i class="icofont-ui-text-chat me-2 fs-6"></i>Trò chuyện</a>
                                        <a href="profile.html" class="btn btn-dark btn-sm mt-1"><i class="icofont-invisible me-2 fs-6"></i>Hồ sơ</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card teacher-card">
                            <div class="card-body  d-flex">
                                <div class="profile-av pe-xl-4 pe-md-2 pe-sm-4 pe-4 text-center w220">
                                    <img src="${pageContext.request.contextPath}/dist/assets/images/lg/avatar3.jpg" alt="" class="avatar xl rounded-circle img-thumbnail shadow-sm">
                                    <div class="about-info d-flex align-items-center mt-1 justify-content-center flex-column">
                                       <h6 class="mb-0 fw-bold d-block fs-6 mt-2">Giảng viên</h6>
                                        <div class="btn-group mt-2" role="group" aria-label="Basic outlined example">
                                            <button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#editproject"><i class="icofont-edit text-success"></i></button>
                                            <button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#deleteproject"><i class="icofont-ui-delete text-danger"></i></button>
                                        </div>  
                                    </div>
                                </div>
                                <div class="teacher-info border-start ps-xl-4 ps-md-3 ps-sm-4 ps-4 w-100">
                                    <h6  class="mb-0 mt-2  fw-bold d-block fs-6">Giảng viên lớp 1</h6>
                                    <span class="py-1 fw-bold small-11 mb-0 mt-1 text-muted">Nguyễn Thị A</span>
                                    <div class="video-setting-icon mt-3 pt-3 border-top">
                                        <p>Thạc sĩ</p>
                                    </div>
                                    <div class="d-flex flex-wrap align-items-center ct-btn-set">
                                        <a href="chat.html" class="btn btn-dark btn-sm mt-1 me-1"><i class="icofont-ui-text-chat me-2 fs-6"></i>Trò chuyện</a>
                                        <a href="profile.html" class="btn btn-dark btn-sm mt-1"><i class="icofont-invisible me-2 fs-6"></i>Hồ sơ</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card teacher-card">
                            <div class="card-body  d-flex">
                                <div class="profile-av pe-xl-4 pe-md-2 pe-sm-4 pe-4 text-center w220">
                                    <img src="${pageContext.request.contextPath}/dist/assets/images/lg/avatar3.jpg" alt="" class="avatar xl rounded-circle img-thumbnail shadow-sm">
                                    <div class="about-info d-flex align-items-center mt-1 justify-content-center flex-column">
                                       <h6 class="mb-0 fw-bold d-block fs-6 mt-2">Giảng viên</h6>
                                        <div class="btn-group mt-2" role="group" aria-label="Basic outlined example">
                                            <button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#editproject"><i class="icofont-edit text-success"></i></button>
                                            <button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#deleteproject"><i class="icofont-ui-delete text-danger"></i></button>
                                        </div>  
                                    </div>
                                </div>
                                <div class="teacher-info border-start ps-xl-4 ps-md-3 ps-sm-4 ps-4 w-100">
                                    <h6  class="mb-0 mt-2  fw-bold d-block fs-6">Giảng viên lớp 1</h6>
                                    <span class="py-1 fw-bold small-11 mb-0 mt-1 text-muted">Nguyễn Thị A</span>
                                    <div class="video-setting-icon mt-3 pt-3 border-top">
                                        <p>Thạc sĩ</p>
                                    </div>
                                    <div class="d-flex flex-wrap align-items-center ct-btn-set">
                                        <a href="chat.html" class="btn btn-dark btn-sm mt-1 me-1"><i class="icofont-ui-text-chat me-2 fs-6"></i>Trò chuyện</a>
                                        <a href="profile.html" class="btn btn-dark btn-sm mt-1"><i class="icofont-invisible me-2 fs-6"></i>Hồ sơ</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card teacher-card">
                            <div class="card-body  d-flex">
                                <div class="profile-av pe-xl-4 pe-md-2 pe-sm-4 pe-4 text-center w220">
                                    <img src="${pageContext.request.contextPath}/dist/assets/images/lg/avatar3.jpg" alt="" class="avatar xl rounded-circle img-thumbnail shadow-sm">
                                    <div class="about-info d-flex align-items-center mt-1 justify-content-center flex-column">
                                       <h6 class="mb-0 fw-bold d-block fs-6 mt-2">Giảng viên</h6>
                                        <div class="btn-group mt-2" role="group" aria-label="Basic outlined example">
                                            <button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#editproject"><i class="icofont-edit text-success"></i></button>
                                            <button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#deleteproject"><i class="icofont-ui-delete text-danger"></i></button>
                                        </div>  
                                    </div>
                                </div>
                                <div class="teacher-info border-start ps-xl-4 ps-md-3 ps-sm-4 ps-4 w-100">
                                    <h6  class="mb-0 mt-2  fw-bold d-block fs-6">Giảng viên lớp 1</h6>
                                    <span class="py-1 fw-bold small-11 mb-0 mt-1 text-muted">Nguyễn Thị A</span>
                                    <div class="video-setting-icon mt-3 pt-3 border-top">
                                        <p>Thạc sĩ</p>
                                    </div>
                                    <div class="d-flex flex-wrap align-items-center ct-btn-set">
                                        <a href="chat.html" class="btn btn-dark btn-sm mt-1 me-1"><i class="icofont-ui-text-chat me-2 fs-6"></i>Trò chuyện</a>
                                        <a href="profile.html" class="btn btn-dark btn-sm mt-1"><i class="icofont-invisible me-2 fs-6"></i>Hồ sơ</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

       <!-- Create Client-->
       <div class="modal fade" id="createproject" tabindex="-1"  aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg modal-dialog-scrollable">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title  fw-bold" id="createprojectlLabel"> Thêm Giảng Viên</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="exampleFormControlInput877" class="form-label">Tên Giảng viên</label>
                        <input type="text" class="form-control" id="exampleFormControlInput877" placeholder="Explain what the Project Name">
                    </div>
                    <div class="mb-3">
                        <label for="exampleFormControlInput977" class="form-label">Trình độ học vấn</label>
                        <input type="text" class="form-control" id="exampleFormControlInput977" placeholder="Explain what the Project Name">
                    </div>
                    <div class="mb-3">
                        <label for="formFileMultipleoneone" class="form-label">Hồ sơ giảng viên</label>
                        <input class="form-control" type="file" id="formFileMultipleoneone" >
                    </div>
                    <div class="deadline-form">
                        <form>
                            <div class="row g-3 mb-3">
                            <div class="col">
                                <label for="exampleFormControlInput177" class="form-label">Tên tài khoản</label>
                                <input type="text" class="form-control" id="exampleFormControlInput177" placeholder="Tên tài khoản">
                            </div>
                            <div class="col">
                                <label for="exampleFormControlInput277" class="form-label">Mật khẩu</label>
                                <input type="Password" class="form-control" id="exampleFormControlInput277" placeholder="Mật khẩu">
                            </div>
                            </div>
                            <div class="row g-3 mb-3">
                                <div class="col">
                                    <label for="exampleFormControlInput477" class="form-label">Email</label>
                                    <input type="email" class="form-control" id="exampleFormControlInput477" placeholder="Email">
                                </div>
                                <div class="col">
                                    <label for="exampleFormControlInput777" class="form-label">Số điện thoại</label>
                                    <input type="text" class="form-control" id="exampleFormControlInput777" placeholder="Số điện thoại">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="mb-3">          
                        <label for="exampleFormControlTextarea78" class="form-label">Mô tả</label>
                        <textarea class="form-control" id="exampleFormControlTextarea78" rows="3" placeholder="Mô tả"></textarea>
                    </div> 
                    <div class="table-responsive">
                        <table class="table table-striped custom-table">
                            <thead>
                                <tr>
                                    <th>Quyền</th>
                                    <th class="text-center">Đọc</th>
                                    <th class="text-center">Chỉnh sửa</th>
                                    <th class="text-center">Tạo mới</th>
                                    <th class="text-center">Xoá</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="fw-bold">Projects</td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault1" checked>
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault2" checked>
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault3" checked>
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault4" checked>
                                    </td>
                                </tr>
                                <tr>
                                    <td  class="fw-bold">Tasks</td>
                                    <td class="text-center">
                    
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault7" checked>
                    
                                    </td>
                                    <td class="text-center">
                    
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault8" checked>
                    
                                    </td>
                                    <td class="text-center">
                    
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault9" checked>
                    
                                    </td>
                                    <td class="text-center">
                    
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault10" checked>
                    
                                    </td>
                                </tr>
                                <tr>
                                    <td  class="fw-bold">Chat</td>
                                    <td class="text-center">
                    
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault13" checked>
                    
                                    </td>
                                    <td class="text-center">
                    
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault14" checked>
                    
                                    </td>
                                    <td class="text-center">
                    
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault15" checked>
                    
                                    </td>
                                    <td class="text-center">
                    
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault16" checked>
                    
                                    </td>
                                </tr>
                                <tr>
                                    <td  class="fw-bold">Estimates</td>
                                    <td class="text-center">
                    
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault19" checked>
                    
                                    </td>
                                    <td class="text-center">
                    
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault20" checked>
                    
                                    </td>
                                    <td class="text-center">
                    
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault21" checked>
                    
                                    </td>
                                    <td class="text-center">
                    
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault22" checked>
                    
                                    </td>
                                </tr>
                                <tr>
                                    <td  class="fw-bold">Invoices</td>
                                    <td class="text-center">
                    
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault25" checked>
                    
                                    </td>
                                    <td class="text-center">
                    
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault26">
                    
                                    </td>
                                    <td class="text-center">
                    
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault27" checked>
                    
                                    </td>
                                    <td class="text-center">
                    
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault28">
                    
                                    </td>
                                </tr>
                                <tr>
                                    <td  class="fw-bold">Timing Sheets</td>
                                    <td class="text-center">
                    
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault31" checked>
                    
                                    </td>
                                    <td class="text-center">
                    
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault32" checked>
                    
                                    </td>
                                    <td class="text-center">
                    
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault33" checked>
                    
                                    </td>
                                    <td class="text-center">
                    
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault34" checked>
                    
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hoàn thành</button>
                    <button type="button" class="btn btn-primary">Tạo mới</button>
                </div> 
            </div>  
        </div>
       </div>

        <!-- Edit Client-->
        <div class="modal fade" id="editproject" tabindex="-1"  aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-lg modal-dialog-scrollable">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title  fw-bold" id="createprojectlLabelone"> Edit Client</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="mb-3">
                            <label for="exampleFormControlInput8777" class="form-label">Client Name</label>
                            <input type="text" class="form-control" id="exampleFormControlInput8777" value="Ryan Ogden">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlInput9777" class="form-label">Company Name</label>
                            <input type="text" class="form-control" id="exampleFormControlInput9777" value="AgilSoft Tech">
                        </div>
                        <div class="deadline-form">
                            <form>
                                <div class="row g-3 mb-3">
                                <div class="col">
                                    <label for="exampleFormControlInput1777" class="form-label">User Name</label>
                                    <input type="text" class="form-control" id="exampleFormControlInput1777" value="User123">
                                </div>
                                <div class="col">
                                    <label for="exampleFormControlInput2777" class="form-label">Password</label>
                                    <input type="Password" class="form-control" id="exampleFormControlInput2777" value="********">
                                </div>
                                </div>
                                <div class="row g-3 mb-3">
                                    <div class="col">
                                        <label for="exampleFormControlInput4777" class="form-label">Email ID</label>
                                        <input type="email" class="form-control" id="exampleFormControlInput4777" placeholder="ryanogden@gmail.com">
                                    </div>
                                    <div class="col">
                                        <label for="exampleFormControlInput7777" class="form-label">Phone</label>
                                        <input type="text" class="form-control" id="exampleFormControlInput7777" value="202-555-0174">
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="mb-3">          
                            <label for="exampleFormControlTextarea787" class="form-label">Description (optional)</label>
                            <textarea class="form-control" id="exampleFormControlTextarea787" rows="3" >Vestibulum ante ipsum primis in faucibus orci luctus et ultrices</textarea>
                        </div> 
                        <div class="table-responsive">
                            <table class="table table-striped custom-table">
                                <thead>
                                    <tr>
                                        <th>Project Permission</th>
                                        <th class="text-center">Read</th>
                                        <th class="text-center">Write</th>
                                        <th class="text-center">Create</th>
                                        <th class="text-center">Delete</th>
                                        <th class="text-center">Import</th>
                                        <th class="text-center">Export</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="fw-bold">Projects</td>
                                        <td class="text-center">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault117" checked>
                                        </td>
                                        <td class="text-center">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault127" checked>
                                        </td>
                                        <td class="text-center">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault37" checked>
                                        </td>
                                        <td class="text-center">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault47" checked>
                                        </td>
                                        <td class="text-center">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault57" checked>
                                        </td>
                                        <td class="text-center">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault67" checked>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td  class="fw-bold">Tasks</td>
                                        <td class="text-center">
                        
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault77" checked>
                        
                                        </td>
                                        <td class="text-center">
                        
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault87" checked>
                        
                                        </td>
                                        <td class="text-center">
                        
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault97" checked>
                        
                                        </td>
                                        <td class="text-center">
                        
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault107" checked>
                        
                                        </td>
                                        <td class="text-center">
                        
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault1179" checked>
                        
                                        </td>
                                        <td class="text-center">
                        
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault1279" checked>
                        
                                        </td>
                                    </tr>
                                    <tr>
                                        <td  class="fw-bold">Chat</td>
                                        <td class="text-center">
                        
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault137" checked>
                        
                                        </td>
                                        <td class="text-center">
                        
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault147" checked>
                        
                                        </td>
                                        <td class="text-center">
                        
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault157" checked>
                        
                                        </td>
                                        <td class="text-center">
                        
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault167" checked>
                        
                                        </td>
                                        <td class="text-center">
                        
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault177" checked>
                        
                                        </td>
                                        <td class="text-center">
                        
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault187" checked>
                        
                                        </td>
                                    </tr>
                                    <tr>
                                        <td  class="fw-bold">Estimates</td>
                                        <td class="text-center">
                        
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault197" checked>
                        
                                        </td>
                                        <td class="text-center">
                        
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault207" checked>
                        
                                        </td>
                                        <td class="text-center">
                        
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault217" checked>
                        
                                        </td>
                                        <td class="text-center">
                        
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault227" checked>
                        
                                        </td>
                                        <td class="text-center">
                        
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault237" checked>
                        
                                        </td>
                                        <td class="text-center">
                        
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault247" checked>
                        
                                        </td>
                                    </tr>
                                    <tr>
                                        <td  class="fw-bold">Invoices</td>
                                        <td class="text-center">
                        
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault257" checked>
                        
                                        </td>
                                        <td class="text-center">
                        
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault267">
                        
                                        </td>
                                        <td class="text-center">
                        
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault277" checked>
                        
                                        </td>
                                        <td class="text-center">
                        
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault287">
                        
                                        </td>
                                        <td class="text-center">
                        
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault297" checked>
                        
                                        </td>
                                        <td class="text-center">
                        
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault307" checked>
                        
                                        </td>
                                    </tr>
                                    <tr>
                                        <td  class="fw-bold">Timing Sheets</td>
                                        <td class="text-center">
                        
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault317" checked>
                        
                                        </td>
                                        <td class="text-center">
                        
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault327" checked>
                        
                                        </td>
                                        <td class="text-center">
                        
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault337" checked>
                        
                                        </td>
                                        <td class="text-center">
                        
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault347" checked>
                        
                                        </td>
                                        <td class="text-center">
                        
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault357" checked>
                        
                                        </td>
                                        <td class="text-center">
                        
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault367" checked>
                        
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Done</button>
                        <button type="button" class="btn btn-primary">Create</button>
                    </div> 
                </div> 
            </div>
        </div>

        <!-- Modal  Delete Folder/ File-->
        <div class="modal fade" id="deleteproject" tabindex="-1"  aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-md modal-dialog-scrollable">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title  fw-bold" id="deleteprojectLabel"> Delete item Permanently?</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body justify-content-center flex-column d-flex">
                    <i class="icofont-ui-delete text-danger display-2 text-center mt-2"></i>
                    <p class="mt-4 fs-5 text-center">You can only delete this item Permanently</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-danger color-fff">Delete</button>
                </div>
            </div>
            </div>
        </div>
    </div>
</div>

<!-- Jquery Core Js -->
<script src="${pageContext.request.contextPath}/dist/assets/bundles/libscripts.bundle.js"></script>

<!-- Jquery Page Js -->
<script src="${pageContext.request.contextPath}/js/template.js"></script>
</body>
</html>