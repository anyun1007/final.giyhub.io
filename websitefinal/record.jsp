<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>會員訂單紀錄</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/record.css">
</head>
<body>
  <% 
    if(session.getAttribute("id")== null ){
        out.print("<script>alert('你不是會員，給我去登入！');window.location='login.jsp'</script>");
    }
    %>
    <header>
      <%@include file="navbar.jsp" %>
      </header>

      <div class="row">
        <div class="side1"></div>

        <main>
            <section>
                <div class="record">
                    <div class="title">
                        <a href="member.jsp">會員資料</a>
                    </div>
                
                    <div>
                        <h1>消費紀錄</h1>
                        <hr style="border-width: 1px;border-color: #E0E0E0;">
                    </div>
                    <div>
                      <p>
                        <img src="image/camera.jpg" width="150px" height="150px">
                        <font style="font-size: 15px; color:gray;">2023-05-21</font>&nbsp; 價格:$499<br> 
                      </p>
                    </div>
                    <div>
                      <p>
                        <img src="image/cap.jpg" width="150px" height="150px">
                        <font style="font-size: 15px; color:gray;">2023-05-21</font>&nbsp; 價格:$700 <br> 
                      </p>
                    </div>
                    <div>
                      <p>
                        <img src="image/dress.jpg" width="150px" height="150px">
                        <font style="font-size: 15px; color:gray;">2023-05-21</font>&nbsp; 價格:$350 <br>
                      </p>
                    </div>   
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