<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Insert title here</title>
  <script type="text/javascript" src="js/jquery1.8.0.min.js"></script>
</head>

<body style="align-items: center;">

  <h1>留言板</h1>
  <c:forEach items="${page.list }" var="msg">
    <p>姓名：${msg.author }</p>
    <p>內容：${msg.message }</p>
    <p>發表時間：${msg.pubdate }</p>
  </c:forEach>
  <input type="button" value="上一頁" onclick="fenye(${page.pageIndex-1})" <c:if test="${page.pageIndex eq 1 }"></c:if>


  <input type="button" value="下一頁" onclick="fenye(${page.pageIndex+1})" <c:if
    test="${page.pageIndex eq page.totalPage }"></c:if>




  <form action="msg?mth=save" method="post" id="myform" onsubmit="return check()">
    <p>姓名：<input type="text" name="author" id="author" value="${author }" /></p>
    <p>留言：<input type="text" name="message" id="message" value="${message }" /></p>
    <p><input type="submit" value="發表留言" /></p>
    <input type="hidden" name="pageIndex" id="pageIndex">
  </form>

  <script>
    function check() {
      if ((document).getElementById("author").value == "") {
        alert("用戶名不能為空");
        document.getElementById("author").focus();
        return false;
      }
      if ((document).getElementById("message").value == "") {
        alert("用戶名不能為空");
        document.getElementById("message").focus();
        return false;
      }
      return true;
    }

    function fenye(pageIndex) {
      document.getElementById("pageIndex").value = pageIndex;
      document.getElementById("myform").action = "msg";
      document.getElementById("myform").submit();
    }
  </script>
</body>

</html>