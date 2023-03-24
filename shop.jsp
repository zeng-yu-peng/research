<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

 <%@ page import="java.sql.*"%>



 <html>



<head>

   <title>在線購物</title>

   </head>

 <%

      //裝載MySQL5.5的JDBC驅動

    Class.forName("com.mysql.jdbc.Driver").newInstance();

     //建立數據庫連接

     String url="jdbc:mysql://localhost/?serverTimezone=UTC";

     Connection conn= DriverManager.getConnection(url);

     //建立一個Statement對象，用於執行SQL語句

     Statement stat = conn.createStatement();

     //執行查詢並得到查詢結果

     String sql = "select * from shop";

     ResultSet rs = stat.executeQuery(sql);

   %>



<body>

  21. <h2>在線購物</h2>


  <hr>

   <table border="1" width="600">

     <tr bgcolor="#dddddd">

       <td align="center" width="80">商品縮圖</td>

       <td align="center">商品摘要</td>

       <td align="center" width="100">在線購買</td>

       </tr>

     <%

             String bm,name,price,info,img;

             //將查詢結果集中的記錄輸出到頁面上

             while (rs.next()){

                 //從當前記錄中讀取各字段的值

                 img = rs.getString("SP_PIC").trim();

                 bm = rs.getString("SP_NO").trim();

                 name = rs.getString("SP_NAME").trim();

                 price = rs.getString("SP_PRICE").trim();

                info = rs.getString("SP_INFO").trim();



                 out.println("<tr>");

                 out.println("<td><img src='"+ img +"' border=0 height=60 width=60></td>");

                 out.println("<td>");

                 out.println("商品編號："+ bm +"<br>");

                 out.println("商品名稱："+ name +"<br>");

                 out.println("商品價格："+ price +"元<br>");

                 out.println("商品簡介："+ info +"<br>");

                 out.println("</td>");

                 out.println("<td><a href='buy.jsp?op=add&bm="+bm+"'>放入購物車</a></td>");

                 out.println("</tr>");

             }

         %>

     </table>

   <br>

   <a href="cart.jsp">查看購物車</a>

   <a href="buy.jsp?op=clear">清空購物車</a>

   </body>



</html>