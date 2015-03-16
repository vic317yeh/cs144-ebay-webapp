<%@ page import="edu.ucla.cs.cs144.*" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<!--META BEGIN-->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="keywords" content="ebay, bidding, data, search">
	<!--META END-->
	<title>Pay Now - Ebay</title>

</head>
<body>
<h1>Pay Now</h1>
<p>ID: <%= request.getAttribute("ItemID")%></p> 
<p>Name: <%= request.getAttribute("Name")%></p>
<p>Buy Price: <%= request.getAttribute("Buy_Price")%></p>
<form action="https://<%=request.getServerName()%>:8443<%=request.getContextPath()%>/transaction" method="POST">
	<label>Credit card number</label>
	<input name="card" type="text">
	<button type="submit">Submit</button>
</form>

</body>
</html>
