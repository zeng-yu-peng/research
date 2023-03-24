<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Connection conn = null;
	PreparedStatement ps = null;
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/bk?useSSL=false";
	String username = "root";
	String password = "1234";
	conn = DriverManager.getConnection(url, username, password);
	request.setCharacterEncoding("utf-8");//設置編碼方式，防止中文亂碼
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	String repwd = request.getParameter("repwd");
	String sql = "INSERT register(name,pwd,repwd) VALUES(?,?,?)";
	ps = conn.prepareStatement(sql);
	ps.setString(1, name);
	ps.setString(2, pwd);
  ps.setString(3, repwd);
	int row = ps.executeUpdate();
	if (row > 0) {
		response.sendRedirect("login.jsp");//重新回到登入頁面
	}
%>