<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

	<title>Neo Property</title>
	
	    <style>
    
			body{	
				margin: 0%;
				background-image: url(images/profile_back.jpg);
			}

			.personal-details-div{
				text-align: center;
				background-color: #ffffffd1;
				border-radius: 30px;
				margin-left: 25%;
				margin-right: 25%;
				margin-top: 10px
			}

			.personal-details{
				padding-top: 10px;
				color: #020088;
				font-size: 25px;
				font-family:'Times New Roman', Times, serif;
				text-align: center;
			}

        	.details-table{
	            margin-left: auto;
				margin-right: auto;
	            padding: 5px;
	            font-size: 18px;
	            text-decoration: solid;
	            font-family: 'Times New Roman', Times, serif;
	            color: #1F2F98;    
       		 }
       		 
       		 .edit-btn{
	            position: relative;
	            padding: 10px;
	            font-size: 15px;
	            margin: 20px;
	            color: #ffffff;
	            background-color: #787FF6;
	            border-style: none;
	            border-radius: 5px; 
        	}

			.edit-btn:hover{
				background-color: #161d91;
				transition-duration: 0.5s;
			}
	        .edit-btn-rm{
	            position: relative;
	            padding: 10px;
	            font-size: 15px;
	            margin: 20px;
	            color: #ffffff;
	            background-color: hsl(0, 100%, 75%);
	            border-style: none;
	            border-radius: 5px;
	        }

			.edit-btn-rm:hover{
				background-color: #ff0000;
				transition-duration: 0.5s;
			}
	        
	        td{
				padding: 10px;
				color: #000000;
				text-align: left;
				font-family: Arial, Helvetica, sans-serif;	
				font-size: 17px						
			}
		</style>
</head>

	<body>
	
		<%@ include file="header/header.html" %>			
		<br>
	
		<div class="personal-details-div">
			<h3 class="personal-details">Personal Details</h3>
        
        	<div class="p-details">
        	
        	 <!-- Retrieve data from database in login -->
        	<c:forEach var = "admin" items="${adminDetails}">
        	
        		<c:set var="id" value="${admin.id}"/>
	        	<c:set var="fName" value="${admin.fName}"/>
	        	<c:set var="lName" value="${admin.lName}"/>
	        	<c:set var="username" value="${admin.username}"/>
	        	<c:set var="address" value="${admin.address}"/>
	        	<c:set var="gender" value="${admin.gender}"/>
	        	<c:set var="dob" value="${admin.dob}"/>
	        	<c:set var="phone" value="${admin.phone}"/>
	        	<c:set var="email" value="${admin.email}"/>
	        	<c:set var="password" value="${admin.password}" />
        	
        	<!-- Display data -->
        	<table class="details-table">
        		<tr>
        			<td>ID : </td>
        			<td>${admin.id}</td>
        		</tr>
        		
        		<tr>
        			<td>First Name : </td>
        			<td>${admin.fName}</td>
        		</tr>
        		
        		<tr>
        			<td>Last Name : </td>
        			<td>${admin.lName}</td>
        		</tr>
        		
        		<tr>
        			<td>User Name : </td>
        			<td>${admin.username}</td>
        		</tr>
        		
        		<tr>
        			<td>Address : </td>
        			<td>${admin.address}</td>
        		</tr>
        		
        		<tr>
        			<td>Gender : </td>
        			<td>${admin.gender}</td>
        		</tr>
        		
        		<tr>
        			<td>Date of Birth : </td>
        			<td>${admin.dob}</td>
        		</tr>
        		
        		<tr>
        			<td>Phone Number : </td>
        			<td>${admin.phone}</td>
        		</tr>
        		
        		<tr>
        			<td>E-mail : </td>
        			<td>${admin.email}</td>
        		</tr>
        		
        		<!--  
        		<tr>
        			<td>Password : </td>
        			<td>${admin.password}</td>
        		</tr>
        		-->
        		
        	</table>
       	
            </c:forEach>
            
       		<!-- Passing current values to update page -->
            <c:url value="UpdateAdmin.jsp" var="adminUpdate">
            
            	<c:param name="id" value="${id}"/>
            	<c:param name="fName" value="${fName}"/>
            	<c:param name="lName" value="${lName}"/>
            	<c:param name="username" value="${username}"/>
            	<c:param name="address" value="${address}"/>
            	<c:param name="gender" value="${gender}"/>
            	<c:param name="dob" value="${dob}"/>
            	<c:param name="phone" value="${phone}"/>
            	<c:param name="email" value="${email}"/>
            	<c:param name="password" value="${password}" />
            
            </c:url>
                                    
		        <a href="${adminUpdate}"> <input type="submit" class="edit-btn" name="update" value="Update Profile"> </a>
		      
		        
		    <!-- Passing current values to delete page -->
		    <c:url value="DeleteAdmin.jsp" var="adminDelete">
            
            	<c:param name="id" value="${id}"/>
            	<c:param name="fName" value="${fName}"/>
            	<c:param name="lName" value="${lName}"/>
            	<c:param name="username" value="${username}"/>
            	<c:param name="address" value="${address}"/>
            	<c:param name="gender" value="${gender}"/>
            	<c:param name="dob" value="${dob}"/>
            	<c:param name="phone" value="${phone}"/>
            	<c:param name="email" value="${email}"/>
            	<c:param name="password" value="${password}" />
            </c:url>
            
		        <a href="${adminDelete}"> <input type="submit" class="edit-btn-rm" name="delete" value="Delete Account"> </a>
      
			</div>           	
  		</div>	
  		
  		<%@ include file="Footer/footer.html" %>		
	</body>  
</html>