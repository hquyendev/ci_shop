<div class="breakcrum">
	<a href="<?=ROOT?>" title="Trang chủ">Home</a> <span class="right-arrow fa fa-angle-right"></span>
		<a href="<?=ROOT?>" title="Hải sản">Hải sản</a> <span class="right-arrow fa fa-angle-right"></span>
	<?php for ($i=0; $i < count($listParent) - 1; $i++) { ?>
	<a href="<?=ROOT?>hai-san/<?=$listParent[$i]['slug']?>.html" title="<?=$listParent[$i]['name']?>"><?=$listParent[$i]['name']?></a> <span class="right-arrow fa fa-angle-right"></span>
	<?php } ?>
	<span class="final"><?=$listParent[count($listParent)-1]['name']?></span>
</div>
<div class="row">
	<div class="col s9">
		<div class="row"><div class="col s12"><div class="col s12"><div class="about-cate"><?=$cate['detail']?></div></div></div></div>
		<div id="show-item" class="show-item show-item-small">
			<?php if($data) { ?>
			<?php foreach ($data as $key => $value) { ?>
			<?php $image = explode('|', $value['image']); ?>
				<div class="item">
					<div class="box-item">
						<div class="image">
							<a href="<?=ROOT?>gio-hang/add/<?=$value['id']?>.html" title="Thêm <?=$value['name']?> vào giỏ hàng" target="main" class="action-item buy"><span class="fa fa-cart-plus"></span> <span class="buy-text">Mua hàng</span></a>
							<a href="<?=ROOT?>hai-san/<?=$cate['slug']?>/<?=$value['slug']?>.html" title="<?=$value['name']?>"><img src="<?=ROOT?>upload/product/450/<?=$image[0]?>" alt="<?=$value['name']?>" ></a></div>
						<div class="info">
							<a href="<?=ROOT?>hai-san/<?=$cate['slug']?>/<?=$value['slug']?>.html" title="<?=$value['name']?>" class="name"><?=$value['name']?></a>
							<div class="price"><?=number_format($value['price'])?> VNĐ / <?=$value['unit']?></div>
						</div>
					</div>
				</div>
			<?php } ?>
			<?php } else { ?>
			<div class="card-panel orange lighten-5 center-align" style="margin:8px">Chưa có dữ liệu trong danh mục này</div>
			<?php } ?>

		</div>
		<?php if($showView) { ?>
		<div class="view-more">
			<a href="<?=ROOT?>api/get/1?c=<?=$id?>" c="<?=$id?>" page="1" api="<?=ROOT?>api/get/" target="main" id="view-more-item" class="view-more-item btn-large "><span id="loadding" class="fa"></span> Xem thêm</a>
		</div>
		<?php } ?>
	</div>
	<div class="col s3">
		<div class="post_view_title">Hải sản bán chạy</div>
		<div class="show-item-vert">
			<?php if($productHot) { ?>
			<?php foreach ($productHot as $key => $value) { ?>
			<?php $image = explode('|', $value['image']); ?>
				<div class="row">
					<div class="item">
						<div class="box-item">
							<div class="col s5">
								<div class="image">
									<a href="<?=ROOT?>hai-san/<?=$cate['slug']?>/<?=$value['slug']?>.html" title="<?=$value['name']?>"><img src="<?=ROOT?>upload/product/450/<?=$image[0]?>" alt="<?=$value['name']?>" ></a>
								</div>
							</div>
								<div class="col s7">
								<div class="info">
									<a href="<?=ROOT?>hai-san/<?=$cate['slug']?>/<?=$value['slug']?>.html" title="<?=$value['name']?>" class="name"><?=$value['name']?></a>
									<div class="price"><?=number_format($value['price'])?> VNĐ / <?=$value['unit']?></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			<?php } ?>
			<?php } else { ?>
			<div class="card-panel orange lighten-5 center-align" style="margin:8px">Chưa có dữ liệu trong danh mục này</div>
			<?php } ?>
		</div>
	</div>
</div>
