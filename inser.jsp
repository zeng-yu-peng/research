<%@page pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@include file="connectdbstart.jsp"%>
<%
	sql="insert product (name,price,image,type,intro,stock,sold) value(";
	sql+="\""+request.getParameter("name")+"\",";
	sql+="\""+request.getParameter("price")+"\",";
	sql+="\""+request.getParameter("img")+"\",";
	sql+="\"2\",";
	sql+="\""+request.getParameter("content")+"\",";
	sql+="\""+request.getParameter("stock")+"\",";
	sql+="\"0\")";
	con.createStatement().execute(sql);
%>
<html>
<!---新增商品-->
<script>
  alert("新增成功");
</script>
<meta http-equiv=refresh content="0;url=data.jsp">
<%@include file="connectdbend.jsp"%>