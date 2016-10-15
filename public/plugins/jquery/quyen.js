/*	
*	====================================
*	JavaScript message box by QuyenDev.com
*	DOT NOT COPY
*	====================================
*/
var QDEV = {};
$(document).ready(function(){
	var id = 0;
	var QMark = $('#qdev_mark_p');
		QDEV = {
		QTitle: function (title){
			return title = title ? title : 'Thông báo';
		},
		QFadeIn: function(msg, timeout, link, type){
			id = parseInt(Math.random()*1000);
			var mark = '#qdev_mark_'+id;
			var QBody = $('body');
			var QContent = $([
				'<div class="qdev_mark" id="qdev_mark_'+id+'">',
				'<div class="qdev_close qdev_bg"></div>',
				'<div class="qdev_content">',
				'<span class="qdev_close">x</span>',
				'<div class="qdev_header"><h3 class="qdev_title">Thông báo</h3></div>',
				'<div class="qdev_body '+type+'">',
				msg,
				'</div>',
				'<div class="qdev_footer">',
				'<a href="#" class="qdev_close">Đóng</a>',
				link?'<a href="'+link+'" class="qdev_accept">Đồng ý</a>':'',
				'</div>',
				'</div>',
				'</div>'].join('')
				);

			timeout = timeout?timeout:3000;
			QMark.append(QContent);
			QBody.append(QMark);
			$(mark).animate({opacity: '1'}, 150);
			setTimeout(function() {$(mark).animate({opacity: '0'}, 150, function(){$(mark).remove();});}, timeout);
		},
		QFadeOut: function(){
			$('#qdev_mark_'+id).animate({opacity: '0'}, 150, function(){$('#qdev_mark_'+id).remove();});
		},
		QTranfer: function(link, timeout){
			if(!link)
			{
				setTimeout("location.reload();",timeout);
			}
			else {
				setTimeout("window.location.href= '"+link+"'",timeout);
			}
		},
		QToast: function(message, timeout, link, type, namelink){
			id = parseInt(Math.random()*1000);
			var toast = $('<div id="toast-'+id+'" class="toast '+type+'">'+message+'</div>');
			if(link)
			{
				toast.addClass('link').append('<a href="'+link+'" title="Đồng ý">'+link?namelink:'Đồng ý'+'</a>');
			}
			QMark.append(toast);
			toast.animate({'opacity':1,'right':35}, 50);
			setTimeout(function() {toast.animate({'opacity':0,'right':0}, 50, function(){ toast.remove();});}, timeout);
			toast.on('click', function(){
				$('.toast').remove();
			})
		}
	};
	
   	$(QMark).on('click',function(event){
   		if($(event.target).hasClass('qdev_close'))
			QDEV.QFadeOut();
   	});

	$('form[target="main"]').on('submit',function(event) {
		event.preventDefault();
		$.ajax({
			url: 	$(this).attr('action'), 
			data: 	new FormData(this),
			type: 	$(this).attr('method'),  
			contentType: 	false,
			cache: 			false,
			dataType: 		"script",
			processData: 	false,   
			success:function(data){
			}
		});
	});

	$( 'a[target="main"]' ).click(function() {
		event.preventDefault();
	  	$.ajax({
			url: 		$(this).attr('href'),
			dataType: 	"script",
			success:function(data){
			}
		});
	});
})

