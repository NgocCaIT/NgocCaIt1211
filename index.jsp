<%-- 
    Document   : index
    Created on : Oct 20, 2016, 2:39:35 PM
    Author     : NgocCaIT
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Điện Thoại Di Động</title>
	<meta charset="utf-8">
	<meta name="author" content="pixelhint.com">
	<meta name="description" content="La casa free real state fully responsive html5/css3 home page website template"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
	
	<link rel="stylesheet" type="text/css" href="css/reset.css">
	<link rel="stylesheet" type="text/css" href="css/responsive.css">

	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
    </head>
    <body>
        <section class="hero">
           
		<header>
			<div class="wrapper">
                            <a href="index.jsp"><img src="img/logo.png" alt="" width="161" height="153" class="logo" titl=""/></a>
				<a href="#" class="hamburger"></a>
				<nav>
					<ul>
						<li><a href="#">Buy</a></li>
						<li><a href="#">Rent</a></li>
						<li><a href="#">Sell</a></li>
						<li><a href="#">About</a></li>
						<li><a href="#">Contact</a></li>
					</ul>
                                    <li <%=Model.Login.hien%> class="login_btn" ><a href="DangNhap.jsp">Login</a><span>--</span> <a  href="DangKy.jsp" >Singup</a></li>
                        <li <%=Model.Login.an%>>
                            <ul >
                                <li><a href="Logout">Log Out</a></li>
                            </ul>
                        </li>
				</nav>
			</div>
		</header><!--  end header section  -->

			<section class="caption">
				<h2 class="caption">Find You Dream Phone</h2>
				<h3 class="properties">Headphone - Sharp - IPhone</h3>
			</section>
	</section><!--  end hero section  -->


	<section class="search">
		<div class="wrapper">
			<form action="#" method="post">
				<input type="text" id="search" name="search" placeholder="What are you looking for?"  autocomplete="off"/>
				<input type="submit" id="submit_search" name="submit_search"/>
			</form>
			<a href="#" class="advanced_search_icon" id="advanced_search_btn"></a>
		</div>

		<div class="advanced_search">
			<div class="wrapper">
				<span class="arrow"></span>
				<form action="#" method="post">
					<div class="search_fields">
						<input type="text" class="float" id="check_in_date" name="check_in_date" placeholder="Check In Date"  autocomplete="off">

						<hr class="field_sep float"/>

						<input type="text" class="float" id="check_out_date" name="check_out_date" placeholder="Check Out Date"  autocomplete="off">
					</div>
					<div class="search_fields">
						<input type="text" class="float" id="min_price" name="min_price" placeholder="Min. Price"  autocomplete="off">

						<hr class="field_sep float"/>

						<input type="text" class="float" id="max_price" name="max_price" placeholder="Max. price"  autocomplete="off">
					</div>
					<input type="text" id="keywords" name="keywords" placeholder="Keywords"  autocomplete="off">
					<input type="submit" id="submit_search" name="submit_search"/>
				</form>
			</div>
		</div><!--  end advanced search section  -->
	</section><!--  end search section  -->


	<section class="listings">
            
		<div class="wrapper">
			<ul class="properties_list">
                             <% 
                Statement st = Controller.ConnecDB.ConnecDB().createStatement();
                ResultSet rs = st.executeQuery("SELECT `MaSP`, `TenSP`, `MoTa`, `SoLuong`, `DonGia`, `HinhAnh`, `NhaSX`, `MaLoai` FROM `SanPham`" );
            %>
            <% while(rs.next()){ %>
				<li>
                                    <a href="MuaHang.jsp">
                                            <img src="img/<%=rs.getString(6)%>" alt="" title="" class="property_img"/>
					</a>
                                            <span class="price"><%=rs.getString(5)%></span>
					<div class="property_details">
						<h1>
                                                    <a href="#"><%=rs.getString(3)%></a>
						</h1>
						<h2><%=rs.getString(7)%> </h2>
					</div>
				</li>
                                <%}%>
				
			</ul>
			<div class="more_listing">
				<a href="#" class="more_listing_btn">View More Listings</a>
			</div>
		</div>
	</section>	<!--  end listing section  -->

	<footer>
		<div class="wrapper footer">
			<ul>
				<li class="links">
					<ul>
						<li><a href="#">About</a></li>
						<li><a href="#">Support</a></li>
						<li><a href="#">Terms</a></li>
						<li><a href="#">Policy</a></li>
						<li><a href="#">Contact</a></li>
					</ul>
				</li>

				<li class="links">
					<ul>
						<li><a href="#">Appartements</a></li>
						<li><a href="#">Houses</a></li>
						<li><a href="#">Villas</a></li>
						<li><a href="#">Mansions</a></li>
						<li><a href="#">...</a></li>
					</ul>
				</li>

				<li class="links">
					<ul>
						<li><a href="#">New York</a></li>
						<li><a href="#">Los Anglos</a></li>
						<li><a href="#">Miami</a></li>
						<li><a href="#">Washington</a></li>
						<li><a href="#">...</a></li>
					</ul>
				</li>

				
			</ul>
		</div>

		<div class="copyrights wrapper">
			Copyright © 2015 <a href="http://pixelhint.com" target="_blank" class="ph_link" title="Download more free Templates">Pixelhint.com</a>. All Rights Reserved.
		</div>
	</footer><!--  end footer  -->
    </body>
</html>
