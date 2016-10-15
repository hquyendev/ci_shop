<div class="menu-top">
	<div class="container">
		<div class="row">
			<ul class="menu-top-left col s4">
				<li><a href=""><span class="fa fa-facebook"></span></a></li>
				<li><a href=""><span class="fa fa-google-plus"></span></a></li>
			</ul>
			<div class="menu-top-left col s4">
				<form action="<?=ROOT?>tim-kiem" class="form-search">
					<input type="text" name="key" >
					<button type="submit">Tim</button>
				</form>
			</div>
			<ul class="menu-top-right col s4">
				<?php if($this->login) { ?>
				<li><a href="#!" title="<?=$this->login['name']?>" class="username"><?=$this->login['name']?> <span class="fa fa-sort-down" style="float: right;margin-left: 10px;"></span></a>
					<ul class="menu-user">
						<li><a title="Thông tin tài khoản" href="<?=ROOT?>tai-khoan.html"><span class="fa fa-info-circle"></span> Thông tin tài khoản</a></li>
						<li><a title="Danh sách yêu thích" href="<?=ROOT?>tai-khoan/san-pham-yeu-thich.html"><span class="fa fa-heart"></span> Danh sách yêu thích</a></li>
						<li><a title="Lịch sử mua hàng" href="<?=ROOT?>tai-khoan/danh-sach-dat-hang.html"><span class="fa fa-history"></span> Lịch sử mua hàng</a></li>
						<li><a title="Đổi mật khẩu" href="<?=ROOT?>tai-khoan/doi-mat-khau.html"><span class="fa fa-exchange"></span> Đổi mật khẩu</a></li>
						<li class="divider"></li>
						<li><a href="<?=ROOT?>dang-nhap/logout.html" title="Đăng xuất" target="main" class="bold"><span class="fa fa-sign-out"></span> Đăng xuất</a></li>
					</ul>
				</li>
				<li><a href="<?=ROOT?>tai-khoan.html" title="<?=$this->login['name']?>" class="avatar"><img src="<?=UPLOAD?>avatar/<?=$this->login['avatar']?$this->login['avatar']:'avatar.png'?>" alt="<?=$this->login['name']?>"></a></li>
				<?php }else{ ?>
				<li><a class="waves-effect modal-trigger" href="#modal1">Đăng nhập/Đăng ký</a></li>
				<?php } ?>
			</ul>
			<!-- Modal Login -->
			  <div id="modal1" class="modal small">
			    <div class="modal-content">
			    	<a href="" class="waves-effect  light-blue darken-3 btn btn-block">Đăng nhập/ Đăng ký qua Facebook <span class="fa fa-facebook"></span></a>
			      	<div class="row">
					    <div class="col s12">
					      <ul class="tabs">
					        <li class="tab col s3"><a class="active" href="#md-login">Đăng nhập</a></li>
					        <li class="tab col s3"><a href="#md-reg">Đăng ký</a></li>
					      </ul>
					    </div>
					    <div id="md-login" class="col s12">
				      		<form class="form-modal"  target="main" method="post" action="<?=ROOT?>dang-nhap/submit.html">
						      <div class="row">
						        <div class="input-field col s12">
						          <input placeholder="Username" id="first_name" name="email" type="email" class="validate">
						        </div>
						      </div>
						      <div class="row">
						        <div class="input-field col s12">
						          <input id="password" type="password" name="password" placeholder="Password" class="validate">
						        </div>
						      </div>
						      <div class="row">
						        <div class="input-field col s12">
						          	<input type="checkbox" class="filled-in" id="filled-in-box" checked="checked" />
  									<label for="filled-in-box">Ghi nhớ tài khoản</label>
						        </div>
						      </div>
						      <div class="row">
						        <div class="input-field col s12 text-right">
						        <button type="submit" class="btn waves-effect">Đăng nhập</button>
						        </div>
						      </div>
						    </form>
					    </div>
					    <div id="md-reg" class="col s12">
							<form class="form-modal" target="main" method="post" action="<?=ROOT?>dang-ky/submit.html">
						      <div class="row">
						        <div class="input-field col s12">
						          <input placeholder="Họ và tên" id="first_name" name="name" type="text" class="validate">
						        </div>
						      </div>
						      <div class="row">
						        <div class="input-field col s12">
						          <input placeholder="Email" id="first_name" name="email" type="text" class="validate">
						        </div>
						      </div>
						      <div class="row">
						        <div class="input-field col s12">
						          <input id="password" type="password" name="password" placeholder="Password" class="validate">
						        </div>
						      </div>
						      <div class="row">
						        <div class="input-field col s12">
						          <input id="password" type="password" name="cpassword" placeholder="Nhập lại Password" class="validate">
						        </div>
						      </div>
						      <div class="row">
						        <div class="input-field col s12">
						          <input placeholder="Số điện thoại" id="first_name" name="phone" type="text" class="validate">
						        </div>
						      </div>
						      <div class="row">
						        <div class="input-field col s12">
						          <input placeholder="Địa chỉ" id="first_name" name="add" type="number" class="validate">
						        </div>
						      </div>
						      <div class="row">
						        <div class="input-field col s12 text-right">
						        <button type="submit" class="btn waves-effect">Đăng ký</button>
						        </div>
						      </div>
						    </form>
					    </div>
				  	</div>
			    </div>
			  </div>
			 <script type="text/javascript">
			  	$(document).ready(function(){
				    $('.modal-trigger').leanModal();
				});
			  </script>
		</div>
	</div>
</div>