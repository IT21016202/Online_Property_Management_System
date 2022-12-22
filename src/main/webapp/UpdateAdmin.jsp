<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Neo Property</title>
	<style>
			body{	
				margin: 0%;
				background-image: url(images/update_back.jpg);
				background-color: #231f98;
			}
				
            .update-topic{
                text-align: center;
                font-family: Arial, Helvetica, sans-serif;
                font-size: 20px;
                color: #231f98;
                padding-top: 20px;
            }

            .update-form{
                padding-left: 30px;
                font-family: Arial, Helvetica, sans-serif;
                color: #1F2F98;
                font-size: 17px;
            }

            .input{
                margin: 8px;
                padding: 6px;
				width: 120%;
            }

           .update-btn{
               margin-top: 20px;
               padding: 10px;
			   padding-left: 20px;
			   padding-right: 20px;
               background-color: green;
               border-radius: 5px;
               border-style: none;
               color: #ffffff;
			   margin-bottom: 20px;
           } 

           .update-btn:hover{
               background-color: rgb(0, 255, 0);
			   color: black;
			   transition-duration: 0.5s;
           }

		   .update-table{
			   margin-left: auto;
			   margin-right: auto;
			   text-align: left;
		   }

		   .update{
			   text-align: center;
			   background-color: #ffffffda;
			   margin-left: 25%;
			   margin-right: 25%;
			   border-radius: 30px;
		   }
		   td{
			   font-family: Arial, Helvetica, sans-serif;
			   font-size: 17px;	
		   }
   
	</style>
</head>
<body>
	
	<%@ include file="header/header.html" %>
	
		<%	
			String id = request.getParameter("id");
			String fName = request.getParameter("fName");
			String lName = request.getParameter("lName");
			String username = request.getParameter("username");
			String address = request.getParameter("address");
			String gender = request.getParameter("gender");
			String dob = request.getParameter("dob");
			String phone = request.getParameter("phone");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
		%>
		
        <div class="update">
		
           <h2 class="update-topic">Update Your Details</h2> <br>
            
            <div class="update-div">
                <form action="updateAction" method="post" class="update-form">
                	
                	<!-- Display values -->
                	<table class="update-table">
                		<tr>
                			<td>ID : </td>
                			<td><input type="text" class="input" name="id" value="<%= id %>" readonly> </td>
                		</tr>
                		
                		<tr>
                			<td>First Name : </td>
                			<td><input type="text" class="input" name="fName" value="<%= fName%>"> </td>
                		</tr>
                		
                		<tr>	
                			<td>Last Name : </td>
                			<td><input type="text" class="input" name="lName" value="<%= lName%>"> </td>
                		</tr>
                		
                		<tr>
                			<td>User Name : </td>
                			<td><input type="text" class="input" name="userName" value="<%= username%>"></td>
                		</tr>
                		
                		<tr>
                			<td>Address : </td>
                			<td><input type="text" class="input" name="address" value="<%= address%>"></td>
                		</tr>
                		
                		<tr>
                			<td>Gender : </td>
                			<td><input type="text" class="input" name="gender" value="<%= gender%>"></td>
                		</tr>
                		
                		<tr>
                			<td>Date of Birth : </td>
                			<td><input type="date" class="input" name="dob" min="1962-12-30" max="2004-12-30" value="<%= dob%>"></td>
                		</tr>
                		
                		<tr>
                			<td>Phone Number : </td>
                			<td><input type="text" class="input" name="phone" pattern="[0-9]{10}" title="10 Digits Format" value="<%= phone%>"> </td>
                		</tr>
                		
                		<tr>
                			<td>E - Mail : </td>
                			<td><input type="email" class="input" name="email" value="<%= email%>"></td>
                		</tr>
                		
                		<tr>
                			<td>Password : </td>
                			<td><input type="password" class="input" name="password" pattern="(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must containt at lease one Number and one Lowercase and one Uppercase and at least 8 or more charactors" value="<%= password%>"></td>
                                  		          
               				
                	</table>
             
                    
                    <input type="submit" class="update-btn" name="submit" value="Update">
                </form>
            </div>
        </div>	
        
			<%@ include file="Footer/footer.html" %>	
	</body>
</html>