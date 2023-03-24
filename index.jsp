<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.io.*,java.util.*" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>BK.</title>
  <link rel="stylesheet" type="text/css" href="css/index_css.css">
  <link rel="stylesheet" type="text/css" href="css/barside.css">
  <link rel="stylesheet" type="text/css" href="css/index_contant.css">
  <link rel="stylesheet" href="css/product_manu.css">
  <link rel="shortcut icon" href="img/favicon (1).ico" type="image/x-icon">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

  <style>


  </style>

  <script>
    // 彈跳式清單
    function button_open() {
      document.getElementById("sidebar").style.display = "block";
    }

    function button_close() {
      document.getElementById("sidebar").style.display = "none";
    }

    //搜尋欄位
    var input = document.getElementById("myInput");
    input.addEventListener("keyup", function (event) {
      if (event.keyCode === 13) {
        event.preventDefault();
        document.getElementById("myBtn").click();
      }
    });
    //留言板
    function openSearch() {
      document.getElementById("myOverlay").style.display = "block";
    }

    function closeSearch() {
      document.getElementById("myOverlay").style.display = "none";
    }

    function closeForm() {
      document.getElementById("myOverlay").style.display = "none";
    }

    // Get the element with id="defaultOpen" and click on it
    document.getElementById("defaultOpen").click();
  </script>
</head>

<body>


  <%
    Integer hitsCount =
      (Integer)application.getAttribute("hitCounter");
    if( hitsCount ==null || hitsCount == 0 ){
       /* First visit */
       out.println("Welcome to my website!");
       hitsCount = 1;
    }else{
       /* return visit */
       out.println("Welcome back to my website!");
       hitsCount += 1;
    }
    application.setAttribute("hitCounter", hitsCount);
