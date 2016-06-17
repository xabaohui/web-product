<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>

  </head>
  
  <body>
  <h1>添加分类</h1>
    <form action="addCategoryAction" method="post">
    	分类名称：<input type="text" name="categoryName">
    	<input type="hidden" name="parentId" value="<%=request.getParameter("parentId") %>">
    	<input type="submit" value="添加">
    </form>
  </body>
</html>
