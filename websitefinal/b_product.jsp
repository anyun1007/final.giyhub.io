<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>final project</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/admin.css">
</head>

<body>
    <div class="container">
        <div class="header">
            <h1 id="SiteName">管理者介面</h1>
            <div class="Tools">
                
                <a href="logout.jsp">登出</a>
            </div>
        </div>
        <div class="breadcrumbs">
            <a href="b_index.jsp">管理首頁</a> > 
            <a href="b_product.jsp">產品變更</a>
        </div>
        <div class="main" id="main">
            <div class="content">
                <div class="main">
                <div class="top">
                    <h2> 選擇 產品 做變更</h2>
                    <a class="AddButton" href="b_add.jsp">新增產品</a>
                </div>
                    <%
                        sql = "SELECT * FROM `products`" ;
                        ResultSet ProductList=  con.createStatement().executeQuery(sql);
                        while(ProductList.next()){
                    %>
                    <button type="button" class="collapsible"><%=ProductList.getString("pr_name")%></button>
                    <div class="ListContent">
                        <form method="post" action="b_update.jsp">
                            <span>產品ID</span>
                            <input type="text" name="prID" readonly = "readonly" value="<%=ProductList.getString(1)%>"><br>
                            <span>產品名稱</span>
                            <input type="text" name="pr_name" value="<%=ProductList.getString(2)%>"><br>
                            <span>檔案類別</span>
                            <input type="text" name="pr_path" value="<%=ProductList.getString(3)%>"><br>
                            <span>檔案路徑</span>
                            <input type="text" name="pr_file" value="<%=ProductList.getString(4)%>"><br>
                            <span>產品類別</span>
                            <input type="text" name="pr_type" value="<%=ProductList.getString(5)%>"><br>
                            <span>產品價格</span>
                            <input type="text" name="pr_price" value="<%=ProductList.getString(5)%>"><br>
                            <span>產品庫存</span>
                            <input type="text" name="pr_storage" value="<%=ProductList.getString(7)%>"><br>
                            <span>產品銷量</span>
                            <input type="text" name="pr_sold" value="<%=ProductList.getString(8)%>"><br>

                            <input type="submit" class="submit" name="delete" value="刪除">
                            <input type="submit" class="submit" name="edit" value="確定修改">
                        </form>
                    </div>
                    <%
                        }
                    %>
                </div>
            </div>
            <div id="footer">

            </div>
        </div>
    </div>
    <script src="JS/admin.js"></script>

</body>

</html>