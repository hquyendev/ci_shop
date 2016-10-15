<ul class="menu">
	<li class="item-menu"><a href="javascript:void(0)" data-toggle="#submenu-0"><span class="fa fa-minus"></span> Menu cha 1</a>
		<ul class="sub-menu" id="submenu-0">
			<li><a href=""><span class="fa fa-angle-right"></span> Menu con 1</a></li>
			<li><a href=""><span class="fa fa-angle-right"></span> Menu con 1</a></li>
			<li><a href=""><span class="fa fa-angle-right"></span> Menu con 1</a></li>
			<li><a href=""><span class="fa fa-angle-right"></span> Menu con 1</a></li>
			<li><a href=""><span class="fa fa-angle-right"></span> Menu con 1</a></li>
			<li><a href=""><span class="fa fa-angle-right"></span> Menu con 1</a></li>
		</ul>
	</li>

	<li class="item-menu"><a href="javascript:void(0)" data-toggle="#submenu-1"><span class="fa fa-minus"></span> Menu cha 1</a>
		<ul class="sub-menu" id="submenu-1">
			<li><a href=""><span class="fa fa-angle-right"></span> Menu con 1</a></li>
			<li><a href=""><span class="fa fa-angle-right"></span> Menu con 1</a></li>
			<li><a href=""><span class="fa fa-angle-right"></span> Menu con 1</a></li>
			<li><a href=""><span class="fa fa-angle-right"></span> Menu con 1</a></li>
			<li><a href=""><span class="fa fa-angle-right"></span> Menu con 1</a></li>
			<li><a href=""><span class="fa fa-angle-right"></span> Menu con 1</a></li>
		</ul>
	</li>
</ul>
<script type="text/javascript">
	$(document).ready(function(){$('li.item-menu>a').on('click', function(event){event.preventDefault(); var submenu = $($(this).attr('data-toggle')); submenu.toggle(300); if((submenu).hasClass('expand')){submenu.removeClass('expand'); $(this).children('span.fa').removeClass('fa-plus').addClass('fa-minus'); } else {submenu.addClass('expand'); $(this).children('span.fa').removeClass('fa-minus').addClass('fa-plus'); } }) }) 
</script>