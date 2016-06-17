<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>

  </head>
  
  <body>
    	商品名称：<input type="text" name="productName" value="${productDTO.productName}"><br>
    	商品货号：<input type="text" name="productNo" value="${productDTO.productNo}"><br>
    	isbn:<input type="text" name="isbn" value="${productDTO.isbn}"><br>
    	品牌:<input type="text" name="brand" value="${productDTO.brand}"><br>
    	图片:<input type="text" name="productImg" value="${productDTO.productImg}"><br>
    	商品描述:<input type="text" name="productDesc" value="${productDTO.productDesc}"><br>
    	价格:<input type="text" name="productPrice" value="${productDTO.productPrice}"><br>
    	规格1:<input type="text" name="spec1Name" value="${productDTO.spec1Name}"><br>
    	规格1取值范围:<input type="text" name="spec1Values" value="${productDTO.spec1Values}"><br>
    	规格2:<input type="text" name="spec2Name" value="${productDTO.spec2Name}"><br>
    	规格2取值范围:<input type="text" name="spec2Values" value="${productDTO.spec2Values}"><br>
    	分类名称:<input type="text" name="categoryName" value="${productDTO.categoryName}"><br>
    	<hr>
    	<c:forEach items="${productDTO.skuList}" var="skuList">
    		sku编号：<input type="text" name="skuNo" value="${skuList.skuNo}"><br>
    		规格1：<input type="text" name="skuNo" value="${skuList.spec1Value}"><br>
    		规格2：<input type="text" name="skuNo" value="${skuList.spec2Value}"><br>
    	</c:forEach>
    	<hr>
    	<c:forEach items="${productDTO.list}" var="propList">
    		属性名：<input type="text" name="propName" value="${propList.propName}"><br>
    		属性值：<input type="text" name="propValue" value="${propList.propValue}"><br>
    	</c:forEach>
    	<hr>
    	<c:forEach items="${productDTO.labelList}" var="labelList">
    		标签：<input type="text" name="labelName" value="${labelList.labelName}"><br>
    	</c:forEach>
  </body>
</html>
