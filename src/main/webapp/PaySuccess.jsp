<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

    <style>
        .pay{
            text-align: center;
            margin-top: 5%
        }

        .pay-back-profile{
            padding: 7px;           
            background-color: rgb(4, 175, 7);
            color: aliceblue;
            border-style: none;
            border-radius: 5px;
            padding-left: 15px;
            padding-right: 15px; 
        }
    </style>
</head>
<body>

	<%@ include file="header/header.html" %>
	
    <div class="pay">
        <img src="images/tick-mark.png" alt="Success" width="50px">
	    <h2>Your Payment is Successfully Completed</h2>
        <p>Ref no : N1E5O8 </p> <br>

         <a href="Home.jsp"> <input type="submit" class="pay-back-profile" value="Back to Home"> </a>
    </div>

    
	
</body>
</html>