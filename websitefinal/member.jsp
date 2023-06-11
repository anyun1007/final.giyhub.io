<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>會員資料查詢</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/member.css">
    
</head>
<body>
    <% 
    if(session.getAttribute("id")== null ){
        out.print("<script>alert('您還未登入，請先登入');window.location='login.jsp'</script>");
    }
    %>
    <header>
        
        <%@include file="navbar.jsp" %>
      
      </header>

      <div class="row">
        <div class="side1"></div>

        <main>
            <section>
                <div class="member">  
                    <div class="title" >
                        <a href="member.jsp">資料查詢</a>&nbsp;
                        <a href="record.jsp">消費紀錄</a>
                    </div>
                    <div>
                        <h1>會員資料</h1>
                        <hr style="border-width: 1px;border-color: #E0E0E0;">
                        <form action="member_update.jsp">
                            姓名 Name&nbsp;<input type="text" name="update_name" id="name" value="<%=session.getAttribute("name") %>" size="90" > <br>
                            電話 Phone&nbsp;<input type="text" name="update_phone" id="phone" value="<%=session.getAttribute("phone") %>" size="90"> <br>
                            地址 Address&nbsp;<input type="text" name="update_address" id="phone" value="<%=session.getAttribute("address") %>" size="90"><br>
                            信箱 Email&nbsp;<input type="text" name="update_email" id="phone" value="<%=session.getAttribute("email") %>" size="90"><br>
                            密碼 Password&nbsp;<input type="text" name="update_password" id="phone" value="<%=session.getAttribute("password") %>" size="90"><br>
                            <button type="submit" class="btn btn-primary memberbtn" id="button">儲存</button><br><br>
                        </form>
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