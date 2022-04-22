<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Thêm Sản Phẩm</title>
<link rel="stylesheet" href="css/them_sanpham.css" />
</head>

<body>
<?php
	include '../lib/dbCon.php';

	if(isset($_POST['submit']))
	{
		$ten_sanpham=$_POST['tensp'];
		$gia=$_POST['gia'];
		
		$chitiet=$_POST['chitiet'];
		$soluong=$_POST['soluong'];
		
	//	$hinhanh=$_POST['hinhanh'];
		$upload_image="../img/uploads/";
		$file_tmp= isset($_FILES['hinhanh']['tmp_name']) ?$_FILES['hinhanh']['tmp_name'] :"";
		$file_name=isset($_FILES['hinhanh']['name']) ?$_FILES['hinhanh']['name'] :"";
		$file_type=isset($_FILES['hinhanh']['type']) ?$_FILES['hinhanh']['type'] :"";
		$file_size=isset($_FILES['hinhanh']['size']) ?$_FILES['hinhanh']['size'] :"";
		$file_error=isset($_FILES['hinhanh']['error']) ?$_FILES['hinhanh']['error'] :"";
		//Lay gio cua he thong
		$dmyhis= date("Y").date("m").date("d").date("H").date("i").date("s");
		//Lay ngay cua he thong
		$ngay=date("Y").":".date("m").":".date("d").":".date("H").":".date("i").":".date("s");
		
		$file__name__=$dmyhis.$file_name;
		move_uploaded_file($file_tmp,$upload_image.$file__name__);//hàm kiểm tra file uppload có hợp lệ không
		
		$insert="INSERT INTO hanghoa VALUES('', '$ten_sanpham','$chitiet', '$gia','$soluong','$ngay')";
		$query=mysqli_query($conn,$insert);
		if($query) {
			echo "<p align = center>Thêm sản phẩm thành công!</p>";
			echo '<meta http-equiv="refresh" content="1;url=them_sp.php">';
		}
			else { echo "Thất bại";
			}
		$sql = "SELECT * FROM hanghoa";
		$mshh = mysqli_query($conn,$sql);
		$dem = mysqli_num_rows($mshh);
		$dem = $dem+1;
		
		

		$inserts = "INSERT INTO hinhhh VALUES ('','$file_name','$dem')";
		$qr = mysqli_query($conn,$inserts);
		if($qr) {
			echo "<p align = center>Thêm sản phẩm thành công!</p>";
			echo '<meta http-equiv="refresh" content="1;url=them_sp.php">';
		}
			else { echo "Thất bại";
			}
}


		
?>
<form action="" method="post" enctype="multipart/form-data" name="frm" onsubmit="return kiemtra()">
	
      <table>
			<tr class="tieude_themsp">
				<td colspan=2>Thêm Sản Phẩm </td>
			</tr>
    		<tr>
            	<td>Tên SP</td><td><input type="text" name="tensp"/></td>
            </tr>
            <tr>
            	<td>Hình ảnh</td><td><input type="file" name="hinhanh"/></td>
            </tr> 
			 
            <tr>
            	<td>Chi tiết</td><td><textarea name="chitiet" id="chitiet"></textarea></td>
            </tr>
			<tr>
            	<td>Số lượng</td><td><input type="text" name="soluong" size="5"/></td>
            </tr>
            <tr>
            	<td>Giá</td><td><input type="text" name="gia" /></td>
            </tr>
			
			
           
            <tr>
                <td colspan=2 class="input"> <input type="submit" name="submit" value="Thêm" />
                <input type="reset" name="" value="Hủy" /></td>
            </tr>
         </table>  
</form>

		<script type="text/javascript" language="javascript">
		
		CKEDITOR.replace( 'chitiet', {
			uiColor: '#d1d1d1'
		});
		</script>

</body>
</html>

		<script language="javascript">
			function  kiemtra()
			{
				
				if(frm.tensp.value=="")
				{
					alert("Bạn chưa nhập tên SP. Vui lòng kiểm tra lại");
					frm.tensp.focus();
					return false;	
				}
				
				if(frm.soluong.value=="")
				{
					alert("Bạn chưa nhập số lượng");	
					frm.soluong.focus();
					return false;
				}
				
			}
		</script>