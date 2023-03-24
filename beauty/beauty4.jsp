<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="../css/iii.css">
  <link rel="shortcut icon" href="../img/favicon (1).ico" type="image/x-icon">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=ZCOOL+KuaiLe&display=swap" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&family=ZCOOL+KuaiLe&display=swap"
    rel="stylesheet">
  <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js'></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


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
  </script>

  <script>
    $(".slide_toggle").click(function () {
      $(this).next().slideToggle();
    });
  </script>

  <title>《漂亮家居》4月號</title>

</head>

<body>

  <section>
    <div class="side_button">
      <button onclick="button_open()">☰</button>
    </div>
    <div id="myOverlay" class="overlay"
      style="background: url(../img/back.jpeg); background-repeat: no-repeat; background-size: cover; z-index: 100000000000000000000000000000;">
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


  <header style="position: relative; top:0; left:0;">
    <hr>
    <div class="icon">
      <a href="../index.jsp"><img src="../img/shop.png" width="150px"></a>
    </div>

    <div class="wishlist" style="z-index: 100000000;">
      <a href="../member/wish_list.jsp" title="願望清單"><img src="../img/wishlist-12.png" width="100px"></a>
    </div>

    <div class="cartt" style="z-index: 200000000;">
      <a href="../member/cart.jsp" title="購物車"><img src="../img/carttt.png" width="100px"></a>
    </div>



    <div class="topnav">
      <div class="search-container">
        <form action="/action_page.php">
          <input type="text" placeholder="Search for a book..." name="search" autocomplete="off" autocorrect="off"
            ata-component-tracked-focused="">
          <button type="submit" style="background-color: #374663;"><img src="../img/search.png" width="55px"><i
              class="fa fa-search"></i></button>
        </form>
      </div>
    </div>



    <div class="login">
      <div class="w3-container">
        <div class="w3-dropdown-hover">
          <button class="button">
            <a href=""> <img src="../img/profile.png" width="55px"> </a>
          </button>
          <div class="w3-dropdown-content w3-bar-block w3-border">
            <a href="../login.html" class="w3-bar-item w3-button">Login</a>
            <a href="../register.jsp" class="w3-bar-item w3-button">Register</a>
            <a href="../member.jsp" class="w3-bar-item w3-button">My Info.</a>
          </div>
        </div>
      </div>
    </div>
    <hr>
  </header>

  <section class="oooxxx">
    <div class="s1">
      <div class="ad1" style="margin: -80px -140px 0;">
        <a href="../manu/top_magazine.jsp"><img src="../img/ad1.gif" width="1380px"></a>
      </div>
      <div class="path">
        <h6 style="margin: 20px -140px 0;">
          <a href="../index.jsp">Home</a> > <a href="../manu/magazine.jsp">Magazine</a> > <a
            href="../manu/ebook.jsp">電子雜誌</a>>建築欣賞 > 《漂亮家居》 4月號/2021 第242期
        </h6>
      </div>


      <div class="left">

        <div class="bookimg">
          <img src="../img/books/beauty/beauty4.png">
        </div>

        <div class="bookcontent">
          <h2>《漂亮家居》 4月號/2021 第242期
            (電子雜誌)</h2>
          <h4>FREE DELIVERY OVER NT$ 1,500</h4>

          <button type="submit" class="buy1" onclick="heart()" style="margin: 40px 0 0 580px;"><img
              src="../img/wishlist.png" width="40px"></button>

          <div class="price">
            定價：１９８元</div>
          <h3 style="color: red;">７折：139元</h3>
          <div>
            <br>
            <input id="min" name="" type="button" value="-">
            <input id="num" name="num" type="text" value="1" readonly="true" onchange="setTotal();">
            <input id="add" name="" type="button" value="+">
            <br><br>

            <form name="form1" method="post" action="../backcar.jsp">
              <input type="submit" value="加入購物車" class="sub" />
              <input type="hidden" name="goods" value="goods1" />

              <form name="car" method="POST" action="../member/cart.jsp">
                <input type="submit" value="立即結帳" class="buy" />
              </form>
            <!--<input id="cart" name="" type="button" value="Add to cart">
                 <br><br>
                <a>
                     <img src="../img/wishlist.png" width="15px">
                     Add to wishlist
                </a>-->
            <br><br>
            <b>In stock - Usually dispatched within 24 hours</b>
          </div>

          <div>
            <h3>Payment</h3>

            <div class="payment">

              &nbsp;<img src="../img/payment/visa.jpg" height="25px">
              <img src="../img/payment/maestro.png" height="25px">
              <img src="../img/payment/mastercard.jpg" height="25px">
              <img src="../img/payment/americanexpress.jpg" height="25px">
              <img src="../img/payment/ctbc.jpg" height="25px">
              <img src="../img/payment/linepay.jpg" height="25px">
              <img src="../img/payment/cathay.jpg" height="25px">
              <img src="../img/payment/fareastern.jpg" height="30px">
              <br>
              <img src="../img/payment/alipay.jpg" height="25px">
              <img src="../img/payment/changhwa.png" height="20px">
              <img src="../img/payment/cooperate.jpg" height="20px">
              <img src="../img/payment/e.sun.jpg" height="20px">
              <img src="../img/payment/sinopac.jpg" height="20px">
              <img src="../img/payment/taipei.jpg" height="20px">
            </div>
          </div>
        </div>
      </div>
    </div>

  </section>



  <section class="ooxx">
    <div style="margin-right: 100px;">
      <div class="s2">
        <div class="left1">
          <div class="description">
            <hr>
            <h3>Description</h3>
            <p>
              <span style="background-color:rgb(218, 186, 226); font-size: 28px;">JAN. 2019
              </span><br><br>
              <div class="texttt">
                《漂亮家居》－華文最具影響力空間設計品味誌
              </div>
              <div>

                <br>
                ★Trends編輯精選：依編輯專業做最挑剔的精選推薦，並從設計角度，報導具有話題及引領最新、最潮流、最具話題的設計訊息。<br><br>


                ★Space & People全球視野：聚焦國際、定位台灣，從設計相關議題為出發點，介紹當下最流行的話題、設計空間、設計師、展覽等。<br><br>


                ★Cover封面故事：毎一期設定當下最具話題設計手法，介紹國際及國內潮流趨勢解析+介紹當下全球地區最受注目的設計師、中生代設計師、新銳設計師、最具風格個性設計師等，所規劃的空間設計案例賞析、趨勢規劃、設計拆解。<br><br>


                ★Life美感生活：人物的引領之下，重新學習新生活態度及生活美感品味，以及學習生活美感品。味及軟件佈置技巧，另外，也介紹流行的居家空間風格及元素knowhow和日常生活的採購物件。<br><br>


                ★Design設計焦點：合作的設計師的住宅空間設計案例報導。<br><br>


                ★Columns專欄作家：透過專欄作家的文章傳授最新最潮的相關訊息。 <br><br>

                <br>
              </div>

              <div class="acc">
                <div class="watch">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WATCH MORE
                  <img src="../img/down .png" width="40px">
                </div>



                <div class="accc">
                  <div class="slide_toggle" style="background: lightpink; border-radius: 10px; height: 30px;">
                    Cover Story
                  </div>

                  <div>
                    <div>
                      <br>
                      <h4><b>「台灣室內設計的進擊」</b></h4><br>

                      『品牌創價、價值轉化、跨域共生、創新運營』 <br> <br>
                      2001 年《漂亮家居》創立正值家裝設計市場進入快速成長期之際，至今已20 年，
                      一路從雜誌、圖書，擴展至數位網路、影音電視，透過全媒體布局，
                      帶領台灣設計產業通過品牌創價、價值轉化、跨域共生、創新運營，持續進擊走向大未來。
                    </div>
                  </div>
                  <br>

                  <div class="slide_toggle" style="background: lightyellow;border-radius: 10px; height: 30px;">編者的話
                  </div>
                  <div>
                    <h3>設計的進化與進擊</h3>

                    會進入城邦出版人集團，其實並不是因為室內設計！ <br> <br>
                    大學畢業後即投入媒體工作，在報社擔任記者，從農業、保育、環保跑到醫藥新聞，爾後轉投雜誌社主跑房地產，
                    又因緣際會地被延攬至房地產企劃公司。這是我近30 年媒體人生中的小插曲，
                    然只短短一年多的時間，卻對後來的職場生涯有著深遠的影響。 <br> <br>

                    在房地產企劃公司負責文案企劃，必須與建商及代銷合作包裝銷售個案，因此對地產特有銷售文化有著深入的研究。
                    剛進入室內設計界時，最痛苦的是找不到、聽不懂、難辨別、人傲慢。當年沒有網路可提供搜尋，
                    人海茫茫還真不知去哪裡找設計師；而且也沒什麼室內設計專業書籍可做功課，
                    即便採訪到了，面對設計師時不時冒出的行話，常有聽沒有懂，還因此曾被受訪設計師取笑，
                    「妳確定是室內設計雜誌主編，不是八卦雜誌。」而且無法分辨設計的好壞，只能就「外貌」來判定，
                    回想起來當時真採訪了不少「金玉其外」的人和空間；而最讓人莫名的還是設計師不知所以然的傲慢，
                    印象中最深刻的是有一次採訪被拒，理由竟然是因為雜誌在7-11 超商發行。
                    不過最讓人頭痛的是絕大多數的設計師根本沒有行銷概念，特別是剛成立工作室或是從其他領域轉職而來的設計師。
                    不懂得最好的行銷就是自己的作品，不知道花錢請專業攝影拍照，案子完工後也從不留記錄，更不懂得如何陳述自己的專業。
                    常是邀了稿，才聯絡屋主願不願意給拍。到了現場後，沒有任何軟裝佈置就算了，有時候連沙發、床組都還包著塑膠套。 <br> <br>


                    本期封面故事「台灣室內設計的進擊」特別採訪他們就台灣室內設計產業的過去、現在與未來提供觀點。
                    同時編輯部也從過去20 年回應產業環境變化的策略中，提煉了品牌創價、價值轉化、跨域共生、創新運營四大心法。
                    並採訪了在這過程中協助並跟隨建構的設計師及各領域達人！ <br> <br>

                    《漂亮家居》從雜誌出發成為台灣最大且唯一室內設計全媒體平台，要感謝的人真的太多太多，無法一一具名，只能在此致上深深的謝意~ <br> <br>
                    感謝對《漂亮家居》的支持！同時祝《漂亮家居》20 歲，生日快樂！

                  </div>
                </div>
              </div>
          </div>
        </div>
      </div>
    </div>
    <div>
      <div class="terms">
        <hr>

        <h3>Delivery & Returns</h3>
        <p>To see our available delivery options please <a href="../store_detail/question.jsp">Click here</a>
        </p>
      </div>

      <div class="re">
        <hr>
        <h3>If I'm not completely happy with my item?</h3>
        <p>Please see our <a href="../store_detail/question.jsp"> Returns Policy.</a></p>
      </div>


      <div class="detail">
        <hr>
        <h3>Product Details</h3>
        <p>
          <div class="publication">刊&emsp;&nbsp;&nbsp;&nbsp;&nbsp;別：&nbsp;&nbsp;月刊 &nbsp;<br></div>
          <div class="area">出版地區 ：&nbsp;&nbsp;台灣 <br></div>
          <div class="language">語&emsp;&nbsp;&nbsp;&nbsp;&nbsp;言：&nbsp;&nbsp;繁體中文 <br></div>
          <div class="publishing">出&thinsp;&thinsp; 版&thinsp;&thinsp;社&thinsp; :&nbsp;&nbsp;&thinsp;麥浩斯 <br></div>
          <div class="date">出版日期&thinsp;&thinsp;&thinsp;:&nbsp;&nbsp;&thinsp;2021/04/07 <br></div>
          <p>
      </div>
      <div class="reviews">
        <hr>
        <h3>Reviews</h3>
        <button type="button" class="reviwe" onclick="rew_show()">撰寫評論</button>
        <br><br>

        <div id="rew_write" class="rew_writeclass">
          <form style="padding:5px 20px 10px 30px">

            <label>姓名</label>
            <input type="retext"> <br>
            <label style="display:inline-block;">評分</label>
            <ul id="star">
              <li>★</li>
              <li>★</li>
              <li>★</li>
              <li>★</li>
              <li>★</li>
            </ul>
            <script>
              window.onload = function () {
                var star = document.getElementById("star");
                var star_li = star.getElementsByTagName("li");
                var star_word = document.getElementById("star_word");

                var i = 0;
                var j = 0;
                var len = star_li.length;
                var word = ['1', '2', '3', "4", "5"]

                for (i = 0; i < len; i++) {
                  star_li[i].index = i;

                  star_li[i].onmouseover = function () {
                    star_word.style.display = "inline-block";
                    star_word.innerHTML = word[this.index] + " / 5 ";
                    for (i = 0; i < len; i++) {
                      if (i <= this.index) {
                        star_li[i].className = "act";

                      } else {
                        star_li[i].className = "";
                      }
                    }

                  }


                }

              }
            </script>
            <br>
            <div style="display:inline-block;margin-left:15px">
              <div id="star_word"></div>
            </div>


            <br>
            <label style="margin-top:10px">標題</label>
            <input type="retext" style="width:40%" placeholder="20字以內" maxlength="20" required>
            <br>

            <label style="position:relative;top:-80px">內容</label>
            <textarea style="width:70%;height:100px;margin-top:10px" placeholder="250字以內" maxlength="250"
              required></textarea>
            <br>
            <button type="submit" class="rewpost" onclick="comment()">送出</button>

          </form>
        </div>

        <br><br>

        <div id="cc" class="button_content">

          <hr style="margin-top:10px">
          <div class="rew">
            <img src="../img/people.png" class="rewpic" height="70px">
            <ul class="rewul">
              <li>Chieh</li>

              <li>★★★★☆</li>
            </ul>
            <div class="rewtxt">
              <h4>內容太有趣了!!</h4>
              <p>電子書真的好方便~</p>
            </div>
            <p class="time">2021/06/05</p>
            <br><br>
          </div>
          <br>

          <div class="rew">
            <img src="../img/login.jpg" class="rewpic">
            <ul class="rewul">
              <li>堯</li>
              <li>★★★★★</li>
            </ul>
            <div class="rewtxt">
              <h4>我愛電子書</h4>
              <p>買起來!!!!!!</p>
            </div>
            <p class="time">2021/05/31</p>
            <br><br>
          </div>
        </div>
      </div>

      <script>
        function rew_show() {
          document.getElementById("rew_write").classList.toggle("show");
        }

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

        document.getElementById("defaultOpen").click();
      </script>


    </div>
    </div>
  </section>

  <!-- footer -->
  <section>
    <div class="footer">
      <div class="footer_wrap">
        <div>
          <h4>關於BK.</h4>

          <ul>
            <li><a href="">服務時間：週一至週五A.M. 8:00 ~ P.M. 6:00</a></li>
            <li><a href="">電話 : (02)2502-8314</a></li>
            <li><a href="">地址：320桃園市中壢區中北路200號</a></li>
            <li><a href="">No. 200, Zhongbei Road, Zhongli District, Taoyuan City 320</a></li>
          </ul>
        </div>
      </div>
      <div>

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
      </div>

      <div class="footer_copyright">
        <p>※若消費者為限制行為能力人或無行為能力人，應於消費者之法定代理人閱讀、瞭解並同意本契約之所有內容後，方得使用本網站下單。<br>
          ※如為未滿20歲之未成年使用者，需經由家長同意方可購買與使用商城服務。<br>
          本網站已依台灣網站內容分級規定處理｜建議使用瀏覽器版本：Google Chrome版本60以上 / Firefox版本48以上 / Safari 版本11以上</p>
      </div>
    </div>

  </section>

  <!-- 展開收合 start -->
  <script>
    $(".slide_toggle").click(function () {
      $(this).next().slideToggle();
    });
  </script>
  <!-- 展開收合 end -->
</body>

</html>