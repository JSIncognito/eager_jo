<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
var slength = 0;
function addItem(size) {
// 	alert('plus ' + size);	
	var newdiv = document.createElement('div');
	
	slength++;
	$('#insertItem #f_img_original').attr('name', 'item'+slength+'_f_img_original');
	$('#insertItem #f_img_changed').attr('name', 'item'+slength+'_f_img_changed');
	$('#insertItem #f_name').attr('name', 'item'+slength+'_f_name');
	$('#insertItem #f_price').attr('name', 'item'+slength+'_f_price');
	
	newdiv.innerHTML = document.getElementById('insertItem').innerHTML;
	document.getElementById('insertArea').appendChild(newdiv);
};

function removeItem(div) {
	$(div).remove();
	slength--; 	// TODO : add!!!!!!!!!!!!!
};

function changeImg() {	// ${food.f_img }, this
	
};

function setNum(num) {
	if(slength == 0) slength = num;
};

function getNum() {
	return slength;
};

function getLatLot(f) {
	var staddr = $('input[name="st_addr"]').val();
	var storig = $('input[name="st_addr_orig"]').val();
	if(staddr != storig) {
		$.ajax({
			url: 'getlatlot.ej',
			data: {'addr':staddr},
			dataType:"json",
			type:"post",
			success: function(data){
				if(data != null) {
					$('input[name="lat"]').val(data.y);
					$('input[name="lot"]').val(data.x);
// 					alert($('input[name="lat"]').val() + "/" + $('input[name="lot"]').val());
					$('#msg_addr').html('').css('visiblity', 'hidden').css('visibility', 'visible');
				} else {
// 					alert('error');
					$('.msg').html('').css('visibility', 'hidden');
					$('#msg_addr').html('Please enter correct address').css('color', 'red').css('visibility', 'visible');
					return false;
				}
			}, 
			error:function(request,status,error){
// 			    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			    return false;
			}
		});
		$('input[name="st_addr_orig"]').val(staddr);
	}
	
	/* if(f.st_nm.value == null || f.st_nm.value == '') {
		$('.msg').html('').css('visibility', 'hidden');
		$('#msg_name').html('Please enter store name').css('color', 'red').css('visibility', 'visible');
		return false;
	} 
	if(f.st_openTime_hour.value == null || f.st_openTime_hour.value == '' 
			|| f.st_openTime_minute == null || f.st_openTime_minute.value == '') {
		$('.msg').html('').css('visibility', 'hidden');
		$('#msg_open').html('Please enter open time').css('color', 'red').css('visibility', 'visible');
		return false;
	} 
	if(f.st_closeTime_hour.value == null || f.st_closeTime_hour.value == ''
			|| f.st_closeTime_minute == null || f.st_closeTime_minute.value == '') {
		$('.msg').html('').css('visibility', 'hidden');
		$('#msg_close').html('Please enter close time').css('color', 'red').css('visibility', 'visible');
		return false;
	} 
	if(f.st_addr.value == null || f.st_addr.value == '') {
		$('.msg').html('').css('visibility', 'hidden');
		$('#msg_addr').html('Please enter address').css('color', 'red').css('visibility', 'visible');
		return false;
	}  */
	
	f.submit();
	return true;
};

</script>
<section class="parallax-window" id="short" data-parallax="scroll"
	data-image-src="img/sub_header_cart.jpg" data-natural-width="1400"
	data-natural-height="350">
	<div id="subheader">
		<div id="sub_content">
			<h1>Admin section</h1>
			<p>Qui debitis meliore ex, tollit debitis conclusionemque te eos.</p>
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
			<li><a href="user_main.ej">Home</a></li>
			<li><a href="seller_main.ej">Seller</a></li>
			<li>Store detail</li>
		</ul>
		<a href="#0" class="search-overlay-menu-btn"><i
			class="icon-search-6"></i> Search</a>
	</div>
</div>
<!-- Position -->

