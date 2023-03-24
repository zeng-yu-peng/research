<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>BK.結帳</title>
  <link rel="stylesheet" type="text/css" href="../css/index_css.css">
  <link rel="stylesheet" type="text/css" href="../css/barside.css">
  <link rel="shortcut icon" href="../img/favicon (1).ico" type="image/x-icon">
  <link rel="stylesheet" type="text/css" href="../css/member.css">
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

    function bbuy() {
      alert("交易失敗.....請確認資料是否完整!");
    }
  </script>

</head>

<body>
  <header>
    <div class="head">
      <div class="head_icon"> <a href="../index.jsp"><img src="../img/shop-removebg-preview.png" alt="icon"></a> </div>


      <div class="head_slogn">結帳</div>
      <div class="head_search">
        <input id="myInput" value="Search" />
        <button id="myBtn">搜尋</button>
      </div>
      <div class="head_decoration">

        <div class="login">
          <div class="w3-container">
            <div class="w3-dropdown-hover">
              <button class="button">
                <a href=""> <img id="profile" src="../img/profile.png" width="55px"> </a>
              </button>
              <div class="w3-dropdown-content w3-bar-block w3-border">
                <a href="../login.jsp" class="w3-bar-item w3-button">Login</a>
                <a href="../register.jsp" class="w3-bar-item w3-button">Register</a>
                <a href="../member.jsp" class="w3-bar-item w3-button">My Info.</a>
              </div>
            </div>
          </div>
        </div>

        <div> <a href="wish_list.jsp"><img src="../img/wishlist-12.png" alt="My wishlist"></a> </div>
        <div> <a href="cart.jsp"><img src="../img/carttt.png" alt="My Cart"></a> </div>
      </div>
    </div>
  </header>
  <!-- 彈跳清單 -->
  <section>
    <div class="side_button">
      <button onclick="button_open()">☰</button>
    </div>

    <div class="manu" style="display:none" id="sidebar">
      <button onclick="button_close()" class="barline">Close &times;</button>
      <ul>
        <li><a href="../index.jsp">商店介紹</a></li>
        <li><a href="../manu/newbook.jsp">全部商品</a>
          <ul>
            <li><a href="../manu/top.jsp">熱銷排行</a></li>
            <li><a href="../manu/magazine.jsp">Magazine</a></li>
            <li><a href="../manu/ebook.jsp">電子書</a></li>
          </ul>
        </li>
        <li><a href="../store_detail/aboutus.jsp">認識我們</a></li>
        <li><a href="../store_detail/question.jsp">購物須知</a></li>
        <li><a href="../teams.jsp">BK.成員介紹</a></li>
        <li><a href="../board.jsp">留言板</a></li>
      </ul>
    </div>
  </section>
  <!-- 購物車 -->
  <section>
    <div class="wish_list_wrap">
      <h1>結帳</h1>

      <p style="margin: 20px; width: 100px;  background-color: #333333;  color: #ffffff;">您的商品:</p>
      <div class="finish_contant">
        <!-- 左邊商品內容 -->
        <div class="pro_detail">
          <table>
            <!-- 標題 -->
            <tr>
              <th>名稱</th>
              <th>數量</th>
              <th>金額(元)</th>
            </tr>
            <!-- first product -->
            <tr>
              <td>《漂亮家居》 1月號/2021 第239期(電子雜誌)</td>
              <td>1</td>
              <td>$139</td>
            </tr>

            <!-- 第二個 -->
         <!---  <tr>
              <td>《CORE INTERIOR》1月號/2019第13期 (電子雜誌)</td>
              <td>1</td>
              <td>$69</td>
            </tr>-->
          </table>
        </div>
        <!-- 右邊小計 -->
        <div class="pro_count">
          <p>小計：　　　　　$139</p><br>
          <p>運費：　　　　　$60</p><br>
          <hr>
          <p>合計：　　　　　$199</p>
          <div class="howtopay_title">
            <p>貨運及付款方式</p>
          </div>
          <div class="howtopay_contant">
            <div>地址： <input type="text" placeholder="請輸入您的地址"></div>
            <div>運送方式：
              <select name="deliver" id="">
                <option aria-checked="true">7-11取貨付款(貨到付款)</option>
                <option>全家取貨付款(貨到付款)</option>
                <option>黑貓宅急便(預設地址)</option>
              </select>
            </div>
            <div>付款方式：
              <select name="pay" id="">
                <option aria-checked="true">貨到付款</option>
                <option>轉帳</option>
                <option>信用卡</option>
              </select>
            </div>
            <input id="finish" type="button" value="立即購買" onclick="bbuy()">
          </div>
        </div>
      </div>
      <hr>
    </div>
  </section>


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
