<!DOCTYPE html>
<html>
<head> 
<meta charset="utf-8">
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
	    <ul id="board_list">
				<li>
					<span class="col1">번호</span>
					<span class="col2">제목</span>
					<span class="col3">글쓴이</span>
					<span class="col4">첨부</span>
					<span class="col5">등록일</span>
					<span class="col6">조회</span>
				</li>
<?php

	$university = $_GET["university"];
	
	if (isset($_GET["page"]))
		$page = $_GET["page"];
	else
		$page = 1;

	$con = mysqli_connect("localhost", "user1", "12345", "sample");
	if($university=="건양대학교")
	$sql = "select * from mentofind order by num desc";
	elseif($university=="대전대학교")
	$sql = "select * from mentofind1 order by num desc";
	elseif($university=="대전신학대학교")
	$sql = "select * from mentofind2 order by num desc";
	elseif($university=="목원대학교")
	$sql = "select * from mentofind3 order by num desc";
	elseif($university=="배재대학교")
	$sql = "select * from mentofind4 order by num desc";
	elseif($university=="우송대학교")
	$sql = "select * from mentofind5 order by num desc";
	elseif($university=="을지대학교")
	$sql = "select * from mentofind6 order by num desc";
	elseif($university=="충남대학교")
	$sql = "select * from mentofind7 order by num desc";
	elseif($university=="침례신학대학교")
	$sql = "select * from mentofind8 order by num desc";
	elseif($university=="한국과학기술원")
	$sql = "select * from mentofind9 order by num desc";
	elseif($university=="한남대학교")
	$sql = "select * from mentofind10 order by num desc";
	elseif($university=="한밭대학교")
	$sql = "select * from mentofind11 order by num desc";
	elseif($university=="대덕대학교")
	$sql = "select * from mentofind12 order by num desc";
	elseif($university=="대전보건대학교")
	$sql = "select * from mentofind13 order by num desc";
	elseif($university=="우송정보대학교")
	$sql = "select * from mentofind14 order by num desc";
	elseif($university=="대전과학기술학교")
	$sql = "select * from mentofind15 order by num desc";
	elseif($university=="한국폴리텍IV대학교")
	$sql = "select * from mentofind16 order by num desc";
	elseif($university=="과학기술연합대학원대학교")
	$sql = "select * from mentofind17 order by num desc";
	elseif($university=="건신대학원대학교")
	$sql = "select * from mentofind18 order by num desc";
	elseif($university=="건양사이버대학교")
	$sql = "select * from mentofind19 order by num desc";
	elseif($university=="한국방송통신대학교")
	$sql = "select * from mentofind1 order by num desc";
	elseif($university=="none")
	$sql = "select * from mentofind21 order by num desc";
	$result = mysqli_query($con, $sql);
	$total_record = mysqli_num_rows($result); // 전체 글 수

	$scale = 10;

	// 전체 페이지 수($total_page) 계산 
	if ($total_record % $scale == 0)     
		$total_page = floor($total_record/$scale);      
	else
		$total_page = floor($total_record/$scale) + 1; 
 
	// 표시할 페이지($page)에 따라 $start 계산  
	$start = ($page - 1) * $scale;      

	$number = $total_record - $start;

   for ($i=$start; $i<$start+$scale && $i < $total_record; $i++)
   {
      mysqli_data_seek($result, $i);
      // 가져올 레코드로 위치(포인터) 이동
      $row = mysqli_fetch_array($result);
      // 하나의 레코드 가져오기
	  $num         = $row["num"];
	  $id          = $row["id"];
	  $name        = $row["name"];
	  $subject     = $row["subject"];
      $regist_day  = $row["regist_day"];
      $hit         = $row["hit"];
      if ($row["file_name"])
      	$file_image = "<img src='./img/file.gif'>";
      else
      	$file_image = " ";
?>
				<li>
					<span class="col1"><?=$number?></span>
					<span class="col2"><a href="board_view.php?university=<?=$university?>&num=<?=$num?>&page=<?=$page?>"><?=$subject?></a></span>
					<span class="col3"><?=$name?></span>
					<span class="col4"><?=$file_image?></span>
					<span class="col5"><?=$regist_day?></span>
					<span class="col6"><?=$hit?></span>
				</li>	
<?php
   	   $number--;
   }
   mysqli_close($con);

?>
	    	</ul>
			<ul id="page_num"> 	
<?php
	if ($total_page>=2 && $page >= 2)	
	{
		$new_page = $page-1;
		echo "<li><a href='mento_find_list.php?university=$university&page=$new_page'>◀ 이전</a> </li>";
	}		
	else 
		echo "<li>&nbsp;</li>";

   	// 게시판 목록 하단에 페이지 링크 번호 출력
   	for ($i=1; $i<=$total_page; $i++)
   	{
		if ($page == $i)     // 현재 페이지 번호 링크 안함
		{
			echo "<li><b> $i </b></li>";
		}
		else
		{
			echo "<li><a href='mento_find_list.php?university=$university&page=$i'> $i </a><li>";
		}
   	}
   	if ($total_page>=2 && $page != $total_page)		
   	{
		$new_page = $page+1;	
		echo "<li> <a href='mento_find_list.php?university=$university&page=$new_page'>다음 ▶</a> </li>";
	}
	else 
		echo "<li>&nbsp;</li>";
?>
			</ul> <!-- page -->	    	
			<ul class="buttons">
				<li><button onclick="location.href='member_find.php'">목록</button></li>
				<li>
<?php 
    if($userid) {
?>
					<button onclick="location.href='mento_board_form.php?university=<?=$university?>'">글쓰기</button>
<?php
	} else {
?>
					<a href="javascript:alert('로그인 후 이용해 주세요!')"><button>글쓰기</button></a>
<?php
	}
?>
				</li>
			</ul>
	</div> <!-- board_box -->
</section> 
<footer>
    <?php include "footer.php";?>
</footer>
</body>
</html>