<!-- 카테고리 -->
<div class="widget" id="category">
      <h4 id="food_nums">Categories</h4>
      <ul id="cat_nav_blog">
         <li><a href="coupon_list.ej">Coupon List</a></li>
         <li><a href="coupon_add.ej">Coupon Add</a></li>
         <li><a href="seller_store_detail.ej">Update my store</a></li>
         <li><a href="seller_mypage.ej">Update seller profile</a></li>

      </ul>
   </div>   

<!-- Content ================================================== -->
<div class="container margin_60">
	<div id="tabs" class="tabs">
		<nav>
			<ul>
				<li><a href="#section-1" class="icon-profile"><span>Main
							info</span></a></li>
				<li><a href="#section-2" class="icon-menut-items"><span>Menu</span></a>
				</li>
				<!-- <li><a href="#section-3" class="icon-settings"><span>Settings</span></a> -->
				<!-- </li> -->
			</ul>
		</nav>

		<div class="content">

			<section id="section-1">
				<div class="indent_title_in">
					<!-- **description remove** -->
					<i class="icon_house_alt"></i>
					<h3>General restaurant description</h3>
					<p>Partem diceret praesent mel et, vis facilis alienum antiopam
						ea, vim in sumo diam sonet. Illud ignota cum te, decore elaboraret
						nec ea. Quo ei graeci repudiare definitionem. Vim et malorum
						ornatus assentior, exerci elaboraret eum ut, diam meliore no mel.</p>
				</div>

				<form enctype="multipart/form-data" method="post" action="seller_store_modify_store.ej" onclick="return getLatLot(this.form)">
				
				<input type="hidden" value="${store.st_key }" name="st_key" id="st_key"/>
				<input type="hidden" value="${store.lat }" name="lat">
				<input type="hidden" value="${store.lot}" name="lot">
				<div class="wrapper_indent">
					<div class="form-group">
						<label>Restaurant name</label> <input class="form-control"
							name="st_nm" value="${store.st_nm }" id="st_nm"
							type="text" required>
<!-- 						<span class="msg" id="msg_name"></span> -->
					</div>
					<!-- <div class="form-group">
							<label>Restaurant description</label>
							<textarea class="wysihtml5 form-control" placeholder="Enter text ..." style="height: 200px;"></textarea>
						</div> -->

					<div class="row">
						<div class="col-sm-2">
							<div class="form-group">
								<label>Open Hour</label> <input type="number" min="0" max="24"
									class="form-control" name="st_openTime_hour"
									id="st_openTime_hour"
									value="${fn:substring(store.st_time,0,2) }" required>
							</div>
						</div>
						<div class="col-sm-2">
							<div class="form-group">
								<label>Minute</label> <input type="number" class="form-control" min="0" max="59"
									name="st_openTime_minute" id="st_openTime_minute"
									value="${fn:substring(store.st_time,3,5) }" required>
							</div>
						</div>
					</div>
<!-- 					<div class="form-group"> -->
<!-- 						<span class="msg" id="msg_open"></span> -->
<!-- 					</div> -->
					<div class="row">
						<div class="col-sm-2">
							<div class="form-group">
								<label>Close Hour</label> <input type="number" min="0" max="24"
									class="form-control" name="st_closeTime_hour"
									id="st_closeTime_hour"
									value="${fn:substring(store.st_time,6,8) }" required>
							</div>
						</div>
						<div class="col-sm-2">
							<div class="form-group">
								<label>Minute</label> <input type="number" class="form-control" min="0" max="59"
									name="st_closeTime_minute" id="st_closeTime_minute"
									value="${fn:substring(store.st_time,9,11) }" required>
							</div>
						</div>
					</div>
