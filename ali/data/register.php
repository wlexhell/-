<?php
header("Content-Type:application/json");
@$uname=$_REQUEST["uname"];
@$upwd=$_REQUEST["upwd"];
@$phone=$_REQUEST["phone"];

require_once("./init.php");
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
 $sql="SELECT * FROM ali_user WHERE uname='$uname'";
 $result = mysqli_query($conn,$sql);
 //echo $sql;
//判断并且输出结果信息
 //echo $uname;
	$row=mysqli_fetch_all($result,MYSQLI_ASSOC);
 //var_dump($row);
 if($row==null){
	 $sql="INSERT INTO `ali_user`(`uid`, `uname`, `upwd`, `email`, `phone`, `avatar`, `user_name`, `gender`) VALUES (null,'$uname','$upwd','null','$phone',null,null,'0')";
		$result = mysqli_query($conn,$sql);
		if($result) echo '{"code":1,"msg":"注册成功"}';
		else echo '{"code":-1,"msg":"注册失败"}';
 }else{
   echo '{"code":-1,"msg":"用户名已经存在！"}';
 }