<!-- 
    check: kiểm tra sản phẩm trong csdl
    insert: thêm thêm đơn hàng vào csdl
    ttkh : kiểm tra thông tin thanh toán của khách hàng
    viewcard : xem thông tin sản phẩm trong giỏ hàng
 -->
<?php 
if(isset($_GET['idsp']))
    $stt=$_GET['idsp'];
else $stt=0;

if (isset($_GET["action"]) )
    $action = $_GET["action"];
else
    $action = "";

switch($action){
    //xoa
    case "xoa":
        unset ($_SESSION['cart']);
            echo "
                    <script language='javascript'>
                            alert('Bạn đã xóa thành công');
                            window.open('index.php','_self',1);
                    </script> 
                ";
    break;
    //huy
    //check
    case "check":
        include('check.php');
    break;
    //thanh toán
    case "thanhtoan":
        include('ttkh.php');
    break;
    //insert
    case "insert":
        include('insert.php');
    break;
    //add
    case "add":
        $sql="SELECT SoLuongHang from hanghoa WHERE MSHH=$stt";
        $rows=mysqli_query($conn,$sql);
        $row=mysqli_fetch_array($rows);
        if($row['SoLuongHang']==0){
            echo '<script language="javascript">
                    alert("Sản phẩm này tạm thời hết hàng mời bạn mua sản phẩm khác hoặc quay lại sau");
                    history.back();
                    history.go(-1);
                  </script>';
        }elseif(@$_POST['soluongmua']==0){
            $_SESSION['cart'][$stt]=1;
            echo '<script language="javascript">
                    alert("Sản phẩm đã được thêm vào giỏ hàng của bạn");
                    history.back();
                    history.go(-1);
                  </script>';
        }else{
            $_SESSION['cart'][$stt]=$_POST['soluongmua'];
            echo '<script language="javascript">
                    alert("Sản phẩm đã được thêm vào giỏ hàng của bạn");
                    history.back();
                    history.go(-1);
                  </script>';
        }
    break;
    //addcard
    case "addcart":
        //foreach($_POST['idsp'] as $idsp)
        $sql="SELECT SoLuongHang from hanghoa WHERE idsp=$stt";
        $rows=mysqli_query($conn,$sql);
        $row=mysqli_fetch_array($rows);
        if($row['SoLuongHang']==0){
            echo '<script language="javascript">
                    alert("Sản phẩm này tạm thời hết hàng mời bạn mua sản phẩm khác hoặc quay lại sau");
                    history.back();
                    history.go(-2);
                </script>';
        }elseif($row['SoLuongHang']<$_SESSION['cart'][$stt]){
            echo '<script language="javascript">
                    alert("Số lượng bạn đặt mua lớn hơn số hàng còn lại trong kho");
                    history.back();
                    history.go(-2);
                </script>';
        }else{
            $sl=$_POST['sl'];
            $_SESSION['cart'][$stt]=$sl;
            echo '<script language="javascript">
                    alert("Sản phẩm được thêm vào giỏ hàng của bạn");
                    history.back();
                    history.go(-2);
                </script>';
        }
    break;
    //update
    case "update":
        if(isset($_POST['huy']))
            $sl=0;
        else
            $sl=$_POST['sl'];
        
        if($sl==0)
            unset($_SESSION['cart'][$stt]);
        else
            $_SESSION['cart'][$stt]=$sl;
            echo '<script language="javascript">
                    alert ("Cập nhật thành công");
                    window.location.href="index.php?p=cart";
                  </script>';
    break;
    //viewcart
    default:
        include('viewcart.php');
    break;
}

?>
