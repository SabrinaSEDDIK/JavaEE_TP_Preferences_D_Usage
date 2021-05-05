<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	     integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
		<link rel="stylesheet" href="stylePreferences.css">
		<title>Accueil - Vos préférences</title>
	</head>
	<%
		@SuppressWarnings("unchecked")
		List<String> listeCouleurs = (List<String>) application.getAttribute("listeCouleurs");
		String couleur = (String) session.getAttribute("couleur");
		String nbFois = (String) request.getAttribute("nbFois");
	%>
	<body style="color:<%=couleur%>;">
		
		<h1>ACCUEIL</h1>
		<form action="/TPPreferencesDUsage/ServletPreferencesDUsage" method="post">
			<label for="couleur">Vous pouvez choisir la couleur du texte :</label>
	
			<select name="couleur" id="couleur">
			    <option value="">--Choisissez--</option>
			    <option value="blue"><%=listeCouleurs.get(0)%></option>
			    <option value="red"><%=listeCouleurs.get(1)%></option>
			    <option value="green"><%=listeCouleurs.get(2)%></option>
			    <option value="black"><%=listeCouleurs.get(3)%></option>
			</select>
			<button type="submit" name="valider" value="valider" class="btn btn-primary btn-sm">Valider</button>
		</form>
		<br><br><br>
		<a href="/TPPreferencesDUsage/aujourdhui.jsp">Lire notre article "Aujourd'hui..." dans la couleur de votre choix</a>
		<br><br>
		<p>Vous êtes venu <%=nbFois%> fois</p>
	</body>
</html>