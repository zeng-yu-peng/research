<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>留言</title>
<%=yslifes.tools.CommonDesc.script()%>
</head>
<body>
<script type="text/javascrip">
<%String error = "";
			String name = request.getParameter("name");
			if (name == null || name.trim().equals(""))
				error += "名稱必需填寫!\\r\\n";
			String title = request.getParameter("title");
			if (title == null || title.trim().equals(""))
				error += "標題必需填寫!\\r\\n";
			String mail = yslifes.tools.StringTool.nvl(
					request.getParameter("mail"), "");
			String tel = yslifes.tools.StringTool.nvl(
					request.getParameter("tel"), "");
			String desc = request.getParameter("desc");
			if (desc != null)
				desc = yslifes.tools.StringTool.reFormat(desc);
			if (desc == null || desc.trim().equals(""))
				error += "描述內容不可不填!\\r\\n";
			else if (desc.length() > 2000)
				error += "描述內容不可超過2000字元!\\r\\n";
			if (error.equals("")) {
				java.sql.Connection con = null;
				java.sql.PreparedStatement ps = null;
				try {
					String sql = "insert into threads(post_name,post_title,post_mail,post_tel,post_desc) values(?,?,?,?,?)";
					con = yslifes.db.DataSource.getConnection();
					ps = con.prepareStatement(sql);
					int idx = 0;
					ps.setString(++idx, yslifes.tools.StringTool.reFormat(name));
					ps.setString(++idx,
							yslifes.tools.StringTool.reFormat(title));
					ps.setString(++idx, yslifes.tools.StringTool.reFormat(mail));
					ps.setString(++idx, yslifes.tools.StringTool.reFormat(tel));
					ps.setString(++idx, desc);
					logger.debug("PostAction:" + desc);
					ps.executeUpdate();
				} catch (java.sql.SQLException e) {
					logger.info(e);
					e.printStackTrace();
					error = "資料操作錯誤!";
				}
			}
			out.println("var message = '" + error + "'");%>
	if (message == "") {
		alert("存檔成功!");
		top.location.replace("display.jsp");
	} else {
		alert(message);
	}
</script>
</body>
</html>