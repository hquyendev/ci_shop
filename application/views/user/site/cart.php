<div class="breakcrum">
	<a href="<?=ROOT?>" title="Trang chủ">Home</a> <span class="right-arrow fa fa-angle-right"></span>
	<?php for ($i=0; $i < count($listParent) - 1; $i++) { ?>
	<a href="<?=ROOT?>hai-san/<?=$listParent[$i]['slug']?>.html" title="<?=$listParent[$i]['name']?>"><?=$listParent[$i]['name']?></a> <span class="right-arrow fa fa-angle-right"></span>
	<?php } ?>
	<span class="final"><?=$listParent[count($listParent)-1]['name']?></span>
</div>
<div class="row ">
	<div id="cart-table"  class="col s12 ">
		<?php if($data){ ?>
		<div class="cart">
			<table class="">
				<thead>
					<tr>
						<th width="30">#</th>
						<th width="100">Ảnh</th>
						<th>Tên sản phẩm</th>
						<th width="80">Số lượng</th>
						<th>Đơn giá</th>
						<th>Thành tiền</th>
						<th>Thao tác</th>
					</tr>
				</thead>
				<tbody>
					<?php foreach ($data as $key => $value) {?>
					<?php $image = explode('|', $value['image']); ?>
					<?php $size = explode(',', $value['size']); ?>
					<?php $color = explode(',', $value['color']); ?>
					<form action="<?=ROOT?>gio-hang/update/<?=$value['id']?>" method="post" target="main">
						<tr id="item-<?=$value['id']?>">
							<td ><?=$key + 1?></td>
							<td><img src="<?=ROOT?>upload/product/450/<?=$image[0]?>" title="<?=$value['name']?>" width="100%"></td>
							<td><a href="<?=ROOT?>hai-san/<?=$value['c_slug']?>/<?=$value['slug']?>.html" title="<?=$value['name']?>" class="name"><?=$value['name']?></a></td>
							<td><input type="number" name="qty" value="<?=$value['_qty']?>" style="padding:0; text-align:center"></td>
							<td><span class="price"><?=number_format($value['price'])?> VNĐ</span></td>
							<td><span id="item-total-price-<?=$value['id']?>" class="price"><?=number_format($value['price']*$value['_qty'])?> VNĐ</span></td>
							<td>
								<button type="submit" class="btn btn-action light-blue accent-3 tooltipped" data-position="top" data-delay="10" data-tooltip="Cập nhật"><span class="fa fa-save"></span></button>
								<a href="<?=ROOT?>gio-hang/remove/<?=$value['id']?>.html" target="main" class="btn btn-action red darken-4 tooltipped" data-position="top" data-delay="0" data-tooltip="Xóa sản phẩm này"><span class="fa fa-remove"></span></a>
							</td>
						</tr>
					</form>
					<?php } ?>
					<tr>
						<td colspan="100"><h3>Tổng cộng: <span id="total"><?=$this->cart->total_items()?></span> sản phẩm <span class="price right" id="total-price"><?=number_format($this->cart->total())?> VNĐ</span></h3></td>
					</tr>
					<tr>
						<td colspan="100">
							<div class="left"><a href="javascript:window.history.go(-1);" class="btn" title="Quay về trang trước"><span class="fa fa-arrow-left"></span> Tiếp tục mua hàng</a></div>
							<div class="right">
								<a  href="<?=ROOT?>gio-hang/remove.html" target="main" class="waves-effect btn-large red darken-3" title="Xóa giở hàng"><span class="fa fa-remove"></span> Xóa giỏ hàng</a>
								<a href="#!" class="waves-effect btn-large" onclick="loadFormCart()" style="background-color:#45C386" title="Đặt hàng">Đặt hàng <span class="fa fa-arrow-right"></span> </a>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>

		<div id="form-cart" class="form-cart">
			<div class="row">
				<div class="col s6">
					<h4 class="text-center">Thông tin đặt hàng</h4>
					<hr>
					<form action="<?=ROOT?>gio-hang/submit.html" target="main" id="form-cart" method="post">
					      <div class="row">
					      	<div class="col s4"> <span class="right">Tên người nhận <span class="required">*</span></span> </div>
					        <div class="input-field col s8">
					          <input placeholder="Tên người nhận" id="cart_name" name="name" type="text" value="<?=@$this->login['name']?>" class="validate get-cookie">
					        </div>
					      </div>
					      <div class="row">
					      	<div class="col s4"> <span class="right">Số điện thoại nhận <span class="required">*</span></span> </div>
					        <div class="input-field col s8">
					          <input placeholder="Số điện thoại nhận"  id="cart_phone" name="phone"type="text" value="<?=@$this->login['phone']?>" class="validate get-cookie">
					        </div>
					      </div>
					      <div class="row">
					      	<div class="col s4"> <span class="right">Địa chỉ nhận <span class="required">*</span></span> </div>
					        <div class="input-field col s8">
					          <input placeholder="Địa chỉ nhận" id="cart_add" name="add"type="text" value="<?=@$this->login['add']?>" class="validate get-cookie">
					        </div>
					      </div>
					      <div class="row">
					      	<div class="col s4"> <span class="right">Ghi chú thêm</span> </div>
					        <div class="input-field col s8">
					          <textarea name="note" id="" cols="30" rows="10"></textarea>
					        </div>
					      </div>
					      <div class="row">
					      	<div class="col s4 text-right"><span class="required">(*) là bắt buộc</span></div>
					        <div class="input-field col s8 text-right">
					        <button type="submit" class="btn waves-effect">Gửi đơn hàng <span class="fa fa-send"></span></button>
					        </div>
					      </div>
					</form>
				</div>
				<div class="col s6">
					<h4 class="text-center">Lưu ý</h4>
					<hr>
				</div>
			</div>
		</div>
		<?php }else{ ?>
		<div>
			<div class="null-cart">Bạn chưa có sản phẩm nào trong giỏ hàng. Click vào <b><a href="<?=ROOT?>">ĐÂY</a></b> để mua sắm nào!</div>
		</div>
		<?php } ?>
	</div>
	<div id="null-cart" class="col s12">
		<div class="null-cart">Bạn chưa có sản phẩm nào trong giỏ hàng. Click vào <b><a href="<?=ROOT?>">ĐÂY</a></b> để mua sắm nào!</div>
	</div>
