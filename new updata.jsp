<%@page contentType="text/html; charset=utf-8" language="java"%>
<%@page pageEncoding="utf-8"%>
<%@include file="connectdbstart.jsp"%>
<%
	sql="update product set name=\""+request.getParameter("name")+"\",price=\""+request.getParameter("price")+"\",image=\""+request.getParameter("img")+"\",intro=\""+request.getParameter("content")+"\",stock=\""+request.getParameter("stock")+"\" where id="+request.getParameter("id");
	con.createStatement().execute(sql);
%>
<script>
	alert("修改成功");
</script>
<meta http-equiv=refresh content="0;url=data.jsp">
<%@include file="connectdbend.jsp"%>
