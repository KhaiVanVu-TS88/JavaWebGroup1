<!doctype html>
<%@page import="crm.model.LopHoc"%>
<%@page import="crm.model.KhoaHoc"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html class="no-js" lang="en" dir="ltr">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>:: My-Task:: Projects</title>
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->

<!-- project css file  -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/dist/assets/css/my-task.style.min.css">

<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

</head>

<%
List<KhoaHoc> list = (List<KhoaHoc>) request.getAttribute("KhoaHoc");
List<LopHoc> listLopHoc = (List<LopHoc>) request.getAttribute("LopHoc");
%>

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
		<!-- end siderbar -->
		<!-- main body area -->
		<div class="main px-lg-4 px-md-4">

			<!-- Body: Header -->
			<div class="header">
				<nav class="navbar py-4">
					<div class="container-xxl">

						<!-- header rightbar icon -->
						<div
							class="h-right d-flex align-items-center mr-5 mr-lg-0 order-1">
							<div class="d-flex">
								<a class="nav-link text-primary collapsed" href="help.html"
									title="Get Help"> <i class="icofont-info-square fs-5"></i>
								</a>
								<div class="avatar-list avatar-list-stacked px-3">
									<img class="avatar rounded-circle"
										src="${pageContext.request.contextPath}/dist/assets/images/xs/avatar2.jpg"
										alt=""> <img class="avatar rounded-circle"
										src="${pageContext.request.contextPath}/dist/assets/images/xs/avatar1.jpg"
										alt=""> <img class="avatar rounded-circle"
										src="${pageContext.request.contextPath}/dist/assets/images/xs/avatar3.jpg"
										alt=""> <img class="avatar rounded-circle"
										src="${pageContext.request.contextPath}/dist/assets/images/xs/avatar4.jpg"
										alt=""> <img class="avatar rounded-circle"
										src="${pageContext.request.contextPath}/dist/assets/images/xs/avatar7.jpg"
										alt=""> <img class="avatar rounded-circle"
										src="${pageContext.request.contextPath}/dist/assets/images/xs/avatar8.jpg"
										alt=""> <span
										class="avatar rounded-circle text-center pointer"
										data-bs-toggle="modal" data-bs-target="#addUser"><i
										class="icofont-ui-add"></i></span>
								</div>
							</div>
							<div class="dropdown notifications zindex-popover">
								<a class="nav-link dropdown-toggle pulse" href="#" role="button"
									data-bs-toggle="dropdown"> <i class="icofont-alarm fs-5"></i>
									<span class="pulse-ring"></span>
								</a>
								<div id="NotificationsDiv"
									class="dropdown-menu rounded-lg shadow border-0 dropdown-animation dropdown-menu-sm-end p-0 m-0">
									<div class="card border-0 w380">
										<div class="card-header border-0 p-3">
											<h5
												class="mb-0 font-weight-light d-flex justify-content-between">
												<span>Notifications</span> <span class="badge text-white">11</span>
											</h5>
										</div>
										<div class="tab-content card-body">
											<div class="tab-pane fade show active">
												<ul class="list-unstyled list mb-0">
													<li class="py-2 mb-1 border-bottom"><a
														href="javascript:void(0);" class="d-flex"> <img
															class="avatar rounded-circle"
															src="${pageContext.request.contextPath}/dist/assets/images/xs/avatar1.jpg"
															alt="">
															<div class="flex-fill ms-2">
																<p class="d-flex justify-content-between mb-0 ">
																	<span class="font-weight-bold">Dylan Hunter</span> <small>2MIN</small>
																</p>
																<span class="">Added 2021-02-19 my-Task ui/ux
																	Design <span class="badge bg-success">Review</span>
																</span>
															</div>
													</a></li>
													<li class="py-2 mb-1 border-bottom"><a
														href="javascript:void(0);" class="d-flex">
															<div class="avatar rounded-circle no-thumbnail">DF</div>
															<div class="flex-fill ms-2">
																<p class="d-flex justify-content-between mb-0 ">
																	<span class="font-weight-bold">Diane Fisher</span> <small>13MIN</small>
																</p>
																<span class="">Task added Get Started with Fast
																	Cad project</span>
															</div>
													</a></li>
													<li class="py-2 mb-1 border-bottom"><a
														href="javascript:void(0);" class="d-flex"> <img
															class="avatar rounded-circle sm"
															src="${pageContext.request.contextPath}/dist/assets/images/xs/avatar3.jpg"
															alt="">
															<div class="flex-fill ms-2">
																<p class="d-flex justify-content-between mb-0 ">
																	<span class="font-weight-bold">Andrea Gill</span> <small>1HR</small>
																</p>
																<span class="">Quality Assurance Task Completed</span>
															</div>
													</a></li>
													<li class="py-2 mb-1 border-bottom"><a
														href="javascript:void(0);" class="d-flex"> <img
															class="avatar rounded-circle sm"
															src="${pageContext.request.contextPath}/dist/assets/images/xs/avatar5.jpg"
															alt="">
															<div class="flex-fill ms-2">
																<p class="d-flex justify-content-between mb-0 ">
																	<span class="font-weight-bold">Diane Fisher</span> <small>13MIN</small>
																</p>
																<span class="">Add New Project for App
																	Developemnt</span>
															</div>
													</a></li>
													<li class="py-2 mb-1 border-bottom"><a
														href="javascript:void(0);" class="d-flex"> <img
															class="avatar rounded-circle sm"
															src="${pageContext.request.contextPath}/dist/assets/images/xs/avatar6.jpg"
															alt="">
															<div class="flex-fill ms-2">
																<p class="d-flex justify-content-between mb-0 ">
																	<span class="font-weight-bold">Andrea Gill</span> <small>1HR</small>
																</p>
																<span class="">Add Timesheet For Rhinestone
																	project</span>
															</div>
													</a></li>
													<li class="py-2"><a href="javascript:void(0);"
														class="d-flex"> <img class="avatar rounded-circle sm"
															src="${pageContext.request.contextPath}/dist/assets/images/xs/avatar7.jpg"
															alt="">
															<div class="flex-fill ms-2">
																<p class="d-flex justify-content-between mb-0 ">
																	<span class="font-weight-bold">Zoe Wright</span> <small
																		class="">1DAY</small>
																</p>
																<span class="">Add Calander Event</span>
															</div>
													</a></li>
												</ul>
											</div>
										</div>
										<a class="card-footer text-center border-top-0" href="#">
											View all notifications</a>
									</div>
								</div>
							</div>
							<div
								class="dropdown user-profile ml-2 ml-sm-3 d-flex align-items-center zindex-popover">
								<div class="u-info me-2">
									<p class="mb-0 text-end line-height-sm ">
										<span class="font-weight-bold">Dylan Hunter</span>
									</p>
									<small>Admin Profile</small>
								</div>
								<a class="nav-link dropdown-toggle pulse p-0" href="#"
									role="button" data-bs-toggle="dropdown"
									data-bs-display="static"> <img
									class="avatar lg rounded-circle img-thumbnail"
									src="${pageContext.request.contextPath}/dist/assets/images/profile_av.png"
									alt="profile">
								</a>
								<div
									class="dropdown-menu rounded-lg shadow border-0 dropdown-animation dropdown-menu-end p-0 m-0">
									<div class="card border-0 w280">
										<div class="card-body pb-0">
											<div class="d-flex py-1">
												<img class="avatar rounded-circle sm"
													src="${pageContext.request.contextPath}/dist/assets/images/profile_av.png"
													alt="profile">
												<div class="flex-fill ms-3">
													<p class="mb-0">
														<span class="font-weight-bold">Dylan Hunter</span>
													</p>
													<small class="">Dylan.hunter@gmail.com</small>
												</div>
											</div>

											<div>
												<hr class="dropdown-divider border-dark">
											</div>
										</div>
										<div class="list-group m-2 ">
											<a href="task.html"
												class="list-group-item list-group-item-action border-0 "><i
												class="icofont-tasks fs-5 me-3"></i>My Task</a> <a
												href="members.html"
												class="list-group-item list-group-item-action border-0 "><i
												class="icofont-ui-user-group fs-6 me-3"></i>Giảng viên</a> <a
												href="ui-elements/auth-signin.html"
												class="list-group-item list-group-item-action border-0 "><i
												class="icofont-logout fs-6 me-3"></i>Signout</a>
											<div>
												<hr class="dropdown-divider border-dark">
											</div>
											<a href="ui-elements/auth-signup.html"
												class="list-group-item list-group-item-action border-0 "><i
												class="icofont-contact-add fs-5 me-3"></i>Add personal
												account</a>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- menu toggler -->
						<button class="navbar-toggler p-0 border-0 menu-toggle order-3"
							type="button" data-bs-toggle="collapse"
							data-bs-target="#mainHeader">
							<span class="fa fa-bars"></span>
						</button>

						<!-- main menu Search-->
						<div
							class="order-0 col-lg-4 col-md-4 col-sm-12 col-12 mb-3 mb-md-0 ">
							<div class="input-group flex-nowrap input-group-lg">
								<button type="button" class="input-group-text"
									id="addon-wrapping">
									<i class="fa fa-search"></i>
								</button>
								<input type="search" class="form-control" placeholder="Search"
									aria-label="search" aria-describedby="addon-wrapping">
								<button type="button" class="input-group-text add-member-top"
									id="addon-wrappingone" data-bs-toggle="modal"
									data-bs-target="#addUser">
									<i class="fa fa-plus"></i>
								</button>
							</div>
						</div>

					</div>
				</nav>
			</div>

			<!-- Body: Body -->
			<div class="body d-flex py-lg-3 py-md-2">
				<div class="container-xxl">
					<div class="row align-items-center">
						<div class="border-0 mb-4">
							<div
								class="card-header p-0 no-bg bg-transparent d-flex align-items-center px-0 justify-content-between border-bottom flex-wrap">
								<h3 class="fw-bold py-3 mb-0">Khóa học</h3>
								<div class="d-flex py-2 project-tab flex-wrap w-sm-100">
									<button type="button" class="btn btn-dark w-sm-100"
										data-bs-toggle="modal" data-bs-target="#createproject">
										<i class="icofont-plus-circle me-2 fs-6"></i>Thêm khóa học
									</button>
									<ul
										class="nav nav-tabs tab-body-header rounded ms-3 prtab-set w-sm-100"
										role="tablist">
										<li class="nav-item"><a class="nav-link active"
											data-bs-toggle="tab" href="#All-list" role="tab">Tất cả</a></li>
										<li class="nav-item"><a class="nav-link"
											data-bs-toggle="tab" href="#Started-list" role="tab">Đang
												diễn ra</a></li>
										<li class="nav-item"><a class="nav-link"
											data-bs-toggle="tab" href="#Approval-list" role="tab">Chờ
												phê duyệt</a></li>
										<li class="nav-item"><a class="nav-link"
											data-bs-toggle="tab" href="#Completed-list" role="tab">Hoàn
												thành</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- Row end  -->

					<div class="row align-items-center">
						<div class="col-lg-12 col-md-12 flex-column">
							<div class="tab-content mt-4">
								<div class="tab-pane fade show active" id="All-list">
									<div class="row g-3 gy-5 py-3 row-deck">

										<%
										for (KhoaHoc khoaHoc : list) {
										%>
										<!-- start card -->
										<div
											class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-6 card-khoahoc">
											<div class="card">
												<div class="card-body">
													<div
														class="d-flex align-items-center justify-content-between mt-5">
														<div class="lesson_name">
															<div class="project-block light-info-bg">
																<i class="icofont-book-alt"></i>
															</div>
															<h6 class="mb-0 fw-bold  fs-6  mb-2"><%=khoaHoc.getKhoahoc_ten()%></h6>
														</div>
														<div class="btn-group" role="group"
															aria-label="Basic outlined example">
															<button type="button" class="btn btn-outline-secondary"
																data-bs-toggle="modal" data-bs-target="#readproject">
																<i class="icofont-eye text-success"></i>
															</button>
															<button type="button" class="btn btn-outline-secondary"
																data-bs-toggle="modal" data-bs-target="#editproject">
																<i class="icofont-edit text-success"></i>
															</button>
															<button type="button"
																class="btn btn-outline-secondary btn-xoa"
																id-khoahoc="<%=khoaHoc.getKhoahoc_id()%>"
																data-bs-toggle="modal">
																<!--	data-bs-toggle="modal" data-bs-target="#deleteproject"> -->
																<i class="icofont-ui-delete text-danger"></i>
															</button>
														</div>
													</div>
													<div class="d-flex align-items-center">
														<div class="avatar-list avatar-list-stacked pt-2">
															<img class="avatar rounded-circle sm"
																src="assets/images/xs/avatar2.jpg" alt=""> <img
																class="avatar rounded-circle sm"
																src="assets/images/xs/avatar1.jpg" alt=""> <img
																class="avatar rounded-circle sm"
																src="assets/images/xs/avatar3.jpg" alt=""> <img
																class="avatar rounded-circle sm"
																src="assets/images/xs/avatar4.jpg" alt=""> <img
																class="avatar rounded-circle sm"
																src="assets/images/xs/avatar8.jpg" alt=""> <span
																class="avatar rounded-circle text-center pointer sm"
																data-bs-toggle="modal" data-bs-target="#addUser"><i
																class="icofont-ui-add"></i></span>
														</div>
													</div>
													<div class="row g-2 pt-4">
														<div class="col-6">
															<div class="d-flex align-items-center">
																<i class="icofont-paper-clip"></i> <span class="ms-2">5
																	Attach</span>
															</div>
														</div>
														<div class="col-6">
															<div class="d-flex align-items-center">
																<i class="icofont-sand-clock"></i> <span class="ms-2">4
																	Month</span>
															</div>
														</div>
														<div class="col-6">
															<div class="d-flex align-items-center">
																<i class="icofont-group-students "></i> <span
																	class="ms-2">Giảng viên</span>
															</div>
														</div>
														<div class="col-6">
															<div class="d-flex align-items-center">
																<i class="icofont-ui-text-chat"></i> <span class="ms-2">10</span>
															</div>
														</div>
													</div>
													<div class="dividers-block"></div>
													<div
														class="d-flex align-items-center justify-content-between mb-2">
														<h4 class="small fw-bold mb-0">Progress</h4>
														<span class="small light-danger-bg  p-1 rounded"><i
															class="icofont-ui-clock"></i> 35 Days Left</span>
													</div>
													<div class="progress" style="height: 8px;">
														<div class="progress-bar bg-secondary" role="progressbar"
															style="width: 25%" aria-valuenow="15" aria-valuemin="0"
															aria-valuemax="100"></div>
														<div class="progress-bar bg-secondary ms-1"
															role="progressbar" style="width: 25%" aria-valuenow="30"
															aria-valuemin="0" aria-valuemax="100"></div>
														<div class="progress-bar bg-secondary ms-1"
															role="progressbar" style="width: 10%" aria-valuenow="10"
															aria-valuemin="0" aria-valuemax="100"></div>
													</div>
												</div>
											</div>
										</div>
										<!-- end card -->
										<%
										}
										%>
									</div>
								</div>
								<div class="tab-pane fade" id="Started-list">
									<div class="row g-3 gy-5 py-3 row-deck">
										<div>
											<p>Started-list</p>
										</div>

									</div>
								</div>
								<div class="tab-pane fade" id="Approval-list">
									<div class="row g-3 gy-5 py-3 row-deck">
										<div>
											<p>Approval-list</p>
										</div>

									</div>
								</div>
								<div class="tab-pane fade" id="Completed-list">
									<div class="row g-3 gy-5 py-3 row-deck">
										<div>
											<p>Completed-list</p>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Modal Members-->
			<div class="modal fade" id="addUser" tabindex="-1"
				aria-labelledby="addUserLabel" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title  fw-bold" id="addUserLabel">Thêm
								giảng viên</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<div class="inviteby_email">
								<div class="input-group mb-3">
									<input type="email" class="form-control"
										placeholder="Địa chỉ email" id="exampleInputEmail1"
										aria-describedby="exampleInputEmail1">
									<button class="btn btn-dark" type="button" id="button-addon2">Gửi</button>
								</div>
							</div>
							<div class="members_list">
								<h6 class="fw-bold ">Giảng viên</h6>
								<ul
									class="list-unstyled list-group list-group-custom list-group-flush mb-0">
									<li class="list-group-item py-3 text-center text-md-start">
										<div
											class="d-flex align-items-center flex-column flex-sm-column flex-md-column flex-lg-row">
											<div class="no-thumbnail mb-2 mb-md-0">
												<img class="avatar lg rounded-circle"
													src="${pageContext.request.contextPath}/dist/assets/images/xs/avatar2.jpg"
													alt="">
											</div>
											<div class="flex-fill ms-3 text-truncate">
												<h6 class="mb-0  fw-bold">Rachel Carr(you)</h6>
												<span class="text-muted">rachel.carr@gmail.com</span>
											</div>
											<div class="members-action">
												<span class="members-role ">Admin</span>
												<div class="btn-group">
													<button type="button"
														class="btn bg-transparent dropdown-toggle"
														data-bs-toggle="dropdown" aria-expanded="false">
														<i class="icofont-ui-settings  fs-6"></i>
													</button>
													<ul class="dropdown-menu dropdown-menu-end">
														<li><a class="dropdown-item" href="#"><i
																class="icofont-ui-password fs-6 me-2"></i>ResetPassword</a>
														</li>
														<li><a class="dropdown-item" href="#"><i
																class="icofont-chart-line fs-6 me-2"></i>ActivityReport</a>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</li>
									<li class="list-group-item py-3 text-center text-md-start">
										<div
											class="d-flex align-items-center flex-column flex-sm-column flex-md-column flex-lg-row">
											<div class="no-thumbnail mb-2 mb-md-0">
												<img class="avatar lg rounded-circle"
													src="${pageContext.request.contextPath}/dist/assets/images/xs/avatar3.jpg"
													alt="">
											</div>
											<div class="flex-fill ms-3 text-truncate">
												<h6 class="mb-0  fw-bold">
													Lucas Baker<a href="#" class="link-secondary ms-2">(Resend
														invitation)</a>
												</h6>
												<span class="text-muted">lucas.baker@gmail.com</span>
											</div>
											<div class="members-action">
												<div class="btn-group">
													<button type="button"
														class="btn bg-transparent dropdown-toggle"
														data-bs-toggle="dropdown" aria-expanded="false">
														Members</button>
													<ul class="dropdown-menu dropdown-menu-end">
														<li><a class="dropdown-item" href="#"> <i
																class="icofont-check-circled"></i> <span>All
																	operations permission</span>
														</a></li>
														<li><a class="dropdown-item" href="#"> <i
																class="fs-6 p-2 me-1"></i> <span>Only Invite &
																	manage team</span>
														</a></li>
													</ul>
												</div>
												<div class="btn-group">
													<button type="button"
														class="btn bg-transparent dropdown-toggle"
														data-bs-toggle="dropdown" aria-expanded="false">
														<i class="icofont-ui-settings  fs-6"></i>
													</button>
													<ul class="dropdown-menu dropdown-menu-end">
														<li><a class="dropdown-item" href="#"><i
																class="icofont-delete-alt fs-6 me-2"></i>Delete Member</a></li>
													</ul>
												</div>
											</div>
										</div>
									</li>
									<li class="list-group-item py-3 text-center text-md-start">
										<div
											class="d-flex align-items-center flex-column flex-sm-column flex-md-column flex-lg-row">
											<div class="no-thumbnail mb-2 mb-md-0">
												<img class="avatar lg rounded-circle"
													src="${pageContext.request.contextPath}/dist/assets/images/xs/avatar8.jpg"
													alt="">
											</div>
											<div class="flex-fill ms-3 text-truncate">
												<h6 class="mb-0  fw-bold">Una Coleman</h6>
												<span class="text-muted">una.coleman@gmail.com</span>
											</div>
											<div class="members-action">
												<div class="btn-group">
													<button type="button"
														class="btn bg-transparent dropdown-toggle"
														data-bs-toggle="dropdown" aria-expanded="false">
														Members</button>
													<ul class="dropdown-menu dropdown-menu-end">
														<li><a class="dropdown-item" href="#"> <i
																class="icofont-check-circled"></i> <span>All
																	operations permission</span>
														</a></li>
														<li><a class="dropdown-item" href="#"> <i
																class="fs-6 p-2 me-1"></i> <span>Only Invite &
																	manage team</span>
														</a></li>
													</ul>
												</div>
												<div class="btn-group">
													<div class="btn-group">
														<button type="button"
															class="btn bg-transparent dropdown-toggle"
															data-bs-toggle="dropdown" aria-expanded="false">
															<i class="icofont-ui-settings  fs-6"></i>
														</button>
														<ul class="dropdown-menu dropdown-menu-end">
															<li><a class="dropdown-item" href="#"><i
																	class="icofont-ui-password fs-6 me-2"></i>ResetPassword</a>
															</li>
															<li><a class="dropdown-item" href="#"><i
																	class="icofont-chart-line fs-6 me-2"></i>ActivityReport</a>
															</li>
															<li><a class="dropdown-item" href="#"><i
																	class="icofont-delete-alt fs-6 me-2"></i>Suspend member</a></li>
															<li><a class="dropdown-item" href="#"><i
																	class="icofont-not-allowed fs-6 me-2"></i>Delete Member</a></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Create Project-->
			<div class="modal fade" id="createproject" tabindex="-1"
				aria-hidden="true">
				<div
					class="modal-dialog modal-dialog-centered modal-md modal-dialog-scrollable">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title  fw-bold" id="createprojectlLabel">
								Thêm khóa học</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<div class="mb-3">
								<label for="exampleFormControlInput77" class="form-label">Tên
									khóa học</label> <input type="text" class="form-control"
									id="exampleFormControlInput77" placeholder="Tên khóa học">
							</div>
							<div class="mb-3">
								<label class="form-label">Phân loại</label> <select
									class="form-select"
									aria-label="Default select Project Category">
									<option selected>TOEIC</option>
									<option value="1">IELTS</option>
									<!--có thể them các option vào-->
								</select>
							</div>
							<div class="mb-3">
								<label for="formFileMultipleone" class="form-label">Ảnh
									và tài liệu khóa học</label> <input class="form-control" type="file"
									id="formFileMultipleone" multiple>
							</div>
							<div class="deadline-form">
								<form>
									<div class="row g-3 mb-3">
										<div class="col">
											<label for="datepickerded" class="form-label">Ngày
												bắt đầu</label> <input type="date" class="form-control"
												id="datepickerded">
										</div>
										<div class="col">
											<label for="datepickerdedone" class="form-label">Ngày
												kết thúc</label> <input type="date" class="form-control"
												id="datepickerdedone">
										</div>
									</div>
									<div class="row g-3 mb-3">

										<div class="col-sm-12">
											<label for="formFileMultipleone" class="form-label">Giảng
												viên</label> <select class="form-select" multiple
												aria-label="Default select Priority">
												<option selected>Lucinda Massey</option>
												<option value="1">Ryan Nolan</option>
												<option value="2">Oliver Black</option>
												<option value="3">Adam Walker</option>
												<option value="4">Brian Skinner</option>
												<option value="5">Dan Short</option>
												<option value="5">Jack Glover</option>
											</select>
										</div>
									</div>
								</form>
							</div>
							<div class="row g-3 mb-3"></div>
							<div class="mb-3">
								<label for="exampleFormControlTextarea78" class="form-label">Mô
									tả(Không bắt buộc)</label>
								<textarea class="form-control" id="exampleFormControlTextarea78"
									rows="3"
									placeholder="Thêm bất kỳ chi tiết bổ sung nào về yêu cầu"></textarea>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">Thoát</button>
							<button type="button" class="btn btn-primary">Thêm</button>
						</div>
					</div>
				</div>
			</div>

			<!-- Edit Project-->
			<div class="modal fade" id="editproject" tabindex="-1"
				aria-hidden="true">
				<div
					class="modal-dialog modal-dialog-centered modal-md modal-dialog-scrollable">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title  fw-bold" id="editprojectLabel">
								Chỉnh sửa khóa học</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<div class="mb-3">
								<label for="exampleFormControlInput78" class="form-label">Tên
									khóa học</label> <input type="text" class="form-control"
									id="exampleFormControlInput78" value="Social Geek Made">
							</div>
							<div class="mb-3">
								<label class="form-label">Phân loại</label> <select
									class="form-select" aria-label="Default select example">
									<option selected>TOEIC</option>
									<option value="1">IELTS</option>

								</select>
							</div>
							<div class="mb-3">
								<label for="formFileMultiple456" class="form-label">Ảnh
									và tài liệu khóa học</label> <input class="form-control" type="file"
									id="formFileMultiple456">
							</div>
							<div class="deadline-form">
								<form>
									<div class="row g-3 mb-3">
										<div class="col">
											<label for="datepickerded123" class="form-label">Ngày
												bắt đầu</label> <input type="date" class="form-control"
												id="datepickerded123" value="2021-01-10">
										</div>
										<div class="col">
											<label for="datepickerded456" class="form-label">Ngày
												kết thúc</label> <input type="date" class="form-control"
												id="datepickerded456" value="2021-04-10">
										</div>
									</div>
									<div class="row g-3 mb-3">

										<div class="col-sm-12">
											<label for="formFileMultipleone" class="form-label">Giảng
												viên</label> <select class="form-select" multiple
												aria-label="Default select Priority">
												<option selected>Lucinda Massey</option>
												<option selected value="1">Ryan Nolan</option>
												<option selected value="2">Oliver Black</option>
												<option selected value="3">Adam Walker</option>
												<option selected value="4">Brian Skinner</option>
												<option value="5">Dan Short</option>
												<option value="5">Jack Glover</option>
											</select>
										</div>
									</div>
								</form>
							</div>
							<div class="row g-3 mb-3"></div>
							<div class="mb-3">
								<label for="exampleFormControlTextarea786" class="form-label">Mô
									tả(Không bắt buộc)</label>
								<textarea class="form-control"
									id="exampleFormControlTextarea786" rows="3">Social Geek Made,lorem urna commodo sem. Pellentesque venenatis leo quam, sed mattis sapien lobortis ut. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere
                        </textarea>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">Thoát</button>
							<button type="button" class="btn btn-primary">Lưu</button>
						</div>
					</div>
				</div>
			</div>

			<!-- Modal  Delete Folder/ File-->
			<div class="modal fade" id="deleteproject" tabindex="-1"
				aria-hidden="true">
				<div
					class="modal-dialog modal-dialog-centered modal-md modal-dialog-scrollable">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title  fw-bold" id="deleteprojectLabel">
								Xóa khóa học</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body justify-content-center flex-column d-flex">
							<i
								class="icofont-ui-delete text-danger display-2 text-center mt-2"></i>
							<p class="mt-4 fs-5 text-center">Bạn chắc chắn muốn xóa khóa
								học này</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">Thoát</button>
							<button type="button" class="btn btn-danger color-fff">Xóa</button>
						</div>
					</div>
				</div>
			</div>

			<!-- Modal  read Khóa học-->
			<div class="modal fade" id="readproject" tabindex="-1"
				aria-hidden="true">
				<div
					class="modal-dialog modal-dialog-centered modal-xl modal-dialog-scrollable">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title  fw-bold" id="readprojectLabel">Danh
								sách lớp học</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>

						</div>

						<div class="modal-body justify-content-center flex-column d-flex">
							<div class="card mb-3">
								<div class="card-header py-3  bg-transparent border-bottom-0">
									<h6 class="mb-0 fw-bold ">Datatable</h6>
									<div class="text-end">
										<!-- them lop hoc -->
									</div>
								</div>
								<div class="card-body">
									<table id="patient-table"
										class="table table-hover align-middle mb-0"
										style="width: 100%;">
										<thead>
											<tr>
												<th>Id lớp học</th>
												<th>Giáo viên</th>
												<th>Số học sinh</th>
												<th>Mô tả</th>
												<th>Ngày bắt đầu</th>
												<th>Ngày kết thúc</th>
												<th>Tiến độ</th>
												<th>Trạng thái</th>
												<th>Hoạt động</th>
											</tr>
										</thead>
										<tbody>
											<!-- Bat dau danh sach cac lop hoc trong mot khoa hoc -->
											<%
											for (LopHoc lopHoc : listLopHoc) {
											%>
											<tr>
												<td><%=lopHoc.getLophoc_giaovien_id()%></td>
												<td><img
													src="${pageContext.request.contextPath}/dist/assets/images/xs/avatar3.jpg"
													class="avatar sm rounded-circle me-2" alt="profile-image"><span><%=lopHoc.getLophoc_giaovien_id()%>
												</span></td>
												<td><%=lopHoc.getLophoc_soluonghv()%></td>
												<td><%=lopHoc.getLophoc_mota()%></td>
												<td><%=lopHoc.getLophoc_ngaybatdau()%></td>
												<td><%=lopHoc.getLophoc_ngayketthuc()%></td>
												<td>
													<div class="progress" style="height: 3px;">
														<div class="progress-bar progress-bar-warning"
															role="progressbar" aria-valuenow="40" aria-valuemin="0"
															aria-valuemax="100" style="width: 40%;">
															<span class="sr-only">40% Complete</span>
														</div>
													</div>
												</td>
												<td><span class="badge bg-info"><%=lopHoc.getLophoc_trangthai()%></span></td>

												<td>
													<div class="btn-group" role="group"
														aria-label="Basic outlined example">
														<button type="button" class="btn btn-outline-secondary"
															data-bs-toggle="modal" data-bs-target="#readclass">
															<i class="icofont-eye text-success"></i>
														</button>
														<button type="button" class="btn btn-outline-secondary"
															data-bs-toggle="modal" data-bs-target="#editclass">
															<i class="icofont-edit text-success"></i>
														</button>
														<button type="button"
															class="btn btn-outline-secondary btn-xoa-lophoc"
															id-lophoc="<%=lopHoc.getLophoc_id()%>"
															data-bs-toggle="modal">
															<!-- 	data-bs-toggle="modal" data-bs-target="#deleteclass"> -->
															<i class="icofont-ui-delete text-danger"></i>
														</button>
													</div>
												</td>
											</tr>

											<%
											}
											%>
											<!-- ket thuc danh sach cac lop hoc trong mot khoa hoc -->
										</tbody>
									</table>
								</div>
							</div>
						</div>

						<div class="modal-footer">
							<button type="button" class="btn btn-dark w-sm-100"
								data-bs-toggle="modal" data-bs-target="#createclass">
								<i class="icofont-plus-circle me-2 fs-6"></i>Thêm lớp học
							</button>
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">Thoát</button>
							<!-- <button type="button" class="btn btn-danger color-fff">Thêm</button> -->
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>


	<!-- Modal  Read class Folder/ File-->
	<div class="modal fade" id="readclass" tabindex="-1" aria-hidden="true">
		<div
			class="modal-dialog modal-dialog-centered modal-xl modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title  fw-bold" id="readclassLabel">Danh sách
						sinh viên lớp +"tên lớp"</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>

				</div>

				<div class="modal-body justify-content-center flex-column d-flex">
					<div class="card mb-3">
						<div class="card-header py-3  bg-transparent border-bottom-0">
							<h6 class="mb-0 fw-bold ">Datatable</h6>
							<div class="text-end">
								<button type="button" class="btn btn-dark w-sm-100"
									data-bs-toggle="modal" data-bs-target="#createstudent">
									<i class="icofont-plus-circle me-2 fs-6"></i>Thêm lớp học
								</button>
							</div>
						</div>
						<div class="card-body">
							<table id="patient-table"
								class="table table-hover align-middle mb-0" style="width: 100%;">
								<thead>
									<tr>
										<th>Id sinh viên</th>
										<th>Họ tên</th>
										<th>Điểm số</th>
										<th>Đánh giá</th>
										<th>Ngày đăng ký</th>
										<!-- <th>Ngày kết thúc</th> -->
										<th>Tiến độ</th>
										<th>Trạng thái</th>
										<th>Hoạt động</th>
									</tr>
								</thead>
								<tbody>
									<!-- start danh sach sinh vien trong lop -->
									<tr>
										<td>ST-0001</td>
										<td><img
											src="${pageContext.request.contextPath}/dist/assets/images/xs/avatar3.jpg"
											class="avatar sm rounded-circle me-2" alt="profile-image"><span>Molly
										</span></td>
										<td>45</td>
										<td>70 Bowman St. South Windsor, CT 06074</td>
										<td>May 13, 2021</td>
										<!-- <td>May 16, 2021</td> -->
										<td>
											<div class="progress" style="height: 3px;">
												<div class="progress-bar progress-bar-warning"
													role="progressbar" aria-valuenow="40" aria-valuemin="0"
													aria-valuemax="100" style="width: 40%;">
													<span class="sr-only">40% Complete</span>
												</div>
											</div>
										</td>
										<td><span class="badge bg-info">Đang diễn ra</span></td>

										<td>
											<div class="btn-group" role="group"
												aria-label="Basic outlined example">
												<button type="button" class="btn btn-outline-secondary"
													data-bs-toggle="modal" data-bs-target="#">
													<i class="icofont-eye text-success"></i>
												</button>
												<button type="button" class="btn btn-outline-secondary"
													data-bs-toggle="modal" data-bs-target="#">
													<i class="icofont-edit text-success"></i>
												</button>
												<button type="button" class="btn btn-outline-secondary"
													data-bs-toggle="modal" data-bs-target="#deletestudent">
													<i class="icofont-ui-delete text-danger"></i>
												</button>
											</div>
										</td>
									</tr>
									<tr>
										<td>ST-0011</td>
										<td><img
											src="${pageContext.request.contextPath}/dist/assets/images/xs/avatar1.jpg"
											class="avatar sm rounded-circle me-2" alt="profile-image"><span>Brian</span></td>
										<td>35</td>
										<td>123 6th St. Melbourne, FL 32904</td>
										<td>May 13, 2021</td>
										<!-- <td>May 22, 2021</td> -->
										<td>
											<div class="progress" style="height: 3px;">
												<div class="progress-bar bg-success" role="progressbar"
													aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"
													style="width: 100%;">
													<span class="sr-only">100% Complete</span>
												</div>
											</div>
										</td>
										<td><span class="badge bg-success">Hoàn thành</span></td>
										<td>
											<div class="btn-group" role="group"
												aria-label="Basic outlined example">
												<button type="button" class="btn btn-outline-secondary"
													data-bs-toggle="modal" data-bs-target="#">
													<i class="icofont-eye text-success"></i>
												</button>
												<button type="button" class="btn btn-outline-secondary"
													data-bs-toggle="modal" data-bs-target="#">
													<i class="icofont-edit text-success"></i>
												</button>
												<button type="button" class="btn btn-outline-secondary"
													data-bs-toggle="modal" data-bs-target="#deletestudent">
													<i class="icofont-ui-delete text-danger"></i>
												</button>
											</div>
										</td>
									</tr>
									<tr>
										<td>ST-0045</td>
										<td><img
											src="${pageContext.request.contextPath}/dist/assets/images/xs/avatar2.jpg"
											class="avatar sm rounded-circle me-2" alt="profile-image"><span>Julia</span></td>
										<td>42</td>
										<td>4 Shirley Ave. West Chicago, IL 60185</td>
										<td>May 17, 2021</td>
										<!-- <td>May 16, 2021</td> -->
										<td>
											<div class="progress" style="height: 3px;">
												<div class="progress-bar bg-success" role="progressbar"
													aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"
													style="width: 100%;">
													<span class="sr-only">100% Complete</span>
												</div>
											</div>
										</td>
										<td><span class="badge bg-success">Hoàn thành</span></td>
										<td>
											<div class="btn-group" role="group"
												aria-label="Basic outlined example">
												<button type="button" class="btn btn-outline-secondary"
													data-bs-toggle="modal" data-bs-target="#">
													<i class="icofont-eye text-success"></i>
												</button>
												<button type="button" class="btn btn-outline-secondary"
													data-bs-toggle="modal" data-bs-target="#">
													<i class="icofont-edit text-success"></i>
												</button>
												<button type="button" class="btn btn-outline-secondary"
													data-bs-toggle="modal" data-bs-target="#deletestudent">
													<i class="icofont-ui-delete text-danger"></i>
												</button>
											</div>
										</td>
									</tr>
									<tr>
										<td>ST-0030</td>
										<td><img
											src="${pageContext.request.contextPath}/dist/assets/images/xs/avatar4.jpg"
											class="avatar sm rounded-circle me-2" alt="profile-image"><span>Sonia</span></td>
										<td>25</td>
										<td>123 6th St. Melbourne, FL 32904</td>
										<td>May 13, 2021</td>
										<!-- <td>May 23, 2021</td> -->
										<td>
											<div class="progress" style="height: 3px;">
												<div class="progress-bar bg-info" role="progressbar"
													aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"
													style="width: 15%;">
													<span class="sr-only">15% Complete</span>
												</div>
											</div>
										</td>
										<td><span class="badge bg-info">Đang diễn ra</span></td>

										<td>
											<div class="btn-group" role="group"
												aria-label="Basic outlined example">
												<button type="button" class="btn btn-outline-secondary"
													data-bs-toggle="modal" data-bs-target="#">
													<i class="icofont-eye text-success"></i>
												</button>
												<button type="button" class="btn btn-outline-secondary"
													data-bs-toggle="modal" data-bs-target="#">
													<i class="icofont-edit text-success"></i>
												</button>
												<button type="button" class="btn btn-outline-secondary"
													data-bs-toggle="modal" data-bs-target="#deletestudent">
													<i class="icofont-ui-delete text-danger"></i>
												</button>
											</div>
										</td>

									</tr>
									<tr>
										<td>ST-0078</td>
										<td><img
											src="${pageContext.request.contextPath}/dist/assets/images/xs/avatar5.jpg"
											class="avatar sm rounded-circle me-2" alt="profile-image"><span>Adam
												H</span></td>
										<td>18</td>
										<td>4 Shirley Ave. West Chicago, IL 60185</td>
										<td>May 18, 2021</td>
										<!-- <td>May 18, 2021</td> -->
										<td>
											<div class="progress" style="height: 3px;">
												<div class="progress-bar bg-danger" role="progressbar"
													aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"
													style="width: 85%;">
													<span class="sr-only">85% Complete</span>
												</div>
											</div>
										</td>
										<td><span class="badge bg-danger">Đang diễn ra</span></td>

										<td>
											<div class="btn-group" role="group"
												aria-label="Basic outlined example">
												<button type="button" class="btn btn-outline-secondary"
													data-bs-toggle="modal" data-bs-target="#">
													<i class="icofont-eye text-success"></i>
												</button>
												<button type="button" class="btn btn-outline-secondary"
													data-bs-toggle="modal" data-bs-target="#">
													<i class="icofont-edit text-success"></i>
												</button>
												<button type="button" class="btn btn-outline-secondary"
													data-bs-toggle="modal" data-bs-target="#deletestudent">
													<i class="icofont-ui-delete text-danger"></i>
												</button>
											</div>
										</td>

									</tr>

									<!-- end danh sach  sinh vien trong lop -->
								</tbody>
							</table>
						</div>
					</div>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Thoát</button>
					<!-- <button type="button" class="btn btn-danger color-fff">Thêm</button> -->
				</div>
			</div>
		</div>
	</div>

	<!-- Create Class-->
	<div class="modal fade" id="createclass" tabindex="-1"
		aria-hidden="true">
		<div
			class="modal-dialog modal-dialog-centered modal-md modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title  fw-bold" id="createclasslLabel">Thêm
						lớp học</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="mb-3">
						<label for="exampleFormControlInput77" class="form-label">Tên
							lớp học</label> <input type="text" class="form-control"
							id="exampleFormControlInput77" placeholder="Tên lớp học">
					</div>

					<div class="mb-3">
						<label for="formFileMultipleone" class="form-label">Ảnh và
							tài liệu lớp học</label> <input class="form-control" type="file"
							id="formFileMultipleone" multiple>
					</div>
					<div class="deadline-form">
						<form>
							<div class="row g-3 mb-3">
								<div class="col">
									<label for="datepickerded" class="form-label">Ngày bắt
										đầu</label> <input type="date" class="form-control" id="datepickerded">
								</div>
								<div class="col">
									<label for="datepickerdedone" class="form-label">Ngày
										kết thúc</label> <input type="date" class="form-control"
										id="datepickerdedone">
								</div>
							</div>
							<div class="row g-3 mb-3">

								<div class="col-sm-12">
									<label for="formFileMultipleone" class="form-label">Giảng
										viên</label> <select class="form-select" multiple
										aria-label="Default select Priority">
										<option selected>Lucinda Massey</option>
										<option value="1">Ryan Nolan</option>
										<option value="2">Oliver Black</option>
										<option value="3">Adam Walker</option>
										<option value="4">Brian Skinner</option>
										<option value="5">Dan Short</option>
										<option value="5">Jack Glover</option>
									</select>
								</div>
							</div>
						</form>
					</div>
					<div class="row g-3 mb-3"></div>
					<div class="mb-3">
						<label for="exampleFormControlTextarea78" class="form-label">Mô
							tả(Không bắt buộc)</label>
						<textarea class="form-control" id="exampleFormControlTextarea78"
							rows="3"
							placeholder="Thêm bất kỳ chi tiết bổ sung nào về yêu cầu"></textarea>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Thoát</button>
					<button type="button" class="btn btn-primary">Thêm</button>
				</div>
			</div>
		</div>
	</div>



	<!-- Edit class-->
	<div class="modal fade" id="editclass" tabindex="-1" aria-hidden="true">
		<div
			class="modal-dialog modal-dialog-centered modal-md modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title  fw-bold" id="editclassLabel">Chỉnh sửa
						lớp học</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="mb-3">
						<label for="exampleFormControlInput78" class="form-label">Tên
							lớp học</label> <input type="text" class="form-control"
							id="exampleFormControlInput78" value="Tên lớp học">
					</div>

					<div class="mb-3">
						<label for="formFileMultiple456" class="form-label">Ảnh và
							tài liệu lớp học</label> <input class="form-control" type="file"
							id="formFileMultiple456">
					</div>
					<div class="deadline-form">
						<form>
							<div class="row g-3 mb-3">
								<div class="col">
									<label for="datepickerded123" class="form-label">Ngày
										bắt đầu</label> <input type="date" class="form-control"
										id="datepickerded123" value="2021-01-10">
								</div>
								<div class="col">
									<label for="datepickerded456" class="form-label">Ngày
										kết thúc</label> <input type="date" class="form-control"
										id="datepickerded456" value="2021-04-10">
								</div>
							</div>
							<div class="row g-3 mb-3">

								<div class="col-sm-12">
									<label for="formFileMultipleone" class="form-label">Giảng
										viên</label> <select class="form-select" multiple
										aria-label="Default select Priority">
										<option selected>Lucinda Massey</option>
										<option value="1">Ryan Nolan</option>
										<option value="2">Oliver Black</option>
										<option value="3">Adam Walker</option>
										<option value="4">Brian Skinner</option>
										<option value="5">Dan Short</option>
										<option value="5">Jack Glover</option>
									</select>
								</div>
							</div>
						</form>
					</div>
					<div class="row g-3 mb-3"></div>
					<div class="mb-3">
						<label for="exampleFormControlTextarea786" class="form-label">Mô
							tả(Không bắt buộc)</label>
						<textarea class="form-control" id="exampleFormControlTextarea786"
							rows="3">Social Geek Made,lorem urna commodo sem. Pellentesque venenatis leo quam, sed mattis sapien lobortis ut. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere
                        </textarea>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Thoát</button>
					<button type="button" class="btn btn-primary">Lưu</button>
				</div>
			</div>
		</div>
	</div>


	<!-- Modal  Delete Folder/ File-->
	<div class="modal fade" id="deleteclass" tabindex="-1"
		aria-hidden="true">
		<div
			class="modal-dialog modal-dialog-centered modal-md modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title  fw-bold" id="deleteclassLabel">Xóa lớp
						học</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body justify-content-center flex-column d-flex">
					<i class="icofont-ui-delete text-danger display-2 text-center mt-2"></i>
					<p class="mt-4 fs-5 text-center">Bạn chắc chắn muốn xóa lớp học
						này</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Thoát</button>
					<button type="button" class="btn btn-danger color-fff">Xóa</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Create student-->
	<div class="modal fade" id="createstudent" tabindex="-1"
		aria-hidden="true">
		<div
			class="modal-dialog modal-dialog-centered modal-md modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title  fw-bold" id="createstudentlLabel">
						Thêm học viên</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="mb-3">
						<label for="exampleFormControlInput77" class="form-label">Tên
							học viên</label> <input type="text" class="form-control"
							id="exampleFormControlInput77" placeholder="Tên lớp học">
					</div>

					<div class="deadline-form">
						<form>

							<div class="row g-3 mb-3"></div>
						</form>
					</div>
					<div class="row g-3 mb-3"></div>
					<div class="mb-3">
						<label for="exampleFormControlTextarea78" class="form-label">Đánh
							giá(Không bắt buộc)</label>
						<textarea class="form-control" id="exampleFormControlTextarea78"
							rows="3" placeholder="Thêm đánh giá cho học viên"></textarea>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Thoát</button>
					<button type="button" class="btn btn-primary">Thêm</button>
				</div>
			</div>
		</div>
	</div>


	<!-- Modal  Delete student/ File-->
	<div class="modal fade" id="deletestudent" tabindex="-1"
		aria-hidden="true">
		<div
			class="modal-dialog modal-dialog-centered modal-md modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title  fw-bold" id="deleteLabel">Xóa học viên</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body justify-content-center flex-column d-flex">
					<i class="icofont-ui-delete text-danger display-2 text-center mt-2"></i>
					<p class="mt-4 fs-5 text-center">Bạn chắc chắn muốn xóa học
						viên này</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Thoát</button>
					<button type="button" class="btn btn-danger color-fff">Xóa</button>
				</div>
			</div>
		</div>
	</div>

	<!--  Jquey js -->

	<script src="${pageContext.request.contextPath}/js/lophoc.js"></script>
	<script src="${pageContext.request.contextPath}/js/khoahoc.js"></script>
	
	<!-- Jquery Core Js -->
	<script src="${pageContext.request.contextPath}/dist/assets/bundles/libscripts.bundle.js"></script>
		
	<!-- Jquery Page Js -->
	<script src="${pageContext.request.contextPath}/js/template.js"></script>

</body>

</html>