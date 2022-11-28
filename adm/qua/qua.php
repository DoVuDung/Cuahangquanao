
<?php
	//tim kiem nhanh
	$dieukien="";
	$tukhoa="";
	$strSQL="SELECT * FROM loai_cay";
	$loaiqua=mysqli_query($ung,$strSQL);
	//kiem tra xem ten qua co duoc nhap vao hay khong
	if(isset($_POST['txttukhoa']))
		{
			$tukhoa=$_POST['txttukhoa'];
			if(!empty($tukhoa)){
				$dieukien="ten_cay Like '%{$tukhoa}%' ";
				//echo($dieukien);
			}
			

		}	
	//kiem tra ma loai qua co duco nhap vao hay khong
		if(isset($_POST['loaiqua']))
		{
			$maloaiqua=$_POST['loaiqua'];
			if($maloaiqua!="0")
				{
					if(!empty($dieukien)){
						$dieukien=$dieukien."AND ma_loai = {$maloaiqua}";
							//echo $dieukien;
					}
				
					else{
						$dieukien="ma_loai = {$maloaiqua}";	
						//echo $dieukien;
					}
					
				}
			
		}
		if($dieukien!="")
		$dieukien="WHERE ".$dieukien;
	//phan hien thi trang them va sua
	if(isset($_POST['chentrang']))
	{
		$chucnang=$_POST['chentrang'];
		if($chucnang=='themqua')
			include_once('themqua.php');
		else if($chucnang=='suaqua')
			include_once('suaqua.php');
	}

//phan trang
$strSQL="SELECT count(*) FROM cay {$dieukien}";
//echo $strSQL;
	$qua=mysqli_query($ung,$strSQL);
	$row=mysqli_fetch_array($qua);
	$sodong=$row[0];
	
	$kichthuoctrang=10;
		if(($sodong%$kichthuoctrang)==0)
				$tongsotrang=$sodong/$kichthuoctrang;
		else
				$tongsotrang=($sodong/$kichthuoctrang)+1;
			
			
	if(!isset($_POST['tranghienhanh']) || $_POST['tranghienhanh']=="1")
		{
			$dongbatdau=0;
			$tranghienhanh=1;
		}
	else
		{
			$dongbatdau=($_POST['tranghienhanh']-1)*$kichthuoctrang;
			$tranghienhanh=$_POST['tranghienhanh'];
		}
	
	$strSQL="SELECT * FROM cay {$dieukien} ORDER BY ma_cay desc Limit {$dongbatdau},{$kichthuoctrang}";
	$qua=mysqli_query($ung,$strSQL);
?>
<form name="timqua" action="" method="post">
<table width="450" cellpadding="2" cellspacing="0" border="0" align="right" bgcolor="#66A111" style="color:#FFFFCC"> 
<tr><td>
Tìm Kiếm Quần Áo:&nbsp;&nbsp;
</td><td>
<input type="text" name="txttukhoa" id="txttukhoa" style="width:150px;" value="" />
</td><td>
							<select name="loaiqua">
                              <option value="0">----Tên  Quần Áo----</option>
							 <?php while($row=mysqli_fetch_array($loaiqua)) { ?>
								<?php if($row['ma_loai']==$maloaiqua) { ?>
							  	<option value="<?php echo $row['ma_loai']; ?>" selected="selected" ><?php echo $row['ten_loai']; ?></option>
								<?php } else { ?>
								<option value="<?php echo $row['ma_loai']; ?>"><?php echo $row['ten_loai']; ?></option>
							  <?php } ?>
							 <?php } ?>
                            </select>					
</td>
<td>
<input name="trangchuyen" type="hidden" value="quanlycay" />
<input type="submit" value="Tìm" name="submit" />
</td></tr></table>
</form>

