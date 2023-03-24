<%@page contentType="text/html; charset=utf-8" language="java"%>
<%@page pageEncoding="utf-8"%>
<%@include file="connectdbstart.jsp"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>留言區</title>
		<style type="text/css" media="screen">
			@import url(assert/css/common.css);
			form{
				margin: 0 auto;
    			width: 200px;
			}
			textarea{
				border-radius: 5px;
			    line-height: 25px;
			    transition: 0.5s;
			}
			textarea:hover{
				box-shadow: 0 0 5px #77aae7;
			}
			table{margin: 40px auto}
			td{padding: 10px;}
		</style>
	</head>
	<body>
		<table>
            <%
                String proid = ""+request.getParameter("proid");
                sql="SELECT * FROM product WHERE id="+proid;
                ResultSet Rs = con.createStatement().executeQuery(sql);
                int num=0;
                String name="";
                String intro="";
                String imageplace="";
                int price=0;
                while(Rs.next()){
                    imageplace = Rs.getString("Image");
                    name = Rs.getString("name");
                    intro = Rs.getString("intro");
                    price = Rs.getInt("price");
                }
            %>
			<tr>
				<td rowspan="3">
                    <%out.print("<img style='width: 200px'src=assert/img/product/"+imageplace+">");%>
                </td>
				<td>商品名稱 : <%=name%></td>
			</tr>
			<tr>
				<td style="width: 250px">商品介紹 : <%=intro%></td>
			</tr>
			<tr>
				<td>商品價格 : <%=price%></td>
			</tr>
		</table>
		<hr style='width: 80%'>
		<form method="post" action="add.jsp" name=com>
            <%out.print("<input type='text' name='productid' style='display:none' value='"+proid+"'>");%>
			<div><span>評價 : </span>
			<select name="star" required style="height: 30px">
				<option value="5">五顆星</option>
				<option value="4">四顆星</option>
				<option value="3">三顆星</option>
				<option value="2">二顆星</option>
				<option value="1">一顆星</option>
			</select></div><br>
			<div><span style="position: relative;bottom: 10px">留言 : </span><div style='text-align: center'>
			<textarea cols="35" rows="6" placeholder="說點什麼吧" name=con></textarea>
			<input style="text-align: center" class=but type=button onclick='co()' value=送出></div></div>
		</form>
		<script type="text/javascript">
		function co(){
			if(com.con.value.length<5)
				alert("評論須超過5個字");
			else if(com.con.value.length>100)
				alert("評論不可超過100個字");
			else
				com.submit();
		}
		</script>
	</body>
</html>
<%@include file="connectdbend.jsp"%>
