<!-- css Thanh toán - thông tin khách hàng -->
<style>
	.thongtinkhachhang  {width:580px; height:auto; margin-top: 40px; }
			.thongtinkhachhang  h3 {background:rgb(97, 170, 97); text-align:center; padding-top: 7px; font-size:16px; height:30px; color:white; margin-top:-21px; text-transform:uppercase; margin-bottom:5px;}
			.thongtinkhachhang table {width:580px; height:auto; border-collapse:collapse; margin-top:5px;border:1px solid #e1e1e1;}
			.thongtinkhachhang table tr{height:40px; width:100%;  }
			.thongtinkhachhang table tr td {height:50px;}
			.thongtinkhachhang table tr td:first-child{text-transform:uppercase; } 
			.thongtinkhachhang table tr td input {width:300px; height:25px; border: 1px solid #A0A0A0;}
			.thongtinkhachhang table tr td.tieude{ padding-left:10px;width:200px;}
			.thongtinkhachhang table tr td.submit input{width:70px; cursor:pointer; background-color: #F5FFFA;border: 1px solid #b8e490;}
			.thongtinkhachhang table tr td.submit input:hover {color:white; background-color:#233d0a;}
</style>

<script language="javascript">
	function kiemtra(){
		if(a.hoten.value==""){
		alert("Bạn chưa điền tên")
		a.hoten.focus();
		return false;
	}

	if(a.dienthoai.value==""){
		alert("Bạn chưa điền SĐT<br> hãy điền số điện thoại để chúng tôi liên lạc lại với bạn")
		a.dienthoai.focus();
		return false;
	}
	if(a.diachi.value==""){
		alert("Bạn chưa điền địa chỉ")
		a.diachi.focus();
		return false;
	}

	if(a.hoten.value!="" && a.dienthoai.value!=""&&a.diachi.value!=""){
		a.submit();	
	}
}

</script>
	<div class="thongtinkhachhang">
	<h3>Thông tin thanh toán</h3>
<form action="index.php?p=cart&action=insert" method="POST" id="a" onsubmit="return kiemtra();">
	<table>
		<?php 
		if(isset($_SESSION['MSKH'])){
			$sql=mysqli_query($conn,"select * from khachhang where MSKH='".$_SESSION['MSKH']."'");
			$row=mysqli_fetch_array($sql);
		}
		?>
		<tr><td colspan="2" align="center" style="background-color:#b8e490;">Thông tin khách hàng</td></tr>
		<tr><td class="tieude">Tên khách hàng</td><td><input type="text" name="hoten" value="<?php echo $row['HoTenKH'] ?>"/></td></tr>
		<tr><td class="tieude">Địa chỉ giao hàng</td><td><input type="text" name="diachi" value="<?php echo $row['DiaChi'] ?>"/></td></tr>
		<tr><td class="tieude">Số điện thoại</td><td><input type="text" name="dienthoai" value="0<?php echo $row['SoDienThoai'] ?>"/></td></tr>
		
		
		<tr><td colspan="2" align="center" style="background-color:#b8e490;">Phương thức thanh toán</td></tr>
		<tr><td class="tieude">Phương thức: </td><td>
			<select name="phuongthuc" style="border: 1px solid #A0A0A0;">
				<option value="">Chọn phương thức thanh toán</option>
				<option value="1">Qua bưu điện</option>
				<option value="2">Qua thẻ ATM</option>
				<option value="3">Thanh toán trực tiếp</option>
				
			</select>
		</td></tr>
		<tr><td colspan="2" class="submit"><center><input type="submit" value="Đặt hàng"/></center></td></tr>
	</table>
</form>

</div>
