<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>

<%
    if(session.getAttribute("id")==null){
        out.print("<script>alert('您還未登入，請先登入'); window.location='login.jsp'</script>");
    }
%>
<%
    sql = "SELECT * FROM `messages`" ;
    ResultSet ProductList=  con.createStatement().executeQuery(sql);
    int cnt = 1;
    while(ProductList.next()){
        cnt+=1;
    }
    Object ClientID = session.getAttribute("id");
    if(ClientID!= null){
        String ProductID =request.getParameter("ProductID");
        String rating = request.getParameter("rating");
        String content = request.getParameter("content");
        sql = "INSERT messages (`messagesID`, `msg_name`, `msg_score`, `msg_content`, `prID`) VALUES('"  + cnt+ "','" + ClientID+ "','"+ rating+ "','" + content + "','" + ProductID + "')" ;
        int no=con.createStatement().executeUpdate(sql);
        if (no > 0){
            out.print("<script>window.location='index.jsp'</script>");
        }
        con.close();
    }else{
        out.print("<script>alert('您還未登入，請先登入'); window.location='login.jsp'</script>");
    }
    
%>