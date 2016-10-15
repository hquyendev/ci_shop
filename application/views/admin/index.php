<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="UTF-8" />
    <title>BCORE Admin Dashboard Template | Dashboard </title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <link rel="stylesheet" href="<?=PUB?>assets/css/main.css" />
    <link rel="stylesheet" href="<?=PUB?>assets/css/theme.css" />
    <link rel="stylesheet" href="<?=PUB?>assets/css/bootstrap.css" />
    <link rel="stylesheet" href="<?=PUB?>css/font-awesome.css" />
    <script src="<?=PUB?>assets/plugins/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="<?=PUB?>js/quyen.js"></script>

</head>

<body >

    <div id="wrap" >
       <div id="left" >
            <div class="media user-media well-small">
                <div class="media-body">
                    <h5 class="media-heading"> Joe Romlin</h5>
                </div>
                <br />
            </div>
            <ul id="menu" class="collapse">
                <li class="panel <?=$this->router->fetch_class()=='dashboard'?'active':''?>">
                    <a href="<?=ROOT?>admin/dashboard.html" >
                        <i class="fa fa-table"></i> Dashboard
                    </a>                   
                </li>

                <li class="panel <?=$this->router->fetch_class()=='product'?'active':''?>">
                    <a href="#" data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#component-nav">
                        <i class="fa fa-tasks"> </i> Sản phẩm     
                        <span class="pull-right">
                          <i class="fa fa-angle-left"></i>
                        </span>
                    </a>
                    <ul class="<?=$this->router->fetch_class()=='product'?'in':'collapse'?>" id="component-nav">
                        <li class="<?=$this->router->fetch_class()=='product'&&$this->router->fetch_method()=='lists'?'active':''?>"><a href="<?=ROOT?>admin/product/lists.html"><i class="fa fa-angle-right"></i> Danh sách sản phẩm </a></li>
                        <li class="<?=$this->router->fetch_class()=='product'&&$this->router->fetch_method()=='news'?'active':''?>"><a href="<?=ROOT?>admin/product/news.html"><i class="fa fa-angle-right"></i> Thêm sản phẩm mới </a></li>
                    </ul>
                </li>

                <li class="panel <?=$this->router->fetch_class()=='cate'?'active':''?>">
                    <a href="<?=ROOT?>admin/cate/lists.html" >
                        <i class="fa fa-list"></i> Danh mục
                    </a>                   
                </li>
                <li class="panel <?=$this->router->fetch_class()=='guide'?'active':''?>">
                    <a href="<?=ROOT?>admin/guide/lists.html" >
                        <i class="fa fa-circle"></i> Bài viết hướng dẫn
                    </a>                   
                </li>
                <li class="panel <?=$this->router->fetch_class()=='order'?'active':''?>">
                    <a href="<?=ROOT?>admin/order/lists.html" >
                        <i class="fa fa-arrows-v"></i> Quản lý đơn hàng
                    </a>                   
                </li>
                <li class="panel">
                    <a href="<?=ROOT?>admin/login/logout.html" >
                        <i class="fa fa-sign-out"></i> Đăng xuất
                    </a>                   
                </li>
            </ul>

        </div>
        <!--END MENU SECTION -->



        <!--PAGE CONTENT -->
        <div id="content">
             
            <div class="inner" style="min-height: 700px;">
                <div class="col-lg-12">
                    <h2>
                        <?=@$title?> 
                        <?php if($this->router->fetch_method()=='lists') { ?><a style="float:right" class="btn btn-info" href="<?=ROOT?>admin/<?=$this->router->fetch_class()?>/news.html"><span class="fa fa-plus"></span> Thêm <?=strtolower($title)?> mới</a><?php } ?>
                    </h2>
                </div>
                <hr />
                <div class="row">
                    <div class="col-lg-12">
                    <?=$this->load->view('admin/site/'.$this->router->fetch_class().'/'.$site)?>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div id="footer">
        <p>&copy;  2015 Admin Manager - <a href="http://quyendev.com" title="Design by QuyenDev.com" target="_blank">QuyenDev.com</a></p>
    </div>
     <script src="<?=PUB?>assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <div id="qdev_mark_p"></div>

</body>

</html>
