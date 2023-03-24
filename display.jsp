<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>留言顯示</title>
	<style>
		.thread {
			width: 280px;
		}

		.thread .title {
			border: 1px solid #00ff0a;
			width: 100%;
			clear: both;
			height: 46px;
		}

		.thread .title .Info {
			float: left;
			width: 70%;
			overflow: hidden;
			height: 100%
		}

		.thread .title .Info .userInfo {
			width: 100%;
			height: 50%
		}

		.thread .title .Info .titleInfo {
			width: 100%;
			height: 50%
		}

		.thread .title .postTime {
			float: left;
			width: 30%;
			height: 100% overflow:hidden;
		}

		.thread .description {
			clear: both;
			width: 100%;
			word-break: break-all;
			border: 1px solid #a0ff0a;
		}
	</style>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js">
	</script>
	<script type="text/javascript">
		$(function () {
			$("#postIt").click(function () {
				location.href = "postIt.jsp";
			});
		});
	</script>
	<%=yslifes.tools.CommonDesc.script()%>
	<%String s = yslifes.tools.StringTool.nvl(request.getParameter("s"),""); %>
</head>

<body>
	<button id="postIt">我要留言</button>
	<form><input type="text" name="s" value="<%=s %>" /><input type="submit" value="查詢" /></form>
	<%
String where ="";
int per_page = 20;
int p = 1 ;
int p_num = 0;
String sp = request.getParameter("p");
if(sp!=null)
{
	try
	{
		p = (Integer.parseInt(sp));
		p_num = (p-1)*per_page;
	}catch(Exception e)
	{

	}

}
if(!s.equals(""))
{
	where = " and (x.post_title like ? or x.post_desc like ?) ";
}
String sql = "select x.* from threads x where x.post_state=1 and x.post_show = 1 "+where +" order by create_time desc limit ? ,"+per_page ;
String sqlCount = "select count(*) as totrec from threads x where x.post_state=1 and x.post_show = 1 "+where ;
logger.debug("SQL :"+sql);
logger.debug("SQL Count:"+sqlCount);
java.sql.Connection con = null;
java.sql.PreparedStatement ps = null;
java.sql.ResultSet rs =null;
int totrec = 0;
try
{
	con = yslifes.db.DataSource.getConnection();
	ps = con.prepareStatement(sqlCount);
	int idx = 0;
	if(!s.equals(""))
	{
		ps.setString(++idx,"%"+s+"%");
		ps.setString(++idx,"%"+s+"%");
	}

	rs = ps.executeQuery();

	if(rs.next())
		totrec = rs.getInt("totrec");

	yslifes.db.Close.Single(rs);
	yslifes.db.Close.Single(ps);
	if(totrec > 0 )	{
	ps =  con.prepareStatement(sql);
	idx = 0;
	if(!s.equals(""))
	{
		ps.setString(++idx,"%"+s+"%");
		ps.setString(++idx,"%"+s+"%");
	}
	ps.setInt(++idx,p_num);
	rs = ps.executeQuery();
	while(rs.next()){
		String title = rs.getString("post_title");
		String desc = rs.getString("post_desc");
		String name = rs.getString("post_name");
		//String tel = yslifes.tools.StringTool.nvl(rs.getString("post_tel"),"");
		//String phone = yslifes.tools.StringTool.nvl(rs.getString("post_tel"),"");
		logger.debug(title);
		logger.debug(desc);
		logger.debug(name);
		String create_time = yslifes.tools.DateTool.DateTimeFormat((rs.getTimestamp("create_time")));
		String time[] = create_time.split(" ");
%>
	<div class="thread">
		<div class="title">
			<div class="Info">
				<div class="userInfo"><%=name %></div>
				<div class="titleInfo"><%=title %></div>
			</div>
			<div class="postTime"><%=time[0] %> <br /><%=time[1] %></div>
		</div>
		<div class="description"><%=desc %></div>
	</div><%}}
	}catch(java.sql.SQLException e){
	logger.info(e);
	e.printStackTrace();
}
	logger.debug(totrec);
	yslifes.tools.SubPages subpage = new yslifes.tools.SubPages(per_page, 41, p,
           6, "display.jsp?s="+s+"&p=");
	out.println("<div style='clear:both'>"+subpage.subPageCss2()+"</div>");
	 %>
</body>

</html>