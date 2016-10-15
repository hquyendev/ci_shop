<div class="banner">
	<div class="container">
		<div class="row" style="margin-bottom:0">
			<div class="col s3"><a href="<?=ROOT?>" title="Trang chủ"><img src="<?=UPLOAD?>logo.png" width="100%" class="logo" title="Logo"></a></div>
			<div class="col s2 item-banner">
				<a href="<?=ROOT?>huong-dan/chinh-sach-bao-hanh.html" title="Chính sách bảo hành" >
					<span class="circle"><span class="fa fa-shopping-cart"></span></span>
					<div class="item-banner-title">
						<div>Chính sách bảo hành</div>
					</div>
				</a>
			</div>
			<div class="col s2 item-banner">
				<a href="<?=ROOT?>huong-dan/chinh-sach-van-chuyen.html" title="Chính sách Vận chuyển" >
					<span class="circle"><span class="fa fa-shopping-cart"></span></span>
					<div class="item-banner-title">
						<div>Chính sách Vận chuyển</div>
					</div>
				</a>
			</div>
			<div class="col s2 item-banner">
				<a href="<?=ROOT?>huong-dan/huong-dan-mua-hang.html" title="Hướng dẫn mua hàng" >
					<span class="circle"><span class="fa fa-shopping-cart"></span></span>
					<div class="item-banner-title">
						<div>Hướng dẫn mua hàng</div>
					</div>
				</a>
			</div>
			<div class="col s3 item-banner">
				<a href="<?=ROOT?>gio-hang.html" title="Xem giỏ hàng" class="shopping-cart">
					<span class="circle"><span class="fa fa-shopping-cart"></span></span>
					<div class="cart-title">
						<div>GIỎ HÀNG <span class="total">(<?=$this->cart->total_items()?> SP)</span></div>
						<div><span class="total"><?=number_format($this->cart->total())?> VNĐ</span></div>
					</div>
				</a>
			</div>
		</div>
	</div>
</div>