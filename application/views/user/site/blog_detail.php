<div class="breakcrum">
	<a href="<?=ROOT?>" title="Trang chủ">Home</a> <span class="right-arrow fa fa-angle-right"></span>
	<?php for ($i=0; $i < count($listParent) - 1; $i++) { ?>
	<a href="<?=ROOT?><?=$listParent[$i]['slug']?>.html" title="<?=$listParent[$i]['name']?>"><?=$listParent[$i]['name']?></a> <span class="right-arrow fa fa-angle-right"></span>
	<?php } ?>
	<span class="final"><?=$listParent[count($listParent)-1]['name']?></span>
</div>
<div class="row">
	<div id="show-item-post" class="show-item-post">
		<div class="item-post-detail item-post col s8 x12">
			<?php if($data) { ?>
			<div class="box-item-post">
				<a href="<?=ROOT?>blog/<?=$data['id']?>-<?=$data['slug']?>.html" title="<?=$data['name']?>" class="name" ><?=$data['name']?> <span class="time"><span class="fa fa-history"></span> <?=date('d-m-Y', $data['time'])?></span></a>
				<div class="image">
					<a href="<?=ROOT?>blog/<?=$data['id']?>-<?=$data['slug']?>.html" title="<?=$data['name']?>"><img src="<?=ROOT?>upload/post/450/<?=$data['image']?>" alt=""></div>
					</a>
				</div>
				<div class="content"><?=$data['content']?></div>
			</div>
			<?php } ?>

		</div>
		<div class="item-post-vert item-post col s4 x12">
			<?php if($data_view) { ?>
			<div class="post_view_title">Xem nhiều nhất</div>
			<?php foreach ($data_view as $key => $value) { ?>
				<div class="box-item-post">
					<div class="image">
						<a href="<?=ROOT?>blog/<?=$value['id']?>-<?=$value['slug']?>.html" title="<?=$value['name']?>"><img src="<?=ROOT?>upload/post/450/<?=$value['image']?>" alt="<?=$value['name']?>"></a>
					<a href="<?=ROOT?>blog/<?=$value['id']?>-<?=$value['slug']?>.html" title="<?=$value['name']?>" class="name"><?=$value['name']?> </a>
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
