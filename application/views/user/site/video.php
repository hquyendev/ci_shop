<div class="breakcrum">
	<a href="<?=ROOT?>" title="Trang chủ">Home</a> <span class="right-arrow fa fa-angle-right"></span>
	<?php for ($i=0; $i < count($listParent) - 1; $i++) { ?>
	<a href="<?=ROOT?><?=$listParent[$i]['slug']?>.html" title="<?=$listParent[$i]['name']?>"><?=$listParent[$i]['name']?></a> <span class="right-arrow fa fa-angle-right"></span>
	<?php } ?>
	<span class="final"><?=$listParent[count($listParent)-1]['name']?></span>
</div>
<div class="row">
	<div id="show-item-post" class="show-item-post video-post">
		<div class="col s8 x12">
			<?php if($data) { ?>
			<?php foreach ($data as $key => $value) { ?>
			<?php if($key%2==0){ ?><div class="row"><?php } ?>
				<div class="col s6">
					<div class="box-item-post">
						<div class="image">
							<a href="<?=ROOT?>video/<?=$value['id']?>-<?=$value['slug']?>.html" title="<?=$value['name']?>" _getThumbnail="<?=$value['image']?>" class="_getThumbnail">
							</a>
						</div>
						<a href="<?=ROOT?>video/<?=$value['id']?>-<?=$value['slug']?>.html" title="<?=$value['name']?>" class="name" ><?=$value['name']?></a>
					</div>
				</div>
			
			<?php if($key%2!=0){ ?></div><?php } ?>
			<?php } ?>
			<?php } else { ?>
				<div class="card-panel orange lighten-5 center-align" style="margin:8px">Chưa có dữ liệu</div>
			<?php } ?>

		</div>
		<div class="item-post-vert item-post col s4 x12">
			<?php if($data_view) { ?>
			<div class="post_view_title">Xem nhiều nhất</div>
			<?php foreach ($data_view as $key => $value) { ?>
				<div class="box-item-post">
					<div class="image">
						<a href="<?=ROOT?>video/<?=$value['id']?>-<?=$value['slug']?>.html" title="<?=$value['name']?>" _getThumbnail="<?=$value['image']?>" class="_getThumbnail">
					<a href="<?=ROOT?>video/<?=$value['id']?>-<?=$value['slug']?>.html" title="<?=$value['name']?>" class="name"><?=$value['name']?> </a>
					</div>
				</div>
			<?php } } ?>

		</div>
	</div>
<!-- 	<?php if($showView) { ?>
	<div class="view-more">
		<a href="<?=ROOT?>api/get/1?c=<?=$id?>" c="<?=$id?>" page="1" api="<?=ROOT?>api/get/" target="main" id="view-more-item" class="view-more-item btn-large "><span id="loadding" class="fa"></span> Xem thêm</a>
	</div>
	<?php } ?> -->
</div>
