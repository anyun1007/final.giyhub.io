<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>final project</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="refresh" content="5; url=b_product.jsp">  
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
           <a href="b_index.jsp">管理首頁</a>
        </div>
        <div class="main" id="main">
            <div class="content">
                <div class="main">
                    <%
                        String ProductID=request.getParameter("prID");
                        String ProductName=request.getParameter("pr_name");
                        String Path=request.getParameter("pr_path");
                        String File=request.getParameter("pr_file");
                        String Type=request.getParameter("pr_type");
                        String Price=request.getParameter("pr_price");
                        String Storage=request.getParameter("pr_storage");
                        String Sold=request.getParameter("pr_sold");
                       
                        if (request.getParameter("delete")!=null){
                            sql = "DELETE FROM `products` WHERE `prID` = '" + ProductID + "';";
                            int no=con.createStatement().executeUpdate(sql);
                            if (no > 0){
                            out.println("<h1> 刪除成功!五秒後跳回產品管理介面</h1>");
                            }
                        }else if(request.getParameter("edit")!=null){
                            sql = "UPDATE products SET `pr_name` = '" + ProductName + "',`pr_type` = '" + Type + "',`pr_price` = '" + Price + "' ,`pr_storage` = '" + Storage + "',`pr_sold` = '" + Sold + "' WHERE `prID` = '" + ProductID+ "';";
                            int no=con.createStatement().executeUpdate(sql);
                            if (no > 0){
                                out.println("<h1> 更改成功!五秒後跳回產品管理介面</h1>");
                            }
                        }else if(request.getParameter("add")!=null){
                            /*
                            sql = "INSERT INTO products(prID,pr_name,pr_type,pr_price) VALUES('" + ProductID+ "','" + ProductName + "','" + Type + "','" + Price + "')";
                            out.println(sql);
                            int no=con.createStatement().executeUpdate(sql);
                            if (no > 0){
                                out.println("<h1> 新增成功!五秒後跳回產品管理介面</h1>");
                            }
                            */
                            sql = "INSERT INTO products(prID,pr_name, pr_path, pr_file, pr_type, pr_price, pr_storage, pr_sold) VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
                            PreparedStatement pstmt2 = con.prepareStatement(sql);
                            pstmt2.setString(1, ProductID);
                            pstmt2.setString(2, ProductName);
                            pstmt2.setString(3, Path);
                            pstmt2.setString(4, File);
                            pstmt2.setString(5, Type);
                            pstmt2.setString(6, Price);
                            pstmt2.setString(7, Storage);
                            pstmt2.setString(8, Sold);

                            int no2 = pstmt2.executeUpdate();
                            if (no2 > 0){
                                out.println("<h1> 新增成功!五秒後跳回產品管理介面</h1>");
                            }
                        }
                        con.close(); 
                    
                    %>
                </div>
            </div>
            <div id="footer">

            </div>
        </div>
    </div>
    <script src="js/admin.js"></script>

</body>

</html>