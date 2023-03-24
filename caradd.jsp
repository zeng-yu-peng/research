<%@page contentType="text/html; charset=utf-8" language="java"%>
<%@page pageEncoding="utf-8"%>
<%@include file="connectdbstart.jsp"%>
<%
    if(session.getAttribute("username")!=null){
        //set:購買數量
        sql="INSERT cars (memberid,productid,amount) VALUES ('"+session.getAttribute("username")+"','"+request.getParameter("productid")+"','"+request.getParameter("set")+"')";
        con.createStatement().execute(sql);
        response.sendRedirect("../member/cart.jsp");
    }
    else{
        response.sendRedirect("login.html");
    }
%>
<%@include file="connectdbend.jsp"%>
