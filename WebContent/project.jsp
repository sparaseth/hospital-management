<%@page import="java.sql.*"%>
<%@page import="com.hartford.hospital.DbConnection"%>
<html>
<body bgcolor="orange">
	<IMG height=80 alt="200 Years ... 1854-2004" hspace=10
		src="images/HH_150_4_C_SCRN.jpeg" width=80 align=right border=1>

	<font size=10>
		<CENTER>
			<strong>Hartford Hospital</strong>
	</font>
	</CENTER>
	<center>
		80 Seymour Street<br> Banglore-10
	</center>
	<hr>
	<%
		try {
			Connection con = DbConnection.getConnection();
			con.setAutoCommit(false);
			PreparedStatement stat = con
					.prepareStatement("insert into Patient_Table values(?,?,?,?,?,?,?,?,?)");
			stat.setString(1, request.getParameter("name"));
			stat.setString(2, request.getParameter("age"));
			stat.setString(3, request.getParameter("sex"));
			stat.setString(4, request.getParameter("guardian"));
			stat.setString(5, request.getParameter("add"));
			stat.setString(6, request.getParameter("ph"));
			stat.setString(7, request.getParameter("bgrp"));
			stat.setString(8, request.getParameter("bpre"));
			stat.setString(9, request.getParameter("weight"));
			stat.executeUpdate();
			con.commit();
		} catch (Exception e) {
			System.out.println("Error" + e);
		}
	%>
	<b>
		<h1>Patients' information has been successfully recorded.</h1> </b>
	<hr>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
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