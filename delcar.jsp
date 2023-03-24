<%
  String product = new String((request.getParameter("product"))); //接收表單
  product_name buy[] = request.getproduct_name(); //接收cookie

  for(int i = 0 ;i<buy.length;i++) { //搜尋cookie
   if(buy[i].getName().equals(product)){ //注意購物車cookies("貨名","buy")，尋找與刪除像匹配的cookie
    buy[i].setMaxAge(0); //將剩餘時效調整為0(刪除cookie)
    response.addproduct_name(buy[i]); //儲存改變
   }
  }
  response.sendRedirect("car.jsp"); //返回購物車網頁
  %>