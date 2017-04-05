<?php $cate = $this->data['cate']; ?>

<div class="show-menu">
		<div class="panel-title">Hải sản</div>
		<div class="panel-desc">Khám phá sản phẩm của chúng tôi ngay</div>
	<div class="row">
		<?php 
		foreach ($cate as $key => $value) {
			if(!$value['children']) { ?>
				<div class="col s3">
					<div class="box-menu">
						<a href="<?=ROOT?>danh-muc/<?=$value['slug']?>.html" title="<?=$value['name']?>">
							<img src="<?=ROOT?>upload/cate/350/<?=$value['image']?>" alt="<?=$value['name']?>">
							<div class="overlay"></div>
							<span class="text"><?=$value['name']?></span>
						</a>
					</div>
				</div>
		<?php	
			}
		}
		 ?>
	</div>
</div>
