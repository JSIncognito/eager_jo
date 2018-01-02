<style>

@import url('https://fonts.googleapis.com/css?family=Dancing+Script');
@import url('https://fonts.googleapis.com/css?family=Questrial');

body{
background-color: white;
}
/* #update_form {
	margin: 0 auto;
} */

/* #update_button {
	width: 360px;
}
 */

 #form-group{
 width:500px;
 }
#category {
margin-left:100px;
margin-top:80px;

	float: left;
	width:150px;	
	position:absolute;	
}
li{
font-family: 'Questrial', sans-serif;

}
h1{
font-family: 'Dancing Script', cursive;
}
#update_button{
background-color:#85c99d;
color:white;
font-family: 'Questrial', sans-serif;
width:500px;
letter-spacing: 2px;
}
#update_button:hover{
background-color:#b3cccc;
color:white;
border-color: #b3cccc;
}
h2{
font-family: 'Questrial', sans-serif;
margin-left:65px;
}
p{
font-family: 'Questrial', sans-serif;
margin-left:70px;
}
label{
font-family: 'Questrial', sans-serif;
}
.form-control{
background-color:#d1e0e0;
color:gray;

}
.form-control:hover{
background-color:white;
}
h4{
font-family: 'Questrial', sans-serif;
font-weight: bold;
margin-left: 20px;
}
#update_form{
margin-left:150px;
position:relative;
}
</style>
<script>
	function update(f) {
		var u_nm = f.u_nm.value;
		var u_tel = f.u_tel.value;
		var u_addr = f.u_addr.value;
		var u_pwd = f.u_pwd.value;
		var pwd_confirm = f.pwd_confirm.value;

		if (u_nm == null || u_nm == '') {
			alert("Please enter your name");
			f.u_nm.focus();
			return;
		}
		if (u_tel == null || u_tel == '') {
			alert("Please enter your telephone number");
			f.u_tel.focus();
			return;
		}
		if (u_addr == null || u_addr == '') {
			alert("Please enter your address");
			f.u_addr.focus();
			return;
		}
		if (u_pwd != pwd_confirm) {
			alert("Password does not match");
			f.pwd_confirm.focus();
			return;
		}

		f.action = 'user_update.ej';
		f.method = 'post';
		f.submit();
	}
	;
</script>

<section class="parallax-window" id="short" data-parallax="scroll"
	data-image-src="img/mypage_1.gif" data-natural-width="1000"
	data-natural-height="350">
	<div id="subheader">
		<div id="sub_content">
			<h1>My Page</h1>
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
<!-- 1214 ksy -->
<!-- <div class="container margin_60_35">
    <div class="main_title margin_mobile">
            <h2 class="nomargin_top">Increase your customers</h2>
            <p>
                Cum doctus civibus efficiantur in imperdiet deterruisset.
            </p>
        </div>
	<div class="row">
		<div class="col-md-6 wow fadeIn" data-wow-delay="0.1s">
			<div class="feature">
				<i class="icon_datareport"></i>
				<h3><span>Increase</span> your sales</h3>
				<p>
					 Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex, appareat similique an usu.
				</p>
			</div>
		</div>
		<div class="col-md-6 wow fadeIn" data-wow-delay="0.2s">
			<div class="feature">
				<i class="icon_chat_alt"></i>
				<h3><span>H24</span> chat support</h3>
				<p>
					 Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex, appareat similique an usu.
				</p>
			</div>
		</div>
	</div>End row
	<div class="row">
		<div class="col-md-6 wow fadeIn" data-wow-delay="0.3s">
			<div class="feature">
				<i class="icon_bag_alt"></i>
				<h3><span>Delivery</span> or Takeaway</h3>
				<p>
					 Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex, appareat similique an usu.
				</p>
			</div>
		</div>
		<div class="col-md-6 wow fadeIn" data-wow-delay="0.4s">
			<div class="feature">
				<i class="icon_mobile"></i>
				<h3><span>Mobile</span> support</h3>
				<p>
					 Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex, appareat similique an usu.
				</p>
			</div>
		</div>
	</div>End row
	<div class="row">
		<div class="col-md-6 wow fadeIn" data-wow-delay="0.5s">
			<div class="feature">
				<i class="icon_wallet"></i>
				<h3><span>Cash</span> payment</h3>
				<p>
					 Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex, appareat similique an usu.
				</p>
			</div>
		</div>
		<div class="col-md-6 wow fadeIn" data-wow-delay="0.6s">
			<div class="feature">
				<i class="icon_creditcard"></i>
				<h3><span>Secure card</span> payment</h3>
				<p>
					 Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex, appareat similique an usu.
				</p>
			</div>
		</div>
	</div>End row
</div>End container
 -->
<!-- 1214 ksy -->
<!-- 
<div class="white_bg">
	<div class="container margin_60_35">
    <div class="main_title margin_mobile">
            <h2 class="nomargin_top">Our Plans</h2>
            <p>
                Cum doctus civibus efficiantur in imperdiet deterruisset.
            </p>
        </div>
    	 <div class="row text-center plans">
                <div class="plan col-md-4">
                    <h2 class="plan-title">1 Month Plan</h2>
                    <p class="plan-price">$99<span>/00</span></p>
                    <ul class="plan-features">
                        <li><strong>Check and go</strong> included</li>
                        <li><strong>1 month</strong> valid</li>
                        <li><strong>Unsubscribe</strong> anytime</li>
                    </ul>
                </div> End col-md-4
                
                <div class="plan plan-tall col-md-4">
                <span class="ribbon"></span>
                <span class="ribbon_table"></span>
                    <h2 class="plan-title">3 Months Plan</h2>
                    <p class="plan-price">$199<span>/00</span></p>
                    <ul class="plan-features">
                    	<li><strong>Premium</strong> support</li>
                        <li><strong>Check and go</strong> included</li>
                         <li><strong>APP</strong> included</li>
                        <li><strong>3 months</strong> valid</li>
                        <li><strong>Unsubscribe</strong> anytime</li>
                    </ul>
                </div>End col-md-4
                
                <div class="plan col-md-4">
                    <h2 class="plan-title">6 Months Plan</h2>
                    <p class="plan-price">$299<span>/00</span></p>
                    <ul class="plan-features">
                    	<li><strong>Premium</strong> support</li>
                        <li><strong>Check and go</strong> included</li>
                        <li><strong>6 months</strong> valid</li>
                        <li><strong>Unsubscribe</strong> anytime</li>
                    </ul>
                </div>End col-md-4
            </div>End row plans
    </div>End container
