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

    <div style="position: absolute;left: 1500px;top: 20px;">
        <form method="POST" action="serverlog.jsp">
            <hr>
            <button type="submit" id="serverout">登出</button>
            <hr>
        </form>
    </div>
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

    <div id="right" style="height: 720px; width: 100%;">
        <%
		try {
		Class.forName("com.mysql.jdbc.Driver");
		try {
			String url="jdbc:mysql://localhost/?serverTimezone=UTC";
			String sql="";
			Connection con=DriverManager.getConnection(url,"root","1234");
			if(con.isClosed())
				out.println("連線建立失敗");
			else {
				sql="USE `bk`";
				con.createStatement().execute(sql);
				sql="SELECT * FROM `addmember`";
				ResultSet rs=con.createStatement().executeQuery(sql);
				rs=con.createStatement().executeQuery(sql);
	%>
        <div align="center">
            <table border="1">
                <caption>
                    <h2>會員管理</h2>
                </caption>
                <tr class="con">
                    <td class="fir">會員</td>
                    <td class="fir">帳號</td>
                    <td class="fir">出生日期</td>
                    <td class="fir">電子郵件</td>
                    <td class="fir">連絡電話</td>
                    <td class="fir">通訊地址</td>
                    <td class="fir">管理</td>
                </tr>
                <% while(rs.next())
                {%>
                <tr class="con">
                    <td><%out.print(rs.getString(2));%></td>
                    <td><%out.print(rs.getString(7));%></td>
                    <td><%out.print(rs.getString(3));%></td>
                    <td><%out.print(rs.getString(4));%></td>
                    <td><%out.print(rs.getString(5));%></td>
                    <td><%out.print(rs.getString(6));%></td>
                    <td>
                        <form method="POST" action="deletemember.jsp">
                            <button type="submit" name="id" class="delete" value="<%= rs.getString(7) %>">刪除</button>
                        </form>
                    </td>
                </tr>
                <%
				}
				%>
            </table>
        </div>
        <%
          con.close();
		  }
		}
		catch (SQLException sExec) {
			   out.println("SQL錯誤"+sExec.toString());
		}
			}
		catch (ClassNotFoundException err) {
			  out.println("class錯誤"+err.toString());
		}
		%>


    </div>
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