<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>聯絡我們</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/contact.css">
</head>
<body>
    <header>
      <%@include file="navbar.jsp" %>
    </header>

      <div class="row">
        <div class="side1"></div>

        <main>
            <section>
                <br>
                <h3 class="caption">聯絡我們</h3>
                <hr>
                    <div>
                        <form name="contactus" method="post">
                            <input class="e" type="text" equired placeholder="姓名" name="name"><br>
                            <input class="e" type="text" required placeholder="電話" name="phone"><br>
                            <input class="e" type="text" required placeholder="電子信箱" name="email"><br>
                            <input class="e" type="text" required placeholder="主旨" name="subject"><br>
                            <textarea class="e" id="exampleFormControlTextarea1" cols="100" rows="10" required placeholder="有什麼想對我們說的" name="content"></textarea>
                            <br><span>&nbsp;</span>
                            <button type="submit">送出</button>
                        </form>
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