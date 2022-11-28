<?php
	//dem so loai qua
	$strSQL="SELECT COUNT(*) FROM loai_cay";
	$so_loai_qua=mysqli_query($ung,$strSQL);
	$rowLOAI=mysqli_fetch_array($so_loai_qua);
	$soloaiqua=$rowLOAI[0];
	//dem so qua
	$strSQL="SELECT COUNT(*) FROM cay";
	$so_qua=mysqli_query($ung,$strSQL);
	$rowqua=mysqli_fetch_array($so_qua);
	$soqua=$rowqua[0];
	//dem so khach hang
	$strSQL="SELECT COUNT(*) FROM khach_hang";
	$khach_hang=mysqli_query($ung,$strSQL);
	$rowKHACH=mysqli_fetch_array($khach_hang);
	$khachhang=$rowKHACH[0];
	//dem so tin tuc
	$strSQL="SELECT COUNT(*) FROM tin_tuc";
	$tin_tuc=mysqli_query($ung,$strSQL);
	$rowTIN=mysqli_fetch_array($tin_tuc);
	$tintuc=$rowTIN[0];
	//dem so lien he
	$strSQL="SELECT COUNT(*) FROM lien_he";
	$lien_he=mysqli_query($ung,$strSQL);
	$rowLH=mysqli_fetch_array($lien_he);
	$lienhe=$rowLH[0];
	//dem so don dat hang
	$strSQL="SELECT COUNT(*) FROM dondathang";
	$dondathang=mysqli_query($ung,$strSQL);
	$rowDDH=mysqli_fetch_array($dondathang);
	$dondathang=$rowDDH[0];
?>