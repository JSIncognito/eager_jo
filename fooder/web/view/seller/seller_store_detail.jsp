<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
#hour_div{
	float: left;
}
</style>
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
			<li><a href="#0">Home</a></li>
			<li><a href="#0">Seller</a></li>
			<li>Store detail</li>
		</ul>
		<a href="#0" class="search-overlay-menu-btn"><i
			class="icon-search-6"></i> Search</a>
	</div>
</div>
<!-- Position -->

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

				<div class="wrapper_indent">
					<div class="form-group">
						<label>Restaurant name</label> <input class="form-control"
							name="st_nm" value="${store.st_nm }" id="restaurant_name"
							type="text">
					</div>
					<!-- <div class="form-group">
							<label>Restaurant description</label>
							<textarea class="wysihtml5 form-control" placeholder="Enter text ..." style="height: 200px;"></textarea>
						</div> -->
						
						<div class="row">
							<div class="col-sm-2">
								<div class="form-group">
									<label>Open Hour</label>
									<input type="number" class="form-control" name="st_openTime_hour" id="st_openTime_hour" value="${fn:substring(store.st_time,0,2) }"> 
								</div>
							</div>
							<div class="col-sm-2">
								<div class="form-group">
									<label>Minute</label> 
									<input type="number" class="form-control" name="st_openTime_minute" id="st_openTime_minute" value="${fn:substring(store.st_time,3,5) }">
								</div>
							</div>
						</div>
					<div class="row">
						<div class="col-sm-2">
							<div class="form-group">
								<label>Close Hour</label> 
								<input type="number" class="form-control" name="st_closeTime_hour" id="st_closeTime_hour" value="${fn:substring(store.st_time,6,8) }"> 
							</div>
						</div>
						<div class="col-sm-2">
							<div class="form-group">
								<label>Minute</label> 
								<input type="number" class="form-control" name="st_closeTime_minute" id="st_closeTime_minute" value="${fn:substring(store.st_time,9,11) }">
							</div>
						</div>
					</div>
					
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
							<label>Address</label> <input type="text" id="st_addr"
								name="st_addr" value="${store.st_addr }" class="form-control">
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
					<div class="form-group">
						<img alt="${store.st_img }" src="img/${store.st_img }">
					</div>
					
					<div id="logo_picture" class="dropzone">
						<label>Upload your restaurant logo</label>
						<input name="file" type="file">
						<div class="dz-default dz-message">
							<span>Click or Drop Images Here</span>
						</div>
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
					<button class="btn_1"
						onclick="location.href='seller_store_modify.ej';">Save now</button>
				</div>
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

				<div class="wrapper_indent">
					<!-- <div class="form-group">
							<label>Menu Category</label>
							<input type="text" name="menu_category" class="form-control" placeholder="EX. Starters">
						</div> -->

					<div class="menu-item-section clearfix">
						<h4>Menu item</h4>
						<div>
							<a href="#0"><i class="icon_plus_alt"></i></a><a href="#0"><i
								class="icon_minus_alt"></i></a>
						</div>
					</div>

					<c:set var="size" value="${stMenu.length }"/>
					<c:forEach var="food" items="${stMenu }">
					<div class="strip_menu_items">
						<div class="row">
							<div class="col-sm-2">
									<input name="f_img_orginal" id="${food.f_img }" class="col-sm-12" type="image" src="img/${food.f_img }">
							</div>
							<div class="col-sm-2">
								<div class="menu-item-pic dropzone">
									<input name="f_img_changed" type="file" onchange="changeImg(${food.f_img }, this)">
									<div class="dz-default dz-message">
										<span>Click or Drop<br>Images Here
										</span>
									</div>
								</div>
							</div>
							<div class="col-sm-8">
									<div class="col-md-12">
										<div class="form-group">
											<label>Title</label> <input type="text"
												name="f_name" value="${food.f_name }" class="form-control">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Price</label> <input type="number"
												name="f_price" value="${food.f_name }" class="form-control">
										</div>
									</div>
								<!-- End form-group -->
							</div>
						</div>
						<!-- End row -->
					</div>
					<!-- End strip_menu_items -->
					</c:forEach>

					<!-- <div class="strip_menu_items">
						<div class="row">
							<div class="col-sm-2">
									<input class="col-sm-12" type="image" src="img/">
							</div>
							<div class="col-sm-2">
								<div class="menu-item-pic dropzone">
									<input name="file" type="file">
									<div class="dz-default dz-message">
										<span>Click or Drop<br>Images Here
										</span>
									</div>
								</div>
							</div>
							<div class="col-sm-8">
									<div class="col-md-12">
										<div class="form-group">
											<label>Title</label> <input type="text"
												name="menu_item_title" class="form-control">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Price</label> <input type="number"
												name="menu_item_price" class="form-control">
										</div>
									</div>
								End form-group
							</div>
						</div>
						End row
					</div> -->
					<!-- End strip_menu_items -->



					<!-- <div class="menu-item-section clearfix">
							<h4>Menu item #2</h4>
							<div><a href="#0"><i class="icon_plus_alt"></i></a><a href="#0"><i class="icon_minus_alt"></i></a>
							</div>
						</div> -->

					<!-- <div class="strip_menu_items">
							<div class="row">
								<div class="col-sm-3">
									<div class="menu-item-pic dropzone">
										<input name="file" type="file">
										<div class="dz-default dz-message"><span>Click or Drop<br>Images Here</span>
										</div>
									</div>
								</div>
								<div class="col-sm-9">
									<div class="row">
										<div class="col-md-8">
											<div class="form-group">
												<label>Title</label>
												<input type="text" name="menu_item_title" class="form-control">
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<label>Price</label>
												<input type="text" name="menu_item_title_price" class="form-control">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label>Short description</label>
										<input type="text" name="menu_item_description" class="form-control">
									</div>

									<div class="form-group">
										<label>Item options</label>
                                        <div class="table-responsive">
										<table class="table table-striped notifications">
											<tbody>
												<tr>
													<td style="width:20%">
														<input type="text" class="form-control" placeholder="+ $3.50">
													</td>
													<td style="width:50%">
														<input type="text" class="form-control" placeholder="Ex. Medium">
													</td>
													<td style="width:30%">
														<label>
															<input type="radio" name="option_item_settings_5" checked class="icheck" value="checkbox">Checkbox</label>
														<label class="margin_left">
															<input type="radio" name="option_item_settings_5" class="icheck" value="radio">Radio</label>
													</td>
												</tr>
												<tr>
													<td style="width:20%">
														<input type="text" class="form-control" placeholder="+ $5.50">
													</td>
													<td style="width:50%">
														<input type="text" class="form-control" placeholder="Ex. Large">
													</td>
													<td style="width:30%">
														<label>
															<input type="radio" name="option_item_settings_7" class="icheck" value="checkbox">Checkbox</label>
														<label class="margin_left">
															<input type="radio" name="option_item_settings_7" class="icheck" value="radio" checked>Radio</label>
													</td>
												</tr>
											</tbody>
										</table>
                                        </div>
									</div>End form-group

									<div class="form-group">
										<label>Item ingredients</label>
                                        <div class="table-responsive">
										<table class="table table-striped notifications">
											<tbody>
												<tr>
													<td style="width:20%">
														<input type="text" class="form-control" placeholder="+ $2.50">
													</td>
													<td style="width:50%">
														<input type="text" class="form-control" placeholder="Ex. Extra tomato">
													</td>
													<td style="width:30%">
														<label>
															<input type="radio" name="option_item_settings_8" checked class="icheck" value="checkbox">Checkbox</label>
														<label class="margin_left">
															<input type="radio" name="option_item_settings_8" class="icheck" value="radio">Radio</label>
													</td>
												</tr>
												<tr>
													<td style="width:20%">
														<input type="text" class="form-control" placeholder="+ $5.50">
													</td>
													<td style="width:50%">
														<input type="text" class="form-control" placeholder="Ex. Extra Pepper">
													</td>
													<td style="width:30%">
														<label>
															<input type="radio" name="option_item_settings_9" class="icheck" value="checkbox">Checkbox</label>
														<label class="margin_left">
															<input type="radio" name="option_item_settings_9" class="icheck" value="radio" checked>Radio</label>
													</td>
												</tr>
											</tbody>
										</table>
                                        </div>
									</div>End form-group
								</div>
							</div>End row
						</div> -->
					<!-- End strip_menu_items -->
				</div>
				<!-- End wrapper_indent -->

				<hr class="styled_2">
				<!--                    
					<div class="wrapper_indent">
						<div class="form-group">
							<label>Menu Category</label>
							<input type="text" name="menu_category" class="form-control" placeholder="EX. Main courses">
						</div>

						<div class="menu-item-section clearfix">
							<h4>Menu item #1</h4>
							<div><a href="#0"><i class="icon_plus_alt"></i></a><a href="#0"><i class="icon_minus_alt"></i></a>
							</div>
						</div>

						<div class="strip_menu_items">
							<div class="row">
								<div class="col-sm-3">
									<div class="menu-item-pic dropzone">
										<input name="file" type="file">
										<div class="dz-default dz-message"><span>Click or Drop<br>Images Here</span>
										</div>
									</div>
								</div>
								<div class="col-sm-9">
									<div class="row">
										<div class="col-md-8">
											<div class="form-group">
												<label>Title</label>
												<input type="text" name="menu_item_title" class="form-control">
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<label>Price</label>
												<input type="text" name="menu_item_title_price" class="form-control">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label>Short description</label>
										<input type="text" name="menu_item_description" class="form-control">
									</div>

									<div class="form-group">
										<label>Item options</label>
                                        <div class="table-responsive">
										<table class="table table-striped notifications">
											<tbody>
												<tr>
													<td style="width:20%">
														<input type="text" class="form-control" placeholder="+ $3.50">
													</td>
													<td style="width:50%">
														<input type="text" class="form-control" placeholder="Ex. Medium">
													</td>
													<td style="width:30%">
														<label>
															<input type="radio" name="option_item_settings_10" checked class="icheck" value="checkbox">Checkbox</label>
														<label class="margin_left">
															<input type="radio" name="option_item_settings_10" class="icheck" value="radio">Radio</label>
													</td>
												</tr>
												<tr>
													<td style="width:20%">
														<input type="text" class="form-control" placeholder="+ $5.50">
													</td>
													<td style="width:50%">
														<input type="text" class="form-control" placeholder="Ex. Large">
													</td>
													<td style="width:30%">
														<label>
															<input type="radio" name="option_item_settings_11" class="icheck" value="checkbox">Checkbox</label>
														<label class="margin_left">
															<input type="radio" name="option_item_settings_11" class="icheck" value="radio" checked>Radio</label>
													</td>
												</tr>
											</tbody>
										</table>
                                        </div>
									</div>End form-group

									<div class="form-group">
										<label>Item ingredients</label>
                                        <div class="table-responsive">
										<table class="table table-striped notifications">
											<tbody>
												<tr>
													<td style="width:20%">
														<input type="text" class="form-control" placeholder="+ $2.50">
													</td>
													<td style="width:50%">
														<input type="text" class="form-control" placeholder="Ex. Extra tomato">
													</td>
													<td style="width:30%">
														<label>
															<input type="radio" name="option_item_settings_12" checked class="icheck" value="checkbox">Checkbox</label>
														<label class="margin_left">
															<input type="radio" name="option_item_settings_12" class="icheck" value="radio">Radio</label>
													</td>
												</tr>
												<tr>
													<td style="width:20%">
														<input type="text" class="form-control" placeholder="+ $5.50">
													</td>
													<td style="width:50%">
														<input type="text" class="form-control" placeholder="Ex. Extra Pepper">
													</td>
													<td style="width:30%">
														<label>
															<input type="radio" name="option_item_settings_13" class="icheck" value="checkbox">Checkbox</label>
														<label class="margin_left">
															<input type="radio" name="option_item_settings_13" class="icheck" value="radio" checked>Radio</label>
													</td>
												</tr>
											</tbody>
										</table>
                                        </div>
									</div>End form-group
								</div>
							</div>End row
						</div>End strip_menu_items
					</div>End wrapper_indent -->

				<hr class="styled_2">

				<div class="wrapper_indent">
					<div class="add_more_cat">
						<a href="#0" class="btn_1">Save now</a> <a href="#0" class="btn_1">Add
							menu category</a>
					</div>
				</div>
				<!-- End wrapper_indent -->

			</section>
			<!-- End section 2 -->

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