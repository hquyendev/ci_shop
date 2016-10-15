<script src="<?=PUB?>assets/js/adminjs.js"></script>
<form class="form-horizontal" action="<?=ROOT?>admin/guide/news-sm" method="post" target="main" enctype="multipart/form-data">
  <div class="form-group">
    <label for="name" class="col-sm-2 control-label">Tên bài viết</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" name="name" id="name-slug" placeholder="Tên bài viết">
    </div>
  </div>

  <div class="form-group">
    <label for="slug-alilas" class="col-sm-2 control-label">Slug</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" name="slug" id="slug-alilas"  placeholder="Slug">
    </div>
  </div>

  <div class="form-group">
    <label for="detail" class="col-sm-2 control-label">Mô tả chi tiết</label>
    <div class="col-sm-9">
      <textarea name="content" id="detail" ></textarea>
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
      <button type="submit" class="btn btn-success">Thêm mới</button>
    </div>
  </div>
</form>
