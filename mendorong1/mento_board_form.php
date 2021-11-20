<!DOCTYPE html>
<html>
<head> 
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="./css/common.css">
<link rel="stylesheet" type="text/css" href="./css/board.css">
<link rel="stylesheet" href="css/main1.css">
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
	    <form  name="board_form" method="post" action="mento_insert.php?university=<?=$university?>" enctype="multipart/form-data">
	    	 <ul id="board_form">
				<li>
					<span class="col1">이름 : </span>
					<span class="col2"><?=$username?></span>
				</li>		
	    		<li>
	    			<span class="col1">제목 : </span>
	    			<span class="col2"><input name="subject" type="text"></span>
	    		</li>	    	
	    		<li id="text_area">	
	    			<span class="col1">내용 : </span>
	    			<span class="col2">
	    				<textarea name="content"></textarea>
	    			</span>
	    		</li>
	    		<li>
			        <span class="col1"> 첨부 파일</span>
			        <span class="col2"><input type="file" name="upfile"></span>
			    </li>
	    	    </ul>
	    	<ul class="buttons">
				<li><button type="button" onclick="check_input()">완료</button></li>
				<li><button type="button" onclick="location.href='mento_find_list.php'">목록</button></li>
			</ul>
	    </form>
	</div> <!-- board_box -->
</section> 
<footer>
    <?php include "footer.php";?>
</footer>
</body>
</html>
