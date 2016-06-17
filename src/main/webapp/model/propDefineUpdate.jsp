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
	<h1>修改属性定义</h1>
	<input type="hidden" name="propId" value="${define.propId}" />
	<input type="hidden" name="propType" value="${define.propType}" />
	<input type="hidden" name="width" value="${define.width}" />
	<input type="hidden" name="maxLength" value="${define.maxLength}" />
	<input type="hidden" name="validateCode" value="${define.validateCode}" />
	<input type="hidden" name="dateType" value="${define.dateType}" />
	<input type="hidden" name="options" value="${define.options}" />
	<input type="hidden" name="height" value="${define.height}" />
	<form action="updatePropDefineAction" method="post">
		<table>
			<tr>
				<td>类型</td>
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
				<td><input type="text" name="propName"
					value="${define.propName}">
				</td>
			</tr>
			<c:if test="${define.fieldRequired == 1}">
				<tr>
					<td>必填字段：</td>
					<td><input type="radio" name="fieldRequired" value="1" checked="checked"/>是 <input
						type="radio" name="fieldRequired" value="0"/>否</td>
				</tr>
			</c:if>
			<c:if test="${define.fieldRequired == 0}">
				<tr>
					<td>必填字段：</td>
					<td><input type="radio" name="fieldRequired" value="1" />是 <input
						type="radio" name="fieldRequired" value="0" checked="checked" />否</td>
				</tr>
			</c:if>
			<tr>
				<td>属性代码：</td>
				<td><input type="text" name="propCode" value="${define.propCode}"/>
				</td>
			</tr>
			<tr>
				<td>默认值：</td>
				<td><input type="text" name="defaultValue" value="${define.defaultValue}"/>
				</td>
			</tr>
			<tr>
				<td>提示信息：</td>
				<td><input type="text" name="promptMsg" value="${define.promptMsg}"/>
				</td>
			</tr>
			<input type="submit" value="修改">
		</table>
	</form>
</body>
</html>
