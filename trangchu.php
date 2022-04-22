<?php 
    include ("lib/dbCon.php");
?>

<?php

function Hiensanpham(){
    $qr = "
    SELECT * FROM hanghoa
    ";
    return mysql_query($qr);
}

function Hiensp($idsp){
    $qr = "
    SELECT *
    FROM hanghoa,hinhhh
    WHERE hanghoa.MSHH=hinhhh.MSHH AND hinhhh.MSHH = $idsp
    ";
    return mysql_query($qr);
}




function Hiensanpham_sausp(){
    $qr = "
    SELECT * FROM sanpham 
    ORDER BY idsp DESC
    LIMIT 0,10
    ";
    return mysql_query($qr);
}

function Hiendanhmuc($dequi){ // khai báo nhưng chưa dùng
    $qr = "
    SELECT * FROM danhmuc
    WHERE dequi = $dequi
    ";
    return mysql_query($qr);
}
function Hiendanhmuc_theoma($madm){ // khai báo nhưng chưa dùng
    $qr = "
    SELECT * FROM sanpham
    WHERE madm = $madm
    ";
    return mysql_query($qr);
}

function Hiensanpham_phantrag($from,$sosp1trang){
    $qr = "
        SELECT *
        FROM hanghoa,hinhhh
        WHERE hanghoa.MSHH=hinhhh.MSHH
        ORDER BY RAND()
        LIMIT $from, $sosp1trang
    ";
    return mysql_query($qr);
}

function Timkiem($tukhoa){
    $qr = "
        SELECT * FROM sanpham
        WHERE tensp REGEXP '$tukhoa'
    ";
    return mysql_query($qr);
}

function sptronggio(){
    $qr = "
        SELECT * FROM chitiethoadon 
    ";
    return mysql_query($qr);
}

function slsanphamgio(){ //đếm số lượng sản phẩm trên giở nhưng chưa dùng
    $qr = "
        SELECT SUM(soluong) FROM chitiethoadon
    ";
    return mysql_query($qr);
}

function nguoidangnhap($idnd){
    $qr = "
        SELECT * FROM nguoidung 
        where idnd = $idnd
    ";
    return mysql_query($qr);

}
?>