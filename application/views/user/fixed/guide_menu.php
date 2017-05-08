<div class="collection">
<?php for ($i=0; $i < count($data); $i++) { ?>
<a href="<?=ROOT?>khach-hang/<?=$data[$i]['slug']?>.html" title="<?=$data[$i]['name']?>" class="collection-item <?=$data[$i]['id']==$content['id']?'active':''?>"><?=$data[$i]['name']?></a>
<?php } ?>
</div>