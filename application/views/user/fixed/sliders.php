<div class="slider-wrapper">
    <div class="slider">
    	<?php foreach ($sliders as $key => $value) { ?>
        	<a href="#" class="slider-item <?=$key==0?'cnow':''?>" style="background-image: url('<?=UPLOAD?>slider/origin/<?=$value['image']?>');"></a>
    	<?php } ?>
    </div>
</div>
<script>
 $(".slider").pslider({duration:6000});
</script>