<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>

<%
    String ProductID_d =request.getParameter("id");
    sql = "DELETE FROM CART WHERE CART.ProductID='" + ProductID_d+ "' and CART.ClientID='" + session.getAttribute("id")+"' LIMIT 1;";
    int no=con.createStatement().executeUpdate(sql);
    if (no > 0){
        out.print("<script>alert('刪除成功'); window.location= 'cart.jsp' </script>");
    }
    con.close();
%>