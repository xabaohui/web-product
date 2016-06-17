<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>

  </head>
  
  <body>
  	<table>
		<c:forEach items="${list}" var="list">
			<tr>
				<td>${list.productName}</td>
				<td><a href="findProductDetailAction?productId=${list.productId}"><input type="button" value="查看商品详情"></a></td>
				<td><a href="deleteProductAction.action?productId=${list.productId}&categoryId=${categoryId}"><input type="button" value="删除商品"></a></td>
			</tr>
		</c:forEach>
	</table>
  </body>
</html>
