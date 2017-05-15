<table class="table table-border table-hover">
	<thead>
		<tr>
			<th>Tên</th>
			<th>Số điện thoại</th>
			<th>Email</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach ($data as $key => $value) { ?>
			<tr>
				<td><?=$value['name']?></td>
				<td><?=$value['phone']?></td>
				<td><?=$value['address']?></td>
			</tr>
		<?php } ?>
	</tbody>
</table>
