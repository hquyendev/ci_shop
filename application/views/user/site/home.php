<div class="slider-wrapper">
    <div class="slider">
        <a href="#" class="slider-item cnow" style="background-image: url('<?=UPLOAD?>slide/1.jpg');"></a>
        <a href="#" class="slider-item" style="background-image: url('<?=UPLOAD?>slide/2.jpg');"></a>
        <a href="#" class="slider-item" style="background-image: url('<?=UPLOAD?>slide/3.jpg');"></a>
    </div>
</div>
<script>
 $(".slider").pslider({duration:6000});
</script>
<div class="title-item"><a href=""><span class="fa fa-th"></span> Sản phẩm bán chạy</a></div>
	<div class="row">
		<div class="show-item">
			<?php foreach ($saleProduct as $key => $value) { ?>
			<?php $image = explode('|', $value['image']); ?>
				<div class="item show">
					<div class="box-item">
						<div class="image">
							<a href="<?=ROOT?>gio-hang/add/<?=$value['id']?>.html" title="Thêm <?=$value['name']?> vào giỏ hàng" target="main" class="action-item buy"><span class="fa fa-cart-plus"></span></a>
							<a href="<?=ROOT?>tai-khoan/san-pham-yeu-thich/<?=$value['id']?>.html" title="Thêm <?=$value['name']?> vào danh sách yêu thích" target="main" class="action-item like"><span class="fa fa-heart"></span></a>
							<a href="<?=ROOT?>san-pham/<?=$value['id']?>-<?=url_encode($value['name'])?>.html" title="<?=$value['name']?>"><img src="<?=ROOT?>upload/product/450/<?=$image[0]?>" alt="<?=$value['name']?>" ></a></div>
						<div class="info">
							<div class="price"><?=number_format($value['price'])?> VNĐ</div>
							<a href="<?=ROOT?>san-pham/<?=$value['id']?>-<?=url_encode($value['name'])?>.html" title="<?=$value['name']?>" class="name"><?=$value['name']?></a>
						</div>
					</div>
				</div>
			<?php } ?>
		</div>
	</div>
	<div class="title-item"><a href=""><span class="fa fa-th"></span> Sản phẩm mới</a></div>
		<div class="row">
			<div id="show-item" class="show-item">
				<?php foreach ($data as $key => $value) { ?>
				<?php $image = explode('|', $value['image']); ?>
					<div class="item">
						<div class="box-item">
							<div class="image">
								<a href="<?=ROOT?>gio-hang/add/<?=$value['id']?>.html" title="Thêm <?=$value['name']?> vào giỏ hàng" target="main" class="action-item buy"><span class="fa fa-cart-plus"></span></a>
								<a href="<?=ROOT?>tai-khoan/san-pham-yeu-thich/<?=$value['id']?>.html" title="Thêm <?=$value['name']?> vào danh sách yêu thích" target="main" class="action-item like"><span class="fa fa-heart"></span></a>
								<a href="<?=ROOT?>san-pham/<?=$value['id']?>-<?=url_encode($value['name'])?>.html" title="<?=$value['name']?>"><img src="<?=ROOT?>upload/product/450/<?=$image[0]?>" alt="<?=$value['name']?>" ></a></div>
							<div class="info">
								<div class="price"><?=number_format($value['price'])?> VNĐ</div>
								<a href="<?=ROOT?>san-pham/<?=$value['id']?>-<?=url_encode($value['name'])?>.html" title="<?=$value['name']?>" class="name"><?=$value['name']?></a>
							</div>
						</div>
					</div>
				<?php } ?>
			</div>
			<?php if($showView) { ?>
			<div class="view-more">
				<a href="<?=ROOT?>api/get/1" page="1" api="<?=ROOT?>api/get/" target="main" id="view-more-item" class="view-more-item btn-large "><span id="loadding" class="fa"></span> Xem thêm</a>
			</div>
			<?php } ?>
	</div>
</div>