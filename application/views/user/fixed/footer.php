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
    <div class="col l6 s12">
      <h5 class="white-text">Footer Content</h5>
      <p class="grey-text text-lighten-4">You can use rows and columns here to organize your footer content.</p>
    </div>
    <div class="col l4 offset-l2 s12">
      <h5 class="white-text">Links</h5>
      <ul>
        <li><a class="grey-text text-lighten-3" href="#!">Link 1</a></li>
        <li><a class="grey-text text-lighten-3" href="#!">Link 2</a></li>
        <li><a class="grey-text text-lighten-3" href="#!">Link 3</a></li>
        <li><a class="grey-text text-lighten-3" href="#!">Link 4</a></li>
      </ul>
    </div>
  </div>
</div>
<div><iframe src="" name="main" style="display:none" frameborder="0">&copy; 2015 QuyenDev.com</iframe></div>
<div class="footer-copyright">
  <div class="container">
  © 2014 Copyright Text
  <a class="grey-text text-lighten-4 right" href="#!">More Links</a>
  </div>
</div>