%>
  <center>
    <p>Total number of visits: <%= hitsCount%></p>
  </center>

  <header>
    <div class="head">
      <div class="head_icon"> <a href="index.jsp"><img src="img/shop-removebg-preview.png" alt="icon"></a> </div>
      <div class="head_slogn">BK.</div>
      <div class="head_search">
        <form action="../manu/newbook.jsp" name="form2" method="get">
          <input type="text" class="text" id="keyword" name="keys" placeholder="找商品: 輸入關鍵字" style="width: 130px;">
          <button id="myBtn"><a href="manu/newbook.jsp">搜尋</a></button>
        </form>

      </div>
      <div class="head_decoration">

        <div class="login">
          <div class="w3-container">
            <div class="w3-dropdown-hover">
              <button class="button">
                <a href=""> <img id="profile" src="img/profile.png" width="55px"> </a>
              </button>
              <div class="w3-dropdown-content w3-bar-block w3-border">
                <a href="login.html" class="w3-bar-item w3-button">Login</a>
                <a href="register.jsp" class="w3-bar-item w3-button">Register</a>
                <a href="member.jsp" class="w3-bar-item w3-button">My Info.</a>
              </div>
            </div>
          </div>
        </div>

        <div> <a href="member/wish_list.jsp"><img src="img/wishlist-12.png" title="My wishlist"></a> </div>
        <div> <a href="member/cart.jsp"><img src="img/carttt.png" title="My Cart"></a> </div>
      </div>
    </div>
  </header>
  <!-- 彈跳清單 -->
  <section>
    <div class="side_button">
      <button onclick="button_open()">☰</button>
    </div>
    <!-- 留言板 -->
    <div id="myOverlay" class="overlay"
      style="background: url(img/back.jpeg); background-repeat: no-repeat; background-size: cover; z-index: 100000000000000000000000000000;">
      <span class="closebtn" onclick="closeSearch()" title="Close Overlay">×</span>
      <div class="overlay-content">
        <form class="form-container" action="">
          <h2 style="text-decoration: black;"><b>想跟 BK. 說的話:</b></h2>
          <textarea placeholder=" 喝咖啡聊是非 快留下想對我們說的話吧:" name="msg" required></textarea>
          <div class="btnbtw">
            <button type="submit" class="btn">Send</button>
            <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
          </div>
        </form>
      </div>
    </div>



    <div class="manu" style="display:none" id="sidebar">
      <button onclick="button_close()" class="barline">Close &times;</button>
      <ul>
        <li><a href="index.jsp">商店介紹</a></li>
        <li><a href="manu/newbook.jsp">全部商品</a>
          <ul>
            <li><a href="manu/top.jsp">熱銷排行</a></li>
            <li><a href="manu/magazine.jsp">Magazine</a></li>
            <li><a href="manu/ebook.jsp">電子書</a></li>
          </ul>
        </li>
        <li><a href="store_detail/aboutus.jsp">認識我們</a></li>
        <li><a href="store_detail/question.jsp">購物須知</a></li>
        <li><a href="teams.jsp">BK.成員介紹</a></li>
        <li><a href="board.jsp">留言板</a></li>
      </ul>
    </div>
  </section>








  <!-- 新東東 -->
  <section>
    <div class="bigcontant">

      <button class="tablink" onclick="openPage('Introduction',this,'gray')" id="firstopen">Introduction</button>
      <button class="tablink" onclick="openPage('vedio',this,'gray')">HOT</button>
      <button class="tablink" onclick="openPage('news',this,'gray')">NEWS</button>
      <button class="tablink" onclick="openPage('process',this,'gray')">PROCESS</button>

      <div id="Introduction" class="button_content">
        <section>
          <!-- contant -->
          <div class="product_contant">
            <img src="img/index/dream.jpg" alt="">
            <div class="product_contant_text">
              <h2>設計目的</h2>
              <p>一個小孩子如果不上學，他7歲就可以放羊；<br>
                如果初中畢業，他就可以學習一些機械的操作了；<br>
                如果高中畢業，他就可以學習很多機械的修理了；<br>
                如果大學畢業，他就可以設計高樓大廈，鐵路橋樑了；<br>
                如果碩博士畢業，他就可能發明出我們原來沒有的東西。<br>
                因此我們希望可以透過這個平台，讓大家更容易接觸到書籍，愛上讀書增進自己，完成自己的夢想藍圖！
              </p>
            </div>
          </div>
        </section>
      </div>

      <div id="vedio" class="button_content">
        <iframe class="hot_vedio" width="560" height="315" src="https://www.youtube.com/embed/Oa4BRX5Fa-U"
          title="YouTube video player" frameborder="0"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
          allowfullscreen></iframe>
      </div>

      <div id="news" class="button_content">
        <section>

          <!-- 轉燈片1 -->
          <div class="slider_container">
            <div>
              <img src="img/books/core/coreinterio13 .jpg" alt="" />
              <span class="info">《CORE INTERIOR空間》</span>
            </div>
            <div>
              <img src="img/books/ilook/ilook1.png" alt="" />
              <span class="info">《iLook電影》</span>
            </div>
            <div>
              <img src="img/books/ilook/ilook3.png" alt="" />
              <span class="info">《iLook電影》</span>
            </div>
            <div>
              <img src="img/books/movie/movie1.png" alt="" />
              <span class="info">《世界電影》</span>
            </div>
            <div>
              <img src="img/books/movie/movie2.png" alt="" />
              <span class="info">《世界電影》</span>
            </div>
          </div>
          <!-- 轉燈片2 -->
          <div class="slider_container">
            <div>
              <img src="img/books/beauty/beauty1.png" alt="" />
              <span class="info">《漂亮家居》</span>
            </div>
            <div>
              <img src="img/books/beauty/beauty2.png" alt="" />
              <span class="info">《漂亮家居》</span>
            </div>
            <div>
              <img src="img/books/interior/interior2.png" alt="" />
              <span class="info">《室內interior》</span>
            </div>
            <div>
              <img src="img/books/interior/interior3.png" alt="" />
              <span class="info">《室內interior》</span>
            </div>
            <div>
              <img src="img/books/interior/interior5.jpg" alt="" />
              <span class="info">《室內interior》</span>
            </div>
          </div>
        </section>
      </div>
      <div id="process" class="button_content">
        <img id="process_img" width="600" height="440" src="img/index/process.jpg" alt="">
      </div>
    </div>
  </section>

  <script>
    function openPage(pageName, elmnt, color) {
      var i, tabcontent, tablinks;
      tabcontent = document.getElementsByClassName("button_content");
      for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
      }
      tablinks = document.getElementsByClassName("tablink");
      for (i = 0; i < tablinks.length; i++) {
        tablinks[i].style.backgroundColor = "";
      }
      document.getElementById(pageName).style.display = "block";
      elmnt.style.backgroundColor = color;
    } // Get the element with id="defaultOpen" and click on it
    document.getElementById("firstopen").click();
  </script>




  <div class="sup"></div>

  <!-- footer -->
  <section>
    <div class="footer">
      <div class="footer_wrap">
        <div>
          <h4>關於我們</h4>

          <ul>
            <li><a href="">服務時間：週一至週五A.M. 8:00 ~ P.M. 6:00</a></li>
            <li><a href="">電話 : (02)2502-8314</a></li>
            <li><a href="">地址：320桃園市中壢區中北路200號</a></li>
            <li><a href="">No. 200, Zhongbei Road, Zhongli District, Taoyuan City 320</a></li>
          </ul>
        </div>
      </div>



      <div class="footer_copyright">
        <p>※若消費者為限制行為能力人或無行為能力人，應於消費者之法定代理人閱讀、瞭解並同意本契約之所有內容後，方得使用本網站下單。<br>
          ※如為未滿20歲之未成年使用者，需經由家長同意方可購買與使用商城服務。<br>
          本網站已依台灣網站內容分級規定處理｜建議使用瀏覽器版本：Google Chrome版本60以上 / Firefox版本48以上 / Safari 版本11以上</p>
      </div>
    </div>

  </section>
</body>

</html>