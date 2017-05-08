<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Api extends HQ_Controller{
	function __construct(){
		parent:: __construct();		
	}
	public function index($slug = FALSE)
	{
		exit('Hello!');
	}

	public function get($page = 0, $perpage = 20)
	{
		$cate = $this->input->get('c');
		$cate = intval($cate);
		if(!$page)
		{
			return;
		}
		$total = $this->Product_model->total($cate);
		$res = array('total'=>$total, 'page'=>($page+1), 'perpage'=>$perpage);
		if(($page)*$perpage>$total)
		{
			java("undisable();");
			exit();
		}

		$data = $this->Product_model->getNew($cate,$page*$perpage, $perpage);
		if($data)
		{
			$html = '';
			foreach ($data as $key => $value) {
				$image = explode('|', $value['image']);
				$html .= '<div class="item">';
				$html .= '	<div class="box-item">';
				$html .= '		<div class="image">';
				$html .= '			<a href="'.ROOT.'gio-hang/add/'.$value['id'].'.html" title="Thêm '.$value['name'].' vào giỏ hàng" target="main" class="action-item buy"><span class="fa fa-cart-plus"></span></a>';
				$html .= '			<a href="'.ROOT.'tai-khoan/san-pham-yeu-thich/'.$value['id'].'.html" title="Thêm '.$value['name'].' vào danh sách yêu thích" target="main" class="action-item like"><span class="fa fa-heart"></span></a>';
				$html .= '			<a href="'.ROOT.'hai-san/'.$value['c_slug'].'/'.$value['slug'].'.html" title="'.$value['name'].'"><img src="'.ROOT.'upload/product/450/'.$image[0].'" alt="'.$value['name'].'" ></a></div>';
				$html .= '		<div class="info">';;
				$html .= '			<div class="price">'.number_format($value['price']).' VNĐ</div>';
				$html .= '			<a href="'.ROOT.'hai-san/'.$value['c_slug'].'/'.$value['slug'].'.html" title="'.$value['name'].'" class="name">'.$value['name'].'</a>';
				$html .= '		</div>';
				$html .= '	</div>';
				$html .= '</div>';

			}
			data($res);
			java("appendData('".$html."');");
			java("undisable();");
		}
	}
	public function search($page = 0, $perpage = 20)
	{
		$key = $this->input->get('c');
		if(!$page)
		{
			return;
		}
		$total = $this->Product_model->total(FALSE, $key);
		$res = array('total'=>$total, 'page'=>($page+1), 'perpage'=>$perpage);
		if(($page)*$perpage>$total)
		{
			java("undisable();");
			exit();
		}

		$data = $this->Product_model->getNew(FALSE,$page*$perpage, $perpage, $key);
		if($data)
		{
			$html = '';
			foreach ($data as $key => $value) {
				$image = explode('|', $value['image']);
				$html .= '<div class="item">';
				$html .= '	<div class="box-item">';
				$html .= '		<div class="image">';
				$html .= '			<a href="'.ROOT.'gio-hang/add/'.$value['id'].'.html" title="Thêm '.$value['name'].' vào giỏ hàng" target="main" class="action-item buy"><span class="fa fa-cart-plus"></span></a>';
				$html .= '			<a href="'.ROOT.'tai-khoan/san-pham-yeu-thich/'.$value['id'].'.html" title="Thêm '.$value['name'].' vào danh sách yêu thích" target="main" class="action-item like"><span class="fa fa-heart"></span></a>';
				$html .= '			<a href="'.ROOT.'hai-san/'.$value['c_slug'].'/'.$value['slug'].'.html" title="'.$value['name'].'"><img src="'.ROOT.'upload/product/450/'.$image[0].'" alt="'.$value['name'].'" ></a></div>';
				$html .= '		<div class="info">';;
				$html .= '			<div class="price">'.number_format($value['price']).' VNĐ</div>';
				$html .= '			<a href="'.ROOT.'hai-san/'.$value['c_slug'].'/'.$value['slug'].'.html" title="'.$value['name'].'" class="name">'.$value['name'].'</a>';
				$html .= '		</div>';
				$html .= '	</div>';
				$html .= '</div>';

			}
			data($res);
			java("appendData('".$html."');");
			java("undisable();");
		}
	}
}