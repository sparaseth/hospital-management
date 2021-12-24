<%@page import="java.sql.*"%>
<%@page import="com.hartford.hospital.DbConnection"%>
<html>
<body bgcolor="orange">
	<font size=10> <IMG height=70 alt="200 Years ... 1854-2004"
		hspace=10 src="images/home_150th.jpg" width=80 align=right border=1>
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
					.prepareStatement("insert into Doctor_Table values(?,?,?,?,?,?)");
			stat.setString(1, request.getParameter("name"));
			stat.setString(2, request.getParameter("spacialist"));
			stat.setString(3, request.getParameter("visit"));
			stat.setString(4, request.getParameter("cno"));
			stat.setString(5, request.getParameter("email"));
			stat.setString(6, request.getParameter("addr"));

			stat.executeUpdate();
			con.commit();
		} catch (Exception e) {
			System.out.println("SQL Error" + e);
		}
	%>
	<b>
		<h1>Doctor's' information has been successfully recorded.</h1> </b>
</body>
</html>