<!-- 					<div class="form-group"> -->
<!-- 						<span class="msg" id="msg_close"></span> -->
<!-- 					</div> -->

				</div>
				<!-- End wrapper_indent -->


				<hr class="styled_2">

				<div class="indent_title_in">
					<i class="icon_pin_alt"></i>
					<h3>Address</h3>
					<p>Mussum ipsum cacilds, vidis litro abertis.</p>
				</div>
				<div class="wrapper_indent">

					<div class="form-group">
						<label>Address</label> 
						<input type="text" id="st_addr" name="st_addr" value="${store.st_addr }" class="form-control" required>
						<input type="hidden" id="st_addr_orig" name="st_addr_orig" value="${store.st_addr }">
<!-- 						<span class="msg" id="msg_addr"></span> -->
					</div>
					<!-- <div class="col-md-3">
								<div class="form-group">
									<label>State</label>
									<input type="text" id="state_booking" name="state_booking" class="form-control">
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label>Postal code</label>
									<input type="text" id="postal_code" name="postal_code" class="form-control">
								</div>
							</div> -->
					<!--End row -->
				</div>
				<!-- End wrapper_indent -->
				<hr class="styled_2">
				<div class="indent_title_in">
					<i class="icon_images"></i>
					<h3>Restaurant Logo</h3>
					<p>Mussum ipsum cacilds, vidis litro abertis.</p>
				</div>

				<div class="wrapper_indent add_bottom_45">
					<div class="row">
					<div class="form-group">
						<img class="col-sm-4" alt="${store.st_img }" src="img/${store.st_img }">
						<input class="col-sm-4" type="hidden" name="st_original_img" value="${store.st_img }">
					</div>
					</div>
					<div id="logo_picture">
						<label>Upload your restaurant logo</label> 
						<input name="st_changed_img" type="file">
<!-- 						<div class="dz-default dz-message"> -->
<!-- 							<span>Click or Drop Images Here</span> -->
<!-- 						</div> -->
					</div>
				</div>
				<!-- <div class="form-group">
							<label>Upload your restaurant photos</label>
							<div id="photos" class="dropzone">
								<input name="file" type="file" multiple>
								<div class="dz-default dz-message"><span>Click or Drop Images Here</span>
								</div>
							</div>
						</div>
					-->
				<!-- End wrapper_indent -->

				<hr class="styled_2">
				<div class="wrapper_indent">
					<button class="btn_1" type="submit">Save now</button>
				</div>
				</form>
				<!-- End wrapper_indent -->

			</section>
			<!-- End section 1 -->

			<!-- ------------------------------------------------------------------------------------ -->

			<section id="section-2">
				<div class="indent_title_in">
					<i class="icon_document_alt"></i>
					<h3>Edit menu list</h3>
					<p>Partem diceret praesent mel et, vis facilis alienum antiopam
						ea, vim in sumo diam sonet. Illud ignota cum te, decore elaboraret
						nec ea. Quo ei graeci repudiare definitionem. Vim et malorum
						ornatus assentior, exerci elaboraret eum ut, diam meliore no mel.</p>
				</div>

				<form id="submitFood" method="post" action="seller_store_modify_food.ej" enctype="multipart/form-data">
				<input type="hidden" value="${store.st_key }" name="st_key" id="st_key"/>
				<div class="wrapper_indent">
					<!-- 2017.12.21 Modified by HB Choi -->
<%-- 					<c:set var="length" value="${fn:length(stMenu)} "/> --%>
					<c:set var="slength" scope="session" value="${fn:length(stMenu) }"/> 
					<div class="menu-item-section clearfix">
						<h4>Add Menu item</h4>
						<div>
							<a onclick="setNum(${slength}); addItem();"><i class="icon_plus_alt"></i></a>
						</div>
					</div>
					
					<div id="insertArea">
					<c:forEach var="food" items="${stMenu }" varStatus="status">
