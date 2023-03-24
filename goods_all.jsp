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
</head>

<body>

  <div id="left">
    <div id="content-left">

      <a href="server_page.jsp"><img src="img/shop-removebg-preview.png" width="150px" height="140px" id="photo"></a>
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

    </div>
  </div>

  <div id="right" style="height: 1000px; width: 200%;">
    <%
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost/?serverTimezone=UTC";
		String sql="";
		Connection con=DriverManager.getConnection(url,"root","1234");
		Statement stmt=con.createStatement();
		ResultSet rs=null;
		sql="USE `store`";
		con.createStatement().execute(sql);

		sql="SELECT * FROM `product`";
		rs=con.createStatement().executeQuery(sql);



	%>
    <div class=" member">
      <table border="1">
        <caption>
          <h2>商品管理</h2>
        </caption>
        <tr class="con">
          <td class="fir">商品編號</td>
          <td class="fir">商品名稱</td>
          <td class="fir">類別</td>
          <td class="fir">圖片</td>
          <td class="fir">商品介紹</td>
          <td class="fir">價格</td>
          <td class="fir">尺寸</td>
          <td class="fir">顏色</td>
          <td class="fir">數量</td>
          <td class="fir">商品資訊</td>
          <td class="fir">商品規格</td>
          <td class="fir">適用器具</td>
          <td class="fir">管理</td>
        </tr>
        <!--1-->

        <%
				int index = 1;
				while (rs.next())
				{
				%>
        <tr class="con">
          <form method="POST" action="updateproduct.jsp">
            <td><%= rs.getString("Id") %></td>
            <td><input type="text" name="name" value="<%= rs.getString("Name") %>"></td>
            <td>
              <select name="type" value="<%= rs.getString("type") %>">
                <option value="全部商品" <%= (rs.getString("type").equals("全部商品") ? "selected" : "") %>>
                  全部商品
                </option>
                <option value="雜誌" <%= (rs.getString("type").equals("雜誌") ? "selected" : "") %>>
                  雜誌
                </option>
                <option value="電子書" <%= (rs.getString("type").equals("電子書") ? "selected" : "") %>>
                  電子書
                </option>
              </select>
            </td>
            <td>
              <div>
                <input type="file">
                <%
								if (rs.getString("image1") == null || rs.getString("image1").equals(""))
								{
							%>
                <input type="hidden" name="image1" value="<%= rs.getString("image1") %>">

                <%
								}
								else
								{
							%>
                <input type="hidden">
                <%
								}
							%>
              </div>
              <div>
                <input type="file">
                <%
								if (rs.getString("image2") == null || rs.getString("image2").equals(""))
								{
							%>
                <input type="hidden" name="image2" value="<%= rs.getString("image2") %>">

                <%
								}
								else
								{
							%>
                <input type="hidden">
                <%
								}
							%>
              </div>
              <div>
                <input type="file">
                <%
								if (rs.getString("image3") == null || rs.getString("image3").equals(""))
								{
							%>
                <input type="hidden" name="image3" value="<%= rs.getString("image3") %>">

                <%
								}
								else
								{
							%>
                <input type="hidden">
                <%
								}
							%>
              </div>
              <div>
                <input type="file">
                <%
								if (rs.getString("image4") == null || rs.getString("image4").equals(""))
								{
							%>
                <input type="hidden" name="image4" value="<%= rs.getString("image4") %>">

                <%
								}
								else
								{
							%>
                <input type="hidden">
                <%
								}
							%>
              </div>
              <div>
                <input type="file">
                <%
								if (rs.getString("image5") == null || rs.getString("image5").equals(""))
								{
							%>
                <input type="hidden" name="image5" value="<%= rs.getString("image5") %>">

                <%
								}
								else
								{
							%>
                <input type="hidden">
                <%
								}
							%>
              </div>
            </td>

            <td><input type="text" name="introduce" value="<%=rs.getString("introduce")%>"></td>
            <td><input type="text" name="price" value="NT$<%=rs.getString("price")%>"></td>
            <td><input type="text" name="size" value="<%=rs.getString("size")%>"></td>
            <td><input type="text" name="color" value="<%=rs.getString("color")%>"></td>
            <td><input type="text" name="stock" value="<%=rs.getString("stock")%>"></td>
            <td><input type="text" name="produces" value="<%=rs.getString("produces")%>"></td>
            <td><input type="text" name="standard" value="<%=rs.getString("standard")%>"></td>
            <td><input type="text" name="apply" value="<%=rs.getString("apply")%>"></td>



            <td>
              <button type="submit" class="delete" value="修改">修改</button>

          </form>





          <form method="post" action="deleteproduct.jsp">
            <!--刪除商品-->

            <button type="submit" class="delete" value="<%= rs.getString("No") %>">刪除</button>
            <input type="hidden" value="<%= rs.getString("No") %>" name="No" />
            </td>
          </form>


        </tr>


        <%
					index++;
				}
				%>
      </table>
    </div>
  </div>






</body>

</html>