<!DOCTYPE html>
<html>
<head> 
<meta charset="utf-8">
<title>멘도롱대학</title>
<link rel="stylesheet" href="css/main1.css">
<link rel="stylesheet" type="text/css" href="./css/common.css">
<link rel="stylesheet" type="text/css" href="./css/member.css">
<script>
   function check_input()
   {
      if (!document.member_form.id.value) {
          alert("아이디를 입력하세요!");    
          document.member_form.id.focus();
          return;
      }

      if (!document.member_form.pass.value) {
          alert("비밀번호를 입력하세요!");    
          document.member_form.pass.focus();
          return;
      }

      if (!document.member_form.pass_confirm.value) {
          alert("비밀번호확인을 입력하세요!");    
          document.member_form.pass_confirm.focus();
          return;
      }

      if (!document.member_form.name.value) {
          alert("이름을 입력하세요!");    
          document.member_form.name.focus();
          return;
      }

      if (!document.member_form.email1.value) {
          alert("이메일 주소를 입력하세요!");    
          document.member_form.email1.focus();
          return;
      }

      if (!document.member_form.email2.value) {
          alert("이메일 주소를 입력하세요!");    
          document.member_form.email2.focus();
          return;
      }

      if (document.member_form.pass.value != 
            document.member_form.pass_confirm.value) {
          alert("비밀번호가 일치하지 않습니다.\n다시 입력해 주세요!");
          document.member_form.pass.focus();
          document.member_form.pass.select();
          return;
      }

      if (!document.member_form.univ.value) {
          alert("대학교명을 입력하세요!");    
          document.member_form.univ.focus();
          return;
      }

      if (!document.member_form.fac.value) {
          alert("학부를 입력하세요!");    
          document.member_form.fac.focus();
          return;
      }

      if (!document.member_form.dpt.value) {
          alert("학과를 입력하세요!");    
          document.member_form.dpt.focus();
          return;
      }

      if (!document.member_form.birth.value) {
          alert("생년월일을 입력하세요!");    
          document.member_form.birth.focus();
          return;
      }
      if (!document.member_form.gen.value) {
          alert("성별을 입력하세요!");    
          document.member_form.gen.focus();
          return;
      }
      if (!document.member_form.stu_num.value) {
          alert("학번을 입력하세요!");    
          document.member_form.stu_num.focus();
          return;
      }

      if (!document.member_form.phone_num.value) {
          alert("연락처를 입력하세요!");    
          document.member_form.phone_num.focus();
          return;
      }

     document.member_form.submit();
   }

   function reset_form() {
      document.member_form.id.value = "";  
      document.member_form.pass.value = "";
      document.member_form.pass_confirm.value = "";
      document.member_form.name.value = "";
      document.member_form.email1.value = "";
      document.member_form.email2.value = "";
      document.member_form.univ.value = "";
      document.member_form.fac.value = "";
      document.member_form.dpt.value = "";
      document.member_form.birth.value = "";
      document.member_form.stu_num.value ="";
      document.member_form.phone_num.value = "";
      document.member_form.gen.value = "";
      document.member_form.id.focus();
      return;
   }

   function check_id() {
     window.open("member_check_id.php?id=" + document.member_form.id.value,
         "IDcheck",
          "left=700,top=300,width=350,height=200,scrollbars=no,resizable=yes");
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
        <div id="main_content">
      		<div id="join_box">
          	<form  name="member_form" class="join_submit" method="post" action="member_insert.php">
			    <h2>회원 가입</h2>
    		    	<div class="form id">
				        <div class="col1">아이디</div>
				        <div class="col2">
							<input type="text" name="id" onfocus="this.value='';" value="아이디를 입력하세요." style="color: #808080;">
				        </div>  
				        <div class="col3">
				        	<a href="#"><img src="./img/check_id.gif" 
				        		onclick="check_id()"></a>
				        </div>                 
			       	</div>
			       	<div class="clear"></div>
			       	<div class="form">
				        <div class="col1">비밀번호</div>
				        <div class="col2">
							<input type="password" name="pass">
				        </div>                 
			       	</div>
			       	<div class="clear"></div>
			       	<div class="form">
				        <div class="col1">비밀번호 확인</div>
				        <div class="col2">
							<input type="password" name="pass_confirm">
				        </div>                 
			       	</div>
                    <div class="clear"></div>
			       	<div class="form">
				        <div class="col1">이름</div>
				        <div class="col2">
							<input type="text" name="name" onfocus="this.value='';" value="이름을 입력하세요." style="color: #808080;">
				        </div>                 
			       	</div>
                    <div class="clear"></div>
			       	<div class="form email">
				        <div class="col1">이메일</div>
				        <div class="col2">
							<input type="text" name="email1">@<input type="text" name="email2">
				        </div>                 
			       	</div>
                    <div class="clear"></div>
                    <div class="form"> 
                        <div class="col1">대학교명</div>
                        <div class="col2">
                            <input type="text" name="univ" onfocus="this.value='';" value="대학교명을 입력하세요."  style="color: #808080;">
                        </div>                 
			       	</div>
                       <div class="clear"></div>
                    <div class="form"> 
                        <div class="col1">학부</div>
                        <div class="col2">
                            <input type="text" name="fac" onfocus="this.value='';" value="학부를 입력하세요."  style="color: #808080;">
                        </div>                 
			       	</div>
                    <div class="clear"></div>
                    <div class="form"> 
                        <div class="col1">학과</div>
                        <div class="col2">
                            <input type="text" name="dpt" onfocus="this.value='';" value="학과를 입력하세요."  style="color: #808080;">
                        </div>                 
			       	</div>

                       <div class="clear"></div>
                    <div class="form"> 
                        <div class="col1">생년월일</div>
                        <div class="col2">
                            <input type="text" name="birth" onfocus="this.value='';" value="생년월일을 입력하세요. ex) 210101"  style="color: #808080;">
                        </div>                 
			       	</div>
                    <div class="clear"></div>
                    <div class="form"> 
                        <div class="col1">성별</div>
                        <div class="col2">
                        <input type="text" name="gen" onfocus="this.value='';" value="성별을 입력하세요. ex) 남 또는 여"  style="color: #808080;">
                        </div>                 
			       	</div>
                       <div class="clear"></div>
                    <div class="form"> 
                        <div class="col1">학번</div>
                        <div class="col2">
                            <input type="text" name="stu_num" onfocus="this.value='';" value="학번을 입력하세요. ex) 20210101" style="color: #808080;">
                        </div>                 
			       	</div>
                    <div class="clear"></div>
                    <div class="form"> 
                        <div class="col1">연락처</div>
                        <div class="col2">
                            <input type="text" name="phone_num" onfocus="this.value='';" value="연락처를 입력하세요. ex) 010-1234-5678" style="color: #808080;">
                        </div>                 
			       	</div>
                
			       	<div class="clear"></div>
			       	<div class="bottom_line"> </div>
			       	<div class="buttons">
	                	<img style="cursor:pointer" src="./img/button_save.gif" onclick="check_input();">&nbsp;
                  		<img id="reset_button" style="cursor:pointer" src="./img/button_reset.gif"
                  			onclick="reset_form();">
	           		</div>
           	</form>
        	</div> <!-- join_box -->
        </div> <!-- main_content -->
	</section> 
	<footer>
    	<?php include "footer.php";?>
    </footer>
</body>
</html>

