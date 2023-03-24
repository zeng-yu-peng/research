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

        function sear() {
            alert("NOT FOUND !! PLEASE SEARCH AGAIN");
        }
    </script>

    <script>
        $(".slide_toggle").click(function () {
            $(this).next().slideToggle();
        });
    </script>

    <title>《漂亮家居》 1月號</title>

</head>

<body>

    <!-- 彈跳清單 -->
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
                <li><a href="index.jsp">商店介紹</a></li>
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
                    <input type="text" placeholder="Search for a book..." name="search" autocomplete="off"
                        autocorrect="off" ata-component-tracked-focused="">
                    <button type="submit" style="background-color: #374663;"><img src="../img/search.png"
                            width="55px"><i class="fa fa-search"></i></button>
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
                        <a href="../login.jsp" class="w3-bar-item w3-button">Login</a>
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
                        href="../manu/ebook.jsp">電子雜誌</a>>建築欣賞 > 《漂亮家居》 1月號/2021 第239期
                </h6>
            </div>


            <section class="left">

                <div class="bookimg">
                    <img src="../img/books/beauty/beauty1.png">
                </div>

                <div class="bookcontent">
                    <h2>《漂亮家居》 1月號/2021 第239期(電子雜誌)</h2>
                    <h4>FREE DELIVERY OVER NT$ 1,500</h4>

                    <button type="submit" class="buy1" onclick="heart()" style="margin: 40px 0 0 580px;">
                        <img src="../img/wishlist.png" width="40px"> </button>

                    <div class="price">>
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
            </section>
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

                                六大主軸，使讀者認識與打造美感的生活空間並把美好生活風格落實於空間中，讓每個人都可以成為自己心目中的生活設計美感達人。
                                <br>
                            </div>

                            <div class="acc">
                                <div class="watch">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WATCH MORE
                                    <img src="../img/down .png" width="40px">
                                </div>



                                <div class="accc">
                                    <div class="slide_toggle"
                                        style="background: lightpink; border-radius: 10px; height: 30px;">
                                        Cover Story
                                    </div>

                                    <div>
                                        <div>
                                            <br>
                                            <h4><b>「玩出金屬個性化空間」</b></h4><br>
                                            從「Chapter01 空間設計常用之金屬材質知識」以空間設計常用之金屬種類、樣式、成型、加工、塗裝、維設來說明金屬的特性；<br><br>

                                            從「Chapter 02 空間設計常用之金屬材質選擇與運用」從結構構件、立面隔間、機能運用、裝飾表現介紹常用之金屬材質種類與運用計巧；<br><br>

                                            最後「Chapter 03 金屬材質於空間中的表現設計」特別搜尋了國內商空、住宅五個案例，來一探金屬的魅力。<br><br>

                                            新書:
                                            《金屬材質萬用事典：從空間設計適用金屬種類、表面加工與塗裝，到施作工法全解析，玩出材料的新意與創意！》
                                            對金屬材質有更深入的探討喔。
                                            <br><br>
                                            混沌的2020 年就這樣過去，面對接踵的挑戰，平安健康已是共同的願望。
                                            地球不會因疫情而停止運轉，而產業發展也無法因此而暫停，只有持續學習累積靜待，才能換來他日風起揚帆時，對吧！

                                        </div>
                                    </div>
                                    <br>

                                    <div class="slide_toggle"
                                        style="background: lightyellow;border-radius: 10px; height: 30px;">編者的話</div>
                                    <div>
                                        學習累積，靜待揚帆<br><br>

                                        自從第100期啟動居家用品品牌大調查，爾後每年年底的頒獎典禮，就成為《漂亮家居設計家》年終重頭戲，
                                        尤其2019 年起將例年的品牌大調查轉化成大型講座論壇後，更成為產業內的年度盛事。<br><br>

                                        首場室內設計經營高峰會分享佳賓:
                                        L'atelier Fantasia 繽紛設計及近境制作兩位創辦人江欣宜與唐忠漢，<br><br>

                                        "中原大學室內設計系"畢業的唐忠漢在大一就完成住宅的設計，畢業沒有選擇進入室內設計公司，
                                        而是從傢具介入產業，沒有設計公司工作及執業經驗，卻成立設計公司。
                                        2003年出版全台第一本百大設計師精選年鑑，一路從3人工作室成為百人設計公司，雖然唐忠漢一再謙稱自己並沒有特別管理策略，
                                        但從其以「設計進化 組織管理」為題，分享自己的管理核心及哲學，及組織架構建構部門不同分工，
                                        還有管理組織的各項資料庫，可以看出他經營的力道！<br><br>

                                        政治大學社會系畢業的江欣宜進入時台灣家裝設計市場已進入成熟初期，，
                                        以非本科系進入所費的心力已倍於同業，還能在群強中展露頭角，引起產業及大眾的注意，實屬不易。
                                        她同時也是兩岸少見具有經營思維的設計師，創立公司之初就有財務管理的觀念，雖然她一直謙稱自己還在努力中，
                                        但從她以「設計與服務的全方位經營」為題，分享自己如何經營設計公司，
                                        不只提供的服務讓業主滿意，且還帶領公司走向國際。面對第一次在台灣分享設計公司的經營管理，
                                        兩人都非常嚴謹看待，不只前後多次面談討論定案PPT，同時也藉此梳理自己的經營策略，非常感謝！<br><br>

                                        若說近年來室內設計最熱門的材質，非金屬莫屬了！從原本只是隱蔽性的結構材質，
                                        變身成為機能、立面的裝飾材質，金屬展演變化性高又具有個性的特性讓它成為炙手可熱，
                                        幾乎可到空間沒用上就稱不上潮流的材質。也因為金屬挑戰及獨特性吸引了不少年輕人投入鐵工行列，
                                        應該是所有工種中，年輕化程度最高的。到底金屬材質在室內設計扮演什麼樣的角色？又要如何運用呢？

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
                    <div class="publication">刊&emsp;&nbsp;&nbsp;&nbsp;&nbsp;別：&nbsp;&nbsp;季刊 &nbsp;<br></div>
                    <div class="area">出版地區 ：&nbsp;&nbsp;台灣 <br></div>
                    <div class="language">語&emsp;&nbsp;&nbsp;&nbsp;&nbsp;言：&nbsp;&nbsp;繁體中文 <br></div>
                    <div class="publishing">出&thinsp;&thinsp; 版&thinsp;&thinsp;社&thinsp; :&nbsp;&nbsp;&thinsp;圓祥大眾傳播
                        <br>
                    </div>
                    <div class="date">出版日期&thinsp;&thinsp;&thinsp;:&nbsp;&nbsp;&thinsp;2019/01/25 <br></div>
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
                    <h4>關於我們</h4>

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