<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<%
String goods = request.getParameter("goods");
Cookie good = new Cookie(goods,"incar"); //Cookie cookie = new Cookie("key","value");
response.addCookie(good);  //response.addCookie("cookie name");

response.sendRedirect("car.jsp"); //轉跳頁面
%>

</html>