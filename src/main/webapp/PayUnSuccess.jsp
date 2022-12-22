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
            width: 10%;
            background-color: rgb(4, 175, 7);
            color: aliceblue;
            border-style: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>

	<%@ include file="header/header.html" %>
    <div class="pay">
        <img src="images/cross-mark.png" alt="Success" width="70px">
	    <h2>Your Payment is not Completed Successfully !</h2>
        <h3>Please try again...</h3>
        <br>
        

         <a href="Home.jsp"> <input type="submit" class="pay-back-profile" value="Back to Home"> </a>
    </div>
    


</body>
</html>
