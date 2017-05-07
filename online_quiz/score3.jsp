<!doctype html>
<html>
<head>
 <style>
body
{
 background-image:url("wall3.jpg");
 background-size:cover;
}
 div
 {
	 color:white;
   position:relative;
   margin:0 515px;
   color:white;
 }
 .button {
    background-color: #4CAF50; 
    border: none;
    color: white;
    padding: 15px 32px;
    font-size: 16px;
    margin:0 520px;
    cursor: pointer;
	border-radius:5px;
}
input[type=text]
{
 padding: 14px 20px;
}
a {
    background-color: #63d6c2;
    color: white;
    padding: 14px 25px;
    text-align: center;
    text-decoration: none;
	margin:490px;
}

a:hover{
    background-color: red;
}
 </style>
</head>
<body>

   <div>
	   <%
	   int marks=0;
        String q1=request.getParameter("Q1");
         String q2=request.getParameter("Q2");
String q3=request.getParameter("Q3");
String q4=request.getParameter("Q4");
String q5=request.getParameter("Q5");
if(q1.equals("c"))
{
	marks++;
}
if(q2.equals("d"))
{
	marks++;
}
if(q3.equals("a"))
{
	marks++;
}
if(q4.equals("c"))
{
	marks++;
}
if(q5.equals("a"))
{
	marks++;
}
out.print("<h1> Your score is : "+marks+"</h1>");
%>

   </div>
   <br><br><br>
   <form action="oltest3.html">
   <button class="button">Take test again</button>
   </form>
   <br>
   <br>
    <a href="home1.html">click to go to home page</a>
</body>
</html>