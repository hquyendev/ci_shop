<?php $cate = $this->data['cate']; ?>

<div class="show-menu">
		<div class="panel-title">Giới thiệu</div>
		<div class="panel-desc">Về chúng tôi</div>
		<div class="about-us" ><?=$about_us[0]['content']?><span class="view-more2">Xem thêm >>></span></div>
	<div class="row">
		<?php 
		foreach ($intros as $key => $value) { ?>
			<div class="col s3">
				<div class="box-menu">
					<a href="<?=ROOT?>gioi-thieu/<?=$value['slug']?>.html" title="<?=$value['name']?>">
						<img src="<?=ROOT?>upload/intro/450/<?=$value['image']?>" alt="<?=$value['name']?>">
						<div class="overlay"><span class="text"><?=$value['name']?></span></div>
					</a>
				</div>
			</div>
		<?php	
		}
		 ?>
	</div>
</div>

<div class="show-menu">
		<div class="panel-title">Hải sản</div>
		<div class="panel-desc">Khám phá sản phẩm của chúng tôi ngay</div>
	<div class="row">
		<?php 
		foreach ($cate as $key => $value) {
			if(!$value['children']) { ?>
				<div class="col s3">
					<div class="box-menu">
						<a href="<?=ROOT?>hai-san/<?=$value['slug']?>.html" title="<?=$value['name']?>">
							<img src="<?=ROOT?>upload/cate/350/<?=$value['image']?>" alt="<?=$value['name']?>">
							<div class="overlay"><span class="text"><?=$value['name']?></span></div>
						</a>
					</div>
				</div>
		<?php	
			}
		}
		 ?>
	</div>
</div>


<div class="show-menu">
		<div class="panel-title">Blogs</div>
		<div class="panel-desc">Cách nấu những món ăn ngon cho gia đình của bạn</div>
	<div class="row">
		<?php 
		foreach ($blogs as $key => $value) { ?>
			<div class="col s3">
				<div class="box-menu">
					<a href="<?=ROOT?>huong-dan/<?=$value['slug']?>.html" title="<?=$value['name']?>">
						<img src="<?=ROOT?>upload/post/450/<?=$value['image']?>" alt="<?=$value['name']?>">
						<div class="overlay"></div>
					</a>
				</div>
				<a href="<?=ROOT?>huong-dan/<?=$value['slug']?>.html" title="<?=$value['name']?>" class="blog-title"><span class="text"><?=$value['name']?></span></a>
			</div>
		<?php	
		}
		?>
		<div class="col s12"><a href="<?=ROOT?>huong-dan.html" style="display: block; text-align: center;">Xem thêm >>></a></div>
	</div>
</div>

<div class="show-menu">
		<div class="panel-title">Videos</div>
		<div class="panel-desc">Videos / Clips</div>
	<div class="row video-post">
		<?php 
		foreach ($videos as $key => $value) { ?>
			<div class="col s3">
				<div class="box-menu">
					<a href="<?=ROOT?>video/<?=$value['slug']?>.html" title="<?=$value['name']?>" _getThumbnail="<?=$value['image']?>" class="_getThumbnail">

					</a>
					<a href="<?=ROOT?>video/<?=$value['slug']?>.html" title="<?=$value['name']?>">
						<div class="overlay"></div>
					</a>
				</div>
				<a href="<?=ROOT?>video/<?=$value['slug']?>.html" title="<?=$value['name']?>" class="blog-title"><span class="text"><?=$value['name']?></span></a>
			</div>
		<?php	
		}
		 ?>
		<div class="col s12"><a href="<?=ROOT?>video.html" style="display: block; text-align: center;">Xem thêm >>></a></div>
	</div>
</div>
