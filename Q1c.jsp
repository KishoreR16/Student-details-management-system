

<!DOCTYPE html>
<html lang="en">
<head>
    <title>STUDENT DETAILS</title>
</head>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  background-color: #ff9966;
  padding: 20px;
  font-family: Times New Roman;
  font-weight: bold;
}

</style>
<body>
  <center>
    <table>
        <tr>
		<%out.println("STUDENT DETAILS");%>
          <th>REG NO</th>
          <th>NAME</th>
          <th>DOB</th>
          <th>ADDRESS</th>
          <th>EMAIL</th>
          <th>CGPA</th>
          
        </tr> 
    <%
		String url = "jdbc:postgresql://localhost:5432/StudentsD2T2", name = "postgres", password = "hello",sql;
		try 
		{
            Class.forName("org.postgresql.Driver");
			Connection con = DriverManager.getConnection(url, name, password);
			sql = "SELECT * FROM studentdetails";
			Statement statement= con.createStatement();
			ResultSet resultSet = statement.executeQuery(sql);
			
			while(resultSet.next())
			{
				out.println("<tr><td>"+resultSet.getInt(1)+"</td><td> "+resultSet.getString(2)+" </td><td> "+resultSet.getString(3)+"</td><td> "+resultSet.getString(4)+"</td><td>"+resultSet.getString(5)+"</td><td>"+resultSet.getString(6)+"</td></tr>");
			}
			
			
		}
		catch(Exception e)
        {
			out.println(e);
		}
		
	%>
  </table>
  </center>
</body>
</html>