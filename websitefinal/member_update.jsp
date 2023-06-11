<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%  
    
    String change_name = request.getParameter("update_name");
    String change_phone = request.getParameter("update_phone");
    String change_address = request.getParameter("update_address");
    String change_email = request.getParameter("update_email");
    String change_password = request.getParameter("update_password");
    sql="UPDATE user SET `user_name` = '"+change_name+"',`cellphone_number` = '"+change_phone+"' ,`address` = '"+change_address+"' ,`user_email` = '"+change_email+"' ,`user_password` = '"+change_password+"'  where user_idnumber ='"+session.getAttribute("id")+"';";
    int no=con.createStatement().executeUpdate(sql);
	if (no>0){ 
        out.print("<script>alert('會員資料已更新！'); window.location='index.jsp' </script>");
    }
    con.close();
%>