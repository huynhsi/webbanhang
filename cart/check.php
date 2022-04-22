<?php
    $loi=0;
    foreach($_SESSION['cart'] as $stt => $soluong){
        $sql="SELECT SoLuongHang,TenHH FROM hanghoa WHERE MSHH=$stt";
        $rows=mysqli_query($conn,$sql);
        $row=mysqli_fetch_array($rows);
        $sql=$_SESSION['cart'][$stt];
        if($row['SoLuongHang']==0 or ($row['SoLuongHang'])<$sl){
            echo '<meta http-equiv="refresh" p="2;index.php?p=cart">';
            echo "sảm phẩm <font color='red'><b>". $row['TenHH']. "</b></font> đã hết hoặc hoặc không đủ hàng trong kho<br><br>";
            $loi+=1;
        }
    }
    if($loi==0)
        echo '<meta http-equiv="refresh" content="0;index.php?p=cart&action=thanhtoan">';
?>