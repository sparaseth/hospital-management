<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="com.hartford.hospital.DbConnection"%>
<html>
<body bgcolor="orange">
	<%
		Connection con = null;
		ResultSet rs = null;
		PreparedStatement stat = null;
		try {
			String strName = request.getParameter("name");
			System.out.println(strName);
			System.out.println(strName);
			con = DbConnection.getConnection();
			System.out.println("Connected Successfully");
			stat = con
					.prepareStatement("SELECT * FROM Patient_Table where Patient_Name=? ");
			stat.setString(1, strName);
			System.out.println("Before Executing");
			rs = stat.executeQuery();
			if (rs.next()) {
				String str1, str2, str3, str4, str5, str6, str7, str8, str9;
				str1 = rs.getString(1);
				str2 = rs.getString(2);
				str3 = rs.getString(3);
				str4 = rs.getString(4);
				str5 = rs.getString(5);
				str6 = rs.getString(6);
				str7 = rs.getString(7);
				str8 = rs.getString(8);
				str9 = rs.getString(9);
	%>
	<font size=10>
		<CENTER>
			<strong>Hartford Hospital</strong>
	</font>
	</CENTER>
	<center>
		80 Seymour Street<br> Banglore-10
	</center>
	<hr>
	<center>
		<font size=10 color="black"> Patient's Details</font>
	</center>
	<br>
	<font size=5>
		<hr> <%
 	out.println("Patient name:" + " " + str1);
 %></br> </font>
	<br>
	<font size=5> <%
 	out.println("Patient age:" + " " + str2);
 %> </br> </font>
	<br>
	<font size=5> <%
 	out.println("Patient Sex:" + str3);
 %></br> </font>
	<br>
	<font size=5> <%
 	out.println("Patient Gardian:" + " " + str4);
 %></br> </font>
	<br>
	<font size=5> <%
 	out.println("Patient Address:" + " " + str5);
 %></br> </font>
	<br>
	<font size=5> <%
 	out.println("Patient Contact number:" + " " + str6);
 %></br> </font>
	<br>
	<font size=5> <%
 	out.println("Patient Blood group:" + " " + str7);
 %></br> </font>
	<br>
	<font size=5> <%
 	out.println("Patient Blood pressure:" + " " + str8);
 %></br> </font>
	<br>
	<font size=5> <%
 	out.println("Patient Weight:" + " " + str9);
 %></br> </font>
	<%
		} else {
	%>
	<%@include file="error.html"%>
	<%
		}
		} catch (Exception e) {
			out.println("Error " + e.getMessage());
		} finally {
			rs.close();
			con.close();
		}
	%>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr bgcolor="orange">
			<td width="42%" height="9" bgcolor="orange">&nbsp;</td>
			<td width="9%" height="9"><a href="home.html">HOME</a>
			</td>
			<td width="8%" height="9"><a href="dept.html">|Depertment</a>
			</td>
			<td width="8%" height="9"><a href="login.html">|Patient_Reg
			</a></td>
			<td width="8%" height="9"><a href="help.html">|help
			</td>
</body>
</html>