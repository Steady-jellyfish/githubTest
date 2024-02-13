<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<label>
	<input name="checkList" class="${param.classVal }" type="checkbox"><span id="listText">${param.addText }</span><br>
</label>