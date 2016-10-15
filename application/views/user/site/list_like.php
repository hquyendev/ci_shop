<div style="padding:3px">
	<div class="breakcrum">
		<a href="<?=ROOT?>" title="Trang chủ">Home</a> <span class="right-arrow fa fa-angle-right"></span>
		<?php for ($i=0; $i < count($listParent) - 1; $i++) { ?>
		<a href="<?=ROOT?><?=$listParent[$i]['slug']?>.html" title="<?=$listParent[$i]['name']?>"><?=$listParent[$i]['name']?></a> <span class="right-arrow fa fa-angle-right"></span>
		<?php } ?>
		<span class="final"><?=$listParent[count($listParent)-1]['name']?></span>
	</div>
</div>
<div class="row ">
	<div class="menu-user col s3">
		<?=$this->load->view('user/fixed/user_menu')?>
	</div>
	<div id="cart-table"  class="col s9 ">
		<?php if($data){ ?>
		<div class="box" style="margin-top:8px">
			<table class="responsive-table">
				<thead>
					<tr>
						<th width="30">#</th>
						<th width="100">Ảnh</th>
						<th>Tên sản phẩm</th>
						<th>Giá tiền</th>
						<th>Thao tác</th>
					</tr>
				</thead>
				<tbody>
					<?php foreach ($data as $key => $value) {?>
					<?php $image = explode('|', $value['image']); ?>
					<tr id="item-<?=$value['id']?>">
						<td ><?=$key + 1?></td>
						<td><img src="<?=ROOT?>upload/product/450/<?=$image[0]?>" title="<?=$value['name']?>" width="100%"></td>
						<td><a href="<?=ROOT?>san-pham/<?=$value['id']?>-<?=url_encode($value['name'])?>.html" title="<?=$value['name']?>" class="name"><?=$value['name']?></a></td>
						<td><span class="price"><?=number_format($value['price'])?> VNĐ</span></td>
						<td>
							<a href="<?=ROOT?>tai-khoan/remove-like/<?=$value['id']?>.html" target="main" class="btn btn-action red darken-4 tooltipped" data-position="top" data-delay="0" data-tooltip="Xóa sản phẩm này"><span class="fa fa-remove"></span></a>
						</td>
					</tr>
					<?php } ?>
				</tbody>
			</table>
		</div>
		<?php }else{ ?>
		<div>
			<div class="null-cart">Bạn chưa có sản phẩm yêu thích nào!</div>
		</div>
		<?php } ?>
	</div>
</div>
<script type="text/javascript">
	function removeItem (id) {
		$(id).animate({opacity:0},400, function(){$(id).remove();});
	}
</script>
