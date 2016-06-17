<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>

  </head>
  
  <body>
    <h1>修改模型</h1>
    <form action="updateModelAction" method="post">
    <input type="hidden" name="modelId" value="${model.modelId}">
    	模型名称：<input type="text" name="modelName" value="${model.modelName}"><br>
    	规格1名称：<input type="text" name="spec1Name" value="${model.spec1Name}"><br>
    	规格1取值范围：<input type="text" name="spec1Values" value="${model.spec1Values}"><br>
    	规格2名称：<input type="text" name="spec2Name" value="${model.spec2Name}"><br>
    	规格2取值范围：<input type="text" name="spec2Values" value="${model.spec2Values}"><br>
    	<input type="submit" value="修改模型">
    </form>
  </body>
</html>
