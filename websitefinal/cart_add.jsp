<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>

<%
    if(session.getAttribute("id")==null){
        out.print("<script>alert('你不是會員 請你離開'); window.location='login.jsp'</script>");
    }
    else{
    Object ClientID = session.getAttribute("id");
    String ProductID =request.getParameter("id");
    String Quantity = request.getParameter("Quantity");
    if( Integer.parseInt(Quantity)<=0){
        out.println("<script>alert('請輸入正確數量！');</script>");
    }else{
        sql = "INSERT CART (`ClientID`,`ProductID`, `Quantity`) VALUES('" + ClientID+ "','" + ProductID + "','" + Quantity + "')" ;
        int no=con.createStatement().executeUpdate(sql);
        if (no > 0){
            String path = "clothes1.jsp?id="+ ProductID;
            out.print("<script>alert('加入成功'); window.location= 'cart.jsp' </script>");
            //out.print("<script>window.location='shoppingcar.jsp'</script>");
        }
        con.close();
    }
    }
    
%>