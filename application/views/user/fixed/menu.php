<?php $cate = $this->data['cate']; ?>
<nav>
	<div class="container">
	    <div class="nav-wrapper">
	      	<a href="<?=ROOT?>" title="Trang chủ" class="brand-logo"><span class="fa fa-home"></span></a>
	      	<ul class="menu-main" style="text-transform: uppercase;  ">
	      		<li><a href="#" title="Danh mục">Hải sản</a>
	      			<ul class="dropdown-menu nav-sub-menu">
		      		<?php menuExpand($cate); ?>
		      		</ul>
	      		</li>
	      	 	<li><a href="<?=ROOT?>huong-dan.html" title="Blogs">Hướng dẫn</a></li>
	      	 	<li><a href="<?=ROOT?>video.html" title="Videos">Videos</a></li>
	      	  	<li><a href="<?=ROOT?>khach-hang/ban-do.html" title="Bản đồ">Bản đồ</a></li>
	      	  	<li><a href="<?=ROOT?>khach-hang/lien-he.html" title="Liên hệ">Liên hệ</a></li>
	      	</ul>
	    </div>
	</div>
</nav>

<?php 
	function menuExpand($cate = array()){
		foreach ($cate as $key => $value) {
			if(!$value['children'])
				echo '<li><a href="'.ROOT.'hai-san/'.$value['slug'].'.html" title="'.$value['name'].'">'.$value['name'].'</a></li>';
			else
			{
				echo '<li>';
				echo '<a href="'.ROOT.'hai-san/'.$value['slug'].'.html" title="'.$value['name'].'">'.$value['name'].'<span class="caret fa fa-caret-right"></span></a>';
				echo '<ul class="dropdown-menu">';
				menuExpand($value['children']);
				echo '</ul>';
				echo '</li>';
			}
		}
	} 
?>