<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>

  </head>
  
  <body>
  	<table>
    <c:forEach items="${list}" var="list">
    	<tr>
    		<td>${list.modelName}</td>
    		<td><a href="deleteModelAction?modelId=${list.modelId}"><input type="button" value="删除模型"></a></td>
    		<td><a href="findModelEchoAction?modelId=${list.modelId}"><input type="button" value="修改模型"></a></td>
    		<td><a href="findPropAction?modelId=${list.modelId}"><input type="button" value="查看属性定义"></a></td>
    	</tr>
    </c:forEach>
    </table>
    <a href="model/modelAdd.jsp"><input type="button" value="添加模型"></a>
  </body>
</html>
