<!--Login form-->
    <link rel="stylesheet" href="./assets/css/base.css">
    <link rel="stylesheet" href="./assets/css/index.css">
    <link rel="stylesheet" href="./assets/fonts/fontawesome-free-5.15.4-web/css/all.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
<!--Register form-->
 <?php require "trangchu.php"; ?>

<?php include ("lib/dbCon.php");

if (isset($_GET["p"]) )
    $p = $_GET["p"];
else
    $p = "";

?>

<?php
    if(isset($_POST['btn']) ){
        $username = $_POST['ten'];
        $password = $_POST['matkhau'];
        $nhaplaimk = $_POST['nlmatkhau'];
        if ($password != $nhaplaimk) {
            echo "Mật khẩu xác minh không đúng!";
            header("location:dangky.php");
        }

        $sql = "INSERT INTO khachhang (HoTenKH,Password) 
                    Value ('$username','$password')";
        mysql_query($sql);
        echo "<script language='javascript'>
        alert('Đăng nhập thành công');
        window.open('admin/admin.php','_self', 1);
        </script>";
    }
?>

<div class="auth-form" style="position: absolute; left: 50%; top: 50%; transform: translate(-50%, -50%); border: solid #333 1px;">
    <form action="dangky.php" method="post">
                <div class="auth-form__container">
                    <div class="auth-form__header">
                        <h3><div class="auth-form__heading">Đăng ký</div></h3>
                        <span class="auth-form__switch-btn"><a style="text-decoration: none; color:blue" href="dangnhap.php">Đăng nhập</a> </span>
                    </div>
                    <div class="auth-form__form">
                        <div class="auth-form__group">
                            <input name="ten" type="text" class="auth-form__input" placeholder="Email của bạn">
                        </div>

                        <div class="auth-form__group">
                            <input name = "matkhau" type="password" class="auth-form__input" placeholder="Mật khẩu của bạn">
                        </div>

                        <div class="auth-form__group">
                            <input name ="nlmatkhau" type="password" class="auth-form__input" placeholder="Nhập lại mật khẩu">
                        </div>
                    </div>
                    <div class="auth-form__aside">
                        <p class="auth-form__policy">
                            Bằng việc đăng ký bạn đã đồng ý với F8-Shop về
                            <a href="" class="auth-form__policy-link">Điều khoản dịch vụ</a> &
                            <a href="" class="auth-form__policy-link">Chính sách bảo mật</a>
                        </p>
                    </div>
                    <div class="auth-form__controls">
                        <button class="btn btn--normal auth-form__controls-back" name="trolai">TRỞ LẠI</button>
                        <button  class="btn btn--primary" name="btn">ĐĂNG KÝ</button>
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