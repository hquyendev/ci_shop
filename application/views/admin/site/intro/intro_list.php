<?php if($data) { ?>
<table class="table table-border table-hover">
	<thead>
		<tr>
			<th>ID</th>
			<th>Tên</th>
			<th>Slug</th>
			<th>Thao tác</th>
		</tr>
	</thead>

	<tbody>
		<?php foreach ($data as $key => $value) { ?>
		<tr>
			<td><?=$value['id']?></td>
			<td><a href="<?=ROOT?>admin/intro/edit/<?=$value['id']?>.html"> <?=$value['name']?></a></td>
			<td><?=$value['slug']?></td>
			<td>
				<div class="btn-group"><a href="<?=ROOT?>admin/intro/edit/<?=$value['id']?>.html" class="btn btn-sm btn-info"><span class="fa fa-edit"></span></a><?php if($value['remove']==1) { ?><a href="<?=ROOT?>admin/intro/remove/<?=$value['id']?>" class="btn btn-sm btn-warning" target="main"><span class="fa fa-remove"></span></a><?php } ?></div> 
			</td>
		</tr>
		<?php } ?>
	</tbody>
</table>
<?php }else{ ?>
	<div class="alert alert-warning text-center">Chưa có bài viết nào</div>
<?php } ?>