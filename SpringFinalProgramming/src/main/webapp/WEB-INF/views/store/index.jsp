<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
	    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	    
	    <title>Welcome To 2CM Project</title>
	    
	    <%--Css--%>
		    <!-- Favicon-->
		    <link rel="icon" href="favicon.ico" type="image/x-icon">
		    <!-- Google Fonts -->
		    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
		    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">
		    <!-- Bootstrap Core Css -->
		    <link href="${pageContext.servletContext.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
		    <!-- Waves Effect Css -->
		    <link href="${pageContext.servletContext.contextPath}/resources/css/waves.css" rel="stylesheet" />
		    <!-- Animation Css -->
		    <link href="${pageContext.servletContext.contextPath}/resources/css/animate.css" rel="stylesheet" />
		    <!-- Morris Chart Css-->
		    <link href="${pageContext.servletContext.contextPath}/resources/css/morris.css" rel="stylesheet" />
		    <!-- Custom Css -->
		    <link href="${pageContext.servletContext.contextPath}/resources/css/style.css" rel="stylesheet">
		    <!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
		    <link href="${pageContext.servletContext.contextPath}/resources/css/all-themes.css" rel="stylesheet" />
		<%--Css--%>
		
		<%--Script --%>	
		    <!-- Jquery Core Js -->
		    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.min.js"></script>
		    <!-- Bootstrap Core Js -->
		    <script src="${pageContext.servletContext.contextPath}/resources/js/bootstrap.js"></script>
		    <!-- Select Plugin Js -->
		    <script src="${pageContext.servletContext.contextPath}/resources/js/bootstrap-select.js"></script>
		    <!-- Slimscroll Plugin Js -->
		    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.slimscroll.js"></script>
		    <!-- Waves Effect Plugin Js -->
		    <script src="${pageContext.servletContext.contextPath}/resources/js/waves.js"></script>
		    <!-- Jquery CountTo Plugin Js -->
		    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.countTo.js"></script>
		    <!-- Morris Plugin Js -->
		    <script src="${pageContext.servletContext.contextPath}/resources/js/raphael.min.js"></script>
		    <script src="${pageContext.servletContext.contextPath}/resources/js/morris.js"></script>
		    <!-- ChartJs -->
		    <script src="${pageContext.servletContext.contextPath}/resources/js/Chart.bundle.js"></script>
		    <!-- Flot Charts Plugin Js -->
		    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.flot.js"></script>
		    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.flot.resize.js"></script>
		    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.flot.pie.js"></script>
		    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.flot.categories.js"></script>
		    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.flot.time.js"></script>
		    <!-- Sparkline Chart Plugin Js -->
		    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.sparkline.js"></script>
		    <!-- Custom Js -->
		    <script src="${pageContext.servletContext.contextPath}/resources/js/admin.js"></script>
		    <script src="${pageContext.servletContext.contextPath}/resources/js/pages/index.js"></script>
		    <!-- Demo Js -->
		    <script src="${pageContext.servletContext.contextPath}/resources/js/demo.js"></script>
		<%--Script --%>
	</head>
	<body class="theme-red">
		<!-- Page Loader -->
	    <div class="page-loader-wrapper">
	        <div class="loader">
	            <div class="preloader">
	                <div class="spinner-layer pl-red">
	                    <div class="circle-clipper left">
	                        <div class="circle"></div>
	                    </div>
	                    <div class="circle-clipper right">
	                        <div class="circle"></div>
	                    </div>
	                </div>
	            </div>
	            <p>Please wait...</p>
	        </div>
	    </div>
	   	<!-- #END# Page Loader -->
	    <!-- Overlay For Sidebars -->
	    <div class="overlay"></div>
	    <!-- #END# Overlay For Sidebars -->
	    <!-- Search Bar -->
	    <div class="search-bar">
	        <div class="search-icon">
	            <i class="material-icons">search</i>
	        </div>
	        <input type="text" placeholder="START TYPING...">
	        <div class="close-search">
	            <i class="material-icons">close</i>
	        </div>
	    </div>
	    <!-- #END# Search Bar -->
	    
	    <!-- Top Bar -->
	    <nav class="navbar">
	        <div class="container-fluid">
	            <div class="navbar-header">
	                <a href="javascript:void(0);" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false"></a>
	                <a href="javascript:void(0);" class="bars"></a>
	                <a class="navbar-brand" href="../../../index.html">하루에 2cm씩 자라나는 어린이</a>
	            </div>
	            <div class="collapse navbar-collapse" id="navbar-collapse">
	                <ul class="nav navbar-nav navbar-right">
	                    <!-- Call Search -->
	                    <li><a href="javascript:void(0);" class="js-search" data-close="true"><i class="material-icons">search</i></a></li>
	                    <!-- #END# Call Search -->
	                    <li class="pull-right"><a href="javascript:void(0);" class="js-right-sidebar" data-close="true"><i class="material-icons">more_vert</i></a></li>
	                </ul>
	            </div>
	        </div>
	    </nav>
	    <!-- #Top Bar -->
	    
	    
	    <!-- #Top Bar -->
	    <section>
	        <!-- Left Sidebar -->
	        <aside id="leftsidebar" class="sidebar">
	            <!-- User Info -->
	            <div class="user-info">
	                <div class="image">
	                    <img src="${pageContext.servletContext.contextPath}/photo/images.png" width="48" height="48" alt="User"/>
	                </div>
	                <div class="info-container">
	                    <div class="name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">2CM</div>
	                    <div class="email">2cm@Kosa.com</div>
	                    <div class="btn-group user-helper-dropdown">
	                        <i class="material-icons" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">keyboard_arrow_down</i>
	                        <ul class="dropdown-menu pull-right">
	                            <li><a href="javascript:void(0);"><i class="material-icons">person</i>Profile</a></li>
	                            <li role="seperator" class="divider"></li>
	                            <li><a href="javascript:void(0);"><i class="material-icons">group</i>Followers</a></li>
	                            <li><a href="javascript:void(0);"><i class="material-icons">shopping_cart</i>Sales</a></li>
	                            <li><a href="javascript:void(0);"><i class="material-icons">favorite</i>Likes</a></li>
	                            <li role="seperator" class="divider"></li>
	                            <li><a href="javascript:void(0);"><i class="material-icons">input</i>Sign Out</a></li>
	                        </ul>
	                    </div>
	                </div>
	            </div>
	            <!-- #User Info -->
	            <!-- Menu -->
	            <div class="menu">
	                <ul class="list">
	                    <li class="header">MAIN NAVIGATION</li>
	                    <li>
	                        <a href="#">
	                        	<i class="material-icons">home</i>
	                            <span>Home</span>
	                        </a>
	                    </li>
	                    <li>
	                        <a href="javascript:void(0);" class="menu-toggle">
	                            <i class="material-icons">swap_calls</i>
	                            <span>매장</span>
	                        </a>
	                        <ul class="ml-menu">
	                            <li>
	                                <a href="${pageContext.servletContext.contextPath}/store/info">매장 정보 보기</a>
	                            </li>
	                            <li>
	                                <a href="${pageContext.servletContext.contextPath}/sphoto/write">사진 첨부하기</a>
	                            </li>
	                            <li>
	                                <a href="${pageContext.servletContext.contextPath}/store/logout"">로그아웃</a>
	                            </li>
	                        </ul>
	                    </li>
	                    <li>
	                        <a href="javascript:void(0);" class="menu-toggle">
	                            <i class="material-icons">swap_calls</i>
	                            <span>메뉴</span>
	                        </a>
	                        <ul class="ml-menu">
	                            <li>
	                                <a href="${pageContext.servletContext.contextPath}/menu/list">메뉴리스트</a>
	                            </li>
	                            <li>
	                                <a href="#">메뉴 옵션</a>
	                            </li>
	                        </ul>
	                    </li> 
	                    <li>
	                        <a href="javascript:void(0);" class="menu-toggle">
	                            <i class="material-icons">swap_calls</i>
	                            <span>이벤트</span>
	                        </a>
	                        <ul class="ml-menu">
	                            <li>
	                                <a href="${pageContext.servletContext.contextPath}/event/list">이벤트 리스트</a>
	                            </li>
	                            <li>
	                                <a href="#">이벤트 리스트2</a>
	                            </li>
	                        </ul>
	                    </li>
	                    <li>
	                        <a href="javascript:void(0);" class="menu-toggle">
	                            <i class="material-icons">swap_calls</i>
	                            <span>주문</span>
	                        </a>
	                        <ul class="ml-menu">
	                            <li>
	                                <a href="${pageContext.servletContext.contextPath}/order/list">주문 리스트</a>
	                            </li>
	                            <li>
	                                <a href="${pageContext.servletContext.contextPath}/order/orderItems">주문하기</a>
	                            </li>
	                        </ul>
	                    </li>   
	                </ul>
	            </div>
	            <!-- #Menu -->
	            <!-- Footer -->
	            <div class="legal">
	                <div class="copyright">
	                    &copy; 2016 <a href="javascript:void(0);">2cm CopyRight</a>.
	                </div>
	                <div class="version">
	                    <b>Version: </b> 우리 맘대로~
	                </div>
	            </div>
	            <!-- #Footer -->
	        </aside>
	    </section>
	    
	    
	    
	    
	    
	    
	<%--     
	    
		<h1>매장</h1>
		<hr/>
		1. <a href="${pageContext.servletContext.contextPath}/store/info"> 매장정보보기</a> <br/>
		2. <a href="${pageContext.servletContext.contextPath}/store/logout"> 로그아웃</a> <br/>
		3. <a href="${pageContext.servletContext.contextPath}/sphoto/write"> 사진 첨부하기</a> <br/><br/>
		<h1>메뉴</h1>
		<hr/>
		1. <a href="${pageContext.servletContext.contextPath}/menu/list">메뉴리스트</a> <br/>

		<h1>이벤트</h1>
		<hr/>
		1. <a href="${pageContext.servletContext.contextPath}/event/list">이벤트리스트</a> <br/><br/>
		
		
		<h1>주문</h1>
		<hr/>
		1. <a href="${pageContext.servletContext.contextPath}/order/list">주문리스트</a> <br/><br/>
		2. <a href="${pageContext.servletContext.contextPath}/order/orderItems">주문하기</a> <br/><br/> --%>
		
	</body>
</html>