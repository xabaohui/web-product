<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>

  </head>
  
  <body>
  	<h1>添加模型</h1>
    <form action="addModelAction" method="post">
    	模型名称：<input type="text" name="modelName"/><br>
    	规格1名称：<input type="text" name="spec1Name"/><br>
    	规格1取值范围：<input type="text" name="spec1Values"/><br>
    	规格2名称：<input type="text" name="spec2Name"/><br>
    	规格2取值范围：<input type="text" name="spec2Values"/><br>
    	<input type="submit" value="添加模型">
    </form>
  </body>
</html>
