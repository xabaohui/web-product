<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
	<script type="text/javascript">
		function addSku(count){
    		var div = document.getElementById("div");
    		var p = document.createElement("p");
			div.appendChild(p);
			p.id="p"+count;
			var pid = "p"+count;
    		var url = document.getElementById(pid).innerHTML;
			url += "sku编号：<input type='text' name='skuNo'><br>";
			url+="规格1取值：<input type='text' name='spec1'><br>规格2取值：<input type='text' name='spec2'>";
    		count++;
			url+="<input type='button' name='button' value='继续添加sku' onclick='addSku("+count+")'><br>";
    		document.getElementById(pid).innerHTML += url;
		}
	</script>
  </head>
  
  <body>
    <h1>添加商品</h1>
    <form action="addProductAction" method="post">
    	<input type="hidden" name="categoryId" value="${categoryId}">
    	<table>
    		<c:forEach items="${list}" var="list">
	    		<tr>
	    			<input type="hidden" name="propId" value="${list.propId}"/>
	    			<td>${list.propName}:</td>
	    			<td><input type="text" name="propValue"></td>
	    		</tr>
    		</c:forEach>
    	</table>
    	<hr>
    	商品名称：<input type="text" name="addToProductDTO.productName"><br>
    	商品货号：<input type="text" name="addToProductDTO.productNo"><br>
    	商品价格：<input type="text" name="productPrice"><br>
    	品牌：<input type="text" name="addToProductDTO.brand"><br>
    	商品isbn：<input type="text" name="addToProductDTO.isbn"><br>
    	图片路径：<input type="text" name="addToProductDTO.productImg"><br>
    	商品描述：<input type="text" name="addToProductDTO.productDesc"><br>
    	规格1名称：<input type="text" name="addToProductDTO.spec1Name"><br>
    	规格1取值范围：<input type="text" name="addToProductDTO.spec1Values"><br>
    	规格2名称：<input type="text" name="addToProductDTO.spec2Name"><br>
    	规格2取值范围：<input type="text" name="addToProductDTO.spec2Values"><br>
    	<hr>
    	<div id="div">
    		<span id="span">
	    		sku编号：<input type="text" name="skuNo" ><br>
	    		规格1取值：<input type="text" name="spec1"><br>
	    		规格2取值：<input type="text" name="spec2"><input type="button" id="button" value="继续添加sku" onclick="addSku(0)"><br>
    		</span>
    	</div>
    	<input type="submit" value="添加商品">
    </form>
  </body>
</html>
