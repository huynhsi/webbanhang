<?php
session_start();
    include ("lib/dbCon.php");
    if (isset($_GET["p"]) )
        $p = $_GET["p"];
    else
        $p = "";
?>
  <!--Login form-->
    <link rel="stylesheet" href="./assets/css/base.css">
    <link rel="stylesheet" href="./assets/css/index.css">
    <link rel="stylesheet" href="./assets/fonts/fontawesome-free-5.15.4-web/css/all.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">

<?php 
//kiểm tra đăng nhập
    if (isset($_POST['btn']) ){
        $ten = $_POST['ten'];
        $mk = $_POST['matkhau'];

        $qr = "
         SELECT * FROM khachhang
         WHERE HoTenKH = '$ten'
         AND Password = '$mk'
        ";
        $user = mysqli_query($conn,$qr);
        if(mysqli_num_rows($user)==1 ){
            //đăng nhập đúng
            $row = mysqli_fetch_array($user);
            $_SESSION['MSKH'] = $row['MSKH'];
            $_SESSION["HoTenKH"] = $row['HoTenKH'];
           echo "Đăng nhập thành công!";
           header("location:index.php"); // chuyển trang
        }else{ echo "
            <script language='javascript'>
            alert('Mật khẩu đăng nhập không đúng');
            window.open('dangnhap.php','_self', 1);
            </script>
            ";
        }

    }
?>
<?php 
    if (isset( $_POST['trolai'] )){
        header("location:index.php");
    }
?>

<div style="position: absolute; left: 50%; top: 50%; transform: translate(-50%, -50%); border: solid #333 1px;" class="auth-form" > 
    <form action="dangnhap.php" method="post">
                <div class="auth-form__container">
                    <div class="auth-form__header">
                        <h3><div class="auth-form__heading">Đăng nhập</div></h3>
                        <a href="">
                            <span type="submit" class="auth-form__switch-btn"><a style="text-decoration:none; color:blue"  href="dangky.php">
                            Đăng ký</a> </span>
                        </a>
                    </div>
                    <div class="auth-form__form">
                        <div class="auth-form__group">
                            <input name="ten" type="text" class="auth-form__input" placeholder="Email của bạn">
                        </div>

                        <div class="auth-form__group">
                            <input name="matkhau" type="password" class="auth-form__input" placeholder="Mật khẩu của bạn">
                        </div>

                    </div>
                    <div class="auth-form__aside">
                       <div class="auth-form__help">
                        <a href="index.php" class="auth-form__help-link auth-form__help-forget">Quên mật khẩu</a>
                        <span class="auth-form__help-seperate"></span>
                        <a href="" class="auth-form__help-link">Cần trợ giúp?</a>
                       </div>
                    </div>
                    <div class="auth-form__controls">
                       <button type="submit" name="trolai" class="btn btn--normal auth-form__controls-back">TRỞ LẠI</button> 
                    

                        <button id="btndangnhap" type="submit" name="btn" class="btn btn--primary">ĐĂNG NHẬP</button>
                    </div>
                </div>
                
                <div class="auth-form__socials">
                    <a href="" class="auth-form__socials--face btn btn--size-s btn--with-icon">
                        <i class="auth-form__socials-icon fab fa-facebook-square"></i>
                        <span class="auth-form__socials-title">
                            Kết nối với Facebook
                        </span>       
                    </a>

                    <a href="" class="auth-form__socials--gg btn btn--size-s btn--with-icon">
                        <i class="auth-form__socials-icon fab fa-google"></i>  
                        <span class="auth-form__socials-title">
                            Kết nối với Google
                        </span>           
                    </a>
                </div>
    </form>
 
</div>
