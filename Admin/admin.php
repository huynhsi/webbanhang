<?php session_start(); ?>
<?php include ('../lib/dbCon.php'); ?>
    <link rel="stylesheet" href="../assets/css/index.css">
    <link rel="stylesheet" href="../assets/css/base.css">
<style>
    .tieudeh1{text-align:center;color:white;font-size:4.2rem;}
    .h4_quanly{font-size:1.4rem;font-size:1.4rem;}
    .grid__column-2{background-color:lightgreen; max-height:222px;}
    .danhsach__column2{list-style:none;padding-left:10px;line-height:30px}
    .danhsach__column2 a{text-decoration:none;color:Green;font-size:1.4rem;padding-bottom:5px;font-size:1.6rem}
    .grid__column-10{background-color:white}
    #chitiet{height:248px;width:440px;}
    table {text-align:center; width:100%; height:auto; border-collapse:collapse;}
	tr td {border:1px solid green;}
		tr.tieude_hienthi_sp td {color:white; background: green; height:30px; font-size:18px; }
		td.img_hienthi_sp img {padding-top:5px; }
		td.img_hienthi_sp h4 {padding-bottom:5px; font-size:14px;}
    /* Trang sản phẩm */
    .logout{color:white;text-decoration:none;font-size:1.2rem;font-weight:400}
    .quanlysp{font-size:1.6rem;text-align:center}
    .thensp_a{text-decoration:none;color:green}
    .tongsp_p{text-align:right}
    .active_hienthi_sp{text-decoration:none;color:green}
    .active_xoa_sp{text-decoration:none;color:green}
</style>
</head>
<body>
    <div class="app">
        <div class="header">
            <div class="grid">
                <div class="header__navbar">
                    <div class="header__logo">
                        <a href="index.php" class="header__logo-link">
                            <img style="height:120px; width:160px;" class="header__logo-link" src="../img/logohoasen.png" alt="logo">    
                        </a>
                    </div>
                    <h1 class="tieudeh1"> QUẢN LÝ TRANG ADMIN</h1>
                    <div id="top-content">
                    <?php  
                                  $khachhang = $_SESSION['MSNV'];
                                  $sql = "SELECT * FROM nhanvien where MSNV = '$khachhang'";
                                   $tennd = mysqli_query($conn,$sql);
                                   $row_tennd = mysqli_fetch_array($tennd);
                    ?>
                        <span>Xin chao:<?php echo $row_tennd['HoTenNV'] ?> </span>
						<a class="logout" href="logout.php">Logout</a></p>
		            </div>
                </div>
            </div>
        </div>
        <div class="app__container">
            <div class="grid">
                <div class="grid__row app__content">
                    <div class="grid__column-2">
                        <h4 class="h4_quanly">QUẢN LÝ</h4>
                        <ul class="danhsach__column2">
                            <li> <a href="#">Trang chủ</a></li>
                            <li><a href="?admin=hienthisp">Quản lý sản phẩm</a></li>
                            <li><a href="">Quản lý hóa đơn</a></li>
                        </ul>
                    </div>
                    <div class="grid__column-10">

        <?php

                    if(isset($_GET['admin']))
                        switch($_GET['admin'])
                        {
                            case 'hienthisp':
                                include ("sanpham.php");
                                break;
                            case 'themsp':
                                include ("them_sp.php");
                                break;
                            case 'suasp':
                                include ("sua_sp.php");
                                break;     
                                case 'xoasp':

                                    $idsp = $_GET['idsp'];
                                
                                        $sql="DELETE from hinhhh where MSHH='$idsp'";
                                        mysqli_query($conn,$sql);
                                        
                                        $qr="DELETE from hanghoa where MSHH='$idsp'";
                                        mysqli_query($conn,$qr);

                                        echo "
                                        <script language='javascript'>
                                            alert('Xóa thành công');
                                            window.open('index.php?admin=hienthisp','_self', 1);
                                        </script>
                                    ";
                                break;
                            case 'hienthihd':
                                include ("hoadon.php");
                                break;
                            case 'chitiethoadon':
                                include ("chitiethoadon.php");
                                break;
                            case 'xulyht':
                                include ("xulyht.php");
                                break;
                            case 'xulysp':
                                include ("xulysp.php");
                                break;
                            case 'xulytt':
                                include ("xulytt.php");
                                break;
                            default:
                                include ("sanpham.php");
                                break;
                        }
                        else 
                        {
        ?>
                        <table>
                           
                                <tr class="sanphammoitheongay">
                                    <td colspan=6>Đơn hàng cần được xử lý</td>
                                </tr>
                                <tr class="tieudespmoi">
                                    <td>STT</td>
                                    <td>Họ tên</td>
                                    <td>Địa chỉ</td>
                                    <td>Điện thoại</td>
                                    <td>Ngày đặt hàng</td>
                                </tr>
                     <?php 
						$i=1;
						$sql=mysqli_query($conn,"SELECT * FROM dathang,chitietdathang,khachhang WHERE 
                                        dathang.MSKH=chitietdathang.MSHH=khachhang.MSKH");
						while($row=mysqli_fetch_array($sql)){
						
					
					?>
                                <tr>
                                    <td><?php echo $i++; ?></td>
                                    <td><?php echo $row['HoTenKH'] ?></td>
                                    <td><?php echo $row['DiaChi'] ?></td>
                                    <td><?php echo $row['SoDienThoai'] ?></td>
                                    <td><?php echo $row['NgayDH'] ?></td>
                                </tr>
                    <?php } ?>
                                <tr>
                                    <td colspan=6 align="right" style="padding-right:20px; height:30px;"><a href="admin.php?admin=hienthihd">Chi tiết</a></td>
                                </tr>
                            </table>
                    </div>
                </div>
            </div>
             <!-- <div class="footer">
                <div class="grid">
                    
                </div> -->
            </div>
        </div>

    </div>
<?php   } ?>
</body>
</html>