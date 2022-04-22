
<?php
  $idsp = $_GET['idsp'];
?>

 <div class="content__detail">
 <?php 
     $sql = "
     SELECT *
     FROM hanghoa,hinhhh
     WHERE hanghoa.MSHH=hinhhh.MSHH AND hinhhh.MSHH = $idsp
     ";
    $chitiet = mysqli_query($conn,$sql);
    while($row_chitiet = mysqli_fetch_array($chitiet)){
?>
                    <div class="hinhvathongtin">
                        <img style="width:300px; height: 300px;" src="./img/uploads/<?php echo $row_chitiet['TenHinh']?>" alt="hinhhh">
                        <div class="thongtinanh">
                           <h1><?php echo $row_chitiet['TenHH'] ?> </h1> <br>
                           <h3>Số lượn còn lại <?php echo $row_chitiet['SoLuongHang'] ?> </h3> <br>
                           <h3>Giá: <font color="red"><?php echo number_format(($row_chitiet['Gia']),0,",",".") ?> </h3> <br>
                           <form action="index.php?p=cart&action=add&idsp=<?php echo $row_chitiet['MSHH'] ?>" method="post">
                                <div><font color="blue"> Số lượng mua :<input style= "width: 45px;" type="number" min="1" max="
                                    <?php echo $row_chitiet['SoLuongHang'] ?>" name="soluongmua" size="1" value="1" />
                                </div>
                                <?php 
                                    $sl = $row_chitiet['SoLuongHang'];
									if($sl<=0)
										echo "<a href='chitietsp.php?content=hethang'><button>Thêm vào giỏ</button></a>";
									else { 
								?>
								<a href="index.php?p=cart&action=add&idsp=<?php echo $row_chitiet['MSHH'] ?>" style="text-decoration:none;">
                                    <button type="submit" name="chovaogio" class="btn btn--primary">Thêm vào giỏ</button>
                                </a>
								<?php } ?>
                                
                           </form>
                        </div>
                    </div>
                    <div class="cauhinhsanpham">
                        <?php echo $row_chitiet['MoTaHH'] ?>              
                    </div>
        <?php } ?>
                </div>