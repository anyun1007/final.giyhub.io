<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>

<%
    String cellphone_number =request.getParameter("phone");
    String user_name = request.getParameter("name");
    String address = request.getParameter("address");
    String user_email = request.getParameter("email");
    String user_password = request.getParameter("password");
    String user_type = "user";
    
    sql = "SELECT * FROM `user`" ;
    ResultSet ProductList=  con.createStatement().executeQuery(sql);
    int lastid = 0;
    while(ProductList.next()){
        if((Integer.parseInt(ProductList.getString("user_idnumber"))-lastid) != 1){
          
          break;
        }else{
            lastid = Integer.parseInt(ProductList.getString("user_idnumber"));
        }
    }
    lastid+=1;
    String strLastID = Integer.toString(lastid);

    sql = "INSERT user (`user_idnumber`,`user_name`, `cellphone_number`, `address` ,`user_email` ,`user_password`, `user_type` ) VALUES('" + lastid + "','" + user_name + "','" + cellphone_number + "','" + address + "','" + user_email + "','" + user_password + "','" + user_type + "');" ;
    int no=con.createStatement().executeUpdate(sql);
    if (no > 0){
        out.print("<script>alert('註冊成功'); window.location= 'login.jsp' </script>");
        //out.print("<script>window.location='shoppingcar.jsp'</script>");
    }
    con.close();

    
%>