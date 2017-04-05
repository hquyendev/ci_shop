<table class="table table-border table-hover">
	<thead>
		<tr>
			<th>ID</th>
			<th>Hình</th>
			<th>Tên sản phẩm</th>
			<th>Giá</th>
			<th>Thao tác</th>
		</tr>
	</thead>

	<tbody>
		<?php foreach ($data as $key => $value) { ?>
			<?php $image = explode('|', $value['image']); ?>
			<tr>
				<td>#<?=$value['id']?></td>
				<td><img src="<?=ROOT?>upload/product/450/<?=$image[0]?>" width="60" alt=""></td>
				<td><a href="<?=ROOT?>admin/product/edit/<?=$value['id']?>"><?=$value['name']?></a></td>
				<td><?=number_format($value['price'])?> VNĐ</td>
				<td><div class="btn-group"><a href="<?=ROOT?>admin/product/edit/<?=$value['id']?>" class="btn btn-sm btn-info"><span class="fa fa-edit"></span></a><a href="<?=ROOT?>admin/product/remove/<?=$value['id']?>" class="btn btn-sm btn-warning" target="main"><span class="fa fa-remove"></span></a></div> </td>
			</tr>
		<?php } ?>
	</tbody>
</table>
