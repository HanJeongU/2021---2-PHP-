<?php
    $id   = $_POST["id"];
    $pass = $_POST["pass"];
    $name = $_POST["name"];
    $email1  = $_POST["email1"];
    $email2  = $_POST["email2"];
    $email = $email1."@".$email2;
    $univ = $_POST["univ"];
    $department = $_POST["dpt"];
    $faculty = $_POST["fac"];
    $student_num = $_POST["stu_num"];
    $phone_num = $_POST["phone_num"];
    $birth = $_POST["birth"];
    $gender = $_POST["gen"];
    $regist_day = date("Y-m-d (H:i)");  // 현재의 '년-월-일-시-분'을 저장

              
    $con = mysqli_connect("localhost", "user1", "12345", "sample");

	$sql = "insert into members(id, pass, name, email, regist_day, univ, department, faculty, student_num, phone_num, birth, gender, level, point) ";
	$sql .= "values('$id', '$pass', '$name', '$email', '$regist_day', '$univ', '$department', '$faculty', '$student_num', '$phone_num', '$birth', '$gender', 9, 0)";

	mysqli_query($con, $sql);  // $sql 에 저장된 명령 실행
    mysqli_close($con);     

    echo "
	      <script>
	          location.href = 'index.php';
	      </script>
	  ";
?>

   
