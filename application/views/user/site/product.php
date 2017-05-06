<?php $image = explode('|', $data['image']); ?>
<?php $color = explode(',', $data['color']); ?>
<?php $size = explode(',', $data['size']); ?>
<div style="padding:3px">
	<div class="breakcrum">
		<a href="<?=ROOT?>" title="Trang chủ">Home</a> <span class="right-arrow fa fa-angle-right"></span>
		<?php for ($i=0; $i < count($listParent) - 1; $i++) { ?>
		<a href="<?=ROOT?>danh-muc/<?=$listParent[$i]['slug']?>.html" title="<?=$listParent[$i]['name']?>"><?=$listParent[$i]['name']?></a> <span class="right-arrow fa fa-angle-right"></span>
		<?php } ?>
		<span class="final"><?=$listParent[count($listParent)-1]['name']?></span>
	</div>
</div>
<div class="row">
	<div class="col s12  detail">
		<div class="row">
			<div class="col s4">
				<div class="image-preview">
					<img class="preview-image materialboxed1" width="100" data-src="<?=ROOT?>upload/product/origin/<?=@$image[0]?>" src="<?=ROOT?>upload/product/450/<?=@$image[0]?>" alt="<?=$data['name']?>">
				</div>
				<div class="list-image">
					<?php for ($i=1; $i < count($image); $i++) {  ?>
					<div class="item <?=$i==1?'active':''?>"><img src="<?=ROOT?>upload/product/450/<?=@$image[$i]?>" data-src="<?=ROOT?>upload/product/origin/<?=@$image[$i]?>" alt="<?=$data['name']?>"></div>
					<?php } ?>
				</div>
				<script type="text/javascript">
					$(document).ready(function(){
						$(document).ready(function(){
						    $('.materialboxed').materialbox();
						});
						     
						var preview = $('#preview-image');
						$('.preview-image').on('click', function(){
							$('#preview-image>img').attr('src', $(this).attr('data-src'));
							preview.css({display:'block'}).animate({opacity:1}, 200);
						});
						$(preview).on('click', function(){
							preview.css({display:'block'}).animate({opacity:0}, 200, function(){preview.css({display:'none'});});
						});
						$('.list-image>.item>img').on('click', function(){
							$('.list-image>.item').removeClass('active');
							$('.preview-image').attr('src',$(this).attr('src')).attr('data-src',$(this).attr('data-src'));
							$($(this).parent('.item')).addClass('active');
						})
					})
				</script>
				<div id="preview-image">
					<img src="<?=ROOT?>upload/product/450/<?=@$image[0]?>" alt="<?=$data['name']?>">
				</div>
			</div>
			<div class="col s8">
				<div class="info">
					<form action="<?=ROOT?>gio-hang/add/<?=$data['id']?>.html" method="post" target="main">
						<h3 class="name"><?=$data['name']?></h3>
						<p class="price"><?=number_format($data['price'])?> VNĐ</p>
				      	Số lượng <input value="1" id="first_name2"  name="qty" type="number" class="validate input-qty"> Kg
						<div>
							<button class="waves-effect waves-light btn btn-buy"><span class="fa fa-shopping-cart"></span> Mua hàng</button>
						</div>
					</form>
					<div class="info-items">
						<div class="info-item">
							<span class="key">Danh mục:</span>
							<span class="val"><a href="<?=ROOT?>danh-muc/<?=$listParent[count($listParent)-2]['slug']?>.html" title="<?=$listParent[count($listParent)-2]['name']?>"><?=$listParent[count($listParent)-2]['name']?></a></span>
						</div>
						<div class="info-item">
							<span class="key">Mã sản phẩm:</span>
							<span class="val"><?=$data['id']?></span>
						</div>
						<div class="info-item">
							<div class="fb-like" data-href="<?=ROOT?>san-pham/<?=$data['id']?>-<?=url_encode($data['name'])?>.html" data-layout="button_count" data-action="like" data-size="small" data-show-faces="false" data-share="true"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col s12">
				<div class="description">
					<div class="description-title"><span>Chi tiết sản phẩm</span></div>
					<?=$data['detail']?>
				</div>
			</div>
		</div>
	</div>
	<div class="col s12 product-relate">
			<div id="show-item" class="show-item">
			<div class="product-viewed ">
				<h4 class="title">Sản phẩm cùng danh mục</h4>
				<div id="show-item" class="show-item">
					<?php if($data_relate) { ?>
					<?php foreach ($data_relate as $key => $value) { ?>
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
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col s12">
			<div class="description">
				<div class="fb-comments" data-href="<?=ROOT?>san-pham/<?=$data['id']?>-<?=url_encode($data['name'])?>.html" data-numposts="5"></div>
			</div>
		</div>
	</div>
</div>

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.9&appId=897560213704213";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>