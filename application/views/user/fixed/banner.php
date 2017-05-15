<div class="banner">
	<div class="container">
		<div class="row" style="margin-bottom:0" >
			<div class="col s2 item-banner">
				<a href="<?=ROOT?>khach-hang/chinh-sach-bao-hanh.html" title="Chính sách bảo hành" >
					<span class="circle"><span class="fa fa-check"></span></span>
					<div class="item-banner-title">
						<div>Chính sách <br>bảo hành</div>
					</div>
				</a>
			</div>
			<div class="col s2 item-banner">
				<a href="<?=ROOT?>khach-hang/chinh-sach-van-chuyen.html" title="Chính sách Vận chuyển" >
					<span class="circle"><span class="fa fa-truck"></span></span>
					<div class="item-banner-title">
						<div>Chính sách <br>Vận chuyển</div>
					</div>
				</a>
			</div>
			<div class="col s4 item-r"><a href="<?=ROOT?>" title="Trang chủ" class=" item-logo"><img src="<?=UPLOAD?>logo2.png" width="100%" class="logo" title="Logo"></a></div>
			<div class="col s2 item-banner">
				<a href="<?=ROOT?>khach-hang/huong-dan-mua-hang.html" title="Hướng dẫn mua hàng" >
					<span class="circle"><span class="fa fa-info-circle"></span></span>
					<div class="item-banner-title">
						<div>Hướng dẫn<br> mua hàng</div>
					</div>
				</a>
			</div>
			<div class="col s2 item-banner">
				<a href="<?=ROOT?>gio-hang.html" title="Xem giỏ hàng" >
					<span class="circle"><span class="fa fa-shopping-cart"></span></span>
					<div class="item-banner-title">
						<div>GIỎ HÀNG <span class="cart-total-item">(<?=$this->cart->total_items()?> SP)</span></div>
						<div><span class="cart-total-price"><?=number_format($this->cart->total())?> VNĐ</span></div>
					</div>
				</a>
			</div>
		</div>
	</div>
</div>