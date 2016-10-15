<table class="table table-border table-hover">
	<thead>
		<tr>
			<th>ID</th>
			<th>Ngày đặt</th>
			<th>Người đặt</th>
			<th>SL SP</th>
			<th>Tổng tiền</th>
			<th>Trạng thái</th>
			<th>Thao tác</th>
		</tr>
	</thead>
	<tbody>
		<?php if($data) { ?>
		<?php foreach ($data as $key => $value) { ?>
		<tr>
			<td><?=$value['id']?></td>
			<td>Ngày: <?=date('d-m-Y h:m:s', $value['time'])?></td>
			<td><?=isset($value['_user'])?'<a href="'.ROOT.'admin/user/edit/'.$value['_user']['id'].'">'.$value['_user']['name'].'</a>':$value['_name']?></td>
			<td><?=$value['count']?></td>
			<td><?=number_format($value['money'])?></td>
			<td>
				<?=$value['status']==0?'<label class="label label-danger">Chờ xác nhận</label>':''?>
				<?=$value['status']==1?'<label class="label label-warning">Đã xác nhận & chờ giao hàng</label>':''?>
				<?=$value['status']==2?'<label class="label label-info">Đang giao hàng</label>':''?>
				<?=$value['status']==3?'<label class="label label-success"><span class="fa fa-check"></span> Đã giao hàng & Thanh toán</label>':''?>
			</td>
			<td>
				<div style="margin:5px;" class="btn-group">
					<button data-toggle="dropdown" class="btn btn-default dropdown-toggle">Chọn <span class="caret"></span></button>
				  	<ul class="dropdown-menu">
						<li><a href="<?=ROOT?>admin/order/view/<?=$value['id']?>.html">Xem & sửa</a></li>
						<li class="divider"></li>
						<li><a href="<?=ROOT?>admin/order/remove/<?=$value['id']?>.html" target="main">Xóa</a></li>
				  	</ul>
				</div>
			</td>
		</tr>
		<?php } ?>
		<?php } else { ?>
		<tr>
			<td colspan="100">
				<div class="text-center alert alert-warning">Chưa có đơn hàng nào!</div>
			</td>
		</tr>
		<?php } ?>
	</tbody>
</table>