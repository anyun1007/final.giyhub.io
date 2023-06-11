<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>final project</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href=".js/Slideshows.js">
    
</head>
<body>
  <header>
    
  <%@include file="navbar.jsp" %>

  </header>
  <div class="row">
    <div class="side1">
    </div>
  
  <main>
  <section>
    <div class="padding2">
        <div class="row">
          
            <%
                sql = "SELECT * FROM products WHERE `pr_type` = '服飾'";
                ResultSet ProductList_1 =  con.createStatement().executeQuery(sql);
                while(ProductList_1.next()){
            %>
            <div class="column">
              <div class="card">
                <img src="<%=ProductList_1.getString("pr_file") %>" alt="good1" style="width:100%;height:200px;">
                <div class="container2">
                  <h2 > <%=ProductList_1.getString("pr_name") %></h2>
                  <p class="title">$<%=ProductList_1.getString("pr_price") %></p>
                  <a href="<%= "clothes1.jsp?id=" + ProductList_1.getString("prID") %>" class="button2">更多資訊</a>
                </div>
              </div>
            </div>
            <%
            }
            %>
            <!-- <div class="column">
                <div class="card">
                  <img src="image/dress.jpg" alt="good2" style="width:100%;height:200px;">
                  <div class="container2">
                    <h2>手做拼接洋裝</h2>
                    <p class="title">$350</p>
                  
                    <a href="clothes2.html"><input type="button" class="button2"value="更多資訊"></a>
                  </div>
                </div>
              </div>
              <div class="column">
                <div class="card">
                  <img src="image/coat.jpg" alt="good3" style="width:100%;height:200px;">
                  <div class="container2">
                    <h2>燈心絨外套</h2>
                    <p class="title">$500</p>
                    <a href="clothes3.html"><input type="button" class="button2"value="更多資訊"></a>
                  </div>
                </div>
              </div> -->
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