<div class="grid__row">
<?php 
    $tukhoa = $_GET["q"];

    $sql = " SELECT *
    FROM hanghoa,hinhhh
    WHERE hanghoa.MSHH=hinhhh.MSHH and hanghoa.TenHH REGEXP '$tukhoa'";
    $sanpham = mysqli_query($conn,$sql);
        while($row_sanpham = mysqli_fetch_array($sanpham)){
                            
?>
             <div class="grid__column-2-4">
                                <a class="home-product-item" href="index.php?p=chitietsp&idsp=<?php echo $row_sanpham['MSHH'] ?>">
                                    <div class="home-product-item__img" 
                                        style="background-image: url(./img/uploads/<?php echo $row_sanpham['TenHinh']?>);"></div>
                                    <h4 class="home-product-item__name"><?php echo $row_sanpham['TenHH']?></h4>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">1.200.000đ</span>
                                        <span class="home-product-item__price-current"><?php echo $row_sanpham['Gia']?></span>
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
                                        <span class="home-product-item__sold">88 đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">Who</span>
                                        <span class="home-product-item__origin-name">Nhật Bản</span>
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
                           
                            <?php 
                            }
                            ?>
                        
                        </div>


                    
                  
                           
                            