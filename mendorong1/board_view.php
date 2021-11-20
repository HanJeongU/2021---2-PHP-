<!DOCTYPE html>
<html>
<head> 
<meta charset="utf-8">
<title>멘도롱대학</title>
<link rel="stylesheet" type="text/css" href="./css/common.css">
<link rel="stylesheet" type="text/css" href="./css/board.css">
<link rel="stylesheet" href="css/main1.css">
<link rel="shortcut icon" href="img/favicon.png">
</head>
<body> 
<header>
    <?php include "header.php";?>
</header>  
<section>
	<div id="main_img_bar">
        <img src="./img/main_img.png">
    </div>
   	<div id="board_box">
	   <?php
		$university = $_GET["university"];
		if($university=="건양대학교")
		echo '<h3>', "$university 멘티 찾기", '</h3>';
		elseif
		($university=="대전대학교")
		echo '<h3>', "$university 멘티 찾기", '</h3>';
		elseif
		($university=="대전신학대학교")
		echo '<h3>', "$university 멘티 찾기", '</h3>';
		elseif
		($university=="목원대학교")
		echo '<h3>', "$university 멘티 찾기", '</h3>';
		elseif
		($university=="배재대학교")
		echo '<h3>', "$university 멘티 찾기", '</h3>';
		elseif
		($university=="우송대학교")
		echo '<h3>', "$university 멘티 찾기", '</h3>';
		elseif
		($university=="을지대학교")
		echo '<h3>', "$university 멘티 찾기", '</h3>';
		elseif
		($university=="충남대학교")
		echo '<h3>', "$university 멘티 찾기", '</h3>';
		elseif
		($university=="침례신학대학교")
		echo '<h3>', "$university 멘티 찾기", '</h3>';
		elseif
		($university=="한국과학기술원")
		echo '<h3>', "$university 멘티 찾기", '</h3>';
		elseif
		($university=="한남대학교")
		echo '<h3>', "$university 멘티 찾기", '</h3>';
		elseif
		($university=="한밭대학교")
		echo '<h3>', "$university 멘티 찾기", '</h3>';
		elseif
		($university=="한밭대학교")
		echo '<h3>', "$university 멘티 찾기", '</h3>';
		elseif
		($university=="대덕대학교")
		echo '<h3>', "$university 멘티 찾기", '</h3>';
		elseif
		($university=="대전보건대학교")
		echo '<h3>', "$university 멘티 찾기", '</h3>';
		elseif
		($university=="우송정보대학교")
		echo '<h3>', "$university 멘티 찾기", '</h3>';
		elseif
		($university=="대전과학기술학교")
		echo '<h3>', "$university 멘티 찾기", '</h3>';
		elseif
		($university=="한국폴리텍IV대학교")
		echo '<h3>', "$university 멘티 찾기", '</h3>';
		elseif
		($university=="과학기술연합대학원대학교")
		echo '<h3>', "$university 멘티 찾기", '</h3>';
		elseif
		($university=="건신대학원대학교")
		echo '<h3>', "$university 멘티 찾기", '</h3>';
		elseif
		($university=="건양사이버대학교")
		echo '<h3>', "$university 멘티 찾기", '</h3>';
		elseif
		($university=="한국방송통신대학교")
		echo '<h3>', "$university 멘티 찾기", '</h3>';
		elseif
		($university=="none")
		echo '<h3>', "대학교를 선택하세요!", '</h3>';
		?>
