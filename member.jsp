<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>會員中心</title>
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;700&family=Lobster&display=swap"
    rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="css/barside.css">
  <link rel="stylesheet" type="text/css" href="css/index_css.css">
  <link rel="stylesheet" type="text/css" href="css/barside.css">
  <link rel="stylesheet" type="text/css" href="css/index_contant.css">
  <link rel="stylesheet" href="css/product_manu.css">
  <link rel="stylesheet" href="css/MEMBERS.css">
  <link rel="stylesheet" type="text/css" href="css/teams.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

  <link rel="shortcut icon" href="img/favicon (1).ico" type="image/x-icon">
  <style>
    .head {
      height: 200px;
      max-width: 1200px;
      margin: auto;
      background-color: #3353322c;
      position: relative;
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
      tabcontent = document.getElementsByClassName("tabcontent");
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
  </script>

</head>

<body>
  <header style="margin-left: 15%;">
    <div class="head" style="background-color: #94A7AE;">
      <div class="head_icon"><a href="index.jsp"> <img src="img/shop-removebg-preview.png" alt="icon"> </a></div>
      <div class="head_slogn">My Info.</div>
      <div class="head_search">
        <input id="myInput" placeholder="search">
        <button id="mInput" onclick="sear()"
          style="border: none; background-color: #94A7AE; position: absolute; left:180px; top:-10px"> <img
            src="img/search.png" width="30px"></button>
      </div>
      <div class="head_decoration">
        <div class="login" style="position: absolute; top:25px; left:-50px;">
          <div class="w3-container">
            <div class="w3-dropdown-hover">
              <button class="button" style="background-color: #94A7AEE; border: none;">
                <a href=""> <img id="profile" src="img/profile.png" width="50px"> </a>
              </button>
              <div class="w3-dropdown-content w3-bar-block w3-border">
                <a href="login.jsp" class="w3-bar-item w3-button">Login</a>
                <a href="register.jsp" class="w3-bar-item w3-button">Register</a>
                <a href="member.jsp" class="w3-bar-item w3-button">My Info.</a>
              </div>
            </div>
          </div>
        </div>
        <div> <a href="member/wish_list.jsp" style="position: absolute; top:25px; left:90px;"><img
              src="img/wishlist-12.png" title="My wishlist"></a> </div>
        <div> <a href="member/cart.jsp" style="position: absolute; top:25px; left:210px;"><img src="img/carttt.png"
              title="My Cart"></a> </div>
      </div>
    </div>
  </header>
  <!-- 彈跳清單 -->
  <section>
    <div class="side_button">
      <button onclick="button_open()">☰</button>
    </div>
    <div id="myOverlay" class="overlay"
      style="background: url(img/back.jpeg); background-repeat: no-repeat; background-size: cover;">
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

  <section>
    <div class="all">
      <div class="right-tab">
        <button class="tablink" onclick="openPage('BK',this,'#ded2c2')" id="defaultOpen">基本資料</button>
        <button class="tablink" onclick="openPage('TT',this,'#ded2c2')">購買清單</button>
        <button class="tablink" onclick="openPage('PSW', this,'#ded2c2')">更改密碼</button>
      </div>

      <div class="left-tab">
        <div id="BK" class="tabcontent">
          <h2>會員基本資料</h2>
          <div class="qq">
            <h3>BK. X BRING BACK to YOU</h3>
          </div>
          <form method="post" action="" class="log">
            <div class="container">
              <div class="two2">
                <form name="information" method="POST">
                  <p>姓名 &nbsp;&nbsp;&nbsp; &nbsp; </p>
                  <input type="text" required value="曾雨芃" maxlength="3"
                    onfocus="if(this.value == '輸入3個字元以內') this.value =''"><br>
              </div>
              <div class="two2">
                <p>暱稱&nbsp; &nbsp; &nbsp; &nbsp; </p>
                <input type="text" required value="P" maxlength="16"
                  onfocus="if(this.value == '輸入16個字元以內') this.value =''"><br>
              </div>

              <div class="two2">
                <p>&nbsp; 性別 &ensp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
                <input type="text" name="gender" required value="male" maxlength="10"
                  onfocus="if(this.value == '輸入16個字元以內') this.value =''">
                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
              </div>
              <div class="two2">
                <p>生日&nbsp; &nbsp; &nbsp; &nbsp;</p>
                <input type="date" id="bookdate" name="bir" value="2021-01-01" min="1900-01-01" max="2099-12-31">
                &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
              </div>
              <br>
            </div>
            <table>
            </table>
          </form>
        </div>



        <div id="TT" class="tabcontent">
          <h2>購買清單</h2>
          <h3>BK. X BRING BACK to YOU</h3>
          <form name="car" method="POST">
            <table style="width: 105%;" ;border="1">
              <tr>
                <th style="width: 15%;">
                  <h3>商品資訊</h3>
                </th>
                <th style="width: 10%;">
                  <h3>數量</h3>
                </th>
                <th style="width: 10%;">
                  <h3>金額</h3>
                </th>
                <th style="width: 15%;">
                  <h3>付款方式</h3>
                </th>
                <th style="width: 15%;">
                  <h3>運送方式</h3>
                </th>
              </tr>
            </table>
          </form>
        </div>

        <div id="manager" class="manager">
          <h2>更改密碼</h2>
          <h3>BK. X BRING BACK to YOU</h3>
          <form method="post" action="" class="log">
            <div class="two2">
              <h4>請輸入您註冊時使用的電子郵件，我們會寄送密碼驗證的資訊給您</h4>
            </div>
            <form name="manager" method="post">
              <div class="container">
                <div class="two2">
                  <p>電子信箱</p>
                  <input type="email" name="uname" required value="text1@gmail.com" maxlength="16"
                    onfocus="if(this.value == '輸入16個字元以內') this.value =''"><br>
                </div>
                <div class="two2">
                  <p>新密碼 &nbsp;&nbsp;</p>
                  <input type="password" name="psw" required value="輸入20個字元以內" maxlength="20"
                    onfocus="if(this.value == '輸入20個字元以內') this.value =''"><br>
                </div>
              
                <center>
                  <label style="font-size: 30px;color:black;"><button><a href="index.jsp">寄送</a></button></label>
                </center>

              </div>
            </form>
          </form>
        </div>
      </div>
    </div>
    </div>
  </section>
  <br><br><br>

  <!-- footer -->
  <section>
    <div class="footer" style="margin-left: 15%;">
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

      <button onclick="topFunction()" id="myBtn"> Top </button>

      <script>
        var mybutton = document.getElementById("myBtn");

        window.onscroll = function () {
          scrollFunction()
        };

        function scrollFunction() {
          if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            mybutton.style.display = "block";
          } else {
            mybutton.style.display = "none";
          }
        }

        function topFunction() {
          document.body.scrollTop = 0;
          document.documentElement.scrollTop = 0;
        }
      </script>

      <div class="footer_copyright">
        <p>※若消費者為限制行為能力人或無行為能力人，應於消費者之法定代理人閱讀、瞭解並同意本契約之所有內容後，方得使用本網站下單。<br>
          ※如為未滿20歲之未成年使用者，需經由家長同意方可購買與使用商城服務。<br>
          本網站已依台灣網站內容分級規定處理｜建議使用瀏覽器版本：Google Chrome版本60以上 / Firefox版本48以上 / Safari 版本11以上</p>
      </div>
    </div>

  </section>
</body>

</html>