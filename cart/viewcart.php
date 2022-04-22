<style>
   .cart{width: 100%; height:auto;}
      .cart h3{background-color: #233d0a; text-align: center; padding-top: 7px; font-size: 16px; height: 30px; color: white; text-transform: uppercase;}
      .cart table{width:100%; height:auto; overflow:hidden; border-collapse: collapse; margin: 6px 0; }
      .cart tr.tieudecart{background: #b8e490; color:black; height:30px; }
      .cart tr { border:1px solid #A0A0A0;}
      .cart tr.sanphamcart {height:50px; color:black;}
      .cart tr.sanphamcart .carta a { margin-left:4px; color: #0000CD}
      .cart tr td p.xoa input {cursor:pointer; height:25px; width:60px; background-color: #F5FFFA; border: 1px solid  #b8e490;}
                  .cart tr td p.xoa input:hover {color:white; background-color: #008000;}
      .xoatoanbo {height:50px; width:100%; border:1px solid #A0A0A0; padding-top:10px; text-align:center;}
      .xoatoanbo a {width:150px; align-item:content;}
               .xoatoanbo a button {width:90px; height:30px;cursor:pointer; margin-top:5px; background-color: #F5FFFA; border:1px solid #b8e490;}
               .xoatoanbo a button:hover {color:white; background-color:#008000;}
      .xoatoanbo p {padding-top:10px; float:right; padding-right:120px;}
               .xoatoanbo p span {color:red; font-weight:bold; width:100px; }
      
      .tieptucmuahang {width:100%; height:50px; border:1px solid #A0A0A0; border-top:none;}
         .tieptucmuahang p {padding-top:5px; width:50%; float:left;}
         .tieptucmuahang a  {}
         .tieptucmuahang p.tieptucmuahangcon {}
         .tieptucmuahang p.tieptucmuahangcon a { text-align:center; background-color:#b8e490; display:block; margin-left:20px; width:130px; height:37px; color: black;}
         .tieptucmuahang p.thanhtoancon a { background-color:#b8e490; float:right; display:block; margin-right:20px; width:112px; height:37px;  color: black; }
         .tieptucmuahang p a b{display:block; margin:auto; padding:10px;}
			.tieptucmuahang p a:hover {color: white; background-color: #233d0a; }
</style>

<div class="cart">

   <h3>Giỏ hàng của bạn</h3>

<?php
 
   if(isset($_SESSION['cart']))
      $count=count($_SESSION['cart']);
   else $count=0;
      $tongtien=0;
   if($count==0)
      echo "Giỏ hàng của bạn chưa có sản phẩm nào";
   else
  {
   ?>
<table>
   <tr class="tieudecart">
      <td><b>Tên sản phẩm</b></td>
      <td><b>Giá</b></td>
      <td><b>Số lượng</b></td>
      <td><b>Thành tiền</b></td>
      <td><b>Tùy chọn</b></td></tr>
<?php

  $sql ="select * from hanghoa where MSHH in(";
       foreach($_SESSION['cart'] as $stt => $soluong)
       {
            if($soluong>0)
               $sql .= $stt.",";
       }
       if (substr($sql,-1,1)==',')
       {
            $sql = substr($sql,0,-1);
       }
       $sql .=' )order by MSHH DESC';
       $rows=mysqli_query($conn,$sql);
       while($row=mysqli_fetch_array($rows)){
?>


<form action="index.php?p=cart&action=update&idsp=<?php echo $row['MSHH']?>" method="POST" name="update">
   <tr class="sanphamcart">
      <td><p class="carta"><a href="index.php?p=chitietsp&idsp=<?php echo $row['MSHH'] ?>"><?php echo $row['TenHH']?></a></p></td>
      <td><?php echo number_format(($row['Gia']),0,",",".");?></td>
      <td><input type="text" name="sl" value="<?php echo $_SESSION['cart'][$row['MSHH']] ?>" style="width:30px;"/></td>
      <td><?php echo number_format(($row['Gia'])*$_SESSION['cart'][$row['MSHH']],0,",",".") ?></td>
      <td><p class="xoa"><input type="submit" name="huy" value="Xóa"/>
      <input type="submit" class="submit" value="cập nhập" name="submit"/>
</form>
      </p></td>
   </tr>
   <?php $tongtien+=$_SESSION['cart'][$row['MSHH']]*($row['Gia']); ?>
<?php
}
?>
</table>

<div class="xoatoanbo">
  <a href="index.php?p=cart&action=xoa"><button>Xóa toàn bộ</button></a>
  <p>Tổng cộng: <span><?php  echo number_format($tongtien,0,",",".") ?></span>VNĐ</p>
</div>
<div class="tieptucmuahang">
  <p class="tieptucmuahangcon"><a href="index.php"><b>Tiếp tục mua</b></a></p><p class="thanhtoancon"><a href="index.php?p=cart&action=check"><b>Thanh toán</b></a></p>
</div>
<?php
}
?>
</div>