<div class="breakcrum">
	<a href="<?=ROOT?>" title="Trang chủ">Home</a> <span class="right-arrow fa fa-angle-right"></span>
	<?php for ($i=0; $i < count($listParent) - 1; $i++) { ?>
	<a href="<?=ROOT?><?=$listParent[$i]['slug']?>.html" title="<?=$listParent[$i]['name']?>"><?=$listParent[$i]['name']?></a> <span class="right-arrow fa fa-angle-right"></span>
	<?php } ?>
	<span class="final"><?=$listParent[count($listParent)-1]['name']?></span>
</div>
<div class="row">
	<div id="show-item-post" class="show-item-post">
		<div class="item-post-detail item-post col s8 x12">
			<?php if($data) { ?>
			<div class="box-item-post">
				<a href="<?=ROOT?>huong-dan/<?=$data['slug']?>.html" title="<?=$data['name']?>" class="name" ><?=$data['name']?> <span class="time"><span class="fa fa-history"></span> <?=date('d-m-Y', $data['time'])?></span></a>
				<div class="image">
					<a href="<?=ROOT?>huong-dan/<?=$data['slug']?>.html" title="<?=$data['name']?>"><img src="<?=ROOT?>upload/post/450/<?=$data['image']?>" alt=""></div>
					</a>
				</div>

				<div class="info-item" style="margin-bottom: 10px;">
					<div class="fb-like" data-href="<?=ROOT?>huong-dan/<?=$data['slug']?>.html" data-layout="button_count" data-action="like" data-size="small" data-show-faces="false" data-share="true"></div>
				</div>
				<div class="content"><?=$data['content']?></div>
				
				<div class="col s12">
					<div class="description">
						<div class="fb-comments" data-href="<?=ROOT?>huong-dan/<?=$data['slug']?>.html" data-numposts="5"></div>
					</div>
				</div>
			</div>
			<?php } ?>

		</div>
		<div class="item-post-vert item-post col s4 x12">
			<?php if($data_view) { ?>
			<div class="post_view_title">Xem nhiều nhất</div>
			<?php foreach ($data_view as $key => $value) { ?>
				<div class="box-item-post">
					<div class="image">
						<a href="<?=ROOT?>huong-dan/<?=$value['slug']?>.html" title="<?=$value['name']?>"><img src="<?=ROOT?>upload/post/450/<?=$value['image']?>" alt="<?=$value['name']?>"></a>
					<a href="<?=ROOT?>huong-dan/<?=$value['slug']?>.html" title="<?=$value['name']?>" class="name"><?=$value['name']?> </a>
					</div>
				</div>
			<?php } } ?>

		</div>
	</div>
<!-- 	<?php if($showView) { ?>
	<div class="view-more">
		<a href="<?=ROOT?>api/get/1?c=<?=$id?>" c="<?=$id?>" page="1" api="<?=ROOT?>api/get/" target="main" id="view-more-item" class="view-more-item btn-large "><span id="loadding" class="fa"></span> Xem thêm</a>
	</div>
	<?php } ?> -->
</div>


<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.9&appId=897560213704213";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>