package cn.MuJH.newsManager.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.MuJH.newsManager.biz.MessageManager;
import cn.MuJH.newsManager.biz.impl.MessageManagerImpl;
import cn.MuJH.newsManager.entity.Message;
import cn.MuJH.newsManager.entity.PageMsg;

@WebServlet(name = "msg", urlPatterns = { "/msg" })
public class MessageServlet extends HttpServlet {
private static final long serialVersionUID = 1L;
public MessageServlet() {
super();

}


protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request, response);
}

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
MessageManager mm=new MessageManagerImpl();
String opr = request.getParameter("mth");
String author =request.getParameter("author");
String message =request.getParameter("message");
if(opr!=null){
　　if(author!=null || author!=""){
　　SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
　　Message msg=new Message(0,author,message,sdf.format(new Date()));
　　mm.addMsg(msg);
　　}
}else{
　　request.setAttribute("author", author);
　　request.setAttribute("message", message);
}

PageMsg page=new PageMsg();
page.setPageSize(5); //每頁顯示留言條數
int
totalPage=mm.getTotalCount()%page.getPageSize()==0?mm.getTotalCount()/page.getPageSize():mm.getTotalCount()/page.getPageSize()+1;
page.setTotalPage(totalPage);
if(request.getParameter("pageIndex")==null||request.getParameter("pageIndex")==""){
　　 page.setPageIndex(1);
}else{
　　page.setPageIndex(Integer.parseInt(request.getParameter("pageIndex")));
}
List<Message> list=mm.getMessageByPageindex(page.getPageIndex(), page.getPageSize());
  page.setList(list);
  request.setAttribute("page", page);

  request.getRequestDispatcher("message.jsp").forward(request, response);
  }

  }