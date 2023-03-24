<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="css/ii.css">
  <link rel="stylesheet" type="text/css" href="css/login.css">
  <link rel="shortcut icon" href="img/favicon (1).ico" type="image/x-icon">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=ZCOOL+KuaiLe&display=swap" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&family=ZCOOL+KuaiLe&display=swap"
    rel="stylesheet">
  <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js'></script>
  <script>
    // 彈跳式清單
    function button_open() {
      document.getElementById("sidebar").style.display = "block";
    }

    function button_close() {
      document.getElementById("sidebar").style.display = "none";
    }
  </script>

  <script>
    function setTotal() {
      var t = $("#num");
      var tmp = document.getElementById("totalPrice"); //需要修改的總價位置1
      var tmp1 = document.getElementById("totalPrice1"); //需要修改的總價位置2
      if (/\D/.test(t.val())) { //檢查使用者輸入的值是否是數字
        alert("請您輸入正確的數量！");
        t.val(1);
        tmp.innerHTML = "2488元";
        tmp1.innerHTML = "2488元";
      } else { //如果輸入合法
        if (t.val() > 10) {
          confirm("您真的準備一次購買這麼多？");
          tmp.innerHTML = t.val() * 2488 + "元";
          tmp1.innerHTML = t.val() * 2488 + "元";
        }
      }
    }
  </script>
  <script>
    $(function () { //這裡是加減按鈕都啟用的情況
      var t = $("#num");
      $("#add").click(function () {
        t.val(parseInt(t.val()) + 1)
        setTotal();
      })
      $("#min").click(function () {
        if (t.val() > 1) {
          t.val(parseInt(t.val()) - 1);
        } else {
          alert("至少購買一件哦！");
        }
        setTotal();
      })
    });
  </script>
  <script>
    function shopping() {
      alert("已成功加入購物車清單");
    }

    function heart() {
      alert("已成功加入願望清單");
    }

    function comment() {
      alert("您的留言已送出...審核中");
    }


    $(".slide_toggle").click(function () {
      $(this).next().slideToggle();
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

  <style>
    body {
      font-family: Arial, Helvetica, sans-serif;
      background-image: url(img/back.jpeg);

    }

    * {

      box-sizing: border-box;
      text-decoration: none;
      color: #f1f1f1;

    }

    .ch {
      margin-left: 8%;
    }

    .openBtn {
      border: none;
      outline: none;
      background-color: inherit;
      align-items: left;
      color: #7e8686;
      position: absolute;
      left: 9%;
      top: 65%;
    }
  </style>

  <title>登入</title>
</head>

<body>

  <!-- 彈跳清單 -->
  <section>
    <div class="side_button">
      <button onclick="button_open()">☰</button>
    </div>
    <div id="myOverlay" class="overlay"
      style="background: url(img/back.jpeg); background-repeat: no-repeat; background-size: cover; z-index: 1300000000000000000;">
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
      <button onclick="button_close()" class="barline" style="color: black;">Close &times;</button>
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
  <header>
    <hr>
    <div class="icon">
      <a href="index.jsp"><img src="img/shop.png" width="150px"></a>
    </div>

    <div class="wishlist1" style="z-index: 100000;">
      <a href="member/wish_list.jsp"><img src="img/wishlist-12.png" width="100px" title="My wishlist"></a>
    </div>

    <div class="cartt1" style="z-index: 200000;">
      <a href="member/cart.jsp"><img src="img/carttt.png" width="100px" title="My cart"></a>
    </div>


    <div class="topnav1">
      <div class="search-container1">
        <form action="login.html">
          <input type="text" placeholder="Search for a book..." name="search" autocomplete="off" autocorrect="off"
            ata-component-tracked-focused="">
          <button type="submit" style="background-color: #374663;" id="mInput"
            onclick="javascript:alert('NOT FOUND')"><img src="img/search.png" width="55px"><i
              class="fa fa-search1"></i></button>
        </form>
      </div>
    </div>
    <div class="login1">
      <div class="w3-container">
        <div class="w3-dropdown-hover">
          <button class="button">
            <a href=""> <img src="img/profile.png" width="55px"> </a>
          </button>
          <div class="w3-dropdown-content w3-bar-block w3-border">
            <a href="login.jsp" class="w3-bar-item w3-button">Login</a>
            <a href="register.jsp" class="w3-bar-item w3-button">Register</a>
            <a href="member.jsp" class="w3-bar-item w3-button">My Info.</a>
          </div>
        </div>
      </div>
    </div>
    <hr>
  </header>
  <div class="container">
    <form action="/action_page.php">
      <div class="row">
        <h2 style="text-align:center">LOGIN</h2>
        <div class="vl">
          <span class="vl-innertext">or</span>
        </div>


        <div class="col">
          <div class="hide-md-lg">
            <p>Or sign in manually:</p>
          </div>

          <div class="wrapper">


              <a href="login.html" style="font-size: 40px; position: absolute; left: 190px; top: 30px; background-color: brown;">登入</a>
              <!-- <input type="submit" name="b1" value="登入" /> -->


    </form>

  </div>
  <div>

    <span class="psw">
      &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
      &emsp;&emsp; &emsp; &emsp; &emsp;
      &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
      &emsp;&emsp; &emsp; &emsp; &emsp;
      &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
      &emsp;&emsp; &emsp; &emsp; &emsp;
      &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
      &emsp;&emsp; &emsp; &emsp; &emsp;
      &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
      &emsp;&emsp; &emsp; &emsp; &emsp;&emsp;&emsp; &emsp; &emsp; &emsp;&emsp;&ensp; <a
        href="register.jsp">註冊</a>/
      <a href="forgot_password.jsp">忘記密碼?</a>
    </span>
  </div>
  <br>
  <a href="">

    </div>
    <div class="col">
      <a href="#" class="fb btn">
        <i class="fa fa-facebook fa-fw"></i> Login with Facebook
      </a>
      <a href="#" class="twitter btn">
        <i class="fa fa-twitter fa-fw"></i> Login with Twitter
      </a>
      <a href="#" class="google btn"><i class="fa fa-google fa-fw">
        </i> Login with Google+
      </a>
    </div>



    </div>
    </form>
    </div>
    <!-- footer -->
    <section>
      <div class="footer1">
        <div class="footer_wrap1">
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



        <div class="footer_copyright1">
          <p>※若消費者為限制行為能力人或無行為能力人，應於消費者之法定代理人閱讀、瞭解並同意本契約之所有內容後，方得使用本網站下單。<br>
            ※如為未滿20歲之未成年使用者，需經由家長同意方可購買與使用商城服務。<br>
            本網站已依台灣網站內容分級規定處理｜建議使用瀏覽器版本：Google Chrome版本60以上 / Firefox版本48以上 / Safari 版本11以上</p>
        </div>
      </div>

    </section>
</body>

</html>