<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
		
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Neo Property</title>
    <style>
        body{
            margin: 0;
            background-image: url(images/delete_back.jpg);
            background-color: rgb(73, 57, 131);
         }
        .delete{
            text-align: center;
            background-color: rgba(255, 255, 255, 0.827);
            margin-left: 25%;
            margin-right: 25%;
            border-radius: 30px;
        }

        .delete-topic{
            color: rgb(27, 27, 217);
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 
            'Helvetica Neue', sans-serif;
            padding-top: 15px;
        }

        td{
            text-align: left;
            font-size: 16px;
            font-family:Arial, Helvetica, sans-serif;
            padding: 5px;
        }

        .del{
            padding: 5px; 
            border-style: none;
            font-size: 15px;
        }

        .warn{
            font-size: 14px;
            color: red;
            background-color: rgb(252, 227, 227);
            margin-top: 20px;
        }

        .delete-btn{
            margin-top: 30px;
            padding: 10px;
            background-color: rgb(189, 0, 0);
            color: rgb(255, 255, 255);
            border-style: none;
            border-radius: 5px;
            font-size: 15px;
            width: 120px;
            margin-bottom: 20px;
        }

        .delete-btn:hover{
            background-color: rgb(255, 0, 0);
            transition-duration: 0.5s;
        }

        .cancel-btn{
            margin-top: 30px;
            padding: 10px;
            background-color: rgb(0, 104, 201);
            color: rgb(255, 255, 255);
            border-style: none;
            border-radius: 5px;
            font-size: 15px;
            width: 120px;  
            margin-right: 20px; 
            margin-bottom: 20px;   
        }

        .cancel-btn:hover{
            background-color: rgb(0, 132, 255);
            transition-duration: 0.5s;
        }

        .delete-table{
            margin-left: auto;
            margin-right: auto;
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
		
        <div class="delete">
        		
           <h2 class="delete-topic">Delete Administrator's Profile</h2> <br> 
                      
              <div class="delete-div">
            
                <form action="deleteAction" method="post" class="delete-form">
                	
                	<table class="delete-table">
                		<tr>
                			<td>ID : </td>
                			<td><input type="text" class="del" name="id" value="<%= id %>" readonly></td>
                		</tr>
                		
                		<tr>
                			<td>First Name : </td>
                			<td><input type="text" class="del" name="fName" value="<%= fName%>" readonly></td>
                		</tr>
                		
                		<tr>
                			<td>Last Name : </td>
                			<td><input type="text" class="del" name="lName" value="<%= lName%>" readonly></td>
                		</tr>
                		
                		<tr>
                			<td>Username : </td>
                			<td><input type="text" class="del" name="userName" value="<%= username%>" readonly></td>
                		</tr>
                		
                		<tr>
                			<td>Address : </td>
                			<td><input type="text" class="del" name="address" value="<%= address%>" readonly></td>
                		</tr>
                		
                		<tr>
                			<td>Gender : </td>
                			<td><input type="text" class="del" name="gender" value="<%= gender%>" readonly></td>
                		</tr>
                		
                		<tr>
                			<td>Birthday : </td>
                			<td><input type="date" class="del" name="dob" value="<%= dob%>" readonly></td>
                		</tr>
                		
                		<tr>
                			<td>Phone : </td>
                			<td><input type="text" class="del" name="phone" value="<%= phone%>" readonly></td>
                		</tr>
                		
                		<tr>
                			<td>E - mail : </td>
                			<td><input type="email" class="del" name="email" value="<%= email%>" readonly></td>
                		</tr>
                		
                		<tr>
                			<td>Password : </td>
                			<td><input type="password" class="del" name="password" placeholder="Enter Yor Password" required></td>
                	</table>
                
                    <h3 class="warn">- ABOVE PROFILE WILL BE DELETED PERMANENTLY -- THIS ACTION CAN NOT BE UNDONE -</h3> 
                     
              
                    <input type="submit" class="delete-btn" name="delete" value="Delete Account">
                    
                </form>
            </div>
        </div>	
		
		<%@ include file="Footer/footer.html" %>
</body>
</html>