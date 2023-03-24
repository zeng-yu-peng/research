<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*, java.util.*, java.io.*"%>
<%
	if (session.getAttribute("id") == null)
	{
		%>
<script>
    alert("管理者介面，管理員請先登入");
    location.replace("serverlog.jsp");
</script>
<%
		return;
	}
%>


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
        <div style="position: absolute;left: 1400px;top: 20px;">
            <form method="POST" action="serverlog.jsp">
                <hr>
                <button type="submit" id="serverout">登出</button>
                <hr>
            </form>
        </div>
        <div class="head">
            <div class="head_icon"> <a href="index.jsp"><img src="img/shop-removebg-preview.png" alt="icon"></a> </div>
            <div class="head_slogn">BK.</div>
            <div class="head_search">
                <form action="../manu/newbook.jsp" name="form2" method="get">
                    <input type="text" class="text" id="keyword" name="keys" placeholder="找商品: 輸入關鍵字"
                        style="width: 130px;">
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


    <body>

        <div id="left">
            <div id="content-left">


                <br>
                <!--管理者ID-->
                <center>KASY0000</center>
                <br>
                <hr>
                <div id="content-select">
                    <br>
                    <center>
                        <p class="h"><a href="server_member.jsp">會員管理</a></p>
                    </center>
                    <br>
                    <center>
                        <p class="h"><a href="server_order.jsp">訂單管理</a></p>
                    </center>
                    <br>
                    <center>
                        <p class="h"><a href="goods_all.jsp">商品管理</a></p>
                    </center>
                    <br>
                    <center>
                        <p class="h"><a href="goods_add.jsp">商品新增</a></p>
                    </center>
                    <br>
                </div>
                <hr>

            </div>
        </div>


        <div id="right" style="height: 720px; width: 100%; background-image: url(../img/back.jpeg);">
            <div id="add">
                <div id="all">
                    <form method="POST" action="addgoods.jsp">
                        <center>
                            <h2>商品新增</h2>

                            <h3>商品編號：<input type="text" name="Id" required></h3><br>
                            <h3>商品名稱：<input type="text" name="name" required></h3><br>
                            <table>
                                <tr>
                                    <h3>圖片：</h3>
                                    <td><input type="file" name="image1" required></td>
                                </tr><br>
                                <tr>
                                    <td><input type="file" name="image2"></td>

                                </tr>
                                <tr>
                                    <td><input type="file" name="image3"></td>

                                </tr>
                                <tr>
                                    <td><input type="file" name="image4"></td>

                                </tr>
                                <tr>
                                    <td><input type="file" name="image5"></td>

                                </tr>


                                <br>
                                <h3>商品介紹：<input type="text" name="introduce" required></h3><br>
                                <h3>價格：<input type="text" name="price" required></h3><br>
                                <!-- <h3>尺寸：<input type="text" name="size" required></h3><br> -->
                                <!-- <h3>顏色：<input type="text" name="color" required></h3><br> -->
                                <h3>數量：<input type="text" name="stock" required></h3><br>
                                <h3>類別：</h3>
                                <select name="type">
                                    <option value="全部商品">全部商品</option>
                                    <option value="鑄鐵鍋系列">雜誌</option>
                                    <option value="造型陶器">電子書</option>
                                    <!-- <option value="調理配件">調理配件</option> -->
                                </select>
                                <br>
                                <h3>商品資訊：<input type="text" name="produces" required></h3><br>

                                <!-- <h3>商品規格：<input type="text" name="standard" required></h3><br> -->
                                <!-- <h3>適用器具：<input type="text" name="apply" required></h3><br> -->

                                <button id="add-button" type="submit">增加</button>
                        </center>
                    </form>
                </div>
            </div>
        </div>
        <div></div>
        <div>

        </div>
        
    </body>

</html>