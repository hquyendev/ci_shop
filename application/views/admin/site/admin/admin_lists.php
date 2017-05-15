<script src="<?=PUB?>assets/js/adminjs.js"></script>
<link rel="stylesheet" href="<?=PUB?>assets/css/bootstrap-fileupload.min.css" />
<form class="form-horizontal" action="<?=ROOT?>admin/admin/update-password" method="post" target="main" enctype="multipart/form-data">
  <div class="form-group">
    <label for="name" class="col-sm-2 control-label">Mật khẩu mới</label>
    <div class="col-sm-5">
      <input class="form-control" name="password" value="" id="password" type="password" placeholder="Mật khẩu mới">
    </div>
    <div class="col-sm-3">
      <button type="submit" class="btn btn-info">Cập nhật</button>
    </div>
  </div>
</form>
<script src="<?=PUB?>assets/js/bootstrap-fileupload.js"></script>
