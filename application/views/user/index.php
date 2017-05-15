<!DOCTYPE html>
<html>
<head>
	<title><?=isset($title)?$title:'Hải sản Ông Vũ'?></title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="<?=PUB?>v2/css/materialize.css?t=1.1">
	<link rel="stylesheet" type="text/css" href="<?=PUB?>v2/css/font-awesome.css?t=1.1">
	<link rel="stylesheet" type="text/css" href="<?=PUB?>v2/css/style.css?t=1.4">
	<link rel="stylesheet" type="text/css" href="<?=PUB?>v2/css/jquery.pslider.css?t=1.1" />
	<script type="text/javascript" src="<?=PUB?>v2/js/jquery.js?t=1.1"></script>
	<script type="text/javascript" src="<?=PUB?>v2/js/quyen.js?t=1.1"></script>
	<script type="text/javascript" src="<?=PUB?>v2/js/jquery.pslider.js?t=1.1"></script>
	<script type="text/javascript" src="<?=PUB?>v2/js/materialize.js?t=1.1"></script>
	<link rel="shortcut icon" href="<?=ROOT?>favicon.ico" type="image/x-icon">
</head>
<body>
<header>
	<?=$this->load->view('user/fixed/banner')?>
	<?=$this->load->view('user/fixed/menu')?>
</header>
<div class="main">
	<?=$site=='home'?$this->load->view('user/fixed/sliders'):NULL?>
	<div class="container">
		<div class="row">
			<div class="col s12">
				<?=$this->load->view('user/site/'.$site)?>
			</div>
		</div>
	</div>
</div>
<footer class="page-footer">
	<?=$this->load->view('user/fixed/footer')?>
</footer>
<div id="qdev_mark_p"></div>
</body>
</html>