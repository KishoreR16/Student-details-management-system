<%@ page import="java.sql.*"%>
<%  

		String url = "jdbc:postgresql://localhost:5432/StudentsD2T2", name = "postgres", password = "hello",sql;
		int regNo,i =0;
		String studentname,dob,address,email;
		double cgpa;
		try 
		{
            Class.forName("org.postgresql.Driver");
			Connection con = DriverManager.getConnection(url, name, password);
			sql= "INSERT INTO studentdetails (regno,name,dateofbirth,address,email,cgpa) VALUES (?,?,?,?,?,?)";
			PreparedStatement st=con.prepareStatement(sql);
			regNo=Integer.parseInt(request.getParameter("Register No"));
			studentname=request.getParameter("student name");
			dob=request.getParameter("b day!");
			address=request.getParameter("address");
			email=request.getParameter("mail");
			cgpa=Double.parseDouble(request.getParameter("cgpa"));
			
			st.setInt(1,regNo);
			st.setString(2,studentname);
			st.setString(3,dob);
			st.setString(4,address);
			st.setString(5,email);
			st.setDouble(6,cgpa);
			i=st.executeUpdate();
		}
		catch(Exception e)
        {
			out.println(e);
		}
		if(i>0)
		{
			out.println("Student details added Successfully!!!");
		}
%>