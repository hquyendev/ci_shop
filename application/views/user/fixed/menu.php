<?php $cate = $this->data['cate']; ?>
<nav>
	<div class="container">
	    <div class="nav-wrapper">
	      	<a href="<?=ROOT?>" title="Trang chủ" class="brand-logo"><span class="fa fa-home"></span></a>
	      	<a href="#" title="Menu" data-activates="mobile-demo" class="button-collapse"><i class="fa fa-bars"></i></a>
	      	<ul class="menu-main" style="text-transform: uppercase;  ">
	      		<li><a href="#" title="Danh mục">Sản phẩm</a>
	      			<ul class="dropdown-menu nav-sub-menu">
		      		<?php menuExpand($cate); ?>
		      		</ul>
	      		</li>
	      	 	<li><a href="<?=ROOT?>blog.html" title="Blogs">Blogs</a></li>
	      	 	<li><a href="<?=ROOT?>video.html" title="Videos">Videos</a></li>
	      	  	<li><a href="<?=ROOT?>huong-dan/ban-do.html" title="Bản đồ">Bản đồ</a></li>
	      	  	<li><a href="<?=ROOT?>huong-dan/lien-he.html" title="Liên hệ">Liên hệ</a></li>
	      	</ul>
	      	<!-- <ul class="side-nav" id="mobile-demo">
	      	  	<li><a href="<?=ROOT?>huong-dan/ban-do.html">Sass</a></li>
	      	  	<li><a href="badges.html">Components</a></li>
	      	  	<li><a href="collapsible.html">Javascript</a></li>
	      	  	<li><a href="mobile.html">Mobile</a></li> -->
	      	</ul>
	    </div>
	</div>
</nav>

<?php 
	function menuExpand($cate = array()){
		foreach ($cate as $key => $value) {
			if(!$value['children'])
				echo '<li><a href="'.ROOT.'danh-muc/'.$value['slug'].'.html" title="'.$value['name'].'">'.$value['name'].'</a></li>';
			else
			{
				echo '<li>';
				echo '<a href="'.ROOT.'danh-muc/'.$value['slug'].'.html" title="'.$value['name'].'">'.$value['name'].'<span class="caret fa fa-caret-right"></span></a>';
				echo '<ul class="dropdown-menu">';
				menuExpand($value['children']);
				echo '</ul>';
				echo '</li>';
			}
		}
	} 
?>