
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
    <link rel="stylesheet" href="./assets/css/base.css">
    <link rel="stylesheet" href="./assets/css/index.css">
    <link rel="stylesheet" href="./assets/fonts/fontawesome-free-5.15.4-web/css/all.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
    

<div class="thanhlogo" style="margin-bottom: 4px; height:36px; background-color: white;">
        <a href="index.php?p=hiensptheodm&madm=<?php echo $row['madm']?>"><img class="logodienthoai" src="./img/logo-iphone-220x48.png" alt="logoiphone"></a>
        <a href="index.php?p=hiensptheodm&madm=<?php echo $row['madm']?>"><img class="logodienthoai" src="./img/logosamsungnew-220x48-1 (1).png" alt="logosamsung"></a>
        <a href="index.php?p=hiensptheodm&madm=<?php echo $row['madm']?>"><img class="logodienthoai" src="./img/OPPO42-b_5.jpg" alt="logooppo"></a>
        <a href="index.php?p=hiensptheodm&madm=<?php echo $row['madm']?>"><img class="logodienthoai" src="./img/logo-xiaomi-220x48-5.png" alt="logoxiaomi"></a>
        <a href="index.php?p=hiensptheodm&madm=<?php echo $row['madm']?>"><img class="logodienthoai" src="./img/Vivo42-b_50.jpg" alt="logovivo"></a>
        <a href="index.php?p=hiensptheodm&madm=<?php echo $row['madm']?>"><img class="logodienthoai" src="./img/Realme42-b_37.png" alt="logorealme"></a>
</div>
<div class="thanhad">
    <img style="max-width: 100%;" src="./img/bannerdong.gif" alt="bannerad">
</div>

<div class="grid__row">
                            <!-- Product- item -->
                            <?php 

                                    $sosp1trang = 15;
                                    if(isset($_GET["trang"])){
                                        $trang = $_GET["trang"];
                                        settype($trang,"int");
                                    }else{
                                        $trang = 1;
                                    }
                                    $from = ($trang - 1) * $sosp1trang;

                                    $sql = "
                                    SELECT *
                                    FROM hanghoa,hinhhh
                                    WHERE hanghoa.MSHH=hinhhh.MSHH
                                    ORDER BY RAND()
                                    LIMIT $from, $sosp1trang
                                ";
                                 
                                  $sanpham = mysqli_query($conn,$sql);
                                  while($row_sanpham = mysqli_fetch_array($sanpham)){
                            
                            ?>

                            <div class="grid__column-2-4">
                                <a class="home-product-item" href="index.php?p=chitietsp&idsp=<?php echo $row_sanpham['MSHH'] ?>">
                                    <div class="home-product-item__img" style="background-image: url(./img/uploads/<?php echo $row_sanpham['TenHinh']?>);"></div>
                                    <h4 class="home-product-item__name"><?php echo $row_sanpham['TenHH']?></h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current"><?php echo number_format( $row_sanpham['Gia'],0,",",".")?></span>
                                    </div>
                                    <div class="home-product-item__action">
                                        <span class="home-product-item__like home-product-item__like--like">
                                            <i class="home-product-item__like-icon-empty far fa-heart"></i>
                                            <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                        </span>
                                        <div class="home-product-item__rating">
                                            <i class="home-product-item--gold far fa-star"></i>
                                            <i class="home-product-item--gold far fa-star"></i>
                                            <i class="home-product-item--gold far fa-star"></i>
                                            <i class="home-product-item--gold far fa-star"></i>
                                            <i class="far fa-star"></i>
                                        </div>
                                        <span class="home-product-item__sold"><?php echo $row_sanpham['SoLuongHang']?> Còn lại</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Who</span>
                                        <span class="home-product-item__origin-name"></span>
                                    </div>
                                    <div class="home-product-item__favorite">
                                        <i class="fas fa-check"></i>
                                        <span>Yêu thích</span>
                                    </div>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">43%</span>
                                        <span class="home-product-item__sale-off-lable">GIẢM</span>
                                    </div>
                                </a>
                            </div>
                           
                        <?php  } ?>
                        </div>
                    <div class="pagination home-product__pagination">
                        <li class="pagination-item">
                            <a href="" class="pagination-item__link">
                                <i class="pagination-item__icon fas fa-chevron-left"></i>
                            </a>
                        </li>

                        <?php 
                        
                        $sql = " SELECT * FROM hanghoa";

                        $t = mysqli_query($conn,$sql);
                        $tongsp = mysqli_num_rows($t);
                        $tongsotrang = ceil($tongsp/$sosp1trang);
                        for ($i=1; $i<=$tongsotrang; $i++){
                        ?>

                        <li class="pagination-item pagination-item--active">
                            <a href="index.php?p=hiensp&trang=<?php echo $i ?>" class="pagination-item__link"><?php echo $i ?></a>
                        </li>

                        <?php } ?>

                        <li class="pagination-item">
                            <a href="" class="pagination-item__link">
                                <i class="pagination-item__icon fas fa-chevron-right"></i>
                            </a>
                        </li>
                    </div>