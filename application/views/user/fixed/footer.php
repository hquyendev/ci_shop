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

<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.9&appId=897560213704213";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<div class="container">
  <div class="row">
    <div class="col l3 s12">
      <a href="<?=ROOT?>" title="Trang chủ" class=" item-logo"><img src="<?=UPLOAD?>logo2.png" width="100%" class="logo" title="Logo"></a>

      <div id="fb-root"></div>
        <div class="fb-page" data-href="https://www.facebook.com/haisanongvu/" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/haisanongvu/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/haisanongvu/">Hải sản Ông Vũ</a></blockquote></div>
    </div>
    <div class="col l9 s12">
      <div class="row">
        <div class="col s12">
          <form action="<?=ROOT?>subscribe" method="post" target="main">
            <div class="col s8" style="color: white">Đăng ký Email để nhận thông tin ưu đãi và khuyến mãi khủng</div>
            <div class="input-field input-group col s8">
                <input id="icon_prefix" type="text" class="validate" name="email" placeholder="Nhập Email">
                <span class="suffix">
                    <button type="submit" class="btn waves-effect waves-light red"><span class="fa fa-send"></span></button>
                </span>
            </div>
          </form>
        </div>
      </div>
      <div class="row">
        <div class="col l4 s12">
          <h5 class="footer-title">Chuyên mục </h5>
          <ul class="footer-cate block">
            <?php for ($i=0; $i < count($this->data['guide']); $i++) { ?>
            <li><a href="<?=ROOT?>huong-dan/<?=$this->data['guide'][$i]['slug']?>.html" title="<?=$this->data['guide'][$i]['name']?>" ><span class="fa fa-angle-right"></span> <?=$this->data['guide'][$i]['name']?></a></li>
            <?php } ?>
          </ul>
        </div>
        <div class="col l4 s12">
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
        <div class="col l4 s12">
          <h5 class="footer-title">Liên hệ </h5>
          <ul class="footer-cate">
            <li><div><span class="fa fa-phone"></span> 090 285 39 51</div></li>
            <li><div><span class="fa fa-map-marker"></span> Thanh Đa, Quận Bình Thạnh Thành phố Hồ Chí Minh</div></li>
            <li><div><span class="fa fa-envelope"></span> haisanongvu@gmail.com</div></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
<div><iframe src="" name="main" style="display:none" frameborder="0">&copy; 2017 HaiSanOngVu</iframe></div>
<div class="footer-copyright">
  <div class="container">
  &copy; 2017 HaiSanOngVu
  <!-- <a class="grey-text text-lighten-4 right" href="#!">More Links</a> -->
  </div>
</div>