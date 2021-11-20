<!DOCTYPE html>
<html>
<style>
    label { width: 100%; padding: 10px 20px; margin: 5px 0; box-sizing: border-box; }
    input { width: 100%; padding: 10px 20px; margin: 5px 0; box-sizing: border-box; }
    select {width: 100%; padding: 10px;border: solid 1px black; border-radius: 5px; background-color: #FFFFE0;}
</style>
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
	    <h3 id="board_title">
	    		대학교 선택
		</h3>
    <form name="get1" method="get" action="mencategory.php">
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
	</div> <!-- board_box -->
</section> 
<footer>
    <?php include "footer.php";?>
</footer>
</body>
</html>

