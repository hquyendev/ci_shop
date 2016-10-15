
function change_alias( str_slug )
{
var str = str_slug;
str= str.toLowerCase(); 
str= str.replace(/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ/g,"a"); 
str= str.replace(/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ/g,"e"); 
str= str.replace(/ì|í|ị|ỉ|ĩ/g,"i"); 
str= str.replace(/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ/g,"o"); 
str= str.replace(/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ/g,"u"); 
str= str.replace(/ỳ|ý|ỵ|ỷ|ỹ/g,"y"); 
str= str.replace(/đ/g,"d"); 
str= str.replace(/!|@|%|\^|\*|\(|\)|\+|\=|\<|\>|\?|\/|,|\.|\:|\;|\'| |\"|\&|\#|\[|\]|~|$|_/g,"-");
str= str.replace(/-+-/g,"-"); 
str= str.replace(/^\-+|\-+$/g,""); 
str= str.replace(' ', '-');
return str;
}

$(document).ready(function(){
    $('#name-slug').keyup(function(){
      var str_slug = change_alias($(this).val());
      $('#slug-alilas').val(str_slug);
      if($(this).attr('meta') == 'true')
      {
      	$('#meta').val($(this).val());
      }
      if($(this).attr('desc') == 'true')
      {
      	$('#desc').val($(this).val());
      }
    });
})
