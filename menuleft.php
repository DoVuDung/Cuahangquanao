<?php
	
	$strSQL="SELECT * FROM loai_cay;" ;
	$loaiqua=mysqli_query($ung,$strSQL);
?>
<style type="text/css">
	tr td{
		text-align: left;
	}
		#left{
		width:148px;
		}

		#left h1{
		background:#00B214;
		color:#FFFFFF;
		font-size:14px;
		text-align:center;
		padding: 10px;
		}

		#left ul{
		list-style-type:none;
		margin:0px;
		padding:0px;
		}

		#left ul a{
		text-decoration:none;
		line-height:25px;
		color:#f26522;
		background:#E0E3EC;
		display:block;
		width:133px;
		border-top:1px solid #FFFFFF;
		border-bottom:1px solid #CCCCCC;
		padding-left:15px;
		font-size: 14px;
		font-weight: bold;
		}

		#left ul a:hover{
		background:#00B214;
		color: white;
		}
</style>
<div id="left">
    <h1>DANH MỤC</h1>
    <ul>
		<?php while($row=mysqli_fetch_array($loaiqua)) { ?> 
		    <li><a href="#" onclick="loaiqua_onsubmit('<?php echo $row['ma_loai']; ?>')"><?php echo $row['ten_loai']; ?></a></li>
		<?php } ?>
    </ul>
</div>

	<form action="" method="post" name="loaiqua">
	<input name="MaLH" type="hidden" value="" />
	<input name="gia" type="hidden" value="" />
	<input name="view" type="hidden" value="sanpham" />
	</form>
	<script>
		function loaiqua_onsubmit(thamso)
		{
		loaiqua.MaLH.value=thamso
		loaiqua.view.value="sanpham"
		loaiqua.submit()
		}
		
		function timgia_onsubmit(gia)
		{
		loaiqua.gia.value=gia
		loaiqua.view.value="sanpham"
		loaiqua.submit()	
		}
	</script>
<table width="147" border="0" cellpadding="0" cellspacing="0" style="padding-top:5px;">
		<tr>
			<td style="height:25px; background:url(images/trang.jpg) repeat-x;font-weight:bold" align="left" class="ht" colspan="3">
				&nbsp;&nbsp;<img src="images/no.gif" border="0" width="16" height="16" align="bottom"/>
				&nbsp;&nbsp;Giá Sản Phẩm
			</td>
		</tr>
		<tr>
			<td>
		<div class="menuleft">
			<a href="#" onclick="timgia_onsubmit('mot')">Dưới 30.000đ</a>
			<a href="#" onclick="timgia_onsubmit('hai')">30.000đ - 50.000đ</a>
			<a href="#" onclick="timgia_onsubmit('ba')">50.000đ - 75.000đ</a>
			<a href="#" onclick="timgia_onsubmit('bon')">75.000đ - 100.000đ</a>
			<a href="#" onclick="timgia_onsubmit('nam')">100.000đ - 150.000đ</a>
			<a href="#" onclick="timgia_onsubmit('sau')">Trên 150.000đ</a>
		</div>
			</td>
		</tr>
</table>
<?php include('include/thongke.php'); ?>
<table width="147" border="0" cellpadding="0" cellspacing="0" style="padding-top:5px;">
		<tr>
			<td style="height:25px; background:url(images/trang.jpg) repeat-x;font-weight:bold" align="left" class="ht" colspan="3">
				&nbsp;&nbsp;<img src="images/no.gif" border="0" width="16" height="16" align="bottom"/>
				&nbsp;&nbsp;Thống Kê
			</td>
		</tr>
		<tr>
			<td style="margin-top:4px; width:147px;font-size:14px ;padding:10px; background:#00B214; color:#FFFFCC;">
		
			Tổng Số Danh mục: <?php echo $soloaiqua; ?>
			<br />
			Tổng Số Quần áo: <?php echo $soqua; ?>	
			<br />
			Số Khách Hàng: <?php echo $khachhang; ?>
	
			</td>
		</tr>
		
</table>
