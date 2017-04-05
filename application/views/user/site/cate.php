<div class="breakcrum">
	<a href="<?=ROOT?>" title="Trang chủ">Home</a> <span class="right-arrow fa fa-angle-right"></span>
	<?php for ($i=0; $i < count($listParent) - 1; $i++) { ?>
	<a href="<?=ROOT?>danh-muc/<?=$listParent[$i]['slug']?>.html" title="<?=$listParent[$i]['name']?>"><?=$listParent[$i]['name']?></a> <span class="right-arrow fa fa-angle-right"></span>
	<?php } ?>
	<span class="final"><?=$listParent[count($listParent)-1]['name']?></span>
</div>
<div class="row">
	<div id="show-item" class="show-item">
		<?php if($data) { ?>
		<?php foreach ($data as $key => $value) { ?>
		<?php $image = explode('|', $value['image']); ?>
			<div class="item">
				<div class="box-item">
					<div class="image">
						<a href="<?=ROOT?>gio-hang/add/<?=$value['id']?>.html" title="Thêm <?=$value['name']?> vào giỏ hàng" target="main" class="action-item buy"><span class="fa fa-cart-plus"></span> <span class="buy-text">Mua hàng</span></a>
						<a href="<?=ROOT?>san-pham/<?=$value['id']?>-<?=url_encode($value['name'])?>.html" title="<?=$value['name']?>"><img src="<?=ROOT?>upload/product/450/<?=$image[0]?>" alt="<?=$value['name']?>" ></a></div>
					<div class="info">
						<a href="<?=ROOT?>san-pham/<?=$value['id']?>-<?=url_encode($value['name'])?>.html" title="<?=$value['name']?>" class="name"><?=$value['name']?></a>
						<div class="price"><?=number_format($value['price'])?> VNĐ</div>
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
