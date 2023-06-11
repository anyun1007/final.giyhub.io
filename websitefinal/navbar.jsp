<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<div class="navbar">
    <a class="active" href="index.jsp"><i class="fa fa-fw fa-home"></i> Home</a>
    <div class="dropdown">
      <button class="dropbtn"><i class="fa fa-fw fa-search"></i>商品列表
      <i class="fa fa-caret-down"></i>
      </button>
      <div class="dropdown-content">
        <a href="clothesmenu.jsp">服飾</a> 
        <a href="accessorymenu.jsp ">配飾</a> 
        <a href="3cmenu.jsp">3C</a> 
        <!--p
        <a href="clothes1.html">碎花上衣</a>
        <a href="clothes2.html">手做拼接洋裝</a>
        <a href="clothes3.html">燈心絨外套</a>
        <a href="accessory1.html">字母項鍊</a>
        <a href="accessory2.html">鴨舌帽</a>
        <a href="accessory3.html">衝浪手環</a>
        <a href="camera.html">vintage 相機</a>
        <a href="bag.html">經典背包粉紅色</a>
        <a href="sunglass.html">時尚太陽鏡</a>
        -->
      </div>
    </div>

    <a href="aboutus.jsp">關於我們</a>

    <div class="nav-right"><a href="contact.jsp"><i class="fa fa-fw fa-envelope"></i> 聯絡我們</a>
    <div class="dropdown">
      <button class="dropbtn"><i class="fa fa-fw fa-search"></i>會員中心
        <i class="fa fa-caret-down"></i>
      </button>
      <div class="dropdown-content">
        <a href="member.jsp">會員資料查詢</a> 
        <a href="record.jsp">會員訂單紀錄</a> 
      </div>
    </div>
    
    <%if(session.getAttribute("id")== null ){
    %>
        <a href="login.jsp"><i class="fa fa-fw fa-user"></i> 登入</a>
    <%}else{%>
        <a href="logout.jsp"><i class="fa fa-fw fa-user"></i> 登出</a>
        <%}%>
    </div>

    <div class="cart">
      <a href="cart.jsp"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
        <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/></svg>
      </a>
    </div>
  </div>
  <form class="search-form" action="product_search.jsp" method="GET">
    <input class="search-input" type="text" name="query" placeholder="輸入搜尋關鍵字" />
    <input class="search-button" type="submit" value="搜尋" />
  </form>