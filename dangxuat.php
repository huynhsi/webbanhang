<?php 
session_start(); 
unset($_SESSION['MSKH']);
unset($_SESSION['HoTenKH']);


echo "
							<script language='javascript'>
								alert('Thoát thành công');
								window.open('index.php','_self', 1);
							</script>
						";
?>