</div>End white_bg
 -->

<div class="widget" id="category">
		<h4>Categories</h4>
		<ul id="cat_nav_blog">
			<li><a href="#">Update my profile</a></li>
			<li><a href="order_history.ej">My order history</a></li>
			
		</ul>
	</div>

<div id="form_wrapper" class="container margin_60">
	<div class="main_title margin_mobile">
		           <h2 class="nomargin_top">User Mypage</h2>
<!--                 Cum doctus civibus efficiantur in imperdiet deterruisset. -->		           
           <p>
				Update your information
           </p>
				   <img src=img/pizza.png width=60>
				   <img src=img/pizza4.png width=60>
				   <img src=img/pizza5.png width=60>
           
	</div>
<!-- 	<div class="widget" id="category"> -->
<!-- 		<h4>Categories</h4> -->
<!-- 		<ul id="cat_nav_blog"> -->
<%-- 			<li><a href="user_mypage.ej?u_id=${loginUser.u_id }">Update my profile</a></li> --%>
<%-- 			<li><a href="order_history.ej?u_id=${loginUser.u_id }">My order history</a></li> --%>
			
<!-- 		</ul> -->
<!-- 	</div> -->
	<div class="row">
		<div class="col-md-8 col-md-offset-2">
		
		<!-- 180101 ksy -->	
			<form id="update_form" accept-charset="euc-kr">
				<div class="row">
					<div class="col-md-6 col-sm-6">
						<div class="form-group" id="form-group">
							<label>Name</label> <input type="text" class="form-control"
								id="u_nm" name="u_nm" value="${loginUser.u_nm }">
							<!-- 폼에 없는 컬럼들 받기 -->
							<input type="hidden" class="form-control" id="u_id" name="u_id"
								value="${loginUser.u_id }"> <input type="hidden"
								class="form-control" id="u_gen" name="u_gen"
								value="${loginUser.u_gen }"> <input type="hidden"
								class="form-control" id="u_age" name="u_age"
								value="${loginUser.u_age }"> <input type="hidden"
								class="form-control" id="u_flag" name="u_flag"
								value="${loginUser.u_flag }">
						</div>
					</div>
					<!-- <div class="col-md-6 col-sm-6">
								<div class="form-group">
									<label>Last name</label>
									<input type="text" class="form-control" id="lastname_contact" name="lastname_contact" placeholder="Doe">
								</div>
							</div> -->
				</div>
				<div class="row">
					<!-- <div class="col-md-6 col-sm-6">
								<div class="form-group">
									<label>Email:</label>
									<input type="email" id="email_contact" name="email_contact" class="form-control " placeholder="jhon@email.com">
								</div>
							</div> -->
					<div class="col-md-6 col-sm-6">
						<div class="form-group" id="form-group">
							<label>Phone number</label> <input type="text" id="u_tel"
								name="u_tel" class="form-control" value="${loginUser.u_tel}">
						</div>
					</div>
				</div>
				<!-- <div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Restaurant name</label>
                                   <input type="text" id="restaurant" name="restaurant" class="form-control" placeholder="Pizza King">
								</div>
							</div>
                            <div class="col-md-6">
								<div class="form-group">
									<label>Website</label>
                                   <input type="text" id="restaurant_web" name="restaurant_web" class="form-control" placeholder="http://">
								</div>
							</div>
						</div> -->
				<!-- End row  -->
				<div class="row">
					<div class="col-md-6">
						<div class="form-group" id="form-group">
							<label>City</label> <input type="text" id="u_addr" name="u_addr"
								class="form-control" value="${loginUser.u_addr }">
						</div>
					</div>
					<!-- <div class="col-md-6">
								<div class="form-group">
                                	<label>Postal code</label>
                                   <input type="text" id="restaurant_postal_code" name="restaurant_postal_code" class="form-control" placeholder="00103">
								</div>
							</div> -->
				</div>
				<!-- End row  -->
				<div class="row">
					<div class="col-md-6">
						<div class="form-group" id="form-group">
							<label>Change your password</label> <input type="password"
								class="form-control" placeholder="Password" id="u_pwd"
								name="u_pwd" value="">
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-6">
						<div class="form-group" id="form-group">
							<label>Confirm password</label> <input type="password"
								class="form-control" placeholder="Confirm password"
								id="pwd_confirm" name="pwd_confirm">
						</div>
					</div>
					<div class="row">
						<!-- <div class="col-md-6">
									<label><input name="mobile" type="checkbox" value="" class="icheck" checked>Accept <a href="#0">terms and conditions</a>.</label> -->
					</div>
				</div>
				<!-- End row  -->

				<div class="text-center">
					<div id="pass-info" class="clearfix"></div>

					<input type="button" id="update_button" class="btn_full_outline"
						onclick="update(this.form);" value="update">
				</div>

				<hr style="border-color: #ddd;">
			</form>
		</div>
		<!-- End col  -->
	</div>
	<!-- End row  -->
</div>

<!-- End widget -->
<!-- End container  -->