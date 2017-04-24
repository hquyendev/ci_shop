<link rel="stylesheet" href="<?=PUB?>assets/css/bootstrap-fileupload.min.css" />
<script src="<?=PUB?>assets/js/bootstrap-fileupload.js"></script>
<table class="table table-border table-hover">
	<thead>
		<tr>
			<th>Hình</th>
			<th>Thao tác</th>
		</tr>
	</thead>

	<tbody>
		<?php foreach ($data as $key => $value) { ?>
			<tr>
				<td><img src="<?=ROOT?>upload/slider/450/<?=$value['image']?>" width="200" alt=""></td>
				<td><div class="btn-group"><a href="<?=ROOT?>admin/slider/remove/<?=$value['id']?>" class="btn btn-sm btn-danger" target="main"><span class="fa fa-remove"></span></a></div> </td>
			</tr>
		<?php } ?>
	</tbody>

</table>
<div class="new">
<hr>
<form class="form-horizontal" action="<?=ROOT?>admin/slider/news-sm" method="post" target="main" enctype="multipart/form-data">
  <div class="form-group">
    <label for="size" class="col-sm-1 control-label">Thêm mới </label>
    <div class="col-lg-6">
      <div class="fileupload fileupload-new" data-provides="fileupload"><input type="hidden" value="" name="">

          <span class="btn btn-file btn-primary"><span class="fileupload-new">Chọn ảnh</span><span class="fileupload-exists">Đổi ảnh</span><input type="file" name="image"></span>
          <a href="#" class="btn btn-danger fileupload-exists" data-dismiss="fileupload">Xóa</a>
          <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;"><img src="<?=PUB?>assets/img/demoUpload.jpg" alt=""></div>
          <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 10px;"></div>
      	  	<button type="submit" class="btn btn-success">Tải lên</button>
          </div>

      </div>
    </div>
  </div>
</form>
</div>
