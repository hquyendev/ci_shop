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
	<div class="col s12">
				<div class="box">
		<div class="row">
			<div class="col s6">
					<h3 class="text-center">Đăng nhập</h3>
					<hr>
					<form class="form-modal" target="main" method="post" action="<?=ROOT?>dang-nhap/submit.html<?=isset($_GET['next'])?'?next='.$_GET['next']:''?>">
				      <div class="row">
				      <div class="input-field col s1"></div>
				        <div class="input-field col s10">
				          <input placeholder="Email" id="first_name" name="email" type="email" class="validate">
				        </div>
				      </div>
				      <div class="row">
				      <div class="input-field col s1"></div>
				        <div class="input-field col s10">
				          <input id="password" type="password" placeholder="Password" name="password" class="validate">
				        </div>
				      </div>
				      <div class="row">
				      <div class="input-field col s1"></div>
				        <div class="input-field col s10">
				          	<input type="checkbox" class="filled-in" id="filled-in-box2" checked="checked" />
								<label for="filled-in-box2">Ghi nhớ tài khoản</label>
				        </div>
				      </div>
				      <div class="row">
				      	<div class="input-field col s1"></div>
				        <div class="input-field col s10 text-right">
				        <button type="submit" class="btn waves-effect">Đăng nhập</button>
				        </div>
				      </div>
				    </form>
				</div>
			<div class="col s6">
					<h3 class="text-center">Đăng ký tài khoản</h3>
					<hr>
					<form class="form-modal" target="main" method="post" action="<?=ROOT?>dang-ky/submit.html">
				      <div class="row">
				      	<div class="col s1 text-right"><span class="required right">*</span></div>
				        <div class="input-field col s10">
				          <input placeholder="Họ và tên" name="name" id="first_name" type="text" class="validate">
				        </div>
				      </div>
				      <div class="row">
				      	<div class="col s1 text-right"><span class="required right">*</span></div>
				        <div class="input-field col s10">
				          <input placeholder="Email" id="first_name" name="email" type="email" class="validate">
				        </div>
				      </div>
				      <div class="row">
				      	<div class="col s1 text-right"><span class="required right">*</span></div>
				        <div class="input-field col s10">
				          <input id="password" type="password" name="password" placeholder="Password" class="validate">
				        </div>
				      </div>
				      <div class="row">
				      	<div class="col s1 text-right"><span class="required right">*</span></div>
				        <div class="input-field col s10">
				          <input id="password" type="password" name="cpassword" placeholder="Nhập lại Password" class="validate">
				        </div>
				      </div>
				      <div class="row">
				      	<div class="col s1 text-right"><span class="required right">*</span></div>
				        <div class="input-field col s10">
				          <input placeholder="Số điện thoại" id="first_name" name="phone" type="text" class="validate">
				        </div>
				      </div>
				      <div class="row">
				      	<div class="col s1 text-right">&nbsp;</div>
				        <div class="input-field col s10">
				          <input placeholder="Địa chỉ" id="first_name" name="add" type="text" class="validate">
				        </div>
				      </div>
				      <div class="row">
				      	<div class="input-field col s1"></div>
				        <div class="input-field col s4	 text-right">
				        <button type="submit" class="btn waves-effect">Đăng ký</button>
				        </div>
				        <div class="col s5"><span class="required">*</span> là bắt buộc</div>
				      </div>
				    </form>
			</div>
		</div>
	</div>
</div>
