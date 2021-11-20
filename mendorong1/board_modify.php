<?php
    $university = $_GET["university"];
    $num = $_GET["num"];
    $page = $_GET["page"];

    $subject = $_POST["subject"];
    $content = $_POST["content"];
          
    $con = mysqli_connect("localhost", "user1", "12345", "sample");
    if($university=="건양대학교")
	$sql = "update mentofind set subject='$subject', content='$content' ";
	elseif($university=="대전대학교")
	$sql = "update mentofind1 set subject='$subject', content='$content' ";
	elseif($university=="대전신학대학교")
	$sql = "update mentofind2 set subject='$subject', content='$content' ";
	elseif($university=="목원대학교")
	$sql = "update mentofind3 set subject='$subject', content='$content' ";
	elseif($university=="배재대학교")
	$sql = "update mentofind4 set subject='$subject', content='$content' ";
	elseif($university=="우송대학교")
	$sql = "update mentofind5 set subject='$subject', content='$content' ";
	elseif($university=="을지대학교")
	$sql = "update mentofind6 set subject='$subject', content='$content' ";
	elseif($university=="충남대학교")
	$sql = "update mentofind7 set subject='$subject', content='$content' ";
	elseif($university=="침례신학대학교")
	$sql = "update mentofind8 set subject='$subject', content='$content' ";
	elseif($university=="한국과학기술원")
	$sql = "update mentofind9 set subject='$subject', content='$content' ";
	elseif($university=="한남대학교")
	$sql = "update mentofind10 set subject='$subject', content='$content' ";
	elseif($university=="한밭대학교")
	$sql = "update mentofind11 set subject='$subject', content='$content' ";
	elseif($university=="대덕대학교")
	$sql = "update mentofind12 set subject='$subject', content='$content' ";
	elseif($university=="대전보건대학교")
	$sql = "update mentofind13 set subject='$subject', content='$content' ";
	elseif($university=="우송정보대학교")
	$sql = "update mentofind14 set subject='$subject', content='$content' ";
	elseif($university=="대전과학기술학교")
	$sql = "update mentofind15 set subject='$subject', content='$content' ";
	elseif($university=="한국폴리텍IV대학교")
	$sql = "update mentofind16 set subject='$subject', content='$content' ";
	elseif($university=="과학기술연합대학원대학교")
	$sql = "update mentofind17 set subject='$subject', content='$content' ";
	elseif($university=="건신대학원대학교")
	$sql = "update mentofind18 set subject='$subject', content='$content' ";
	elseif($university=="건양사이버대학교")
	$sql = "update mentofind19 set subject='$subject', content='$content' ";
	elseif($university=="한국방송통신대학교")
	$sql = "update mentofind20 set subject='$subject', content='$content' ";
	elseif($university=="none")
	$sql = "update mentofind21 set subject='$subject', content='$content' ";
    $sql .= " where num=$num";
    mysqli_query($con, $sql);

    mysqli_close($con);     

    echo "
	      <script>
	          location.href = 'mento_find_list.php?university=$university';
	      </script>
	  ";
?>

   
