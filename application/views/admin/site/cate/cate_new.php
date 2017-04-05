<script src="<?=PUB?>assets/js/adminjs.js"></script>
<link rel="stylesheet" href="<?=PUB?>assets/css/bootstrap-fileupload.min.css" />
<form class="form-horizontal" action="<?=ROOT?>admin/cate/news-sm" target="main" method="post" enctype="multipart/form-data">
  <div class="form-group">
    <label for="name-slug" class="col-sm-2 control-label">Tên danh mục</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" name="name" id="name-slug" meta="true" desc="true" placeholder="Tên danh mục">
    </div>
  </div>

  <div class="form-group">
    <label for="slug-alilas" class="col-sm-2 control-label">Slug</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" name="slug" id="slug-alilas" placeholder="Slug">
    </div>
  </div>

  <div class="form-group">
    <label for="size" class="col-sm-2 control-label">Hình ảnh chính <br><small>(Ảnh hiện thị)</small></label>
    <div class="col-lg-6">
      <div class="fileupload fileupload-new" data-provides="fileupload"><input type="hidden" value="" name="">
          <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;"><img src="" alt=""></div>
          <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 10px;"></div>
          <div>
              <span class="btn btn-file btn-primary"><span class="fileupload-new">Chọn ảnh</span><span class="fileupload-exists">Đổi ảnh</span><input type="file" name="image"></span>
              <a href="#" class="btn btn-danger fileupload-exists" data-dismiss="fileupload">Xóa</a>
          </div>
      </div>
    </div>
  </div>

  <div class="form-group">
    <label for="meta" class="col-sm-2 control-label">Meta tag</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" name="meta" id="meta" placeholder="Meta tag">
    </div>
  </div>

  <div class="form-group">
    <label for="desc" class="col-sm-2 control-label">Description</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" name="desc" id="desc" placeholder="Description">
    </div>
  </div>
  <?php $cate = $this->data['cate']; ?>
  <div class="form-group">
    <label for="parent" class="col-sm-2 control-label">Danh mục cha</label>
    <div class="col-sm-6">
		<select name="parent" id="parent" class="form-control">
			<option value="0">Không danh mục cha</option>
			<?php showSelectChoose($cate); ?>
		</select>
    </div>
  </div>
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-6">
      <button type="submit" class="btn btn-success">Thêm mới</button>
    </div>
  </div>
</form>
