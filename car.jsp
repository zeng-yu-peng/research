<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%
Cookie buy[] = request.getCookies();
int size = buy.length;
for(int i = 0 ;i<size ; i++){
	if(buy[i].getValue().equals("incar")){
		out.print("name:"+buy[i].getName());  //顯示goods1
	}
}
%>