<?php
 include '../lib/dbCon.php';

		 $idsp=$_GET['idsp'];
		 $sql="SELECT * FROM hanghoa,hinhhh WHERE hanghoa.MSHH=hinhhh.MSHH AND hanghoa.MSHH=$idsp";
		  $rows=mysqli_query($conn,$sql);
		  $row=mysqli_fetch_array($rows);
 ?>
 <form action="update_sp.php?idsp=<?php echo $row['MSHH'];?>" method="post" name="frm" onsubmit="" enctype="multipart/form-data">
	 <table>
			 <tr class="tieude_themsp">
				 <td colspan=2>Sửa Sản Phẩm </td>
			 </tr>
			 <tr>
				 <td>Tên SP</td><td><input type="text" name="tensp" value="<?php echo $row['TenHH'] ?>"/></td>
			 </tr>
			 <tr>
				 <td>Hình ảnh</td><td class="img_hienthi_sp"><img src="../img/uploads/<?=$row['TenHinh']?>" width="120" height="120"/></td>
			 </tr>
			 
			 <tr>
				 <td>Chi tiết</td><td><textarea name="chitiet" id="chitiet"><?php echo $row['MoTaHH'] ?></textarea></td>
			 </tr>  
			 <tr>
				 <td>Số lượng</td><td><input type="text" name="soluong" size="5" value="<?php echo $row['SoLuongHang'] ?>"/></td>
			 </tr>
			
			 <tr>
				 <td>Giá</td><td><input type="text" name="gia" value="<?php echo $row['Gia'] ?>"/></td>
			 </tr>
			
		
			 <tr>
				 <td colspan=2 class="input"> <input type="submit" name="update" value="Update" />
				 <input type="reset" name="" value="Hủy" /></td>
			 </tr>
		 </table> 
 
 </form>
		<script type="text/javascript" language="javascript">
		
		CKEDITOR.replace( 'chitiet', {
			uiColor: '#d1d1d1'
		});
		</script>
 