<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>

  </head>
  
  <body>
  <h1>修改分类</h1>
    <form action="updateCategoryAction" method="post">
    	分类名称：<input type="text" name="categoryName">
    	<input type="hidden" name="categoryId" value="<%=request.getParameter("categoryId") %>">
    	<input type="submit" value="修改">
    </form>
  </body>
</html>
