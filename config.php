<?php 
session_start();
date_default_timezone_set('Asia/Ho_Chi_Minh');
require_once 'vendor/autoload.php';

$time = date('Y-m-d H:i:s');
$conn       = mysqli_connect('test123111-server.mysql.database.azure.com:3306', 'fwblucrchl', 'E1O6Z5R36IO01C45$', 'test123111-database') or die ('Connect DB Failed');
mysqli_query($conn,"SET NAMES utf8");


if(isset($_SESSION['TenDangNhap'])){
	$TenDangNhap = $_SESSION['TenDangNhap'];
	
	$data = mysqli_fetch_array(mysqli_query($conn, "select nguoidung.*, donvi.TenDV, phanquyen.TenPQ, chucdanh.TenCD from nguoidung
									INNER JOIN donvi ON nguoidung.MaDV = donvi.MaDV 
									INNER JOIN phanquyen ON nguoidung.MaPQ = phanquyen.MaPQ 
									INNER JOIN chucdanh ON nguoidung.MaCD = chucdanh.MaCD 
									Where TenDangNhap = '".$TenDangNhap."'"));			
	$count_baoloi = mysqli_num_rows(mysqli_query($conn, "select * from baoloi Where TrangThai = 0"));						
}else {
	$google_client = new Google_Client();
	$google_client->setClientId('655932795733-0iudaqm2egn8c8dal1am1uffokk71knr.apps.googleusercontent.com');
	$google_client->setClientSecret('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');
	$google_client->setRedirectUri('http://localhost:8080/NCKH/KKTS/DangNhap_Google_Ajax.php');
	$google_client->addScope('email');
	$google_client->addScope('profile');
}








function _add_data_nkhd($conn, $MaND_add, $HanhDong, $ChiTietHanhDong, $time)
{
	return mysqli_query($conn,"INSERT INTO nhatkyhoatdong	(
	MaNKHD, MaND, HanhDong, ChiTietHanhDong, Time) 
		VALUE 
	('','{$MaND_add}', '{$HanhDong}', '{$ChiTietHanhDong}', '{$time}')");
}



