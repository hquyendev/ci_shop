<table class="table table-border table-hover">
	<thead>
		<tr>
			<th>ID</th>
			<th>Hình</th>
			<th>Tiêu đề</th>
			<th>Thao tác</th>
		</tr>
	</thead>

	<tbody>
		<?php foreach ($data as $key => $value) { ?>
			<tr>
				<td width="30">#<?=$value['id']?></td>
				<td width="220"><img src="<?=ROOT?>upload/post/450/<?=$value['image']?>" width="200" alt=""></td>
				<td><a href="<?=ROOT?>admin/video/edit/<?=$value['id']?>"><?=$value['name']?></a></td>
				<td width="100"><div class="btn-group"><a href="<?=ROOT?>admin/video/edit/<?=$value['id']?>" class="btn btn-sm btn-info"><span class="fa fa-edit"></span></a><a href="<?=ROOT?>admin/video/remove/<?=$value['id']?>" class="btn btn-sm btn-warning" target="main"><span class="fa fa-remove"></span></a></div> </td>
			</tr>
		<?php } ?>
	</tbody>
</table>
