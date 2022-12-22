<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
	    <style>
        .form{
            text-align: center;
            margin-top: 20px;
            font-size: 20px;
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
        }

        .input{
            padding: 5px;
            margin-top: 10px;;
        }

        .btn{
            margin-top: 30px;
            background-color: green;
            color: aliceblue;
            padding: 8px;
            border-radius: 5px;
            border-style: none;
            padding-left: 20px;
            padding-right: 20px;
            font-size: 15px;
        }

        .login-div{
            background-color: antiquewhite;
            border-radius: 30px;
            padding-top: 1px;
            padding-bottom: 20px;
            margin-left: 15%;
            margin-right: 15%;
        }
    </style>

</head>
<body>
	
	<%@ include file="header/header-1.html" %>
		<div class="login-div">
			<form action="log" method="post" class="form">
				Username <input type="text" name="username" class="input" required> <br>
				Password <input type="password" name="password" class="input" required> <br>
				
				<input type="submit" name="submit" value="Login" class="btn"> 
			</form>	
		</div>

</body>

</html>