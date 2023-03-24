<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>發佈留言</title>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
	<script type="text/javascript">
		$(function () {
			$("#back").click(function () {
				//location.href ="display.jsp";
				history.back();
			});

			$('#myform').bind(
				'submit',
				function () {
					//alert(123);
					$('input[type=submit]', this).attr('disabled', 'disabled');

					var value = {};
					var x = 0;
					var y = 0;
					var temp = {};
					var rtv = true;
					//alert(123);
					var elements = $(this).serializeArray();
					//alert(123);
					$.each(elements, function (i, element) {
						var tempname = elements[i].name;
						var tempvalue = elements[i].value;
						if (rtv == true && tempname == "title" &&
							tempvalue.trim() == "") {
							EmptyAlert("標題");

							rtv = false;
							//break;
						}
						if (rtv == true && tempname == "name" &&
							tempvalue.trim() == "") {
							EmptyAlert("名字");

							rtv = false;
							//break;
						}
						if (rtv == true && tempname == "desc" &&
							tempvalue.trim() == "") {
							EmptyAlert("內容");
							rtv = false;
							//break;

						}

					});
					if (rtv == true)
						createIFrame();

					//alert(123);
					//this.removeAttr('disabled');
					$('input[type=submit]', this).removeAttr('disabled');
					return rtv;
				});

		});

		function createIFrame() {
			if (!document.getElementById("_hiddenframe")) {
				var frame = document.createElement("iframe");
				frame.setAttribute("name", "_hiddenframe1");
				frame.setAttribute("src", "about:blank");
				frame.setAttribute("frameborder", "0");
				frame.setAttribute("height", "0");
				frame.setAttribute("width", "0");
				frame.setAttribute("id", "_hiddenframe");
				frame.name = "_hiddenframe";
				document.body.appendChild(frame);
				window.frames._hiddenframe.name = "_hiddenframe";
				document.getElementsByTagName("body")[0].appendChild(frame);

			}

		}

		function EmptyAlert(str) {
			alert(str + "不可為空白!");
		}

		function EmptyRadioAlert(str) {
			alert("請選擇一個" + str + "項目!");
		}

		function nvl(str, value) {
			if (str.blank())
				return value;
			else
				return str;
		}
	</script>
	<%=yslifes.tools.CommonDesc.script()%>
</head>

<body>
	<form id="myform" name="myform" action="postAction.jsp" method="post" target="_hiddenframe">
		<table>
			<tr>
				<td>*標題</td>
				<td><input type="text" name="title" /></td>
			</tr>
			<tr>
				<td>*名稱</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>mail(不會公佈)</td>
				<td><input type="text" name="mail" /></td>
			</tr>
			<tr>
				<td>電話(不會公佈)</td>
				<td><input type="text" name="tel" /></td>
			</tr>
			<tr>
				<td colspan="2"><textarea cols="28" rows="10" name="desc"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="submit" value="發表留言" /><input type="button" id="back" value="回留言區" />
				</td>
			</tr>
		</table>
	</form>
</body>

</html>