<?php
session_start();
    include ('../lib/dbCon.php');
    
?>
<link rel="stylesheet" href="../assets/css/index.css">
<link rel="stylesheet" href="../assets/css/base.css">
<style>
    .tieudeh1{text-align:center;color:white;font-size:4.2rem;}
    .logout{color:white;text-decoration:none;font-size:1.2rem;font-weight:400}  
</style>

<?php 
//kiểm tra đăng nhập
    if (isset($_POST['btn']) ){
        $ten = $_POST['ten'];
        $mk = $_POST['matkhau'];
        $qr = "
         SELECT * FROM nhanvien
         WHERE HoTenNV = '$ten'
         AND Password = '$mk'
        ";
        $user = mysqli_query($conn,$qr);
        if(mysqli_num_rows($user)==1 ){
            //đăng nhập đúng
            $row = mysqli_fetch_array($user);
            $_SESSION['MSNV'] = $row['MSNV'];
            $_SESSION["HoTenNV"] = $row['HoTenNV'];
           echo "Đăng nhập thành công!";
           header("location:admin.php"); // chuyển trang
        }else{ echo "
            <script language='javascript'>
            alert('Mật khẩu đăng nhập không đúng');
            window.open('index.php','_self', 1);
            </script>
            ";
        }

    }
?>
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
                        
						<a class="logout" href="logout.php">Logout</a></p>
		            </div>
                </div>
            </div>
        </div>
        <div class="app__container">
            <div class="grid">
                <div class="grid__row app__content">
                <div style="position: absolute; left: 50%; top: 50%; transform: translate(-50%, -50%); border: solid #333 1px;" class="auth-form" > 
    <form action="index.php" method="post">
                <div class="auth-form__container">
                    <div class="auth-form__header">
                        <h3><div class="auth-form__heading">Đăng nhập trang Admin</div></h3>
                    </div>
                    <div class="auth-form__form">
                        <div class="auth-form__group">
                            <input name="ten" type="text" class="auth-form__input" placeholder="Email của bạn">
                        </div>

                        <div class="auth-form__group">
                            <input name="matkhau" type="password" class="auth-form__input" placeholder="Mật khẩu của bạn">
                        </div>

                    </div>
                    <div class="auth-form__aside"></div>
                    <div class="auth-form__controls">
                       <button type="submit" name="trolai" class="btn btn--normal auth-form__controls-back">HỦY</button> 
                    

                        <button id="btndangnhap" type="submit" name="btn" class="btn btn--primary">ĐĂNG NHẬP</button>
                    </div>
                </div>
                
                
    </form>
 
</body>
</html>