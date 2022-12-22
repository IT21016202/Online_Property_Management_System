<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

	<style>
            body{
                margin: 0%;
                padding: 0%;
            }

            .top{
                font-size: 500%;
                color: rgb(44, 0, 111);
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                text-align: center;
                margin-bottom: 0px;
                margin-top: 50px;
            }

            .des{
                text-align: center;
                color: rgb(120, 120, 120);
                margin-top: 0px;
            }

            .img-div{
                text-align: center;
                margin-top: 50px;  
                margin-bottom: 50px; 
            }

            .img{
                padding: 5px;
                border-radius: 20px;
            }
            
        </style>
</head>
<body>

	<%@ include file="header/header-1.html" %>
	
	    <h1 class="top">NEO PROPERTY</h1>
        <h3 class="des">-- Reserve Your Dream Propery -- </h3>

        <div class="img-div">
            <img src="images/home1.jpg" width="25%" class="img">
            <img src="images/home2.jpg" width="25%" class="img">
            <img src="images/home3.jpg" width="25%" class="img">
        </div>
        
    <%@ include file="Footer/footer.html" %>
    
</body>
</html>