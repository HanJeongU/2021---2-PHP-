<!DOCTYPE html>
<html>
<head> 
<meta charset="utf-8">
<title>멘도롱대학</title>
<link rel="stylesheet" type="text/css" href="./css/common.css">
<link rel="stylesheet" type="text/css" href="./css/admin.css">
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
   	<div id="admin_box">
	    <h3 id="member_title">
	    	관리자 모드 > 회원 관리
		</h3>
	    <ul id="member_list">
				<li>
					<span class="col1">번호</span>
					<span class="col2">아이디</span>
					<span class="col3">이름</span>
					<span class="col4">레벨</span>
					<span class="col5">포인트</span>
					<span class="col6">가입일</span>
					<span class="col7">수정</span>
					<span class="col8">삭제</span>
				</li>
<?php
ini_set('display_errors', '0');
	$con = mysqli_connect("localhost", "user1", "12345", "sample");
	$sql = "select * from members order by num desc";
	$result = mysqli_query($con, $sql);
	$total_record = mysqli_num_rows($result); // 전체 회원 수

	$number = $total_record;

   while ($row = mysqli_fetch_array($result))
   {
      $num         = $row["num"];
	  $id          = $row["id"];
	  $name        = $row["name"];
	  $level       = $row["level"];
      $point       = $row["point"];
      $regist_day  = $row["regist_day"];
?>
			
		<li>
		<form method="post" action="admin_member_update.php?num=<?=$num?>">
			<span class="col1"><?=$number?></span>
			<span class="col2"><?=$id?></a></span>
			<span class="col3"><?=$name?></span>
			<span class="col4"><input type="text" name="level" value="<?=$level?>"></span>
			<span class="col5"><input type="text" name="point" value="<?=$point?>"></span>
			<span class="col6"><?=$regist_day?></span>
			<span class="col7"><button type="submit">수정</button></span>
			<span class="col8"><button type="button" onclick="location.href='admin_member_delete.php?num=<?=$num?>'">삭제</button></span>
		</form>
		</li>	
			
<?php
   	   $number--;
		  $university = $_GET["university"];
   }
?><div id="board_box">
<h3 id="board_title">
		대학교 선택
</h3>
<form name="get1" method="get" action="admin.php">
<select name="university">
<option value="none">=== 대학교를 선택하시오. ===</option>
<option value="건양대학교">건양대학교</option>
<option value="대전대학교">대전대학교</option>
<option value="대전신학대학교">대전신학대학교</option>
<option value="목원대학교">목원대학교</option>
<option value="배재대학교">배재대학교</option>
<option value="우송대학교">우송대학교</option>
<option value="을지대학교">을지대학교</option>
<option value="충남대학교">충남대학교</option>
<option value="침례신학대학교">침례신학대학교</option>
<option value="한국과학기술원">한국과학기술원</option>
<option value="한남대학교">한남대학교</option>
<option value="한밭대학교">한밭대학교</option>
<option value="대덕대학교">대덕대학교</option>
<option value="대전보건대학교">대전보건대학교</option>
<option value="우송정보대학교">우송정보대학교</option>
<option value="대전과학기술학교">대전과학기술학교</option>
<option value="한국폴리텍IV대학교">한국폴리텍IV대학교</option>
<option value="과학기술연합대학원대학교">과학기술연합대학원대학교</option>
<option value="건신대학원대학교">건신대학원대학교</option>
<option value="건양사이버대학교">건양사이버대학교</option>
<option value="한국방송통신대학교">한국방송통신대학교</option>
</select>
<input type = "submit" value = "완료" ></input>
</form>
</div>
	    </ul>
	    <h3 id="member_title">
	    	관리자 모드 > 게시판 관리
		</h3>
	    <ul id="board_list">
		<li class="title">
			<span class="col1">선택</span>
			<span class="col2">번호</span>
			<span class="col3">이름</span>
			<span class="col4">제목</span>
			<span class="col5">첨부파일명</span>
			<span class="col6">작성일</span>
		</li>
		<form method="post" action="admin_board_delete.php?university=<?=$university?>">
			
<?php
ini_set('display_errors', '0');
$university = $_GET["university"];

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

else
$sql = "select * from mentofind order by num desc";

	$result = mysqli_query($con, $sql);
	$total_record = mysqli_num_rows($result); // 전체 글의 수

	$number = $total_record;

   while ($row = mysqli_fetch_array($result))
   {
      $num         = $row["num"];
	  $name        = $row["name"];
	  $subject     = $row["subject"];
	  $file_name   = $row["file_name"];
      $regist_day  = $row["regist_day"];
      $regist_day  = substr($regist_day, 0, 10)
?>
		<li>
			<span class="col1"><input type="checkbox" name="item[]" value="<?=$num?>"></span>
			<span class="col2"><?=$number?></span>
			<span class="col3"><?=$name?></span>
			<span class="col4"><?=$subject?></span>
			<span class="col5"><?=$file_name?></span>
			<span class="col6"><?=$regist_day?></span>
		</li>	
<?php
   	   $number--;
   }
   mysqli_close($con);
?>
				<button type="submit">선택된 글 삭제</button>
			</form>
	    </ul>
	</div> <!-- admin_box -->
</section> 
<footer>
    <?php include "footer.php";?>
</footer>
</body>
</html>
