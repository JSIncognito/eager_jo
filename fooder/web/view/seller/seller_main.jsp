<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
ul{
	list-style: none;
}
#view_menu{
	margin-top:10px;
	margin-bottom: 10px;
		
}
</style>


<section class="parallax-window" id="short" data-parallax="scroll"
	data-image-src="img/sub_header_cart.jpg" data-natural-width="1400"
	data-natural-height="350">
	<div id="subheader">
		<div id="sub_content">
			<h1>QuickFood Blog</h1>
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
			<li><a href="#0">Category</a></li>
			<li>Page active</li>
		</ul>
	</div>
</div>
<!-- Position -->

<!-- Content ================================================== -->
<div class="container margin_60_35">
	<div class="row">

		<div class="col-md-12">
			<div class="post">
				<a href="blog_post.html"><img src="img/blog-1.jpg" alt=""
					class="img-responsive"></a>
				<div class="post_info clearfix">
					<div class="post-left">
						<ul>
							<li><i class="icon-calendar-empty"></i>12/05/2015 <em>by
									Mark</em></li>
							<li><i class="icon-inbox-alt"></i><a href="#">Category</a></li>
							<li><i class="icon-tags"></i><a href="#">Works</a>, <a
								href="#">Personal</a></li>
						</ul>
					</div>
					<div class="post-right">
						<i class="icon-comment"></i><a href="#">25 </a>
					</div>
				</div>
				<h2>Duis aute irure dolor in reprehenderit</h2>
				<p>Ludus albucius adversarium eam eu. Sit eu reque tation
					aliquip. Quo no dolorum albucius lucilius, hinc eligendi ut sed. Ex
					nam quot ferri suscipit, mea ne legere alterum repudiandae. Ei pri
					quaerendum intellegebat, ut vel consequuntur voluptatibus. Et
					volumus sententiae adversarium duo......</p>
				<p>Ludus albucius adversarium eam eu. Sit eu reque tation
					aliquip. Quo no dolorum albucius lucilius, hinc eligendi ut sed. Ex
					nam quot ferri suscipit, mea ne legere alterum repudiandae. Ei pri
					quaerendum intellegebat, ut vel consequuntur voluptatibus. Et
					volumus sententiae adversarium duo......</p>
				<a href="blog_post.html" class="btn_1">Read more</a>
			</div>
			<!-- end post -->

			<div class="post">
				<a href="blog_post.html"><img src="img/blog-2.jpg" alt=""
					class="img-responsive"></a>
				<div class="post_info clearfix">
					<div class="post-left">
						<ul>
							<li><i class="icon-calendar-empty"></i>12/05/2015 <em>by
									Mark</em></li>
							<li><i class="icon-inbox-alt"></i><a href="#">Category</a></li>
							<li><i class="icon-tags"></i><a href="#">Works</a>, <a
								href="#">Personal</a></li>
						</ul>
					</div>
					<div class="post-right">
						<i class="icon-comment"></i><a href="#">25 </a>
					</div>
				</div>
				<h2>Duis aute irure dolor in reprehenderit</h2>
				<p>Ludus albucius adversarium eam eu. Sit eu reque tation
					aliquip. Quo no dolorum albucius lucilius, hinc eligendi ut sed. Ex
					nam quot ferri suscipit, mea ne legere alterum repudiandae. Ei pri
					quaerendum intellegebat, ut vel consequuntur voluptatibus. Et
					volumus sententiae adversarium duo......</p>
				<p>Ludus albucius adversarium eam eu. Sit eu reque tation
					aliquip. Quo no dolorum albucius lucilius, hinc eligendi ut sed. Ex
					nam quot ferri suscipit, mea ne legere alterum repudiandae. Ei pri
					quaerendum intellegebat, ut vel consequuntur voluptatibus. Et
					volumus sententiae adversarium duo......</p>
				<a href="blog_post.html" class="btn_1">Read more</a>
			</div>
			<!-- end post -->

			<div class="col-md-9">

				<div id="tools">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-6">
							<div class="styled-select">
								<select name="sort_rating" id="sort_rating">
									<option value="" selected>Sort by ranking</option>
									<option value="lower">Lowest ranking</option>
									<option value="higher">Highest ranking</option>
								</select>
							</div>
						</div>
						<div class="col-md-9 col-sm-9 hidden-xs">
							<a href="grid_list.html" class="bt_filters"><i
								class="icon-th"></i></a>
						</div>
					</div>
				</div>
				<!--End tools -->
				<c:forEach var="s" items="${myStore}">
					<div class="strip_list wow fadeIn" data-wow-delay="0.1s">
						<div class="ribbon_1">Popular</div>
						<div class="row">
							<div class="col-md-9 col-sm-9">
								<div class="desc">
									<div class="thumb_strip">

										<a href="detail_page.html"><img
											src="img/thumb_restaurant.jpg" alt=""></a>
									</div>
									<div class="rating">
										<!-- <i class="icon_star voted"></i><i class="icon_star voted"></i><i
											class="icon_star voted"></i><i class="icon_star voted"></i><i
											class="icon_star"></i> (<small><a href="#0">98
												reviews</a></small>) -->
										<%-- <i class="icon_star voted"></i><i class="icon_star voted"></i><i
											class="icon_star voted"></i><i class="icon_star voted"></i><i
											class="icon_star"></i> (<small><a href="#0">${s.st_star }
												reviews</a></small>) --%>
									</div>
									<h3>${s.st_nm }</h3>
									<!-- <div class="type">Mexican / American</div> -->
									<div class="type">${s.st_type }</div>

									<!-- <div class="location">
										135 Newtownards Road, Belfast, BT4. <span class="opening">Opens
											at 17:00.</span> Minimum order: $15
									</div> -->
									<div class="location">
										${s.st_addr }<span class="opening">HOURS ${s.st_time }
										</span> Minimum order: $15
									</div>
									<ul>
										<li>Take away<i class="icon_check_alt2 ok"></i></li>
										<li>Delivery<i class="icon_check_alt2 ok"></i></li>
									</ul>
								</div>
							</div>
							<div class="col-md-3 col-sm-3">
								<div class="go_to">
									<ul>
										<li><a href="detail_page.html" id="view_menu"
											class="btn_1">View Menu</a></li>


										<li><a href="coupon_list.ej" id="view_coupon"
											class="btn_1">View Coupon</a></li>
									</ul>
								</div>
							</div>
						</div>
						<!-- End row-->
					</div>
					<!-- End strip_list-->
				</c:forEach>




				<a href="#0" class="load_more_bt wow fadeIn" data-wow-delay="0.2s">Load
					more...</a>
			</div>
			<!-- End col-md-9-->

			<!-- <div class="post">
					<a href="blog_post.html" ><img src="img/blog-3.jpg" alt="" class="img-responsive"></a>
					<div class="post_info clearfix">
						<div class="post-left">
							<ul>
								<li><i class="icon-calendar-empty"></i>12/05/2015 <em>by Mark</em></li>
                                <li><i class="icon-inbox-alt"></i><a href="#">Category</a></li>
								<li><i class="icon-tags"></i><a href="#">Works</a>, <a href="#">Personal</a></li>
							</ul>
						</div>
						<div class="post-right"><i class="icon-comment"></i><a href="#">25 </a></div>
					</div>
					<h2>Duis aute irure dolor in reprehenderit</h2>
					<p>
						Ludus albucius adversarium eam eu. Sit eu reque tation aliquip. Quo no dolorum albucius lucilius, hinc eligendi ut sed. Ex nam quot ferri suscipit, mea ne legere alterum repudiandae. Ei pri quaerendum intellegebat, ut vel consequuntur voluptatibus. Et volumus sententiae adversarium duo......
					</p>
                    <p>
						Ludus albucius adversarium eam eu. Sit eu reque tation aliquip. Quo no dolorum albucius lucilius, hinc eligendi ut sed. Ex nam quot ferri suscipit, mea ne legere alterum repudiandae. Ei pri quaerendum intellegebat, ut vel consequuntur voluptatibus. Et volumus sententiae adversarium duo......
					</p>
					<a href="blog_post.html" class="btn_1" >Read more</a>
				</div>end post -->

			<!--  <div class="text-center">
                 <ul class="pager">
                    <li class="previous"><a href="#"><span aria-hidden="true">&larr;</span> Older</a></li>
                    <li class="next"><a href="#">Newer <span aria-hidden="true">&rarr;</span></a></li>
                  </ul>
              </div> -->
		</div>
		<!-- End col-md-9-->

		<!--       <aside class="col-md-3" id="sidebar">

				<div class="widget">
				<div id="custom-search-input-blog">
                <div class="input-group col-md-12">
                    <input type="text" class="form-control input-lg" placeholder="Search">
                    <span class="input-group-btn">
                        <button class="btn btn-info btn-lg" type="button">
                            <i class="icon-search-1"></i>
                        </button>
                    </span>
                </div>
            </div>
				</div>End Search
                <hr>
				<div class="widget">
					<h4>Categories</h4>
					<ul id="cat_nav_blog">
                    	<li><a href="#">News</a></li>
                        <li><a href="#">Events</a></li>
                        <li><a href="#">Special dishes</a></li>
                        <li><a href="#">New Restaurants</a></li>
                    </ul>
				</div>End widget
 
               <hr>
            
				<div class="widget">
					<h4>Recent post</h4>
					<ul class="recent_post">
						<li>
						<i class="icon-calendar-empty"></i> 16th July, 2020
						<div><a href="#">It is a long established fact that a reader will be distracted </a></div>
						</li>
						<li>
						<i class="icon-calendar-empty"></i> 16th July, 2020
						<div><a href="#">It is a long established fact that a reader will be distracted </a></div>
						</li>
						<li>
						<i class="icon-calendar-empty"></i> 16th July, 2020
						<div><a href="#">It is a long established fact that a reader will be distracted </a></div>
						</li>
					</ul>
				</div>End widget
                <hr>
				<div class="widget tags">
					<h4>Tags</h4>
					<a href="#">Lorem ipsum</a>
					<a href="#">Dolor</a>
					<a href="#">Long established</a>
					<a href="#">Sit amet</a>
					<a href="#">Latin words</a>
					<a href="#">Excepteur sint</a>
				</div>End widget
                
     </aside>End aside -->

	</div>
</div>
<!-- End container -->