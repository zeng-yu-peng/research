<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>註冊</title>
  <link rel="stylesheet" type="text/css" href="css/barside.css">
  <link rel="stylesheet" type="text/css" href="css/index_css.css">
  <link rel="stylesheet" type="text/css" href="css/register.css">
  <link rel="stylesheet" type="text/css" href="css/teams.css">
  <link rel="stylesheet" type="text/css" href="css/ii.css">

  <link rel="shortcut icon" href="img/favicon (1).ico" type="image/x-icon">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=ZCOOL+KuaiLe&display=swap" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&family=ZCOOL+KuaiLe&display=swap"
    rel="stylesheet">
  <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js'></script>

  <style>
    body {
      position: relative;
      margin-left: 0;
      top: 0;

    }

    header {
      width: 80%;
      margin: 0 0 0 150px;
    }

    /* 彈跳式清單.. */
    .manu {
      padding: 20px;
      position: fixed;
      top: 0;
      left: 0;
      background-color: #afd0df;
      z-index: 99;
      width: 200px;
      height: 100%;
      min-width: 180px;
    }

    .manu li {
      line-height: 3.5;
    }

    .manu li a {
      color: #25006b;
      text-decoration: none;
    }


    .barline {
      width: 100%;
      display: block;
      padding: 8px 16px;
      text-align: left;
      border: none;
      white-space: normal;
      float: none;
      outline: 0;
      text-align: center;
      background-color: #25006b;
      font-size: 18px !important
    }

    .side_button {
      position: fixed;
      left: 0;
      top: 50%;
      font-size: 24px !important
    }

    .side_button button {
      position: absolute;
      top: 40%;
      height: 45px;
      width: 30px;
      color: #B7B7B7 !important;
      background-color: #4e0097a9 !important
    }


    .openBtn {
      border: none;
      outline: none;
      background-color: inherit;
      align-items: left;
      color: #2a076b;
      position: absolute;
      left: 0%;
      top: 65%;
    }

    .forgot {
      margin: 40px 0 0 300px;
      height: 850px;
    }

    #myBtn {

      position: fixed;
      top: 2000px;
      right: -30px;
      z-index: 99;
      font-size: 18px;
      border: none;
      outline: none;
      background-color: #44a2bea4;
      color: white;
      cursor: pointer;
      padding: 15px;
      border-radius: 4px;
    }

    #myBtn:hover {
      background-color: #a5a6dae3;

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

    function openSearch() {
      document.getElementById("myOverlay").style.display = "block";
    }

    function closeSearch() {
      document.getElementById("myOverlay").style.display = "none";
    }

    function closeForm() {
      document.getElementById("myOverlay").style.display = "none";
    }

    function sear() {
      alert("NOT FOUND !! PLEASE SEARCH AGAIN");
    }
  </script>



</head>

