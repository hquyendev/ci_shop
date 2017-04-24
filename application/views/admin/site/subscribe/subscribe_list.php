<table class="table table-border table-hover">
	<thead>
		<tr>
			<th>ID</th>
			<th>Email</th>
			<th>Ngày đăng ký</th>
			<!-- <th>Thao tác</th> -->
		</tr>
	</thead>

	<tbody>
		<?php foreach ($data as $key => $value) { ?>
			<tr>
				<td>#<?=$value['id']?></td>
				<td><a href="#"><?=$value['email']?></a></td>
				<td><?=date('d-m-Y h:m:s', $value['time'])?></td>
				<!-- <td><div class="btn-group"><a href="<?=ROOT?>admin/product/edit/<?=$value['id']?>" class="btn btn-sm btn-info"><span class="fa fa-edit"></span></a><a href="<?=ROOT?>admin/product/remove/<?=$value['id']?>" class="btn btn-sm btn-warning" target="main"><span class="fa fa-remove"></span></a></div> </td> -->
			</tr>
		<?php } ?>
	</tbody>
</table>
