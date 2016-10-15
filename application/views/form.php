<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"> 
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script type="text/javascript" src="<?=PUB?>plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="<?=PUB?>js/materialize.js"></script>
	<script type="text/javascript" src="<?=PUB?>js/quyen.js"></script>
	<link rel="stylesheet" href="<?=PUB?>plugins/bootstrap/css/bootstrap.css">
	<link rel="stylesheet" href="<?=PUB?>css/style.css">
	<script type="text/javascript" src="<?=PUB?>plugins/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<a href="<?=ROOT?>form/pr-oc" target="main">Click me</a>
	<a href="<?=ROOT?>form/pr-oc" class="_l">ádasasdasd</a>
	<form action="<?=ROOT?>form/pr-oc" target="main" method="post" class="_f">
		<input type="text" name="name1" class="required number"></input>
		<input type="text" name="name12" class="required">
		<input type="submit">
	</form>
	<div id="qdev_mark_p"></div>
<style type="text/css">
.qdev_mark{
	position: fixed;
	opacity: 0;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	width: 100%;
	height: 100%;
	z-index: 99999;
}
.qdev_mark .qdev_bg{
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.7);
}
.qdev_mark .qdev_content{
	position: relative;
	max-width: 306px;
	width: 100%;
	background-color: #FFF;
	margin: 0 auto;
	top: 100px;
}
.qdev_mark .qdev_content span.qdev_close{
	position: absolute;
	right: 4px;
	top: 4px;
	width: 28px;
	height: 28px;
	background-color: transparent;
	text-align: center;
	padding: 1px;
	font-size: 18px;
	color: #CCC;
	border-radius: 100%;
	font-family: monospace;
	font-weight: bold;
	  z-index: 99999;
	  cursor: pointer;
}
.qdev_mark .qdev_content .qdev_close:hover{
	background-color: white;
	color: #FF9A9A;
}
.qdev_mark .qdev_content .qdev_header .qdev_title{
	position: relative;
	margin: 0;
	width: 100%;
	font-size: 20px;
	font-weight: bold;
	text-align: center;
	padding: 7px;
	background-color: #EDEDED;
	color: #00A8AE;
	height: 36px;
}
.qdev_mark .qdev_content .qdev_body{
	position: relative;
	padding: 10px;
	min-height: 70px;
	color: #949494;
	margin-bottom: 10px;
}
.qdev_mark .qdev_content .qdev_body.error{
	color: #FF7171;
}
.qdev_mark .qdev_content .qdev_body.success{
	color: #3FB24E;
}
.qdev_mark .qdev_content .qdev_footer{
	position: relative;
	height: 50px;
	display: block;
}
.qdev_mark .qdev_content .qdev_footer a.qdev_close{
	position: absolute;
	padding: 8px 20px;
	background-color: #868686;
	color: #FFF;
	top: 7px;
	left: 10px;
}
.qdev_mark .qdev_content .qdev_footer a.qdev_close:hover{
	background-color: #303030;
	text-decoration: blink;
}
.qdev_mark .qdev_content .qdev_footer a.qdev_accept{
	position: absolute;
	padding: 8px 20px;
	background-color: #019CA1;
	color: #FFF;
	top: 7px;
	right: 10px;
}
.qdev_mark .qdev_content .qdev_footer a.qdev_accept:hover{
	background-color: #006266;
	text-decoration: blink;
}

</style>
</body>
</html>
