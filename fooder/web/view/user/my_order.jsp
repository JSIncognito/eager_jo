<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
@import url('https://fonts.googleapis.com/css?family=Dancing+Script');
@import url('https://fonts.googleapis.com/css?family=Questrial');

body{
background-color: white;
}
#category {
margin-top:80px;
margin-left:120px;
	float: left;
	width:190px;	
margin-bottom: 150px;	
}
#inner{
mrgin-top:100px;
margin-left:50px;
font-family: 'Questrial', sans-serif;

}
li{
font-family: 'Questrial', sans-serif;

}
h1{
font-family: 'Dancing Script', cursive;
}

h4{
font-family: 'Questrial', sans-serif;
margin-left:30px;
font-weight: bold;
}
th{
font-family: 'Questrial', sans-serif;
}

#order_history{
	width:855px;
	height:auto;
	display:inline-block;

}


</style>



<section class="parallax-window" id="short" data-parallax="scroll"
	data-image-src="img/mypage_2.gif" data-natural-width="900"
	data-natural-height="350">
	<div id="subheader">
		<div id="sub_content">
			<h1>My Order history</h1>
			<p></p>
		</div>
		<!-- End sub_content -->
	</div>
	<!-- End subheader -->
</section>

<!-- End section -->
<!-- End SubHeader ============================================ -->

<div id="position">
	<div class="container">
		<ul>
			<li><a href="#0">Home</a></li>
			<li><a href="#0">Category</a></li>
			<li>Page active</li>
		</ul>
		<a href="#0" class="search-overlay-menu-btn"><i
			class="icon-search-6"></i> Search</a>
	</div>
</div>
<!-- Position -->

<!-- Content ================================================== -->

<div class="widget" id="category">
		<h4>Categories</h4>
		<ul id="cat_nav_blog">
			<li><a href="user_mypage.ej">Update my profile</a></li>
			<li><a href="order_history.ej">My order history</a></li>

		</ul>
	</div>	

<div class="container margin_60_35">
			<!-- 1214 ksy -->



		<div class="col-md-9" id="order_history">
			<div class="box_style_2" id="main_menu">
				<h2 class="inner" id="inner">My order histrory</h2>

				
				<table class="table table-striped cart-list" id="inner">
					<tr>
						<th>Order Date</th>
						<th>Store Name</th>
						<th>Cost</th>
						<th>Address</th>

					</tr>
					<c:forEach var="o" items="${myOrder}">
						<tr>
							<td>${o.o_date }</td>
							<td>${o.st_nm }</td>
							<td>${o.o_total }</td>
							<td>${o.o_addr }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>



	<!-- End container -->