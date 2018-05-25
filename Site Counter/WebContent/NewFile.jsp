<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%! 
String user = "james"; 
String pass="Platform";

%>
<body>

	<form action="" method="post">
			<label for="user"> UserName</label>
			<input type="text" id="username" name="username" placeholder="Username" required />
			<label for="password">Password</label>
			<input type="text" id="password" name="password" placeholder="Password" required/>
			<input type="submit" id="submit-button" value="Signin" />
	</form>
<%
if ("POST".equalsIgnoreCase(request.getMethod())) {
	String uname = request.getParameter("username"); 
	String  upass = request.getParameter("password");
	if(uname.equals(user) && upass.equals(pass)){
		out.println("username/password is correct");
	}
}
else {
	out.println("form not submitted");
}

%>
</body>
</html>