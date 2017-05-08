<?php if(isset($data) ) { ?>
<div class="collapsible-body">

  <p>Người nhận: <b><?=$order[0]['_name']?></b></p>
  <p>Số điện thoại: <b><?=$order[0]['_phone']?></b></p>
  <p>Địa chỉ: <b><?=$order[0]['_add']?></b></p>
  <p>Ghi chú thêm: <b><?=$order[0]['_note']?></b></p>
  <table class="table table-hover">
    <thead>
  <tr>
    <th width="30">#</th>
    <th>Mã SP</th>
    <th>Tên sản phẩm</th>
    <th width="80">Số lượng</th>
    <th>Đơn giá</th>
    <th>Thành tiền</th>
  </tr>
</thead>
<tbody>
  <?php foreach ($data as $key => $value) {?>
    <tr id="item-<?=$value['id']?>">
      <td ><?=$key + 1?></td>
      <td ><?=$value['id']?></td>
      <td><a href="<?=ROOT?>hai-san/<?=$value['c_slug']?>/<?=$value['slug']?>.html" title="<?=$value['name']?>" class="name"><?=$value['name']?></a></td>
      <td><?=$value['qty']?> cái</td>
      <td><span class="text-danger"><?=number_format($value['price'])?> VNĐ</span></td>
      <td><span class="text-danger"><?=number_format($value['price']*$value['qty'])?> VNĐ</span></td>
    </tr>
  <?php } ?>
  <tr>
    <td colspan="100"><h3>Tổng cộng: <?=$order[0]['count']?> sản phẩm <span class="text-danger text-right"><?=number_format($order[0]['money'])?> VNĐ</span></h3></td>
  </tr>
</tbody>
  </table>
</div>

<?php }else{ ?>
<div>
  <div class="null-cart">Bạn chưa có đơn nào nào!</div>
</div>
<?php } ?>