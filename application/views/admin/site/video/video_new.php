<link rel="stylesheet" href="<?=PUB?>assets/css/bootstrap-fileupload.min.css" />
<script src="<?=PUB?>assets/js/bootstrap-fileupload.js"></script>
<script src="<?=PUB?>assets/js/adminjs.js"></script>
<form class="form-horizontal" action="<?=ROOT?>admin/video/news-sm/<?=isset($data['id'])?$data['id']:''?>" method="post" target="main" enctype="multipart/form-data">
  <div class="form-group">
    <label for="name" class="col-sm-2 control-label">Tiêu đề</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" name="name" id="name-slug" value="<?=isset($data['id'])?$data['name']:''?>" placeholder="Tên bài viết">
    </div>
  </div>

  <div class="form-group">
    <label for="slug-alilas" class="col-sm-2 control-label">Slug</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" name="slug" id="slug-alilas" value="<?=isset($data['id'])?$data['slug']:''?>"  placeholder="Slug">
    </div>
  </div>

  <div class="form-group">
    <label for="slug-alilas" class="col-sm-2 control-label">Link youtube</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" name="video" value="<?=isset($data['id'])?$data['video']:''?>"  placeholder="Link video">
    </div>
  </div>

  <div class="form-group">
    <label for="detail" class="col-sm-2 control-label">Nội dung</label>
    <div class="col-sm-9">
      <textarea name="content" id="detail" ><?=isset($data['id'])?$data['content']:''?> </textarea>
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
      <button type="submit" class="btn btn-success"><?=isset($data)?'Cập nhật':'Thêm mới'?></button>
    </div>
  </div>
</form>
