<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	     integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
		<link rel="stylesheet" href="stylePreferences.css">
		<title>Aujourd'hui ...</title>
	</head>
	<%
		String couleur = (String) session.getAttribute("couleur");
	%>
	<body class="container" style="color:<%=couleur%>">
		<h1>Aujourd'hui ...</h1>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
		incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud 
		exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
		 dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
		  Excepteur sint occaecat cupidatat non proident, sunt in 
		  culpa qui officia deserunt mollit anim id est laborum.</p>
		 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
		incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud 
		exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
		 dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
		  Excepteur sint occaecat cupidatat non proident, sunt in 
		  culpa qui officia deserunt mollit anim id est laborum.</p>
		  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
		incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud 
		exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
		 dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
		  Excepteur sint occaecat cupidatat non proident, sunt in 
		  culpa qui officia deserunt mollit anim id est laborum.</p>
		  
		  <a href="/TPPreferencesDUsage/ServletPreferencesDUsage">Retour</a>
	
	</body>
</html>