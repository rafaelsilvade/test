<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Contatos</title>
</head>
<body>
	<table>
		<tr>
			<th> Nome </th>
			<th> Ativo </th>
			<th> Sexo </th>
			<th> Tipo </th>
		</tr>
		
		<c:forEach begin="1" end="10" value="#{contatos}" var="contato">
			<tr>
				<td>  <c:out value="${contato.nome}" /> </td>
				<td>  <input type="checkbox" disabled="true" checked="${contato.ativo}"> </td>
				<td>  <c:out value="${contato.sexo}" /> </td>
				<td>  <c:out value="${contato.tipo}" /> </td>
			</tr>		
		</c:forEach>
		

	</table>
</body>
</html>