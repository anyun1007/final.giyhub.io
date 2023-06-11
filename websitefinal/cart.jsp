<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>購物車</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/cart.css">    
</head>
<body>
    <% 
    if(session.getAttribute("id") == null ){
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
            <div>
                <h1>購物車</h1>
                <hr>
                <table border="1" width="1000">
                    <tr>
                        <td>商品照片</td>
                        <td>商品名稱</td>
                        <td>單價</td>
                        <td>數量</td>
                        <td>總價</td>
                        <td>修改</td>
                    </tr>

                    <%
                    sql = "SELECT * FROM CART WHERE `ClientID` = '" + session.getAttribute("id") + "'";
                    ResultSet ProductList_1 =  con.createStatement().executeQuery(sql);
                    while(ProductList_1.next()){
                      String PR = "SELECT * FROM products WHERE `prID` = '"+  ProductList_1.getString("ProductID")+"'";
                      ResultSet PR_list =  con.createStatement().executeQuery(PR);
                      while(PR_list.next()){
                        int unit_price = Integer.valueOf(PR_list.getString("pr_price"));
                        int q = Integer.valueOf(ProductList_1.getString("Quantity"));
                        int total_money = unit_price * q;
                    %>

                    <tr>
                      <form action="cart_delete.jsp">
                        <td>
                            <img src="<%=PR_list.getString("pr_file") %>" width="200" height="250">
                        </td>
                        <td><%= PR_list.getString("pr_name") %></td>
                        <td>$<%= PR_list.getString("pr_price") %></td>
                        <td><%= ProductList_1.getString("Quantity") %></td>
                        <td>$<%= total_money%></td>
                        <td>
                          <input type="hidden" value="<%=ProductList_1.getString("ProductID") %>" name="id">
                          <input type="hidden" value="<%=ProductList_1.getString("Quantity") %>" name="quantity">
                            <input type="submit" value="取消">
                        </td>
                      </form>
                    </tr>
                    <%
                      }
                    }
                    %>
                    
                    <tr>
                        <td colspan="4"></td>
                        <td colspan="2">總計&nbsp;&nbsp;$500</td>
                    </tr>
                </table>
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