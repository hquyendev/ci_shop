<?php $cate = $this->data['cate']; ?>
<table class="table table-border table-hover">
	<thead>
		<tr>
			<th>ID</th>
			<th>Hình</th>
			<th>Tên</th>
			<th>Meta</th>
			<th>Desc</th>
			<th>Danh mục cha</th>
			<th>Thao tác</th>
		</tr>
	</thead>

	<tbody>

		<tr>
			<?=showListCate($cate)?>
		</tr>
	</tbody>
</table>
<?php 
		function showListCate($cate, $text = ''){
			if(!$cate){
				return;
			}
			foreach ($cate as $key => $value) {
				echo '<tr>';
				echo '<td>'.$value['id'].'</td>';
				echo '<td><img src="'.ROOT.'upload/cate/350/'.$value['image'].'" width="30"></td>';
				echo '<td>'.$text.$value['name'].'</td>';
				echo '<td>'.$value['meta'].'</td>';
				echo '<td>'.$value['des'].'</td>';
				echo '<td>';echo $value['parent_name']?'<a href="'.ROOT.'admin/cate/edit/'.$value['parent'].'">'.$value['parent_name'].' <span class="fa fa-edit"></span></a>':'-';echo '</td>';
				echo '<td><div class="btn-group"><a href="'.ROOT.'admin/cate/edit/'.$value['id'].'" class="btn btn-sm btn-info"><span class="fa fa-edit"></span></a><a href="'.ROOT.'admin/cate/remove/'.$value['id'].'" class="btn btn-sm btn-warning" target="main"><span class="fa fa-remove"></span></a></div> </td>';
				if($value['children'])
				{
					showListCate($value['children'], $text.'-- ');
				}
			}
		}
 ?>