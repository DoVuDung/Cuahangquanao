<style type="text/css">
    .paging{
    	background-color: #00B214;
    	height: 35px;
    }
	ul.hihi li{
		float: left;
	}
	.paging ul.hihi li a:visited{
		color: white;
	}
	ul.hihi li a{
		display: inline-block;
		margin: 0px 10px 0px 0px;
		padding:0px 30px;
		line-height: 35px;
		text-transform: uppercase;
		color: white;
	}
	ul.hihi li:hover a{
	    background:#f26522;
	    text-decoration:none;
	}
</style>
<div class="paging">
		<ul class="hihi">
			<li><a href="#" onclick="dentrang_onsubmit('trangchu')">Trang Chủ</a></li>
			<li><a href="#" onclick="dentrang_onsubmit('gioithieu')">Giới Thiệu</a></li>
			<li><a href="#" onclick="dentrang_onsubmit('sanpham')">Sản Phẩm</a></li>
			<li><a href="#" onclick="dentrang_onsubmit('tintuc')">Tin Tức</a></li>
			<li><a href="#" onclick="dentrang_onsubmit('dichvu')">Dịch Vụ</a></li>
			<li><a href="#" onclick="dentrang_onsubmit('dathang')">Giỏ Hàng</a></li>
			<li><a href="#" onclick="dentrang_onsubmit('lienhe')">Liên Hệ</a></li>
		</ul>
	
</div>

	<form action="" method="post" name="trang">
	<input name="view" type="hidden" value="" />
	</form>
	<script>
		function dentrang_onsubmit(thamso)
		{
		trang.view.value=thamso
		trang.submit()
		}
	</script>
	<!-- Slide chay anh -->
  
    <div class="slider">
	
	<div>

<img src="images/banner_q_a_2.png" alt=""/>
</div> 
<div>
        <img src="images/Capture.PNG" alt=""/>
      </div>
	<!-- <div>
        <img src="images/khung.jpg" alt=""/>
      </div> -->
          
    
      
     
    </div>



    
 