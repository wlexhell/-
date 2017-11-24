<?php
//2:设置响应头格式
header("Content-Type:application/json;charset=utf-8");
//3:获取数据库连接
$conn = mysqli_connect("127.0.0.1","root","","ali",3306);
//4:设置编码格式
mysqli_query($conn,"SET NAMES UTF8");
?>