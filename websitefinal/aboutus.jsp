<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>關於我們</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/about.css">
</head>
<body>
    <header>
    
        <%@include file="navbar.jsp" %>
      </header>

      <div class="row">
        <div class="side1"></div>

        <main>
          <section class="team">
            <img class="picture" src="image/member1.jpg"  width="200" height="225">
                <div class="introduce">
                  <div>&nbsp;姓名: 張晏瑀</div>
                  <div>&nbsp;班級: 資管二乙</div>
                  <div>&nbsp;興趣:羽球、跆拳道</div><br>
                  <div>&nbsp;負責內容:前端程式書寫</div>
                  <br>
                  <div>
                    &nbsp;專案心得:這次是第一次去做一個網頁的前端程式，是一個很好的體驗，對未來也很有幫助
                  </div>
                  <br>
                </div>
          </section>
          <section class="team">
            <img class="picture" src="image/member2.jpg"  width="200" height="225">
                <div class="introduce">
                  <div>&nbsp;姓名: 鄭安妘</div>
                  <div>&nbsp;班級: 資管二乙</div>
                  <div>&nbsp;興趣:街舞</div><br>
                  <div>&nbsp;負責內容:前端程式書寫</div>
                  <br>
                  <div>
                    &nbsp;專案心得:第一次嘗試座前端，遇到了很多問題不斷的重複嘗試，學到了如何將想法寫成一個好看的網頁，並意識到自己還有很多不足的地方，希望之後能夠完成的更好！
                  </div>
                  <br>
                </div>
          </section>
          <section class="team">
            <img class="picture" src="image/member3.jpg"  width="200" height="225">
                <div class="introduce">
                  <div>&nbsp;姓名:李俐樺</div>
                  <div>&nbsp;班級: 資管二乙</div>
                  <div>&nbsp;興趣:畫畫.看書.聽音樂</div><br>
                  <div>&nbsp;負責內容:前端程式書寫</div>
                  <br>
                  <div>
                    &nbsp;專案心得:做這個項目真的讓我在硬技能和軟技能的提升上有了全新的體驗。 激勵我繼續努力獲得最好的結果。 很感謝組裡的小伙伴們一起奮鬥，互相幫助，一起討論。 感謝老師給我們機會，讓我們有這樣的機會，我希望這對未來有用
                  </div>
                  <br>
                </div>
          </section>
          <section class="team">
            <img class="picture" src="image/member4.jpg"  width="200" height="225">
                <div class="introduce">
                  <div>&nbsp;姓名: 劉橒芹</div>
                  <div>&nbsp;班級: 資管二甲</div>
                  <div>&nbsp;興趣:舞蹈</div><br>
                  <div>&nbsp;負責內容:後端程式書寫</div>
                  <br>
                  <div>
                    &nbsp;專案心得: 這次網程我們主要負責的是後端的部分，要將網站及頁面的功能串連在一起。相對上學期的前端頁面來說我真的覺得後端比較困難……但透過這次的設計電商網站的專題活動，我也更了解在更多網站上的應用跟程式的設計！
                  </div>
                  <br>
                </div>
          </section>
          <section class="team">
            <img class="picture" src="image/member5.jpg"  width="200" height="225S">
                <div class="introduce">
                  <div>&nbsp;姓名: 楊雨涵</div>
                  <div>&nbsp;班級: 資管二甲</div>
                  <div>&nbsp;興趣:舞蹈 </div><br>
                  <div>&nbsp;負責內容:後端程式書寫</div>
                  <br>
                  <div>
                    &nbsp;專案心得:我們這次專題負責的是網頁的後端，比起上學期確實是困難許多，也瞭解到一個網頁不僅僅是版面的設計，背後所接收到的資料要怎麼彙整，有條理的運作也是重要的環節。雖然中間遇到了很多困難，也有很多沒有搞懂的地方，但靠著摸索一步一步的完成了，雖然最後成果不是最厲害的，但在我們能力範圍內，已經盡力做到最好！也希望自己能帶著透過這樣的專題學到的所有技能發揮在未來的工作，或是實際生活中！
                  </div>
                  <br>
                </div>
          </section>
          <section class="team">
            <img class="picture" src="image/member6.jpg" width="200" height="225">
                <div class="introduce">
                  <div>&nbsp;姓名: 卓凡亞</div>
                  <div>&nbsp;班級:資管二甲 </div>
                  <div>&nbsp;興趣:舞蹈</div><br>
                  <div>&nbsp;負責內容:後端程式書寫</div>
                  <br>
                  <div>
                    &nbsp;專案心得:這次的專題我第一次接觸了很多程式，像是可以多寫一個config去連結資料庫，還有如果要後端的jsp比較明亮的話可以多就一些檔案，像是login 可以多加一個Cheka.jsp，還有更讓我覺得方便的就是把header單獨寫一個出來，這樣就可以不用每一個都點進去改，我覺得這次讓我遇到必要困難的問題是jsp的程式很仔細，像是一個地方不能多空白鍵，多了就會出現錯誤，檢查了很久才發現是自己多加了一個空白鍵，還有跑資料庫的重要性，像是利用資料庫很多一樣的介面只要寫一次就好，不用重複去寫，我覺得收穫真的很多，因為我覺得很多段都很困難，什麼東西要連結到那裡，稍微不注意就有可能有小錯誤，也讓我一度很崩潰。
                  </div>
                  <br>
                </div>
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