<table width="750" cellpadding="2" cellspacing="0" border="0" class="admintable" style="border-right:#E9E9E9 1px solid; border-top:#E9E9E9 1px solid;" align="right">
	<tr>
		<th width="40" align="center" style="border-left:#66A111 solid 1px;">
			STT
		</th>
		<th width="90" align="center">
			Mã Quần ÁO
		</th>
		<th width="220">
			Tên Quần Áo
		</th>
		<th width="180">
			Thuộc Loại
		</th>
		<th width="90">
			Số lượng
		</th>
		<th width="200" colspan="2" style="background:#FFFFFF;" align="center">
			<a href="#" onclick="them_suaqua('themqua')">Thêm Quần Áo Mới</a>
		</th>
	</tr>
	<?php $i=$dongbatdau; ?>
		<?php while($row=mysqli_fetch_array($qua)) { $i+=1; ?>
	<tr>
	<?php 
		//xu ly mau cho dong
			if($i%2==0) 
				$mausac="style='background:#F8F8F8;'";
			 else 
			 	$mausac="style='background:#FFFFFF;'";
	?> 
		<td <?php echo $mausac; ?> >
			<?php echo $i; ?>
		</td>
		<td <?php echo $mausac; ?> >
			<?php echo $row['ma_cay']; ?>
		</td>
		<td <?php echo $mausac; ?> >
			<a href="#" onclick="them_suaqua('suaqua',<?php echo $row['ma_cay']; ?>)">
			<?php echo $row['ten_cay']; ?></a>
			
			<?php
				// hien trang thai cua qua
				if($row['trang_thai']==1)
					echo "<img src='../images/hot.gif' border='0'>";
			?>
		</td>
		<td <?php echo $mausac; ?> >
			<?php
				$strSQL="SELECT * FROM loai_cay WHERE ma_loai=$row[ma_loai]";
				$loaiqua=mysqli_query($ung,$strSQL);
				$rowloai=mysqli_fetch_array($loaiqua);
				echo $rowloai['ten_loai'];
			?>
		</td>
		<td <?php echo $mausac; ?> >
			<?php echo $row['so_luong']; ?>
		<td width="100" align="center" <?php echo $mausac; ?>>
			<a href="#" onclick="them_suaqua('suaqua',<?php echo $row['ma_cay']; ?>)">Sửa</a>
		</td>
		<td width="100" align="center" <?php echo $mausac; ?>>
			<a href="#" onclick="xoa_qua(<?php echo $row['ma_cay']; ?>)">Xóa</a>
		</td>
	</tr>
		<?php } ?>
	<tr>
		<td colspan="6" height="30" align="center">
			<?php if((int)$tongsotrang>1) { ?>
				<?php 
					//xu ly review trang
					if((int)$tranghienhanh!=1)
					{
				?>
					<a href="#" class="page" onclick="sotrang(<?php echo $tranghienhanh-1 ?>) "> <img src="../images/review.jpg" border="0" /></a> 
					<?php } ?>
			
			<?php for($i=1; $i<=$tongsotrang; $i++ ) { ?>
				<?php if ((int)$tranghienhanh==$i) { ?>
					<a href="#" class="tranghientai" onclick="sotrang(<?php echo $i; ?>)"> <?php echo $i; ?></a>
					<?php } else  {?>	
					<a href="#" class="phantrang" onclick="sotrang(<?php echo $i; ?>)"> <?php echo $i; ?></a>
				<?php } ?>	
			<?php } ?>
				<?php 
					//xu ly next trang
					if((int)$tranghienhanh!=(int)$tongsotrang)
					{
					?>
				<a href="#" class="page" onclick="sotrang(<?php echo $tranghienhanh+1 ?>) "> <img src="../images/next.jpg" border="0" /></a>		
					<?php } ?>
		<?php } ?>		
			
		<?php if((int)$tongsotrang>1) { ?>
		  <select name="select" onchange="sotrang(this.value)" >
	   	   	<?php for($i=1; $i<=$tongsotrang; $i++ ) { ?>
					<?php if ($tranghienhanh==$i) { ?>
						<option value="<?php echo $i; ?>" selected="selected">Trang  <?php echo $i; ?></option>
					<?php } else  {?>
						<option value="<?php echo $i; ?>" >Đến Trang  <?php echo $i; ?></option>
					<?php } ?>			
			<?php } ?>			   
	   	</select> 
		<?php } ?>	
		</td>
	</tr>
</table>
<form action="" method="post" name="themvssua">
	<input name="chentrang" type="hidden" value="" />
	<input name="maqua" type="hidden" value="" />
	<input name="trangchuyen" type="hidden" value="quanlycay" />
</form>

<form action="" method="post" name="xoaqua">
	<input name="maqua" type="hidden" value="" />
	<input name="goihamxuly" type="hidden" value="xoaqua" />
	<input name="trangchuyen" type="hidden" value="xlqua" />
</form>

<script>

	function them_suaqua(trangthem,mah)
	{
		themvssua.chentrang.value=trangthem
		themvssua.maqua.value=mah
		themvssua.submit()
	}
	function xoa_qua(mah)
	{
		xoaqua.maqua.value=mah
		if(confirm('bạn có thực sự muốn xóa không!'))
		xoaqua.submit()
	}
</script>


<form name="hung1" method="post" action="">
	<input type="hidden" name="tranghienhanh" value="" />
	<input type="hidden" name="trangchuyen" value="quanlycay" />
</form>
<script>
	function sotrang(trang,masp)
	{
		hung1.tranghienhanh.value=trang
		hung1.submit()
	}
</script>