<script type="text/javascript">
  var appendData = function(data){
  var item = jQuery(data);
  $("#show-item").append($(item));
  $('#show-item>.item').each(function( index ) {
    $(this).show('slow');
    $(this).addClass('show');
  });
}

var undisable = function(){
  var button = $('#view-more-item');
  if(QDEV.QValue.page*QDEV.QValue.perpage>=QDEV.QValue.total)
  {
    button.remove();
  }
  var page = QDEV.QValue?QDEV.QValue.page:1;
  var href = button.attr('api') + page;
  if(button.attr('c'))
    href = href + '?c=' + button.attr('c');
  button.attr('href', href)



}
$('#view-more-item').on('click', function(){
  if(QDEV.QValue.page === undefined || (QDEV.QValue.page*QDEV.QValue.perpage>=QDEV.QValue.total))
  {
    button.remove();
  }
})

$(document).ready(function(){
  $('#show-item>.item').addClass('show');
})
</script>
<div class="container">
  <div class="row">
    <div class="col l3 s12">
      <a href="<?=ROOT?>" title="Trang chủ" class=" item-logo"><img src="<?=UPLOAD?>logo2.png" width="100%" class="logo" title="Logo"></a>
    </div>
    <div class="col l3 s12">
      <h5 class="footer-title">Chuyên mục </h5>
      <ul class="footer-cate block">
        <?php for ($i=0; $i < count($this->data['guide']); $i++) { ?>
        <li><a href="<?=ROOT?>huong-dan/<?=$this->data['guide'][$i]['slug']?>.html" title="<?=$this->data['guide'][$i]['name']?>" ><span class="fa fa-angle-right"></span> <?=$this->data['guide'][$i]['name']?></a></li>
        <?php } ?>
      </ul>
    </div>
    <div class="col l3 s12">
      <h5 class="footer-title">Danh mục </h5>
      <ul class="footer-cate">
        <?php $cate = $this->data['cate']; ?>
        <?php 
        foreach ($cate as $key => $value) {
          echo '<li><a href="'.ROOT.'danh-muc/'.$value['slug'].'.html" title="'.$value['name'].'"><span class="fa fa-angle-right"></span> '.$value['name'].'</a></li>';
          }
        ?>
      </ul>
    </div>
    <div class="col l3 s12">
      <h5 class="footer-title">Liên hệ </h5>
      <ul class="footer-cate">
        <li><div><span class="fa fa-phone"></span> (+84)-8888-4444</div></li>
        <li><div><span class="fa fa-map-marker"></span> 113 Nguyễn Đình Chiểu, Q1, Dakao, HCM</div></li>
        <li><div><span class="fa fa-envelope"></span> shop123@seashop.vn</div></li>
      </ul>
    </div>
  </div>
</div>
<div><iframe src="" name="main" style="display:none" frameborder="0">&copy; 2015 QuyenDev.com</iframe></div>
<div class="footer-copyright">
  <div class="container">
  &copy; 2017 QuyenDev.com
  <!-- <a class="grey-text text-lighten-4 right" href="#!">More Links</a> -->
  </div>
</div>