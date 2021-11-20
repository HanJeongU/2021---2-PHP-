<!DOCTYPE html>
<html>
<head> 
<meta charset="utf-8">
<title>멘도롱대학</title>
<link rel="stylesheet" type="text/css" href="./css/common.css">
<link rel="stylesheet" type="text/css" href="./css/board.css">
<link rel="stylesheet" href="css/main1.css">
<script>
  function check_input() {
      if (!document.board_form.subject.value)
      {
          alert("제목을 입력하세요!");
          document.board_form.subject.focus();
          return;
      }
      if (!document.board_form.content.value)
      {
          alert("내용을 입력하세요!");    
          document.board_form.content.focus();
          return;
      }
      document.board_form.submit();
   }
</script>
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
		echo '<h3>', "$university", '</h3>';
		elseif
		($university=="대전대학교")
		echo '<h3>', "$university", '</h3>';
		elseif
		($university=="대전신학대학교")
		echo '<h3>', "$university", '</h3>';
		elseif
		($university=="목원대학교")
		echo '<h3>', "$university", '</h3>';
		elseif
		($university=="배재대학교")
		echo '<h3>', "$university", '</h3>';
		elseif
		($university=="우송대학교")
		echo '<h3>', "$university", '</h3>';
		elseif
		($university=="을지대학교")
		echo '<h3>', "$university", '</h3>';
		elseif
		($university=="충남대학교")
		echo '<h3>', "$university", '</h3>';
		elseif
		($university=="침례신학대학교")
		echo '<h3>', "$university", '</h3>';
		elseif
		($university=="한국과학기술원")
		echo '<h3>', "$university", '</h3>';
		elseif
		($university=="한남대학교")
		echo '<h3>', "$university", '</h3>';
		elseif
		($university=="한밭대학교")
		echo '<h3>', "$university", '</h3>';
		elseif
		($university=="한밭대학교")
		echo '<h3>', "$university", '</h3>';
		elseif
		($university=="대덕대학교")
		echo '<h3>', "$university", '</h3>';
		elseif
		($university=="대전보건대학교")
		echo '<h3>', "$university", '</h3>';
		elseif
		($university=="우송정보대학교")
		echo '<h3>', "$university", '</h3>';
		elseif
		($university=="대전과학기술학교")
		echo '<h3>', "$university", '</h3>';
		elseif
		($university=="한국폴리텍IV대학교")
		echo '<h3>', "$university", '</h3>';
		elseif
		($university=="과학기술연합대학원대학교")
		echo '<h3>', "$university", '</h3>';
		elseif
		($university=="건신대학원대학교")
		echo '<h3>', "$university", '</h3>';
		elseif
		($university=="건양사이버대학교")
		echo '<h3>', "$university", '</h3>';
		elseif
		($university=="한국방송통신대학교")
		echo '<h3>', "$university", '</h3>';
		elseif
		($university=="none")
		echo '<h3>', "대학교를 선택하세요!", '</h3>';
		?>
<?php
    $university = $_GET["university"];
	$num  = $_GET["num"];
	$page = $_GET["page"];
	
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
	$name       = $row["name"];
	$subject    = $row["subject"];
	$content    = $row["content"];		
	$file_name  = $row["file_name"];
?>
	    <form  name="board_form" method="post" action="board_modify.php?university=<?=$university?>&num=<?=$num?>&page=<?=$page?>" enctype="multipart/form-data">
	    	 <ul id="board_form">
				<li>
					<span class="col1">이름 : </span>
					<span class="col2"><?=$name?></span>
				</li>		
	    		<li>
	    			<span class="col1">제목 : </span>
	    			<span class="col2"><input name="subject" type="text" value="<?=$subject?>"></span>
	    		</li>	    	
	    		<li id="text_area">	
	    			<span class="col1">내용 : </span>
	    			<span class="col2">
	    				<textarea name="content"><?=$content?></textarea>
	    			</span>
	    		</li>
	    		<li>
			        <span class="col1"> 첨부 파일 : </span>
			        <span class="col2"><?=$file_name?></span>
			    </li>
	    	    </ul>
	    	<ul class="buttons">
				<li><button type="button" onclick="check_input()">수정하기</button></li>
				<li><button type="button" onclick="location.href='mento_find_list.php?university=<?=$university?>&page=<?=$page?>'">목록</button></li>
			</ul>
	    </form>
	</div> <!-- board_box -->
</section> 
<footer>
    <?php include "footer.php";?>
</footer>
</body>
</html>
