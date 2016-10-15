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
<div class="row  detail">
	<div class="col s8">
		<div class="row">
			<div class="col s6">
				<div class="image">
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
			<div class="col s6">
				<div class="info">
					<form action="<?=ROOT?>gio-hang/add/<?=$data['id']?>.html" method="post" target="main">
						<h3 class="name"><?=$data['name']?></h3>
						<p class="price"><?=number_format($data['price'])?> VNĐ</p>
						<div>
							<select name="color">
						      <option value="" disabled selected>Chọn màu</option>
						      <?php foreach ($color as $key => $value) {
						      	echo '<option value="'.$key.'">'.$value.'</option>';
						      } ?>
						    </select>
						</div>
						<div>
							<select name="size">
						      <option value="" disabled selected>Chọn Size</option>
						      <?php foreach ($size as $key => $value) {
						      	echo '<option value="'.$key.'">'.$value.'</option>';
						      } ?>
						    </select>
						</div>
				      	Số lượng <input value="1" id="first_name2"  name="qty" type="number" class="validate input-qty">
						<div>
							<button class="waves-effect waves-light btn"><span class="fa fa-shopping-cart"></span> Mua hàng</button>
						</div>
					</form>
					<div><a href="<?=ROOT?>tai-khoan/san-pham-yeu-thich/<?=$data['id']?>.html" title="Thêm <?=$data['name']?> vào danh sách yêu thích" target="main"><span class="fa fa-heart"></span> Thêm vào danh sách sản phẩm yêu thích</a></div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col s12">
				<div class="description">
					<?=$data['detail']?>
				</div>
			</div>
		</div>
	</div>
	<div class="col s4">
		<div class="product-viewed">
			<h4 class="title">Sản phẩm đã xem</h4>
		</div>
		<div class="product-viewed">
			<h4 class="title">Sản phẩm cùng danh mục</h4>
		</div>
	</div>
</div>