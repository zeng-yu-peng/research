<!-- Step 0: import library -->
<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*, java.util.*, java.io.*"%>
<html>
<head>
<title>addgoods</title>
</head>
<body>
<%
try {
//Step 1: 載入資料庫驅動程式
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫
           sql="use `bk`";
           con.createStatement().execute(sql);
		   request.setCharacterEncoding("UTF-8");
		   String new_No=request.getParameter("No");
		   String new_Id=request.getParameter("Id");
           String new_name=request.getParameter("name");
		   String new_image1=request.getParameter("image1");
		   String new_image2=request.getParameter("image2");
		   String new_image3=request.getParameter("image3");
		   String new_image4=request.getParameter("image4");
		   String new_image5=request.getParameter("image5");
		   String new_introduce=request.getParameter("introduce");
           String new_price=request.getParameter("price");
		   String new_size=request.getParameter("size");
		   String new_color=request.getParameter("color");
		   String new_stock=request.getParameter("stock");
           String new_type=request.getParameter("type");
           String new_produces=request.getParameter("produces");
		   String new_standard=request.getParameter("standard");
		   String new_apply=request.getParameter("apply");



//Step 4: 執行 SQL 指令
			sql="INSERT product (`Id`,`Name`,`image1`,`image2`,`image3`,`image4`,`image5`,`introduce`,`price`,`size`,`color`,`stock`,`type`,`produces`,`standard`,`apply`)";
			sql+="VALUES ('" + new_Id + "', ";
			sql+="'"+new_name+"', ";
			sql+="'"+new_image1+"', ";
			sql+="'"+new_image2+"', ";
			sql+="'"+new_image3+"', ";
			sql+="'"+new_image4+"', ";
			sql+="'"+new_image5+"', ";
			sql+="'"+new_introduce+"', ";
			sql+=new_price+", ";
			sql+="'"+new_size+"', ";
			sql+="'"+new_color+"', ";
			sql+=new_stock+", ";
            sql+="'"+new_type+"', ";
            sql+="'"+new_produces+"', ";
		    sql+="'"+new_standard+"', ";
            sql+="'"+new_apply+"')";

           con.createStatement().execute(sql);
//Step 6: 關閉連線
           con.close();
		   response.sendRedirect("goods_add.jsp");
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
</body>
</html>
