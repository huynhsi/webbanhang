<?php
   $tintuc = Hientintuc($conn);
   while( $row = mysqli_fetch_array($tintuc)){
?>
<a style="text-decoration: none; color: black;" href="index.php?p=chitiettin&matt=<?php echo $row['matt']?>">
    <div class="content__detail">
    <H1><?php echo $row['tieude'] ?></H1>
    <span>Ngày đăng: <?php echo $row['ngaydangtin'] ?></span>
    <div class="hinhvathongtin">
        <img style="width:300px; height: 300px;" src="./img/tintuc/<?php echo $row['hinhanh'] ?>" alt="tinmoi">

    </div>
    <div class="cauhinhsanpham">
        <p class="grid__column-10" style= "padding-left:0; max-width: 100%;"><?php echo $row['ndngan'] ?></p>
    </div>
</div>
</a>
<?php } ?>