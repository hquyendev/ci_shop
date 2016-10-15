	<div class="breakcrum">
		<a href="<?=ROOT?>" title="Trang chủ">Home</a> <span class="right-arrow fa fa-angle-right"></span>
		<?php for ($i=0; $i < count($listParent) - 1; $i++) { ?>
		<a href="<?=ROOT?><?=$listParent[$i]['slug']?>.html" title="<?=$listParent[$i]['name']?>"><?=$listParent[$i]['name']?></a> <span class="right-arrow fa fa-angle-right"></span>
		<?php } ?>
		<span class="final"><?=$listParent[count($listParent)-1]['name']?></span>
	</div>
<div class="row ">
	<div id="cart-table"  class="col s9 ">
		<?php if($content){ ?>
		<div class="box" style="margin-top:8px">
			<h3 class="text-center"><?=$content['name']?></h3>
			<hr>
			<div>
				<?=$content['content']?>
			</div>
		</div>
		<?php } ?>
	</div>
	
	<div class="menu-user col s3">
		<?=$this->load->view('user/fixed/guide_menu')?>
	</div>
</div>
<script type="text/javascript">
	function removeItem (id) {
		$(id).animate({opacity:0},400, function(){$(id).remove();});
	}
</script>
