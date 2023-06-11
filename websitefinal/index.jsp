<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>final project</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href=".js/Slideshows.js">
    
</head>
<body>
  <header>
    <%@include file="navbar.jsp" %>



<section>
    <!-- Slideshow container -->
<div class="slideshow-container">

<!-- Full-width images with number and caption text -->
<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="image/camera.jpg" style="width:100%">
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="image/bag.jpg" style="width:100%">
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="image/sunglass.jpg" style="width:100%">
  <div class="text"></div>
</div>

<!-- Next and previous buttons -->
<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
<br>

<!-- The dots/circles -->
<div style="text-align:center">
<span class="dot" onclick="currentSlide(1)"></span>
<span class="dot" onclick="currentSlide(2)"></span>
<span class="dot" onclick="currentSlide(3)"></span>
</div>

<script>
  let slideIndex = 0;
    showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
    for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
      }
      slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}
      slides[slideIndex-1].style.display = "block";
      setTimeout(showSlides, 2000); // Change image every 2 seconds
      }

</script>
  </section>
  </header>
  <div class="row">
    <div class="side1">
    </div>
  
  <main>
  <section>
  
    
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
    <section>
      <%
          Integer Count = (Integer)application.getAttribute("Counter");
          if( Count ==null || Count == 0 ){
             Count = 1;
          }if(session.isNew()){
              Count+=1;
          }
          application.setAttribute("Counter", Count);
          %>
        
      <div style="color: rgb(255, 255, 255); font-size: larger;">
          Vistors：NO. <%=Count%><br><br>
          歡迎進入本網站!
      </div>
      
      </section>
     
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