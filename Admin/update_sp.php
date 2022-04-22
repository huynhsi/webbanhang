<?php
 include '../lib/dbCon.php';
 //include('function/function.php');
		$tensp=$_POST['tensp'];
		$gia=$_POST['gia'];
		$chitiet=$_POST['chitiet'];
		
		//Lay gio cua he thong
		$dmyhis= date("Y").date("m").date("d").date("H").date("i").date("s");
		//Lay ngay cua he thong
		$ngay=date("Y").":".date("m").":".date("d").":".date("H").":".date("i").":".date("s");
		
		$soluong=$_POST['soluong'];
		
		$idsp=$_GET['idsp'];
	   
		// $qr=("UPDATE `quanlydathang`.`hinhhh` SET 
		// 					`TenHinh` = '$file_name' 
		// 		WHERE `hinhhh`.`MSHH` = '$idsp'	
		// 	");

		//$upd=mysql_query($qr);

		$sql = ("UPDATE `quanlydathang`.`hanghoa` SET 
							`TenHH` = '$tensp', 
							`MoTaHH` = '$chitiet', 
							`Gia` = '$gia', 
							`SoLuongHang` = '$soluong', 
							`GhiChu` = '$ngay' 
				WHERE `hanghoa`.`MSHH` = '$idsp' 
				");
	
    
	//echo $sql_update;
$update=mysqli_query($conn,$sql);
		if($update)
		{
			echo "<p align = center>Sửa sản phẩm thành công!</p>";
			echo '<meta http-equiv="refresh" content="1;url=index.php?admin=hienthisp">';
		}
			else { echo "Thất bại";
			}
	
?>