<?php
    $university = $_GET["university"];
	$num  = $_GET["num"];
	$page  = $_GET["page"];

	$con = mysqli_connect("localhost", "user1", "12345", "sample");
	if($university=="건양대학교")
	$sql = "select * from mentofind where num=$num";
	elseif($university=="대전대학교")
	$sql = "select * from mentofind1 where num=$num";
	elseif($university=="대전신학대학교")
	$sql = "select * from mentofind2 where num=$num";
	elseif($university=="목원대학교")
	$sql = "select * from mentofind3 where num=$num";
	elseif($university=="배재대학교")
	$sql = "select * from mentofind4 where num=$num";
	elseif($university=="우송대학교")
	$sql = "select * from mentofind5 where num=$num";
	elseif($university=="을지대학교")
	$sql = "select * from mentofind6 where num=$num";
	elseif($university=="충남대학교")
	$sql = "select * from mentofind7 where num=$num";
	elseif($university=="침례신학대학교")
	$sql = "select * from mentofind8 where num=$num";
	elseif($university=="한국과학기술원")
	$sql = "select * from mentofind9 where num=$num";
	elseif($university=="한남대학교")
	$sql = "select * from mentofind10 where num=$num";
	elseif($university=="한밭대학교")
	$sql = "select * from mentofind11 where num=$num";
	elseif($university=="대덕대학교")
	$sql = "select * from mentofind12 where num=$num";
	elseif($university=="대전보건대학교")
	$sql = "select * from mentofind13 where num=$num";
	elseif($university=="우송정보대학교")
	$sql = "select * from mentofind14 where num=$num";
	elseif($university=="대전과학기술학교")
	$sql = "select * from mentofind15 where num=$num";
	elseif($university=="한국폴리텍IV대학교")
	$sql = "select * from mentofind16 where num=$num";
	elseif($university=="과학기술연합대학원대학교")
	$sql = "select * from mentofind17 where num=$num";
	elseif($university=="건신대학원대학교")
	$sql = "select * from mentofind18 where num=$num";
	elseif($university=="건양사이버대학교")
	$sql = "select * from mentofind19 where num=$num";
	elseif($university=="한국방송통신대학교")
	$sql = "select * from mentofind20 where num=$num";
	elseif($university=="none")
	$sql = "select * from mentofind21 where num=$num";

	$result = mysqli_query($con, $sql);

	$row = mysqli_fetch_array($result);
	$id      = $row["id"];
	$name      = $row["name"];
	$regist_day = $row["regist_day"];
	$subject    = $row["subject"];
	$content    = $row["content"];
	$file_name    = $row["file_name"];
	$file_type    = $row["file_type"];
	$file_copied  = $row["file_copied"];
	$hit          = $row["hit"];

	$content = str_replace(" ", "&nbsp;", $content);
	$content = str_replace("\n", "<br>", $content);

	$new_hit = $hit + 1;
	if($university=="건양대학교")
	$sql = "update mentofind set hit=$new_hit where num=$num";
	elseif($university=="대전대학교")
	$sql = "update mentofind1 set hit=$new_hit where num=$num";
	elseif($university=="대전신학대학교")
	$sql = "update mentofind2 set hit=$new_hit where num=$num";
	elseif($university=="목원대학교")
	$sql = "update mentofind3 set hit=$new_hit where num=$num";
	elseif($university=="배재대학교")
	$sql = "update mentofind4 set hit=$new_hit where num=$num";
	elseif($university=="우송대학교")
	$sql = "update mentofind5 set hit=$new_hit where num=$num";
	elseif($university=="을지대학교")
	$sql = "update mentofind6 set hit=$new_hit where num=$num";
	elseif($university=="충남대학교")
	$sql = "update mentofind7 set hit=$new_hit where num=$num";
	elseif($university=="침례신학대학교")
	$sql = "update mentofind8 set hit=$new_hit where num=$num";
	elseif($university=="한국과학기술원")
	$sql = "update mentofind9 set hit=$new_hit where num=$num";
	elseif($university=="한남대학교")
	$sql = "update mentofind10 set hit=$new_hit where num=$num";
	elseif($university=="한밭대학교")
	$sql = "update mentofind11 set hit=$new_hit where num=$num";
	elseif($university=="대덕대학교")
	$sql = "update mentofind12 set hit=$new_hit where num=$num";
	elseif($university=="대전보건대학교")
	$sql = "update mentofind13 set hit=$new_hit where num=$num";
	elseif($university=="우송정보대학교")
	$sql = "update mentofind14 set hit=$new_hit where num=$num";
	elseif($university=="대전과학기술학교")
	$sql = "update mentofind15 set hit=$new_hit where num=$num";
	elseif($university=="한국폴리텍IV대학교")
	$sql = "update mentofind16 set hit=$new_hit where num=$num";
	elseif($university=="과학기술연합대학원대학교")
	$sql = "update mentofind17 set hit=$new_hit where num=$num";
	elseif($university=="건신대학원대학교")
	$sql = "update mentofind18 set hit=$new_hit where num=$num";
	elseif($university=="건양사이버대학교")
	$sql = "update mentofind19 set hit=$new_hit where num=$num";
	elseif($university=="한국방송통신대학교")
	$sql = "update mentofind20 set hit=$new_hit where num=$num";
	elseif($university=="none")
	$sql = "update mentofind21 set hit=$new_hit where num=$num";
	   
	mysqli_query($con, $sql);
?>		
	    <ul id="view_content">
			<li>
				<span class="col1"><b>제목 :</b> <?=$subject?></span>
				<span class="col2"><?=$name?> | <?=$regist_day?></span>
			</li>
			<li>
				<?php
					if($file_name) {
						$real_name = $file_copied;
						$file_path = "./data/".$real_name;
						$file_size = filesize($file_path);

						echo "▷ 첨부파일 : $file_name ($file_size Byte) &nbsp;&nbsp;&nbsp;&nbsp;
			       		<a href='board_download.php?num=$num&real_name=$real_name&file_name=$file_name&file_type=$file_type'>[저장]</a><br><br>";
			           	}
				?>
				<?=$content?>
			</li>		
	    </ul>
	    <ul class="buttons">
				<li><button onclick="location.href='mento_find_list.php?university=<?=$university?>&page=<?=$page?>'">목록</button></li>
				<li><button onclick="location.href='board_modify_form.php?university=<?=$university?>&num=<?=$num?>&page=<?=$page?>'">수정</button></li>
				<li><button onclick="location.href='board_delete.php?university=<?=$university?>&num=<?=$num?>&page=<?=$page?>'">삭제</button></li>
				<li><button onclick="location.href='mento_board_form.php?university=<?=$university?>'">글쓰기</button></li>
		</ul>
	</div> <!-- board_box -->
</section> 
<footer>
    <?php include "footer.php";?>
</footer>
</body>
</html>
