<link rel="stylesheet" href="<?=PUB?>assets/css/bootstrap-fileupload.min.css" />
<script src="<?=PUB?>assets/js/bootstrap-fileupload.js"></script>
<script src="<?=PUB?>assets/js/adminjs.js"></script>
<form class="form-horizontal" action="<?=ROOT?>admin/intro/news-sm/<?=isset($data)?$data['id']:''?>" method="post" target="main" enctype="multipart/form-data">
  <div class="form-group">
    <label for="name" class="col-sm-2 control-label">Tên bài viết</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" name="name" id="name-slug" value="<?=isset($data)?$data['name']:''?>" placeholder="Tên bài viết">
    </div>
  </div>

  <div class="form-group">
    <label for="slug-alilas" class="col-sm-2 control-label">Slug</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" name="slug" id="slug-alilas" value="<?=isset($data)?$data['slug']:''?>"  placeholder="Slug">
    </div>
  </div>

  <div class="form-group">
    <label for="slug-alilas" class="col-sm-2 control-label">Mô tả ngắn</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" name="description" id="slug-alilas" value="<?=isset($data)?$data['description']:''?>"  placeholder="Mô tả ngắn">
    </div>
  </div>


  <div class="form-group">
    <label for="size" class="col-sm-2 control-label">Hình ảnh chính <br><small>(Ảnh hiện thị)</small></label>
    <div class="col-lg-6">
      <div class="fileupload fileupload-new" data-provides="fileupload"><input type="hidden" value="" name="">
          <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;"><img src="<?=isset($data['id'])?ROOT.'upload/intro/450/'.$data['image']:PUB.'assets/img/demoUpload.jpg'?>" alt=""></div>
          <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 10px;"></div>
          <div>
              <span class="btn btn-file btn-primary"><span class="fileupload-new">Chọn ảnh</span><span class="fileupload-exists">Đổi ảnh</span><input type="file" name="image"></span>
              <a href="#" class="btn btn-danger fileupload-exists" data-dismiss="fileupload">Xóa</a>
          </div>
      </div>
    </div>
  </div>


  <div class="form-group">
    <label for="detail" class="col-sm-2 control-label">Mô tả chi tiết</label>
    <div class="col-sm-9">
      <textarea name="content" id="detail" ><?=isset($data)?$data['content']:''?></textarea>
      <script src="<?=PUB?>ckeditor/ckeditor.js"></script>
      <script src="<?=PUB?>ckfinder/ckfinder.js"></script>
      <script>
          $(function() 
          {   var editor = CKEDITOR.replace('detail', 
              { 
                  filebrowserBrowseUrl : '<?=ROOT?>public/ckfinder/ckfinder.html', 
                  filebrowserImageBrowseUrl : '<?=ROOT?>public/ckfinder/ckfinder.html?Type=Images', 
                  filebrowserFlashBrowseUrl : '<?=ROOT?>public/ckfinder/ckfinder.html?Type=Flash', 
                  filebrowserUploadUrl : '<?=ROOT?>public/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files', 
                  filebrowserImageUploadUrl : '<?=ROOT?>public/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images', 
                  filebrowserFlashUploadUrl : '<?=ROOT?>public/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash', 
                  filebrowserWindowWidth : '800', 
                  filebrowserWindowHeight : '480' }); 
                  CKFinder.setupCKEditor( editor, "<?=ROOT?>public/ckfinder/" ); 
              }
          ) 
      </script>
    </div>
  </div>
  
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-6">
      <button type="submit" class="btn btn-success"> <?=isset($data)?'Cập nhật':'Thêm mới'?></button>
    </div>
  </div>
</form>
