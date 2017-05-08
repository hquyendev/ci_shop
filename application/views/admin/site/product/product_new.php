<script src="<?=PUB?>assets/js/adminjs.js"></script>
<link rel="stylesheet" href="<?=PUB?>assets/css/bootstrap-fileupload.min.css" />
<form class="form-horizontal" action="<?=ROOT?>admin/product/news-sm" method="post" target="main" enctype="multipart/form-data">
  <div class="form-group">
    <label for="name" class="col-sm-2 control-label">Tên sản phẩm</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" name="name" id="name" placeholder="Tên sản phẩm">
    </div>
  </div>


  <div class="form-group">
    <label for="slug-alilas" class="col-sm-2 control-label">Slug</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" name="slug" id="slug-alilas"  placeholder="Slug">
    </div>
  </div>

  <div class="form-group">
    <label for="price" class="col-sm-2 control-label">Giá tiền</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" name="price" id="price" placeholder="Giá tiền">
    </div>
  </div>

  <div class="form-group">
    <label for="price" class="col-sm-2 control-label">Danh mục</label>
    <div class="col-sm-6">
      <select name="cate" class="form-control"  id="">
        <option value="">--Chọn danh mục--</option>
        <?=showSelect($this->data['cate'])?>
      </select>
    </div>
  </div>
  
  <div class="form-group">
    <label for="qty" class="col-sm-2 control-label">Số lượng nhập</label>
    <div class="col-sm-6">
      <input type="number" class="form-control" name="qty" id="qty" placeholder="Số lượng nhập">
    </div>
  </div>
  
  <div class="form-group">
    <label for="color" class="col-sm-2 control-label">Màu sắc <br><small>(Ngăn cách bằng dấu , )</small></label>
    <div class="col-sm-6">
      <input type="text" class="form-control" value="" name="color" id="color" placeholder="Trắng,Xanh,Xanh rêu,Đỏ"/>
    </div>
  </div>

  <div class="form-group">
    <label for="size" class="col-sm-2 control-label">Size <br><small>(Ngăn cách bằng dấu , )</small></label>
    <div class="col-sm-6">
      <input type="text" class="form-control" value="" name="size" id="size" placeholder="28,29,30,31,32"/>
    </div>
  </div>

  <div class="form-group">
    <label for="size" class="col-sm-2 control-label">Hình ảnh chính <br><small>(Ảnh hiện thị)</small></label>
    <div class="col-lg-6">
      <div class="fileupload fileupload-new" data-provides="fileupload"><input type="hidden" value="" name="">
          <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;"><img src="<?=PUB?>assets/img/demoUpload.jpg" alt=""></div>
          <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 10px;"></div>
          <div>
              <span class="btn btn-file btn-primary"><span class="fileupload-new">Chọn ảnh</span><span class="fileupload-exists">Đổi ảnh</span><input type="file" name="image"></span>
              <a href="#" class="btn btn-danger fileupload-exists" data-dismiss="fileupload">Xóa</a>
          </div>
      </div>
    </div>
  </div>

  <div class="form-group">
    <label for="image2" class="col-sm-2 control-label">Hình ảnh phụ</label>
    <div class="col-sm-4">
      <input type="file" class="form-control" value="" name="image2[]" multiple id="image2" />
    </div>
    <div class="col-sm-4">
      Nhấn giữ nút 'Ctrl' để chọn nhiều ảnh
    </div>
  </div>
 <div class="form-group">
    <label for="water" class="col-sm-2 control-label">Đóng dấu watermark ảnh</label>
    <div class="col-sm-6">
      <input type="checkbox" value="1" name="water" id="water" checked /> <label for="water">Đóng dấu ảnh</label>
    </div>
  </div>

  <div class="form-group">
    <label for="detail" class="col-sm-2 control-label">Mô tả chi tiết</label>
    <div class="col-sm-9">
      <textarea name="detail" id="detail" ></textarea>
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
<script src="<?=PUB?>assets/js/bootstrap-fileupload.js"></script>
