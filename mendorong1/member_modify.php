<?php
    $id = $_GET["id"];

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

    $con = mysqli_connect("localhost", "user1", "12345", "sample");
    $sql = "update members set pass='$pass', name='$name' , email='$email', univ ='$univ', department ='$department', faculty ='$faculty', student_num ='$student_num', phone_num ='$phone_num', birth = '$birth', gender = '$gender'";
    $sql .= " where id='$id'";
    mysqli_query($con, $sql);

    mysqli_close($con);     

    echo "
	      <script>
	          location.href = 'index.php';
	      </script>
	  ";
?>

   
