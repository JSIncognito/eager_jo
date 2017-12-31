<style>
@import url('https://fonts.googleapis.com/css?family=Dancing+Script');
@import url('https://fonts.googleapis.com/css?family=Questrial');

label{
font-family: 'Questrial', sans-serif;
}
h1{
font-family: 'Dancing Script', cursive;
}
h2{
font-family: 'Questrial', sans-serif;
}
button{
font-family: 'Questrial', sans-serif;

}
</style>
<script>
function seller_register(f) {
	var status = '';
	
	if(f.u_id.value == null || f.u_id.value == '') {
		status = 'Input Correct ID';
	} else if(f.u_nm.value == null || f.u_nm.value == '') {
		status = 'Input Correct Name';
	} else if(f.u_tel.value == null || f.u_tel.value == '') {
		status = 'Input Correct Phone Number';
	} else if(f.u_addr.value == null || f.u_addr.value == '') {
		status = 'Input Correct Address';
	} else if(f.u_age.value == null || f.u_age.value == '') {
		status = 'Input Correct Birthday';
	}
	
	if(status == '') {
// 		alert('success');
		f.submit();		
	} else {
		$('#pass-info').attr('class', 'weakpass').text(status);
	}
};
</script>
<section class="parallax-window" id="short" data-parallax="scroll"
	data-image-src="img/register.gif" data-natural-width="1000"
	data-natural-height="350">
	<div id="subheader">
		<div id="sub_content">
			<h1>Seller Register</h1>
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
<div class="container margin_60">
	<div class="main_title margin_mobile">
		<h2 class="nomargin_top">Please submit the form below</h2>
		<p></p>
		<p></p>
	<img src=img/pizza.png width=60>
				   <img src=img/chicken.png width=60>
				   <img src=img/china.png width=60>
	</div>
	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<form method="post" action="seller_register_impl.ej">
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<div class="form-group">
							<label>Id</label> <input type="text" class="form-control"
								id="u_id" name="u_id" placeholder="Input your ID">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label>Create a password</label> <input type="password"
								class="form-control" placeholder="Password" id="password1" name="u_pwd">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>Confirm password</label> <input type="password"
								class="form-control" placeholder="Confirm password"
								id="password2" name="u_pwd2">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<div class="form-group">
							<label>Name</label> <input type="text" class="form-control"
								id="u_nm" name="u_nm" placeholder="Jhon">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<div class="form-group">
							<label>Phone number:</label> <input type="text" id="u_tel"
								name="u_tel" class="form-control" placeholder="01012341234">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<div class="form-group">
							<label>Address</label> <input type="text" id="u_addr"
								name="u_addr" class="form-control" placeholder="Address">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<div class="form-group">
							<label>Birthday</label> <input type="date" id="u_age" name="uAge"
								class="form-control">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<div class="form-group">
							<label>Gender</label>
							<!--                             <input type="text" id="u_addr" name="u_addr" class="form-control" placeholder="Address"> -->
							<select id="gender_select" name="u_gen">
								<option value="M">Male</option>
								<option value="F">Female</option>
							</select>
							<!-- 							<input type="hidden" name="u_gen" id="u_gen"> -->
						</div>
					</div>
				</div>
				<!-- End row  -->
				<div id="pass-info" class="clearfix"></div>
				<div class="row checkbox-holder">
					<div class="col-md-12 col-sm-12">
						<label>
						<input name="mobile" type="checkbox" value="accept_2" class="icheck">Accept 
<!-- 							<input type="checkbox" value="accept_2" id="check_2" name="check_2" required/>Accept -->
							<a href="#0">terms and
								conditions</a>.</label>
					</div>
				</div>
				<!-- End row  -->
				<hr style="border-color: #ddd;">
				<div class="text-center">
					<button class="btn_full_outline" type="button" 	onclick="seller_register(this.form);">Submit</button>
				</div>
			</form>
		</div>
		<!-- End col  -->
	</div>
	<!-- End row  -->
</div>
<!-- End container  -->