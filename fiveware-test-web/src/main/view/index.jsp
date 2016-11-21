<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script type="text/javascript">

   	function enviar() { 	
   		if($('#nome').val() == "") {
   			
   			alert('digite o nome');
   			return;	
   			
   		}
		
  		var nome = $('#nome').val();  
	    var sexo = $('input[id="sexo"]:checked').val();  
	    
	    var tipo = $('#tipo option:selected').text(); 
	    var favorito = $("input[name='favorito']").is(':checked');
	    $.ajax({  
	     type : "Get",   
	     url : "addContato.html",   
	     data : "nome=" + nome + "&favorito=" + favorito + "&sexo="  
	       + sexo + "&tipo=" + tipo, 
	     success : function(response) {  
	        alert($('#nome').val() + " Adicionado com sucesso")
	        $('#nome').val('');
	     },  
	     error : function(e) {  
	      alert('Error: ' + e);   
	     }  
	    });  
  	}
</script>
    <style>  
    INPUT.MeuInput {  
         width: 50px;  
         height: 30px;  
    }  
    </style>  
</head>
<body>
	<spring:form id="cadastroForm" commandName="cadastroContato" method="get">
		<table>
			<tr><td>Nome : <element><spring:input path="nome" ></element></spring:input> </td>
			<td>Ativo <spring:checkbox path="favorito" value="true"/></td></tr>
			<tr><td>Tipo : <spring:select path="tipo" items="${tipos}"/></td></tr> 
				
			<tr><td>Sexo : Masculino <input type="radio" id="sexo" name="sexo" value="M" checked="checked" /></td> 
				<td>Feminino <input type="radio" id="sexo" name="sexo" value="F"/></td></tr>
				
			
			<tr><td></td></tr>
			
		</table>
		
		<input type="button" onclick="enviar();" class="MeuInput" value="Salvar" />
	</spring:form>
	
</body>
</html>