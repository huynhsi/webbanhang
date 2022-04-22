<?php ?>
<div class="grid__column-2">
                <nav class="category">
                     <h3 class="category__heading">Danh mục</h3>
                     
                     <ul class="category-list">
                         <li class="category-item category-item--active">
                             <a href="" class="category-item__link">Điện Thoại</a>
                         </li>
                        <?php 
                            $sql="select * from danhmuc where dequi=1";
                            $result=mysqli_query($conn,$sql);
                        ?>
                         <?php 
                                
                                // while($row=mysql_fetch_array($result))
                                // {
                         ?>
                         <li class="category-item ">
                             <a href="index.php?p=hiensptheodm&madm=" class="category-item__link"></a>
                         </li>
                         <?php
                        // } 
                         ?>
                         
                         <li class="category-item category-item--active">
                             <a href="#" class="category-item__link">Phụ Kiện</a>
                         </li>

                         <?php 
							// $sql="select * from danhmuc where dequi=2";
							// $result=mysql_query($sql);
						?>
                         

                         <?php 
                        //         $danhmuc = Hiendanhmuc(2);
                        //         while($row_danhmuc=mysqli_fetch_assoc($danhmuc))
						//    {
                            // while($row_danhmuc=mysql_fetch_array($result))
                            // {

                         ?>
                         <li class="category-item ">
                             <a href="index.php?p=hiensptheodm&madm=" class="category-item__link"></a>
                         </li>
                         <?php
                         //} 
                         ?>

                     </ul>
                    </nav>
    </div>

