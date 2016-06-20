<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8" language="java"%>
<html>
<head>
<title>Metrix: Главная страница</title>
<link type="text/css" href="<%=request.getContextPath()%>/resources/css/tables.css" rel="stylesheet"/>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/tables.js">
</script>
</head>
<jsp:include page="../fragments/header.jsp"></jsp:include>
<body>
<div class="jumbotron">
<div class="container">
<div class="system">
<h1>Алгоритм "Кластеризация". Шаг 3. Результат групповой оценки.</h1>
<table class="table">
<thead>
<tr>
<th></th>
<th></th>
</tr>
<tr>
</thead>
<c:forEach var="groupGrade" items="${groupGrades}">
<tr>
<td>
${groupGrade.project.project_id} (${groupGrade.project.name})
</td>
<td>
${groupGrade.criterion.criterion_id} (${groupGrade.criterion.name})
</td>
<td>
${groupGrade.grade}
</td>
</tr>
</c:forEach>
<tr>
<td colspan="3" align="left">
<button class="btn btn-primary" onclick="location.href='/second2/${userid}'">Вернуться</button>
</td>
<td colspan="3" align="right">
<button class="btn btn-primary" onclick="location.href='/fourth/${userid}'">Далее</button>
</td>
</tr>
</table>
</div>
</div>
</div>
</body>
<jsp:include page="../fragments/footer.jsp"></jsp:include>
</html>