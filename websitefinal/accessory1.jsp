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
    <link rel="stylesheet" href="css/goods.css">
</head>
<body>
  <header>
    <%@include file="navbar.jsp" %>
</header>
<%
  String PageID = request.getParameter("id");       
  int IntPageID=Integer.valueOf(PageID);
  sql = "SELECT * FROM products WHERE `prID` = '"+ IntPageID +"'";
  ResultSet Product =  con.createStatement().executeQuery(sql);
  while( Product.next()){
  %>

<div class="row">
    <div class="side1">
    </div>
  
  <main>
  <section>
    <div class="padding2">
      <div class="section-image">
            <img src="image/necklace.jpg" width="250" height="250">
      </div>
      <div class="title">
        <h1>字母項鍊</h1>
        <h2>$500</h2>
      </div>
      
    <h3>庫存量:10</h3>
    <h3>數量</h3>
    <div>
        <input type="button" value="-" class="btn" onclick="minus()">
        <input type="text" value="1"class="input_num" >
        <input type="button" value="+"class="btn" onclick="add()">
        </div>
        <script>
            function minus(){
                var num= Number(document.getElementsByClassName("input_num")[0].value);
                if(num>1){
                    document.getElementsByClassName("input_num")[0].value=num-1;
                }
            }
            function add(){
                var num= Number(document.getElementsByClassName("input_num")[0].value);
                if(num<100){
                    document.getElementsByClassName("input_num")[0].value=num+1;
                }
            }
        </script>
           <input type="button" class="button2"value="加購物車"></a>
    <br>
    <hr>
    </div>
    </section>
   
    <hr>
    <div class="padding2">
    <div class="person" id="評論">
        <div>
            <img src="#"width="100" >
            <h3>P***</h3>
            <p>03-10-2023</p>
          <div>
            讚讚。
          </div>
          <hr>
        </div>
    </div>
</div>
<div class="padding2">
    <div class="person" id="評論">
        <div>
            <img src="#"width="100" >
            <h3>Z*****</h3>
            <p>02-17-2023</p>
          <div>
            好看耶!
          </div>
          <hr>
        </div>
    </div>
</div>
    <div class="comment">

        <h3>
        <span>Comment</span></h3>
        
           <textarea placeholder="輸入您的評論和留言...."></textarea>
        
           <button class="btn2">留言</button>
        
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