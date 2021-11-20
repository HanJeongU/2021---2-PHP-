<?php
    session_start();
    if (isset($_SESSION["login"])) $login = $_SESSION["login"];
    else $login = "";
    if (isset($_SESSION["id"])) $id = $_SESSION["id"];
    else $id = "";
    if (isset($_SESSION["userid"])) $userid = $_SESSION["userid"];
    else $userid = "";
    if (isset($_SESSION["username"])) $username = $_SESSION["username"];
    else $username = "";
    if (isset($_SESSION["userlevel"])) $userlevel = $_SESSION["userlevel"];
    else $userlevel = "";
    if (isset($_SESSION["userpoint"])) $userpoint = $_SESSION["userpoint"];
    else $userpoint = "";

?>		
    <a href="index.php" class="logo">멘도롱대학.</a>
        <nav>
           
            <ul class="gnb">  
<?php
    if(!$userid) {
?>                                                   
                 <li><a href="member_find2.php">멘토 찾기</a></li>
                 <li><a href="member_find.php">멘티 찾기</a></li>
                 <li><a href="my-wishlist.php">위시리스트</a></li>
                 <li><a href="message_form.php">쪽지</a></li>       
                <li><a href="member_form.php">회원 가입</a> </li>
                <li> | </li>
                <li><a href="login_form.php">로그인</a></li>
                
<?php
    } else {
                $logged = $username."(".$userid.")님[Level:".$userlevel.", Point:".$userpoint."]";
?>
                <!-- <li><?=$logged?> </li> -->
                
                <li><a href="member_find2.php">멘토 찾기</a></li>                               
                <li><a href="member_find.php">멘티 찾기</a></li>
                <li><a href="my-wishlist.php">위시리스트</a></li>
                <li><a href="message_form.php">쪽지</a></li>  
                <li> | </li>
                <li><a href="member_modify_form.php">정보 수정</a></li>
                <li> | </li>
                <li><a href="logout.php">로그아웃</a> </li>
<?php
    }
?>
<?php
    if($userlevel==1) {
?>
                <li> | </li>
                <li><a href="admin.php">관리자 모드</a></li>
<?php
    }
?>
            </ul>
</nav>
        <!-- <nav>
            <ul>  
                <li><a href="index.php">HOME</a></li>
                <li><a href="message_form.php">쪽지 만들기(13장)</a></li>                                
                <li><a href="board_form.php">게시판 만들기(14장)</a></li>
                <li><a href="index.php">사이트 완성하기(15장)</a></li>
            </ul>
        </nav> -->