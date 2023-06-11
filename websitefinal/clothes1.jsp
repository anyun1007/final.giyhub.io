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

<div class="row">
    <div class="side1">
    </div>
  
  <main>
  <section>

    <%
    String PageID = request.getParameter("id");       
    int IntPageID=Integer.valueOf(PageID);
    sql = "SELECT * FROM products WHERE `prID` = '"+ IntPageID +"'";
    ResultSet Product =  con.createStatement().executeQuery(sql);
    while( Product.next()){
    %>   

    <div class="padding2">
      <div class="section-image">
            <img src="<%=Product.getString("pr_file") %>" width="250" height="250">
      </div>
      <div class="title">
        <h1><%=Product.getString("pr_name") %></h1>

        <h2>$ <%=Product.getString("pr_price") %>$</h2>

      </div>
      
       <h3>庫存量:<%=Product.getString("pr_storage")%></h3>
        

      <h3>數量</h3>
      <div>
        <form action="cart_add.jsp">
        <input type="button" value="-" class="btn" onclick="minus()">
        <input type="text" value="1"class="input_num" name="Quantity">
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
        <input type="hidden" name = "id" value="<%=Product.getString("prID") %>"> 
        <input type="submit" class="button2" value="加購物車">
        </form>
        
    <br>
    <hr>
    </div>
    </section>
   
    <hr>
      <%
      sql = "SELECT * FROM messages WHERE `prID` = '"+ PageID +"'";
      ResultSet Messages =  con.createStatement().executeQuery(sql);
      while( Messages.next()){
      %>  
    <div class="padding2">
    <div class="person" id="評論">
        <div>
            <h3><%=Messages.getString("msg_name") %></h3>
          
        <div style="color: red;">
          <%=Messages.getString("msg_score") %>
        </div>

        <div>
          <%=Messages.getString("msg_content") %>
        </div>

          <hr>
        </div>
    </div>
</div>
  <%
    }
  %>
    <form action="board_add.jsp">
    <div class="comment">

        <h3>
        <span>Comment</span></h3>
            <input type="textarea" placeholder="輸入您的評論和留言...." name="content">
            <input type="hidden" name="rating" value="★★★★">
            <input type="hidden" name="ProductID" value="<%= PageID %>">
           <input type="submit" class="btn2" value="留言">
        
        </div>
      </form>
      <%
      }
      %>
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