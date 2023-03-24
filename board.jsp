<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>留言版</title>
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;700&family=Lobster&display=swap"
    rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="css/barside.css">
  <link rel="stylesheet" type="text/css" href="css/forgot.css">
  <link rel="stylesheet" type="text/css" href="css/barside.css">
  <link rel="stylesheet" type="text/css" href="css/index_contant.css">
  <link rel="stylesheet" href="css/product_manu.css">
  <link rel="stylesheet" href="css/MEMBERS.css">
  <link rel="stylesheet" href="css/teams.css">
  <link rel="shortcut icon" href="img/favicon (1).ico" type="image/x-icon">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <style>
    .head {
      height: 200px;
      max-width: 1200px;
      margin: auto;
      background-color: #33533244;
      position: relative;
    }

    body {
      font-family: Arial, Helvetica, sans-serif;
      background-color: rgba(101, 140, 145, 0.349);
      height: 1200px;


    }

    * {
      box-sizing: border-box;

    }

    /*
    input[type=text],
    select,
    textarea {
      width: 100%;
      padding: 12px;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
      margin-top: 6px;
      margin-bottom: 16px;
      resize: vertical;
    }

    input[type=submit] {
      background-color: #04AA6D;
      color: white;
      padding: 12px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    input[type=submit]:hover {
      background-color: #45a049;
    }

    .container {
      border-radius: 5px;
      background-color: #f2f2f2;
      padding: 20px;
      margin: 2%;

    }
  }*/
    .forgot {
      position: relative;
      top: 0;
      margin-top: 5%;
      margin-bottom: 5%;
      margin-left: 20%;
      height: 850px;
    }

    .openBtn {
      border: none;
      outline: none;
      background-color: inherit;
      align-items: left;
      color: #00676B;
      position: absolute;
      left: 10%;
      top: 66%;
    }
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

    function openPage(pageName, elmnt, color) {
      var i, tabcontent, tablinks;
      tabcontent = document.getElementsByClassName("m");
      for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
      }
      tablinks = document.getElementsByClassName("tablink");
      for (i = 0; i < tablinks.length; i++) {
        tablinks[i].style.backgroundColor = "";
      }
      document.getElementById(pageName).style.display = "block";
      elmnt.style.backgroundColor = color;
    }

    // Get the element with id="defaultOpen" and click on it
    document.getElementById("defaultOpen").click();


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

    function sear() {
      alert("NOT FOUND !! PLEASE SEARCH AGAIN");
    }
  </script>

</head>

<body>
  <header style="margin-left: 15%;">
    <div class="head">
      <div class="head_icon"> <a href="index.jsp"><img src="img/shop-removebg-preview.png" alt="icon"> </a></div>


      <div class="head_search">
        <input id="myInput" placeholder="search...">
        <button id="myBtnn" onclick="sear()">搜尋</button>
      </div>
      <div class="head_decoration">
        <div class="login">
          <div class="w3-container">
            <div class="w3-dropdown-hover">
              <button class="button" style="background-color: #b4c4c1; border: none;">
                <a href=""> <img id="profile" src="img/profile.png" width="55px"> </a>
              </button>
              <div class="w3-dropdown-content w3-bar-block w3-border">
                <a href="login.jsp" class="w3-bar-item w3-button">Login</a>
                <a href="register.jsp" class="w3-bar-item w3-button">Register</a>
                <a href="member.jsp" class="w3-bar-item w3-button">My Info.</a>
              </div>
            </div>
          </div>
        </div>
        <div> <a href="member/wish_list.jsp"><img src="img/wishlist-12.png" alt="My wishlist"></a> </div>
        <div> <a href="member/cart.jsp"><img src="img/carttt.png" alt="My Cart"></a> </div>
      </div>
    </div>
  </header>

  <!-- 彈跳清單 -->
  <section>
    <div class="side_button">
      <button onclick="button_open()">☰</button>
    </div>
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

  <body>
    <br><br><br>
    <center style="font-size: 30px;">


      <a href="view.jsp?page=1">觀看留言</a>
      <p>
        <form name="form1" method="get" action="add.jsp">
          <tr>
            <td>姓名：<input type="text" name="name"><br></td>
          </tr>
          <tr>
            <td> 郵件：<input type="text" name="mail"><br></td>
          </tr>
          <tr>
            <td> 主題：<input type="text" name="subject"><br></td>
          </tr>
          <tr>
            <td> 內容：<textarea rows="3" cols="21" name="content"></textarea><br></td>
          </tr>
          <input type="submit" name="Submit" value="送出">
          <input type="Reset" name="Reset" value="重新填寫">
        </form>
      </p>
    </center>


    <br><br><br>
    <!-- footer -->
    <section style="margin-left: 15%;">
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