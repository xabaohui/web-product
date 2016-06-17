<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<script type="text/javascript">
	function func() {
		var select = document.getElementById("select").value;
		switch (select) {
		case '文本输入框':
			var input = "宽度：<input type='text' name='width'/>px<br>";
			input += "最大长度：<input type='text' name='maxLength'/><br>";
			input += "验证代码：<input type='text' name='validateCode'/><br>";
			document.getElementById("div").innerHTML = input;
			break;
		case '日期输入框':
			var input = "宽度：<input type='text' name='width'/>px<br>";
			input += "日期格式：<select name='dateType'><option value='yyyy'>yyyy</option>";
			input +="<option value='yyyy-MM'>yyyy-MM</option><option value='MM-dd'>MM-dd</option>";
			input +="<option value='MM-dd HH:mm'>MM-dd HH:mm</option><option value='yyyy-MM-dd'>yyyy-MM-dd</optioin>";
			input +="<option value='yyyy-MM-dd HH:mm:ss'>yyyy-MM-dd HH:mm:ss</option></select><br>";
			document.getElementById("div").innerHTML = input;
			break;
		case '复选框':
			var input = "可选项：<input type='text' name='options'/><br>";
			document.getElementById("div").innerHTML = input;
			break;
		case '单选框':
			var input = "可选项：<input type='text' name='options'/><br>";
			document.getElementById("div").innerHTML = input;
			break;
		case '下拉框':
			var input = "宽度：<input type='text' name='width'/>px<br>";
			var input = "可选项：<input type='text' name='options'/><br>";
			document.getElementById("div").innerHTML = input;
			break;
		case '文本区':
			var input = "宽度：<input type='text' name='width'/>px<br>";
			input += "高度：<input type='text' name='height'/>px<br>";
			input += "最大长度：<input type='text' name='maxLength'><br>";
			document.getElementById("div").innerHTML = input;
			break;
		case '文本编辑器':
			var input = "宽度：<input type='text' name='width'/>px<br>";
			input += "高度：<input type='text' name='height'/>px<br>";
			document.getElementById("div").innerHTML = input;
			break;
		case '图片上传':
			var input = "";
			document.getElementById("div").innerHTML = input;
			break;
		}
	}
</script>
</head>

<body>
	<h1>属性定义</h1>
	<form action="addPropDefineAction" method="post" id="form">
		<table>
			<tr>
				<td>
			<tr>
				<td>类型：</td>
				<td><select id="select" onclick="func()" name="propType">
						<option value="文本输入框">文本输入框</option>
						<option value="日期输入框">日期输入框</option>
						<option value="复选框">复选框</option>
						<option value="单选框">单选框</option>
						<option value="下拉框">下拉框</option>
						<option value="文本区">文本区</option>
						<option value="文本编辑器">本文编辑器</option>
						<option value="图片上传">图片上传</option>
				</select>
				</td>
			</tr>
			<tr>
				<td>属性名：</td>
				<td><input type="text" name="propName" /></td>
			</tr>
			<tr>
				<td>必填字段：</td>
				<td><input type="radio" name="fieldRequired" value="1" />是 <input
					type="radio" name="fieldRequired" value="0" checked="checked" />否</td>
			</tr>
			<tr>
				<td>属性代码：</td>
				<td><input type="text" name="propCode" /></td>
			</tr>
			<tr>
				<td>默认值：</td>
				<td><input type="text" name="defaultValue" /></td>
			</tr>
			<tr>
				<td>提示信息：</td>
				<td><input type="text" name="promptMsg" /></td>
			</tr>
			<tr>
				<td></td>
				<td><div id="div"></div></td>
			</tr>
			</td>
			</tr>
			<tr>
				<td><input type="hidden" name="modelId" value="${modelId}">
					<c:forEach items="${list}" var="list">
						<tr>
							<td>${list.propName}</td>
							<td><a href="deletePropAction.action?propId=${list.propId}"><input
									type="button" value="删除属性定义"> </a></td>
							<td><a
								href="findPropEchoAction.action?propId=${list.propId}"><input
									type="button" value="修改属性定义"> </a></td>
						</tr>
					</c:forEach> <input type="submit" value="添加属性"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
