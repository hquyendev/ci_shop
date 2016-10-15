<!DOCTYPE html>
<head>
  <meta charset="UTF-8" />
  <title><?=$title?></title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
  <link rel="stylesheet" href="<?=PUB?>assets/plugins/bootstrap/css/bootstrap.min.css" />
  <link rel="stylesheet" href="<?=PUB?>assets/css/login.css" />
  <script src="<?=PUB?>assets/plugins/jquery-2.0.3.min.js"></script>
</head>
<body >
<style type="text/css">
  body{
    background-color: #E2E2E2;
  }
  .box-login{
    max-width: 300px;
    margin: 0 auto;
    padding: 10px;
    background-color: #FFF;
    -webkit-box-shadow: 0px 0px 2px rgba(0, 0, 0, 0.29);
    box-shadow: 0px 0px 2px rgba(0, 0, 0, 0.29);
  }
</style>
    <div class="container">
      <div class="box-login">
        <form action="" method="post" class="AdminForms">
          <div class="form-group text-center">
            <img src="<?=PUB?>assets/img/logo.png" class="img-responsive" style="margin:0 auto "alt="">
          </div>
          <div class="text-danger" style="padding: 10px">
            <?=(isset($mes)?$mes:'Vui lòng đăng nhập để tiếp tục') ?>
          </div>
          <div class="form-group">
            <input type="text" class="form-control" id="exampleInputEmail1" name="user" placeholder="Tên đăng nhập">
          </div>
          <div class="form-group">
            <input type="password" class="form-control" id="exampleInputPassword1" name="pass" placeholder="Mật khẩu">
          </div>
          <div class="form-group">
          </div>
          <input type="submit" name="login-sm" class="btn btn-success" value="Đăng nhập">
        </form>
      </div>
    </div>

</body>
</html>