<body>
  <header>
    <div class="head" style="background-color: #94A7AE;">
      <div class="head_icon"><a href="index.jsp"> <img src="img/shop-removebg-preview.png" alt="icon"> </a></div>
      <div class="head_slogn">Register</div>
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
              <button class="button" style="background-color: #94A7AE; border: none;">
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


    <!--<br><br><br><br><br><br><br><br>-->

    <div class="container">
      <div class="row" style="margin-top: 30px">
        <div class="col-md-4 col-md-offset-4">
          <div class="panel panel-primary">
            <div class="panel-heading">
              <span class="glyphicon glyphicon-plus"></span>
            </div>
            <div class="panel-body">
              <form action="check_reg.jsp" method="POST" name="register">
                <div class="form-group">
                  <label for="name">用戶名稱:</label> <input type="text" class="form-control" name="name"
                    placeholder="請輸入用戶名稱" autofocus="autofocus">
                </div>
                <div class="form-group">
                  <label for="">密碼:&emsp;&emsp;</label> <input type="password" class="form-control" name="pwd"
                    placeholder="請輸入密碼">
                </div>
                <div class="form-group">
                  <label for="">重複密碼:</label> <input type="password" class="form-control" name="repwd"
                    placeholder="請重複輸入密碼">
                </div>
                <button type="submit" class="btn btn-primary" onclick="return checkForm()">註冊</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
      integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous">
    </script>
    <script type="text/javascript">
      function checkForm() {
        var name = registerForm.name.value;
        var pwd = registerForm.pwd.value;
        var repwd = registerForm.repwd.value;
        //alert(name + pwd + repwd);
        if (name == "" || name == null) {
          alert("请输入用户名");
          registerForm.name.focus();
          return false;
        } else if (pwd == "" || pwd == null) {
          alert("请输入密码");
          registerForm.pwd.focus();
          return false;
        } else if (repwd == "" || repwd == null) {
          alert("请输入重复密码");
          registerForm.repwd.focus();
          return false;
        } else if (pwd != repwd) {
          alert("两次密码输入不一致，请重新输入!");
          registerForm.repwd.focus();
          return false;
        }
        alert('注册成功！');
        return true;
      }
    </script>
    <!-- <section class="forgot">
      <div id="invoice" class="tabcontent" style="width: 800px; height: 830px; padding-top: 40px; display:inline-block">
        <h2>&nbsp;&nbsp;會員註冊</h2>
        <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BK. X BRING BACK to YOU</h3>
        <form name="signup" style="width: 600PX; margin-bottom: 15%;">
          <h1>Register:</h1>
          <form action="check2.jsp" method="post" onSubmit="return isValid(this);">
            <table>
              <div class="tab">Name:
                <p><input placeholder="First name..." oninput="this.className = ''" name="fname"></p><br>
                <p><input placeholder="Last name..." oninput="this.className = ''" name="lname"></p>
              </div>
              <div class="tab">Contact Info:
                <p><input placeholder="E-mail..." oninput="this.className = ''" name="email"></p><br>
                <p><input placeholder="Phone..." oninput="this.className = ''" name="phone"></p>
              </div>
              <div class="tab">Birthday:
                <p><input placeholder="dd" oninput="this.className = ''" name="dd"></p><br>
                <p><input placeholder="mm" oninput="this.className = ''" name="nn"></p><br>
                <p><input placeholder="yyyy" oninput="this.className = ''" name="yyyy"></p>
              </div>
              <div class="tab">Login Info:
                <p><input placeholder="Username..." oninput="this.className = ''" name="uname"></p><br>
                <p><input placeholder="Password..." oninput="this.className = ''" name="pword"></p>
              </div>

            </table>
          </form>
        </form>
        <br>
        <div style="overflow:auto;">
          <div style="float:right;">
            <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
            <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
          </div>
        </div>
        <div style="text-align:center;margin-top:40px;">
          <span class="step"></span>
          <span class="step"></span>
          <span class="step"></span>
          <span class="step"></span>
        </div>
        </form>-->
    <br><br><br>
    <script>
      var x = document.getElementById("demo");

      function getLocation() {
        if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(showPosition);
        } else {
          x.innerHTML = "Geolocation is not supported by this browser.";
        }
      }

      function showPosition(position) {
        var latlon = position.coords.latitude + "," + position.coords.longitude;

        var img_url = "https://maps.googleapis.com/maps/api/staticmap?center=" + latlon +
          "&zoom=14&size=400x300&sensor=false&key=YOUR_KEY";

        document.getElementById("mapholder").innerHTML = "<img src='" + img_url + "'>";
      }
    </script>
    <script>
      var currentTab = 0; // Current tab is set to be the first tab (0)
      showTab(currentTab); // Display the current tab

      function showTab(n) {
        // This function will display the specified tab of the form...
        var x = document.getElementsByClassName("tab");
        x[n].style.display = "block";
        //... and fix the Previous/Next buttons:
        if (n == 0) {
          document.getElementById("prevBtn").style.display = "none";
        } else {
          document.getElementById("prevBtn").style.display = "inline";
        }
        if (n == (x.length - 1)) {
          document.getElementById("nextBtn").innerHTML = "Submit";
        } else {
          document.getElementById("nextBtn").innerHTML = "Next";
        }
        //... and run a function that will display the correct step indicator:
        fixStepIndicator(n)
      }

      function nextPrev(n) {
        // This function will figure out which tab to display
        var x = document.getElementsByClassName("tab");
        // Exit the function if any field in the current tab is invalid:
        if (n == 1 && !validateForm()) return false;
        // Hide the current tab:
        x[currentTab].style.display = "none";
        // Increase or decrease the current tab by 1:
        currentTab = currentTab + n;
        // if you have reached the end of the form...
        if (currentTab >= x.length) {
          // ... the form gets submitted:
          document.getElementById("regForm").submit();
          return false;
        }
        // Otherwise, display the correct tab:
        showTab(currentTab);
      }

      function validateForm() {
        // This function deals with validation of the form fields
        var x, y, i, valid = true;
        x = document.getElementsByClassName("tab");
        y = x[currentTab].getElementsByTagName("input");
        // A loop that checks every input field in the current tab:
        for (i = 0; i < y.length; i++) {
          // If a field is empty...
          if (y[i].value == "") {
            // add an "invalid" class to the field:
            y[i].className += " invalid";
            // and set the current valid status to false
            valid = false;
          }
        }
        // If the valid status is true, mark the step as finished and valid:
        if (valid) {
          document.getElementsByClassName("step")[currentTab].className += " finish";
        }
        return valid; // return the valid status
      }

      function fixStepIndicator(n) {
        // This function removes the "active" class of all steps...
        var i, x = document.getElementsByClassName("step");
        for (i = 0; i < x.length; i++) {
          x[i].className = x[i].className.replace(" active", "");
        }
        //... and adds the "active" class on the current step:
        x[n].className += " active";
      }
    </script>

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

    <br>
    </div>
  </section>

  <div class="sup"></div>

  <!-- footer -->
  <!-- <section style="margin:0 0 0 50px;"> -->
  <div class="footer" style="position:absolute; top: 415px; left: 20%; width: 1000px;">
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

    <button onclick="topFunction()" id="myBtn">Top</button>

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