<%@ page import="javax.servlet.http.*,javax.servlet.*,java.io.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<style>
input[type=text], input[type=password], input[type=email],select {
    width: 100%;
	background-color:#f2fafa;
    padding: 12px 20px;
    border: 1px solid #ccc;
    border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
    width: 100%;
	background-color: #ffa64d;
    color: black;
    padding: 14px 20px;
    border-radius : 4px;
	margin: 8px 0;
	border:none;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #188d82;
}

div {
     margin: 0 400px ;
    border-radius: 5px;
    background-color:  #804000;
     padding: 20px;
}
h1{
   text-align:center;
   color:black;
}
label{
color:white;
}
body
{
 background-image:url("wall1.jpg");
 background-size:cover;
}
</style>
<script>  
function validateform(){   
var password=document.regform.password.value;  
var rpassword=document.regform.rpassword.value;
  
if(password.length<6){  
  alert("Password must be at least 6 characters long.");  
  return false;  

  }  
}  

function  Check_pass(){
    if (document.getElementById('pwd').value==document.getElementById('rpwd').value){

}
else {
alert("password mismatch");
}
}
function pop()
{
	alert("reg success..........");
}
</script>

<body>

<h1>Registration form</h1>

<div>
  <form  action="" name="regform"method="post" onsubmit="return validateform()">
    <label for="name">Name *</label>
    <input type="text" id="name" name="name" placeholder="Enter name" maxlength="20" required><br><br>

    <label for="email" >Email *</label><br>
    <input type="email" id="email" name="email" placeholder="Enter email" required><br><br>

	<label for="add">Address</label>
    <input type="text" id="add" name="address" placeholder="Enter address"><br><br>

	<label for="cnumber">Contact Number</label>
    <input type="text" id="cnumber" name="contact number" maxlength="10"  pattern="[0-9]{10}" title="mobile number should be 10 digits" placeholder="Enter mobile no"><br><br>

    <label for="gndr">Gender</label><br> 
    <input type="radio" name="gender" value="male"><label color=white>Male</label>
    <input type="radio" name="gender" value="female"><label color=white> Female</label><br>
  

    <br> <label for="pwd">Password *</label>
    <input type="password" id="pwd" name="password" placeholder="Enter password" required><br><br>

	<label for="pwd">re enter Password *</label>
    <input type="password" id="rpwd" name="rpassword" placeholder="ReEnter password" onchange='Check_pass();'><br><br>
	<%
		response.setContentType("text/html");
		String name=request.getParameter("name");
		String pwd=request.getParameter("password");

		Connection con=null;
		Statement st=null;
	
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","oracle");
			st=con.createStatement();

           if(name==null||name=="")
           {}
		   if(pwd==null||pwd=="")
           {}
        else
		{
			int r=st.executeUpdate("insert into userdt values('"+name+"','"+pwd+"')");
		  if(r==0)
			{
			  out.println("error");
			}
			else
			{
				response.sendRedirect("home.html");
			}
		}
%>
<input type="submit" value="Register">
  </form>
 </div>
</body>
</html>