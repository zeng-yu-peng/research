<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*, java.util.*, java.io.*"%>
<%
	if (session.getAttribute("id") == null)
	{
		%>
<script>
  alert("請先登入");
  location.replace(serverlog.jsp ");
</script>
<%
		return;
	}
%>
<%

	Class.forName("com.mysql.jdbc.Driver");
    String url="jdbc:mysql://localhost/?serverTimezone=UTC";
    String sql="";
	String No = request.getParameter("No");
	String image2 = request.getParameter("image2");
	String image3 = request.getParameter("image3");
	String image4 = request.getParameter("image4");
	String image5 = request.getParameter("image5");
    Connection con=DriverManager.getConnection(url,"root","1234");
	sql="USE `bk`";
	con.createStatement().execute(sql);



if(session.getAttribute("Name") != null ){
    if((request.getParameter("Name"))!=null){
	sql="UPDATE `product` SET `Name`='" + new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8")+"' WHERE `No`='"+session.getAttribute("No")+"'";
	con.createStatement().execute(sql);

	sql="UPDATE `product` SET `image1`='" + request.getParameter("image1") + "' WHERE `No`='" + No + "'";
	con.createStatement().execute(sql);

	sql="UPDATE `product` SET `image2`='" + request.getParameter("image2")+ "' WHERE `No`='" + No + "'";
	con.createStatement().execute(sql);

	sql="UPDATE `product` SET `image3`='" + request.getParameter("image3")+ "' WHERE `No`='" + No + "'";
	con.createStatement().execute(sql);


	sql="UPDATE `product` SET `image4`='" + request.getParameter("image4")+ "' WHERE `No`='" + No + "'";
	con.createStatement().execute(sql);

	sql="UPDATE `product` SET `image5`='" + request.getParameter("image5") + "' WHERE `No`='" + No + "'";
	con.createStatement().execute(sql);

	sql="UPDATE `product` SET `introduce`='" + new String(request.getParameter("introduce").getBytes("ISO-8859-1"),"UTF-8")+"' WHERE `No`='"+session.getAttribute("No")+"'";
	con.createStatement().execute(sql);

	sql="UPDATE `product` SET `price`=" + request.getParameter("price") + "' WHERE `No`='" + No ;
	con.createStatement().execute(sql);

	sql="UPDATE `product` SET `size`='" + new String(request.getParameter("size").getBytes("ISO-8859-1"),"UTF-8")+"' WHERE `No`='"+session.getAttribute("No")+"'";
	con.createStatement().execute(sql);

	sql="UPDATE `product` SET `color`='" +new String(request.getParameter("color").getBytes("ISO-8859-1"),"UTF-8")+"' WHERE `No`='"+session.getAttribute("No")+"'";
	con.createStatement().execute(sql);

	sql="UPDATE `product` SET `stock`=" + request.getParameter("stock") + "' WHERE `No`='" + No ;
	con.createStatement().execute(sql);

	sql="UPDATE `product` SET `type`='" + new String(request.getParameter("type").getBytes("ISO-8859-1"),"UTF-8")+"' WHERE `No`='"+session.getAttribute("No")+"'";
	con.createStatement().execute(sql);

	sql="UPDATE `product` SET `produces`='" + new String(request.getParameter("produces").getBytes("ISO-8859-1"),"UTF-8")+"' WHERE `No`='"+session.getAttribute("No")+"'";
	con.createStatement().execute(sql);

	sql="UPDATE `product` SET `standard`='" + new String(request.getParameter("standard").getBytes("ISO-8859-1"),"UTF-8")+"' WHERE `No`='"+session.getAttribute("No")+"'";
	con.createStatement().execute(sql);

	sql="UPDATE `product` SET `apply`='" + new String(request.getParameter("apply").getBytes("ISO-8859-1"),"UTF-8")+"' WHERE `No`='"+session.getAttribute("No")+"'";
	con.createStatement().execute(sql);
	con.close();
	response.sendRedirect("goods_all.jsp");

}
	else{
	  con.close();//結束資料庫連結
	  response.sendRedirect("goods_add.jsp");


	}
}
else
	response.sendRedirect("goods_add.jsp");
%>