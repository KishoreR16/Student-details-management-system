<html>
<head>
<title> FORM</title>
<style>


div {
  border-radius: 80px;
  background-color: #ff9966;
  padding: 20px;
  font-family: Lucida Handwriting;
  font-weight: bold;
}

input[type=text],input[type=email],input[type=number],input[type=date]  {
  width: 20%;
  padding: 12px 20px;
  border: 1px solid red;
  box-sizing: border-box;
}

input[type=submit],[type=reset] ,a{
  width: 20%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border-radius: 4px;
  font-family: Lucida Handwriting;
  font-weight: bold;
  text-decoration: none;
  
}
</style>
</head>
<body>

<div><form style ="background-color:#3399ff" action="Q1b.jsp" method="POST">
<center>
<fieldset>
<legend><h1>STUDENT MANAGEMENT SYSTEM</h1></legend>
REG NO :<input type ="text" name ="Register No" placeholder="Register No" style="margin-left:7%" required><br><br>
NAME  :  <input type ="text" name ="student name" placeholder="Student Name" style="margin-left:8%" required><br><br>
DATE OF BIRTH:<input type="date" name="b day!" style="margin-left:1.5%" required><br><br>
ADDRESS  :  <input type ="text" name ="address" placeholder="Address" style="margin-left:6%" required><br><br>
EMAIL ID : <input type ="email"  name ="mail" placeholder="Student Email" style="margin-left:6%" required><br><br>
CGPA  : <input type ="number" step=0.01  name ="cgpa" placeholder="CGPA" style="margin-left:9%" required>
  <br><br>
  
<input type="submit"  value="SUBMIT" name="submit">
<input type="reset"  value="RESET" name=" reset">
<br><br>
<a href="Q1c.jsp">VIEW STUDENTS DATA</a>
</fieldset>
</center>
</form>
</div>

</body>
</html>
