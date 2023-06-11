<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>

<%
  String id = request.getParameter("email");
  String psw = request.getParameter("password");

  if( id.equals ("admin") &&  psw.equals ("1234")){
   session.setAttribute("account","admin");
   out.print("<script>alert('管理員登入成功！'); window.location='b_index.jsp' </script>");
  }
  else{


 //sql="SELECT * from member where `email`='"+id+"' and password='"+psw+"'" ;
 sql = "SELECT user_idnumber,user_name,user_password,cellphone_number,address,user_email,user_type FROM user WHERE `user_email`=? AND user_password=?";
 PreparedStatement pstmt = null;
 pstmt=con.prepareStatement(sql);
 pstmt.setString(1,request.getParameter("email"));
 pstmt.setString(2,request.getParameter("password"));
 //con.createStatement().execute(sql);

 //ResultSet rs=con.createStatement().executeQuery(sql);
 ResultSet paperrs = pstmt.executeQuery();

 if(paperrs.next()){
  session.setAttribute("id",paperrs.getString("user_idnumber"));
  session.setAttribute("email",paperrs.getString("user_email"));
  session.setAttribute("name",paperrs.getString("user_name"));
  session.setAttribute("phone",paperrs.getString("cellphone_number"));
  session.setAttribute("address",paperrs.getString("address"));
  session.setAttribute("password",paperrs.getString("user_password"));

  /*
  session.setAttribute("birthday",paperrs.getString("BirthDay"));
  session.setAttribute("mail",paperrs.getString("Mail"));
  session.setAttribute("pwd",paperrs.getString("ClientPassword"));
  session.setAttribute("id",paperrs.getString("ClientID"));
  */

  out.print("<script>alert('登入成功！');window.location='index.jsp'</script>");
  
 }
 else{
  out.print("<script>alert('登入失敗，請確認帳號密碼！');window.location='login.jsp'</script>");
 }
}

%>