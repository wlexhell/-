<?php
header("Content-Type:application/json");
@$uname=$_REQUEST["uname"];
@$upwd=$_REQUEST["upwd"];
require("./init.php");
$uPattern = '/[a-zA-Z0-9]{3,12}/';
$pPattern = '/[a-zA-Z0-9]{3,12}/';
 if(!preg_match($uPattern,$uname)){
  echo '{"code":-2,"msg":"用户名格式不正确"}';
  exit;
  //停止php运行
 }
 if(!preg_match($pPattern,$upwd)){
  echo '{"code":-2,"msg":"密码格式不正确"}';
  exit;
  //停止php运行
 }

//6:创建SQL并且发送SQL语句
$sql = " SELECT * FROM ali_user";
$sql .=" WHERE uname='$uname'";
$sql .=" AND upwd='$upwd'";
//7:获取数据库返回结果
$result = mysqli_query($conn,$sql);
//8:判断并且输出结果信息
$row = mysqli_fetch_assoc($result);
if($row==null){
 echo '{"code":-1,"msg":"用户名或密码有误"}';
}else{
 echo '{"code":1,"msg":"登录成功"}';
}