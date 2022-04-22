<base href="http://localhost:81/B1805809_HuynhVanSI/"/>

<?php session_start(); ?>

<?php
require "lib/dbCon.php";
if (isset($_GET["p"]) )
    $p = $_GET["p"];
else
    $p = "";

?>
<?php
include("lib/dbCon.php");
?>

<?php 
    if(isset($_GET['madm'])) {
        $sql = "SELECT * FROM sanpham  WHERE madm='{$_GET['madm']}'";	
        if(isset($GET['madm']))
        {
            $sql.="where madm='".$_GET['madm']."'";
        }
    }
 ?>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
    <link rel="stylesheet" href="./assets/css/base.css">
    <link rel="stylesheet" href="./assets/css/index.css">
    <link rel="stylesheet" href="./assets/fonts/fontawesome-free-5.15.4-web/css/all.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
</head>
<body>
    <div class="app">
        <header class="header">
            <div class="grid">
                <nav class="header__navbar">
                    <ul class="header__navbar-list">
                        <li class="header__navbar-item header__navbar-item--has-qr header__navbar-item--separate">
                            Chào mừng bạn đến với cửa hàng   
                        </li>
                    </ul> 
                    <ul class="header__navbar-list">
                        <li class="header__navbar-item header__navbar-item--has-notify">
                             <a href="" class="header__navbar-item-link">
                                <i class="header__navbar-icon fas fa-bell"></i>
                                 Thông báo
                            </a>
                         </li>                  
                        <?php if(!isset($_SESSION['MSKH'])) { ?>  
                            <li style="" id="noidunghien" class="header__navbar-item header__navbar-item--strong header__navbar-item--separate">
                                <a class="header__navbar-item header__navbar-item--strong" href="dangky.php">Đăng ký</a>
                            </li>  
                            <li style="" id="noidunghien" class="header__navbar-item header__navbar-item--strong">
                                <a class="header__navbar-item header__navbar-item--strong" href="dangnhap.php">Đăng nhập</a>
                            </li>
                        <?php }else { 
                                  $khachhang = $_SESSION['MSKH'];
                                  $sql = "SELECT * FROM khachhang where MSKH = '$khachhang'";
                                   $tennd = mysqli_query($conn,$sql);
                                   $row_tennd = mysqli_fetch_array($tennd);
                        ?>

                            <li id="hiennoidung" class="header__navbar-item header__navbar-user">
                                <img src="./img/user.png" 
                                alt="" class="header__navbar-user-img">
                                <span class="header__navbar-user-img-name"><?php echo $row_tennd['HoTenKH'] ?></span>
                                <ul class="header__navbar-user-menu">
                                    <li class="header__navbar-user-item header__navbar-user-item--separate">
                                        <a href="dangxuat.php">Đăng xuất</a>                                
                                    </li>
                                </ul>
                            </li> 

                            <?php    } ?>
                    </ul>
                </nav>   
                <!-- header with search -->
                <div class="header-with-search">
                    <div class="header__logo">
                       <a href="index.php" class="header__logo-link">
                           <img style="height:120px; width:160px;" class="header__logo-link" src="./img/logodt.png" alt="logo">
                       </a>
                    </div>
                <form class="header__search" action="" method="get" >
                    <div class="header__search">
                        <div class="header__search-input-wrap">
                            <input type="text" name="q" id="search" class="header__search-input" autocomplete="off" placeholder="Bạn cần tìm gì?" >
                        </div>
                        <div class="header__search-selection">
                            <span class="header__search-select-label">Trong shop</span>
                            <i class="header__search-select-icon fas fa-chevron-down"></i>
                        </div>
                                <button class="header__search-btn">
                                    <i class="header__search-btn-icon fas fa-search"></i>
                                </button>
                        <!-- đưa lên thanh địa chỉ -->
                                <input name="p" type="hidden" value="timkiem">
                    </div>
                </form>
                        <!-- Cart Layout -->
                        <div class="header__cart">
                            <a href="index.php?p=cart">
                                <div class="header__cart-wrap">
                                    <i class="header__cart-icon fas fa-shopping-cart"></i>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>       
            </div>
        </header>
<style>     
        .bannerad__banner{
            width: 767px;
            height: 200px;
            margin-right: 22px;
        }
        .banner{
            display: flex;
        }
</style>
<!-- Anh dong hien thi tren banner -->
<script>
            var index = 1;
            changeImage = function changeImage(){
                var imgs = ["./img/slide/banner1.png","./img/slide/banner2.png","./img/slide/banner3.png"];
                document.getElementById('img').src = imgs[index];
                index++;
                if(index == 3){
                    index = 0;
                }
            }
            setInterval(changeImage,3000)
</script>
        <div class="app__container">   
           <div class="grid">
           <div class="banner" style="margin-top: 20px; height:200px; background-color: white;">
                    <img class="bannerad__banner" id="img" onclick="changeImage()" src="./img/slide/banner1.png" alt="banner">
                    <div class="towbanner">
                        <img src="./img/slide/adtragop.png" alt="tragop">
                        <img src="./img/slide/ad1doi1.png" alt="doitra">
                    </div>
             </div>
            <div class="grid__row app__content">
                <!-- Hiện danh mục sản phẩm bên phải -->
                 <?php require "./block/danhmuc.php";  ?> 

                <div class="grid__column-10">
                    <!-- hiện thanh chọn -->
                    <?php require "./block/thanhchon.php"; ?>
                  
                    <div class="home-product"> 
                        <!-- Page -->
                        <?php
                            switch($p){
                                case "chitietsp" : require "./page/chitietsp.php"; break;
                                case "timkiem" : require "./page/timkiem.php"; break;
                                case "hiensptheodm" : require "./page/hiensptheodm.php"; break;
                                case "hientintuc" : require "./page/hientintuc.php"; break;
                                case "chitiettin" : require "./page/chitiettin.php"; break;
                                case "cart" : require "./cart/index.php"; break;
                                 
                                default : require "./page/hiensp.php"; 
                            }
                        ?>            
                    </div>
                </div>
            </div>
               
            </div>
                <?php require "./block/footer.php"; ?>
            </div>


</body>
</html>