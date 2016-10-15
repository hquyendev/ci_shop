<div style="padding:3px">
	<div class="breakcrum">
		<a href="<?=ROOT?>" title="Trang chủ">Home</a> <span class="right-arrow fa fa-angle-right"></span>
		<?php for ($i=0; $i < count($listParent) - 1; $i++) { ?>
		<a href="<?=ROOT?><?=$listParent[$i]['slug']?>.html" title="<?=$listParent[$i]['name']?>"><?=$listParent[$i]['name']?></a> <span class="right-arrow fa fa-angle-right"></span>
		<?php } ?>
		<span class="final"><?=$listParent[count($listParent)-1]['name']?></span>
	</div>
</div>
<div class="row ">
	<div class="menu-user col s3">
		<?=$this->load->view('user/fixed/user_menu')?>
	</div>
	<div id="cart-table"  class="col s9 ">
		<?php if($data){ ?>
			<ul class="collapsible popout" data-collapsible="accordion">
				<?php foreach ($data as $key => $value) {?>
			    <li>
			      <a <?php if($key!=0) { ?>href="<?=ROOT?>tai-khoan/danh-sach-dat-hang/<?=$value['id']?>.html" <?php } ?> class="collapsible-header <?=$key==0?'active':''?>"><i class="material-icons"></i><b>Đơn hàng ngày: <?=date('d-m-Y h:m:s', $value['time'])?></b> 
			      	<div class="status-order <?=$value['status']==3?'success':''?>">
					<?=$value['status']==0?'Chờ xác nhận':''?>
					<?=$value['status']==1?'Đã xác nhận & chờ giao hàng':''?>
					<?=$value['status']==2?'Đang giao hàng':''?>
					<?=$value['status']==3?'<span class="fa fa-check"></span> Đã giao hàng & Thanh toán':''?>
			      	</div>
			      </a>
			      <?php if(isset($value['detail']) ) { ?>
			      <div class="collapsible-body">
			      	<h4>Thông tin đơn hàng</h4>

			      	<div>Người nhận: <b><?=$value['_name']?></b></div>
			      	<div>Số điện thoại: <b><?=$value['_phone']?></b></div>
			      	<div>Địa chỉ: <b><?=$value['_add']?></b></div>
			      	<div>Ghi chú thêm: <b><?=$value['_note']?></b></div>
			      	<table>
			      		<thead>
							<tr>
								<th width="30">#</th>
								<th>Tên sản phẩm</th>
								<th width="80">Số lượng</th>
								<th>Đơn giá</th>
								<th>Thành tiền</th>
							</tr>
						</thead>
						<tbody>
							<?php foreach ($value['detail'] as $key2 => $value2) {?>
								<tr id="item-<?=$value['id']?>">
									<td ><?=$key2 + 1?></td>
									<td><a href="<?=ROOT?>san-pham/<?=$value2['product']?>-<?=url_encode($value2['name'])?>.html" title="<?=$value2['name']?>" class="name"><?=$value2['name']?></a></td>
									<td><?=$value2['qty']?> cái</td>
									<td><span class="price"><?=number_format($value2['price'])?> VNĐ</span></td>
									<td><span class="price"><?=number_format($value2['price']*$value2['qty'])?> VNĐ</span></td>
								</tr>
							<?php } ?>
							<tr>
								<td colspan="100"><h3>Tổng cộng: <?=$value['count']?> sản phẩm <span class="price right"><?=number_format($value['money'])?> VNĐ</span></h3></td>
							</tr>
						</tbody>
			      	</table>
			      </div>
			      <?php } ?>
			    </li>
			    <?php } ?>
		  	</ul>
		<?php }else{ ?>
		<div>
			<div class="null-cart">Bạn chưa có đơn nào nào!</div>
		</div>
		<?php } ?>
	</div>
</div>