<%-- 						<c:set var="count" value="${status.count }"/> --%>
<%-- 						<c:set var="itemName" value="${'item'+ count}"/> --%>
						<input type="hidden" name="item${status.count }_f_key" value="${food.f_key }"/>
						<div id="test">
							<div class="menu-item-section clearfix item${status.count }">
								<h4>Menu item#${status.count }</h4>
								<div>
									<a onclick="removeItem(this.parentNode.parentNode.parentNode, ${status.count});"><i
										class="icon_minus_alt"></i></a>
								</div>
							</div>
							<div class="strip_menu_items">
								<div class="row">
									<div class="col-sm-2">
										<div class="col-sm-12">
										<div class="form-group">
											<label>Current Image</label>
											<input id="${food.f_img }" value="${food.f_img }" class="col-sm-12" type="image" src="img/${food.f_img }" alt="${food.f_img }">
											<input type="hidden" value="${food.f_img }" name="item${status.count }_f_img_original" />
										</div>
										</div>
									</div>
									<%-- <div class="col-sm-2">
									<div class="menu-item-pic dropzone">
										<div>
											<input type="file" name="item${status.count }_f_img_changed"/>
											<div class="dz-default dz-message">
												<span>Click or Drop<br>Images Here</span>
											</div>
										</div>
									</div> --%>
									<div class="col-sm-10">
										<div class="col-md-12">
											<div class="form-group">
												<label>Title</label> <input type="text" name="item${status.count }_f_name" value="${food.f_name }" class="form-control" required>
											</div>
										</div>
										<div class="col-md-12">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label>Price</label> <input type="number" name="item${status.count }_f_price" value="${food.f_price }" class="form-control" required>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label>New Image</label><input type="file" name="item${status.count }_f_img_changed"/>
												</div>
											</div>
										</div>
										</div>
										<!-- End form-group -->
									</div>
								</div>
								<!-- End row -->
							</div>
						</div>
						<!-- End strip_menu_items -->
					</c:forEach>
					</div>
					<!-- <div id="insertArea">
						insert new item in this Area
					</div> -->

					
				</div>
				
				<!-- End wrapper_indent -->

				<hr class="styled_2">

				<hr class="styled_2">

				<div class="wrapper_indent">
					<div class="add_more_cat">
<!-- 						<a class="btn_1">Save now</a>  -->
						<button type="submit" class="btn_1">Save now</button> 
						<a onclick="" class="btn_1">Add menu category</a>
					</div>
				</div>
					</form>
				<!-- End wrapper_indent -->
<!-- new item -->
					<div id="insertItem" style="display: none">
						<div>
							<div class="menu-item-section clearfix">
								<h4 id="food_num">New menu item </h4>
								<div>
									<a onclick="removeItem(this.parentNode.parentNode.parentNode);"><i
										class="icon_minus_alt"></i></a>
								</div>
							</div>
							<div class="strip_menu_items">
								<div class="row">
									<input name="f_img_original" id="f_img_original" value="" type="hidden">
									<!-- <div class="col-sm-2">
										<div>
											<input name="f_img_changed" id="f_img_changed" type="file">
											<div class="dz-default dz-message">
												<span>Click or Drop<br>Images Here
												</span>
											</div>
										</div>
									</div> -->
									<div class="col-sm-12">
										<div class="col-md-12">
											<div class="form-group">
												<label>Title</label> <input type="text"
													name="f_name" id="f_name" class="form-control" required>
											</div>
										</div>
										<div class="col-md-12">
										<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label>Price</label> <input type="number"
													name="f_price" id="f_price" class="form-control" required>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>New Image</label> 
												<input name="f_img_changed" id="f_img_changed" type="file" required>
											</div>
										</div>
										</div>
										</div>
										<!-- 								End form-group -->
									</div>
								</div>
								<!-- 						End row -->
							</div>
						</div>
					</div>
					<!-- End strip_menu_items -->
			</section>
			<!-- End section 2 -->
			
