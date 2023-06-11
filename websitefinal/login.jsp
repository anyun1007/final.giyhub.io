<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>會員登入</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/sign.css">
    
</head>

<body>
    <header>

      <%@include file="navbar.jsp" %>
        
       
      </header>

      <div class="row">
        <div class="side1"></div>

        <main>
          <section>
            <div class="sign">
              <p class="title">會員登入</p>  
              <hr style="width: 450px;">
              <form method="post" action="check.jsp">
                  信箱Email:<br>
                  <input type="text" name="email" id="email" size="20"><br>
                  密碼Password:<br>
                  <input type="text" name="password" id="password" size="20"><br>
                  <input type="submit" value="登入" id="button">
              </form>
              <p style="text-align: center; margin-top:10px;">Don't have an account?&nbsp;&nbsp;&nbsp;<a href="signup.jsp">Sign Up</a></p>
            </div>
          </section>

          <footer>
            <div class="footer-text">
            <div class="brand-area">
              <a class="brand-logo"><img class="brand-image" src="image/logo.jpeg" width="150" height="50"  /></a>
            </div>
            <p>234 桃園市中壢區,台灣</p> 
            <P>Call us: 0900-000-000</P>
            <p>Email: twicebutnice@gmail.com</p>
            </div>
             
            <!--p
            <div class="footer-brand">
                <h2>聯絡我們!</h2>
              <div class="footer-container" style="background-color:pink ">
                <input type="text" placeholder="Email" name="mail" required><br>
                <input type="text" placeholder="有什麼要對我們說的 ! !" name="txt" required>
              </div>
            
              <div class="footer-container">
                <input type="submit" value="submit">
              </div>
            </div>
            -->
          </footer>
          </main>
          <div class="side2"></div>

          </body>
          </html>