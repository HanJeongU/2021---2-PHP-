<?php
    $university = $_GET["university"];
    $num   = $_GET["num"];
    $page   = $_GET["page"];

    $con = mysqli_connect("localhost", "user1", "12345", "sample");
    if($university=="건양대학교")
    $sql = "select * from mentofind where num = $num";
    elseif($university=="대전대학교")
    $sql = "select * from mentofind1 where num = $num";
    elseif($university=="대전신학대학교")
    $sql = "select * from mentofind2 where num = $num";
    elseif($university=="목원대학교")
    $sql = "select * from mentofind3 where num = $num";
    elseif($university=="배재대학교")
    $sql = "select * from mentofind4 where num = $num";
    elseif($university=="우송대학교")
    $sql = "select * from mentofind5 where num = $num";
    elseif($university=="을지대학교")
    $sql = "select * from mentofind6 where num = $num";
    elseif($university=="충남대학교")
    $sql = "select * from mentofind7 where num = $num";
    elseif($university=="침례신학대학교")
    $sql = "select * from mentofind8 where num = $num";
    elseif($university=="한국과학기술원")
    $sql = "select * from mentofind9 where num = $num";
    elseif($university=="한남대학교")
    $sql = "select * from mentofind10 where num = $num";
    elseif($university=="한밭대학교")
    $sql = "select * from mentofind11 where num = $num";
    elseif($university=="대덕대학교")
    $sql = "select * from mentofind12 where num = $num";
    elseif($university=="대전보건대학교")
    $sql = "select * from mentofind13 where num = $num";
    elseif($university=="우송정보대학교")
    $sql = "select * from mentofind14 where num = $num";
    elseif($university=="대전과학기술학교")
    $sql = "select * from mentofind15 where num = $num";
    elseif($university=="한국폴리텍IV대학교")
    $sql = "select * from mentofind16 where num = $num";
    elseif($university=="과학기술연합대학원대학교")
    $sql = "select * from mentofind17 where num = $num";
    elseif($university=="건신대학원대학교")
    $sql = "select * from mentofind18 where num = $num";
    elseif($university=="건양사이버대학교")
    $sql = "select * from mentofind19 where num = $num";
    elseif($university=="한국방송통신대학교")
    $sql = "select * from mentofind20 where num = $num";
    elseif($university=="none")
    $sql = "select * from mentofind21 where num = $num";

    $result = mysqli_query($con, $sql);
    $row = mysqli_fetch_array($result);

    $copied_name = $row["file_copied"];

	if ($copied_name)
	{
		$file_path = "./data/".$copied_name;
		unlink($file_path);
    }
    if($university=="건양대학교")
    $sql = "delete from mentofind where num = $num";
    elseif($university=="대전대학교")
    $sql = "delete from mentofind1 where num = $num";
    elseif($university=="대전신학대학교")
    $sql = "delete from mentofind2 where num = $num";
    elseif($university=="목원대학교")
    $sql = "delete from mentofind3 where num = $num";
    elseif($university=="배재대학교")
    $sql = "delete from mentofind4 where num = $num";
    elseif($university=="우송대학교")
    $sql = "delete from mentofind5 where num = $num";
    elseif($university=="을지대학교")
    $sql = "delete from mentofind6 where num = $num";
    elseif($university=="충남대학교")
    $sql = "delete from mentofind7 where num = $num";
    elseif($university=="침례신학대학교")
    $sql = "delete from mentofind8 where num = $num";
    elseif($university=="한국과학기술원")
    $sql = "delete from mentofind9 where num = $num";
    elseif($university=="한남대학교")
    $sql = "delete from mentofind10 where num = $num";
    elseif($university=="한밭대학교")
    $sql = "delete from mentofind11 where num = $num";
    elseif($university=="대덕대학교")
    $sql = "delete from mentofind12 where num = $num";
    elseif($university=="대전보건대학교")
    $sql = "delete from mentofind13 where num = $num";
    elseif($university=="우송정보대학교")
    $sql = "delete from mentofind14 where num = $num";
    elseif($university=="대전과학기술학교")
    $sql = "delete from mentofind15 where num = $num";
    elseif($university=="한국폴리텍IV대학교")
    $sql = "delete from mentofind16 where num = $num";
    elseif($university=="과학기술연합대학원대학교")
    $sql = "delete from mentofind17 where num = $num";
    elseif($university=="건신대학원대학교")
    $sql = "delete from mentofind18 where num = $num";
    elseif($university=="건양사이버대학교")
    $sql = "delete from mentofind19 where num = $num";
    elseif($university=="한국방송통신대학교")
    $sql = "delete from mentofind20 where num = $num";
    elseif($university=="none")
    $sql = "delete from mentofind21 where num = $num";
    
    
    mysqli_query($con, $sql);
    mysqli_close($con);

    echo "
	     <script>
	         location.href = 'mento_find_list.php?university=$university&page=$page';
	     </script>
	   ";
?>

