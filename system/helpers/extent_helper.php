<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * CodeIgniter
 *
 * An open source application development framework for PHP 5.1.6 or newer
 *
 * @package		CodeIgniter
 * @author		ExpressionEngine Dev Team
 * @copyright	Copyright (c) 2008 - 2014, EllisLab, Inc.
 * @license		http://codeigniter.com/user_guide/license.html
 * @link		http://codeigniter.com
 * @since		Version 1.0
 * @filesource
 */

// ------------------------------------------------------------------------

/**
 * CodeIgniter Array Helpers
 *
 * @package		CodeIgniter
 * @subpackage	Helpers
 * @category	Helpers
 * @author		ExpressionEngine Dev Team
 * @link		http://codeigniter.com/user_guide/helpers/array_helper.html
 */

// ------------------------------------------------------------------------

/**
 * Element
 *
 * Lets you determine whether an array index is set and whether it has a value.
 * If the element is empty it returns FALSE (or whatever you specify as the default value.)
 *
 * @access	public
 * @param	string
 * @param	array
 * @param	mixed
 * @return	mixed	depends on what the array contains
 */
if ( ! function_exists('element'))
{
	function element($item, $array, $default = FALSE)
	{
		if ( ! isset($array[$item]) OR $array[$item] == "")
		{
			return $default;
		}

		return $array[$item];
	}
}

if ( ! function_exists('is_ajax'))
{
	function is_ajax($message = FALSE)
	{
		return true;
		$message = $message?$message:'Page not found';
		if(	isset($_SERVER['HTTP_X_REQUESTED_WITH']) AND strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) === 'xmlhttprequest')
			return TRUE;
		else
			return exit($message);

	}
}


if ( ! function_exists('data'))
{
	function data($data = '')
	{
		echo "<script>parent.QDEV.QData(".json_encode($data).");</script>";
	}
}

if ( ! function_exists('is_image'))
{
	function is_image($image, $accept = array('jpg', 'jpeg', 'bmp', 'png', 'gif'))
	{
		$extention = explode('.', $image['name']);
		$extention = end($extention);
		$type = str_replace('image/', '', $image['type']);
		$size = getimagesize($image['tmp_name']);

		if(!$size){
			return FALSE;
		}
		else
		{
			$mime = str_replace('image/', '', $size['mime']);
			if(!in_array($mime, $accept))
				return FALSE;
		}
		if(!in_array(strtolower($extention), $accept) OR !in_array($type, $accept))
		{
			return FALSE;
		}
		return TRUE;
	}

}

if ( ! function_exists('showSelectChoose'))
{
	function showSelectChoose($data, $text = '--- ', $id = FALSE){
		foreach ($data as $key => $value) {
			$selected = $id&&$id==$value['id']?'selected':'';
			echo '<option value="'.$value['id'].'" '.$selected.'>'.$text.' '.$value['name'].'</option>';
			if($value['children']){
				showSelectChoose($value['children'], $text.'--- ', $id);
			}
		}
	}
}

if ( ! function_exists('showSelect'))
{
	function showSelect($data, $text = '--- '){
		foreach ($data as $key => $value) {
			if($value['children']){
				echo '<optgroup label="'.$text.' '.$value['name'].'"></optgroup>';
				showSelect($value['children'], $text.'--- ');
			}
			else
				echo '<option value="'.$value['id'].'">'.$text.' '.$value['name'].'</option>';
		}
	}
}

if ( ! function_exists('en_pass'))
{
	function en_pass($password = '', $times = 47)
	{

		if( !is_numeric($times) || $times <= 0 )
		{
			$times = 47;
		}
		else
		{
			for ($i=0; $i < $times; $i++) { 
				$password = md5($password);
			}
			return $password;
		}
	}
}

if ( ! function_exists('message'))
{
	function message($message = '', $timeout = 3000, $link = FALSE, $type = 'error')
	{
		echo "<script>parent.QDEV.QFadeIn('$message',$timeout,'$link','$type');</script>";
	}
}

if ( ! function_exists('java'))
{
	function java($text = '')
	{
		echo "<script>parent.$text;</script>";
	}
}

if ( ! function_exists('toast'))
{
	function toast($message = '', $timeout = 3000, $type = 'error', $link = FALSE, $namelink = 'Đồng ý')
	{
		echo "<script>parent.QDEV.QToast('$message',$timeout,'$type','$link', '$namelink');</script>";
	}
}

if ( ! function_exists('transfer'))
{
	function transfer($link = FALSE, $timeout = 3000)
	{
		exit("<script>parent.QDEV.QTranfer('$link', $timeout);</script>");
	}
}

if ( ! function_exists('url_encode'))
{
	function url_encode($str) {
		$str = preg_replace("/(à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ)/", 'a', $str);
		$str = preg_replace("/(è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ)/", 'e', $str);
		$str = preg_replace("/(ì|í|ị|ỉ|ĩ)/", 'i', $str);
		$str = preg_replace("/(ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ)/", 'o', $str);
		$str = preg_replace("/(ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ)/", 'u', $str);
		$str = preg_replace("/(ỳ|ý|ỵ|ỷ|ỹ)/", 'y', $str);
		$str = preg_replace("/(đ)/", 'd', $str);    
		$str = html_entity_decode ($str);
		$str = str_replace(array(' ','_'), '-', $str); 
		$str = html_entity_decode ($str);
		$str = str_replace("ç","c",$str);
		$str = str_replace("Ç","C",$str);
		$str = str_replace(" / ","-",$str);
		$str = str_replace("/","-",$str);
		$str = str_replace(" - ","-",$str);
		$str = str_replace("_","-",$str);
		$str = str_replace(" ","-",$str);
		$str = str_replace( "ß", "ss", $str);
		$str = str_replace( "&", "", $str);
		$str = str_replace( "%", "percent", $str);
		$str = str_replace("--","-",$str);
		$str = str_replace(".","-",$str);
		$str = str_replace(",","",$str);
		$str = preg_replace("/(À|Á|Ạ|Ả|Ã|Â|Ầ|Ấ|Ậ|Ẩ|Ẫ|Ă|Ằ|Ắ|Ặ|Ẳ|Ẵ)/", 'A', $str);
		$str = preg_replace("/(È|É|Ẹ|Ẻ|Ẽ|Ê|Ề|Ế|Ệ|Ể|Ễ)/", 'E', $str);
		$str = preg_replace("/(Ì|Í|Ị|Ỉ|Ĩ)/", 'I', $str);
		$str = preg_replace("/(Ò|Ó|Ọ|Ỏ|Õ|Ô|Ồ|Ố|Ộ|Ổ|Ỗ|Ơ|Ờ|Ớ|Ợ|Ở|Ỡ)/", 'O', $str);
		$str = preg_replace("/(Ù|Ú|Ụ|Ủ|Ũ|Ư|Ừ|Ứ|Ự|Ử|Ữ)/", 'U', $str);
		$str = preg_replace("/(Ỳ|Ý|Ỵ|Ỷ|Ỹ)/", 'Y', $str);
		$str = preg_replace("/(Đ)/", 'D', $str);
		return strtolower($str); // Trả về chuỗi đã chuyển
	}
}


/* End of file array_helper.php */
/* Location: ./system/helpers/array_helper.php */