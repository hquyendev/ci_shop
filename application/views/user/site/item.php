<?php $image = explode('|', $image); ?>
		<div class="item">
			<div class="box-item">
				<div class="image">
					<a href="<?=ROOT?>gio-hang/add/<?=$id?>.html" title="Thêm <?=$name?> vào giỏ hàng" target="main" class="action-item buy"><span class="fa fa-cart-plus"></span></a>
					<a href="<?=ROOT?>tai-khoan/san-pham-yeu-thich/<?=$id?>.html" title="Thêm <?=$name?> vào danh sách yêu thích" target="main" class="action-item like"><span class="fa fa-heart"></span></a>
					<a href="<?=ROOT?>hai-san/<?=$value['c_slug']?>/<?=$value['slug']?>.html" title="<?=$name?>"><img src="<?=ROOT?>upload/product/450/<?=$image[0]?>" alt="<?=$name?>" ></a></div>
				<div class="info">
					<div class="price"><?=number_format($price)?> VNĐ</div>
					<a href="<?=ROOT?>hai-san/<?=$value['c_slug']?>/<?=$value['slug']?>.html" title="<?=$name?>" class="name"><?=$name?></a>
				</div>
			</div>
		</div>
