<%@page contentType="text/html; charset=utf-8" language="java"%>
<%@page pageEncoding="utf-8"%>
<%@include file="connectdbstart.jsp"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>後臺資料</title>
		<style type="text/css" media="screen">
		@import url(assert/css/common.css);
			table{
				border-collapse: collapse;
				margin:0 auto;
				width: 85%;
			}
			main{
				text-align: center;
				width:100%;
				margin-top: 25px;
			}
			th,td{
				border:1px solid grey;
				padding:10px;
			}
			form{
				margin-top:20px;
			}
			input.n{
				background-color: #337ab7;
    			border-color: #2e6da4;
			}
			input.n:hover{
				cursor: pointer;
				background-color: #286090;
    			border-color: #204d74;
			}
			input.n,input.s{
				margin:15px;
			}
			input.n:active{
				color:grey;
			}
			input.t{
				line-height: 25px;
    			font-size: 17px;
    			padding-left: 10px;
    			border-style: ridge;
			}
		</style>
	</head>
	<body>
		<main>
			<a href="newproduct.jsp"><input class=s type=button value=新增></a>
			<form method="get">
				<table>
					<tr>
						<th>商品編號</th>
						<th>商品名稱</th>
						<th>商品圖片</th>
						<th>商品簡介</th>
						<th>商品價格</th>
						<th>商品庫存</th>
						<th>商品更新</th>
					</tr>
		<%
			sql="select * from product";
			ResultSet re=con.createStatement().executeQuery(sql);
			while(re.next()){
		%>
					<tr>
						<td><%=re.getString("id")%></td>
						<td><%=re.getString("name")%></td>
						<td><img style='width:60px' src=assert/img/product/<%=re.getString("image")%>></td>
						<td><%=re.getString("intro")%></td>
						<td><%=re.getString("price")%></td>
						<td><%=re.getString("stock")%></td>
						<td>
							<a href=update.jsp?id=<%=re.getString("id")%>><input class=s type=button value=編輯></a>
							<a href=updatedelete.jsp?id=<%=re.getString("id")%>><input class=n type=button value=刪除 ></a>

						</td>
					</tr><%}%>
				</table>
			</form>

		</main>
	</body>
</html>
<%@include file="connectdbend.jsp"%>