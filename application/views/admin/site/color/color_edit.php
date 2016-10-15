<script src="<?=PUB?>assets/js/adminjs.js"></script>
<form class="form-horizontal" action="<?=ROOT?>admin/cate/edit-sm/<?=$data['id']?>" target="main" method="post">
  <div class="form-group">
    <label for="name-slug" class="col-sm-2 control-label">Tên danh mục</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" name="name" id="name-slug" value="<?=$data['name']?>" meta="true" desc="true" placeholder="Tên danh mục">
    </div>
  </div>

  <div class="form-group">
    <label for="slug-alilas" class="col-sm-2 control-label">Slug</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" name="slug" id="slug-alilas" value="<?=$data['slug']?>" placeholder="Slug">
    </div>
  </div>

  <div class="form-group">
    <label for="meta" class="col-sm-2 control-label">Meta tag</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" name="meta" id="meta" value="<?=$data['meta']?>" placeholder="Meta tag">
    </div>
  </div>

  <div class="form-group">
    <label for="desc" class="col-sm-2 control-label">Description</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" name="desc" id="desc" value="<?=$data['desc']?>" placeholder="Description">
    </div>
  </div>
  <?php $cate = $this->data['cate']; ?>
  <div class="form-group">
    <label for="parent" class="col-sm-2 control-label">Danh mục cha</label>
    <div class="col-sm-6">
		<select name="parent" id="parent" class="form-control">
			<option value="0">Không danh mục cha</option>
			<?php showSelectChoose($cate, '--- ', $data['parent']); ?>
		</select>
    </div>
  </div>
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-6">
      <button type="submit" class="btn btn-success">Thêm mới</button>
    </div>
  </div>
</form>
