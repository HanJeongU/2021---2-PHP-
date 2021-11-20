<?php
  session_start();
 unset($_SESSION["login"]);
  unset($_SESSION["id"]);
  unset($_SESSION["userid"]);
  unset($_SESSION["username"]);
  unset($_SESSION["userlevel"]);
  unset($_SESSION["userpoint"]);
  
  echo("
       <script>
          location.href = 'index.php';
         </script>
       ");
?>
