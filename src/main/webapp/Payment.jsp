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
				background-color: rgb(10, 0, 68);
			}
		
            .payment{
                position: relative;
                background-color: #ffffff;
                border-radius: 30px;
                margin-left: 25%;
                margin-right: 25%;   
                padding-top: 10px;
                padding-bottom: 20px; 
                padding-left: 10px;
                padding-right: 10x;
				text-align: center;             
            }

            .topic{
                text-align: center;
				color: rgb(0, 0, 0);
				font-size: 22px;
				font-family: Arial, Helvetica, sans-serif;
            }
        
            .pay-btn{
				margin-top: 40px;
                padding: 10px;
                border-radius: 5px;
                border-style: none;
                background-color:#008f0c;
                color: rgb(255, 255, 255);
				font-size: 15px;
				margin-bottom: 20px;               
            }

            .pay-btn :hover{
                background-color: green;
            }

			td{
				text-align: left;
				padding-top: 10px;
				color: rgb(0, 0, 92);
				font-size: 18px;
			}

			.input-box{
				
				padding: 10px;
				border-bottom: 5px;
				border-color: #f1f1f1;
				border-width: 1px;
				width: 85%;
				font-size: 15px;
			}

			.pay-table{
				margin-left: auto;
				margin-right: auto;
				width: 80%
			}
			
			.card-type{
				margin-left: 30px;
			}

			.iamges{
				margin-left: auto;
				margin-right: auto;
			}
			
			
		</style>
</head>
<body>
	
	<%@ include file="header/header.html" %>
		
	<div class="payment">
            <h3 class="topic">Insert your card details here</h3> <br>
             
            <form action="pay" method="post" class="payment-form">

                <div class="images">
                    <input type="radio" name="cardType" class="card-type" value="Visa" required>
                    <label>
                        <img src="images/visa.png" alt="VISA" height="35px">
                    </label>
                    <input type="radio" name="cardType" class="card-type" value="Master" required>
                    <label>
                        <img src="images/master.png" alt="MASTER" height="35px">
                    </label>
                    <input type="radio" name="cardType" class="card-type" value="Amex" required>
                    <label>
                        <img src="images/amex.png" alt="AMEX" height="35px">
                    </label>
                </div>
                
                <br> <br>

				<table class="pay-table">
					<tr>
						<td>Card Holder's Name : </td>
						<td><input type="text" name="cardName" class="input-box" placeholder="Name on Card" required></td>
					</tr>
					
					<tr>
						<td>Card Number : </td>
						<td><input type="text" name="cardNumber" class="input-box" placeholder="16 Digits Number on Card" pattern="[0-9]{16}" title="16 Digits Number" required></td>
					</tr>

					<tr>
						<td>Expire Date : </td>
						<td><input type="text" name="expDate" class="input-box" placeholder="MM/YYYY" required> </td>
					</tr>

					<tr>
						<td>CVV : </td>
						<td><input type="password" name="cvv" class="input-box" placeholder="3 Digits number on Card" pattern="[0-9]{3}" title="3 Digits Number" required>
						</td>
					</tr>
				</table>
            
                <input type="submit" name="proceed" class="pay-btn" value="Proceed to Pay">

            </form>
            
        </div>	
        
        <%@ include file="Footer/footer.html" %>	
	
</body>
</html>