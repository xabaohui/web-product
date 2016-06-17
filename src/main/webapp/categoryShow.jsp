<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>

  </head>
  
  <body>
  <table>
  	<c:forEach items="${list}" var="list">
  		<tr>
  			<td><a href="findCategoryByParentIdAction?parentId=${list.categoryId}">${list.categoryName}</a></td>
  			<td><a href="categoryAdd.jsp?parentId=${list.parentId}"><input type="button" value="添加同级分类"></a></td>
	    	<td><a href="categoryAdd.jsp?parentId=${list.categoryId}"><input type="button" value="添加子分类"></a></td>
	    	<td><a href="categoryUpdate.jsp?categoryId=${list.categoryId}"><input type="button" value="修改分类"></a></td>
	    	<td><a href="deleteCategoryAction.action?categoryId=${list.categoryId}"><input type="button" value="删除分类"></a></td>
	    	<td><a href="findPropAction.action?categoryId=${list.categoryId}"><input type="button" value="查看属性"></a></td>
	    	<td><a href="findPropToAddProductAction.action?categoryId=${list.categoryId}"><input type="button" value="添加商品"></a></td>
	    	<td><a href="findProductAction.action?categoryId=${list.categoryId}"><input type="button" value="查看商品"></a></td>
  		</tr>
  	</c:forEach>
  </table>
  </body>
</html>
