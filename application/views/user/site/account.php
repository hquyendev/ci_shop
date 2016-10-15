	<div class="breakcrum">
		<a href="<?=ROOT?>" title="Trang chủ">Home</a> <span class="right-arrow fa fa-angle-right"></span>
		<?php for ($i=0; $i < count($listParent) - 1; $i++) { ?>
		<a href="<?=ROOT?><?=$listParent[$i]['slug']?>.html" title="<?=$listParent[$i]['name']?>"><?=$listParent[$i]['name']?></a> <span class="right-arrow fa fa-angle-right"></span>
		<?php } ?>
		<span class="final"><?=$listParent[count($listParent)-1]['name']?></span>
	</div>
<div class="row ">
	<div class="menu-user col s3">
		<?=$this->load->view('user/fixed/user_menu')?>
	</div>
	<div id="cart-table"  class="col s9 ">
		<?php if($data){ ?>
		<div class="box" style="margin-top:8px">
			<h3 class="text-center">Thông tin tài khoản</h3>
			<hr>
			<form class="form-modal" target="main" method="post" action="<?=ROOT?>tai-khoan/update.html">
		      <div class="row">
		      	<div class="col s1 text-right"><span class="required right">*</span></div>
		        <div class="input-field col s10">
		          <input placeholder="Họ và tên" name="name" id="first_name" value="<?=$data['name']?>" type="text" class="validate">
		        </div>
		      </div>
		      <div class="row">
		      	<div class="col s1 text-right"><span class="required right">*</span></div>
		        <div class="input-field col s10">
		          <input placeholder="Email" id="first_name" name="email" value="<?=$data['email']?>" readonly="true" type="email">
		        </div>
		      </div>
		      <div class="row">
		      	<div class="col s1 text-right"><span class="required right">*</span></div>
		        <div class="input-field col s10">
		          <input placeholder="Số điện thoại" id="first_name" value="<?=$data['phone']?>" name="phone" type="text" class="validate">
		        </div>
		      </div>
		      <div class="row">
		      	<div class="col s1 text-right">&nbsp;</div>
		        <div class="input-field col s10">
		          <input placeholder="Địa chỉ" id="first_name" value="<?=$data['add']?>" name="add" type="text" class="validate">
		        </div>
		      </div>
		      <div class="row">
		      	<div class="input-field col s1"></div>
		        <div class="input-field col s4	 text-right">
		        <button type="submit" class="btn waves-effect">Cập nhật</button>
		        </div>
		        <div class="col s5"><span class="required">*</span> là bắt buộc</div>
		      </div>
		    </form>
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
