<style>
@import url('https://fonts.googleapis.com/css?family=Dancing+Script');
@import url('https://fonts.googleapis.com/css?family=Questrial');
body{
background-color: white;
}

#category {
margin-top:80px;
margin-left:100px;
	float: left;
	width:190px;	
margin-bottom: 150px;	
font-family: 'Questrial', sans-serif;
position:absolute;
}
#food_nums{
font-family: 'Questrial', sans-serif;
font-weight:bold;
}
#seller_div{
margin-left:130px;
}
form{
position:relative;
margin-left:80px;
}
h1{
font-family: 'Dancing Script', cursive;
}
#btn_submit{
background-color:#85c99d;
color:white;
font-family: 'Questrial', sans-serif;
letter-spacing: 2px;
}
#btn_submit:hover{
background-color:#b3cccc;
color:white;
border-color: #b3cccc;
}
h2{
font-family: 'Questrial', sans-serif;
}
p{
font-family: 'Questrial', sans-serif;
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

</style>

<section class="parallax-window" id="short" data-parallax="scroll" data-image-src="img/weather.gif" data-natural-width="1000" data-natural-height="600">

<script>
$(document).ready(function() {
	$('#pwd2').on('keyup', function() {
		if ($('#pwd').val() == $('#pwd2').val()) {
			$('#message').html('Matching').css('color', 'green');
		} else 
			$('#message').html('Not Matching').css('color', 'red');
	});
	
});

function checkpwd(f) {
	var pwd1 = f.u_pwd.value;
	var pwd2 = f.u_pwd2.value;
	var tel = f.u_tel.value;
	var addr = f.u_addr.value;
	
	if(pwd1 == pwd2 && tel != '' && addr != ''){
		f.method = 'post';
		f.action = 'seller_mypage_modify.ej';
		f.submit();
	}
};

</script>
    <div id="subheader">
    	<div id="sub_content">
    	 <h1>Update Seller Profile</h1>
         <p></p>
         <p></p>
        </div><!-- End sub_content -->
	</div><!-- End subheader -->
</section><!-- End section -->
<!-- 확인해봐야함 20171230_JS-->
    <div class="widget" id="category">
		<h4 id="food_nums">Categories</h4>
		<ul id="cat_nav_blog">
			<li><a href="coupon_list.ej?st_key=${st_key}">Coupon List</a></li>
			<li><a href="coupon_add.ej?st_key=${st_key}">Coupon Add</a></li>
			<li><a href="seller_store_detail_test.ej">Update my store</a></li>
			<li><a href="seller_mypage.ej">Update seller profile</a></li>

		</ul>
	</div>
<!-- End SubHeader ============================================ -->

    <div id="position">
        <div class="container">
            <ul>
                <li><a href="#0">Home</a></li>
                <li><a href="#0">Category</a></li>
                <li>Seller Mypage</li>
            </ul>
<!--             <a href="#0" class="search-overlay-menu-btn"><i class="icon-search-6"></i> Search</a> -->
        </div>
    </div><!-- Position -->
    <div id="seller_div">


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
 
<!-- <div class ="seller">
<img src=img/pizza.png width=80> -->
<!-- <img src=img/chicken.png width=100>
<img src=img/china.png width=100>
<img src=img/pizza.png width=100>
<img src=img/chicken.png width=100> -->



<div class="container margin_60" id="content">
	 <div class="main_title margin_mobile">
           <h2 class="nomargin_top">Seller Mypage</h2>
           <p>
<!--                 Cum doctus civibus efficiantur in imperdiet deterruisset. -->
				Update your information
           </p>
                      <img src=img/pizza.png width=70>
           
        </div>
	<div class="row">
    	<div class="col-md-7 col-md-offset-2">
        	<form>
        	<!-- TODO : set value -->
				<input type="hidden" name="u_id" value="${loginUser.u_id }"/>
<!--        		<input type="text" name="id"  hidden="hidden">-->
				<div class="row">
					<div class="col-md-12 col-sm-6">
						<div class="form-group">
							<label>Address</label>
							<input type="text" class="form-control" id="addr" name="u_addr" value="${loginUser.u_addr }" placeholder="Enter your address" required="required">
<!--							<input type="text" class="form-control" id="addr" name="u_addr" placeholder="Enter your address" required="required">-->
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 col-sm-6">
						<div class="form-group">
							<label>Phone number</label>
							<input type="tel" id="tel" name="u_tel" class="form-control" value="${loginUser.u_tel }" placeholder="010-1234-1234" required="required"><!-- pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}"  -->
<!--							<input type="tel" id="tel" name="u_tel" class="form-control" placeholder="010-1234-1234" required="required">--><!-- pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}"  -->
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
                            <label>Enter new password</label>
                            <input type="password" class="form-control" placeholder="Password" name="u_pwd" id="pwd" required="required">
						</div>
					</div>
                          <div class="col-md-6">
						<div class="form-group">
                           	<label>Confirm new password</label>
                            <input type="password" class="form-control" placeholder="Confirm password" name="u_pwd2" id="pwd2" required="required"><!--  onchange="check_pwd()" -->
                            <span id="message"></span>
						</div>
					</div>
				</div><!-- End row  -->
                <div id="pass-info" class="clearfix"></div>
                <div class="text-center">
<!--              	  <button type="button" id="btn_submit" class="btn_full_outline" onclick="checkpwd(this.form);" >Modify</button>-->
              	  <button type="button" id="btn_submit" class="btn_full_outline" onclick="checkpwd(this.form);" >Update</button>
<!--               	  <input type="button" class="btn_full_outline" value="Modify" onclick="checkpwd(this.form);"> -->
                </div>
			</form>
<!-- 20171230_JS div 확인해보기 -->
			</div>
        </div><!-- End col  -->
    </div><!-- End row  -->
</div><!-- End container  -->