</div>

<script type="text/javascript">
	function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays*24*60*60*1000));
    var expires = "expires="+ d.toUTCString();
    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
	}
	function getCookie(cname) {
    var name = cname + "=";
    var decodedCookie = decodeURIComponent(document.cookie);
    var ca = decodedCookie.split(';');
    for(var i = 0; i <ca.length; i++) {
        var c = ca[i];
        console.log(c)
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
	}

	$(document).ready(function(){
		var inputs = $('#form-cart').find('.get-cookie');
		$.each(inputs, function(idx, input){
			var cookie_key = $(input).attr('id');
			var cookie_val = getCookie(cookie_key);
			console.log(cookie_val);
			if(cookie_val){
				$(input).val(cookie_val);
			}
		});

		$('.get-cookie').on('change', function(){
			var cookie_key = $(this).attr('id');
			var cookie_val = $(this).val();
			console.log(cookie_val)
			setCookie(cookie_key, cookie_val, 365);
		})
	});

	function showNullCart() {
		$('#cart-table').animate({opacity:0}, 250, function(){$('#cart-table').remove();$('#null-cart').css({display:'block'});});
		
	}
	function removeItem (id) {
		$(id).animate({opacity:0},400, function(){$(id).remove();});
	}
	function loadFormCart(){
		event.preventDefault();
		$('#form-cart').animate({opacity:1},200).toggle('show');
	}
	$(document).ready(function(){
		$('#form-cart').toggle('hide');
    	$('.tooltipped').tooltip({delay: 0});
  	});
</script>

 