<!-- ---------------------------------------------------------------------------------------------- -->

			<section id="section-3">

				<div class="row">

					<div class="col-md-6 col-sm-6 add_bottom_15">
						<div class="indent_title_in">
							<i class="icon_lock_alt"></i>
							<h3>Change your password</h3>
							<p>Mussum ipsum cacilds, vidis litro abertis.</p>
						</div>
						<div class="wrapper_indent">
							<div class="form-group">
								<label>Old password</label> <input class="form-control"
									name="old_password" id="old_password" type="password">
							</div>
							<div class="form-group">
								<label>New password</label> <input class="form-control"
									name="new_password" id="new_password" type="password">
							</div>
							<div class="form-group">
								<label>Confirm new password</label> <input class="form-control"
									name="confirm_new_password" id="confirm_new_password"
									type="password">
							</div>
							<button type="submit" class="btn_1 green">Update
								Password</button>
						</div>
						<!-- End wrapper_indent -->
					</div>

					<div class="col-md-6 col-sm-6 add_bottom_15">
						<div class="indent_title_in">
							<i class="icon_mail_alt"></i>
							<h3>Change your email</h3>
							<p>Mussum ipsum cacilds, vidis litro abertis.</p>
						</div>
						<div class="wrapper_indent">
							<div class="form-group">
								<label>Old email</label> <input class="form-control"
									name="old_email" id="old_email" type="email">
							</div>
							<div class="form-group">
								<label>New email</label> <input class="form-control"
									name="new_email" id="new_email" type="email">
							</div>
							<div class="form-group">
								<label>Confirm new email</label> <input class="form-control"
									name="confirm_new_email" id="confirm_new_email" type="email">
							</div>
							<button type="submit" class="btn_1 green">Update Email</button>
						</div>
						<!-- End wrapper_indent -->
					</div>

				</div>
				<!-- End row -->

				<hr class="styled_2">

				<div class="indent_title_in">
					<i class="icon_shield"></i>
					<h3>Notification settings</h3>
					<p>Mussum ipsum cacilds, vidis litro abertis.</p>
				</div>
				<div class="row">

					<div class="col-md-6 col-sm-6">
						<div class="wrapper_indent">
							<table class="table table-striped notifications">
								<tbody>
									<tr>
										<td style="width: 5%"><i class="icon_pencil-edit_alt"></i>
										</td>
										<td style="width: 65%">New orders</td>
										<td style="width: 35%"><label> <input
												type="checkbox" name="option_1_settings" checked
												class="icheck" value="yes">Yes
										</label> <label class="margin_left"> <input type="checkbox"
												name="option_1_settings" class="icheck" value="no">No
										</label></td>
									</tr>
									<tr>
										<td><i class="icon_pencil-edit_alt"></i></td>
										<td>Modified orders</td>
										<td><label> <input type="checkbox"
												name="option_2_settings" checked class="icheck" value="yes">Yes
										</label> <label class="margin_left"> <input type="checkbox"
												name="option_2_settings" class="icheck" value="no">No
										</label></td>
									</tr>
									<tr>
										<td><i class="icon_pencil-edit_alt"></i></td>
										<td>New user registration</td>
										<td><label> <input type="checkbox"
												name="option_3_settings" checked class="icheck" value="yes">Yes
										</label> <label class="margin_left"> <input type="checkbox"
												name="option_3_settings" class="icheck" value="no">No
										</label></td>
									</tr>
									<tr>
										<td><i class="icon_pencil-edit_alt"></i></td>
										<td>New comments</td>
										<td><label> <input type="checkbox"
												name="option_4_settings" checked class="icheck" value="yes">Yes
										</label> <label class="margin_left"> <input type="checkbox"
												name="option_4_settings" class="icheck" value="no">No
										</label></td>
									</tr>
								</tbody>
							</table>
							<button type="submit" class="btn_1 green">Update
								notifications settings</button>
						</div>

					</div>
					<!-- End row -->
				</div>
				<!-- End wrapper_indent -->

			</section>
			<!-- End section 3 -->

		</div>
		<!-- End content -->
	</div>
</div>
<!-- End container  -->